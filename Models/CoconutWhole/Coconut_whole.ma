//Maya ASCII 2023 scene
//Name: Coconut_whole.ma
//Last modified: Fri, Oct 04, 2024 09:05:58 PM
//Codeset: 1252
requires maya "2023";
requires -nodeType "RedshiftOptions" -nodeType "RedshiftPostEffects" "redshift4maya" "3.5.17";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.2.2.1";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2023";
fileInfo "version" "2023";
fileInfo "cutIdentifier" "202208031415-1dee56799d";
fileInfo "osv" "Windows 11 Home v2009 (Build: 22631)";
fileInfo "UUID" "4F599EF7-4DE9-5EAA-2C99-C7A5228E83D8";
createNode transform -s -n "persp";
	rename -uid "AD01E4A0-402C-E531-A64A-CF842FE7B0B4";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 7.0871597298434255 13.185763783789278 -10.819805262444193 ;
	setAttr ".r" -type "double3" -33.938352729374749 148.59999999997075 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "DD98272C-4341-914A-15C4-63A4B09E5EEA";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 16.830060520666095;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "5C104221-44C4-2747-F2D8-7490A4C095FD";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "AFF6CD55-40C3-FD2D-856A-83AE9F0A80FC";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "A9475DC9-4480-D475-C4B0-C8A68A5C978F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "F403BDA8-491A-B322-145A-B38BC50CAE5C";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "4FEA8EFE-4810-BB8D-A438-EFB73C25849A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "1568E57E-4E64-C50B-2F3C-F09BCD2B511B";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "pSphere1";
	rename -uid "736122C5-4D97-1527-B263-01BB56553315";
	setAttr ".t" -type "double3" 0 4.4584374361218364 0 ;
	setAttr ".r" -type "double3" 0 0 60.310757621241798 ;
	setAttr ".s" -type "double3" 3.9015931616278019 3.9015931616278019 3.9015931616278019 ;
createNode mesh -n "pSphereShape1" -p "pSphere1";
	rename -uid "AA6F9F54-4C92-186C-2088-9C94CC6EED18";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.2568010390677955 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "41DEEF3E-444C-2007-B8E5-1F8D6A82DB43";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode RedshiftOptions -s -n "redshiftOptions";
	rename -uid "E0CE4D9E-41AF-4B4B-E254-0EA0DC9E7250";
	setAttr ".version" 6;
	setAttr ".unifiedFilterSize" 2.5;
	setAttr ".denoiseEngine" 3;
	setAttr ".GIEnabled" yes;
	setAttr ".primaryGIEngine" 4;
	setAttr ".secondaryGIEngine" 2;
	setAttr ".numGIBounces" 4;
	setAttr ".shadingNormalAdaptionTechnique" 1;
	setAttr ".enableLegacyBlackBodyAndDispersionTechnique" no;
	setAttr ".enableLegacyMotionBlurSampling" no;
	setAttr ".enableLegacySSSGI" no;
	setAttr ".enableLegacyVolumePhase" no;
	setAttr ".enableLegacyDispersionNestedDielectricsTechnique" no;
	setAttr ".enableLegacyTimeBehavior" no;
	setAttr ".enableOptiXRTOnSupportedGPUs" yes;
	setAttr ".enableAutomaticSampling" yes;
createNode RedshiftPostEffects -n "defaultRedshiftPostEffects";
	rename -uid "A94FB084-43A4-3059-41DE-30A83B7BA05A";
	setAttr ".v" 2;
	setAttr -s 2 ".cr[1]" -type "float2" 1 1;
	setAttr -s 2 ".cg[1]" -type "float2" 1 1;
	setAttr -s 2 ".cb[1]" -type "float2" 1 1;
	setAttr -s 2 ".cl[1]" -type "float2" 1 1;
createNode displayLayerManager -n "layerManager";
	rename -uid "5CFAB08D-421A-E2C6-9EF0-3C8BDB0C59B8";
createNode displayLayer -n "defaultLayer";
	rename -uid "0BB8DA42-4680-F90B-A063-2B97DB34BFC7";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "F290393B-4711-223C-4D98-91BED4BEF1FB";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "438746D6-4BE5-E879-D04E-C99CD3A2F98D";
	setAttr ".g" yes;
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "E16951AE-4808-E2AF-7F12-58914BADB80C";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "524D41E9-4858-D6E9-0336-1599E7B48102";
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "B0BBDEE7-4760-ABCA-7CB7-BBB6B5603B94";
	setAttr ".version" -type "string" "5.2.2.1";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "5EFB4FB1-4B54-8C72-1191-228CC9B42E6E";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "C1441A79-4F59-3F3D-E031-A49A82D8799D";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "D8EBCEF0-4BA2-1425-7BC1-7F88DC4B93B0";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
