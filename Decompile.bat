set OPTIONS=--project --nested-directories --referencepath Game2 --languageversion CSharp14_0 --disable-updatecheck

if not exist "Game2.AutoTests" (
    ilspycmd %OPTIONS% -o Game2.AutoTests Game2\Game2.AutoTests.dll
    if %ERRORLEVEL% NEQ 0 goto failed
)

if not exist "Game2.Client" (
    ilspycmd %OPTIONS% -o Game2.Client Game2\Game2.Client.dll
    if %ERRORLEVEL% NEQ 0 goto failed
)

if not exist "Game2.ContentBuilder" (
    ilspycmd %OPTIONS% -o Game2.ContentBuilder Game2\Game2.ContentBuilder.dll
    if %ERRORLEVEL% NEQ 0 goto failed
)

if not exist "Game2.Game" (
    ilspycmd %OPTIONS% -o Game2.Game Game2\Game2.Game.dll
    if %ERRORLEVEL% NEQ 0 goto failed
)

if not exist "Game2.Plugin.Editor" (
    ilspycmd %OPTIONS% -o Game2.Plugin.Editor Game2\Game2.Plugin.Editor.dll
    if %ERRORLEVEL% NEQ 0 goto failed
)

if not exist "Game2.Simulation" (
    ilspycmd %OPTIONS% -o Game2.Simulation Game2\Game2.Simulation.dll
    if %ERRORLEVEL% NEQ 0 goto failed
)

if not exist "SpaceEngineers2" (
    ilspycmd %OPTIONS% -o SpaceEngineers2 Game2\SpaceEngineers2.dll
    if %ERRORLEVEL% NEQ 0 goto failed
)

if not exist "VRage.AI" (
    ilspycmd %OPTIONS% -o VRage.AI Game2\VRage.AI.dll
    if %ERRORLEVEL% NEQ 0 goto failed
)

if not exist "VRage.Analytics" (
    ilspycmd %OPTIONS% -o VRage.Analytics Game2\VRage.Analytics.dll
    if %ERRORLEVEL% NEQ 0 goto failed
)

if not exist "VRage.Animation.Client" (
    ilspycmd %OPTIONS% -o VRage.Animation.Client Game2\VRage.Animation.Client.dll
    if %ERRORLEVEL% NEQ 0 goto failed
)

if not exist "VRage.Animation" (
    ilspycmd %OPTIONS% -o VRage.Animation Game2\VRage.Animation.dll
    if %ERRORLEVEL% NEQ 0 goto failed
)

if not exist "VRage.Audio" (
    ilspycmd %OPTIONS% -o VRage.Audio Game2\VRage.Audio.dll
    if %ERRORLEVEL% NEQ 0 goto failed
)

if not exist "VRage.AutoTest" (
    ilspycmd %OPTIONS% -o VRage.AutoTest Game2\VRage.AutoTest.dll
    if %ERRORLEVEL% NEQ 0 goto failed
)

if not exist "VRage.Client.ContentBuilder" (
    ilspycmd %OPTIONS% -o VRage.Client.ContentBuilder Game2\VRage.Client.ContentBuilder.dll
    if %ERRORLEVEL% NEQ 0 goto failed
)

if not exist "VRage.Client" (
    ilspycmd %OPTIONS% -o VRage.Client Game2\VRage.Client.dll
    if %ERRORLEVEL% NEQ 0 goto failed
)

if not exist "VRage.CodeAnalysis" (
    ilspycmd %OPTIONS% -o VRage.CodeAnalysis Game2\VRage.CodeAnalysis.dll
    if %ERRORLEVEL% NEQ 0 goto failed
)

if not exist "VRage.CodeGuard.Analyzers" (
    ilspycmd %OPTIONS% -o VRage.CodeGuard.Analyzers Game2\VRage.CodeGuard.Analyzers.dll
    if %ERRORLEVEL% NEQ 0 goto failed
)

if not exist "VRage.ContentPipeline.Animations" (
    ilspycmd %OPTIONS% -o VRage.ContentPipeline.Animations Game2\VRage.ContentPipeline.Animations.dll
    if %ERRORLEVEL% NEQ 0 goto failed
)

