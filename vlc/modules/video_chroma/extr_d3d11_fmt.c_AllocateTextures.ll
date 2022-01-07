; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_chroma/extr_d3d11_fmt.c_AllocateTextures.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_chroma/extr_d3d11_fmt.c_AllocateTextures.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i32 }
%struct.TYPE_26__ = type { i64, i64* }
%struct.TYPE_24__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_25__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_18__ = type { i32, i32, i64, i32, i32, i64, i32, i32, i64, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_23__ = type { i32, i32, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { %struct.TYPE_21__, %struct.TYPE_20__ }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32, i32 }

@PICTURE_PLANE_MAX = common dso_local global i32 0, align 4
@D3D11_BIND_SHADER_RESOURCE = common dso_local global i32 0, align 4
@D3D11_BIND_DECODER = common dso_local global i32 0, align 4
@D3D11_USAGE_DEFAULT = common dso_local global i32 0, align 4
@D3D11_USAGE_DYNAMIC = common dso_local global i32 0, align 4
@D3D11_CPU_ACCESS_WRITE = common dso_local global i64 0, align 8
@VLC_EGENERIC = common dso_local global i32 0, align 4
@DXGI_FORMAT_UNKNOWN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"failed to get the pixel format planes for %4.4s\00", align 1
@D3D11_MAX_SHADER_VIEW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"CreateTexture2D failed for the %d pool. (hr=0x%lX)\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AllocateTextures(i32* %0, %struct.TYPE_27__* %1, %struct.TYPE_26__* %2, %struct.TYPE_24__* %3, i32 %4, i32** %5, %struct.TYPE_25__* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_27__*, align 8
  %11 = alloca %struct.TYPE_26__*, align 8
  %12 = alloca %struct.TYPE_24__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32**, align 8
  %15 = alloca %struct.TYPE_25__*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca %struct.TYPE_18__, align 8
  %23 = alloca %struct.TYPE_23__*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.TYPE_25__*, align 8
  %27 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store %struct.TYPE_27__* %1, %struct.TYPE_27__** %10, align 8
  store %struct.TYPE_26__* %2, %struct.TYPE_26__** %11, align 8
  store %struct.TYPE_24__* %3, %struct.TYPE_24__** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32** %5, i32*** %14, align 8
  store %struct.TYPE_25__* %6, %struct.TYPE_25__** %15, align 8
  %28 = load i32, i32* @PICTURE_PLANE_MAX, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %16, align 8
  %31 = alloca %struct.TYPE_25__, i64 %29, align 16
  store i64 %29, i64* %17, align 8
  store i32* null, i32** %21, align 8
  %32 = call i32 @ZeroMemory(%struct.TYPE_18__* %22, i32 56)
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 0
  store i32 1, i32* %33, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 9
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 8
  store i64 0, i64* %36, align 8
  %37 = load i32, i32* @D3D11_BIND_SHADER_RESOURCE, align 4
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 7
  store i32 %37, i32* %38, align 4
  %39 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @is_d3d11_opaque(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %7
  %45 = load i32, i32* @D3D11_BIND_DECODER, align 4
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 7
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %45
  store i32 %48, i32* %46, align 4
  %49 = load i32, i32* @D3D11_USAGE_DEFAULT, align 4
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 6
  store i32 %49, i32* %50, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 5
  store i64 0, i64* %51, align 8
  br label %57

52:                                               ; preds = %7
  %53 = load i32, i32* @D3D11_USAGE_DYNAMIC, align 4
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 6
  store i32 %53, i32* %54, align 8
  %55 = load i64, i64* @D3D11_CPU_ACCESS_WRITE, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 5
  store i64 %55, i64* %56, align 8
  br label %57

57:                                               ; preds = %52, %44
  %58 = load i32, i32* %13, align 4
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 1
  store i32 %58, i32* %59, align 4
  %60 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = call %struct.TYPE_23__* @vlc_fourcc_GetChromaDescription(i32 %62)
  store %struct.TYPE_23__* %63, %struct.TYPE_23__** %23, align 8
  %64 = load %struct.TYPE_23__*, %struct.TYPE_23__** %23, align 8
  %65 = icmp ne %struct.TYPE_23__* %64, null
  br i1 %65, label %68, label %66

66:                                               ; preds = %57
  %67 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %67, i32* %8, align 4
  store i32 1, i32* %24, align 4
  br label %446

68:                                               ; preds = %57
  %69 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @DXGI_FORMAT_UNKNOWN, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %129

74:                                               ; preds = %68
  %75 = load %struct.TYPE_23__*, %struct.TYPE_23__** %23, align 8
  %76 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %74
  %80 = load i32*, i32** %9, align 8
  %81 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %81, i32 0, i32 4
  %83 = bitcast i32* %82 to i8*
  %84 = call i32 @msg_Dbg(i32* %80, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8* %83)
  %85 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %85, i32* %8, align 4
  store i32 1, i32* %24, align 4
  br label %446

86:                                               ; preds = %74
  %87 = load %struct.TYPE_23__*, %struct.TYPE_23__** %23, align 8
  %88 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @D3D11_MAX_SHADER_VIEW, align 4
  %91 = icmp ule i32 %89, %90
  %92 = zext i1 %91 to i32
  %93 = call i32 @assert(i32 %92)
  %94 = load %struct.TYPE_23__*, %struct.TYPE_23__** %23, align 8
  %95 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  store i32 %96, i32* %19, align 4
  %97 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %97, i32 0, i32 1
  %99 = load i64*, i64** %98, align 8
  %100 = getelementptr inbounds i64, i64* %99, i64 0
  %101 = load i64, i64* %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 2
  store i64 %101, i64* %102, align 8
  %103 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %104 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %103, i32 0, i32 1
  %105 = load i64*, i64** %104, align 8
  %106 = getelementptr inbounds i64, i64* %105, i64 1
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %109 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %108, i32 0, i32 1
  %110 = load i64*, i64** %109, align 8
  %111 = getelementptr inbounds i64, i64* %110, i64 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp eq i64 %107, %112
  %114 = zext i1 %113 to i32
  %115 = call i32 @assert(i32 %114)
  %116 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %116, i32 0, i32 1
  %118 = load i64*, i64** %117, align 8
  %119 = getelementptr inbounds i64, i64* %118, i64 2
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %122 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %121, i32 0, i32 1
  %123 = load i64*, i64** %122, align 8
  %124 = getelementptr inbounds i64, i64* %123, i64 0
  %125 = load i64, i64* %124, align 8
  %126 = icmp eq i64 %120, %125
  %127 = zext i1 %126 to i32
  %128 = call i32 @assert(i32 %127)
  br label %159

129:                                              ; preds = %68
  %130 = load %struct.TYPE_23__*, %struct.TYPE_23__** %23, align 8
  %131 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @__MAX(i32 1, i32 %132)
  store i32 %133, i32* %19, align 4
  %134 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %135 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 2
  store i64 %136, i64* %137, align 8
  %138 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %139 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 3
  store i32 %140, i32* %141, align 8
  %142 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %143 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 4
  store i32 %144, i32* %145, align 4
  %146 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %147 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @ID3D11Device_CreateTexture2D(i32 %148, %struct.TYPE_18__* %22, i32* null, i32** %21)
  store i32 %149, i32* %20, align 4
  %150 = load i32, i32* %20, align 4
  %151 = call i64 @FAILED(i32 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %158

153:                                              ; preds = %129
  %154 = load i32*, i32** %9, align 8
  %155 = load i32, i32* %13, align 4
  %156 = load i32, i32* %20, align 4
  %157 = call i32 @msg_Err(i32* %154, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %155, i32 %156)
  br label %438

158:                                              ; preds = %129
  br label %159

159:                                              ; preds = %158, %86
  store i32 0, i32* %25, align 4
  br label %160

160:                                              ; preds = %283, %159
  %161 = load i32, i32* %25, align 4
  %162 = load %struct.TYPE_23__*, %struct.TYPE_23__** %23, align 8
  %163 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = icmp ult i32 %161, %164
  br i1 %165, label %166, label %286

166:                                              ; preds = %160
  %167 = load i32, i32* %25, align 4
  %168 = zext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %31, i64 %168
  store %struct.TYPE_25__* %169, %struct.TYPE_25__** %26, align 8
  %170 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %171 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.TYPE_23__*, %struct.TYPE_23__** %23, align 8
  %174 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %173, i32 0, i32 2
  %175 = load %struct.TYPE_22__*, %struct.TYPE_22__** %174, align 8
  %176 = load i32, i32* %25, align 4
  %177 = zext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %175, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = mul nsw i32 %172, %181
  %183 = load %struct.TYPE_23__*, %struct.TYPE_23__** %23, align 8
  %184 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %183, i32 0, i32 2
  %185 = load %struct.TYPE_22__*, %struct.TYPE_22__** %184, align 8
  %186 = load i32, i32* %25, align 4
  %187 = zext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %185, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = sdiv i32 %182, %191
  %193 = load %struct.TYPE_25__*, %struct.TYPE_25__** %26, align 8
  %194 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %193, i32 0, i32 0
  store i32 %192, i32* %194, align 4
  %195 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %196 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.TYPE_23__*, %struct.TYPE_23__** %23, align 8
  %199 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %198, i32 0, i32 2
  %200 = load %struct.TYPE_22__*, %struct.TYPE_22__** %199, align 8
  %201 = load i32, i32* %25, align 4
  %202 = zext i32 %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %200, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = mul nsw i32 %197, %206
  %208 = load %struct.TYPE_23__*, %struct.TYPE_23__** %23, align 8
  %209 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %208, i32 0, i32 2
  %210 = load %struct.TYPE_22__*, %struct.TYPE_22__** %209, align 8
  %211 = load i32, i32* %25, align 4
  %212 = zext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %210, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = sdiv i32 %207, %216
  %218 = load %struct.TYPE_25__*, %struct.TYPE_25__** %26, align 8
  %219 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %218, i32 0, i32 1
  store i32 %217, i32* %219, align 4
  %220 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %221 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.TYPE_23__*, %struct.TYPE_23__** %23, align 8
  %224 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %223, i32 0, i32 2
  %225 = load %struct.TYPE_22__*, %struct.TYPE_22__** %224, align 8
  %226 = load i32, i32* %25, align 4
  %227 = zext i32 %226 to i64
  %228 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %225, i64 %227
  %229 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = mul nsw i32 %222, %231
  %233 = load %struct.TYPE_23__*, %struct.TYPE_23__** %23, align 8
  %234 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %233, i32 0, i32 2
  %235 = load %struct.TYPE_22__*, %struct.TYPE_22__** %234, align 8
  %236 = load i32, i32* %25, align 4
  %237 = zext i32 %236 to i64
  %238 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %235, i64 %237
  %239 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = sdiv i32 %232, %241
  %243 = load %struct.TYPE_23__*, %struct.TYPE_23__** %23, align 8
  %244 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = mul nsw i32 %242, %245
  %247 = load %struct.TYPE_25__*, %struct.TYPE_25__** %26, align 8
  %248 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %247, i32 0, i32 2
  store i32 %246, i32* %248, align 4
  %249 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %250 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %249, i32 0, i32 3
  %251 = load i32, i32* %250, align 4
  %252 = load %struct.TYPE_23__*, %struct.TYPE_23__** %23, align 8
  %253 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %252, i32 0, i32 2
  %254 = load %struct.TYPE_22__*, %struct.TYPE_22__** %253, align 8
  %255 = load i32, i32* %25, align 4
  %256 = zext i32 %255 to i64
  %257 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %254, i64 %256
  %258 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = mul nsw i32 %251, %260
  %262 = load %struct.TYPE_23__*, %struct.TYPE_23__** %23, align 8
  %263 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %262, i32 0, i32 2
  %264 = load %struct.TYPE_22__*, %struct.TYPE_22__** %263, align 8
  %265 = load i32, i32* %25, align 4
  %266 = zext i32 %265 to i64
  %267 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %264, i64 %266
  %268 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 4
  %271 = sdiv i32 %261, %270
  %272 = load %struct.TYPE_23__*, %struct.TYPE_23__** %23, align 8
  %273 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 4
  %275 = mul nsw i32 %271, %274
  %276 = load %struct.TYPE_25__*, %struct.TYPE_25__** %26, align 8
  %277 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %276, i32 0, i32 3
  store i32 %275, i32* %277, align 4
  %278 = load %struct.TYPE_23__*, %struct.TYPE_23__** %23, align 8
  %279 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 4
  %281 = load %struct.TYPE_25__*, %struct.TYPE_25__** %26, align 8
  %282 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %281, i32 0, i32 4
  store i32 %280, i32* %282, align 4
  br label %283

283:                                              ; preds = %166
  %284 = load i32, i32* %25, align 4
  %285 = add i32 %284, 1
  store i32 %285, i32* %25, align 4
  br label %160

286:                                              ; preds = %160
  store i32 0, i32* %27, align 4
  br label %287

287:                                              ; preds = %427, %286
  %288 = load i32, i32* %27, align 4
  %289 = load i32, i32* %13, align 4
  %290 = icmp ult i32 %288, %289
  br i1 %290, label %291, label %430

291:                                              ; preds = %287
  store i32 0, i32* %18, align 4
  br label %292

292:                                              ; preds = %346, %291
  %293 = load i32, i32* %18, align 4
  %294 = load i32, i32* %19, align 4
  %295 = icmp ult i32 %293, %294
  br i1 %295, label %296, label %349

296:                                              ; preds = %292
  %297 = load i32*, i32** %21, align 8
  %298 = icmp ne i32* %297, null
  br i1 %298, label %299, label %311

299:                                              ; preds = %296
  %300 = load i32*, i32** %21, align 8
  %301 = load i32**, i32*** %14, align 8
  %302 = load i32, i32* %27, align 4
  %303 = load i32, i32* @D3D11_MAX_SHADER_VIEW, align 4
  %304 = mul i32 %302, %303
  %305 = load i32, i32* %18, align 4
  %306 = add i32 %304, %305
  %307 = zext i32 %306 to i64
  %308 = getelementptr inbounds i32*, i32** %301, i64 %307
  store i32* %300, i32** %308, align 8
  %309 = load i32*, i32** %21, align 8
  %310 = call i32 @ID3D11Texture2D_AddRef(i32* %309)
  br label %345

311:                                              ; preds = %296
  %312 = load i32, i32* %18, align 4
  %313 = zext i32 %312 to i64
  %314 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %31, i64 %313
  %315 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 4
  %317 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 3
  store i32 %316, i32* %317, align 8
  %318 = load i32, i32* %18, align 4
  %319 = zext i32 %318 to i64
  %320 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %31, i64 %319
  %321 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %320, i32 0, i32 2
  %322 = load i32, i32* %321, align 4
  %323 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 4
  store i32 %322, i32* %323, align 4
  %324 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %325 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 4
  %327 = load i32**, i32*** %14, align 8
  %328 = load i32, i32* %27, align 4
  %329 = load i32, i32* @D3D11_MAX_SHADER_VIEW, align 4
  %330 = mul i32 %328, %329
  %331 = load i32, i32* %18, align 4
  %332 = add i32 %330, %331
  %333 = zext i32 %332 to i64
  %334 = getelementptr inbounds i32*, i32** %327, i64 %333
  %335 = call i32 @ID3D11Device_CreateTexture2D(i32 %326, %struct.TYPE_18__* %22, i32* null, i32** %334)
  store i32 %335, i32* %20, align 4
  %336 = load i32, i32* %20, align 4
  %337 = call i64 @FAILED(i32 %336)
  %338 = icmp ne i64 %337, 0
  br i1 %338, label %339, label %344

339:                                              ; preds = %311
  %340 = load i32*, i32** %9, align 8
  %341 = load i32, i32* %13, align 4
  %342 = load i32, i32* %20, align 4
  %343 = call i32 @msg_Err(i32* %340, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %341, i32 %342)
  br label %438

344:                                              ; preds = %311
  br label %345

345:                                              ; preds = %344, %299
  br label %346

346:                                              ; preds = %345
  %347 = load i32, i32* %18, align 4
  %348 = add i32 %347, 1
  store i32 %348, i32* %18, align 4
  br label %292

349:                                              ; preds = %292
  %350 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %351 = icmp ne %struct.TYPE_25__* %350, null
  br i1 %351, label %352, label %373

352:                                              ; preds = %349
  store i32 0, i32* %18, align 4
  br label %353

353:                                              ; preds = %369, %352
  %354 = load i32, i32* %18, align 4
  %355 = load %struct.TYPE_23__*, %struct.TYPE_23__** %23, align 8
  %356 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %355, i32 0, i32 0
  %357 = load i32, i32* %356, align 8
  %358 = icmp ult i32 %354, %357
  br i1 %358, label %359, label %372

359:                                              ; preds = %353
  %360 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %361 = load i32, i32* %18, align 4
  %362 = zext i32 %361 to i64
  %363 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %360, i64 %362
  %364 = load i32, i32* %18, align 4
  %365 = zext i32 %364 to i64
  %366 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %31, i64 %365
  %367 = bitcast %struct.TYPE_25__* %363 to i8*
  %368 = bitcast %struct.TYPE_25__* %366 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %367, i8* align 4 %368, i64 20, i1 false)
  br label %369

369:                                              ; preds = %359
  %370 = load i32, i32* %18, align 4
  %371 = add i32 %370, 1
  store i32 %371, i32* %18, align 4
  br label %353

372:                                              ; preds = %353
  br label %373

373:                                              ; preds = %372, %349
  br label %374

374:                                              ; preds = %423, %373
  %375 = load i32, i32* %18, align 4
  %376 = load i32, i32* @D3D11_MAX_SHADER_VIEW, align 4
  %377 = icmp ult i32 %375, %376
  br i1 %377, label %378, label %426

378:                                              ; preds = %374
  %379 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %380 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %379, i32 0, i32 1
  %381 = load i64*, i64** %380, align 8
  %382 = load i32, i32* %18, align 4
  %383 = zext i32 %382 to i64
  %384 = getelementptr inbounds i64, i64* %381, i64 %383
  %385 = load i64, i64* %384, align 8
  %386 = icmp ne i64 %385, 0
  br i1 %386, label %396, label %387

387:                                              ; preds = %378
  %388 = load i32**, i32*** %14, align 8
  %389 = load i32, i32* %27, align 4
  %390 = load i32, i32* @D3D11_MAX_SHADER_VIEW, align 4
  %391 = mul i32 %389, %390
  %392 = load i32, i32* %18, align 4
  %393 = add i32 %391, %392
  %394 = zext i32 %393 to i64
  %395 = getelementptr inbounds i32*, i32** %388, i64 %394
  store i32* null, i32** %395, align 8
  br label %422

396:                                              ; preds = %378
  %397 = load i32**, i32*** %14, align 8
  %398 = load i32, i32* %27, align 4
  %399 = load i32, i32* @D3D11_MAX_SHADER_VIEW, align 4
  %400 = mul i32 %398, %399
  %401 = zext i32 %400 to i64
  %402 = getelementptr inbounds i32*, i32** %397, i64 %401
  %403 = load i32*, i32** %402, align 8
  %404 = load i32**, i32*** %14, align 8
  %405 = load i32, i32* %27, align 4
  %406 = load i32, i32* @D3D11_MAX_SHADER_VIEW, align 4
  %407 = mul i32 %405, %406
  %408 = load i32, i32* %18, align 4
  %409 = add i32 %407, %408
  %410 = zext i32 %409 to i64
  %411 = getelementptr inbounds i32*, i32** %404, i64 %410
  store i32* %403, i32** %411, align 8
  %412 = load i32**, i32*** %14, align 8
  %413 = load i32, i32* %27, align 4
  %414 = load i32, i32* @D3D11_MAX_SHADER_VIEW, align 4
  %415 = mul i32 %413, %414
  %416 = load i32, i32* %18, align 4
  %417 = add i32 %415, %416
  %418 = zext i32 %417 to i64
  %419 = getelementptr inbounds i32*, i32** %412, i64 %418
  %420 = load i32*, i32** %419, align 8
  %421 = call i32 @ID3D11Texture2D_AddRef(i32* %420)
  br label %422

422:                                              ; preds = %396, %387
  br label %423

423:                                              ; preds = %422
  %424 = load i32, i32* %18, align 4
  %425 = add i32 %424, 1
  store i32 %425, i32* %18, align 4
  br label %374

426:                                              ; preds = %374
  br label %427

427:                                              ; preds = %426
  %428 = load i32, i32* %27, align 4
  %429 = add i32 %428, 1
  store i32 %429, i32* %27, align 4
  br label %287

430:                                              ; preds = %287
  %431 = load i32*, i32** %21, align 8
  %432 = icmp ne i32* %431, null
  br i1 %432, label %433, label %436

433:                                              ; preds = %430
  %434 = load i32*, i32** %21, align 8
  %435 = call i32 @ID3D11Texture2D_Release(i32* %434)
  br label %436

436:                                              ; preds = %433, %430
  %437 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %437, i32* %8, align 4
  store i32 1, i32* %24, align 4
  br label %446

438:                                              ; preds = %339, %153
  %439 = load i32*, i32** %21, align 8
  %440 = icmp ne i32* %439, null
  br i1 %440, label %441, label %444

441:                                              ; preds = %438
  %442 = load i32*, i32** %21, align 8
  %443 = call i32 @ID3D11Texture2D_Release(i32* %442)
  br label %444

444:                                              ; preds = %441, %438
  %445 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %445, i32* %8, align 4
  store i32 1, i32* %24, align 4
  br label %446

446:                                              ; preds = %444, %436, %79, %66
  %447 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %447)
  %448 = load i32, i32* %8, align 4
  ret i32 %448
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ZeroMemory(%struct.TYPE_18__*, i32) #2

declare dso_local i64 @is_d3d11_opaque(i32) #2

declare dso_local %struct.TYPE_23__* @vlc_fourcc_GetChromaDescription(i32) #2

declare dso_local i32 @msg_Dbg(i32*, i8*, i8*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @__MAX(i32, i32) #2

declare dso_local i32 @ID3D11Device_CreateTexture2D(i32, %struct.TYPE_18__*, i32*, i32**) #2

declare dso_local i64 @FAILED(i32) #2

declare dso_local i32 @msg_Err(i32*, i8*, i32, i32) #2

declare dso_local i32 @ID3D11Texture2D_AddRef(i32*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @ID3D11Texture2D_Release(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
