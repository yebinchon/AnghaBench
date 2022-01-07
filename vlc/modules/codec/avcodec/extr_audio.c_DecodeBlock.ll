; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/avcodec/extr_audio.c_DecodeBlock.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/avcodec/extr_audio.c_DecodeBlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_35__ = type { %struct.TYPE_34__, %struct.TYPE_32__, %struct.TYPE_36__* }
%struct.TYPE_34__ = type { %struct.TYPE_33__ }
%struct.TYPE_33__ = type { i32, i32 }
%struct.TYPE_32__ = type { i64 }
%struct.TYPE_36__ = type { i64, %struct.TYPE_39__*, i32 }
%struct.TYPE_39__ = type { i64, i64, i32 }
%struct.TYPE_37__ = type { i32, i64, i64, i32, i64, i32* }
%struct.TYPE_38__ = type { i64, i32* }

@BLOCK_FLAG_CORRUPTED = common dso_local global i32 0, align 4
@BLOCK_FLAG_DISCONTINUITY = common dso_local global i32 0, align 4
@VLC_TICK_INVALID = common dso_local global i64 0, align 8
@BLOCK_FLAG_PRIVATE_REALLOCATED = common dso_local global i32 0, align 4
@FF_INPUT_BUFFER_PADDING_SIZE = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AV_ERROR_MAX_STRING_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@INPUT_CHAN_MAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [59 x i8] c"invalid audio properties channels count %d, sample rate %d\00", align 1
@AVERROR_EOF = common dso_local global i32 0, align 4
@VLCDEC_SUCCESS = common dso_local global i32 0, align 4
@VLCDEC_ECRITICAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_35__*, %struct.TYPE_37__**)* @DecodeBlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DecodeBlock(%struct.TYPE_35__* %0, %struct.TYPE_37__** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_35__*, align 8
  %5 = alloca %struct.TYPE_37__**, align 8
  %6 = alloca %struct.TYPE_36__*, align 8
  %7 = alloca %struct.TYPE_39__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_37__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_38__, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_37__*, align 8
  store %struct.TYPE_35__* %0, %struct.TYPE_35__** %4, align 8
  store %struct.TYPE_37__** %1, %struct.TYPE_37__*** %5, align 8
  %17 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  store %struct.TYPE_36__* %19, %struct.TYPE_36__** %6, align 8
  %20 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_39__*, %struct.TYPE_39__** %21, align 8
  store %struct.TYPE_39__* %22, %struct.TYPE_39__** %7, align 8
  store i32* null, i32** %8, align 8
  store %struct.TYPE_37__* null, %struct.TYPE_37__** %9, align 8
  store i32 0, i32* %10, align 4
  %23 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %43, label %27

27:                                               ; preds = %2
  %28 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %27
  %34 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %35 = call i32 @avcodec_is_open(%struct.TYPE_39__* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %33
  %38 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %39 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %40 = call i32 @InitDecoderConfig(%struct.TYPE_35__* %38, %struct.TYPE_39__* %39)
  %41 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %42 = call i32 @OpenAudioCodec(%struct.TYPE_35__* %41)
  br label %43

43:                                               ; preds = %37, %33, %27, %2
  %44 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %45 = call i32 @avcodec_is_open(%struct.TYPE_39__* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %43
  %48 = load %struct.TYPE_37__**, %struct.TYPE_37__*** %5, align 8
  %49 = icmp ne %struct.TYPE_37__** %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load %struct.TYPE_37__**, %struct.TYPE_37__*** %5, align 8
  %52 = load %struct.TYPE_37__*, %struct.TYPE_37__** %51, align 8
  store %struct.TYPE_37__* %52, %struct.TYPE_37__** %9, align 8
  br label %53

53:                                               ; preds = %50, %47
  br label %365

54:                                               ; preds = %43
  %55 = load %struct.TYPE_37__**, %struct.TYPE_37__*** %5, align 8
  %56 = icmp eq %struct.TYPE_37__** %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %59 = call i32 @avcodec_send_packet(%struct.TYPE_39__* %58, %struct.TYPE_38__* null)
  br label %63

60:                                               ; preds = %54
  %61 = load %struct.TYPE_37__**, %struct.TYPE_37__*** %5, align 8
  %62 = load %struct.TYPE_37__*, %struct.TYPE_37__** %61, align 8
  store %struct.TYPE_37__* %62, %struct.TYPE_37__** %9, align 8
  br label %63

63:                                               ; preds = %60, %57
  %64 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %65 = icmp ne %struct.TYPE_37__* %64, null
  br i1 %65, label %66, label %147

66:                                               ; preds = %63
  %67 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @BLOCK_FLAG_CORRUPTED, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %66
  %74 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %75 = call i32 @Flush(%struct.TYPE_35__* %74)
  br label %365

76:                                               ; preds = %66
  %77 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @BLOCK_FLAG_DISCONTINUITY, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %76
  %84 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %84, i32 0, i32 2
  %86 = load i64, i64* @VLC_TICK_INVALID, align 8
  %87 = call i32 @date_Set(i32* %85, i64 %86)
  br label %88

88:                                               ; preds = %83, %76
  %89 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @VLC_TICK_INVALID, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %101

94:                                               ; preds = %88
  %95 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %95, i32 0, i32 2
  %97 = call i64 @date_Get(i32* %96)
  %98 = load i64, i64* @VLC_TICK_INVALID, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %94
  br label %365

101:                                              ; preds = %94, %88
  %102 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = icmp ule i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %101
  br label %365

107:                                              ; preds = %101
  %108 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @BLOCK_FLAG_PRIVATE_REALLOCATED, align 4
  %112 = and i32 %110, %111
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %146

114:                                              ; preds = %107
  %115 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %116 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @FF_INPUT_BUFFER_PADDING_SIZE, align 8
  %120 = add i64 %118, %119
  %121 = call %struct.TYPE_37__* @block_Realloc(%struct.TYPE_37__* %115, i32 0, i64 %120)
  store %struct.TYPE_37__* %121, %struct.TYPE_37__** %9, align 8
  %122 = load %struct.TYPE_37__**, %struct.TYPE_37__*** %5, align 8
  store %struct.TYPE_37__* %121, %struct.TYPE_37__** %122, align 8
  %123 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %124 = icmp ne %struct.TYPE_37__* %123, null
  br i1 %124, label %126, label %125

125:                                              ; preds = %114
  br label %364

126:                                              ; preds = %114
  %127 = load i64, i64* @FF_INPUT_BUFFER_PADDING_SIZE, align 8
  %128 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = sub i64 %130, %127
  store i64 %131, i64* %129, align 8
  %132 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %133 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %132, i32 0, i32 5
  %134 = load i32*, i32** %133, align 8
  %135 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = getelementptr inbounds i32, i32* %134, i64 %137
  %139 = load i64, i64* @FF_INPUT_BUFFER_PADDING_SIZE, align 8
  %140 = call i32 @memset(i32* %138, i32 0, i64 %139)
  %141 = load i32, i32* @BLOCK_FLAG_PRIVATE_REALLOCATED, align 4
  %142 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %143 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = or i32 %144, %141
  store i32 %145, i32* %143, align 8
  br label %146

146:                                              ; preds = %126, %107
  br label %147

147:                                              ; preds = %146, %63
  %148 = call i32* (...) @av_frame_alloc()
  store i32* %148, i32** %8, align 8
  %149 = load i32*, i32** %8, align 8
  %150 = icmp eq i32* %149, null
  %151 = zext i1 %150 to i32
  %152 = call i64 @unlikely(i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %147
  br label %364

155:                                              ; preds = %147
  store i32 0, i32* %11, align 4
  br label %156

156:                                              ; preds = %361, %155
  %157 = load i32, i32* %11, align 4
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %362

159:                                              ; preds = %156
  %160 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %161 = icmp ne %struct.TYPE_37__* %160, null
  br i1 %161, label %162, label %228

162:                                              ; preds = %159
  %163 = call i32 @av_init_packet(%struct.TYPE_38__* %12)
  %164 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %165 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %164, i32 0, i32 5
  %166 = load i32*, i32** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %12, i32 0, i32 1
  store i32* %166, i32** %167, align 8
  %168 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %169 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %168, i32 0, i32 2
  %170 = load i64, i64* %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %12, i32 0, i32 0
  store i64 %170, i64* %171, align 8
  %172 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %173 = call i32 @avcodec_send_packet(%struct.TYPE_39__* %172, %struct.TYPE_38__* %12)
  store i32 %173, i32* %11, align 4
  %174 = load i32, i32* %11, align 4
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %195

176:                                              ; preds = %162
  %177 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %178 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %180, i32 0, i32 2
  %182 = call i64 @date_Get(i32* %181)
  %183 = icmp sgt i64 %179, %182
  br i1 %183, label %184, label %191

184:                                              ; preds = %176
  %185 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %185, i32 0, i32 2
  %187 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %188 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = call i32 @date_Set(i32* %186, i64 %189)
  br label %191

191:                                              ; preds = %184, %176
  %192 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %193 = call i32 @block_Release(%struct.TYPE_37__* %192)
  store %struct.TYPE_37__* null, %struct.TYPE_37__** %9, align 8
  %194 = load %struct.TYPE_37__**, %struct.TYPE_37__*** %5, align 8
  store %struct.TYPE_37__* null, %struct.TYPE_37__** %194, align 8
  br label %227

195:                                              ; preds = %162
  %196 = load i32, i32* %11, align 4
  %197 = load i32, i32* @EAGAIN, align 4
  %198 = call i32 @AVERROR(i32 %197)
  %199 = icmp ne i32 %196, %198
  br i1 %199, label %200, label %226

200:                                              ; preds = %195
  %201 = load i32, i32* %11, align 4
  %202 = load i32, i32* @ENOMEM, align 4
  %203 = call i32 @AVERROR(i32 %202)
  %204 = icmp eq i32 %201, %203
  br i1 %204, label %210, label %205

205:                                              ; preds = %200
  %206 = load i32, i32* %11, align 4
  %207 = load i32, i32* @EINVAL, align 4
  %208 = call i32 @AVERROR(i32 %207)
  %209 = icmp eq i32 %206, %208
  br i1 %209, label %210, label %211

210:                                              ; preds = %205, %200
  br label %364

211:                                              ; preds = %205
  %212 = load i32, i32* @AV_ERROR_MAX_STRING_SIZE, align 4
  %213 = zext i32 %212 to i64
  %214 = call i8* @llvm.stacksave()
  store i8* %214, i8** %13, align 8
  %215 = alloca i8, i64 %213, align 16
  store i64 %213, i64* %14, align 8
  %216 = load i32, i32* %11, align 4
  %217 = load i32, i32* @AV_ERROR_MAX_STRING_SIZE, align 4
  %218 = call i32 @av_strerror(i32 %216, i8* %215, i32 %217)
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %223, label %220

220:                                              ; preds = %211
  %221 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %222 = call i32 @msg_Err(%struct.TYPE_35__* %221, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %215)
  br label %223

223:                                              ; preds = %220, %211
  store i32 2, i32* %15, align 4
  %224 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %224)
  %225 = load i32, i32* %15, align 4
  switch i32 %225, label %398 [
    i32 2, label %365
  ]

226:                                              ; preds = %195
  br label %227

227:                                              ; preds = %226, %191
  br label %228

228:                                              ; preds = %227, %159
  %229 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %230 = load i32*, i32** %8, align 8
  %231 = call i32 @avcodec_receive_frame(%struct.TYPE_39__* %229, i32* %230)
  store i32 %231, i32* %11, align 4
  %232 = load i32, i32* %11, align 4
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %234, label %350

234:                                              ; preds = %228
  %235 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %236 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = icmp sle i64 %237, 0
  br i1 %238, label %250, label %239

239:                                              ; preds = %234
  %240 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %241 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = load i64, i64* @INPUT_CHAN_MAX, align 8
  %244 = icmp sgt i64 %242, %243
  br i1 %244, label %250, label %245

245:                                              ; preds = %239
  %246 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %247 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %246, i32 0, i32 1
  %248 = load i64, i64* %247, align 8
  %249 = icmp sle i64 %248, 0
  br i1 %249, label %250, label %259

250:                                              ; preds = %245, %239, %234
  %251 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %252 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %253 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %252, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %256 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %255, i32 0, i32 1
  %257 = load i64, i64* %256, align 8
  %258 = call i32 @msg_Warn(%struct.TYPE_35__* %251, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i64 %254, i64 %257)
  br label %365

259:                                              ; preds = %245
  %260 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %261 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %266 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %265, i32 0, i32 1
  %267 = load i64, i64* %266, align 8
  %268 = trunc i64 %267 to i32
  %269 = icmp ne i32 %264, %268
  br i1 %269, label %270, label %277

270:                                              ; preds = %259
  %271 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %272 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %271, i32 0, i32 2
  %273 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %274 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %273, i32 0, i32 1
  %275 = load i64, i64* %274, align 8
  %276 = call i32 @date_Init(i32* %272, i64 %275, i32 1)
  br label %277

277:                                              ; preds = %270, %259
  br label %278

278:                                              ; preds = %277
  %279 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %280 = call i32 @SetupOutputFormat(%struct.TYPE_35__* %279, i32 1)
  %281 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %282 = call i64 @decoder_UpdateAudioFormat(%struct.TYPE_35__* %281)
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %285

284:                                              ; preds = %278
  br label %365

285:                                              ; preds = %278
  %286 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %287 = load i32*, i32** %8, align 8
  %288 = call %struct.TYPE_37__* @ConvertAVFrame(%struct.TYPE_35__* %286, i32* %287)
  store %struct.TYPE_37__* %288, %struct.TYPE_37__** %16, align 8
  %289 = load %struct.TYPE_37__*, %struct.TYPE_37__** %16, align 8
  %290 = icmp ne %struct.TYPE_37__* %289, null
  br i1 %290, label %291, label %341

291:                                              ; preds = %285
  %292 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %293 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %292, i32 0, i32 0
  %294 = load i64, i64* %293, align 8
  %295 = icmp sgt i64 %294, 0
  br i1 %295, label %296, label %308

296:                                              ; preds = %291
  %297 = load %struct.TYPE_37__*, %struct.TYPE_37__** %16, align 8
  %298 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %297, i32 0, i32 5
  %299 = load i32*, i32** %298, align 8
  %300 = load %struct.TYPE_37__*, %struct.TYPE_37__** %16, align 8
  %301 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %300, i32 0, i32 2
  %302 = load i64, i64* %301, align 8
  %303 = call i32 @memset(i32* %299, i32 0, i64 %302)
  %304 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %305 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %304, i32 0, i32 0
  %306 = load i64, i64* %305, align 8
  %307 = add nsw i64 %306, -1
  store i64 %307, i64* %305, align 8
  br label %308

308:                                              ; preds = %296, %291
  %309 = load %struct.TYPE_37__*, %struct.TYPE_37__** %16, align 8
  %310 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %309, i32 0, i32 3
  %311 = load i32, i32* %310, align 8
  %312 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %313 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %312, i32 0, i32 0
  %314 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %313, i32 0, i32 0
  %315 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %314, i32 0, i32 1
  %316 = load i32, i32* %315, align 4
  %317 = mul nsw i32 %311, %316
  %318 = sext i32 %317 to i64
  %319 = load %struct.TYPE_37__*, %struct.TYPE_37__** %16, align 8
  %320 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %319, i32 0, i32 2
  store i64 %318, i64* %320, align 8
  %321 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %322 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %321, i32 0, i32 2
  %323 = call i64 @date_Get(i32* %322)
  %324 = load %struct.TYPE_37__*, %struct.TYPE_37__** %16, align 8
  %325 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %324, i32 0, i32 1
  store i64 %323, i64* %325, align 8
  %326 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %327 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %326, i32 0, i32 2
  %328 = load %struct.TYPE_37__*, %struct.TYPE_37__** %16, align 8
  %329 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %328, i32 0, i32 3
  %330 = load i32, i32* %329, align 8
  %331 = call i64 @date_Increment(i32* %327, i32 %330)
  %332 = load %struct.TYPE_37__*, %struct.TYPE_37__** %16, align 8
  %333 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %332, i32 0, i32 1
  %334 = load i64, i64* %333, align 8
  %335 = sub nsw i64 %331, %334
  %336 = load %struct.TYPE_37__*, %struct.TYPE_37__** %16, align 8
  %337 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %336, i32 0, i32 4
  store i64 %335, i64* %337, align 8
  %338 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %339 = load %struct.TYPE_37__*, %struct.TYPE_37__** %16, align 8
  %340 = call i32 @decoder_QueueAudio(%struct.TYPE_35__* %338, %struct.TYPE_37__* %339)
  br label %341

341:                                              ; preds = %308, %285
  %342 = call i32* (...) @av_frame_alloc()
  store i32* %342, i32** %8, align 8
  %343 = load i32*, i32** %8, align 8
  %344 = icmp eq i32* %343, null
  %345 = zext i1 %344 to i32
  %346 = call i64 @unlikely(i32 %345)
  %347 = icmp ne i64 %346, 0
  br i1 %347, label %348, label %349

348:                                              ; preds = %341
  br label %362

349:                                              ; preds = %341
  br label %361

350:                                              ; preds = %228
  %351 = load i32, i32* %11, align 4
  %352 = load i32, i32* @AVERROR_EOF, align 4
  %353 = icmp eq i32 %351, %352
  br i1 %353, label %354, label %359

354:                                              ; preds = %350
  %355 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %356 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %355, i32 0, i32 1
  %357 = load %struct.TYPE_39__*, %struct.TYPE_39__** %356, align 8
  %358 = call i32 @avcodec_flush_buffers(%struct.TYPE_39__* %357)
  br label %359

359:                                              ; preds = %354, %350
  %360 = call i32 @av_frame_free(i32** %8)
  br label %361

361:                                              ; preds = %359, %349
  br label %156

362:                                              ; preds = %348, %156
  %363 = load i32, i32* @VLCDEC_SUCCESS, align 4
  store i32 %363, i32* %3, align 4
  br label %396

364:                                              ; preds = %210, %154, %125
  store i32 1, i32* %10, align 4
  br label %365

365:                                              ; preds = %364, %284, %250, %223, %106, %100, %73, %53
  %366 = load %struct.TYPE_37__**, %struct.TYPE_37__*** %5, align 8
  %367 = icmp ne %struct.TYPE_37__** %366, null
  br i1 %367, label %368, label %376

368:                                              ; preds = %365
  %369 = load %struct.TYPE_37__**, %struct.TYPE_37__*** %5, align 8
  %370 = load %struct.TYPE_37__*, %struct.TYPE_37__** %369, align 8
  %371 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %372 = icmp eq %struct.TYPE_37__* %370, %371
  %373 = zext i1 %372 to i32
  %374 = call i32 @assert(i32 %373)
  %375 = load %struct.TYPE_37__**, %struct.TYPE_37__*** %5, align 8
  store %struct.TYPE_37__* null, %struct.TYPE_37__** %375, align 8
  br label %376

376:                                              ; preds = %368, %365
  %377 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %378 = icmp ne %struct.TYPE_37__* %377, null
  br i1 %378, label %379, label %382

379:                                              ; preds = %376
  %380 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %381 = call i32 @block_Release(%struct.TYPE_37__* %380)
  br label %382

382:                                              ; preds = %379, %376
  %383 = load i32*, i32** %8, align 8
  %384 = icmp ne i32* %383, null
  br i1 %384, label %385, label %387

385:                                              ; preds = %382
  %386 = call i32 @av_frame_free(i32** %8)
  br label %387

387:                                              ; preds = %385, %382
  %388 = load i32, i32* %10, align 4
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %390, label %392

390:                                              ; preds = %387
  %391 = load i32, i32* @VLCDEC_ECRITICAL, align 4
  br label %394

392:                                              ; preds = %387
  %393 = load i32, i32* @VLCDEC_SUCCESS, align 4
  br label %394

394:                                              ; preds = %392, %390
  %395 = phi i32 [ %391, %390 ], [ %393, %392 ]
  store i32 %395, i32* %3, align 4
  br label %396

396:                                              ; preds = %394, %362
  %397 = load i32, i32* %3, align 4
  ret i32 %397

398:                                              ; preds = %223
  unreachable
}

declare dso_local i32 @avcodec_is_open(%struct.TYPE_39__*) #1

declare dso_local i32 @InitDecoderConfig(%struct.TYPE_35__*, %struct.TYPE_39__*) #1

declare dso_local i32 @OpenAudioCodec(%struct.TYPE_35__*) #1

declare dso_local i32 @avcodec_send_packet(%struct.TYPE_39__*, %struct.TYPE_38__*) #1

declare dso_local i32 @Flush(%struct.TYPE_35__*) #1

declare dso_local i32 @date_Set(i32*, i64) #1

declare dso_local i64 @date_Get(i32*) #1

declare dso_local %struct.TYPE_37__* @block_Realloc(%struct.TYPE_37__*, i32, i64) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i32* @av_frame_alloc(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @av_init_packet(%struct.TYPE_38__*) #1

declare dso_local i32 @block_Release(%struct.TYPE_37__*) #1

declare dso_local i32 @AVERROR(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @av_strerror(i32, i8*, i32) #1

declare dso_local i32 @msg_Err(%struct.TYPE_35__*, i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @avcodec_receive_frame(%struct.TYPE_39__*, i32*) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_35__*, i8*, i64, i64) #1

declare dso_local i32 @date_Init(i32*, i64, i32) #1

declare dso_local i32 @SetupOutputFormat(%struct.TYPE_35__*, i32) #1

declare dso_local i64 @decoder_UpdateAudioFormat(%struct.TYPE_35__*) #1

declare dso_local %struct.TYPE_37__* @ConvertAVFrame(%struct.TYPE_35__*, i32*) #1

declare dso_local i64 @date_Increment(i32*, i32) #1

declare dso_local i32 @decoder_QueueAudio(%struct.TYPE_35__*, %struct.TYPE_37__*) #1

declare dso_local i32 @avcodec_flush_buffers(%struct.TYPE_39__*) #1

declare dso_local i32 @av_frame_free(i32**) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