createNode polySphere -n "polySphere1";
	rename -uid "CACF3538-4DF5-2160-F6E4-4F9FEC4E28F1";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "6D45A28B-4AFF-8B6F-A5C0-C1AFFAC6464C";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n"
		+ "            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n"
		+ "            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n"
		+ "        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n"
		+ "            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n"
		+ "            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n"
		+ "            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n"
		+ "            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n"
		+ "            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n"
		+ "            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1052\n            -height 784\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n"
		+ "            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n"
		+ "            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"print(\\\"\\\")\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n"
		+ "            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n"
		+ "            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n"
		+ "                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n"
		+ "                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n"
		+ "                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n"
		+ "                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n"
		+ "                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n"
		+ "                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n"
		+ "                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n"
		+ "\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 0\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n"
		+ "                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 0\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n"
		+ "                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n"
		+ "        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1052\\n    -height 784\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1052\\n    -height 784\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "E54452F0-486E-4449-581C-6993F5556AE5";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 24 -ast 0 -aet 48 ";
	setAttr ".st" 6;
createNode polyAutoProj -n "polyAutoProj1";
	rename -uid "FE6B8919-4750-C700-24F5-E68D230568AC";
	setAttr ".cch" yes;
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:399]";
	setAttr ".ix" -type "matrix" 1.9324418049933434 3.389409663816827 0 0 -3.389409663816827 1.9324418049933434 0 0
		 0 0 3.9015931616278019 0 0 4.4584374361218364 0 1;
	setAttr ".s" -type "double3" 8.1965839127085935 8.1965839127085935 8.1965839127085935 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweak -n "polyTweak1";
	rename -uid "3284851D-4FE0-20D4-078E-23828C8E9187";
	setAttr ".uopa" yes;
	setAttr -s 382 ".tk";
	setAttr ".tk[0:165]" -type "float3"  -0.00074143131 0.0033821361 0.00024090457
		 -0.00063069927 0.0033821361 0.00045822837 -0.00045823003 0.0033821361 0.00063069788
		 -0.00024090601 0.0033821361 0.00074142963 -5.9407534e-10 0.0033821361 0.00077958551
		 0.00024090485 0.0033821361 0.00074142974 0.00045822878 0.0033821361 0.0006306977
		 0.00063069782 0.0033821361 0.00045822826 0.0007414298 0.0033821361 0.00024090442
		 0.00077958574 0.0033821361 -8.9111296e-10 0.0007414298 0.0033821361 -0.00024090621
		 0.00063069782 0.0033821361 -0.00045823009 0.00045822858 0.0033821361 -0.00063069927
		 0.00024090473 0.0033821361 -0.00074143108 -5.7084187e-10 0.0033821361 -0.00077958684
		 -0.00024090585 0.0033821361 -0.00074143114 -0.0004582296 0.0033821361 -0.00063069904
		 -0.00063069892 0.0033821361 -0.00045823012 -0.00074143091 0.0033821361 -0.0002409062
		 -0.00077958638 0.0033821361 -8.9111296e-10 -0.0040213396 0.0087850336 0.0013066093
		 -0.0034207555 0.0087850336 0.0024853207 -0.0024853251 0.0087850336 0.0034207518 -0.001306613
		 0.0087850336 0.0040213345 -1.6311423e-09 0.0087850336 0.0042282813 0.0013066098 0.0087850336
		 0.0040213345 0.0024853211 0.0087850336 0.0034207513 0.0034207518 0.0087850336 0.0024853204
		 0.0040213345 0.0087850336 0.0013066084 0.0042282809 0.0087850336 -2.4467126e-09 0.0040213345
		 0.0087850336 -0.0013066138 0.0034207515 0.0087850336 -0.0024853251 0.0024853207 0.0087850336
		 -0.0034207546 0.0013066095 0.0087850336 -0.0040213391 -1.5051291e-09 0.0087850336
		 -0.004228285 -0.0013066126 0.0087850336 -0.0040213391 -0.0024853235 0.0087850336
		 -0.0034207546 -0.0034207539 0.0087850336 -0.0024853249 -0.0040213377 0.0087850336
		 -0.0013066134 -0.0042282832 0.0087850336 -2.4467126e-09 -0.011264255 0.01518323 0.0036599722
		 -0.0095819505 0.01518323 0.0069616856 -0.0069616945 0.01518323 0.0095819375 -0.0036599792
		 0.01518323 0.011264245 -3.1099903e-09 0.01518323 0.011843926 0.0036599743 0.01518323
		 0.011264247 0.0069616856 0.01518323 0.0095819393 0.0095819375 0.01518323 0.0069616833
		 0.011264247 0.01518323 0.0036599711 0.011843927 0.01518323 -4.6649866e-09 0.011264247
		 0.01518323 -0.0036599806 0.0095819393 0.01518323 -0.0069616935 0.0069616837 0.01518323
		 -0.0095819468 0.0036599722 0.01518323 -0.011264253 -2.7570144e-09 0.01518323 -0.011843936
		 -0.003659978 0.01518323 -0.01126425 -0.0069616879 0.01518323 -0.009581943 -0.0095819402
		 0.01518323 -0.0069616917 -0.01126425 0.01518323 -0.0036599792 -0.011843932 0.01518323
		 -4.6649866e-09 -0.022817729 0.020408787 0.0074139214 -0.019409923 0.020408787 0.014102119
		 -0.01410214 0.020408787 0.019409914 -0.0074139317 0.020408787 0.022817716 -4.8658344e-09
		 0.020408787 0.023991967 0.0074139233 0.020408787 0.022817712 0.014102119 0.020408787
		 0.019409899 0.019409908 0.020408787 0.01410212 0.022817712 0.020408787 0.0074139195
		 0.023991957 0.020408787 -7.2987478e-09 0.022817712 0.020408787 -0.0074139317 0.019409899
		 0.020408787 -0.014102132 0.014102122 0.020408787 -0.019409915 0.0074139209 0.020408787
		 -0.022817722 -4.1508166e-09 0.020408787 -0.023991968 -0.0074139275 0.020408787 -0.022817722
		 -0.01410213 0.020408787 -0.019409914 -0.01940991 0.020408787 -0.014102129 -0.022817716
		 0.020408787 -0.0074139303 -0.023991967 0.020408787 -7.2987478e-09 -0.03756202 0.022235055
		 0.012204628 -0.031952154 0.022235055 0.023214603 -0.023214599 0.022235055 0.031952154
		 -0.012204643 0.022235055 0.037561998 -6.6583619e-09 0.022235055 0.039495029 0.012204629
		 0.022235055 0.037561998 0.023214594 0.022235055 0.031952139 0.031952143 0.022235055
		 0.023214586 0.037561994 0.022235055 0.012204621 0.039495014 0.022235055 -9.9875423e-09
		 0.037561994 0.022235055 -0.012204644 0.031952143 0.022235055 -0.023214599 0.023214586
		 0.022235055 -0.031952154 0.012204625 0.022235055 -0.037562001 -5.4813185e-09 0.022235055
		 -0.039495029 -0.012204635 0.022235055 -0.037562001 -0.023214603 0.022235055 -0.031952146
		 -0.031952154 0.022235055 -0.023214599 -0.037561998 0.022235055 -0.012204637 -0.03949501
		 0.022235055 -9.9875423e-09 -0.052997548 0.019201482 0.017219933 -0.045082409 0.019201482
		 0.032754265 -0.032754291 0.019201482 0.045082379 -0.01721995 0.019201482 0.052997518
		 -8.2111065e-09 0.019201482 0.055724874 0.017219933 0.019201482 0.052997518 0.032754265
		 0.019201482 0.045082372 0.045082375 0.019201482 0.032754257 0.052997526 0.019201482
		 0.017219922 0.055724867 0.019201482 -1.2316657e-08 0.052997526 0.019201482 -0.01721995
		 0.045082368 0.019201482 -0.032754268 0.032754261 0.019201482 -0.04508239 0.017219929
		 0.019201482 -0.052997515 -6.5503714e-09 0.019201482 -0.055724889 -0.01721994 0.019201482
		 -0.052997515 -0.032754265 0.019201482 -0.045082379 -0.045082372 0.019201482 -0.032754268
		 -0.052997518 0.019201482 -0.017219948 -0.05572487 0.019201482 -1.2316657e-08 -0.065867446
		 0.011268656 0.021401616 -0.056030199 0.011268656 0.040708307 -0.040708322 0.011268656
		 0.056030188 -0.021401633 0.011268656 0.065867417 -9.2660235e-09 0.011268656 0.069257095
		 0.021401616 0.011268656 0.065867417 0.0407083 0.011268656 0.056030173 0.056030173
		 0.011268656 0.040708281 0.065867394 0.011268656 0.021401601 0.069257103 0.011268656
		 -1.3899034e-08 0.065867394 0.011268656 -0.021401629 0.056030173 0.011268656 -0.040708311
		 0.040708292 0.011268656 -0.056030199 0.021401605 0.011268656 -0.065867417 -7.2020025e-09
		 0.011268656 -0.06925711 -0.021401621 0.011268656 -0.065867417 -0.040708307 0.011268656
		 -0.056030188 -0.056030184 0.011268656 -0.0407083 -0.065867394 0.011268656 -0.021401627
		 -0.069257103 0.011268656 -1.3899034e-08 -0.073142529 -5.5511151e-17 0.023765417 -0.062218759
		 -5.5511151e-17 0.04520455 -0.045204572 -5.5511151e-17 0.062218711 -0.02376545 -5.5511151e-17
		 0.073142484 -9.6397788e-09 -5.5511151e-17 0.076906554 0.023765426 -5.5511151e-17
		 0.073142476 0.045204543 -5.5511151e-17 0.062218696 0.062218696 -5.5511151e-17 0.045204524
		 0.073142476 -5.5511151e-17 0.023765413 0.076906539 -5.5511151e-17 -1.4459667e-08
		 0.073142476 -5.5511151e-17 -0.02376545 0.062218696 -5.5511151e-17 -0.045204546 0.045204524
		 -5.5511151e-17 -0.0622187 0.023765417 -5.5511151e-17 -0.073142484 -7.347785e-09 -5.5511151e-17
		 -0.076906554 -0.023765435 -5.5511151e-17 -0.073142476 -0.045204543 -5.5511151e-17
		 -0.062218711 -0.062218696 -5.5511151e-17 -0.045204546 -0.073142476 -5.5511151e-17
		 -0.023765437 -0.076906539 -5.5511151e-17 -1.4459667e-08 -0.073014617 -0.011860096
		 0.023723872 -0.062109951 -0.011860096 0.045125499 -0.045125529 -0.011860096 0.062109921
		 -0.023723895 -0.011860096 0.073014602 -9.2660235e-09 -0.011860096 0.076772086 0.023723876
		 -0.011860096 0.073014587;
	setAttr ".tk[166:331]" 0.045125488 -0.011860096 0.062109917 0.062109917 -0.011860096
		 0.045125481 0.073014572 -0.011860096 0.023723863 0.076772094 -0.011860096 -1.3899034e-08
		 0.073014572 -0.011860096 -0.023723891 0.062109884 -0.011860096 -0.045125503 0.045125481
		 -0.011860096 -0.062109921 0.023723863 -0.011860096 -0.073014602 -6.9780368e-09 -0.011860096
		 -0.076772086 -0.023723876 -0.011860096 -0.073014602 -0.045125488 -0.011860096 -0.062109914
		 -0.062109917 -0.011860096 -0.045125499 -0.073014587 -0.011860096 -0.023723891 -0.076772094
		 -0.011860096 -1.3899034e-08 -0.065508552 -0.021285001 0.021285007 -0.055724926 -0.021285001
		 0.040486488 -0.040486522 -0.021285001 0.055724889 -0.021285031 -0.021285001 0.06550853
		 -8.2111065e-09 -0.021285001 0.068879746 0.021285011 -0.021285001 0.06550853 0.040486496
		 -0.021285001 0.055724878 0.05572487 -0.021285001 0.040486492 0.06550853 -0.021285001
		 0.021284997 0.068879731 -0.021285001 -1.2316657e-08 0.06550853 -0.021285001 -0.021285022
		 0.055724867 -0.021285001 -0.0404865 0.040486492 -0.021285001 -0.055724889 0.021285005
		 -0.021285001 -0.06550853 -6.1583272e-09 -0.021285001 -0.068879746 -0.021285011 -0.021285001
		 -0.06550853 -0.040486496 -0.021285001 -0.055724889 -0.05572487 -0.021285001 -0.0404865
		 -0.06550853 -0.021285001 -0.021285018 -0.068879731 -0.021285001 -1.2316657e-08 -0.052466724
		 -0.025997495 0.017047457 -0.044630852 -0.025997495 0.032426197 -0.032426223 -0.025997495
		 0.044630833 -0.017047467 -0.025997495 0.052466687 -6.6583619e-09 -0.025997495 0.055166751
		 0.017047459 -0.025997495 0.052466691 0.03242619 -0.025997495 0.044630822 0.044630818
		 -0.025997495 0.032426186 0.052466672 -0.025997495 0.017047446 0.055166721 -0.025997495
		 -9.9875423e-09 0.052466672 -0.025997495 -0.017047463 0.044630822 -0.025997495 -0.032426201
		 0.032426186 -0.025997495 -0.044630833 0.017047452 -0.025997495 -0.052466687 -5.0142654e-09
		 -0.025997495 -0.055166751 -0.017047463 -0.025997495 -0.052466687 -0.03242619 -0.025997495
		 -0.044630826 -0.044630818 -0.025997495 -0.032426201 -0.052466676 -0.025997495 -0.017047463
		 -0.055166721 -0.025997495 -9.9875423e-09 -0.036919869 -0.025226636 0.011995979 -0.031405907
		 -0.025226636 0.022817716 -0.022817729 -0.025226636 0.031405903 -0.011995994 -0.025226636
		 0.036919851 -4.8658344e-09 -0.025226636 0.038819838 0.011995978 -0.025226636 0.03691984
		 0.022817716 -0.025226636 0.031405888 0.031405888 -0.025226636 0.022817712 0.036919829
		 -0.025226636 0.011995979 0.03881982 -0.025226636 -7.2987478e-09 0.036919829 -0.025226636
		 -0.011995994 0.031405881 -0.025226636 -0.022817723 0.022817712 -0.025226636 -0.031405907
		 0.011995979 -0.025226636 -0.036919851 -3.7089127e-09 -0.025226636 -0.038819838 -0.011995984
		 -0.025226636 -0.03691984 -0.022817716 -0.025226636 -0.031405903 -0.031405888 -0.025226636
		 -0.022817722 -0.036919829 -0.025226636 -0.011995992 -0.03881982 -0.025226636 -7.2987478e-09
		 -0.022107342 -0.019905712 0.007183108 -0.018805627 -0.019905712 0.013663081 -0.013663091
		 -0.019905712 0.018805619 -0.0071831103 -0.019905712 0.022107327 -3.1099903e-09 -0.019905712
		 0.023245022 0.0071831075 -0.019905712 0.022107327 0.01366308 -0.019905712 0.018805617
		 0.018805617 -0.019905712 0.013663077 0.022107325 -0.019905712 0.0071831001 0.023245018
		 -0.019905712 -4.6649866e-09 0.022107325 -0.019905712 -0.0071831089 0.018805617 -0.019905712
		 -0.013663085 0.013663076 -0.019905712 -0.018805621 0.0071831062 -0.019905712 -0.022107329
		 -2.4172351e-09 -0.019905712 -0.023245018 -0.0071831075 -0.019905712 -0.022107327
		 -0.013663081 -0.019905712 -0.018805619 -0.018805621 -0.019905712 -0.013663085 -0.022107325
		 -0.019905712 -0.0071831094 -0.023245018 -0.019905712 -4.6649866e-09 -0.010033443
		 -0.0032285007 0.0032600607 -0.0085349567 -0.0032285007 0.0062010046 -0.0062010079
		 -0.0032285007 0.0085349502 -0.0032600635 -0.0032285007 0.010033435 -1.5545186e-09
		 -0.0032285007 0.010549775 0.0032600604 -0.0032285007 0.010033437 0.0062010046 -0.0032285007
		 0.0085349521 0.0085349521 -0.0032285007 0.0062010032 0.010033434 -0.0032285007 0.0032600595
		 0.010549774 -0.0032285007 -2.3317777e-09 0.010033434 -0.0032285007 -0.0032600635
		 0.0085349511 -0.0032285007 -0.006201006 0.0062010027 -0.0032285007 -0.0085349511
		 0.0032600607 -0.0032285007 -0.01003344 -1.2401103e-09 -0.0032285007 -0.010549779
		 -0.0032600607 -0.0032285007 -0.01003344 -0.0062010065 -0.0032285007 -0.0085349502
		 -0.0085349511 -0.0032285007 -0.006201006 -0.010033437 -0.0032285007 -0.0032600623
		 -0.010549777 -0.0032285007 -2.3317777e-09 -0.0022385619 0.034367483 0.00072735216
		 -0.0019042346 0.034367483 0.0013835063 -0.0013835072 0.034367483 0.0019042335 -0.00072735304
		 0.034367483 0.0022385602 -3.9681425e-10 0.034367483 0.002353762 0.00072735222 0.034367483
		 0.0022385595 0.0013835062 0.034367483 0.001904233 0.001904233 0.034367483 0.0013835055
		 0.0022385598 0.034367483 0.00072735187 0.0023537618 0.034367483 -5.9522159e-10 0.0022385598
		 0.034367483 -0.00072735304 0.001904233 0.034367483 -0.0013835069 0.0013835055 0.034367483
		 -0.0019042339 0.0007273521 0.034367483 -0.0022385609 -3.2666694e-10 0.034367483 -0.0023537618
		 -0.0007273524 0.034367483 -0.0022385609 -0.0013835063 0.034367483 -0.0019042338 -0.0019042335
		 0.034367483 -0.0013835067 -0.0022385595 0.034367483 -0.00072735292 -0.0023537616
		 0.034367483 -5.9522159e-10 0 0.081596881 0 0 0.081596881 0 0 0.081596881 0 0 0.081596881
		 0 -5.2939559e-23 0.081596881 0 0 0.081596881 0 0 0.081596881 0 0 0.081596881 0 0
		 0.081596881 0 0 0.081596881 0 0 0.081596881 0 0 0.081596881 0 0 0.081596881 0 0 0.081596881
		 0 -5.2939559e-23 0.081596881 0 0 0.081596881 0 0 0.081596881 0 0 0.081596881 0 0
		 0.081596881 0 0 0.081596881 0 0 0.12792912 0 0 0.12792912 0 0 0.12792912 0 0 0.12792912
		 0 -7.9409339e-23 0.12792912 0 0 0.12792912 0 0 0.12792912 0 0 0.12792912 0 0 0.12792912
		 0 0 0.12792912 0 0 0.12792912 0 0 0.12792912 0;
	setAttr ".tk[332:381]" 0 0.12792912 0 0 0.12792912 0 -7.9409339e-23 0.12792912
		 0 0 0.12792912 0 0 0.12792912 0 0 0.12792912 0 0 0.12792912 0 0 0.12792912 0 0 0.1631434
		 0 0 0.1631434 0 0 0.1631434 0 0 0.1631434 0 2.3822802e-22 0.1631434 0 0 0.1631434
		 0 0 0.1631434 0 0 0.1631434 0 0 0.1631434 0 0 0.1631434 0 0 0.1631434 0 0 0.1631434
		 0 0 0.1631434 0 0 0.1631434 0 2.3822802e-22 0.1631434 0 0 0.1631434 0 0 0.1631434
		 0 0 0.1631434 0 0 0.1631434 0 0 0.1631434 0 0 0.17627524 0 0 0.17627524 0 0 0.17627524
		 0 0 0.17627524 0 1.0587912e-22 0.17627524 0 0 0.17627524 0 0 0.17627524 0 0 0.17627524
		 0 0 0.17627524 0 0 0.17627524 0 0 0.17627524 0 0 0.17627524 0 0 0.17627524 0 0 0.17627524
		 0 1.0587912e-22 0.17627524 0 0 0.17627524 0 0 0.17627524 0 0 0.17627524 0 0 0.17627524
		 0 0 0.17627524 0 -7.1032465e-11 0.00041173154 -1.0654866e-10 0 0.17627525 0;
