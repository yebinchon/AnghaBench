; ModuleID = '/home/carl/AnghaBench/reactos/drivers/wdm/audio/filters/kmixer/extr_pin.c_PerformChannelConversion.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/wdm/audio/filters/kmixer/extr_pin.c_PerformChannelConversion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NonPagedPool = common dso_local global i32 0, align 4
@STATUS_INSUFFICIENT_RESOURCES = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PerformChannelConversion(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32** %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32**, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32*, align 8
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32** %5, i32*** %14, align 8
  store i32* %6, i32** %15, align 8
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %13, align 4
  %30 = sdiv i32 %29, 8
  %31 = sdiv i32 %28, %30
  %32 = load i32, i32* %11, align 4
  %33 = sdiv i32 %31, %32
  store i32 %33, i32* %16, align 4
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %37, label %337

37:                                               ; preds = %7
  %38 = load i32, i32* %13, align 4
  %39 = icmp eq i32 %38, 8
  br i1 %39, label %40, label %111

40:                                               ; preds = %37
  %41 = load i32, i32* @NonPagedPool, align 4
  %42 = load i32, i32* %16, align 4
  %43 = load i32, i32* %12, align 4
  %44 = mul nsw i32 %42, %43
  %45 = call i32* @ExAllocatePool(i32 %41, i32 %44)
  store i32* %45, i32** %19, align 8
  %46 = load i32*, i32** %19, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %40
  %49 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %49, i32* %8, align 4
  br label %384

50:                                               ; preds = %40
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %51

51:                                               ; preds = %97, %50
  %52 = load i32, i32* %18, align 4
  %53 = load i32, i32* %16, align 4
  %54 = load i32, i32* %11, align 4
  %55 = mul nsw i32 %53, %54
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %104

57:                                               ; preds = %51
  store i32 0, i32* %20, align 4
  %58 = load i32*, i32** %19, align 8
  %59 = load i32, i32* %17, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32*, i32** %9, align 8
  %63 = load i32, i32* %18, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %11, align 4
  %67 = sext i32 %66 to i64
  %68 = mul i64 %67, 4
  %69 = trunc i64 %68 to i32
  %70 = call i32 @RtlMoveMemory(i32* %61, i32* %65, i32 %69)
  br label %71

71:                                               ; preds = %89, %57
  %72 = load i32*, i32** %9, align 8
  %73 = load i32, i32* %18, align 4
  %74 = load i32, i32* %20, align 4
  %75 = load i32, i32* %11, align 4
  %76 = srem i32 %74, %75
  %77 = add nsw i32 %73, %76
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %72, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = load i32*, i32** %19, align 8
  %82 = load i32, i32* %17, align 4
  %83 = load i32, i32* %11, align 4
  %84 = add nsw i32 %82, %83
  %85 = load i32, i32* %20, align 4
  %86 = add nsw i32 %84, %85
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %81, i64 %87
  store i32 %80, i32* %88, align 4
  br label %89

89:                                               ; preds = %71
  %90 = load i32, i32* %20, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %20, align 4
  %92 = load i32, i32* %12, align 4
  %93 = load i32, i32* %11, align 4
  %94 = sub nsw i32 %92, %93
  %95 = icmp slt i32 %90, %94
  br i1 %95, label %71, label %96

96:                                               ; preds = %89
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %12, align 4
  %99 = load i32, i32* %17, align 4
  %100 = add nsw i32 %99, %98
  store i32 %100, i32* %17, align 4
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* %18, align 4
  %103 = add nsw i32 %102, %101
  store i32 %103, i32* %18, align 4
  br label %51

104:                                              ; preds = %51
  %105 = load i32*, i32** %19, align 8
  %106 = load i32**, i32*** %14, align 8
  store i32* %105, i32** %106, align 8
  %107 = load i32, i32* %16, align 4
  %108 = load i32, i32* %12, align 4
  %109 = mul nsw i32 %107, %108
  %110 = load i32*, i32** %15, align 8
  store i32 %109, i32* %110, align 4
  br label %336

111:                                              ; preds = %37
  %112 = load i32, i32* %13, align 4
  %113 = icmp eq i32 %112, 16
  br i1 %113, label %114, label %185

114:                                              ; preds = %111
  %115 = load i32, i32* @NonPagedPool, align 4
  %116 = load i32, i32* %16, align 4
  %117 = load i32, i32* %12, align 4
  %118 = mul nsw i32 %116, %117
  %119 = call i32* @ExAllocatePool(i32 %115, i32 %118)
  store i32* %119, i32** %21, align 8
  %120 = load i32*, i32** %21, align 8
  %121 = icmp ne i32* %120, null
  br i1 %121, label %124, label %122

122:                                              ; preds = %114
  %123 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %123, i32* %8, align 4
  br label %384

124:                                              ; preds = %114
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %125

125:                                              ; preds = %171, %124
  %126 = load i32, i32* %18, align 4
  %127 = load i32, i32* %16, align 4
  %128 = load i32, i32* %11, align 4
  %129 = mul nsw i32 %127, %128
  %130 = icmp slt i32 %126, %129
  br i1 %130, label %131, label %178

131:                                              ; preds = %125
  store i32 0, i32* %22, align 4
  %132 = load i32*, i32** %21, align 8
  %133 = load i32, i32* %17, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32*, i32** %9, align 8
  %137 = load i32, i32* %18, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = load i32, i32* %11, align 4
  %141 = sext i32 %140 to i64
  %142 = mul i64 %141, 4
  %143 = trunc i64 %142 to i32
  %144 = call i32 @RtlMoveMemory(i32* %135, i32* %139, i32 %143)
  br label %145

145:                                              ; preds = %163, %131
  %146 = load i32*, i32** %9, align 8
  %147 = load i32, i32* %18, align 4
  %148 = load i32, i32* %22, align 4
  %149 = load i32, i32* %11, align 4
  %150 = srem i32 %148, %149
  %151 = add nsw i32 %147, %150
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %146, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = load i32*, i32** %21, align 8
  %156 = load i32, i32* %17, align 4
  %157 = load i32, i32* %11, align 4
  %158 = add nsw i32 %156, %157
  %159 = load i32, i32* %22, align 4
  %160 = add nsw i32 %158, %159
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %155, i64 %161
  store i32 %154, i32* %162, align 4
  br label %163

163:                                              ; preds = %145
  %164 = load i32, i32* %22, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %22, align 4
  %166 = load i32, i32* %12, align 4
  %167 = load i32, i32* %11, align 4
  %168 = sub nsw i32 %166, %167
  %169 = icmp slt i32 %164, %168
  br i1 %169, label %145, label %170

170:                                              ; preds = %163
  br label %171

171:                                              ; preds = %170
  %172 = load i32, i32* %12, align 4
  %173 = load i32, i32* %17, align 4
  %174 = add nsw i32 %173, %172
  store i32 %174, i32* %17, align 4
  %175 = load i32, i32* %11, align 4
  %176 = load i32, i32* %18, align 4
  %177 = add nsw i32 %176, %175
  store i32 %177, i32* %18, align 4
  br label %125

178:                                              ; preds = %125
  %179 = load i32*, i32** %21, align 8
  %180 = load i32**, i32*** %14, align 8
  store i32* %179, i32** %180, align 8
  %181 = load i32, i32* %16, align 4
  %182 = load i32, i32* %12, align 4
  %183 = mul nsw i32 %181, %182
  %184 = load i32*, i32** %15, align 8
  store i32 %183, i32* %184, align 4
  br label %335

185:                                              ; preds = %111
  %186 = load i32, i32* %13, align 4
  %187 = icmp eq i32 %186, 24
  br i1 %187, label %188, label %259

188:                                              ; preds = %185
  %189 = load i32, i32* @NonPagedPool, align 4
  %190 = load i32, i32* %16, align 4
  %191 = load i32, i32* %12, align 4
  %192 = mul nsw i32 %190, %191
  %193 = call i32* @ExAllocatePool(i32 %189, i32 %192)
  store i32* %193, i32** %23, align 8
  %194 = load i32*, i32** %23, align 8
  %195 = icmp ne i32* %194, null
  br i1 %195, label %198, label %196

196:                                              ; preds = %188
  %197 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %197, i32* %8, align 4
  br label %384

198:                                              ; preds = %188
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %199

199:                                              ; preds = %245, %198
  %200 = load i32, i32* %18, align 4
  %201 = load i32, i32* %16, align 4
  %202 = load i32, i32* %11, align 4
  %203 = mul nsw i32 %201, %202
  %204 = icmp slt i32 %200, %203
  br i1 %204, label %205, label %252

205:                                              ; preds = %199
  store i32 0, i32* %24, align 4
  %206 = load i32*, i32** %23, align 8
  %207 = load i32, i32* %17, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %206, i64 %208
  %210 = load i32*, i32** %9, align 8
  %211 = load i32, i32* %18, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %210, i64 %212
  %214 = load i32, i32* %11, align 4
  %215 = mul nsw i32 %214, 3
  %216 = call i32 @RtlMoveMemory(i32* %209, i32* %213, i32 %215)
  br label %217

217:                                              ; preds = %237, %205
  %218 = load i32*, i32** %23, align 8
  %219 = load i32, i32* %17, align 4
  %220 = load i32, i32* %11, align 4
  %221 = add nsw i32 %219, %220
  %222 = load i32, i32* %24, align 4
  %223 = add nsw i32 %221, %222
  %224 = mul nsw i32 %223, 3
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32, i32* %218, i64 %225
  %227 = load i32*, i32** %9, align 8
  %228 = load i32, i32* %18, align 4
  %229 = load i32, i32* %24, align 4
  %230 = load i32, i32* %11, align 4
  %231 = srem i32 %229, %230
  %232 = add nsw i32 %228, %231
  %233 = mul nsw i32 %232, 3
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32, i32* %227, i64 %234
  %236 = call i32 @RtlMoveMemory(i32* %226, i32* %235, i32 3)
  br label %237

237:                                              ; preds = %217
  %238 = load i32, i32* %24, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %24, align 4
  %240 = load i32, i32* %12, align 4
  %241 = load i32, i32* %11, align 4
  %242 = sub nsw i32 %240, %241
  %243 = icmp slt i32 %238, %242
  br i1 %243, label %217, label %244

244:                                              ; preds = %237
  br label %245

245:                                              ; preds = %244
  %246 = load i32, i32* %12, align 4
  %247 = load i32, i32* %17, align 4
  %248 = add nsw i32 %247, %246
  store i32 %248, i32* %17, align 4
  %249 = load i32, i32* %11, align 4
  %250 = load i32, i32* %18, align 4
  %251 = add nsw i32 %250, %249
  store i32 %251, i32* %18, align 4
  br label %199

252:                                              ; preds = %199
  %253 = load i32*, i32** %23, align 8
  %254 = load i32**, i32*** %14, align 8
  store i32* %253, i32** %254, align 8
  %255 = load i32, i32* %16, align 4
  %256 = load i32, i32* %12, align 4
  %257 = mul nsw i32 %255, %256
  %258 = load i32*, i32** %15, align 8
  store i32 %257, i32* %258, align 4
  br label %334

259:                                              ; preds = %185
  %260 = load i32, i32* %13, align 4
  %261 = icmp eq i32 %260, 32
  br i1 %261, label %262, label %333

262:                                              ; preds = %259
  %263 = load i32, i32* @NonPagedPool, align 4
  %264 = load i32, i32* %16, align 4
  %265 = load i32, i32* %12, align 4
  %266 = mul nsw i32 %264, %265
  %267 = call i32* @ExAllocatePool(i32 %263, i32 %266)
  store i32* %267, i32** %25, align 8
  %268 = load i32*, i32** %25, align 8
  %269 = icmp ne i32* %268, null
  br i1 %269, label %272, label %270

270:                                              ; preds = %262
  %271 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %271, i32* %8, align 4
  br label %384

272:                                              ; preds = %262
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %273

273:                                              ; preds = %319, %272
  %274 = load i32, i32* %18, align 4
  %275 = load i32, i32* %16, align 4
  %276 = load i32, i32* %11, align 4
  %277 = mul nsw i32 %275, %276
  %278 = icmp slt i32 %274, %277
  br i1 %278, label %279, label %326

279:                                              ; preds = %273
  store i32 0, i32* %26, align 4
  %280 = load i32*, i32** %25, align 8
  %281 = load i32, i32* %17, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i32, i32* %280, i64 %282
  %284 = load i32*, i32** %9, align 8
  %285 = load i32, i32* %18, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i32, i32* %284, i64 %286
  %288 = load i32, i32* %11, align 4
  %289 = sext i32 %288 to i64
  %290 = mul i64 %289, 4
  %291 = trunc i64 %290 to i32
  %292 = call i32 @RtlMoveMemory(i32* %283, i32* %287, i32 %291)
  br label %293

293:                                              ; preds = %311, %279
  %294 = load i32*, i32** %9, align 8
  %295 = load i32, i32* %18, align 4
  %296 = load i32, i32* %26, align 4
  %297 = load i32, i32* %11, align 4
  %298 = srem i32 %296, %297
  %299 = add nsw i32 %295, %298
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i32, i32* %294, i64 %300
  %302 = load i32, i32* %301, align 4
  %303 = load i32*, i32** %25, align 8
  %304 = load i32, i32* %17, align 4
  %305 = load i32, i32* %11, align 4
  %306 = add nsw i32 %304, %305
  %307 = load i32, i32* %26, align 4
  %308 = add nsw i32 %306, %307
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i32, i32* %303, i64 %309
  store i32 %302, i32* %310, align 4
  br label %311

311:                                              ; preds = %293
  %312 = load i32, i32* %26, align 4
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* %26, align 4
  %314 = load i32, i32* %12, align 4
  %315 = load i32, i32* %11, align 4
  %316 = sub nsw i32 %314, %315
  %317 = icmp slt i32 %312, %316
  br i1 %317, label %293, label %318

318:                                              ; preds = %311
  br label %319

319:                                              ; preds = %318
  %320 = load i32, i32* %12, align 4
  %321 = load i32, i32* %17, align 4
  %322 = add nsw i32 %321, %320
  store i32 %322, i32* %17, align 4
  %323 = load i32, i32* %11, align 4
  %324 = load i32, i32* %18, align 4
  %325 = add nsw i32 %324, %323
  store i32 %325, i32* %18, align 4
  br label %273

326:                                              ; preds = %273
  %327 = load i32*, i32** %25, align 8
  %328 = load i32**, i32*** %14, align 8
  store i32* %327, i32** %328, align 8
  %329 = load i32, i32* %16, align 4
  %330 = load i32, i32* %12, align 4
  %331 = mul nsw i32 %329, %330
  %332 = load i32*, i32** %15, align 8
  store i32 %331, i32* %332, align 4
  br label %333

333:                                              ; preds = %326, %259
  br label %334

334:                                              ; preds = %333, %252
  br label %335

335:                                              ; preds = %334, %178
  br label %336

336:                                              ; preds = %335, %104
  br label %382

337:                                              ; preds = %7
  %338 = load i32, i32* @NonPagedPool, align 4
  %339 = load i32, i32* %16, align 4
  %340 = load i32, i32* %12, align 4
  %341 = mul nsw i32 %339, %340
  %342 = call i32* @ExAllocatePool(i32 %338, i32 %341)
  store i32* %342, i32** %27, align 8
  %343 = load i32*, i32** %27, align 8
  %344 = icmp ne i32* %343, null
  br i1 %344, label %347, label %345

345:                                              ; preds = %337
  %346 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %346, i32* %8, align 4
  br label %384

347:                                              ; preds = %337
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %348

348:                                              ; preds = %368, %347
  %349 = load i32, i32* %18, align 4
  %350 = load i32, i32* %16, align 4
  %351 = load i32, i32* %11, align 4
  %352 = mul nsw i32 %350, %351
  %353 = icmp slt i32 %349, %352
  br i1 %353, label %354, label %375

354:                                              ; preds = %348
  %355 = load i32*, i32** %27, align 8
  %356 = load i32, i32* %17, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds i32, i32* %355, i64 %357
  %359 = load i32*, i32** %9, align 8
  %360 = load i32, i32* %18, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds i32, i32* %359, i64 %361
  %363 = load i32, i32* %12, align 4
  %364 = load i32, i32* %13, align 4
  %365 = sdiv i32 %364, 8
  %366 = mul nsw i32 %363, %365
  %367 = call i32 @RtlMoveMemory(i32* %358, i32* %362, i32 %366)
  br label %368

368:                                              ; preds = %354
  %369 = load i32, i32* %12, align 4
  %370 = load i32, i32* %17, align 4
  %371 = add nsw i32 %370, %369
  store i32 %371, i32* %17, align 4
  %372 = load i32, i32* %11, align 4
  %373 = load i32, i32* %18, align 4
  %374 = add nsw i32 %373, %372
  store i32 %374, i32* %18, align 4
  br label %348

375:                                              ; preds = %348
  %376 = load i32*, i32** %27, align 8
  %377 = load i32**, i32*** %14, align 8
  store i32* %376, i32** %377, align 8
  %378 = load i32, i32* %16, align 4
  %379 = load i32, i32* %12, align 4
  %380 = mul nsw i32 %378, %379
  %381 = load i32*, i32** %15, align 8
  store i32 %380, i32* %381, align 4
  br label %382

382:                                              ; preds = %375, %336
  %383 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %383, i32* %8, align 4
  br label %384

384:                                              ; preds = %382, %345, %270, %196, %122, %48
  %385 = load i32, i32* %8, align 4
  ret i32 %385
}

declare dso_local i32* @ExAllocatePool(i32, i32) #1

declare dso_local i32 @RtlMoveMemory(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
