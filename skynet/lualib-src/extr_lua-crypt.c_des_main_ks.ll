; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-crypt.c_des_main_ks.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-crypt.c_des_main_ks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LHs = common dso_local global i32* null, align 8
@RHs = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @des_main_ks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @des_main_ks(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load i32, i32* %6, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @GET_UINT32(i32 %9, i32* %10, i32 0)
  %12 = load i32, i32* %7, align 4
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @GET_UINT32(i32 %12, i32* %13, i32 4)
  %15 = load i32, i32* %7, align 4
  %16 = ashr i32 %15, 4
  %17 = load i32, i32* %6, align 4
  %18 = xor i32 %16, %17
  %19 = and i32 %18, 252645135
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %6, align 4
  %22 = xor i32 %21, %20
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %8, align 4
  %24 = shl i32 %23, 4
  %25 = load i32, i32* %7, align 4
  %26 = xor i32 %25, %24
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %6, align 4
  %29 = xor i32 %27, %28
  %30 = and i32 %29, 269488144
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %6, align 4
  %33 = xor i32 %32, %31
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %7, align 4
  %36 = xor i32 %35, %34
  store i32 %36, i32* %7, align 4
  %37 = load i32*, i32** @LHs, align 8
  %38 = load i32, i32* %6, align 4
  %39 = and i32 %38, 15
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %37, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = shl i32 %42, 3
  %44 = load i32*, i32** @LHs, align 8
  %45 = load i32, i32* %6, align 4
  %46 = ashr i32 %45, 8
  %47 = and i32 %46, 15
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %44, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = shl i32 %50, 2
  %52 = or i32 %43, %51
  %53 = load i32*, i32** @LHs, align 8
  %54 = load i32, i32* %6, align 4
  %55 = ashr i32 %54, 16
  %56 = and i32 %55, 15
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %53, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = shl i32 %59, 1
  %61 = or i32 %52, %60
  %62 = load i32*, i32** @LHs, align 8
  %63 = load i32, i32* %6, align 4
  %64 = ashr i32 %63, 24
  %65 = and i32 %64, 15
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %62, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %61, %68
  %70 = load i32*, i32** @LHs, align 8
  %71 = load i32, i32* %6, align 4
  %72 = ashr i32 %71, 5
  %73 = and i32 %72, 15
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %70, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = shl i32 %76, 7
  %78 = or i32 %69, %77
  %79 = load i32*, i32** @LHs, align 8
  %80 = load i32, i32* %6, align 4
  %81 = ashr i32 %80, 13
  %82 = and i32 %81, 15
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %79, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = shl i32 %85, 6
  %87 = or i32 %78, %86
  %88 = load i32*, i32** @LHs, align 8
  %89 = load i32, i32* %6, align 4
  %90 = ashr i32 %89, 21
  %91 = and i32 %90, 15
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %88, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = shl i32 %94, 5
  %96 = or i32 %87, %95
  %97 = load i32*, i32** @LHs, align 8
  %98 = load i32, i32* %6, align 4
  %99 = ashr i32 %98, 29
  %100 = and i32 %99, 15
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %97, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = shl i32 %103, 4
  %105 = or i32 %96, %104
  store i32 %105, i32* %6, align 4
  %106 = load i32*, i32** @RHs, align 8
  %107 = load i32, i32* %7, align 4
  %108 = ashr i32 %107, 1
  %109 = and i32 %108, 15
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %106, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = shl i32 %112, 3
  %114 = load i32*, i32** @RHs, align 8
  %115 = load i32, i32* %7, align 4
  %116 = ashr i32 %115, 9
  %117 = and i32 %116, 15
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %114, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = shl i32 %120, 2
  %122 = or i32 %113, %121
  %123 = load i32*, i32** @RHs, align 8
  %124 = load i32, i32* %7, align 4
  %125 = ashr i32 %124, 17
  %126 = and i32 %125, 15
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %123, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = shl i32 %129, 1
  %131 = or i32 %122, %130
  %132 = load i32*, i32** @RHs, align 8
  %133 = load i32, i32* %7, align 4
  %134 = ashr i32 %133, 25
  %135 = and i32 %134, 15
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %132, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = or i32 %131, %138
  %140 = load i32*, i32** @RHs, align 8
  %141 = load i32, i32* %7, align 4
  %142 = ashr i32 %141, 4
  %143 = and i32 %142, 15
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %140, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = shl i32 %146, 7
  %148 = or i32 %139, %147
  %149 = load i32*, i32** @RHs, align 8
  %150 = load i32, i32* %7, align 4
  %151 = ashr i32 %150, 12
  %152 = and i32 %151, 15
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %149, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = shl i32 %155, 6
  %157 = or i32 %148, %156
  %158 = load i32*, i32** @RHs, align 8
  %159 = load i32, i32* %7, align 4
  %160 = ashr i32 %159, 20
  %161 = and i32 %160, 15
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %158, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = shl i32 %164, 5
  %166 = or i32 %157, %165
  %167 = load i32*, i32** @RHs, align 8
  %168 = load i32, i32* %7, align 4
  %169 = ashr i32 %168, 28
  %170 = and i32 %169, 15
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %167, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = shl i32 %173, 4
  %175 = or i32 %166, %174
  store i32 %175, i32* %7, align 4
  %176 = load i32, i32* %6, align 4
  %177 = and i32 %176, 268435455
  store i32 %177, i32* %6, align 4
  %178 = load i32, i32* %7, align 4
  %179 = and i32 %178, 268435455
  store i32 %179, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %180

180:                                              ; preds = %395, %2
  %181 = load i32, i32* %5, align 4
  %182 = icmp slt i32 %181, 16
  br i1 %182, label %183, label %398

183:                                              ; preds = %180
  %184 = load i32, i32* %5, align 4
  %185 = icmp slt i32 %184, 2
  br i1 %185, label %192, label %186

186:                                              ; preds = %183
  %187 = load i32, i32* %5, align 4
  %188 = icmp eq i32 %187, 8
  br i1 %188, label %192, label %189

189:                                              ; preds = %186
  %190 = load i32, i32* %5, align 4
  %191 = icmp eq i32 %190, 15
  br i1 %191, label %192, label %205

192:                                              ; preds = %189, %186, %183
  %193 = load i32, i32* %6, align 4
  %194 = shl i32 %193, 1
  %195 = load i32, i32* %6, align 4
  %196 = ashr i32 %195, 27
  %197 = or i32 %194, %196
  %198 = and i32 %197, 268435455
  store i32 %198, i32* %6, align 4
  %199 = load i32, i32* %7, align 4
  %200 = shl i32 %199, 1
  %201 = load i32, i32* %7, align 4
  %202 = ashr i32 %201, 27
  %203 = or i32 %200, %202
  %204 = and i32 %203, 268435455
  store i32 %204, i32* %7, align 4
  br label %218

205:                                              ; preds = %189
  %206 = load i32, i32* %6, align 4
  %207 = shl i32 %206, 2
  %208 = load i32, i32* %6, align 4
  %209 = ashr i32 %208, 26
  %210 = or i32 %207, %209
  %211 = and i32 %210, 268435455
  store i32 %211, i32* %6, align 4
  %212 = load i32, i32* %7, align 4
  %213 = shl i32 %212, 2
  %214 = load i32, i32* %7, align 4
  %215 = ashr i32 %214, 26
  %216 = or i32 %213, %215
  %217 = and i32 %216, 268435455
  store i32 %217, i32* %7, align 4
  br label %218

218:                                              ; preds = %205, %192
  %219 = load i32, i32* %6, align 4
  %220 = shl i32 %219, 4
  %221 = and i32 %220, 603979776
  %222 = load i32, i32* %6, align 4
  %223 = shl i32 %222, 28
  %224 = and i32 %223, 268435456
  %225 = or i32 %221, %224
  %226 = load i32, i32* %6, align 4
  %227 = shl i32 %226, 14
  %228 = and i32 %227, 134217728
  %229 = or i32 %225, %228
  %230 = load i32, i32* %6, align 4
  %231 = shl i32 %230, 18
  %232 = and i32 %231, 34078720
  %233 = or i32 %229, %232
  %234 = load i32, i32* %6, align 4
  %235 = shl i32 %234, 6
  %236 = and i32 %235, 16777216
  %237 = or i32 %233, %236
  %238 = load i32, i32* %6, align 4
  %239 = shl i32 %238, 9
  %240 = and i32 %239, 2097152
  %241 = or i32 %237, %240
  %242 = load i32, i32* %6, align 4
  %243 = ashr i32 %242, 1
  %244 = and i32 %243, 1048576
  %245 = or i32 %241, %244
  %246 = load i32, i32* %6, align 4
  %247 = shl i32 %246, 10
  %248 = and i32 %247, 262144
  %249 = or i32 %245, %248
  %250 = load i32, i32* %6, align 4
  %251 = shl i32 %250, 2
  %252 = and i32 %251, 131072
  %253 = or i32 %249, %252
  %254 = load i32, i32* %6, align 4
  %255 = ashr i32 %254, 10
  %256 = and i32 %255, 65536
  %257 = or i32 %253, %256
  %258 = load i32, i32* %7, align 4
  %259 = ashr i32 %258, 13
  %260 = and i32 %259, 8192
  %261 = or i32 %257, %260
  %262 = load i32, i32* %7, align 4
  %263 = ashr i32 %262, 4
  %264 = and i32 %263, 4096
  %265 = or i32 %261, %264
  %266 = load i32, i32* %7, align 4
  %267 = shl i32 %266, 6
  %268 = and i32 %267, 2048
  %269 = or i32 %265, %268
  %270 = load i32, i32* %7, align 4
  %271 = ashr i32 %270, 1
  %272 = and i32 %271, 1024
  %273 = or i32 %269, %272
  %274 = load i32, i32* %7, align 4
  %275 = ashr i32 %274, 14
  %276 = and i32 %275, 512
  %277 = or i32 %273, %276
  %278 = load i32, i32* %7, align 4
  %279 = and i32 %278, 256
  %280 = or i32 %277, %279
  %281 = load i32, i32* %7, align 4
  %282 = ashr i32 %281, 5
  %283 = and i32 %282, 32
  %284 = or i32 %280, %283
  %285 = load i32, i32* %7, align 4
  %286 = ashr i32 %285, 10
  %287 = and i32 %286, 16
  %288 = or i32 %284, %287
  %289 = load i32, i32* %7, align 4
  %290 = ashr i32 %289, 3
  %291 = and i32 %290, 8
  %292 = or i32 %288, %291
  %293 = load i32, i32* %7, align 4
  %294 = ashr i32 %293, 18
  %295 = and i32 %294, 4
  %296 = or i32 %292, %295
  %297 = load i32, i32* %7, align 4
  %298 = ashr i32 %297, 26
  %299 = and i32 %298, 2
  %300 = or i32 %296, %299
  %301 = load i32, i32* %7, align 4
  %302 = ashr i32 %301, 24
  %303 = and i32 %302, 1
  %304 = or i32 %300, %303
  %305 = load i32*, i32** %3, align 8
  %306 = getelementptr inbounds i32, i32* %305, i32 1
  store i32* %306, i32** %3, align 8
  store i32 %304, i32* %305, align 4
  %307 = load i32, i32* %6, align 4
  %308 = shl i32 %307, 15
  %309 = and i32 %308, 536870912
  %310 = load i32, i32* %6, align 4
  %311 = shl i32 %310, 17
  %312 = and i32 %311, 268435456
  %313 = or i32 %309, %312
  %314 = load i32, i32* %6, align 4
  %315 = shl i32 %314, 10
  %316 = and i32 %315, 134217728
  %317 = or i32 %313, %316
  %318 = load i32, i32* %6, align 4
  %319 = shl i32 %318, 22
  %320 = and i32 %319, 67108864
  %321 = or i32 %317, %320
  %322 = load i32, i32* %6, align 4
  %323 = ashr i32 %322, 2
  %324 = and i32 %323, 33554432
  %325 = or i32 %321, %324
  %326 = load i32, i32* %6, align 4
  %327 = shl i32 %326, 1
  %328 = and i32 %327, 16777216
  %329 = or i32 %325, %328
  %330 = load i32, i32* %6, align 4
  %331 = shl i32 %330, 16
  %332 = and i32 %331, 2097152
  %333 = or i32 %329, %332
  %334 = load i32, i32* %6, align 4
  %335 = shl i32 %334, 11
  %336 = and i32 %335, 1048576
  %337 = or i32 %333, %336
  %338 = load i32, i32* %6, align 4
  %339 = shl i32 %338, 3
  %340 = and i32 %339, 524288
  %341 = or i32 %337, %340
  %342 = load i32, i32* %6, align 4
  %343 = ashr i32 %342, 6
  %344 = and i32 %343, 262144
  %345 = or i32 %341, %344
  %346 = load i32, i32* %6, align 4
  %347 = shl i32 %346, 15
  %348 = and i32 %347, 131072
  %349 = or i32 %345, %348
  %350 = load i32, i32* %6, align 4
  %351 = ashr i32 %350, 4
  %352 = and i32 %351, 65536
  %353 = or i32 %349, %352
  %354 = load i32, i32* %7, align 4
  %355 = ashr i32 %354, 2
  %356 = and i32 %355, 8192
  %357 = or i32 %353, %356
  %358 = load i32, i32* %7, align 4
  %359 = shl i32 %358, 8
  %360 = and i32 %359, 4096
  %361 = or i32 %357, %360
  %362 = load i32, i32* %7, align 4
  %363 = ashr i32 %362, 14
  %364 = and i32 %363, 2056
  %365 = or i32 %361, %364
  %366 = load i32, i32* %7, align 4
  %367 = ashr i32 %366, 9
  %368 = and i32 %367, 1024
  %369 = or i32 %365, %368
  %370 = load i32, i32* %7, align 4
  %371 = and i32 %370, 512
  %372 = or i32 %369, %371
  %373 = load i32, i32* %7, align 4
  %374 = shl i32 %373, 7
  %375 = and i32 %374, 256
  %376 = or i32 %372, %375
  %377 = load i32, i32* %7, align 4
  %378 = ashr i32 %377, 7
  %379 = and i32 %378, 32
  %380 = or i32 %376, %379
  %381 = load i32, i32* %7, align 4
  %382 = ashr i32 %381, 3
  %383 = and i32 %382, 17
  %384 = or i32 %380, %383
  %385 = load i32, i32* %7, align 4
  %386 = shl i32 %385, 2
  %387 = and i32 %386, 4
  %388 = or i32 %384, %387
  %389 = load i32, i32* %7, align 4
  %390 = ashr i32 %389, 21
  %391 = and i32 %390, 2
  %392 = or i32 %388, %391
  %393 = load i32*, i32** %3, align 8
  %394 = getelementptr inbounds i32, i32* %393, i32 1
  store i32* %394, i32** %3, align 8
  store i32 %392, i32* %393, align 4
  br label %395

395:                                              ; preds = %218
  %396 = load i32, i32* %5, align 4
  %397 = add nsw i32 %396, 1
  store i32 %397, i32* %5, align 4
  br label %180

398:                                              ; preds = %180
  ret void
}

declare dso_local i32 @GET_UINT32(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