if not exist "VRage.ContentPipeline.ArmorBlockModel" (
    ilspycmd %OPTIONS% -o VRage.ContentPipeline.ArmorBlockModel Game2\VRage.ContentPipeline.ArmorBlockModel.dll
    if %ERRORLEVEL% NEQ 0 goto failed
)

if not exist "VRage.ContentPipeline.ArmorBlockSide" (
    ilspycmd %OPTIONS% -o VRage.ContentPipeline.ArmorBlockSide Game2\VRage.ContentPipeline.ArmorBlockSide.dll
    if %ERRORLEVEL% NEQ 0 goto failed
)

if not exist "VRage.ContentPipeline.Audio" (
    ilspycmd %OPTIONS% -o VRage.ContentPipeline.Audio Game2\VRage.ContentPipeline.Audio.dll
    if %ERRORLEVEL% NEQ 0 goto failed
)

if not exist "VRage.ContentPipeline.Builder" (
    ilspycmd %OPTIONS% -o VRage.ContentPipeline.Builder Game2\VRage.ContentPipeline.Builder.dll
    if %ERRORLEVEL% NEQ 0 goto failed
)

if not exist "VRage.ContentPipeline.Builder.Plugin" (
    ilspycmd %OPTIONS% -o VRage.ContentPipeline.Builder.Plugin Game2\VRage.ContentPipeline.Builder.Plugin.dll
    if %ERRORLEVEL% NEQ 0 goto failed
)

if not exist "VRage.ContentPipeline" (
    ilspycmd %OPTIONS% -o VRage.ContentPipeline Game2\VRage.ContentPipeline.dll
    if %ERRORLEVEL% NEQ 0 goto failed
)

if not exist "VRage.ContentPipeline.Game" (
    ilspycmd %OPTIONS% -o VRage.ContentPipeline.Game Game2\VRage.ContentPipeline.Game.dll
    if %ERRORLEVEL% NEQ 0 goto failed
)

if not exist "VRage.ContentPipeline.Models" (
    ilspycmd %OPTIONS% -o VRage.ContentPipeline.Models Game2\VRage.ContentPipeline.Models.dll
    if %ERRORLEVEL% NEQ 0 goto failed
)

if not exist "VRage.ContentPipeline.ModelsBase" (
    ilspycmd %OPTIONS% -o VRage.ContentPipeline.ModelsBase Game2\VRage.ContentPipeline.ModelsBase.dll
    if %ERRORLEVEL% NEQ 0 goto failed
)

if not exist "VRage.ContentPipeline.ModelsValidation" (
    ilspycmd %OPTIONS% -o VRage.ContentPipeline.ModelsValidation Game2\VRage.ContentPipeline.ModelsValidation.dll
    if %ERRORLEVEL% NEQ 0 goto failed
)

if not exist "VRage.ContentPipeline.ModelVoxels" (
    ilspycmd %OPTIONS% -o VRage.ContentPipeline.ModelVoxels Game2\VRage.ContentPipeline.ModelVoxels.dll
    if %ERRORLEVEL% NEQ 0 goto failed
)

if not exist "VRage.ContentPipeline.PlanetTextures" (
    ilspycmd %OPTIONS% -o VRage.ContentPipeline.PlanetTextures Game2\VRage.ContentPipeline.PlanetTextures.dll
    if %ERRORLEVEL% NEQ 0 goto failed
)

if not exist "VRage.ContentPipeline.Publishing" (
    ilspycmd %OPTIONS% -o VRage.ContentPipeline.Publishing Game2\VRage.ContentPipeline.Publishing.dll
    if %ERRORLEVEL% NEQ 0 goto failed
)

if not exist "VRage.ContentPipeline.Scripting" (
    ilspycmd %OPTIONS% -o VRage.ContentPipeline.Scripting Game2\VRage.ContentPipeline.Scripting.dll
    if %ERRORLEVEL% NEQ 0 goto failed
)