createNode polyMapSew -n "polyMapSew1";
	rename -uid "9C694EFF-454D-48E0-2789-1291A0424034";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:779]";
createNode polyMapCut -n "polyMapCut1";
	rename -uid "33850CCE-4B54-AB11-8F61-22B961706189";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 20 "e[399]" "e[419]" "e[439]" "e[459]" "e[479]" "e[499]" "e[519]" "e[539]" "e[559]" "e[579]" "e[599]" "e[619]" "e[639]" "e[659]" "e[679]" "e[699]" "e[719]" "e[739]" "e[759]" "e[779]";
createNode polyMapCut -n "polyMapCut2";
	rename -uid "E23692CF-4E95-1450-A231-4FB5B2D08E89";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[0:8]" "e[19]";
createNode polyMapSew -n "polyMapSew2";
	rename -uid "EA07F8E1-4781-E168-C3FB-9DA80F6AF91C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[759]";
createNode polyMapCut -n "polyMapCut3";
	rename -uid "8B29AEEE-46D2-2530-1FFE-90B91A781AD2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 19 "e[389]" "e[409]" "e[429]" "e[449]" "e[469]" "e[489]" "e[509]" "e[529]" "e[549]" "e[569]" "e[589]" "e[609]" "e[629]" "e[649]" "e[669]" "e[689]" "e[709]" "e[729]" "e[769]";
createNode polyMapSew -n "polyMapSew3";
	rename -uid "7ED5D6A8-4BE6-AB9B-3AE6-D9ACAC7F3A3E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[769]";
createNode polyMapCut -n "polyMapCut4";
	rename -uid "E8DDFA94-4F17-30D8-38CB-2682483E2545";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[360:368]" "e[379]";
createNode polyMapSew -n "polyMapSew4";
	rename -uid "30ABD5B3-42B4-AB41-3939-BFB190184351";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[779]";
createNode polyTweakUV -n "polyTweakUV1";
	rename -uid "CF2DBE6A-4A5D-55E5-71D4-DEBE3B4AA6C4";
	setAttr ".uopa" yes;
	setAttr -s 438 ".uvtk";
	setAttr ".uvtk[0:249]" -type "float2" -0.076096028 0.00079105049 -0.093682319
		 0.028036781 -0.12091847 0.019273095 -0.10327527 -0.0078659356 -0.045317471 0.0094657503
		 -0.06221129 0.035788126 -0.26366419 -0.30928591 -0.18867977 -0.25699422 -0.14427586
		 0.0099687576 -0.12706274 -0.016172737 -0.048991725 -0.032321118 -0.077048197 -0.040827606
		 -0.010756776 0.017694771 -0.24284783 -0.22743753 -0.25187778 -0.17564125 -0.018271849
		 -0.022267714 -0.21047625 -0.23600338 -0.163921 0.00045159459 -0.14751668 -0.023900494
		 -0.10235143 -0.047628485 0.8342604 0.14082174 0.83701557 0.14289914 -0.20747192 -0.27685472
		 -0.19897102 -0.24202712 -0.21775874 -0.19284874 0.014897749 -0.010948134 0.82655632
		 0.13584885 -0.22874665 -0.21414986 -0.17971119 -0.0089888424 -0.16443905 -0.030837551
		 -0.12475017 -0.052623183 0.83518744 0.14250717 0.84177655 0.13430537 0.8464039 0.13231881
		 -0.20323583 -0.31631497 0.81334829 0.12739933 0.832335 0.13320421 -0.24337913 -0.19126312
		 -0.19119859 -0.017963648 -0.17737338 -0.0366804 -0.1438958 -0.055699766 0.82890141
		 0.13986346 0.84655493 0.12783712 0.56030381 -0.33156589 0.73835146 -0.21172005 0.52754712
		 -0.21829443 0.52463204 -0.2173959 0.52058768 -0.23244812 -0.25395265 -0.16727033
		 -0.19776107 -0.025872096 -0.1857166 -0.04094629 -0.15920652 -0.056682959 0.81806397
		 0.13504457 0.8423242 0.12121704 0.73141277 -0.21910137 0.52361262 -0.2290647 0.52163982
		 -0.23672773 -0.25986755 -0.14222062 -0.19880068 -0.031861365 -0.1888966 -0.042942435
		 -0.1699536 -0.055313602 0.80246294 0.12813482 0.83353984 0.11268544 0.72264212 -0.22843504
		 -0.26054955 -0.11626178 -0.19413829 -0.035444081 -0.18657297 -0.042192966 -0.17543715
		 -0.051254511 0.78191096 0.11939317 0.81984025 0.10250708 0.71194881 -0.23941636 -0.42944551
		 -0.21993142 -0.18313533 -0.036480218 -0.17763785 -0.038685828 -0.1751772 -0.044258296
		 0.7563712 0.1093626 0.80082393 0.091144055 0.69921714 -0.25168237 -0.47433975 -0.23201904
		 -0.49213725 -0.19297338 -0.1609671 -0.032033563 -0.16778894 -0.03470695 0.72471946
		 0.097825408 0.7762112 0.079335719 0.68435901 -0.26465788 -0.45812505 -0.20452899
		 -0.46368378 -0.16223031 -0.48299119 -0.14336103 -0.15210502 -0.023413777 0.68523574
		 0.083379537 0.74493194 0.067017198 0.667346 -0.27748814 -0.1290521 -0.011770844 0.63960773
		 0.066711783 0.70546252 0.053190708 0.3883982 -0.23367512 -0.44298029 -0.11476916
		 -0.44909349 -0.093890756 0.21265143 -0.03949672 0.2521863 -0.040635586 0.28690121
		 -0.044249386 0.18448311 -0.050221205 0.22283641 -0.048090726 0.25907701 -0.049995244
		 -0.018385738 0.11724456 -0.025286168 0.12009415 -0.019397378 0.12191832 -0.01095897
		 0.11553618 -0.030571848 0.11613001 -0.035978884 0.11576001 0.12724918 -0.049342383
		 0.09596467 -0.061365236 -0.017981857 0.12164319 -0.0079623759 0.11158729 -0.0011363328
		 -0.24998042 0.059910506 -0.19331382 -0.059124798 -0.15792482 -0.051941574 0.1083701
		 0.16093135 -0.035182141 -0.076088458 -0.12187651 0.095119238 -0.01284438 0.065012634
		 -0.024428472 0.067177296 -0.071159482 -0.020928651 0.1194905 -0.0092965662 0.10576001
		 0.062624365 -0.16902128 -0.085202456 -0.18542162 -0.066463351 -0.20433819 0.19678736
		 -0.019058814 -0.091626585 -0.14592555 0.12870568 -0.00074828416 0.073143661 0.018471397
		 0.043243825 0.0071986243 0.038163245 -0.035247602 0.041042328 -0.078655347 -0.028345942
		 0.1155571 -0.015130341 0.098298013 0.061417252 -0.14490199 0.25967807 -0.31875002
		 0.16597474 0.011522215 0.10724837 0.029121172 0.34287277 -0.40905562 0.3676514 -0.29500809
		 0.017162144 -0.0043018758 0.014498651 -0.045116223 0.0179196 -0.0837337 -0.040473878
		 0.10995626 -0.025833517 0.089488089 0.056086987 -0.12080204 0.24553436 -0.3096011
		 0.21104831 -0.3069635 0.18083191 -0.30254161 0.35045794 -0.30674574 -0.0052942038
		 -0.015748203 -0.0057878494 -0.053834081 -0.0015739202 -0.086180225 -0.057543993 0.10297531
		 -0.041830242 0.079814076 0.046217293 -0.096703321 0.23501498 -0.30098793 0.20346463
		 -0.29758507 0.33462667 -0.31906199 -0.023999155 -0.026870713 -0.02222687 -0.061084181
		 -0.016638756 -0.085681662 -0.079646885 0.095179141 -0.063431233 0.070034593 0.031319648
		 -0.072723746 0.3201209 -0.33164114 -0.038505554 -0.037279725 -0.034177721 -0.066357225
		 -0.026469052 -0.081853867 -0.10779047 0.086515963 -0.091587603 0.060233802 0.011008054
		 -0.049074054 0.3070505 -0.34405339 -0.048172712 -0.046361119 -0.041010022 -0.068935171
		 -0.030654758 -0.074411452 -0.14357284 0.075896114 -0.12768278 0.049682885 -0.14361078
		 -0.15655729 0.29563287 -0.35563326 -0.052367806 -0.053244799 -0.042487979 -0.068321556
		 -0.027819395 -0.063608438 -0.18556058 0.064026415 -0.29125839 -0.11959383 -0.27778071
		 -0.1745432 0.2861248 -0.36543846 -0.051026702 -0.057450086 -0.037579834 -0.064394146
		 -0.01622355 -0.0502235 -0.33290166 -0.068734884 -0.34211999 -0.10410511 -0.31816182
		 -0.1550979 0.1639123 -0.31661129 -0.04362464 -0.058780313 -0.024733186 -0.056672513
		 0.0038251877 -0.035809904 -0.06370157 -0.11938488 -0.069933236 -0.13561821 -0.073671341
		 -0.13402265 -0.069451034 -0.11462098 -0.38939828 -0.062353194 -0.066660464 -0.11437163
		 -0.069520414 -0.12235755 -0.067100704 -0.11346111 0.29192477 -0.58907187 0.29567945
		 -0.58938676 -0.36041367 -0.563079 -0.38072801 -0.59817094 0.2935943 -0.60800207 0.299604
		 -0.59103048 -0.33042046 -0.534082 0.28896302 -0.58995277 -0.38892475 -0.63696945
		 0.30312431 -0.59395969 -0.29349059 -0.51293421 -0.37007901 -0.4896121 0.28490204
		 -0.59394962 0.27485448 -0.57383382 0.30574948 -0.59798086 -0.25254968 -0.50078309
		 -0.31861806 -0.46074894 0.28177357 -0.59984624 0.26746327 -0.58869678 0.30709887
		 -0.60278422 -0.21058509 -0.49819195 -0.26200524 -0.44440293 -0.34153163 -0.41267151
		 0.28007078 -0.60657871 0.26435077 -0.60421908 0.30691987 -0.60798877 -0.1705268 -0.50518495
		 -0.20413235 -0.44118568 -0.27137175 -0.39287928 -0.36214173 -0.3689121 0.24677283
		 -0.60118651 0.27990818 -0.61314726 0.26509786 -0.61826605 0.30509204 -0.61319029
		 -0.13515088 -0.5213232 -0.14878336 -0.45097065 -0.19987354 -0.3890605 -0.28059527
		 -0.34636548 -0.26221946 -0.45780125 0.2495423 -0.62252343 0.28111356 -0.61874455
		 0.26872617 -0.6293025;
	setAttr ".uvtk[250:437]" 0.30161518 -0.61801207 -0.10703886 -0.54580462 -0.19774804
		 -0.34198552 -0.17134324 -0.4373568 0.23398173 -0.62474805 0.25653124 -0.63835186
		 0.28334725 -0.62283003 0.27398312 -0.63649499 0.29658324 -0.62215149 0.29185092 -0.63247377
		 -0.079286426 -0.42820528 0.21885818 -0.6242218 0.24458921 -0.64471072 0.26543641
		 -0.64768213 0.28622872 -0.6251471 0.27962482 -0.63971925 0.29288334 -0.62461859 0.28869665
		 -0.63669544 0.43042719 -0.58601761 0.23290318 -0.64769375 0.25718081 -0.65549958
		 0.27403128 -0.65064484 0.28945404 -0.62568933 0.28468388 -0.63947362 0.44750226 -0.60818034
		 0.24884707 -0.6594677 0.46628362 -0.62484133 -0.73701203 -0.3198736 -0.6841265 -0.39042464
		 -0.68028301 -0.32973304 -0.71414226 -0.26035547 -0.74975985 -0.24408022 -0.68518031
		 -0.44716233 -0.60944653 -0.38618156 -0.62094486 -0.32637972 -0.67383075 -0.26744938
		 -0.19097525 -0.16126478 -0.1891638 -0.15606439 -0.45524302 -0.31771159 -0.59760457
		 -0.44210729 -0.5360446 -0.36557853 -0.56284446 -0.30967253 -0.63158894 -0.26490369
		 -0.19113326 -0.16647613 -0.17754507 -0.16115868 -0.18570262 -0.15125448 -0.35777617
		 -0.30750936 -0.51118392 -0.41842714 -0.50993621 -0.2802335 -0.59035099 -0.25273398
		 -0.18975526 -0.17128998 -0.18068993 -0.14714062 -0.26123598 -0.2861481 -0.55311 -0.23150334
		 -0.18709147 -0.17532152 -0.17705286 -0.14466682 -0.52278483 -0.20235848 -0.18352121
		 -0.17825556 -0.16872215 -0.1299389 -0.17362869 -0.14354688 -0.17953581 -0.17989391
		 -0.16357523 -0.12949842 -0.17035282 -0.14402086 -0.17571086 -0.18018904 -0.15614486
		 -0.11951664 -0.15774685 -0.13260007 -0.16737837 -0.1462715 -0.1726715 -0.17927098
		 -0.14754134 -0.12244174 -0.15225089 -0.13976765 -0.16502714 -0.15030727 -0.16852057
		 -0.17519003 -0.13655239 -0.11661273 -0.13851315 -0.13201049 -0.14837205 -0.15088478
		 -0.16369909 -0.15588036 -0.15038627 -0.18092665 -0.16539192 -0.1692265 -0.12517196
		 -0.11546364 -0.12386078 -0.12792334 -0.13137907 -0.14837009 -0.14740634 -0.16511798
		 -0.1637553 -0.16245553 0.2221657 -0.38171518 -0.10888547 -0.12785506 -0.11306679
		 -0.14909828 -0.12853688 -0.17052007 0.24164069 -0.39910847 -0.094282806 -0.15316948
		 0.25977913 -0.4231768 -0.1603478 -0.53649735 -0.062033385 -0.51946807 -0.1751187
		 -0.48471218 0.037281126 -0.50480288 -0.071108669 -0.46716231 -0.18833016 -0.43083465
		 0.0336757 -0.45143878 -0.080307901 -0.41304895 -0.19997618 -0.37483612 0.028228492
		 -0.39647987 -0.089696974 -0.35709202 -0.2098863 -0.31698674 0.020811468 -0.33990237
		 -0.099296525 -0.29956335 -0.2177826 -0.25802124 0.011223346 -0.28200072 -0.10907838
		 -0.2412011 -0.22337839 -0.19913527 -0.00074478984 -0.22354195 -0.11898032 -0.18320212
		 -0.015240341 -0.16575316 0.68326479 -0.60027301 0.66220808 -0.57821494 0.67359793
		 -0.61176807 0.64258677 -0.55865675 0.65081561 -0.58895272 0.66324008 -0.62431335
		 0.6291393 -0.5680604 0.63928354 -0.60110813 0.65204048 -0.6375668 0.61605871 -0.5791769
		 0.62752211 -0.61433023 0.63983917 -0.65108287 0.60332835 -0.59166551 0.61549896 -0.62817782
		 0.62650698 -0.66417873 0.59105724 -0.60511017 0.60324389 -0.64197683 0.61198819 -0.67588633
		 0.57945013 -0.61887068 0.59083062 -0.65476632 0.56872928 -0.63202274 -0.3201988 -0.63635612
		 0.17238724 -0.043581426 0.56375915 0.074369788 0.60966551 0.097976267 0.65473497
		 0.11818829 0.69526416 0.13366652 0.72866398 0.14418885 0.7565667 0.15158674 0.77996427
		 0.15632397 0.79849249 0.15824997 0.81206369 0.15750745 0.82074076 0.15434688 0.82456285
		 0.14895737 0.82340169 0.14137234 0.81691086 0.13148655 0.80459231 0.11918975 0.53276396
		 -0.21290666 0.28611439 -0.56214774 -0.31610072 -0.61612248 -0.1605517 -0.58380097
		 -0.17598668 -0.57093227 -0.19603157 -0.56270051 -0.21905243 -0.55957651 -0.24328467
		 -0.56174862 -0.26689076 -0.5691008 -0.28803319 -0.58119279 -0.30495921 -0.59724307
		 -0.39343056 -0.034181535 -0.25300065 0.076048136 -0.21040007 0.092961133 -0.16912171
		 0.107474 -0.13265222 0.11837611 -0.10323337 0.12547442 -0.079331964 0.13026643 -0.060058266
		 0.13304785 -0.045676082 0.13365361 -0.036185175 0.13218939 -0.031460464 0.12886274
		 -0.031420767 0.12383047 -0.036151558 0.11711399 -0.045925766 0.10861434 -0.061100572
		 0.098234102 -0.056508482 -0.23140219 -0.088628381 -0.57754767 -0.15118212 -0.60055685
		 -0.73320019 -0.16327181 -0.72371191 -0.18000862 -0.56832284 -0.148009 -0.56405854
		 -0.12773103 -0.57955909 -0.16687608 -0.59650803 -0.1828807 -0.61761868 -0.19491211
		 -0.6411581 -0.2022 -0.66530842 -0.20431229 -0.68825364 -0.2011402 -0.70825523 -0.19288009;
