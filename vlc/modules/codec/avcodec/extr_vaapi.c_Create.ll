; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/avcodec/extr_vaapi.c_Create.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/avcodec/extr_vaapi.c_Create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32*, %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i32*, i32*, %struct.TYPE_25__, i32* }
%struct.TYPE_25__ = type { i64, i64, i32 }
%struct.TYPE_31__ = type { i32, i32 }
%struct.TYPE_30__ = type { %struct.TYPE_29__ }
%struct.TYPE_29__ = type { i64 }
%struct.TYPE_28__ = type { i64, i32 }
%struct.va_pool_cfg = type { %struct.TYPE_27__*, i32, i32, i32, i32 }

@VLC_CODEC_VAAPI_420 = common dso_local global i64 0, align 8
@VLC_CODEC_VAAPI_420_10BPP = common dso_local global i64 0, align 8
@VLC_DECODER_DEVICE_VAAPI = common dso_local global i64 0, align 8
@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_ENOMEM = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@VA_INVALID_ID = common dso_local global i64 0, align 8
@VAAPICreateDevice = common dso_local global i32 0, align 4
@VAAPIDestroyDevice = common dso_local global i32 0, align 4
@VAAPICreateDecoderSurfaces = common dso_local global i32 0, align 4
@VAAPISetupAVCodecContext = common dso_local global i32 0, align 4
@VAEntrypointVLD = common dso_local global i32 0, align 4
@VA_PROGRESSIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"Using %s\00", align 1
@VLC_VIDEO_CONTEXT_VAAPI = common dso_local global i32 0, align 4
@ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_26__*, %struct.TYPE_31__*, i32*, %struct.TYPE_30__*, %struct.TYPE_28__*, %struct.TYPE_29__*, i32**)* @Create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Create(%struct.TYPE_26__* %0, %struct.TYPE_31__* %1, i32* %2, %struct.TYPE_30__* %3, %struct.TYPE_28__* %4, %struct.TYPE_29__* %5, i32** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_26__*, align 8
  %10 = alloca %struct.TYPE_31__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_30__*, align 8
  %13 = alloca %struct.TYPE_28__*, align 8
  %14 = alloca %struct.TYPE_29__*, align 8
  %15 = alloca i32**, align 8
  %16 = alloca %struct.TYPE_27__*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_29__, align 8
  %24 = alloca %struct.va_pool_cfg, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32*, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %9, align 8
  store %struct.TYPE_31__* %1, %struct.TYPE_31__** %10, align 8
  store i32* %2, i32** %11, align 8
  store %struct.TYPE_30__* %3, %struct.TYPE_30__** %12, align 8
  store %struct.TYPE_28__* %4, %struct.TYPE_28__** %13, align 8
  store %struct.TYPE_29__* %5, %struct.TYPE_29__** %14, align 8
  store i32** %6, i32*** %15, align 8
  %27 = load i32*, i32** %11, align 8
  %28 = call i32 @VLC_UNUSED(i32* %27)
  %29 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %30 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @VLC_CODEC_VAAPI_420, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %7
  %35 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %36 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @VLC_CODEC_VAAPI_420_10BPP, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %49, label %40

40:                                               ; preds = %34, %7
  %41 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %42 = icmp eq %struct.TYPE_28__* %41, null
  br i1 %42, label %49, label %43

43:                                               ; preds = %40
  %44 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %45 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @VLC_DECODER_DEVICE_VAAPI, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %43, %40, %34
  %50 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %50, i32* %8, align 4
  br label %226

51:                                               ; preds = %43
  %52 = call %struct.TYPE_27__* @malloc(i32 48)
  store %struct.TYPE_27__* %52, %struct.TYPE_27__** %16, align 8
  %53 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %54 = icmp eq %struct.TYPE_27__* %53, null
  %55 = zext i1 %54 to i32
  %56 = call i64 @unlikely(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %51
  %59 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %59, i32* %8, align 4
  br label %226

60:                                               ; preds = %51
  %61 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %62 = call i32 @memset(%struct.TYPE_27__* %61, i32 0, i32 48)
  %63 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %64 = call i32* @VLC_OBJECT(%struct.TYPE_26__* %63)
  store i32* %64, i32** %17, align 8
  %65 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %65, i32* %18, align 4
  %66 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %67 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  store i32 %68, i32* %19, align 4
  %69 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %70 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %71 = call i32 @GetVaProfile(%struct.TYPE_31__* %69, %struct.TYPE_30__* %70, i32* %20, i32* %22, i32* %21)
  %72 = load i32, i32* @VLC_SUCCESS, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %60
  br label %211

75:                                               ; preds = %60
  %76 = load i32, i32* %19, align 4
  %77 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %78 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %78, i32 0, i32 2
  store i32 %76, i32* %79, align 8
  %80 = load i64, i64* @VA_INVALID_ID, align 8
  %81 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %82 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %82, i32 0, i32 0
  store i64 %80, i64* %83, align 8
  %84 = load i64, i64* @VA_INVALID_ID, align 8
  %85 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %86 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %86, i32 0, i32 1
  store i64 %84, i64* %87, align 8
  %88 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %89 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %89, i32 0, i32 1
  store %struct.TYPE_27__* %88, %struct.TYPE_27__** %90, align 8
  %91 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %92 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %91, i32 0, i32 0
  %93 = bitcast %struct.TYPE_29__* %23 to i8*
  %94 = bitcast %struct.TYPE_29__* %92 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %93, i8* align 8 %94, i64 8, i1 false)
  %95 = load i32, i32* %22, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %23, i32 0, i32 0
  store i64 %96, i64* %97, align 8
  %98 = getelementptr inbounds %struct.va_pool_cfg, %struct.va_pool_cfg* %24, i32 0, i32 0
  %99 = load i32, i32* @VAAPICreateDevice, align 4
  %100 = sext i32 %99 to i64
  %101 = inttoptr i64 %100 to %struct.TYPE_27__*
  store %struct.TYPE_27__* %101, %struct.TYPE_27__** %98, align 8
  %102 = getelementptr inbounds %struct.va_pool_cfg, %struct.va_pool_cfg* %24, i32 0, i32 1
  %103 = load i32, i32* @VAAPIDestroyDevice, align 4
  store i32 %103, i32* %102, align 8
  %104 = getelementptr inbounds %struct.va_pool_cfg, %struct.va_pool_cfg* %24, i32 0, i32 2
  %105 = load i32, i32* @VAAPICreateDecoderSurfaces, align 4
  store i32 %105, i32* %104, align 4
  %106 = getelementptr inbounds %struct.va_pool_cfg, %struct.va_pool_cfg* %24, i32 0, i32 3
  %107 = load i32, i32* @VAAPISetupAVCodecContext, align 4
  store i32 %107, i32* %106, align 8
  %108 = getelementptr inbounds %struct.va_pool_cfg, %struct.va_pool_cfg* %24, i32 0, i32 4
  %109 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %110 = ptrtoint %struct.TYPE_27__* %109 to i32
  store i32 %110, i32* %108, align 4
  %111 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %112 = call i32* @va_pool_Create(%struct.TYPE_26__* %111, %struct.va_pool_cfg* %24)
  %113 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %114 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %113, i32 0, i32 0
  store i32* %112, i32** %114, align 8
  %115 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %116 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = icmp eq i32* %117, null
  br i1 %118, label %119, label %120

119:                                              ; preds = %75
  br label %211

120:                                              ; preds = %75
  %121 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %122 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %123 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %126 = load i32, i32* %21, align 4
  %127 = call i32 @va_pool_SetupDecoder(%struct.TYPE_26__* %121, i32* %124, %struct.TYPE_31__* %125, %struct.TYPE_29__* %23, i32 %126)
  store i32 %127, i32* %25, align 4
  %128 = load i32, i32* %25, align 4
  %129 = load i32, i32* @VLC_SUCCESS, align 4
  %130 = icmp ne i32 %128, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %120
  br label %211

132:                                              ; preds = %120
  %133 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %134 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %133, i32 0, i32 3
  %135 = load i32*, i32** %134, align 8
  store i32* %135, i32** %26, align 8
  %136 = load i32*, i32** %17, align 8
  %137 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %138 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* %20, align 4
  %142 = load i32, i32* @VAEntrypointVLD, align 4
  %143 = load i32, i32* %22, align 4
  %144 = call i64 @vlc_vaapi_CreateConfigChecked(i32* %136, i32 %140, i32 %141, i32 %142, i32 %143)
  %145 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %146 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %146, i32 0, i32 0
  store i64 %144, i64* %147, align 8
  %148 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %149 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @VA_INVALID_ID, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %155

154:                                              ; preds = %132
  br label %211

155:                                              ; preds = %132
  %156 = load i32*, i32** %17, align 8
  %157 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %158 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %157, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %162 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %161, i32 0, i32 2
  %163 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %166 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %169 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @VA_PROGRESSIVE, align 4
  %172 = load i32*, i32** %26, align 8
  %173 = load i32, i32* %21, align 4
  %174 = call i64 @vlc_vaapi_CreateContext(i32* %156, i32 %160, i64 %164, i32 %167, i32 %170, i32 %171, i32* %172, i32 %173)
  %175 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %176 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %175, i32 0, i32 2
  %177 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %176, i32 0, i32 1
  store i64 %174, i64* %177, align 8
  %178 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %179 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %178, i32 0, i32 2
  %180 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @VA_INVALID_ID, align 8
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %184, label %185

184:                                              ; preds = %155
  br label %211

185:                                              ; preds = %155
  %186 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %187 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %188 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %187, i32 0, i32 2
  %189 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = call i32 @vaQueryVendorString(i32 %190)
  %192 = call i32 @msg_Info(%struct.TYPE_26__* %186, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %191)
  %193 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %194 = load i32, i32* @VLC_VIDEO_CONTEXT_VAAPI, align 4
  %195 = call i32* @vlc_video_context_Create(%struct.TYPE_28__* %193, i32 %194, i32 0, i32* null)
  %196 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %197 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %196, i32 0, i32 1
  store i32* %195, i32** %197, align 8
  %198 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %199 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %198, i32 0, i32 1
  %200 = load i32*, i32** %199, align 8
  %201 = icmp eq i32* %200, null
  br i1 %201, label %202, label %203

202:                                              ; preds = %185
  br label %211

203:                                              ; preds = %185
  %204 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %205 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %204, i32 0, i32 0
  store i32* @ops, i32** %205, align 8
  %206 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %207 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %206, i32 0, i32 1
  %208 = load i32*, i32** %207, align 8
  %209 = load i32**, i32*** %15, align 8
  store i32* %208, i32** %209, align 8
  %210 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %210, i32* %8, align 4
  br label %226

211:                                              ; preds = %202, %184, %154, %131, %119, %74
  %212 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %213 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %212, i32 0, i32 0
  %214 = load i32*, i32** %213, align 8
  %215 = icmp ne i32* %214, null
  br i1 %215, label %216, label %221

216:                                              ; preds = %211
  %217 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %218 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %217, i32 0, i32 0
  %219 = load i32*, i32** %218, align 8
  %220 = call i32 @va_pool_Close(i32* %219)
  br label %224

221:                                              ; preds = %211
  %222 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %223 = call i32 @free(%struct.TYPE_27__* %222)
  br label %224

224:                                              ; preds = %221, %216
  %225 = load i32, i32* %18, align 4
  store i32 %225, i32* %8, align 4
  br label %226

226:                                              ; preds = %224, %203, %58, %49
  %227 = load i32, i32* %8, align 4
  ret i32 %227
}