if not exist "VRage.ContentPipeline.SlugFont" (
    ilspycmd %OPTIONS% -o VRage.ContentPipeline.SlugFont Game2\VRage.ContentPipeline.SlugFont.dll
    if %ERRORLEVEL% NEQ 0 goto failed
)

if not exist "VRage.ContentPipeline.SlugSVG" (
    ilspycmd %OPTIONS% -o VRage.ContentPipeline.SlugSVG Game2\VRage.ContentPipeline.SlugSVG.dll
    if %ERRORLEVEL% NEQ 0 goto failed
)

if not exist "VRage.ContentPipeline.Textures" (
    ilspycmd %OPTIONS% -o VRage.ContentPipeline.Textures Game2\VRage.ContentPipeline.Textures.dll
    if %ERRORLEVEL% NEQ 0 goto failed
)

if not exist "VRage.Core" (
    ilspycmd %OPTIONS% -o VRage.Core Game2\VRage.Core.dll
    if %ERRORLEVEL% NEQ 0 goto failed
)

if not exist "VRage.Core.Editor" (
    ilspycmd %OPTIONS% -o VRage.Core.Editor Game2\VRage.Core.Editor.dll
    if %ERRORLEVEL% NEQ 0 goto failed
)

if not exist "VRage.Core.Game" (
    ilspycmd %OPTIONS% -o VRage.Core.Game Game2\VRage.Core.Game.dll
    if %ERRORLEVEL% NEQ 0 goto failed
)

if not exist "VRage.Core.Game.Editor" (
    ilspycmd %OPTIONS% -o VRage.Core.Game.Editor Game2\VRage.Core.Game.Editor.dll
    if %ERRORLEVEL% NEQ 0 goto failed
)

if not exist "VRage.DCS" (
    ilspycmd %OPTIONS% -o VRage.DCS Game2\VRage.DCS.dll
    if %ERRORLEVEL% NEQ 0 goto failed
)

if not exist "VRage.DCS.Generator" (
    ilspycmd %OPTIONS% -o VRage.DCS.Generator Game2\VRage.DCS.Generator.dll
    if %ERRORLEVEL% NEQ 0 goto failed
)

if not exist "VRage.DCS.Samples" (
    ilspycmd %OPTIONS% -o VRage.DCS.Samples Game2\VRage.DCS.Samples.dll
    if %ERRORLEVEL% NEQ 0 goto failed
)

if not exist "VRage.EOS" (
    ilspycmd %OPTIONS% -o VRage.EOS Game2\VRage.EOS.dll
    if %ERRORLEVEL% NEQ 0 goto failed
)

if not exist "VRage.Game.Client" (
    ilspycmd %OPTIONS% -o VRage.Game.Client Game2\VRage.Game.Client.dll
    if %ERRORLEVEL% NEQ 0 goto failed
)

if not exist "VRage.Game" (
    ilspycmd %OPTIONS% -o VRage.Game Game2\VRage.Game.dll
    if %ERRORLEVEL% NEQ 0 goto failed
)

if not exist "VRage.Input" (
    ilspycmd %OPTIONS% -o VRage.Input Game2\VRage.Input.dll
    if %ERRORLEVEL% NEQ 0 goto failed
)

if not exist "VRage.Library" (
    ilspycmd %OPTIONS% -o VRage.Library Game2\VRage.Library.dll
    if %ERRORLEVEL% NEQ 0 goto failed
)

if not exist "VRage.Library.Generator" (
    ilspycmd %OPTIONS% -o VRage.Library.Generator Game2\VRage.Library.Generator.dll
    if %ERRORLEVEL% NEQ 0 goto failed
)

if not exist "VRage.Mod.Io" (
    ilspycmd %OPTIONS% -o VRage.Mod.Io Game2\VRage.Mod.Io.dll
    if %ERRORLEVEL% NEQ 0 goto failed
)

if not exist "VRage.Multiplayer" (
    ilspycmd %OPTIONS% -o VRage.Multiplayer Game2\VRage.Multiplayer.dll
    if %ERRORLEVEL% NEQ 0 goto failed
)