createNode polyMapCut -n "polyMapCut5";
	rename -uid "20E65314-4493-DCA5-314C-CAA32828F1DA";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[769]" "e[779]";
createNode polyMapSew -n "polyMapSew5";
	rename -uid "60BAFA0F-4749-372F-8444-EF9E2357DEA8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[360:368]" "e[379]";
createNode polyTweakUV -n "polyTweakUV2";
	rename -uid "6D566E13-420E-0E52-D291-748D4BEC403A";
	setAttr ".uopa" yes;
	setAttr -s 430 ".uvtk";
	setAttr ".uvtk[0:249]" -type "float2" -0.0038137138 0.0016697049 -0.0031121522
		 0.0008572191 -0.0027191192 0.0010480881 -0.0034247935 0.0020124465 -0.0041525364
		 0.0012851804 -0.0034822673 0.00062768906 -0.0025420338 0.00012173504 -0.0021453053
		 0.00020343065 -0.0023007542 0.0012022257 -0.0029852465 0.0023139343 -0.0046607703
		 0.0024801977 -0.0042786747 0.0030179508 -0.0044385791 0.0008581616 -0.0038294941
		 0.0003561601 -0.0029344708 7.3686242e-06 -0.0049531311 0.0019022785 -0.0017405748
		 0.00025424361 -0.0018530786 0.0013194829 -0.0024915785 0.0025727302 -0.0038084611
		 0.0035117492 0.00013101101 -0.00084367394 0.00015062094 -0.00097492337 -0.0046678036
		 0.0003894642 -0.0041526109 3.8325787e-05 -0.0033251792 -0.00014318526 -0.0051507056
		 0.0012909602 0.00013172626 -0.00070928037 -0.0013236105 0.00027392805 -0.0013718605
		 0.0013973415 -0.0019390807 0.0027841181 -0.0032472163 0.0039567947 0.00019013882
		 -0.0011022389 0.0002604723 -0.00079740584 0.00028192997 -0.00090505183 -0.005249396
		 0.00065878639 0.00015461445 -0.00057314336 0.00025308132 -0.0006853193 -0.00089079142
		 0.00026057661 -0.00085385889 0.001431033 -0.0013236031 0.0029396415 -0.0025891736
		 0.0043436289 0.00024968386 -0.0012245774 0.0003169775 -0.0010083616 0.00038427114
		 -0.00073431432 0.00040614605 -0.00082340837 0.00020223856 -0.00043783337 0.00026130676
		 -0.00056892633 0.00037133694 -0.00064061582 -0.00043998659 0.00021077693 -0.00029733032
		 0.0014141798 -0.00064276904 0.003028214 -0.0018290356 0.0046563894 0.00033038855
		 -0.0013402104 0.00036585331 -0.0011072159 0.00043666363 -0.00090846419 0.0002874136
		 -0.00044882298 0.00036841631 -0.00054177642 2.9250979e-05 0.00012001395 0.00029881299
		 0.0013393164 0.00010450184 0.0030377209 -0.00096506579 0.0048735142 0.00043362379
		 -0.0014461577 0.00042951107 -0.0012006164 0.00047618151 -0.00098976493 0.00051669776
		 -1.7553568e-05 0.00097162277 0.0011882782 0.00096442923 0.0029493272 0 0.0049716532
		 0.00056058168 -0.0015381873 0.00050902367 -0.0012868047 0.00052541494 -0.0010669231
		 0.0010506511 -0.00022119284 0.0017854944 0.00092163682 0.0020175278 0.00271824 0.0011170742
		 0.0049288571 0.00071233511 -0.0016110241 0.00060552359 -0.0013630092 0.0005851388
		 -0.0011389852 0.0016771704 -0.0005300343 0.0027568936 0.00051599741 0.0032778755
		 0.0023089647 0.0024762768 0.0046926737 0.00090003014 -0.0016597807 0.00072014332
		 -0.0014253259 0.00065618753 -0.0012039244 0.0024028122 -0.00096476078 0.0039508641
		 -2.9236078e-05 0.0048100799 0.0017223954 0.0040706843 0.0042017102 0.0011445284 -0.0016693473
		 0.00086176395 -0.0014706254 0.00073963404 -0.0012591183 0.0059348457 0.0034499168
		 0.0014511943 -0.0016088188 0.0010467768 -0.0014880002 0.00084161758 -0.0013027191
		 0.0069037229 0.0010376871 0.0083422512 0.0025367439 0.0018347502 -0.0014390349 0.001280725
		 -0.0014533103 0.00097382069 -0.0013275445 0.0023624897 -0.0010895431 0.0015742779
		 -0.001334995 0.0011398196 -0.0013152957 -0.0015834868 -0.0016532838 -0.0017102361
		 -0.0018279403 -0.0013927519 -0.0016779304 -0.0012486279 -0.0015624166 -0.0019642115
		 -0.001719594 -0.0020834208 -0.0019336343 0.0013296008 -0.00021869317 0.0014294386
		 -0.00031320751 -0.0011330545 -0.0014939606 -0.00095802546 -0.0014542788 -0.0015383661
		 -0.0014911294 -0.0011788607 -0.0014551431 -0.0023932159 -0.001751706 -0.0025098324
		 -0.0019812882 0.0012145638 -0.00014092959 -0.0019344091 -0.0015182495 0.0011935234
		 -0.00031232834 0.0012677908 -0.00039462 0.0015131831 -0.00042301789 -0.00093519688
		 -0.0012850165 -0.0007121861 -0.0013354719 -0.00085231662 -0.001415059 -0.0028711557
		 -0.0017361194 -0.0029828548 -0.0019527003 0.0010849237 -8.2503306e-05 -0.0023717284
		 -0.0015306026 0.0011068583 -0.00023974478 0.0010516047 -0.00038732588 0.0011073351
		 -0.00045936555 0.001330018 -0.00048597157 0.0015797615 -0.00054748356 -0.00080651045
		 -0.0010612309 -0.00051480532 -0.001213491 -0.0005569756 -0.0013756752 0.00094246864
		 -4.7025562e-05 0.0010072589 -0.00017837435 0.00098669529 -0.00032009929 0.00090926886
		 -0.00045480579 0.00095146894 -0.00052031875 0.0011546016 -0.00053621829 0.0013797879
		 -0.00058637559 0.0016266704 -0.00068613142 -0.00075745583 -0.00083619356 -0.00037258863
		 -0.0010983348 -0.00029408932 -0.0013425648 0.00089436769 -0.00013082474 0.00091171265
		 -0.00025833398 0.00086122751 -0.00039065629 0.00098842382 -0.00058761239 0.0011934042
		 -0.00061823428 0.0014157891 -0.00069585443 0.0016501546 -0.00083781779 -0.00080025196
		 -0.00062844157 -0.00029477477 -0.0010035932 -6.7949295e-05 -0.0013231635 0.00082528591
		 -0.0002033785 0.00080645084 -0.00032784045 0.0010204911 -0.00065724552 0.0012232065
		 -0.0007057488 0.0014359355 -0.00081403553 0.0016456842 -0.001000151 -0.00094822049
		 -0.00046280026 -0.00029209256 -0.00094732642 0.00011470914 -0.0013272166 0.001047492
		 -0.00072962046 0.0012428164 -0.00079885125 0.0014372468 -0.00094002485 0.0016083717
		 -0.0011696815 -0.0012337267 -0.00037002563 -0.00038385391 -0.00095626712 0.00024551153
		 -0.0013679564 0.0010687709 -0.00080490112 0.001250267 -0.00089709461 0.0014163256
		 -0.001072377 0.0015291274 -0.0013513267 -0.0017322004 -0.00043016672 -0.00062292814
		 -0.001096189 0.00031661987 -0.0014700294 0.0010833144 -0.00088280439 0.0012432337
		 -0.00099982321 0.0013660192 -0.00121665 0.0013870597 -0.0015516281 -0.0025078654
		 -0.0007969141 -0.0010780096 -0.0014835 0.0002964735 -0.0016901195 0.0010896921 -0.00096276402
		 0.001216948 -0.001111716 0.0012688041 -0.0013807118 0.0011608005 -0.0017586648 -0.0036387444
		 -0.0016825795 -0.0018484145 -0.0022879839 0.00012236834 -0.0021126866 0.0010851622
		 -0.0010481775 0.0011588931 -0.0012395978 0.0011046529 -0.0015588701 0.00081789494
		 -0.0019750297 0.001062572 -0.0011433661 0.0010531545 -0.0013794303 0.00084251165
		 -0.0017547011 0.0002464056 -0.0022754073 -0.0053513795 -0.0034334958 0.001010716
		 -0.0012436509 0.00087612867 -0.0015306771 0.00040119886 -0.0020104945 0.00037246943
		 -0.00011268258 0.00038725138 -7.2969124e-05 -0.0044538975 -0.00033168867 -0.0048421025
		 -0.00011838973 0.00049555302 -9.9586323e-05 0.00041073561 -3.9139763e-05 -0.0041113496
		 -0.0005780682 0.00036662817 -0.00015578419 -0.0052572787 2.283749e-05 0.0004414916
		 -1.3750046e-05 -0.0038263202 -0.00082866102 -0.0037158728 -0.00033546984 0.00038123131
		 -0.00018633902 0.0002771616 -0.0003074035 0.00047713518 1.5783589e-06 -0.0036069155
		 -0.0010653734 -0.0033643842 -0.00069221109 0.00040692091 -0.00020482019 0.00033468008
		 -0.00032661855 0.00051498413 6.054237e-06 -0.0034587085 -0.0012803674 -0.0031022429
		 -0.001010187 -0.0029266477 -0.0005940944 0.0004401803 -0.00021186098 0.00039970875
		 -0.0003272593 0.0005517602 -1.1920929e-07 -0.0033861101 -0.0014744475 -0.0029320121
		 -0.0012836531 -0.0026351511 -0.00097403675 -0.0025064647 -0.00052727759 0.00037693977
		 -0.00043737143 0.00047761202 -0.00020870194 0.00046861172 -0.00031299889 0.00058460236
		 -1.5423866e-05 -0.0033931434 -0.0016535074 -0.0028548241 -0.0015200302 -0.0024508536
		 -0.0012810305 -0.0021982491 -0.00095450878 -0.0020995736 -0.00048752129 0.00046890974
		 -0.00040967017 0.00051647425 -0.00019681081 0.00053864717 -0.00028688461;
	setAttr ".uvtk[250:429]" 0.00061118603 -3.7422404e-05 -0.0034851432 -0.001824677
		 -0.0020090342 -0.0012768507 -0.0017858148 -0.00095039606 0.00047653913 -0.00049966574
		 0.0005620718 -0.0003702715 0.00055390596 -0.00017774478 0.00060719252 -0.00025138259
		 0.00063019991 -6.2658451e-05 0.0007905364 -3.8508791e-05 -0.0016006827 -0.0012743026
		 0.00048995018 -0.00058400631 0.00058621168 -0.00044821203 0.00065439939 -0.00032216311
		 0.00058698654 -0.00015303865 0.00067102909 -0.00020799786 0.00062835217 -9.3357638e-05
		 0.00076800585 -0.00010083057 0.00050842762 -0.00066353381 0.00061100721 -0.00052167475
		 0.00069671869 -0.00039061904 0.00074350834 -0.00026665628 0.00061285496 -0.00012427941
		 0.00072622299 -0.00015759841 0.000636518 -0.00059148669 0.00073510408 -0.00045701116
		 0.00077021122 -0.00052177906 0.0032711029 -0.0015349686 0.0020833015 -0.0019875169
		 0.0026362687 -0.0026060939 0.0044588745 -0.0022307038 0.0056205466 -0.0006685853
		 0.0015761107 -0.001525104 0.0016639829 -0.0024911761 0.0019021332 -0.0031584501 0.0033083707
		 -0.0034157932 -0.24180309 -0.022838354 -0.25048614 -0.019566238 0.0011060387 -0.0011922419
		 0.0013679564 -0.0020207465 0.0010330975 -0.0025000274 0.00094790757 -0.0032098591
		 0.0020433366 -0.0041159689 -0.23263401 -0.023347914 0.00095015764 -9.1791153e-05
		 -0.25789517 -0.013804734 0.0010457337 -0.0016948283 0.00095969439 -0.0020451546 -0.00029909611
		 -0.0028641224 0.00056259334 -0.00433743 -0.22378506 -0.021069169 -0.26332855 -0.0060842037
		 0.00079596043 -0.0017590225 -0.0011846423 -0.0041797459 -0.21602117 -0.016206503
		 0.0033475757 -0.00032675266 -0.0031839907 -0.0038103163 -0.21001174 -0.0091709793
		 0.0019623041 -0.0010807514 0.0025442839 -0.0005530715 -0.2062823 -0.00054749846 0.0016047955
		 -0.0010699332 0.0019413233 -0.00070542097 -0.20517185 0.0089452863 0.001345098 -0.0012421012
		 0.0013141036 -0.0010786355 0.0014789104 -0.00083661079 -0.001357615 -0.0033182502
		 0.0011674166 -0.0011799037 0.0010865331 -0.0011314154 0.0011063218 -0.00098949671
		 -0.00054496527 -0.0025163889 0.0010431409 -0.0012117028 0.0010436177 -0.0011679232
		 0.00090402365 -0.0012487769 0.00077468157 -0.0012004077 0.0005774498 -0.0017062128
		 1.7464161e-05 -0.0019283593 0.0009381175 -0.0012016892 0.00099402666 -0.0011587441
		 0.00096434355 -0.0012209713 0.00074213743 -0.0014418662 0.00043195486 -0.0015023947
		 0.00085175037 -0.0011673272 0.00094383955 -0.001123786 0.00098693371 -0.001168102
		 0.0009137392 -0.001344502 0.00089693069 -0.0010754168 0.00098782778 -0.0011033118
		 0.00097638369 -0.0010348856 -0.0017016977 -0.00047250092 -0.0013925433 -0.00096154213
		 -0.0013082176 -0.00048151612 -0.0012202561 -0.0012758523 -0.0010134876 -0.00098885596
		 -0.000914976 -0.00051556528 -0.00086310506 -0.0012842715 -0.00064486265 -0.00103423
		 -0.00051909685 -0.00057677925 -0.00052616 -0.0013028085 -0.0002848208 -0.0011007637
		 -0.00011977553 -0.0006685555 -0.00020891428 -0.0013356209 6.6012144e-05 -0.0011924505
		 0.00028182566 -0.00079536438 8.6307526e-05 -0.0013881326 0.00040474534 -0.0013147295
		 0.00068382919 -0.00096288323 0.00035488605 -0.0014674962 0.0007275492 -0.0014746785
		 0.00059068203 -0.0015832484 0.00080281496 -0.00058548152 0.00066286325 -0.00065842271
		 0.00083333254 -0.00064866245 0.00053143501 -0.00073896348 0.0006904006 -0.00072327256
		 0.00086218119 -0.00071205199 0.00055915117 -0.00081114471 0.00071942806 -0.0007866472
		 0.00088948011 -0.00077600777 0.00059175491 -0.00088058412 0.00075036287 -0.00084879994
		 0.00091511011 -0.0008405447 0.0006300211 -0.00094723701 0.00078344345 -0.00090950727
		 0.00093859434 -0.00090530515 0.00067424774 -0.0010106266 0.0008186698 -0.00096794963
		 0.00095915794 -0.00096938014 0.0007250905 -0.0010694563 0.0008559227 -0.0010230839
		 0.00078296661 -0.0011218786 -0.0052293539 -0.00061309768 0.0027279258 -0.0010919571
		 0.0020859241 -0.0015407801 0.0016261339 -0.0017685294 0.0012476444 -0.0018612444
		 0.00093847513 -0.0018632412 0.00069761276 -0.0018112063 0.00050204992 -0.0017252266
		 0.00033909082 -0.001612097 0.00020867586 -0.0014794171 0.00010973215 -0.0013338327
		 4.0709972e-05 -0.0011802018 0 -0.0010218769 -1.2695789e-05 -0.00086119771 2.9802322e-06
		 -0.0007006526 4.8577785e-05 -0.00054396689 0.00012511015 -0.00039680302 0.00023168325
		 -0.00026635081 -0.005004108 -0.00067221466 -0.003965497 -0.0015683062 -0.0039292276
		 -0.0014745444 -0.0039537549 -0.0013725422 -0.0040343702 -0.001262065 -0.0041648448
		 -0.0011427328 -0.0043375492 -0.0010165051 -0.004542917 -0.00088872574 -0.0047697127
		 -0.00076935068 -0.0075447857 -0.0032591224 -0.0055371225 -0.0012513399 -0.0040285587
		 -0.00023448467 -0.0028837621 0.00014695525 -0.0020802319 0.00014179945 -0.0015724599
		 -5.2571297e-05 -0.0012589991 -0.00033336878 -0.0010920465 -0.0006621182 -0.0010549724
		 -0.0010052025 -0.0011305213 -0.0013364255 -0.0013023913 -0.0016368628 -0.0015572011
		 -0.0018926412 -0.0018848181 -0.0020913482 -0.0022764206 -0.0022188425 -0.0027205348
		 -0.002257593 -0.0031972826 -0.0021873936 -0.0036704242 -0.0019896403 -0.0040657818
		 -0.00165141 -0.20679504 0.018502623 0.0044311881 4.0471554e-05 -0.47115791 0.01671195;
