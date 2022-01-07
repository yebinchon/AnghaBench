; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/avcodec/extr_dxva2.c_DxCreateVideoDecoder.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/avcodec/extr_dxva2.c_DxCreateVideoDecoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32**, %struct.TYPE_22__, %struct.TYPE_28__, %struct.TYPE_21__*, i32, i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_28__ = type { i32, i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_25__ = type { i64, i64, i32, i32 }
%struct.TYPE_26__ = type { %struct.TYPE_27__, i64, i32, %struct.TYPE_20__, %struct.TYPE_20__, i32, i32, i32 }
%struct.TYPE_27__ = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_20__ = type { i64, i64 }

@D3DPOOL_DEFAULT = common dso_local global i32 0, align 4
@DXVA2_VideoDecoderRenderTarget = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"IDirectXVideoAccelerationService_CreateSurface %zu failed (hr=0x%lX)\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [81 x i8] c"IDirectXVideoAccelerationService_CreateSurface succeed with %zu surfaces (%dx%d)\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"extra buffer impossible, avoid a crash (hr=0x%lX)\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [72 x i8] c"IDirectXVideoDecoderService_GetDecoderConfigurations failed. (hr=0x%lX)\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"we got %d decoder configurations\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"configuration[%d] ConfigBitstreamRaw %d\00", align 1
@AV_CODEC_ID_H264 = common dso_local global i32 0, align 4
@DXVA2_NoEncrypt = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [49 x i8] c"Failed to find a supported decoder configuration\00", align 1
@.str.7 = private unnamed_addr constant [54 x i8] c"IDirectXVideoDecoderService_CreateVideoDecoder failed\00", align 1
@.str.8 = private unnamed_addr constant [55 x i8] c"IDirectXVideoDecoderService_CreateVideoDecoder succeed\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_23__*, i32, %struct.TYPE_25__*, i64)* @DxCreateVideoDecoder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DxCreateVideoDecoder(%struct.TYPE_23__* %0, i32 %1, %struct.TYPE_25__* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_25__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_24__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_26__, align 8
  %14 = alloca %struct.TYPE_27__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_28__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_28__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_25__* %2, %struct.TYPE_25__** %8, align 8
  store i64 %3, i64* %9, align 8
  %22 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  store %struct.TYPE_24__* %24, %struct.TYPE_24__** %10, align 8
  %25 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load i64, i64* %9, align 8
  %35 = sub i64 %34, 1
  %36 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @D3DPOOL_DEFAULT, align 4
  %40 = load i32, i32* @DXVA2_VideoDecoderRenderTarget, align 4
  %41 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %41, i32 0, i32 0
  %43 = load i32**, i32*** %42, align 8
  %44 = call i32 @IDirectXVideoDecoderService_CreateSurface(i32 %27, i32 %30, i32 %33, i64 %35, i32 %38, i32 %39, i32 0, i32 %40, i32** %43, i32* null)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = call i64 @FAILED(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %4
  %49 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %50 = load i64, i64* %9, align 8
  %51 = sub i64 %50, 1
  %52 = load i32, i32* %11, align 4
  %53 = call i32 (%struct.TYPE_23__*, i8*, ...) @msg_Err(%struct.TYPE_23__* %49, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i64 %51, i32 %52)
  %54 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %54, i32* %5, align 4
  br label %280

55:                                               ; preds = %4
  %56 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %57 = load i64, i64* %9, align 8
  %58 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = call i32 (%struct.TYPE_23__*, i8*, ...) @msg_Dbg(%struct.TYPE_23__* %56, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.1, i64 0, i64 0), i64 %57, i32 %60, i32 %63)
  %65 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @D3DPOOL_DEFAULT, align 4
  %78 = load i32, i32* @DXVA2_VideoDecoderRenderTarget, align 4
  %79 = call i32 @IDirectXVideoDecoderService_CreateSurface(i32 %67, i32 %70, i32 %73, i64 0, i32 %76, i32 %77, i32 0, i32 %78, i32** %12, i32* null)
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %11, align 4
  %81 = call i64 @FAILED(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %55
  %84 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %85 = load i32, i32* %11, align 4
  %86 = call i32 (%struct.TYPE_23__*, i8*, ...) @msg_Err(%struct.TYPE_23__* %84, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %85)
  br label %262

87:                                               ; preds = %55
  %88 = load i32*, i32** %12, align 8
  %89 = call i32 @IDirect3DSurface9_Release(i32* %88)
  %90 = call i32 @ZeroMemory(%struct.TYPE_26__* %13, i32 120)
  %91 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 7
  store i32 %93, i32* %94, align 8
  %95 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 6
  store i32 %97, i32* %98, align 4
  %99 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %99, i32 0, i32 5
  %101 = load i32, i32* %100, align 4
  %102 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 5
  store i32 %101, i32* %102, align 8
  %103 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp sgt i64 %105, 0
  br i1 %106, label %107, label %123

107:                                              ; preds = %87
  %108 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = icmp sgt i64 %110, 0
  br i1 %111, label %112, label %123

112:                                              ; preds = %107
  %113 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %116, i32 0, i32 0
  store i64 %115, i64* %117, align 8
  %118 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %121, i32 0, i32 1
  store i64 %120, i64* %122, align 8
  br label %128

123:                                              ; preds = %107, %87
  %124 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 3
  %125 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %124, i32 0, i32 0
  store i64 0, i64* %125, align 8
  %126 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 3
  %127 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %126, i32 0, i32 1
  store i64 0, i64* %127, align 8
  br label %128

128:                                              ; preds = %123, %112
  %129 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 4
  %130 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 3
  %131 = bitcast %struct.TYPE_20__* %129 to i8*
  %132 = bitcast %struct.TYPE_20__* %130 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %131, i8* align 8 %132, i64 16, i1 false)
  %133 = load i32, i32* @FALSE, align 4
  %134 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 2
  store i32 %133, i32* %134, align 8
  %135 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 1
  store i64 0, i64* %135, align 8
  %136 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 0
  store %struct.TYPE_27__* %136, %struct.TYPE_27__** %14, align 8
  %137 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %138 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %137, i32 0, i32 6
  store i64 0, i64* %138, align 8
  %139 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %140 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %139, i32 0, i32 5
  store i64 0, i64* %140, align 8
  %141 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %142 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %141, i32 0, i32 4
  store i64 0, i64* %142, align 8
  %143 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %144 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %143, i32 0, i32 3
  store i64 0, i64* %144, align 8
  %145 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %146 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %145, i32 0, i32 2
  store i64 0, i64* %146, align 8
  %147 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %148 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %147, i32 0, i32 1
  store i64 0, i64* %148, align 8
  %149 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %150 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %149, i32 0, i32 0
  store i64 0, i64* %150, align 8
  store i32 0, i32* %15, align 4
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %16, align 8
  %151 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %152 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %155 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %154, i32 0, i32 3
  %156 = load %struct.TYPE_21__*, %struct.TYPE_21__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @IDirectXVideoDecoderService_GetDecoderConfigurations(i32 %153, i32 %158, %struct.TYPE_26__* %13, i32* null, i32* %15, %struct.TYPE_28__** %16)
  store i32 %159, i32* %11, align 4
  %160 = load i32, i32* %11, align 4
  %161 = call i64 @FAILED(i32 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %128
  %164 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %165 = load i32, i32* %11, align 4
  %166 = call i32 (%struct.TYPE_23__*, i8*, ...) @msg_Err(%struct.TYPE_23__* %164, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.3, i64 0, i64 0), i32 %165)
  br label %262

167:                                              ; preds = %128
  %168 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %169 = load i32, i32* %15, align 4
  %170 = call i32 (%struct.TYPE_23__*, i8*, ...) @msg_Dbg(%struct.TYPE_23__* %168, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %169)
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %171

171:                                              ; preds = %223, %167
  %172 = load i32, i32* %18, align 4
  %173 = load i32, i32* %15, align 4
  %174 = icmp ult i32 %172, %173
  br i1 %174, label %175, label %226

175:                                              ; preds = %171
  %176 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %177 = load i32, i32* %18, align 4
  %178 = zext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %176, i64 %178
  store %struct.TYPE_28__* %179, %struct.TYPE_28__** %19, align 8
  %180 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %181 = load i32, i32* %18, align 4
  %182 = load %struct.TYPE_28__*, %struct.TYPE_28__** %19, align 8
  %183 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = call i32 (%struct.TYPE_23__*, i8*, ...) @msg_Dbg(%struct.TYPE_23__* %180, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %181, i32 %184)
  %186 = load %struct.TYPE_28__*, %struct.TYPE_28__** %19, align 8
  %187 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = icmp eq i32 %188, 1
  br i1 %189, label %190, label %191

190:                                              ; preds = %175
  store i32 1, i32* %20, align 4
  br label %203

191:                                              ; preds = %175
  %192 = load i32, i32* %7, align 4
  %193 = load i32, i32* @AV_CODEC_ID_H264, align 4
  %194 = icmp eq i32 %192, %193
  br i1 %194, label %195, label %201

195:                                              ; preds = %191
  %196 = load %struct.TYPE_28__*, %struct.TYPE_28__** %19, align 8
  %197 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = icmp eq i32 %198, 2
  br i1 %199, label %200, label %201

200:                                              ; preds = %195
  store i32 2, i32* %20, align 4
  br label %202

201:                                              ; preds = %195, %191
  br label %223

202:                                              ; preds = %200
  br label %203

203:                                              ; preds = %202, %190
  %204 = load %struct.TYPE_28__*, %struct.TYPE_28__** %19, align 8
  %205 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %204, i32 0, i32 1
  %206 = call i64 @IsEqualGUID(i32* %205, i32* @DXVA2_NoEncrypt)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %211

208:                                              ; preds = %203
  %209 = load i32, i32* %20, align 4
  %210 = add nsw i32 %209, 16
  store i32 %210, i32* %20, align 4
  br label %211

211:                                              ; preds = %208, %203
  %212 = load i32, i32* %17, align 4
  %213 = load i32, i32* %20, align 4
  %214 = icmp slt i32 %212, %213
  br i1 %214, label %215, label %222

215:                                              ; preds = %211
  %216 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %217 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %216, i32 0, i32 2
  %218 = load %struct.TYPE_28__*, %struct.TYPE_28__** %19, align 8
  %219 = bitcast %struct.TYPE_28__* %217 to i8*
  %220 = bitcast %struct.TYPE_28__* %218 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %219, i8* align 4 %220, i64 8, i1 false)
  %221 = load i32, i32* %20, align 4
  store i32 %221, i32* %17, align 4
  br label %222

