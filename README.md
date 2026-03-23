# Space Engineers 2 Game Decompiler

This is a development tool. If you just want to play the game, then do not use it. 

The purpose of this tool is to decompile the game to C# code, which allows reading it to inform the
development of plugins and mods (once supported). The decompiled code is not intended for recompilation
to binary form. Even if compiled to binary form, the resulting game would not work without the original
game's media content.

## Legal warning

**Never ever make the decompiled code publicly available on the Internet.**

Space Engineers 2 is a trademark of Keen Software House s.r.o.

## Dependencies

### .NET 10 SDK

Download the x64 installer from https://dotnet.microsoft.com/en-us/download then install it.

### Long filename support

Some generated classes have very long names, causing file paths to exceed the measly 260 characters Windows supports by default. 

Load into registry: `EnableLongPathSupport.reg` - This is from [Microsoft's support site](https://learn.microsoft.com/en-us/windows/win32/fileio/maximum-file-path-limitation?tabs=registry)

For some reason long filename support has to be enabled in Git as well:
```bat
git config --system core.longpaths true
```

If you still see errors due to long file names, then restart the system and try again. 

### Link to the `Game2` folder

Set the `SE2_ROOT` user environment variable to `C:\Program Files (x86)\Steam\steamapps\common\SpaceEngineers2` or
to the path where the game was installed by Steam if you use a custom game library path. 

Run `LinkGame2.bat`

### ILSpyCmd

This is the decompiler which is turning the game's IL code into C# projects. 

None of the official releases work currently. I have a modified version of the current development ILSpy version
which fails to decompile only two files. Hopefully we don't lose too much with it. If you need those two files,
then try to use a different tool like dnSpy or dotPeek for the affected library and get the file from there.
Once a working release will be available, I will replace this with the installation of that official version. 

The only change is that it bypasses decompilation errors and place a `// DECOMPILATION ERROR` comment into
the problem files with the ILSpy exception included. The exceptions logged may help to identify the
corresponding ILSpy tickets and monitoring when they get properly fixed by a PR.  

#### Build and install

Use the modified ILSpy from my branch: https://github.com/viktor-ferenczi/ILSpy/tree/error-bypass

What you need is building the platform independent solution. Then installing `ilspycmd` globally into dotnet:

```bat
git clone https://github.com/viktor-ferenczi/ILSpy
cd ILSpy
git submodule init
git checkout error-bypass
dotnet pack ICSharpCode.ILSpyCmd/ICSharpCode.ILSpyCmd.csproj -c Release
dotnet tool install -g ilspycmd --add-source ICSharpCode.ILSpyCmd/bin/Release --version "8.0.0-noversion"
```

Version `8.0.0-noversion` is a fallback for local builds, so don't worry about it._

#### Uninstall

Should you need it later, you can uninstall ILSpyCmd this way:

```bat
dotnet tool uninstall -g ilspycmd
```

#### Working around the ILSpy issue yourself

If you ever need to use a different ILSpy version and want to automatically work around the decompilation issues, 
then you may consider using this method. First make a new branch in your cloned fork of ILSpy, then run the following 
prompt in Claude Code on this decompiler project:

```
We need the `ilspycmd` command working in `dotnet` as a tool.

The `ilspycmd` source code is in this folder: C:\Path\To\ILSpy
You can modify it, then build and re-deploy `ilspycmd` globally before trying to decompile again.

It does not matter if something is not decompiled fully. 
We just want to avoid the error from happening and bypass it. 
The goal is not to decompile everything to the last bit, but only to have as much as possible decompiled. 

Follow these steps:
1. Run `Decompile.bat`
2. If it succeeds, stop. 
3. Analyze the error. It should be about ILSpy not being able to decompile something from a DLL.
4. Fix the ilspy or ilspycmd code to either work properly or just suppress the error. Whichever is easier.
5. Commit the change in the C:\Dev\ILSpy repository.
6. Go to step 1.
```

## Tracking game code changes

For each game version decompiled, create a new branch in your local Git working copy and add all the decompiled files to it.
This way you can track game code changes over releases, allowing you to fix your plugins and mods much easier.

## Archiving

1. Delete the Game2 folder link (junction or symlink)
2. Compact to Git repository: `git gc --aggressive --prune=now`
3. Compress your local repository

## Legal

**Never ever make the decompiled code publicly available on the Internet.**

Space Engineers 2 is a trademark of Keen Software House s.r.o.