createNode polyMapSew -n "polyMapSew6";
	rename -uid "C1EFE4BD-4C8A-83D7-CBDF-38871F33C430";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[0:8]" "e[19]" "e[741]";
createNode polyMapCut -n "polyMapCut6";
	rename -uid "EED8DE39-4704-BBE4-4915-0383230F56FB";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[749]" "e[759]";
createNode polyTweakUV -n "polyTweakUV3";
	rename -uid "26CD7886-4959-1B21-BBDE-1FAAB2E70741";
	setAttr ".uopa" yes;
	setAttr -s 422 ".uvtk";
	setAttr ".uvtk[0:249]" -type "float2" 0.51025099 -0.0062935427 0.50843585
		 -0.0045995787 0.50753587 -0.0051994324 0.50913095 -0.0069739744 0.51144522 -0.0053710528
		 0.50941485 -0.0038083941 0.50693691 -0.0028946102 0.5062176 -0.003441155 0.50668919
		 -0.0056551844 0.5080623 -0.0074680448 0.51226914 -0.0077922195 0.51089537 -0.0086105652
		 0.51275408 -0.0041123703 0.51051754 -0.0027459301 0.50772834 -0.0022029728 0.51369977
		 -0.006674625 0.50554669 -0.003880471 0.50587922 -0.0059950054 0.50703073 -0.007808283
		 0.50956273 -0.0091915652 -0.49915755 0.0013372004 -0.49945164 0.0013111085 0.51426935
		 -0.0023475327 0.5118407 -0.0012651309 0.50863183 -0.001302585 0.5152142 -0.0051557822
		 -0.49883786 0.0013401508 0.50490868 -0.0042355359 0.50509727 -0.0062348545 0.50602967
		 -0.0080123395 0.50826162 -0.0095710605 -0.49972776 0.0012617707 -0.49914584 0.00088982284
		 -0.49939197 0.0008598417 0.5168789 -0.0030589849 -0.49847943 0.0013216883 -0.49887866
		 0.00090409815 0.5042944 -0.0045197904 0.50434113 -0.0063832998 0.50506049 -0.0080890059
		 0.5069896 -0.0097668916 -0.49999008 0.0011889338 -0.49962395 0.00081419945 -0.49911347
		 0.00048136711 -0.49932042 0.00045035779 -0.49805367 0.0012917593 -0.49857908 0.00090298057
		 -0.49889174 0.00050082803 0.50370055 -0.0047405064 0.5036146 -0.0064452887 0.50413162
		 -0.0080437362 0.50575417 -0.0097860992 -0.50024021 0.0010917783 -0.49984592 0.00075256824
		 -0.49951786 0.00040826201 -0.49822515 0.00088956952 -0.49864659 0.00050760806 0.50312823
		 -0.0049014986 0.50292456 -0.0064246953 0.50325537 -0.0078826249 0.50457257 -0.0096323043
		 -0.50047755 0.00096973777 -0.5000602 0.00067418814 -0.49970949 0.00035500526 0.50258148
		 -0.005005002 0.50224721 -0.00631845 0.50240713 -0.0075982511 0.50346875 -0.0093122125
		 -0.50069928 0.00082281232 -0.50026709 0.00057846308 -0.49989763 0.0002900362 0.50203902
		 -0.005053252 0.5015648 -0.0061077476 0.50157475 -0.0071649253 0.50242257 -0.0088189542
		 -0.5009023 0.00065222383 -0.50046545 0.00046524405 -0.50008285 0.0002130568 0.50148106
		 -0.0050365925 0.500934 -0.005794853 0.50083864 -0.00660339 0.50143361 -0.0081309974
		 -0.50109136 0.00044998527 -0.50065315 0.00033476949 -0.50026476 0.00012379885 0.50094712
		 -0.0049453676 0.50039959 -0.0054037273 0.50025558 -0.0059643984 0.50060934 -0.0072966516
		 -0.50126755 0.00020360947 -0.50083625 0.00018015504 -0.50044185 2.2470951e-05 0.50001234
		 -0.0064042509 -0.50141072 -7.4207783e-05 -0.50101882 -9.894371e-06 -0.50062084 -9.6619129e-05
		 0.49984276 -0.0053029656 0.4996469 -0.0055367053 -0.5015074 -0.00036391616 -0.50118411
		 -0.00022810698 -0.5008083 -0.0002425909 -0.50155413 -0.00064736605 -0.50131923 -0.0004619956
		 -0.50099051 -0.00041094422 0.50410593 0.00075280666 0.50400198 0.00026491284 0.50384951
		 0.00028027594 0.50387084 0.00062698126 0.50428009 0.00086607039 0.50405312 0.00022815168
		 -0.4989194 -0.00092906505 -0.49891371 -0.0010788366 0.5036267 0.00026887655 0.50359607
		 0.00048485398 0.50425249 0.00089991093 0.50394475 0.00064659119 0.50434852 0.00096987188
		 0.50394261 0.00017516315 -0.49897802 -0.00079696067 0.50453508 0.0011602044 -0.49899012
		 -0.00084445626 -0.49901488 -0.00095961988 -0.49895227 -0.0012355633 0.50335068 0.00022563338
		 0.5032922 0.00032243133 0.50362259 0.00039339066 0.50420558 0.0010625347 0.50353736
		 0.00010401011 -0.49910605 -0.00070196227 0.50476617 0.001436159 -0.49900445 -0.00074189529
		 -0.49900943 -0.0007327497 -0.4990651 -0.00082115829 -0.49907184 -0.0010798126 -0.49903092
		 -0.0013922229 0.50303257 0.00014513731 0.50296545 0.00013571978 0.50329006 0.00013485551
		 -0.49934128 -0.00068369741 -0.49907213 -0.00066640228 -0.49898058 -0.00065393001
		 -0.49901187 -0.00058990717 -0.499098 -0.00065724552 -0.49914309 -0.00091382861 -0.49915746
		 -0.0012002587 -0.49914762 -0.0015426874 0.50268126 2.2113323e-05 0.50262129 -7.879734e-05
		 0.50294948 -0.0001334548 -0.49922511 -0.00064872764 -0.4989886 -0.00059514865 -0.49894214
		 -0.00053051859 -0.49919808 -0.00072881579 -0.49924114 -0.0010075271 -0.49927038 -0.0013169795
		 -0.49930081 -0.0016801655 0.50230575 -0.00014841557 0.50226533 -0.00032401085 0.50260293
		 -0.0004145503 -0.49905458 -0.00057874992 -0.49889418 -0.00048650801 -0.49931157 -0.00080254674
		 -0.49935877 -0.0010997653 -0.49940962 -0.0014257282 -0.49948797 -0.0017970353 0.50191545
		 -0.00037047267 0.50190365 -0.0006018579 0.50225395 -0.00071024895 -0.49943852 -0.00087690353
		 -0.49949551 -0.0011878014 -0.49957359 -0.0015218258 -0.49970484 -0.0018855333 0.50150019
		 -0.00066205859 0.50152391 -0.00092986226 0.50190628 -0.0010213554 -0.49957895 -0.00095021725
		 -0.49965033 -0.0012686849 -0.49975991 -0.0016005635 -0.49995756 -0.0019415915 0.5010494
		 -0.0010541081 0.50111246 -0.0013341904 0.50154626 -0.0013642907 -0.49973235 -0.0010206252
		 -0.4998219 -0.0013393015 -0.49997643 -0.0016598105 -0.50025553 -0.0019544661 0.50060415
		 -0.0015402436 0.50070041 -0.0018026233 0.50115824 -0.0017599761 -0.49989772 -0.0010860562
		 -0.50001818 -0.00139907 -0.50023478 -0.0016918778 -0.50057423 -0.001906544 0.5002057
		 -0.0020953715 0.50031841 -0.002312392 0.50076699 -0.0021907985 -0.50008297 -0.0011472106
		 -0.50025123 -0.0014438033 -0.5005185 -0.0016821623 -0.50088048 -0.0017940104 -0.50029987
		 -0.00120309 -0.50050908 -0.0014619827 -0.50080407 -0.0016237199 -0.50114524 -0.0016268194
		 0.49988091 -0.0026884377 -0.50053847 -0.0012452304 -0.50077474 -0.0014464855 -0.50106955
		 -0.0015186369 0.21347558 -0.008788161 0.21443868 0.00078166649 0.51367062 0.0009611547
		 0.51628137 0.0002897568 -0.023369908 -0.013433942 0.21802408 0.0095527172 0.51125956
		 0.0017432868 -0.18812621 0.025798369 0.51893467 -2.2674127e-05 0.22390383 0.016792962
		 0.50915015 0.0024017282 0.50973022 -7.5601041e-05 -0.49640897 0.001531601 -0.49747685
		 0.0012958348 0.23156238 0.021903023 0.50737619 0.0027429238 0.50800532 0.00098045915
		 -0.49704331 0.00088783726 -0.49776354 0.00087697804 0.24033964 0.02445687 0.50590724
		 0.0026429817 0.50666702 0.0017064884 0.5071491 -9.7975135e-06 -0.49751109 0.00038934126
		 -0.49800912 0.00047277659 0.24947965 0.024233915 0.50466466 0.0020719394 0.50565791
		 0.0019731447 0.50605875 0.00094663352 0.50643182 -0.00076230615 -0.4983632 0.00049972534
		 -0.4978888 3.3192337e-06 -0.49822319 0.00012508035 0.2581836 0.021242965 0.50354648
		 0.0011110902 0.50487733 0.001738742 0.50529772 0.0014433265 0.50551265 0.00034269691
		 0.50579882 -0.0013640821 -0.49848002 0.00015939027 -0.49823755 -0.00029785931 -0.49843064
		 -0.00015358627;
	setAttr ".uvtk[250:421]" 0.26566929 0.015739143 0.5024662 -3.9637089e-05 0.50491107
		 0.00099782646 0.50501192 -0.00016278028 -0.49869731 0.00016334653 -0.49859473 -0.00011530519
		 -0.49861032 -0.00054183975 -0.49865738 -0.00036736578 0.27123857 0.008234797 -0.49981269
		 -0.00084442482 0.50452363 0.00060518086 -0.49889243 0.00015044212 -0.4987478 -0.00011648238
		 -0.49872458 -0.00032347441 -0.49905694 -0.00075992942 -0.49892214 -0.0005299598 -0.50039375
		 -0.0012814775 -0.49955201 -0.00076590478 -0.49907428 0.00012600422 -0.49889538 -0.00013720989
		 -0.49881151 -0.00033068657 -0.49887937 -0.00047373772 -0.49963042 -0.00099026412
		 -0.49922854 -0.00065857917 -0.49904019 -0.0001694262 -0.49891102 -0.00036186725 -0.49901912
		 -0.00040569901 0.5004704 -0.0047849417 0.50091773 -0.0041174889 0.50049174 -0.0041612387
		 0.50006735 -0.0045695901 0.49998075 -0.0049659908 0.50137633 -0.00401932 0.50087148
		 -0.0033611655 0.50048113 -0.0035755336 0.50011152 -0.0041527152 0.49973392 -0.0043075085
		 0.49967065 -0.0044981539 0.50184309 -0.0038741231 0.50128186 -0.0031114817 0.50082099
		 -0.0027121305 0.50044847 -0.0030597448 0.50012171 -0.0037484169 0.4997727 -0.0040958524
		 -0.5015161 -0.0011854768 0.49958348 -0.0046473742 0.50169206 -0.0028418899 0.50120991
		 -0.0023519099 0.50039583 -0.0026350319 0.50010335 -0.0033828616 0.49978793 -0.0038821995
		 0.49947602 -0.0047354102 0.50159562 -0.0019990504 0.50005859 -0.0030758381 0.49978077
		 -0.003683567 -0.50155467 -0.00091671944 0.49998584 -0.0028411448 0.49975228 -0.0035140514
		 -0.50141799 -0.00069919229 -0.50148141 -0.00093567371 0.49970323 -0.0033852458 -0.50129634
		 -0.00078186393 -0.50141335 -0.00097459555 0.49963447 -0.0033060312 -0.5011555 -0.00059339404
		 -0.50119358 -0.00088649988 -0.50135481 -0.0010290146 -0.50135374 -0.0014210045 -0.50101852
		 -0.00074669719 -0.50111294 -0.0010058284 -0.50130928 -0.0010944307 -0.50130427 -0.0013726056
		 -0.50082922 -0.00061038136 -0.50090992 -0.00091362 -0.50105727 -0.0011339188 -0.50127959
		 -0.0011661649 -0.50103223 -0.0013956726 -0.50127572 -0.0013102293 -0.50063276 -0.00048309565
		 -0.50069982 -0.00081846118 -0.50083166 -0.0010883808 -0.50102937 -0.0012655258 -0.50126779
		 -0.0012396872 -0.5004403 -0.0003708601 -0.50049019 -0.00072464347 -0.50060266 -0.0010307133
		 -0.50078547 -0.0012670159 -0.50029171 -0.00063741207 -0.50037944 -0.00096446276 -0.50017333
		 -0.00089532137 0.5052222 -0.0018624514 0.50454515 -0.00060197711 0.50468385 -0.0022859871
		 0.50414264 0.0002463907 0.50410247 -0.00099490583 0.50417143 -0.0026524961 0.50376838
		 -9.1090798e-05 0.50367653 -0.0013544708 0.50367737 -0.0029726326 0.50339872 -0.00041598082
		 0.50326192 -0.0016887337 0.50319844 -0.0032522082 0.50303197 -0.00073412061 0.50285691
		 -0.0020022392 0.50273496 -0.0034938455 0.50266802 -0.0010490119 0.50246191 -0.0022968054
		 0.50228941 -0.0036987364 0.50230849 -0.0013622344 0.50207919 -0.0025728643 0.50195599
		 -0.0016741157 -0.49913439 -0.00045692921 -0.49918416 -0.00020945072 -0.49925685 -0.00051303208
		 -0.499248 9.2387199e-05 -0.49932927 -0.00025564432 -0.499387 -0.00057275593 -0.49941739
		 5.0678849e-05 -0.49947727 -0.00030729175 -0.49952579 -0.0006352216 -0.49958521 1.0877848e-06
		 -0.49962956 -0.00036406517 -0.49967337 -0.00069957972 -0.4997535 -5.6505203e-05 -0.49978676
		 -0.00042566657 -0.49982971 -0.00076466799 -0.49992284 -0.00012218952 -0.49994868
		 -0.00049161911 -0.49999368 -0.00082933903 -0.5000931 -0.00019595027 -0.50011444 -0.00056117773
		 -0.50026315 -0.00027740002 -0.5016979 -0.00063639879 -0.5017159 -0.00031399727 -0.50167066
		 3.3378601e-05 -0.50156021 0.00038042665 -0.5013957 0.00069782138 -0.50120014 0.00096380711
		 -0.50097632 0.0011897683 -0.50072056 0.0013829172 -0.50043941 0.0015400052 -0.50013852
		 0.0016601682 -0.49982104 0.0017440617 -0.49948686 0.0017923266 -0.49913323 0.0018048733
		 -0.49875355 0.0017810911 -0.4983364 0.0017227829 -0.49785158 0.0016455725 -0.49718413
		 0.0016339272 0.49973875 -0.0026256442 0.50004256 -0.0019841194 0.50045383 -0.0013888776
		 0.500938 -0.00088492036 0.50144041 -0.00050449371 0.50190622 -0.000251472 0.50234067
		 -9.1046095e-05 0.50274998 -4.529953e-06 0.50311881 1.4781952e-05 0.50343323 -2.4586916e-05
		 0.50367963 -0.00011360645 0.50384176 -0.00024323165 0.50389552 -0.00040329993 0.50380111
		 -0.00058010221 0.50348842 -0.0007539317 0.50281739 -0.00090529025 0.50140798 -0.0010742396
		 0.49954769 -0.0032836199 -0.50162733 -0.00092181563 0.49944359 -0.0039807856 -0.49786267
		 -0.0011906978 0.21523571 -0.018341329 -0.27520257 -0.011700507;
