; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_filter/deinterlace/extr_algo_x.c_XDeint8x8FieldC.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_filter/deinterlace/extr_algo_x.c_XDeint8x8FieldC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32)* @XDeint8x8FieldC to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @XDeint8x8FieldC(i32* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %480, %4
  %16 = load i32, i32* %9, align 4
  %17 = icmp slt i32 %16, 8
  br i1 %17, label %18, label %483

18:                                               ; preds = %15
  %19 = load i32*, i32** %5, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = call i32 @memcpy(i32* %19, i32* %20, i32 8)
  %22 = load i32, i32* %6, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = sext i32 %22 to i64
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  store i32* %25, i32** %5, align 8
  store i32 0, i32* %10, align 4
  br label %26

26:                                               ; preds = %466, %18
  %27 = load i32, i32* %10, align 4
  %28 = icmp slt i32 %27, 8
  br i1 %28, label %29, label %469

29:                                               ; preds = %26
  %30 = load i32*, i32** %7, align 8
  %31 = load i32, i32* %8, align 4
  %32 = mul nsw i32 2, %31
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  store i32* %34, i32** %11, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* %10, align 4
  %37 = sub nsw i32 %36, 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %11, align 8
  %42 = load i32, i32* %10, align 4
  %43 = sub nsw i32 %42, 2
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %41, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = sub nsw i32 %40, %46
  %48 = call i32 @abs(i32 %47) #3
  %49 = load i32*, i32** %7, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sub nsw i32 %50, 3
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %11, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sub nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %55, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = sub nsw i32 %54, %60
  %62 = call i32 @abs(i32 %61) #3
  %63 = add nsw i32 %48, %62
  %64 = load i32*, i32** %7, align 8
  %65 = load i32, i32* %10, align 4
  %66 = sub nsw i32 %65, 2
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %64, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** %11, align 8
  %71 = load i32, i32* %10, align 4
  %72 = add nsw i32 %71, 0
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %70, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = sub nsw i32 %69, %75
  %77 = call i32 @abs(i32 %76) #3
  %78 = add nsw i32 %63, %77
  %79 = load i32*, i32** %7, align 8
  %80 = load i32, i32* %10, align 4
  %81 = sub nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %79, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = load i32*, i32** %11, align 8
  %86 = load i32, i32* %10, align 4
  %87 = add nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %85, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = sub nsw i32 %84, %90
  %92 = call i32 @abs(i32 %91) #3
  %93 = add nsw i32 %78, %92
  %94 = load i32*, i32** %7, align 8
  %95 = load i32, i32* %10, align 4
  %96 = add nsw i32 %95, 0
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %94, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = load i32*, i32** %11, align 8
  %101 = load i32, i32* %10, align 4
  %102 = add nsw i32 %101, 2
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %100, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = sub nsw i32 %99, %105
  %107 = call i32 @abs(i32 %106) #3
  %108 = add nsw i32 %93, %107
  %109 = load i32*, i32** %7, align 8
  %110 = load i32, i32* %10, align 4
  %111 = add nsw i32 %110, 1
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %109, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = load i32*, i32** %11, align 8
  %116 = load i32, i32* %10, align 4
  %117 = add nsw i32 %116, 3
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %115, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = sub nsw i32 %114, %120
  %122 = call i32 @abs(i32 %121) #3
  %123 = add nsw i32 %108, %122
  %124 = load i32*, i32** %7, align 8
  %125 = load i32, i32* %10, align 4
  %126 = add nsw i32 %125, 2
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %124, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = load i32*, i32** %11, align 8
  %131 = load i32, i32* %10, align 4
  %132 = add nsw i32 %131, 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %130, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = sub nsw i32 %129, %135
  %137 = call i32 @abs(i32 %136) #3
  %138 = add nsw i32 %123, %137
  %139 = load i32*, i32** %7, align 8
  %140 = load i32, i32* %10, align 4
  %141 = add nsw i32 %140, 3
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %139, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = load i32*, i32** %11, align 8
  %146 = load i32, i32* %10, align 4
  %147 = add nsw i32 %146, 5
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %145, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = sub nsw i32 %144, %150
  %152 = call i32 @abs(i32 %151) #3
  %153 = add nsw i32 %138, %152
  store i32 %153, i32* %12, align 4
  %154 = load i32*, i32** %7, align 8
  %155 = load i32, i32* %10, align 4
  %156 = sub nsw i32 %155, 3
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %154, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = load i32*, i32** %11, align 8
  %161 = load i32, i32* %10, align 4
  %162 = sub nsw i32 %161, 3
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %160, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = sub nsw i32 %159, %165
  %167 = call i32 @abs(i32 %166) #3
  %168 = load i32*, i32** %7, align 8
  %169 = load i32, i32* %10, align 4
  %170 = sub nsw i32 %169, 2
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %168, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = load i32*, i32** %11, align 8
  %175 = load i32, i32* %10, align 4
  %176 = sub nsw i32 %175, 2
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %174, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = sub nsw i32 %173, %179
  %181 = call i32 @abs(i32 %180) #3
  %182 = add nsw i32 %167, %181
  %183 = load i32*, i32** %7, align 8
  %184 = load i32, i32* %10, align 4
  %185 = sub nsw i32 %184, 1
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %183, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = load i32*, i32** %11, align 8
  %190 = load i32, i32* %10, align 4
  %191 = sub nsw i32 %190, 1
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %189, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = sub nsw i32 %188, %194
  %196 = call i32 @abs(i32 %195) #3
  %197 = add nsw i32 %182, %196
  %198 = load i32*, i32** %7, align 8
  %199 = load i32, i32* %10, align 4
  %200 = add nsw i32 %199, 0
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %198, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = load i32*, i32** %11, align 8
  %205 = load i32, i32* %10, align 4
  %206 = add nsw i32 %205, 0
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %204, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = sub nsw i32 %203, %209
  %211 = call i32 @abs(i32 %210) #3
  %212 = add nsw i32 %197, %211
  %213 = load i32*, i32** %7, align 8
  %214 = load i32, i32* %10, align 4
  %215 = add nsw i32 %214, 1
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %213, i64 %216
  %218 = load i32, i32* %217, align 4
  %219 = load i32*, i32** %11, align 8
  %220 = load i32, i32* %10, align 4
  %221 = add nsw i32 %220, 1
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %219, i64 %222
  %224 = load i32, i32* %223, align 4
  %225 = sub nsw i32 %218, %224
  %226 = call i32 @abs(i32 %225) #3
  %227 = add nsw i32 %212, %226
  %228 = load i32*, i32** %7, align 8
  %229 = load i32, i32* %10, align 4
  %230 = add nsw i32 %229, 2
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i32, i32* %228, i64 %231
  %233 = load i32, i32* %232, align 4
  %234 = load i32*, i32** %11, align 8
  %235 = load i32, i32* %10, align 4
  %236 = add nsw i32 %235, 2
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32, i32* %234, i64 %237
  %239 = load i32, i32* %238, align 4
  %240 = sub nsw i32 %233, %239
  %241 = call i32 @abs(i32 %240) #3
  %242 = add nsw i32 %227, %241
  %243 = load i32*, i32** %7, align 8
  %244 = load i32, i32* %10, align 4
  %245 = add nsw i32 %244, 3
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i32, i32* %243, i64 %246
  %248 = load i32, i32* %247, align 4
  %249 = load i32*, i32** %11, align 8
  %250 = load i32, i32* %10, align 4
  %251 = add nsw i32 %250, 3
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i32, i32* %249, i64 %252
  %254 = load i32, i32* %253, align 4
  %255 = sub nsw i32 %248, %254
  %256 = call i32 @abs(i32 %255) #3
  %257 = add nsw i32 %242, %256
  %258 = load i32*, i32** %7, align 8
  %259 = load i32, i32* %10, align 4
  %260 = add nsw i32 %259, 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i32, i32* %258, i64 %261
  %263 = load i32, i32* %262, align 4
  %264 = load i32*, i32** %11, align 8
  %265 = load i32, i32* %10, align 4
  %266 = add nsw i32 %265, 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i32, i32* %264, i64 %267
  %269 = load i32, i32* %268, align 4
  %270 = sub nsw i32 %263, %269
  %271 = call i32 @abs(i32 %270) #3
  %272 = add nsw i32 %257, %271
  store i32 %272, i32* %13, align 4
  %273 = load i32*, i32** %7, align 8
  %274 = load i32, i32* %10, align 4
  %275 = sub nsw i32 %274, 2
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i32, i32* %273, i64 %276
  %278 = load i32, i32* %277, align 4
  %279 = load i32*, i32** %11, align 8
  %280 = load i32, i32* %10, align 4
  %281 = sub nsw i32 %280, 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i32, i32* %279, i64 %282
  %284 = load i32, i32* %283, align 4
  %285 = sub nsw i32 %278, %284
  %286 = call i32 @abs(i32 %285) #3
  %287 = load i32*, i32** %7, align 8
  %288 = load i32, i32* %10, align 4
  %289 = sub nsw i32 %288, 1
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i32, i32* %287, i64 %290
  %292 = load i32, i32* %291, align 4
  %293 = load i32*, i32** %11, align 8
  %294 = load i32, i32* %10, align 4
  %295 = sub nsw i32 %294, 3
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i32, i32* %293, i64 %296
  %298 = load i32, i32* %297, align 4
  %299 = sub nsw i32 %292, %298
  %300 = call i32 @abs(i32 %299) #3
  %301 = add nsw i32 %286, %300
  %302 = load i32*, i32** %7, align 8
  %303 = load i32, i32* %10, align 4
  %304 = add nsw i32 %303, 0
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds i32, i32* %302, i64 %305
  %307 = load i32, i32* %306, align 4
  %308 = load i32*, i32** %11, align 8
  %309 = load i32, i32* %10, align 4
  %310 = sub nsw i32 %309, 2
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i32, i32* %308, i64 %311
  %313 = load i32, i32* %312, align 4
  %314 = sub nsw i32 %307, %313
  %315 = call i32 @abs(i32 %314) #3
  %316 = add nsw i32 %301, %315
  %317 = load i32*, i32** %7, align 8
  %318 = load i32, i32* %10, align 4
  %319 = add nsw i32 %318, 1
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds i32, i32* %317, i64 %320
  %322 = load i32, i32* %321, align 4
  %323 = load i32*, i32** %11, align 8
  %324 = load i32, i32* %10, align 4
  %325 = sub nsw i32 %324, 1
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds i32, i32* %323, i64 %326
  %328 = load i32, i32* %327, align 4
  %329 = sub nsw i32 %322, %328
  %330 = call i32 @abs(i32 %329) #3
  %331 = add nsw i32 %316, %330
  %332 = load i32*, i32** %7, align 8
  %333 = load i32, i32* %10, align 4
  %334 = add nsw i32 %333, 2
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds i32, i32* %332, i64 %335
  %337 = load i32, i32* %336, align 4
  %338 = load i32*, i32** %11, align 8
  %339 = load i32, i32* %10, align 4
  %340 = add nsw i32 %339, 0
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds i32, i32* %338, i64 %341
  %343 = load i32, i32* %342, align 4
  %344 = sub nsw i32 %337, %343
  %345 = call i32 @abs(i32 %344) #3
  %346 = add nsw i32 %331, %345
  %347 = load i32*, i32** %7, align 8
  %348 = load i32, i32* %10, align 4
  %349 = add nsw i32 %348, 3
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds i32, i32* %347, i64 %350
  %352 = load i32, i32* %351, align 4
  %353 = load i32*, i32** %11, align 8
  %354 = load i32, i32* %10, align 4
  %355 = add nsw i32 %354, 1
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds i32, i32* %353, i64 %356
  %358 = load i32, i32* %357, align 4
  %359 = sub nsw i32 %352, %358
  %360 = call i32 @abs(i32 %359) #3
  %361 = add nsw i32 %346, %360
  %362 = load i32*, i32** %7, align 8
  %363 = load i32, i32* %10, align 4
  %364 = add nsw i32 %363, 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds i32, i32* %362, i64 %365
  %367 = load i32, i32* %366, align 4
  %368 = load i32*, i32** %11, align 8
  %369 = load i32, i32* %10, align 4
  %370 = add nsw i32 %369, 2
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds i32, i32* %368, i64 %371
  %373 = load i32, i32* %372, align 4
  %374 = sub nsw i32 %367, %373
  %375 = call i32 @abs(i32 %374) #3
  %376 = add nsw i32 %361, %375
  %377 = load i32*, i32** %7, align 8
  %378 = load i32, i32* %10, align 4
  %379 = add nsw i32 %378, 5
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds i32, i32* %377, i64 %380
  %382 = load i32, i32* %381, align 4
  %383 = load i32*, i32** %11, align 8
  %384 = load i32, i32* %10, align 4
  %385 = add nsw i32 %384, 3
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds i32, i32* %383, i64 %386
  %388 = load i32, i32* %387, align 4
  %389 = sub nsw i32 %382, %388
  %390 = call i32 @abs(i32 %389) #3
  %391 = add nsw i32 %376, %390
  store i32 %391, i32* %14, align 4
  %392 = load i32, i32* %12, align 4
  %393 = load i32, i32* %13, align 4
  %394 = icmp slt i32 %392, %393
  br i1 %394, label %395, label %418

395:                                              ; preds = %29
  %396 = load i32, i32* %13, align 4
  %397 = load i32, i32* %14, align 4
  %398 = icmp sle i32 %396, %397
  br i1 %398, label %399, label %418

399:                                              ; preds = %395
  %400 = load i32*, i32** %7, align 8
  %401 = load i32, i32* %10, align 4
  %402 = sub nsw i32 %401, 1
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds i32, i32* %400, i64 %403
  %405 = load i32, i32* %404, align 4
  %406 = load i32*, i32** %11, align 8
  %407 = load i32, i32* %10, align 4
  %408 = add nsw i32 %407, 1
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds i32, i32* %406, i64 %409
  %411 = load i32, i32* %410, align 4
  %412 = add nsw i32 %405, %411
  %413 = ashr i32 %412, 1
  %414 = load i32*, i32** %5, align 8
  %415 = load i32, i32* %10, align 4
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds i32, i32* %414, i64 %416
  store i32 %413, i32* %417, align 4
  br label %465

418:                                              ; preds = %395, %29
  %419 = load i32, i32* %14, align 4
  %420 = load i32, i32* %13, align 4
  %421 = icmp slt i32 %419, %420
  br i1 %421, label %422, label %445

422:                                              ; preds = %418
  %423 = load i32, i32* %13, align 4
  %424 = load i32, i32* %12, align 4
  %425 = icmp sle i32 %423, %424
  br i1 %425, label %426, label %445

426:                                              ; preds = %422
  %427 = load i32*, i32** %7, align 8
  %428 = load i32, i32* %10, align 4
  %429 = add nsw i32 %428, 1
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds i32, i32* %427, i64 %430
  %432 = load i32, i32* %431, align 4
  %433 = load i32*, i32** %11, align 8
  %434 = load i32, i32* %10, align 4
  %435 = sub nsw i32 %434, 1
  %436 = sext i32 %435 to i64
  %437 = getelementptr inbounds i32, i32* %433, i64 %436
  %438 = load i32, i32* %437, align 4
  %439 = add nsw i32 %432, %438
  %440 = ashr i32 %439, 1
  %441 = load i32*, i32** %5, align 8
  %442 = load i32, i32* %10, align 4
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds i32, i32* %441, i64 %443
  store i32 %440, i32* %444, align 4
  br label %464

445:                                              ; preds = %422, %418
  %446 = load i32*, i32** %7, align 8
  %447 = load i32, i32* %10, align 4
  %448 = add nsw i32 %447, 0
  %449 = sext i32 %448 to i64
  %450 = getelementptr inbounds i32, i32* %446, i64 %449
  %451 = load i32, i32* %450, align 4
  %452 = load i32*, i32** %11, align 8
  %453 = load i32, i32* %10, align 4
  %454 = add nsw i32 %453, 0
  %455 = sext i32 %454 to i64
  %456 = getelementptr inbounds i32, i32* %452, i64 %455
  %457 = load i32, i32* %456, align 4
  %458 = add nsw i32 %451, %457
  %459 = ashr i32 %458, 1
  %460 = load i32*, i32** %5, align 8
  %461 = load i32, i32* %10, align 4
  %462 = sext i32 %461 to i64
  %463 = getelementptr inbounds i32, i32* %460, i64 %462
  store i32 %459, i32* %463, align 4
  br label %464

464:                                              ; preds = %445, %426
  br label %465

465:                                              ; preds = %464, %399
  br label %466

466:                                              ; preds = %465
  %467 = load i32, i32* %10, align 4
  %468 = add nsw i32 %467, 1
  store i32 %468, i32* %10, align 4
  br label %26

469:                                              ; preds = %26
  %470 = load i32, i32* %6, align 4
  %471 = mul nsw i32 1, %470
  %472 = load i32*, i32** %5, align 8
  %473 = sext i32 %471 to i64
  %474 = getelementptr inbounds i32, i32* %472, i64 %473
  store i32* %474, i32** %5, align 8
  %475 = load i32, i32* %8, align 4
  %476 = mul nsw i32 2, %475
  %477 = load i32*, i32** %7, align 8
  %478 = sext i32 %476 to i64
  %479 = getelementptr inbounds i32, i32* %477, i64 %478
  store i32* %479, i32** %7, align 8
  br label %480

480:                                              ; preds = %469
  %481 = load i32, i32* %9, align 4
  %482 = add nsw i32 %481, 2
  store i32 %482, i32* %9, align 4
  br label %15

483:                                              ; preds = %15
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
