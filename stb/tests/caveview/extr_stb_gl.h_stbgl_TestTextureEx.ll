; ModuleID = '/home/carl/AnghaBench/stb/tests/caveview/extr_stb_gl.h_stbgl_TestTextureEx.c'
source_filename = "/home/carl/AnghaBench/stb/tests/caveview/extr_stb_gl.h_stbgl_TestTextureEx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"3m!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stbgl_TestTextureEx(i32 %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca [2 x i32], align 4
  %20 = alloca [2 x i32], align 4
  %21 = alloca [2 x i32], align 4
  %22 = alloca [256 x i8], align 16
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i8*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store i8* %1, i8** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 0
  %43 = load i32, i32* %13, align 4
  store i32 %43, i32* %42, align 4
  %44 = getelementptr inbounds i32, i32* %42, i64 1
  %45 = load i32, i32* %16, align 4
  store i32 %45, i32* %44, align 4
  %46 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 0
  %47 = load i32, i32* %14, align 4
  store i32 %47, i32* %46, align 4
  %48 = getelementptr inbounds i32, i32* %46, i64 1
  %49 = load i32, i32* %18, align 4
  store i32 %49, i32* %48, align 4
  %50 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 0, i64 0
  %51 = load i32, i32* %15, align 4
  store i32 %51, i32* %50, align 4
  %52 = getelementptr inbounds i32, i32* %50, i64 1
  %53 = load i32, i32* %17, align 4
  store i32 %53, i32* %52, align 4
  %54 = load i32, i32* %10, align 4
  %55 = sub nsw i32 %54, 1
  store i32 %55, i32* %25, align 4
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = mul nsw i32 %56, %57
  %59 = mul nsw i32 %58, 3
  %60 = call i64 @malloc(i32 %59)
  %61 = inttoptr i64 %60 to i8*
  store i8* %61, i8** %29, align 8
  %62 = load i32, i32* %25, align 4
  %63 = load i32, i32* %10, align 4
  %64 = and i32 %62, %63
  %65 = icmp eq i32 %64, 0
  %66 = zext i1 %65 to i32
  %67 = call i32 @assert(i32 %66)
  %68 = load i8*, i8** %29, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 0
  store i8 -128, i8* %69, align 1
  store i32 0, i32* %26, align 4
  br label %70

70:                                               ; preds = %80, %9
  %71 = load i32, i32* %26, align 4
  %72 = icmp slt i32 %71, 16
  br i1 %72, label %73, label %83

73:                                               ; preds = %70
  %74 = load i32, i32* %26, align 4
  %75 = shl i32 1, %74
  %76 = load i32, i32* %10, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  br label %83

79:                                               ; preds = %73
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %26, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %26, align 4
  br label %70

83:                                               ; preds = %78, %70
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* %26, align 4
  %86 = shl i32 1, %85
  %87 = icmp eq i32 %84, %86
  %88 = zext i1 %87 to i32
  %89 = call i32 @assert(i32 %88)
  %90 = load i32, i32* %26, align 4
  %91 = sub nsw i32 %90, 1
  store i32 %91, i32* %27, align 4
  br label %92

92:                                               ; preds = %332, %83
  %93 = load i32, i32* %27, align 4
  %94 = icmp sge i32 %93, 0
  br i1 %94, label %95, label %335

95:                                               ; preds = %92
  %96 = load i32, i32* %27, align 4
  %97 = shl i32 1, %96
  store i32 %97, i32* %30, align 4
  store i32 0, i32* %24, align 4
  br label %98

98:                                               ; preds = %222, %95
  %99 = load i32, i32* %24, align 4
  %100 = load i32, i32* %10, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %227

102:                                              ; preds = %98
  store i32 0, i32* %23, align 4
  br label %103

103:                                              ; preds = %216, %102
  %104 = load i32, i32* %23, align 4
  %105 = load i32, i32* %10, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %221

107:                                              ; preds = %103
  %108 = load i32, i32* %23, align 4
  %109 = load i32, i32* %30, align 4
  %110 = add nsw i32 %108, %109
  store i32 %110, i32* %31, align 4
  %111 = load i32, i32* %24, align 4
  %112 = load i32, i32* %30, align 4
  %113 = add nsw i32 %111, %112
  store i32 %113, i32* %32, align 4
  %114 = load i32, i32* %23, align 4
  %115 = load i32, i32* %30, align 4
  %116 = mul nsw i32 %115, 2
  %117 = add nsw i32 %114, %116
  %118 = load i32, i32* %25, align 4
  %119 = and i32 %117, %118
  store i32 %119, i32* %33, align 4
  %120 = load i32, i32* %24, align 4
  %121 = load i32, i32* %30, align 4
  %122 = mul nsw i32 %121, 2
  %123 = add nsw i32 %120, %122
  %124 = load i32, i32* %25, align 4
  %125 = and i32 %123, %124
  store i32 %125, i32* %34, align 4
  %126 = load i8*, i8** %29, align 8
  %127 = load i32, i32* %24, align 4
  %128 = load i32, i32* %10, align 4
  %129 = mul nsw i32 %127, %128
  %130 = load i32, i32* %23, align 4
  %131 = add nsw i32 %129, %130
  %132 = mul nsw i32 %131, 3
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8, i8* %126, i64 %133
  %135 = load i8, i8* %134, align 1
  %136 = zext i8 %135 to i32
  store i32 %136, i32* %35, align 4
  %137 = load i8*, i8** %29, align 8
  %138 = load i32, i32* %34, align 4
  %139 = load i32, i32* %10, align 4
  %140 = mul nsw i32 %138, %139
  %141 = load i32, i32* %23, align 4
  %142 = add nsw i32 %140, %141
  %143 = mul nsw i32 %142, 3
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8, i8* %137, i64 %144
  %146 = load i8, i8* %145, align 1
  %147 = zext i8 %146 to i32
  store i32 %147, i32* %36, align 4
  %148 = load i8*, i8** %29, align 8
  %149 = load i32, i32* %24, align 4
  %150 = load i32, i32* %10, align 4
  %151 = mul nsw i32 %149, %150
  %152 = load i32, i32* %33, align 4
  %153 = add nsw i32 %151, %152
  %154 = mul nsw i32 %153, 3
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i8, i8* %148, i64 %155
  %157 = load i8, i8* %156, align 1
  %158 = zext i8 %157 to i32
  store i32 %158, i32* %37, align 4
  %159 = load i8*, i8** %29, align 8
  %160 = load i32, i32* %34, align 4
  %161 = load i32, i32* %10, align 4
  %162 = mul nsw i32 %160, %161
  %163 = load i32, i32* %33, align 4
  %164 = add nsw i32 %162, %163
  %165 = mul nsw i32 %164, 3
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i8, i8* %159, i64 %166
  %168 = load i8, i8* %167, align 1
  %169 = zext i8 %168 to i32
  store i32 %169, i32* %38, align 4
  %170 = load i32, i32* %35, align 4
  %171 = load i32, i32* %37, align 4
  %172 = add nsw i32 %170, %171
  %173 = ashr i32 %172, 1
  %174 = trunc i32 %173 to i8
  %175 = load i8*, i8** %29, align 8
  %176 = load i32, i32* %24, align 4
  %177 = load i32, i32* %10, align 4
  %178 = mul nsw i32 %176, %177
  %179 = load i32, i32* %31, align 4
  %180 = add nsw i32 %178, %179
  %181 = mul nsw i32 %180, 3
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i8, i8* %175, i64 %182
  store i8 %174, i8* %183, align 1
  %184 = load i32, i32* %35, align 4
  %185 = load i32, i32* %36, align 4
  %186 = add nsw i32 %184, %185
  %187 = ashr i32 %186, 1
  %188 = trunc i32 %187 to i8
  %189 = load i8*, i8** %29, align 8
  %190 = load i32, i32* %32, align 4
  %191 = load i32, i32* %10, align 4
  %192 = mul nsw i32 %190, %191
  %193 = load i32, i32* %23, align 4
  %194 = add nsw i32 %192, %193
  %195 = mul nsw i32 %194, 3
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i8, i8* %189, i64 %196
  store i8 %188, i8* %197, align 1
  %198 = load i32, i32* %35, align 4
  %199 = load i32, i32* %36, align 4
  %200 = add nsw i32 %198, %199
  %201 = load i32, i32* %37, align 4
  %202 = add nsw i32 %200, %201
  %203 = load i32, i32* %38, align 4
  %204 = add nsw i32 %202, %203
  %205 = ashr i32 %204, 2
  %206 = trunc i32 %205 to i8
  %207 = load i8*, i8** %29, align 8
  %208 = load i32, i32* %32, align 4
  %209 = load i32, i32* %10, align 4
  %210 = mul nsw i32 %208, %209
  %211 = load i32, i32* %31, align 4
  %212 = add nsw i32 %210, %211
  %213 = mul nsw i32 %212, 3
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i8, i8* %207, i64 %214
  store i8 %206, i8* %215, align 1
  br label %216

216:                                              ; preds = %107
  %217 = load i32, i32* %30, align 4
  %218 = mul nsw i32 %217, 2
  %219 = load i32, i32* %23, align 4
  %220 = add nsw i32 %219, %218
  store i32 %220, i32* %23, align 4
  br label %103

221:                                              ; preds = %103
  br label %222

222:                                              ; preds = %221
  %223 = load i32, i32* %30, align 4
  %224 = mul nsw i32 %223, 2
  %225 = load i32, i32* %24, align 4
  %226 = add nsw i32 %225, %224
  store i32 %226, i32* %24, align 4
  br label %98

227:                                              ; preds = %98
  %228 = load i8*, i8** %11, align 8
  %229 = load i32, i32* %26, align 4
  %230 = load i32, i32* %27, align 4
  %231 = sub nsw i32 %229, %230
  %232 = add nsw i32 %231, 1
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i8, i8* %228, i64 %233
  %235 = load i8, i8* %234, align 1
  %236 = sext i8 %235 to i32
  store i32 %236, i32* %28, align 4
  %237 = load i32, i32* %28, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %240, label %239

239:                                              ; preds = %227
  br label %332

240:                                              ; preds = %227
  store i32 0, i32* %24, align 4
  store i32 0, i32* %23, align 4
  br label %241

241:                                              ; preds = %267, %240
  %242 = load i32, i32* %23, align 4
  %243 = icmp slt i32 %242, 256
  br i1 %243, label %244, label %269

244:                                              ; preds = %241
  %245 = load i32, i32* %24, align 4
  %246 = trunc i32 %245 to i8
  %247 = load i32, i32* %23, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds [256 x i8], [256 x i8]* %22, i64 0, i64 %248
  store i8 %246, i8* %249, align 1
  %250 = load i32, i32* %24, align 4
  %251 = sub nsw i32 0, %250
  %252 = trunc i32 %251 to i8
  %253 = load i32, i32* %23, align 4
  %254 = add nsw i32 %253, 1
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds [256 x i8], [256 x i8]* %22, i64 0, i64 %255
  store i8 %252, i8* %256, align 1
  br label %257

257:                                              ; preds = %244
  %258 = load i32, i32* %23, align 4
  %259 = add nsw i32 %258, 2
  store i32 %259, i32* %23, align 4
  %260 = load i32, i32* %24, align 4
  %261 = load i32, i32* %28, align 4
  %262 = icmp eq i32 %260, %261
  br i1 %262, label %263, label %264

263:                                              ; preds = %257
  store i32 0, i32* %24, align 4
  br label %267

264:                                              ; preds = %257
  %265 = load i32, i32* %24, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %24, align 4
  br label %267

267:                                              ; preds = %264, %263
  %268 = phi i32 [ 0, %263 ], [ %266, %264 ]
  br label %241

269:                                              ; preds = %241
  store i32 0, i32* %24, align 4
  br label %270

270:                                              ; preds = %327, %269
  %271 = load i32, i32* %24, align 4
  %272 = load i32, i32* %10, align 4
  %273 = icmp slt i32 %271, %272
  br i1 %273, label %274, label %331

274:                                              ; preds = %270
  store i32 0, i32* %23, align 4
  br label %275

275:                                              ; preds = %322, %274
  %276 = load i32, i32* %23, align 4
  %277 = load i32, i32* %10, align 4
  %278 = icmp slt i32 %276, %277
  br i1 %278, label %279, label %326

279:                                              ; preds = %275
  %280 = load i8*, i8** %29, align 8
  %281 = load i32, i32* %24, align 4
  %282 = load i32, i32* %10, align 4
  %283 = mul nsw i32 %281, %282
  %284 = load i32, i32* %23, align 4
  %285 = add nsw i32 %283, %284
  %286 = mul nsw i32 %285, 3
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i8, i8* %280, i64 %287
  %289 = load i8, i8* %288, align 1
  %290 = zext i8 %289 to i32
  %291 = call i32 (...) @stbgl_rand()
  %292 = ashr i32 %291, 12
  %293 = and i32 %292, 255
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds [256 x i8], [256 x i8]* %22, i64 0, i64 %294
  %296 = load i8, i8* %295, align 1
  %297 = sext i8 %296 to i32
  %298 = add nsw i32 %290, %297
  store i32 %298, i32* %39, align 4
  %299 = load i32, i32* %39, align 4
  %300 = icmp slt i32 %299, 0
  br i1 %300, label %301, label %302

301:                                              ; preds = %279
  br label %310

302:                                              ; preds = %279
  %303 = load i32, i32* %39, align 4
  %304 = icmp sgt i32 %303, 255
  br i1 %304, label %305, label %306

305:                                              ; preds = %302
  br label %308

306:                                              ; preds = %302
  %307 = load i32, i32* %39, align 4
  br label %308

308:                                              ; preds = %306, %305
  %309 = phi i32 [ 255, %305 ], [ %307, %306 ]
  br label %310

310:                                              ; preds = %308, %301
  %311 = phi i32 [ 0, %301 ], [ %309, %308 ]
  %312 = trunc i32 %311 to i8
  %313 = load i8*, i8** %29, align 8
  %314 = load i32, i32* %24, align 4
  %315 = load i32, i32* %10, align 4
  %316 = mul nsw i32 %314, %315
  %317 = load i32, i32* %23, align 4
  %318 = add nsw i32 %316, %317
  %319 = mul nsw i32 %318, 3
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds i8, i8* %313, i64 %320
  store i8 %312, i8* %321, align 1
  br label %322

322:                                              ; preds = %310
  %323 = load i32, i32* %30, align 4
  %324 = load i32, i32* %23, align 4
  %325 = add nsw i32 %324, %323
  store i32 %325, i32* %23, align 4
  br label %275

326:                                              ; preds = %275
  br label %327

327:                                              ; preds = %326
  %328 = load i32, i32* %30, align 4
  %329 = load i32, i32* %24, align 4
  %330 = add nsw i32 %329, %328
  store i32 %330, i32* %24, align 4
  br label %270

331:                                              ; preds = %270
  br label %332

332:                                              ; preds = %331, %239
  %333 = load i32, i32* %27, align 4
  %334 = add nsw i32 %333, -1
  store i32 %334, i32* %27, align 4
  br label %92

335:                                              ; preds = %92
  store i32 0, i32* %24, align 4
  br label %336

336:                                              ; preds = %423, %335
  %337 = load i32, i32* %24, align 4
  %338 = load i32, i32* %10, align 4
  %339 = icmp slt i32 %337, %338
  br i1 %339, label %340, label %426

340:                                              ; preds = %336
  store i32 0, i32* %23, align 4
  br label %341

341:                                              ; preds = %419, %340
  %342 = load i32, i32* %23, align 4
  %343 = load i32, i32* %10, align 4
  %344 = icmp slt i32 %342, %343
  br i1 %344, label %345, label %422

345:                                              ; preds = %341
  %346 = load i32, i32* %23, align 4
  %347 = load i32, i32* %24, align 4
  %348 = xor i32 %346, %347
  %349 = load i32, i32* %26, align 4
  %350 = load i32, i32* %12, align 4
  %351 = sub nsw i32 %349, %350
  %352 = shl i32 1, %351
  %353 = and i32 %348, %352
  %354 = icmp eq i32 %353, 0
  %355 = zext i1 %354 to i32
  store i32 %355, i32* %40, align 4
  %356 = load i8*, i8** %29, align 8
  %357 = load i32, i32* %24, align 4
  %358 = load i32, i32* %10, align 4
  %359 = mul nsw i32 %357, %358
  %360 = load i32, i32* %23, align 4
  %361 = add nsw i32 %359, %360
  %362 = mul nsw i32 %361, 3
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds i8, i8* %356, i64 %363
  %365 = load i8, i8* %364, align 1
  %366 = zext i8 %365 to i32
  %367 = ashr i32 %366, 2
  store i32 %367, i32* %41, align 4
  %368 = load i32, i32* %40, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 %369
  %371 = load i32, i32* %370, align 4
  %372 = load i32, i32* %41, align 4
  %373 = sub nsw i32 %371, %372
  %374 = trunc i32 %373 to i8
  %375 = load i8*, i8** %29, align 8
  %376 = load i32, i32* %24, align 4
  %377 = load i32, i32* %10, align 4
  %378 = mul nsw i32 %376, %377
  %379 = load i32, i32* %23, align 4
  %380 = add nsw i32 %378, %379
  %381 = mul nsw i32 %380, 3
  %382 = add nsw i32 %381, 0
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds i8, i8* %375, i64 %383
  store i8 %374, i8* %384, align 1
  %385 = load i32, i32* %40, align 4
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 %386
  %388 = load i32, i32* %387, align 4
  %389 = load i32, i32* %41, align 4
  %390 = sub nsw i32 %388, %389
  %391 = trunc i32 %390 to i8
  %392 = load i8*, i8** %29, align 8
  %393 = load i32, i32* %24, align 4
  %394 = load i32, i32* %10, align 4
  %395 = mul nsw i32 %393, %394
  %396 = load i32, i32* %23, align 4
  %397 = add nsw i32 %395, %396
  %398 = mul nsw i32 %397, 3
  %399 = add nsw i32 %398, 1
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds i8, i8* %392, i64 %400
  store i8 %391, i8* %401, align 1
  %402 = load i32, i32* %40, align 4
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 0, i64 %403
  %405 = load i32, i32* %404, align 4
  %406 = load i32, i32* %41, align 4
  %407 = sub nsw i32 %405, %406
  %408 = trunc i32 %407 to i8
  %409 = load i8*, i8** %29, align 8
  %410 = load i32, i32* %24, align 4
  %411 = load i32, i32* %10, align 4
  %412 = mul nsw i32 %410, %411
  %413 = load i32, i32* %23, align 4
  %414 = add nsw i32 %412, %413
  %415 = mul nsw i32 %414, 3
  %416 = add nsw i32 %415, 2
  %417 = sext i32 %416 to i64
  %418 = getelementptr inbounds i8, i8* %409, i64 %417
  store i8 %408, i8* %418, align 1
  br label %419

419:                                              ; preds = %345
  %420 = load i32, i32* %23, align 4
  %421 = add nsw i32 %420, 1
  store i32 %421, i32* %23, align 4
  br label %341

422:                                              ; preds = %341
  br label %423

423:                                              ; preds = %422
  %424 = load i32, i32* %24, align 4
  %425 = add nsw i32 %424, 1
  store i32 %425, i32* %24, align 4
  br label %336

426:                                              ; preds = %336
  %427 = load i32, i32* %10, align 4
  %428 = load i32, i32* %10, align 4
  %429 = load i8*, i8** %29, align 8
  %430 = call i32 @stbgl_TexImage2D(i32 0, i32 %427, i32 %428, i8* %429, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  ret i32 %430
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @stbgl_rand(...) #1

declare dso_local i32 @stbgl_TexImage2D(i32, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