createNode polyMapCut -n "polyMapCut7";
	rename -uid "AA124B0A-4AD6-B3DA-F31C-E88B4B5C16A0";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 40 "e[384]" "e[394]" "e[404]" "e[414]" "e[424]" "e[434]" "e[444]" "e[454]" "e[464]" "e[474]" "e[484]" "e[494]" "e[504]" "e[514]" "e[524]" "e[534]" "e[544]" "e[554]" "e[564]" "e[574]" "e[584]" "e[594]" "e[604]" "e[614]" "e[624]" "e[634]" "e[644]" "e[654]" "e[664]" "e[674]" "e[684]" "e[694]" "e[704]" "e[714]" "e[724]" "e[734]" "e[744]" "e[754]" "e[764]" "e[774]";
createNode polyTweakUV -n "polyTweakUV4";
	rename -uid "4BE79591-4309-29F6-9FD0-EE8DA3C6FEAE";
	setAttr ".uopa" yes;
	setAttr -s 464 ".uvtk";
	setAttr ".uvtk[0:249]" -type "float2" 0.10813701 0.17526013 0.12002707 0.17149645
		 0.12554389 0.17672534 0.11398607 0.17943875 0.10116965 0.16933283 0.11304837 0.16483703
		 0.13163334 0.16659561 0.13719898 0.17339259 0.12967914 0.1807804 0.11869824 0.18217993
		 0.09592849 0.17870632 0.10261011 0.18239611 0.093080163 0.16123264 0.10446137 0.15639727
		 0.12421274 0.15868989 0.088475823 0.17286494 0.14105833 0.17925183 0.13243502 0.18384054
		 0.12220675 0.18370509 0.10835147 0.18427327 0.17822969 -0.025042191 0.17207766 -0.027340904
		 0.083870292 0.15040982 0.094066858 0.14572278 0.11469609 0.14945288 0.080462992 0.16443634
		 0.18655196 -0.022802427 0.14325917 0.18428613 0.13373476 0.18602765 0.12438166 0.18417948
		 0.1129756 0.18458882 0.16781887 -0.029471546 0.17389283 -0.035593301 0.1669814 -0.036771178
		 0.072191775 0.15291117 0.19744039 -0.020922512 0.18286896 -0.034074947 0.14375502
		 0.1885525 0.1334396 0.18743381 0.12503701 0.18375193 0.11626077 0.18354234 0.16528526
		 -0.031231791 0.16186303 -0.037499443 0.17068443 -0.047174901 0.16244474 -0.04733786
		 0.21140397 -0.019834414 0.19430959 -0.032340743 0.18093285 -0.046203159 0.14243412
		 0.19206621 0.1313802 0.18814848 0.12395513 0.18259026 0.11793262 0.18133642 0.16439235
		 -0.032408506 0.15838158 -0.037659124 0.15598124 -0.046688899 0.20875537 -0.030563936
		 0.19353196 -0.044391684 0.13916099 0.19482511 0.12738347 0.18827575 0.12091285 0.18089831
		 0.11768794 0.17822772 0.16509885 -0.032761782 0.15647572 -0.037106931 0.15117365
		 -0.045184061 0.13381284 0.19683254 0.12091428 0.18791682 0.11535692 0.17881829 0.11523151
		 0.17454892 0.16736341 -0.032027781 0.15614402 -0.035673916 0.14800489 -0.042742029
		 0.12585789 0.19815591 0.11083889 0.18715763 0.10610992 0.17658469 0.10997528 0.17051125
		 0.17111975 -0.029931486 0.15740347 -0.03317523 0.14653099 -0.039258599 0.11419594
		 0.19873178 0.096767604 0.18628457 0.09267664 0.17495391 0.10066879 0.16652617 0.17657179
		 -0.025949627 0.16025919 -0.029421538 0.14683574 -0.034625262 0.098678172 0.19841179
		 0.078964472 0.18575549 0.075363755 0.1748482 0.086842895 0.16396084 0.18421099 -0.019025058
		 0.16496128 -0.023917019 0.14898825 -0.0287444 0.069167078 0.16429737 0.19368115 -0.008497715
		 0.1721296 -0.015713751 0.15328196 -0.021136343 0.055089712 0.1770539 0.049215496
		 0.16859284 0.20412266 0.0057037771 0.18172213 -0.0044502318 0.16046456 -0.010964721
		 0.2145406 0.023135513 0.19320706 0.0097609758 0.17070147 0.0016984344 -0.65307039
		 0.40459135 -0.64750993 0.41442919 -0.65379548 0.41287017 -0.65998888 0.4042441 -0.64406306
		 0.40504038 -0.63907707 0.41568452 -0.0072141588 0.06132511 -0.00092895329 0.065846011
		 -0.65818202 0.41126484 -0.66507512 0.40413851 -0.6576463 0.39359397 -0.66577208 0.39441925
		 -0.63258529 0.40542138 -0.6281392 0.41629204 -0.014010474 0.05457183 -0.64743209
		 0.39333901 0.0054288507 0.059191223 0.010833696 0.064084172 0.0046383515 0.068452127
		 -0.6608125 0.4098337 -0.66846961 0.40441102 -0.67203963 0.39584529 -0.61812049 0.40549985
		 -0.61424023 0.41576445 -0.021057606 0.045177724 -0.63478732 0.39364538 -0.00088275969
		 0.052427948 0.017773107 0.05668921 0.022731662 0.062572993 0.015278444 0.06741447
		 0.0092834234 0.069372617 -0.66174597 0.40879837 -0.67021585 0.40521127 -0.67656201
		 0.39792985 -0.027997032 0.032672144 -0.0080561638 0.043371931 0.011527061 0.049214102
		 0.029948652 0.053012915 0.034782201 0.060447991 0.026454002 0.067130327 0.018671647
		 0.069394864 0.012763396 0.068779737 -0.66099584 0.40840244 -0.67029583 0.40670741
		 -0.67934656 0.40075585 -0.016026407 0.031477071 0.0038875341 0.039782804 0.02339831
		 0.044264138 0.038028032 0.066756681 0.028922468 0.070539713 0.020866029 0.07017453
		 0.014782541 0.066842034 -0.65857309 0.40891275 -0.66867155 0.40908107 -0.68032485
		 0.40442038 -0.0052912831 0.027920764 0.014916122 0.033952601 0.039721325 0.072057009
		 0.030047521 0.072913736 0.021659821 0.069879547 0.015009457 0.063777983 -0.65451306
		 0.41060996 -0.66531634 0.41251966 -0.67940181 0.40902138 0.0398103 0.076400578 0.029681206
		 0.074327841 0.020817593 0.068650931 0.013111345 0.059882313 -0.6485492 0.41399255
		 -0.65992117 0.41748872 -0.67649734 0.41464752 0.038182393 0.079789966 0.027644753
		 0.074851081 0.018093303 0.066664651 0.0084837899 0.055297941 -0.64006776 0.42005762
		 -0.65175635 0.42486075 -0.67126113 0.42174271 0.034702897 0.082207367 0.023754038
		 0.074566662 0.012925647 0.063999623 -0.00015783613 0.050289273 -0.62935281 0.42949855
		 -0.6408273 0.43499723 -0.66284877 0.43105268 0.029248998 0.083641797 0.017470002
		 0.073515385 0.0041237436 0.060753763 -0.013446212 0.046156555 -0.61725581 0.44248071
		 -0.62768155 0.44784459 -0.65110993 0.44248459 0.021288842 0.084101379 0.00766211
		 0.071654052 -0.0088985302 0.057617694 -0.030897731 0.044448406 0.0097415447 0.083399892
		 -0.0060957149 0.069218755 -0.025951181 0.05554086 -0.051077779 0.046397954 -0.60481954
		 0.45867372 -0.0055295974 0.081369162 -0.023600612 0.066691637 -0.0462186 0.05540958
		 0.062173784 0.11791247 0.066846192 0.11543851 0.08162272 0.13225891 0.07356292 0.13619991
		 0.049248397 0.095158651 0.070297062 0.11128975 0.088075101 0.12594676 0.25427854
		 -0.017611004 0.06407547 0.13777167 0.072244465 0.10557443 0.0925861 0.1170575 0.1027683
		 0.13862488 0.25086829 -0.022627376 0.22902998 -0.020150229 0.072390795 0.098461941
		 -0.59084904 0.37672025 0.10973328 0.12854084 0.2495414 -0.027995473 0.22689858 -0.02900134
		 -0.57496339 0.39230973 -0.59744149 0.38644952 -0.61066175 0.36952823 0.12367463 0.13955534
		 0.25035256 -0.033441406 0.2276682 -0.038053032 -0.57733107 0.39783958 -0.60031128
		 0.39591956 -0.61710566 0.38257664 -0.62910795 0.36539 0.13466161 0.14991069 0.20892847
		 -0.041690871 0.25336325 -0.038684759 0.23165113 -0.047175575 -0.57749832 0.40331277
		 -0.60001063 0.4049412 -0.61926275 0.39451072 -0.6340251 0.38048434 -0.64577425 0.36403921
		 0.14301616 0.15956064 0.21250361 -0.05336491 -0.0215303 -0.021754287 0.23937187 -0.05611302;
	setAttr ".uvtk[250:463]" -0.57555974 0.40846065 -0.59686708 0.41342613 -0.64839423
		 0.37994909 -0.66047156 0.36513266 0.19587556 -0.057464913 0.22047934 -0.065635063
		 -0.022491366 -0.014670979 -0.0034943223 -0.00091787428 -0.57160169 0.41302037 -0.034358323
		 0.01658994 -0.66045254 0.38076726 0.1815995 -0.059719749 0.20258555 -0.071962394
		 0.012327403 0.012472928 -0.025091439 -0.0091830753 -0.0090163648 0.0074604154 -0.033965498
		 -0.0034830682 -0.024694383 0.016086319 0.16946077 -0.060359493 0.18613198 -0.075310528
		 0.025015235 0.02503477 0.0042186975 0.021784045 -0.02901417 -0.0054277685 -0.016186565
		 0.013049066 0.1713461 -0.075998209 0.034840733 0.0366074 0.042129129 0.047181576
		 0.079772413 0.19725817 0.097687364 0.21179315 0.077280998 0.20956567 0.058220327
		 0.19547153 0.058106244 0.18604136 0.11536324 0.21189952 -0.66738939 0.46714398 -0.6481266
		 0.48050067 0.055170059 0.20526084 0.034212887 0.19321233 0.034419835 0.18750596 0.12942046
		 0.2101253 -0.68298364 0.45211011 -0.66008246 0.45280513 -0.64345318 0.46623078 -0.62643898
		 0.49102819 0.031790197 0.19894212 0.23482695 0.068009198 0.032489061 0.18209803 -0.69398171
		 0.43695167 -0.67330456 0.43964583 -0.6364823 0.45558682 -0.62427723 0.47903582 -0.60327053
		 0.49801055 0.028491676 0.17726642 -0.68257934 0.42774132 -0.61967921 0.46978915 -0.60304159
		 0.49074906 0.22441542 0.043522805 -0.61310089 0.46305299 -0.60099548 0.48485976 0.20585138
		 0.026485354 0.21933317 0.045584917 -0.59742141 0.48052204 0.19857013 0.032363325
		 0.21529785 0.049453616 -0.59259152 0.47786283 0.18361616 0.016356766 0.19295201 0.040957987
		 0.21259308 0.055036813 -0.072543785 0.052597433 0.17549062 0.026038796 0.18942097
		 0.052559644 0.21152571 0.062192261 -0.069132894 0.057822138 0.16063696 0.010804504
		 0.16920853 0.039584547 -0.049288571 0.083256871 -0.07171765 0.074381471 -0.0442398
		 0.064616591 -0.067830339 0.063381433 0.14913806 -0.0037648678 0.15174162 0.024089754
		 -0.027897842 0.089981645 -0.045178622 0.0739353 -0.068676129 0.068994343 0.14140931
		 -0.016626894 0.13811639 0.0073642135 -0.0079715699 0.094444454 -0.024072751 0.07812047
		 0.1290659 -0.0089432299 0.0094795078 0.096488655 0.02355136 0.096256763 0.14902407
		 0.16852695 -0.67316014 0.36835197 0.15287775 0.17684469 -0.67042434 0.38278601 -0.68384016
		 0.37346536 0.15465117 0.1845199 -0.67846632 0.38591611 -0.69244629 0.38033766 0.15430868
		 0.19150205 -0.68462873 0.39012647 -0.6987763 0.38888985 0.15174657 0.1976808 -0.68884325
		 0.39542246 -0.70248735 0.39902449 0.14685589 0.2029101 -0.69094753 0.40181443 -0.70316565
		 0.41054967 0.1395821 0.20705134 -0.69074506 0.40929005 -0.70045626 0.42314062 -0.68808389
		 0.41780141 0.047162563 0.056811526 0.15830472 -0.074337058 0.050128788 0.065554246
		 0.15925381 -0.059562236 0.14703393 -0.070557699 0.051101565 0.073424578 0.15083286
		 -0.057435304 0.13761389 -0.064786986 0.050051659 0.080368638 0.14415097 -0.054015726
		 0.13025406 -0.057079792 0.046888724 0.086265117 0.13927469 -0.049290389 0.12530667
		 -0.047492445 0.041520566 0.090956509 0.13636389 -0.043229923 0.12320486 -0.036166459
		 0.033908203 0.094298542 0.13561544 -0.035823315 0.12434 -0.023382068 0.13718623 -0.027100146
		 0.22449285 0.022303939 0.21641433 0.003915906 0.20673969 -0.010992825 0.19684583
		 -0.021648735 0.18811119 -0.028059989 0.18139684 -0.031061113 0.17635345 -0.031860799
		 0.17283291 -0.031035513 0.17101675 -0.028952777 0.17102271 -0.025985777 0.17292908
		 -0.02248019 0.1768297 -0.018750399 0.18288434 -0.015112981 0.19133836 -0.011949107
		 0.20250294 -0.0097808093 0.21667889 -0.009344317 0.23400679 -0.011611663 -0.59498191
		 0.45666236 -0.6051864 0.43922698 -0.61658996 0.42542985 -0.62773263 0.41588685 -0.63724053
		 0.41043732 -0.64434701 0.4081578 -0.64954174 0.40788439 -0.65304065 0.40905938 -0.65470433
		 0.41129687 -0.65445727 0.41421264 -0.65226078 0.41745362 -0.64805758 0.42069647 -0.64172614
		 0.42360806 -0.63306653 0.42578191 -0.62182987 0.42666414 -0.60780072 0.42548898 -0.59095037
		 0.42127424 -0.5867793 0.47700739 0.23026028 0.04335776 -0.57936108 0.5010618 -0.044247925
		 -0.02766717 0.056555569 0.11861069 -0.039657503 -0.0034201248 -0.076984748 0.07921809
		 -0.095930785 0.062966883 0.0063490272 0.19030705 0.027086496 0.20437327 -0.55000186
		 0.40041471 0.27728358 -0.027677096 0.25860554 -0.043394964 -0.57032371 0.38704529
		 -0.056989454 0.092358351 0.048514545 0.2152316 -0.035887405 0.10230929 0.070689619
		 0.22279975 -0.014540926 0.10879815 0.092724562 0.22690299 0.0056378245 0.11159611
		 0.11318719 0.22746992 0.023134217 0.11088526 0.1305877 0.22484842 0.036974132 0.10750434
		 0.1440472 0.21997848 0.047780663 0.10188776 0.15423763 0.21322402 0.055859089 0.094172031
		 0.16148138 0.20468801 0.061085463 0.084787577 0.16570306 0.1948117 0.063505143 0.074172065
		 0.16699618 0.18402506 0.063217551 0.062670231 0.16549861 0.17265949 0.06026268 0.050507143
		 0.16127592 0.16093448 0.05455181 0.037831917 0.1542576 0.14900845 0.045867354 0.024806872
		 0.14424598 0.13706732 0.033935666 0.011711597 0.13100165 0.12541974 0.018566728 -0.0009637177
		 0.11439121 0.11457425 -0.00013890862 -0.012459449 0.094600201 0.10527434;
