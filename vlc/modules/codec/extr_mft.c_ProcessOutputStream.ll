; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_mft.c_ProcessOutputStream.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_mft.c_ProcessOutputStream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_31__ = type { %struct.TYPE_29__, %struct.TYPE_28__, %struct.TYPE_32__* }
%struct.TYPE_29__ = type { i64 }
%struct.TYPE_28__ = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i32, i32 }
%struct.TYPE_32__ = type { i32*, i64, i32, i32 }
%struct.TYPE_30__ = type { i32, i8* }
%struct.TYPE_33__ = type { i32, i32, i8* }
%struct.TYPE_34__ = type { i32, i32*, i64, i32*, i32, i32* }

@S_OK = common dso_local global i64 0, align 8
@VLC_SUCCESS = common dso_local global i32 0, align 4
@VIDEO_ES = common dso_local global i64 0, align 8
@MFSampleExtension_Interlaced = common dso_local global i32 0, align 4
@MF_E_TRANSFORM_STREAM_CHANGE = common dso_local global i64 0, align 8
@MF_E_TRANSFORM_TYPE_NOT_SET = common dso_local global i64 0, align 8
@MF_E_TRANSFORM_NEED_MORE_INPUT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [54 x i8] c"Unexpected error in IMFTransform::ProcessOutput: %#lx\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Error in ProcessOutputStream()\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_31__*, i32)* @ProcessOutputStream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ProcessOutputStream(%struct.TYPE_31__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_31__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_32__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_30__*, align 8
  %9 = alloca %struct.TYPE_33__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_34__, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  store %struct.TYPE_31__* %0, %struct.TYPE_31__** %4, align 8
  store i32 %1, i32* %5, align 4
  %20 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_32__*, %struct.TYPE_32__** %21, align 8
  store %struct.TYPE_32__* %22, %struct.TYPE_32__** %6, align 8
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %8, align 8
  store %struct.TYPE_33__* null, %struct.TYPE_33__** %9, align 8
  store i32 0, i32* %10, align 4
  %23 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %11, i32 0, i32 0
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %11, i32 0, i32 1
  %26 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %25, align 8
  %29 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %11, i32 0, i32 2
  store i64 0, i64* %29, align 8
  %30 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %11, i32 0, i32 3
  store i32* null, i32** %30, align 8
  %31 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %11, i32 0, i32 4
  store i32 0, i32* %31, align 8
  %32 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %11, i32 0, i32 5
  store i32* null, i32** %32, align 8
  %33 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @IMFTransform_ProcessOutput(i32 %35, i32 0, i32 1, %struct.TYPE_34__* %11, i32* %10)
  store i64 %36, i64* %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %11, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %2
  %41 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %11, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @IMFCollection_Release(i64 %42)
  br label %44

44:                                               ; preds = %40, %2
  %45 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %11, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  store i32* %46, i32** %12, align 8
  %47 = load i64, i64* %7, align 8
  %48 = load i64, i64* @S_OK, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %209

50:                                               ; preds = %44
  %51 = load i32*, i32** %12, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %54, i32* %3, align 4
  br label %301

