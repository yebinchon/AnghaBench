; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/avi/extr_..rawdv.h_dv_extract_audio.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/avi/extr_..rawdv.h_dv_extract_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32*, i64, i64 }

@DV_PAL_FRAME_SIZE = common dso_local global i32 0, align 4
@DV_NTSC_FRAME_SIZE = common dso_local global i32 0, align 4
@dv_audio_shuffle625 = common dso_local global i32** null, align 8
@dv_audio_shuffle525 = common dso_local global i32** null, align 8
@VLC_TICK_INVALID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_5__* (%struct.TYPE_5__*)* @dv_extract_audio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_5__* @dv_extract_audio(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [9 x i32]*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %20, 4
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %2, align 8
  br label %374

23:                                               ; preds = %1
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 3
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, 128
  %30 = ashr i32 %29, 7
  store i32 %30, i32* %15, align 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %15, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %23
  %37 = load i32, i32* @DV_PAL_FRAME_SIZE, align 4
  br label %40

38:                                               ; preds = %23
  %39 = load i32, i32* @DV_NTSC_FRAME_SIZE, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  %42 = icmp slt i32 %33, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %2, align 8
  br label %374

44:                                               ; preds = %40
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 480
  %49 = getelementptr inbounds i32, i32* %48, i64 3840
  %50 = getelementptr inbounds i32, i32* %49, i64 3
  store i32* %50, i32** %6, align 8
  %51 = load i32*, i32** %6, align 8
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 80
  br i1 %53, label %54, label %55

54:                                               ; preds = %44
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %2, align 8
  br label %374

55:                                               ; preds = %44
  %56 = load i32*, i32** %6, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 4
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, 7
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp sgt i32 %60, 1
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %2, align 8
  br label %374

63:                                               ; preds = %55
  %64 = load i32*, i32** %6, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  %66 = load i32, i32* %15, align 4
  %67 = call i32 @dv_get_audio_sample_count(i32* %65, i32 %66)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = mul nsw i32 4, %68
  %70 = call %struct.TYPE_5__* @block_Alloc(i32 %69)
  store %struct.TYPE_5__* %70, %struct.TYPE_5__** %4, align 8
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  store i32* %73, i32** %5, align 8
  %74 = load i32, i32* %15, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %63
  %77 = load i32**, i32*** @dv_audio_shuffle625, align 8
  br label %80

78:                                               ; preds = %63
  %79 = load i32**, i32*** @dv_audio_shuffle525, align 8
  br label %80

80:                                               ; preds = %78, %76
  %81 = phi i32** [ %77, %76 ], [ %79, %78 ]
  %82 = bitcast i32** %81 to [9 x i32]*
  store [9 x i32]* %82, [9 x i32]** %10, align 8
  %83 = load i32, i32* %15, align 4
  %84 = icmp ne i32 %83, 0
  %85 = zext i1 %84 to i64
  %86 = select i1 %84, i32 12, i32 10
  %87 = sdiv i32 %86, 2
  store i32 %87, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %88

88:                                               ; preds = %347, %80
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* %15, align 4
  %91 = icmp ne i32 %90, 0
  %92 = zext i1 %91 to i64
  %93 = select i1 %91, i32 12, i32 10
  %94 = icmp slt i32 %89, %93
  br i1 %94, label %95, label %350

95:                                               ; preds = %88
  %96 = load i32*, i32** %5, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 480
  store i32* %97, i32** %5, align 8
  %98 = load i32, i32* %7, align 4
  %99 = icmp eq i32 %98, 1
  br i1 %99, label %100, label %105

100:                                              ; preds = %95
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* %9, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %100
  br label %350

105:                                              ; preds = %100, %95
  store i32 0, i32* %12, align 4
  br label %106

106:                                              ; preds = %343, %105
  %107 = load i32, i32* %12, align 4
  %108 = icmp slt i32 %107, 9
  br i1 %108, label %109, label %346

109:                                              ; preds = %106
  store i32 8, i32* %13, align 4
  br label %110

110:                                              ; preds = %337, %109
  %111 = load i32, i32* %13, align 4
  %112 = icmp slt i32 %111, 80
  br i1 %112, label %113, label %340

113:                                              ; preds = %110
  %114 = load i32, i32* %7, align 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %197

116:                                              ; preds = %113
  %117 = load [9 x i32]*, [9 x i32]** %10, align 8
  %118 = load i32, i32* %11, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [9 x i32], [9 x i32]* %117, i64 %119
  %121 = load i32, i32* %12, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [9 x i32], [9 x i32]* %120, i64 0, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %13, align 4
  %126 = sub nsw i32 %125, 8
  %127 = sdiv i32 %126, 2
  %128 = load i32, i32* %15, align 4
  %129 = icmp ne i32 %128, 0
  %130 = zext i1 %129 to i64
  %131 = select i1 %129, i32 108, i32 90
  %132 = mul nsw i32 %127, %131
  %133 = add nsw i32 %124, %132
  store i32 %133, i32* %14, align 4
  %134 = load i32, i32* %14, align 4
  %135 = mul nsw i32 %134, 2
  %136 = load i32, i32* %8, align 4
  %137 = mul nsw i32 4, %136
  %138 = icmp sge i32 %135, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %116
  br label %337

140:                                              ; preds = %116
  %141 = load i32*, i32** %5, align 8
  %142 = load i32, i32* %13, align 4
  %143 = add nsw i32 %142, 1
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %141, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 1
  %149 = load i32*, i32** %148, align 8
  %150 = load i32, i32* %14, align 4
  %151 = mul nsw i32 %150, 2
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %149, i64 %152
  store i32 %146, i32* %153, align 4
  %154 = load i32*, i32** %5, align 8
  %155 = load i32, i32* %13, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 1
  %161 = load i32*, i32** %160, align 8
  %162 = load i32, i32* %14, align 4
  %163 = mul nsw i32 %162, 2
  %164 = add nsw i32 %163, 1
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %161, i64 %165
  store i32 %158, i32* %166, align 4
  %167 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 1
  %169 = load i32*, i32** %168, align 8
  %170 = load i32, i32* %14, align 4
  %171 = mul nsw i32 %170, 2
  %172 = add nsw i32 %171, 1
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %169, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = icmp eq i32 %175, 128
  br i1 %176, label %177, label %196

177:                                              ; preds = %140
  %178 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 1
  %180 = load i32*, i32** %179, align 8
  %181 = load i32, i32* %14, align 4
  %182 = mul nsw i32 %181, 2
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %180, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %196

187:                                              ; preds = %177
  %188 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 1
  %190 = load i32*, i32** %189, align 8
  %191 = load i32, i32* %14, align 4
  %192 = mul nsw i32 %191, 2
  %193 = add nsw i32 %192, 1
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %190, i64 %194
  store i32 0, i32* %195, align 4
  br label %196

196:                                              ; preds = %187, %177, %140
  br label %336

197:                                              ; preds = %113
  %198 = load i32*, i32** %5, align 8
  %199 = load i32, i32* %13, align 4
  %200 = add nsw i32 %199, 0
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %198, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = shl i32 %203, 4
  %205 = load i32*, i32** %5, align 8
  %206 = load i32, i32* %13, align 4
  %207 = add nsw i32 %206, 2
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %205, i64 %208
  %210 = load i32, i32* %209, align 4
  %211 = ashr i32 %210, 4
  %212 = or i32 %204, %211
  store i32 %212, i32* %16, align 4
  %213 = load i32*, i32** %5, align 8
  %214 = load i32, i32* %13, align 4
  %215 = add nsw i32 %214, 1
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %213, i64 %216
  %218 = load i32, i32* %217, align 4
  %219 = shl i32 %218, 4
  %220 = load i32*, i32** %5, align 8
  %221 = load i32, i32* %13, align 4
  %222 = add nsw i32 %221, 2
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %220, i64 %223
  %225 = load i32, i32* %224, align 4
  %226 = and i32 %225, 15
  %227 = or i32 %219, %226
  store i32 %227, i32* %17, align 4
  %228 = load i32, i32* %16, align 4
  %229 = icmp eq i32 %228, 2048
  br i1 %229, label %230, label %231

230:                                              ; preds = %197
  br label %234

231:                                              ; preds = %197
  %232 = load i32, i32* %16, align 4
  %233 = call i32 @dv_audio_12to16(i32 %232)
  br label %234

234:                                              ; preds = %231, %230
  %235 = phi i32 [ 0, %230 ], [ %233, %231 ]
  store i32 %235, i32* %16, align 4
  %236 = load i32, i32* %17, align 4
  %237 = icmp eq i32 %236, 2048
  br i1 %237, label %238, label %239

238:                                              ; preds = %234
  br label %242

239:                                              ; preds = %234
  %240 = load i32, i32* %17, align 4
  %241 = call i32 @dv_audio_12to16(i32 %240)
  br label %242

242:                                              ; preds = %239, %238
  %243 = phi i32 [ 0, %238 ], [ %241, %239 ]
  store i32 %243, i32* %17, align 4
  %244 = load [9 x i32]*, [9 x i32]** %10, align 8
  %245 = load i32, i32* %11, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds [9 x i32], [9 x i32]* %244, i64 %246
  %248 = load i32, i32* %12, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds [9 x i32], [9 x i32]* %247, i64 0, i64 %249
  %251 = load i32, i32* %250, align 4
  %252 = load i32, i32* %13, align 4
  %253 = sub nsw i32 %252, 8
  %254 = sdiv i32 %253, 3
  %255 = load i32, i32* %15, align 4
  %256 = icmp ne i32 %255, 0
  %257 = zext i1 %256 to i64
  %258 = select i1 %256, i32 108, i32 90
  %259 = mul nsw i32 %254, %258
  %260 = add nsw i32 %251, %259
  store i32 %260, i32* %14, align 4
  %261 = load i32, i32* %14, align 4
  %262 = mul nsw i32 %261, 2
  %263 = load i32, i32* %8, align 4
  %264 = mul nsw i32 4, %263
  %265 = icmp sge i32 %262, %264
  br i1 %265, label %266, label %267

266:                                              ; preds = %242
  br label %337

267:                                              ; preds = %242
  %268 = load i32, i32* %16, align 4
  %269 = and i32 %268, 255
  %270 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %271 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %270, i32 0, i32 1
  %272 = load i32*, i32** %271, align 8
  %273 = load i32, i32* %14, align 4
  %274 = mul nsw i32 %273, 2
  %275 = add nsw i32 %274, 0
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i32, i32* %272, i64 %276
  store i32 %269, i32* %277, align 4
  %278 = load i32, i32* %16, align 4
  %279 = ashr i32 %278, 8
  %280 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %281 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %280, i32 0, i32 1
  %282 = load i32*, i32** %281, align 8
  %283 = load i32, i32* %14, align 4
  %284 = mul nsw i32 %283, 2
  %285 = add nsw i32 %284, 1
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i32, i32* %282, i64 %286
  store i32 %279, i32* %287, align 4
  %288 = load [9 x i32]*, [9 x i32]** %10, align 8
  %289 = load i32, i32* %11, align 4
  %290 = load i32, i32* %9, align 4
  %291 = add nsw i32 %289, %290
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds [9 x i32], [9 x i32]* %288, i64 %292
  %294 = load i32, i32* %12, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds [9 x i32], [9 x i32]* %293, i64 0, i64 %295
  %297 = load i32, i32* %296, align 4
  %298 = load i32, i32* %13, align 4
  %299 = sub nsw i32 %298, 8
  %300 = sdiv i32 %299, 3
  %301 = load i32, i32* %15, align 4
  %302 = icmp ne i32 %301, 0
  %303 = zext i1 %302 to i64
  %304 = select i1 %302, i32 108, i32 90
  %305 = mul nsw i32 %300, %304
  %306 = add nsw i32 %297, %305
  store i32 %306, i32* %14, align 4
  %307 = load i32, i32* %14, align 4
  %308 = mul nsw i32 %307, 2
  %309 = load i32, i32* %8, align 4
  %310 = mul nsw i32 4, %309
  %311 = icmp sge i32 %308, %310
  br i1 %311, label %312, label %313

312:                                              ; preds = %267
  br label %337

313:                                              ; preds = %267
  %314 = load i32, i32* %17, align 4
  %315 = and i32 %314, 255
  %316 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %317 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %316, i32 0, i32 1
  %318 = load i32*, i32** %317, align 8
  %319 = load i32, i32* %14, align 4
  %320 = mul nsw i32 %319, 2
  %321 = add nsw i32 %320, 0
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds i32, i32* %318, i64 %322
  store i32 %315, i32* %323, align 4
  %324 = load i32, i32* %17, align 4
  %325 = ashr i32 %324, 8
  %326 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %327 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %326, i32 0, i32 1
  %328 = load i32*, i32** %327, align 8
  %329 = load i32, i32* %14, align 4
  %330 = mul nsw i32 %329, 2
  %331 = add nsw i32 %330, 1
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds i32, i32* %328, i64 %332
  store i32 %325, i32* %333, align 4
  %334 = load i32, i32* %13, align 4
  %335 = add nsw i32 %334, 1
  store i32 %335, i32* %13, align 4
  br label %336

336:                                              ; preds = %313, %196
  br label %337

337:                                              ; preds = %336, %312, %266, %139
  %338 = load i32, i32* %13, align 4
  %339 = add nsw i32 %338, 2
  store i32 %339, i32* %13, align 4
  br label %110

340:                                              ; preds = %110
  %341 = load i32*, i32** %5, align 8
  %342 = getelementptr inbounds i32, i32* %341, i64 1280
  store i32* %342, i32** %5, align 8
  br label %343

343:                                              ; preds = %340
  %344 = load i32, i32* %12, align 4
  %345 = add nsw i32 %344, 1
  store i32 %345, i32* %12, align 4
  br label %106

346:                                              ; preds = %106
  br label %347

347:                                              ; preds = %346
  %348 = load i32, i32* %11, align 4
  %349 = add nsw i32 %348, 1
  store i32 %349, i32* %11, align 4
  br label %88

350:                                              ; preds = %104, %88
  %351 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %352 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %351, i32 0, i32 2
  %353 = load i64, i64* %352, align 8
  %354 = load i64, i64* @VLC_TICK_INVALID, align 8
  %355 = icmp ne i64 %353, %354
  br i1 %355, label %356, label %360

356:                                              ; preds = %350
  %357 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %358 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %357, i32 0, i32 2
  %359 = load i64, i64* %358, align 8
  br label %364

360:                                              ; preds = %350
  %361 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %362 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %361, i32 0, i32 3
  %363 = load i64, i64* %362, align 8
  br label %364

364:                                              ; preds = %360, %356
  %365 = phi i64 [ %359, %356 ], [ %363, %360 ]
  %366 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %367 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %366, i32 0, i32 2
  store i64 %365, i64* %367, align 8
  %368 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %369 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %368, i32 0, i32 3
  %370 = load i64, i64* %369, align 8
  %371 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %372 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %371, i32 0, i32 3
  store i64 %370, i64* %372, align 8
  %373 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  store %struct.TYPE_5__* %373, %struct.TYPE_5__** %2, align 8
  br label %374

374:                                              ; preds = %364, %62, %54, %43, %22
  %375 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  ret %struct.TYPE_5__* %375
}

declare dso_local i32 @dv_get_audio_sample_count(i32*, i32) #1

declare dso_local %struct.TYPE_5__* @block_Alloc(i32) #1

declare dso_local i32 @dv_audio_12to16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