select -ne :time1;
	setAttr ".o" 0;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".dss" -type "string" "lambert1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".vtn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".vn" -type "string" "ACES 1.0 SDR-video";
	setAttr ".dn" -type "string" "sRGB";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".otn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".potn" -type "string" "ACES 1.0 SDR-video (sRGB)";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "polyTweakUV4.out" "pSphereShape1.i";
connectAttr "polyTweakUV4.uvtk[0]" "pSphereShape1.uvst[0].uvtw";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "defaultRedshiftPostEffects.msg" ":redshiftOptions.postEffects";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "polyTweak1.out" "polyAutoProj1.ip";
connectAttr "pSphereShape1.wm" "polyAutoProj1.mp";
connectAttr "polySphere1.out" "polyTweak1.ip";
connectAttr "polyAutoProj1.out" "polyMapSew1.ip";
connectAttr "polyMapSew1.out" "polyMapCut1.ip";
connectAttr "polyMapCut1.out" "polyMapCut2.ip";
connectAttr "polyMapCut2.out" "polyMapSew2.ip";
connectAttr "polyMapSew2.out" "polyMapCut3.ip";
connectAttr "polyMapCut3.out" "polyMapSew3.ip";
connectAttr "polyMapSew3.out" "polyMapCut4.ip";
connectAttr "polyMapCut4.out" "polyMapSew4.ip";
connectAttr "polyMapSew4.out" "polyTweakUV1.ip";
connectAttr "polyTweakUV1.out" "polyMapCut5.ip";
connectAttr "polyMapCut5.out" "polyMapSew5.ip";
connectAttr "polyMapSew5.out" "polyTweakUV2.ip";
connectAttr "polyTweakUV2.out" "polyMapSew6.ip";
connectAttr "polyMapSew6.out" "polyMapCut6.ip";
connectAttr "polyMapCut6.out" "polyTweakUV3.ip";
connectAttr "polyTweakUV3.out" "polyMapCut7.ip";
connectAttr "polyMapCut7.out" "polyTweakUV4.ip";
connectAttr "defaultRedshiftPostEffects.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pSphereShape1.iog" ":initialShadingGroup.dsm" -na;
// End of Coconut_whole.ma