declare dso_local i32 @VLC_UNUSED(i32*) #1

declare dso_local %struct.TYPE_27__* @malloc(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @memset(%struct.TYPE_27__*, i32, i32) #1

declare dso_local i32* @VLC_OBJECT(%struct.TYPE_26__*) #1

declare dso_local i32 @GetVaProfile(%struct.TYPE_31__*, %struct.TYPE_30__*, i32*, i32*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32* @va_pool_Create(%struct.TYPE_26__*, %struct.va_pool_cfg*) #1

declare dso_local i32 @va_pool_SetupDecoder(%struct.TYPE_26__*, i32*, %struct.TYPE_31__*, %struct.TYPE_29__*, i32) #1

declare dso_local i64 @vlc_vaapi_CreateConfigChecked(i32*, i32, i32, i32, i32) #1

declare dso_local i64 @vlc_vaapi_CreateContext(i32*, i32, i64, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @msg_Info(%struct.TYPE_26__*, i8*, i32) #1

declare dso_local i32 @vaQueryVendorString(i32) #1

declare dso_local i32* @vlc_video_context_Create(%struct.TYPE_28__*, i32, i32, i32*) #1

declare dso_local i32 @va_pool_Close(i32*) #1

declare dso_local i32 @free(%struct.TYPE_27__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