if not exist "VRage.Physics.Client" (
    ilspycmd %OPTIONS% -o VRage.Physics.Client Game2\VRage.Physics.Client.dll
    if %ERRORLEVEL% NEQ 0 goto failed
)

if not exist "VRage.Physics" (
    ilspycmd %OPTIONS% -o VRage.Physics Game2\VRage.Physics.dll
    if %ERRORLEVEL% NEQ 0 goto failed
)

if not exist "VRage.Platform.Windows" (
    ilspycmd %OPTIONS% -o VRage.Platform.Windows Game2\VRage.Platform.Windows.dll
    if %ERRORLEVEL% NEQ 0 goto failed
)

if not exist "VRage.Render" (
    ilspycmd %OPTIONS% -o VRage.Render Game2\VRage.Render.dll
    if %ERRORLEVEL% NEQ 0 goto failed
)

if not exist "VRage.Render12" (
    ilspycmd %OPTIONS% -o VRage.Render12 Game2\VRage.Render12.dll
    if %ERRORLEVEL% NEQ 0 goto failed
)

if not exist "VRage.Scripting" (
    ilspycmd %OPTIONS% -o VRage.Scripting Game2\VRage.Scripting.dll
    if %ERRORLEVEL% NEQ 0 goto failed
)

if not exist "VRage.ShaderBuilder" (
    ilspycmd %OPTIONS% -o VRage.ShaderBuilder Game2\VRage.ShaderBuilder.dll
    if %ERRORLEVEL% NEQ 0 goto failed
)

if not exist "VRage.Steam" (
    ilspycmd %OPTIONS% -o VRage.Steam Game2\VRage.Steam.dll
    if %ERRORLEVEL% NEQ 0 goto failed
)

if not exist "VRage.TestLogger" (
    ilspycmd %OPTIONS% -o VRage.TestLogger Game2\VRage.TestLogger.dll
    if %ERRORLEVEL% NEQ 0 goto failed
)

if not exist "VRage.Testing" (
    ilspycmd %OPTIONS% -o VRage.Testing Game2\VRage.Testing.dll
    if %ERRORLEVEL% NEQ 0 goto failed
)

if not exist "VRage.UI" (
    ilspycmd %OPTIONS% -o VRage.UI Game2\VRage.UI.dll
    if %ERRORLEVEL% NEQ 0 goto failed
)

if not exist "VRage.UI.Shared" (
    ilspycmd %OPTIONS% -o VRage.UI.Shared Game2\VRage.UI.Shared.dll
    if %ERRORLEVEL% NEQ 0 goto failed
)

if not exist "VRage.UI.Tests" (
    ilspycmd %OPTIONS% -o VRage.UI.Tests Game2\VRage.UI.Tests.dll
    if %ERRORLEVEL% NEQ 0 goto failed
)

if not exist "VRage.Voxels.Client" (
    ilspycmd %OPTIONS% -o VRage.Voxels.Client Game2\VRage.Voxels.Client.dll
    if %ERRORLEVEL% NEQ 0 goto failed
)

if not exist "VRage.Voxels" (
    ilspycmd %OPTIONS% -o VRage.Voxels Game2\VRage.Voxels.dll
    if %ERRORLEVEL% NEQ 0 goto failed
)

if not exist "VRage.Voxels.Editor" (
    ilspycmd %OPTIONS% -o VRage.Voxels.Editor Game2\VRage.Voxels.Editor.dll
    if %ERRORLEVEL% NEQ 0 goto failed
)

if not exist "VRage.Water.Client" (
    ilspycmd %OPTIONS% -o VRage.Water.Client Game2\VRage.Water.Client.dll
    if %ERRORLEVEL% NEQ 0 goto failed
)

if not exist "VRage.Water" (
    ilspycmd %OPTIONS% -o VRage.Water Game2\VRage.Water.dll
    if %ERRORLEVEL% NEQ 0 goto failed
)

echo Successfully decompiled the game
exit /b 0

:failed
echo Failed to decompile the game
exit /b 1