222:                                              ; preds = %215, %211
  br label %223

223:                                              ; preds = %222, %201
  %224 = load i32, i32* %18, align 4
  %225 = add i32 %224, 1
  store i32 %225, i32* %18, align 4
  br label %171

226:                                              ; preds = %171
  %227 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %228 = call i32 @CoTaskMemFree(%struct.TYPE_28__* %227)
  %229 = load i32, i32* %17, align 4
  %230 = icmp sle i32 %229, 0
  br i1 %230, label %231, label %234

231:                                              ; preds = %226
  %232 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %233 = call i32 (%struct.TYPE_23__*, i8*, ...) @msg_Err(%struct.TYPE_23__* %232, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0))
  br label %262

234:                                              ; preds = %226
  %235 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %236 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %235, i32 0, i32 4
  %237 = load i32, i32* %236, align 8
  %238 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %239 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %238, i32 0, i32 3
  %240 = load %struct.TYPE_21__*, %struct.TYPE_21__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %244 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %243, i32 0, i32 2
  %245 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %246 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %245, i32 0, i32 0
  %247 = load i32**, i32*** %246, align 8
  %248 = load i64, i64* %9, align 8
  %249 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %250 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %249, i32 0, i32 1
  %251 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %250, i32 0, i32 0
  %252 = call i32 @IDirectXVideoDecoderService_CreateVideoDecoder(i32 %237, i32 %242, %struct.TYPE_26__* %13, %struct.TYPE_28__* %244, i32** %247, i64 %248, i32* %251)
  %253 = call i64 @FAILED(i32 %252)
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %258