55:                                               ; preds = %50
  %56 = load i32*, i32** %12, align 8
  %57 = call i64 @IMFSample_GetSampleTime(i32* %56, i32* %13)
  store i64 %57, i64* %7, align 8
  %58 = load i64, i64* %7, align 8
  %59 = call i64 @FAILED(i64 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  br label %285

62:                                               ; preds = %55
  %63 = load i32, i32* %13, align 4
  %64 = call i8* @VLC_TICK_FROM_MSFTIME(i32 %63)
  store i8* %64, i8** %14, align 8
  store i32 0, i32* %15, align 4
  %65 = load i32*, i32** %12, align 8
  %66 = call i64 @IMFSample_GetTotalLength(i32* %65, i32* %15)
  store i64 %66, i64* %7, align 8
  %67 = load i64, i64* %7, align 8
  %68 = call i64 @FAILED(i64 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %62
  br label %285

71:                                               ; preds = %62
  %72 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @VIDEO_ES, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %103

78:                                               ; preds = %71
  %79 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %80 = call i64 @decoder_UpdateVideoFormat(%struct.TYPE_31__* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %78
  %83 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %83, i32* %3, align 4
  br label %301

84:                                               ; preds = %78
  %85 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %86 = call %struct.TYPE_30__* @decoder_NewPicture(%struct.TYPE_31__* %85)
  store %struct.TYPE_30__* %86, %struct.TYPE_30__** %8, align 8
  %87 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %88 = icmp ne %struct.TYPE_30__* %87, null
  br i1 %88, label %91, label %89

89:                                               ; preds = %84
  %90 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %90, i32* %3, align 4
  br label %301

91:                                               ; preds = %84
  store i32 0, i32* %16, align 4
  %92 = load i32*, i32** %12, align 8
  %93 = call i64 @IMFSample_GetUINT32(i32* %92, i32* @MFSampleExtension_Interlaced, i32* %16)
  store i64 %93, i64* %7, align 8
  %94 = load i32, i32* %16, align 4
  %95 = icmp ne i32 %94, 0
  %96 = xor i1 %95, true
  %97 = zext i1 %96 to i32
  %98 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  %100 = load i8*, i8** %14, align 8
  %101 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %101, i32 0, i32 1
  store i8* %100, i8** %102, align 8
  br label %156

103:                                              ; preds = %71
  %104 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %105 = call i64 @decoder_UpdateAudioFormat(%struct.TYPE_31__* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %103
  br label %285

108:                                              ; preds = %103
  %109 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %122, label %115

115:                                              ; preds = %108
  %116 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %115, %108
  br label %285

123:                                              ; preds = %115
  %124 = load i32, i32* %15, align 4
  %125 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = mul nsw i32 %129, %134
  %136 = sdiv i32 %135, 8
  %137 = sdiv i32 %124, %136
  store i32 %137, i32* %17, align 4
  %138 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %139 = load i32, i32* %17, align 4
  %140 = call %struct.TYPE_33__* @decoder_NewAudioBuffer(%struct.TYPE_31__* %138, i32 %139)
  store %struct.TYPE_33__* %140, %struct.TYPE_33__** %9, align 8
  %141 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %142 = icmp ne %struct.TYPE_33__* %141, null
  br i1 %142, label %145, label %143

143:                                              ; preds = %123
  %144 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %144, i32* %3, align 4
  br label %301

145:                                              ; preds = %123
  %146 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %147 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* %15, align 4
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %145
  br label %285

152:                                              ; preds = %145
  %153 = load i8*, i8** %14, align 8
  %154 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %155 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %154, i32 0, i32 2
  store i8* %153, i8** %155, align 8
  br label %156

156:                                              ; preds = %152, %91
  store i32* null, i32** %18, align 8
  %157 = load i32*, i32** %12, align 8
  %158 = call i64 @IMFSample_GetBufferByIndex(i32* %157, i32 0, i32** %18)
  store i64 %158, i64* %7, align 8
  %159 = load i32*, i32** %18, align 8
  %160 = call i64 @IMFMediaBuffer_Lock(i32* %159, i32** %19, i32* null, i32* null)
  store i64 %160, i64* %7, align 8
  %161 = load i64, i64* %7, align 8
  %162 = call i64 @FAILED(i64 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %156
  br label %285

165:                                              ; preds = %156
  %166 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @VIDEO_ES, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %172, label %176

172:                                              ; preds = %165
  %173 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %174 = load i32*, i32** %19, align 8
  %175 = call i32 @CopyPackedBufferToPicture(%struct.TYPE_30__* %173, i32* %174)
  br label %183

176:                                              ; preds = %165
  %177 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %178 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = load i32*, i32** %19, align 8
  %181 = load i32, i32* %15, align 4
  %182 = call i32 @memcpy(i32 %179, i32* %180, i32 %181)
  br label %183

183:                                              ; preds = %176, %172
  %184 = load i32*, i32** %18, align 8
  %185 = call i64 @IMFMediaBuffer_Unlock(i32* %184)
  store i64 %185, i64* %7, align 8
  %186 = load i32*, i32** %18, align 8
  %187 = call i32 @IMFSample_Release(i32* %186)
  %188 = load i64, i64* %7, align 8
  %189 = call i64 @FAILED(i64 %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %183
  br label %285

192:                                              ; preds = %183
  %193 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %194 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %193, i32 0, i32 0
  %195 = load i32*, i32** %194, align 8
  %196 = icmp ne i32* %195, null
  br i1 %196, label %197, label %205

197:                                              ; preds = %192
  %198 = load i32*, i32** %18, align 8
  %199 = call i64 @IMFMediaBuffer_SetCurrentLength(i32* %198, i32 0)
  store i64 %199, i64* %7, align 8
  %200 = load i64, i64* %7, align 8
  %201 = call i64 @FAILED(i64 %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %197
  br label %285

204:                                              ; preds = %197
  br label %208

205:                                              ; preds = %192
  %206 = load i32*, i32** %12, align 8
  %207 = call i32 @IMFSample_Release(i32* %206)
  br label %208

208:                                              ; preds = %205, %204
  br label %268

209:                                              ; preds = %44
  %210 = load i64, i64* %7, align 8
  %211 = load i64, i64* @MF_E_TRANSFORM_STREAM_CHANGE, align 8
  %212 = icmp eq i64 %210, %211
  br i1 %212, label %217, label %213

213:                                              ; preds = %209
  %214 = load i64, i64* %7, align 8
  %215 = load i64, i64* @MF_E_TRANSFORM_TYPE_NOT_SET, align 8
  %216 = icmp eq i64 %214, %215
  br i1 %216, label %217, label %258

217:                                              ; preds = %213, %209
  %218 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %219 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %218, i32 0, i32 1
  %220 = load i64, i64* %219, align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %227

222:                                              ; preds = %217
  %223 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %224 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %223, i32 0, i32 1
  %225 = load i64, i64* %224, align 8
  %226 = call i32 @IMFMediaType_Release(i64 %225)
  br label %227

227:                                              ; preds = %222, %217
  %228 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %229 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %230 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 8
  %232 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %233 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %232, i32 0, i32 1
  %234 = call i64 @SetOutputType(%struct.TYPE_31__* %228, i32 %231, i64* %233)
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %237

236:                                              ; preds = %227
  br label %285

237:                                              ; preds = %227
  %238 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %239 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %238, i32 0, i32 0
  %240 = load i32*, i32** %239, align 8
  %241 = icmp ne i32* %240, null
  br i1 %241, label %242, label %247

242:                                              ; preds = %237
  %243 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %244 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %243, i32 0, i32 0
  %245 = load i32*, i32** %244, align 8
  %246 = call i32 @IMFSample_Release(i32* %245)
  br label %247

247:                                              ; preds = %242, %237
  %248 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %249 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %248, i32 0, i32 0
  store i32* null, i32** %249, align 8
  %250 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %251 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %252 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %251, i32 0, i32 0
  %253 = call i64 @AllocateOutputSample(%struct.TYPE_31__* %250, i32 0, i32** %252)
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %256

255:                                              ; preds = %247
  br label %285

256:                                              ; preds = %247
  %257 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %257, i32* %3, align 4
  br label %301

258:                                              ; preds = %213
  %259 = load i64, i64* %7, align 8
  %260 = load i64, i64* @MF_E_TRANSFORM_NEED_MORE_INPUT, align 8
  %261 = icmp eq i64 %259, %260
  br i1 %261, label %262, label %264

262:                                              ; preds = %258
  %263 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %263, i32* %3, align 4
  br label %301

264:                                              ; preds = %258
  %265 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %266 = load i64, i64* %7, align 8
  %267 = call i32 (%struct.TYPE_31__*, i8*, ...) @msg_Err(%struct.TYPE_31__* %265, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i64 %266)
  br label %285

268:                                              ; preds = %208
  %269 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %270 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %270, i32 0, i32 0
  %272 = load i64, i64* %271, align 8
  %273 = load i64, i64* @VIDEO_ES, align 8
  %274 = icmp eq i64 %272, %273
  br i1 %274, label %275, label %279

275:                                              ; preds = %268
  %276 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %277 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %278 = call i32 @decoder_QueueVideo(%struct.TYPE_31__* %276, %struct.TYPE_30__* %277)
  br label %283

279:                                              ; preds = %268
  %280 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %281 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %282 = call i32 @decoder_QueueAudio(%struct.TYPE_31__* %280, %struct.TYPE_33__* %281)
  br label %283

283:                                              ; preds = %279, %275
  %284 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %284, i32* %3, align 4
  br label %301

285:                                              ; preds = %264, %255, %236, %203, %191, %164, %151, %122, %107, %70, %61
  %286 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %287 = call i32 (%struct.TYPE_31__*, i8*, ...) @msg_Err(%struct.TYPE_31__* %286, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %288 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %289 = icmp ne %struct.TYPE_30__* %288, null
  br i1 %289, label %290, label %293

290:                                              ; preds = %285
  %291 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %292 = call i32 @picture_Release(%struct.TYPE_30__* %291)
  br label %293

293:                                              ; preds = %290, %285
  %294 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %295 = icmp ne %struct.TYPE_33__* %294, null
  br i1 %295, label %296, label %299

296:                                              ; preds = %293
  %297 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %298 = call i32 @block_Release(%struct.TYPE_33__* %297)
  br label %299

299:                                              ; preds = %296, %293
  %300 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %300, i32* %3, align 4
  br label %301

301:                                              ; preds = %299, %283, %262, %256, %143, %89, %82, %53
  %302 = load i32, i32* %3, align 4
  ret i32 %302
}

declare dso_local i64 @IMFTransform_ProcessOutput(i32, i32, i32, %struct.TYPE_34__*, i32*) #1

declare dso_local i32 @IMFCollection_Release(i64) #1

declare dso_local i64 @IMFSample_GetSampleTime(i32*, i32*) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i8* @VLC_TICK_FROM_MSFTIME(i32) #1

declare dso_local i64 @IMFSample_GetTotalLength(i32*, i32*) #1

declare dso_local i64 @decoder_UpdateVideoFormat(%struct.TYPE_31__*) #1

declare dso_local %struct.TYPE_30__* @decoder_NewPicture(%struct.TYPE_31__*) #1

declare dso_local i64 @IMFSample_GetUINT32(i32*, i32*, i32*) #1

declare dso_local i64 @decoder_UpdateAudioFormat(%struct.TYPE_31__*) #1

declare dso_local %struct.TYPE_33__* @decoder_NewAudioBuffer(%struct.TYPE_31__*, i32) #1

declare dso_local i64 @IMFSample_GetBufferByIndex(i32*, i32, i32**) #1

declare dso_local i64 @IMFMediaBuffer_Lock(i32*, i32**, i32*, i32*) #1

declare dso_local i32 @CopyPackedBufferToPicture(%struct.TYPE_30__*, i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i64 @IMFMediaBuffer_Unlock(i32*) #1

declare dso_local i32 @IMFSample_Release(i32*) #1

declare dso_local i64 @IMFMediaBuffer_SetCurrentLength(i32*, i32) #1

declare dso_local i32 @IMFMediaType_Release(i64) #1

declare dso_local i64 @SetOutputType(%struct.TYPE_31__*, i32, i64*) #1

declare dso_local i64 @AllocateOutputSample(%struct.TYPE_31__*, i32, i32**) #1

declare dso_local i32 @msg_Err(%struct.TYPE_31__*, i8*, ...) #1

declare dso_local i32 @decoder_QueueVideo(%struct.TYPE_31__*, %struct.TYPE_30__*) #1

declare dso_local i32 @decoder_QueueAudio(%struct.TYPE_31__*, %struct.TYPE_33__*) #1

declare dso_local i32 @picture_Release(%struct.TYPE_30__*) #1

declare dso_local i32 @block_Release(%struct.TYPE_33__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
