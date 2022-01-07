; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/win32/extr_direct3d9.c_Open.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/win32/extr_direct3d9.c_Open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_38__ = type { %struct.TYPE_39__*, i32, i32, i32, i32, i32, %struct.TYPE_33__, %struct.TYPE_31__, %struct.TYPE_36__, %struct.TYPE_35__ }
%struct.TYPE_39__ = type { i32, i32, i64, i32, %struct.TYPE_32__, i32, i32, i32, i32*, i32, i32*, i32*, %struct.TYPE_38__* }
%struct.TYPE_32__ = type { %struct.TYPE_37__ }
%struct.TYPE_37__ = type { i64, i64, i32, i32, i32, i32 }
%struct.TYPE_33__ = type { i32 }
%struct.TYPE_31__ = type { i32* }
%struct.TYPE_36__ = type { i64, i64, i64, %struct.TYPE_34__ }
%struct.TYPE_34__ = type { i64 }
%struct.TYPE_35__ = type { i32 }
%struct.TYPE_30__ = type { i32, i32* }
%struct.TYPE_40__ = type { i32 }

@PROJECTION_MODE_RECTANGULAR = common dso_local global i64 0, align 8
@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"kernel32.dll\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"EnumResourceLanguagesExW\00", align 1
@VLC_ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"vout-cb-opaque\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"vout-cb-update-output\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"vout-cb-swap\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"vout-cb-make-current\00", align 1
@LocalSwapchainUpdateOutput = common dso_local global i32* null, align 8
@LocalSwapchainSwap = common dso_local global i32* null, align 8
@VLC_SUCCESS = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [33 x i8] c"D3D9 Creation failed! (hr=0x%lX)\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"Textures too large %ux%u max possible: %lx%lx\00", align 1
@.str.8 = private unnamed_addr constant [75 x i8] c"cannot load Direct3D9 Shader Library; HLSL pixel shading will be disabled.\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"directx-hw-yuv\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"Direct3D9 could not be opened\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"direct3d9-hw-blending\00", align 1
@D3DFMT_UNKNOWN = common dso_local global i64 0, align 8
@D3DPBLENDCAPS_SRCALPHA = common dso_local global i32 0, align 4
@D3DPBLENDCAPS_INVSRCALPHA = common dso_local global i32 0, align 4
@D3DPTEXTURECAPS_ALPHA = common dso_local global i32 0, align 4
@D3DTEXOPCAPS_SELECTARG1 = common dso_local global i32 0, align 4
@D3DTEXOPCAPS_MODULATE = common dso_local global i32 0, align 4
@d3d_subpicture_chromas = common dso_local global i32* null, align 8
@DisplayPool = common dso_local global i32 0, align 4
@Prepare = common dso_local global i32 0, align 4
@Display = common dso_local global i32 0, align 4
@Control = common dso_local global i32 0, align 4
@Close = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_38__*, i32*, i32*, i32*)* @Open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Open(%struct.TYPE_38__* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_38__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_39__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_30__*, align 8
  %14 = alloca %struct.TYPE_40__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_38__* %0, %struct.TYPE_38__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %17 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %17, i32 0, i32 9
  %19 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %4
  %23 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %23, i32 0, i32 8
  %25 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @PROJECTION_MODE_RECTANGULAR, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %30, i32* %5, align 4
  br label %406

31:                                               ; preds = %22, %4
  %32 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %32, i32 0, i32 9
  %34 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %46, label %37

37:                                               ; preds = %31
  %38 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %38, i32 0, i32 8
  %40 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %45, i32* %5, align 4
  br label %406

46:                                               ; preds = %37, %31
  %47 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %47, i32 0, i32 9
  %49 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %71, label %52

52:                                               ; preds = %46
  store i32 0, i32* %11, align 4
  %53 = call i32 @TEXT(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %54 = call i32* @GetModuleHandle(i32 %53)
  store i32* %54, i32** %12, align 8
  %55 = load i32*, i32** %12, align 8
  %56 = icmp ne i32* %55, null
  %57 = zext i1 %56 to i32
  %58 = call i64 @likely(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %52
  %61 = load i32*, i32** %12, align 8
  %62 = call i32* @GetProcAddress(i32* %61, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %63 = icmp ne i32* %62, null
  %64 = zext i1 %63 to i32
  store i32 %64, i32* %11, align 4
  br label %65

65:                                               ; preds = %60, %52
  %66 = load i32, i32* %11, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %65
  %69 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %69, i32* %5, align 4
  br label %406

70:                                               ; preds = %65
  br label %71

71:                                               ; preds = %70, %46
  %72 = call %struct.TYPE_39__* @calloc(i32 1, i32 112)
  store %struct.TYPE_39__* %72, %struct.TYPE_39__** %10, align 8
  %73 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %73, i32 0, i32 0
  store %struct.TYPE_39__* %72, %struct.TYPE_39__** %74, align 8
  %75 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %76 = icmp ne %struct.TYPE_39__* %75, null
  br i1 %76, label %79, label %77

77:                                               ; preds = %71
  %78 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %78, i32* %5, align 4
  br label %406

79:                                               ; preds = %71
  %80 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %81 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %81, i32 0, i32 7
  %83 = load i32*, i32** %7, align 8
  %84 = call i32 @CommonInit(%struct.TYPE_38__* %80, i32* %82, i32* %83)
  %85 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %86 = call i8* @var_InheritAddress(%struct.TYPE_38__* %85, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %87 = bitcast i8* %86 to %struct.TYPE_38__*
  %88 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %88, i32 0, i32 12
  store %struct.TYPE_38__* %87, %struct.TYPE_38__** %89, align 8
  %90 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %91 = call i8* @var_InheritAddress(%struct.TYPE_38__* %90, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %92 = bitcast i8* %91 to i32*
  %93 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %93, i32 0, i32 11
  store i32* %92, i32** %94, align 8
  %95 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %96 = call i8* @var_InheritAddress(%struct.TYPE_38__* %95, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %97 = bitcast i8* %96 to i32*
  %98 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %98, i32 0, i32 8
  store i32* %97, i32** %99, align 8
  %100 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %101 = call i8* @var_InheritAddress(%struct.TYPE_38__* %100, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %102 = bitcast i8* %101 to i32*
  %103 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %103, i32 0, i32 10
  store i32* %102, i32** %104, align 8
  %105 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %105, i32 0, i32 8
  %107 = load i32*, i32** %106, align 8
  %108 = icmp eq i32* %107, null
  br i1 %108, label %119, label %109

109:                                              ; preds = %79
  %110 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %110, i32 0, i32 10
  %112 = load i32*, i32** %111, align 8
  %113 = icmp eq i32* %112, null
  br i1 %113, label %119, label %114

114:                                              ; preds = %109
  %115 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %115, i32 0, i32 11
  %117 = load i32*, i32** %116, align 8
  %118 = icmp eq i32* %117, null
  br i1 %118, label %119, label %141

119:                                              ; preds = %114, %109, %79
  %120 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %121 = call i32 @VLC_OBJECT(%struct.TYPE_38__* %120)
  %122 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %122, i32 0, i32 7
  %124 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %124, i32 0, i32 3
  %126 = call i64 @CommonWindowInit(i32 %121, i32* %123, i32* %125, i32 0)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %119
  br label %391

129:                                              ; preds = %119
  %130 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %131 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %131, i32 0, i32 12
  store %struct.TYPE_38__* %130, %struct.TYPE_38__** %132, align 8
  %133 = load i32*, i32** @LocalSwapchainUpdateOutput, align 8
  %134 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %135 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %134, i32 0, i32 11
  store i32* %133, i32** %135, align 8
  %136 = load i32*, i32** @LocalSwapchainSwap, align 8
  %137 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %138 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %137, i32 0, i32 8
  store i32* %136, i32** %138, align 8
  %139 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %140 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %139, i32 0, i32 10
  store i32* null, i32** %140, align 8
  br label %141

141:                                              ; preds = %129, %114
  %142 = load i32*, i32** %9, align 8
  %143 = call %struct.TYPE_30__* @GetD3D9OpaqueContext(i32* %142)
  store %struct.TYPE_30__* %143, %struct.TYPE_30__** %13, align 8
  %144 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %145 = icmp eq %struct.TYPE_30__* %144, null
  br i1 %145, label %146, label %155

146:                                              ; preds = %141
  %147 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %148 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %149 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %148, i32 0, i32 9
  %150 = call i64 @D3D9_Create(%struct.TYPE_38__* %147, i32* %149)
  %151 = load i64, i64* @VLC_SUCCESS, align 8
  %152 = icmp ne i64 %150, %151
  br i1 %152, label %153, label %154

153:                                              ; preds = %146
  br label %391

154:                                              ; preds = %146
  br label %155

155:                                              ; preds = %154, %141
  %156 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %157 = icmp ne %struct.TYPE_30__* %156, null
  br i1 %157, label %158, label %170

158:                                              ; preds = %155
  %159 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %160 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %159, i32 0, i32 1
  %161 = load i32*, i32** %160, align 8
  %162 = icmp ne i32* %161, null
  br i1 %162, label %163, label %170

163:                                              ; preds = %158
  %164 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %165 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %164, i32 0, i32 9
  %166 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %167 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %166, i32 0, i32 1
  %168 = load i32*, i32** %167, align 8
  %169 = call i32 @D3D9_CloneExternal(i32* %165, i32* %168)
  br label %170

170:                                              ; preds = %163, %158, %155
  %171 = load i32*, i32** %9, align 8
  %172 = call %struct.TYPE_40__* @GetD3D9ContextPrivate(i32* %171)
  store %struct.TYPE_40__* %172, %struct.TYPE_40__** %14, align 8
  %173 = load %struct.TYPE_40__*, %struct.TYPE_40__** %14, align 8
  %174 = icmp ne %struct.TYPE_40__* %173, null
  br i1 %174, label %175, label %184

175:                                              ; preds = %170
  %176 = load %struct.TYPE_40__*, %struct.TYPE_40__** %14, align 8
  %177 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %180 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %179, i32 0, i32 9
  %181 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %182 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %181, i32 0, i32 4
  %183 = call i32 @D3D9_CreateDeviceExternal(i32 %178, i32* %180, %struct.TYPE_32__* %182)
  store i32 %183, i32* %15, align 4
  br label %200

184:                                              ; preds = %170
  %185 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %186 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %187 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %186, i32 0, i32 9
  %188 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %189 = icmp ne %struct.TYPE_30__* %188, null
  br i1 %189, label %190, label %194

190:                                              ; preds = %184
  %191 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %192 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  br label %195

194:                                              ; preds = %184
  br label %195

195:                                              ; preds = %194, %190
  %196 = phi i32 [ %193, %190 ], [ -1, %194 ]
  %197 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %198 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %197, i32 0, i32 4
  %199 = call i32 @D3D9_CreateDevice(%struct.TYPE_38__* %185, i32* %187, i32 %196, %struct.TYPE_32__* %198)
  store i32 %199, i32* %15, align 4
  br label %200

200:                                              ; preds = %195, %175
  %201 = load i32, i32* %15, align 4
  %202 = call i64 @FAILED(i32 %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %214

204:                                              ; preds = %200
  %205 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %206 = load i32, i32* %15, align 4
  %207 = call i32 (%struct.TYPE_38__*, i8*, ...) @msg_Err(%struct.TYPE_38__* %205, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %206)
  %208 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %209 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %208, i32 0, i32 9
  %210 = call i32 @D3D9_Destroy(i32* %209)
  %211 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %212 = call i32 @free(%struct.TYPE_39__* %211)
  %213 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %213, i32* %5, align 4
  br label %406

214:                                              ; preds = %200
  %215 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %216 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %215, i32 0, i32 8
  %217 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %216, i32 0, i32 1
  %218 = load i64, i64* %217, align 8
  %219 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %220 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %219, i32 0, i32 4
  %221 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = icmp sgt i64 %218, %223
  br i1 %224, label %236, label %225

225:                                              ; preds = %214
  %226 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %227 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %226, i32 0, i32 8
  %228 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %227, i32 0, i32 2
  %229 = load i64, i64* %228, align 8
  %230 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %231 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %230, i32 0, i32 4
  %232 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %232, i32 0, i32 1
  %234 = load i64, i64* %233, align 8
  %235 = icmp sgt i64 %229, %234
  br i1 %235, label %236, label %257

236:                                              ; preds = %225, %214
  %237 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %238 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %239 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %238, i32 0, i32 8
  %240 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %239, i32 0, i32 1
  %241 = load i64, i64* %240, align 8
  %242 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %243 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %242, i32 0, i32 8
  %244 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %243, i32 0, i32 2
  %245 = load i64, i64* %244, align 8
  %246 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %247 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %246, i32 0, i32 4
  %248 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %248, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %252 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %251, i32 0, i32 4
  %253 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %253, i32 0, i32 1
  %255 = load i64, i64* %254, align 8
  %256 = call i32 (%struct.TYPE_38__*, i8*, ...) @msg_Err(%struct.TYPE_38__* %237, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0), i64 %241, i64 %245, i64 %250, i64 %255)
  br label %391

257:                                              ; preds = %225
  %258 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %259 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %258, i32 0, i32 8
  %260 = load i32*, i32** %259, align 8
  %261 = load i32*, i32** @LocalSwapchainSwap, align 8
  %262 = icmp eq i32* %260, %261
  br i1 %262, label %263, label %271

263:                                              ; preds = %257
  %264 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %265 = call i32 @VLC_OBJECT(%struct.TYPE_38__* %264)
  %266 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %267 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %266, i32 0, i32 7
  %268 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %269 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %268, i32 0, i32 3
  %270 = call i32 @CommonPlacePicture(i32 %265, i32* %267, i32* %269)
  br label %271

271:                                              ; preds = %263, %257
  %272 = call i32 (...) @Direct3D9LoadShaderLibrary()
  %273 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %274 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %273, i32 0, i32 6
  store i32 %272, i32* %274, align 4
  %275 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %276 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %275, i32 0, i32 6
  %277 = load i32, i32* %276, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %282, label %279

279:                                              ; preds = %271
  %280 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %281 = call i32 @msg_Warn(%struct.TYPE_38__* %280, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.8, i64 0, i64 0))
  br label %282

282:                                              ; preds = %279, %271
  %283 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %284 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %283, i32 0, i32 0
  store i32 0, i32* %284, align 8
  %285 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %286 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %285, i32 0, i32 1
  store i32 0, i32* %286, align 4
  %287 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %288 = call i32 @var_CreateGetBool(%struct.TYPE_38__* %287, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  %289 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %290 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %289, i32 0, i32 5
  store i32 %288, i32* %290, align 8
  %291 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %292 = call i64 @Direct3D9Open(%struct.TYPE_38__* %291, i32* %16)
  %293 = icmp ne i64 %292, 0
  br i1 %293, label %294, label %297

294:                                              ; preds = %282
  %295 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %296 = call i32 (%struct.TYPE_38__*, i8*, ...) @msg_Err(%struct.TYPE_38__* %295, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0))
  br label %391

297:                                              ; preds = %282
  %298 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %299 = call i64 @var_InheritBool(%struct.TYPE_38__* %298, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0))
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %301, label %357

301:                                              ; preds = %297
  %302 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %303 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %302, i32 0, i32 2
  %304 = load i64, i64* %303, align 8
  %305 = load i64, i64* @D3DFMT_UNKNOWN, align 8
  %306 = icmp ne i64 %304, %305
  br i1 %306, label %307, label %357

307:                                              ; preds = %301
  %308 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %309 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %308, i32 0, i32 4
  %310 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %309, i32 0, i32 0
  %311 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %310, i32 0, i32 2
  %312 = load i32, i32* %311, align 8
  %313 = load i32, i32* @D3DPBLENDCAPS_SRCALPHA, align 4
  %314 = and i32 %312, %313
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %357

316:                                              ; preds = %307
  %317 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %318 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %317, i32 0, i32 4
  %319 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %318, i32 0, i32 0
  %320 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %319, i32 0, i32 3
  %321 = load i32, i32* %320, align 4
  %322 = load i32, i32* @D3DPBLENDCAPS_INVSRCALPHA, align 4
  %323 = and i32 %321, %322
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %357

325:                                              ; preds = %316
  %326 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %327 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %326, i32 0, i32 4
  %328 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %327, i32 0, i32 0
  %329 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %328, i32 0, i32 4
  %330 = load i32, i32* %329, align 8
  %331 = load i32, i32* @D3DPTEXTURECAPS_ALPHA, align 4
  %332 = and i32 %330, %331
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %357

334:                                              ; preds = %325
  %335 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %336 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %335, i32 0, i32 4
  %337 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %336, i32 0, i32 0
  %338 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %337, i32 0, i32 5
  %339 = load i32, i32* %338, align 4
  %340 = load i32, i32* @D3DTEXOPCAPS_SELECTARG1, align 4
  %341 = and i32 %339, %340
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %343, label %357

343:                                              ; preds = %334
  %344 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %345 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %344, i32 0, i32 4
  %346 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %345, i32 0, i32 0
  %347 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %346, i32 0, i32 5
  %348 = load i32, i32* %347, align 4
  %349 = load i32, i32* @D3DTEXOPCAPS_MODULATE, align 4
  %350 = and i32 %348, %349
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %357

352:                                              ; preds = %343
  %353 = load i32*, i32** @d3d_subpicture_chromas, align 8
  %354 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %355 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %354, i32 0, i32 7
  %356 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %355, i32 0, i32 0
  store i32* %353, i32** %356, align 8
  br label %361

357:                                              ; preds = %343, %334, %325, %316, %307, %301, %297
  %358 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %359 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %358, i32 0, i32 7
  %360 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %359, i32 0, i32 0
  store i32* null, i32** %360, align 8
  br label %361

361:                                              ; preds = %357, %352
  %362 = load i32*, i32** %8, align 8
  %363 = call i32 @video_format_Clean(i32* %362)
  %364 = load i32*, i32** %8, align 8
  %365 = call i32 @video_format_Copy(i32* %364, i32* %16)
  %366 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %367 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %366, i32 0, i32 6
  %368 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %367, i32 0, i32 0
  %369 = load i32, i32* %368, align 4
  %370 = call i64 @is_d3d9_opaque(i32 %369)
  %371 = icmp ne i64 %370, 0
  br i1 %371, label %372, label %376

372:                                              ; preds = %361
  %373 = load i32, i32* @DisplayPool, align 4
  %374 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %375 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %374, i32 0, i32 5
  store i32 %373, i32* %375, align 8
  br label %376

376:                                              ; preds = %372, %361
  %377 = load i32, i32* @Prepare, align 4
  %378 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %379 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %378, i32 0, i32 4
  store i32 %377, i32* %379, align 4
  %380 = load i32, i32* @Display, align 4
  %381 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %382 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %381, i32 0, i32 3
  store i32 %380, i32* %382, align 8
  %383 = load i32, i32* @Control, align 4
  %384 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %385 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %384, i32 0, i32 2
  store i32 %383, i32* %385, align 4
  %386 = load i32, i32* @Close, align 4
  %387 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %388 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %387, i32 0, i32 1
  store i32 %386, i32* %388, align 8
  %389 = load i64, i64* @VLC_SUCCESS, align 8
  %390 = trunc i64 %389 to i32
  store i32 %390, i32* %5, align 4
  br label %406

391:                                              ; preds = %294, %236, %153, %128
  %392 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %393 = call i32 @Direct3D9Close(%struct.TYPE_38__* %392)
  %394 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %395 = call i32 @VLC_OBJECT(%struct.TYPE_38__* %394)
  %396 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %397 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %396, i32 0, i32 3
  %398 = call i32 @CommonWindowClean(i32 %395, i32* %397)
  %399 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %400 = call i32 @Direct3D9Destroy(%struct.TYPE_39__* %399)
  %401 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %402 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %401, i32 0, i32 0
  %403 = load %struct.TYPE_39__*, %struct.TYPE_39__** %402, align 8
  %404 = call i32 @free(%struct.TYPE_39__* %403)
  %405 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %405, i32* %5, align 4
  br label %406

406:                                              ; preds = %391, %376, %204, %77, %68, %44, %29
  %407 = load i32, i32* %5, align 4
  ret i32 %407
}

declare dso_local i32* @GetModuleHandle(i32) #1

declare dso_local i32 @TEXT(i8*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32* @GetProcAddress(i32*, i8*) #1

declare dso_local %struct.TYPE_39__* @calloc(i32, i32) #1

declare dso_local i32 @CommonInit(%struct.TYPE_38__*, i32*, i32*) #1

declare dso_local i8* @var_InheritAddress(%struct.TYPE_38__*, i8*) #1

declare dso_local i64 @CommonWindowInit(i32, i32*, i32*, i32) #1

declare dso_local i32 @VLC_OBJECT(%struct.TYPE_38__*) #1

declare dso_local %struct.TYPE_30__* @GetD3D9OpaqueContext(i32*) #1

declare dso_local i64 @D3D9_Create(%struct.TYPE_38__*, i32*) #1

declare dso_local i32 @D3D9_CloneExternal(i32*, i32*) #1

declare dso_local %struct.TYPE_40__* @GetD3D9ContextPrivate(i32*) #1

declare dso_local i32 @D3D9_CreateDeviceExternal(i32, i32*, %struct.TYPE_32__*) #1

declare dso_local i32 @D3D9_CreateDevice(%struct.TYPE_38__*, i32*, i32, %struct.TYPE_32__*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @msg_Err(%struct.TYPE_38__*, i8*, ...) #1

declare dso_local i32 @D3D9_Destroy(i32*) #1

declare dso_local i32 @free(%struct.TYPE_39__*) #1

declare dso_local i32 @CommonPlacePicture(i32, i32*, i32*) #1

declare dso_local i32 @Direct3D9LoadShaderLibrary(...) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_38__*, i8*) #1

declare dso_local i32 @var_CreateGetBool(%struct.TYPE_38__*, i8*) #1

declare dso_local i64 @Direct3D9Open(%struct.TYPE_38__*, i32*) #1

declare dso_local i64 @var_InheritBool(%struct.TYPE_38__*, i8*) #1

declare dso_local i32 @video_format_Clean(i32*) #1

declare dso_local i32 @video_format_Copy(i32*, i32*) #1

declare dso_local i64 @is_d3d9_opaque(i32) #1

declare dso_local i32 @Direct3D9Close(%struct.TYPE_38__*) #1

declare dso_local i32 @CommonWindowClean(i32, i32*) #1

declare dso_local i32 @Direct3D9Destroy(%struct.TYPE_39__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