255:                                              ; preds = %234
  %256 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %257 = call i32 (%struct.TYPE_23__*, i8*, ...) @msg_Err(%struct.TYPE_23__* %256, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i64 0, i64 0))
  br label %262

258:                                              ; preds = %234
  %259 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %260 = call i32 (%struct.TYPE_23__*, i8*, ...) @msg_Dbg(%struct.TYPE_23__* %259, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.8, i64 0, i64 0))
  %261 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %261, i32* %5, align 4
  br label %280

262:                                              ; preds = %255, %231, %163, %83
  store i64 0, i64* %21, align 8
  br label %263

263:                                              ; preds = %275, %262
  %264 = load i64, i64* %21, align 8
  %265 = load i64, i64* %9, align 8
  %266 = icmp ult i64 %264, %265
  br i1 %266, label %267, label %278

267:                                              ; preds = %263
  %268 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %269 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %268, i32 0, i32 0
  %270 = load i32**, i32*** %269, align 8
  %271 = load i64, i64* %21, align 8
  %272 = getelementptr inbounds i32*, i32** %270, i64 %271
  %273 = load i32*, i32** %272, align 8
  %274 = call i32 @IDirect3DSurface9_Release(i32* %273)
  br label %275

275:                                              ; preds = %267
  %276 = load i64, i64* %21, align 8
  %277 = add i64 %276, 1
  store i64 %277, i64* %21, align 8
  br label %263

278:                                              ; preds = %263
  %279 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %279, i32* %5, align 4
  br label %280

280:                                              ; preds = %278, %258, %48
  %281 = load i32, i32* %5, align 4
  ret i32 %281
}

declare dso_local i32 @IDirectXVideoDecoderService_CreateSurface(i32, i32, i32, i64, i32, i32, i32, i32, i32**, i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @msg_Err(%struct.TYPE_23__*, i8*, ...) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_23__*, i8*, ...) #1

declare dso_local i32 @IDirect3DSurface9_Release(i32*) #1

declare dso_local i32 @ZeroMemory(%struct.TYPE_26__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @IDirectXVideoDecoderService_GetDecoderConfigurations(i32, i32, %struct.TYPE_26__*, i32*, i32*, %struct.TYPE_28__**) #1

declare dso_local i64 @IsEqualGUID(i32*, i32*) #1

declare dso_local i32 @CoTaskMemFree(%struct.TYPE_28__*) #1

declare dso_local i32 @IDirectXVideoDecoderService_CreateVideoDecoder(i32, i32, %struct.TYPE_26__*, %struct.TYPE_28__*, i32**, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
