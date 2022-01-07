; ModuleID = '/home/carl/AnghaBench/zfs/module/icp/algs/aes/extr_aes_impl_generic.c_rijndael_key_setup_dec.c'
source_filename = "/home/carl/AnghaBench/zfs/module/icp/algs/aes/extr_aes_impl_generic.c_rijndael_key_setup_dec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Td0 = common dso_local global i32* null, align 8
@Te4 = common dso_local global i32* null, align 8
@Td1 = common dso_local global i32* null, align 8
@Td2 = common dso_local global i32* null, align 8
@Td3 = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @rijndael_key_setup_dec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rijndael_key_setup_dec(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @rijndael_key_setup_enc(i32* %11, i32* %12, i32 %13)
  store i32 %14, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %15 = load i32, i32* %7, align 4
  %16 = mul nsw i32 4, %15
  store i32 %16, i32* %9, align 4
  br label %17

17:                                               ; preds = %110, %3
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %115

21:                                               ; preds = %17
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %10, align 4
  %27 = load i32*, i32** %4, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %4, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  store i32 %31, i32* %35, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load i32*, i32** %4, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  store i32 %36, i32* %40, align 4
  %41 = load i32*, i32** %4, align 8
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %41, i64 %44
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %10, align 4
  %47 = load i32*, i32** %4, align 8
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %4, align 8
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %53, i64 %56
  store i32 %52, i32* %57, align 4
  %58 = load i32, i32* %10, align 4
  %59 = load i32*, i32** %4, align 8
  %60 = load i32, i32* %9, align 4
  %61 = add nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %59, i64 %62
  store i32 %58, i32* %63, align 4
  %64 = load i32*, i32** %4, align 8
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, 2
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %64, i64 %67
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %10, align 4
  %70 = load i32*, i32** %4, align 8
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 %71, 2
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %70, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** %4, align 8
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %77, 2
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %76, i64 %79
  store i32 %75, i32* %80, align 4
  %81 = load i32, i32* %10, align 4
  %82 = load i32*, i32** %4, align 8
  %83 = load i32, i32* %9, align 4
  %84 = add nsw i32 %83, 2
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %82, i64 %85
  store i32 %81, i32* %86, align 4
  %87 = load i32*, i32** %4, align 8
  %88 = load i32, i32* %8, align 4
  %89 = add nsw i32 %88, 3
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %87, i64 %90
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %10, align 4
  %93 = load i32*, i32** %4, align 8
  %94 = load i32, i32* %9, align 4
  %95 = add nsw i32 %94, 3
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %93, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = load i32*, i32** %4, align 8
  %100 = load i32, i32* %8, align 4
  %101 = add nsw i32 %100, 3
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %99, i64 %102
  store i32 %98, i32* %103, align 4
  %104 = load i32, i32* %10, align 4
  %105 = load i32*, i32** %4, align 8
  %106 = load i32, i32* %9, align 4
  %107 = add nsw i32 %106, 3
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %105, i64 %108
  store i32 %104, i32* %109, align 4
  br label %110

110:                                              ; preds = %21
  %111 = load i32, i32* %8, align 4
  %112 = add nsw i32 %111, 4
  store i32 %112, i32* %8, align 4
  %113 = load i32, i32* %9, align 4
  %114 = sub nsw i32 %113, 4
  store i32 %114, i32* %9, align 4
  br label %17

115:                                              ; preds = %17
  store i32 1, i32* %8, align 4
  br label %116

116:                                              ; preds = %359, %115
  %117 = load i32, i32* %8, align 4
  %118 = load i32, i32* %7, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %362

120:                                              ; preds = %116
  %121 = load i32*, i32** %4, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 4
  store i32* %122, i32** %4, align 8
  %123 = load i32*, i32** @Td0, align 8
  %124 = load i32*, i32** @Te4, align 8
  %125 = load i32*, i32** %4, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 0
  %127 = load i32, i32* %126, align 4
  %128 = ashr i32 %127, 24
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %124, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = and i32 %131, 255
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %123, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = load i32*, i32** @Td1, align 8
  %137 = load i32*, i32** @Te4, align 8
  %138 = load i32*, i32** %4, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 0
  %140 = load i32, i32* %139, align 4
  %141 = ashr i32 %140, 16
  %142 = and i32 %141, 255
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %137, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = and i32 %145, 255
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %136, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = xor i32 %135, %149
  %151 = load i32*, i32** @Td2, align 8
  %152 = load i32*, i32** @Te4, align 8
  %153 = load i32*, i32** %4, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 0
  %155 = load i32, i32* %154, align 4
  %156 = ashr i32 %155, 8
  %157 = and i32 %156, 255
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %152, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = and i32 %160, 255
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %151, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = xor i32 %150, %164
  %166 = load i32*, i32** @Td3, align 8
  %167 = load i32*, i32** @Te4, align 8
  %168 = load i32*, i32** %4, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 0
  %170 = load i32, i32* %169, align 4
  %171 = and i32 %170, 255
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %167, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = and i32 %174, 255
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %166, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = xor i32 %165, %178
  %180 = load i32*, i32** %4, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 0
  store i32 %179, i32* %181, align 4
  %182 = load i32*, i32** @Td0, align 8
  %183 = load i32*, i32** @Te4, align 8
  %184 = load i32*, i32** %4, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 1
  %186 = load i32, i32* %185, align 4
  %187 = ashr i32 %186, 24
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %183, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = and i32 %190, 255
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %182, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = load i32*, i32** @Td1, align 8
  %196 = load i32*, i32** @Te4, align 8
  %197 = load i32*, i32** %4, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 1
  %199 = load i32, i32* %198, align 4
  %200 = ashr i32 %199, 16
  %201 = and i32 %200, 255
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %196, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = and i32 %204, 255
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %195, i64 %206
  %208 = load i32, i32* %207, align 4
  %209 = xor i32 %194, %208
  %210 = load i32*, i32** @Td2, align 8
  %211 = load i32*, i32** @Te4, align 8
  %212 = load i32*, i32** %4, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 1
  %214 = load i32, i32* %213, align 4
  %215 = ashr i32 %214, 8
  %216 = and i32 %215, 255
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %211, i64 %217
  %219 = load i32, i32* %218, align 4
  %220 = and i32 %219, 255
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %210, i64 %221
  %223 = load i32, i32* %222, align 4
  %224 = xor i32 %209, %223
  %225 = load i32*, i32** @Td3, align 8
  %226 = load i32*, i32** @Te4, align 8
  %227 = load i32*, i32** %4, align 8
  %228 = getelementptr inbounds i32, i32* %227, i64 1
  %229 = load i32, i32* %228, align 4
  %230 = and i32 %229, 255
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i32, i32* %226, i64 %231
  %233 = load i32, i32* %232, align 4
  %234 = and i32 %233, 255
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i32, i32* %225, i64 %235
  %237 = load i32, i32* %236, align 4
  %238 = xor i32 %224, %237
  %239 = load i32*, i32** %4, align 8
  %240 = getelementptr inbounds i32, i32* %239, i64 1
  store i32 %238, i32* %240, align 4
  %241 = load i32*, i32** @Td0, align 8
  %242 = load i32*, i32** @Te4, align 8
  %243 = load i32*, i32** %4, align 8
  %244 = getelementptr inbounds i32, i32* %243, i64 2
  %245 = load i32, i32* %244, align 4
  %246 = ashr i32 %245, 24
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32, i32* %242, i64 %247
  %249 = load i32, i32* %248, align 4
  %250 = and i32 %249, 255
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32, i32* %241, i64 %251
  %253 = load i32, i32* %252, align 4
  %254 = load i32*, i32** @Td1, align 8
  %255 = load i32*, i32** @Te4, align 8
  %256 = load i32*, i32** %4, align 8
  %257 = getelementptr inbounds i32, i32* %256, i64 2
  %258 = load i32, i32* %257, align 4
  %259 = ashr i32 %258, 16
  %260 = and i32 %259, 255
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i32, i32* %255, i64 %261
  %263 = load i32, i32* %262, align 4
  %264 = and i32 %263, 255
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i32, i32* %254, i64 %265
  %267 = load i32, i32* %266, align 4
  %268 = xor i32 %253, %267
  %269 = load i32*, i32** @Td2, align 8
  %270 = load i32*, i32** @Te4, align 8
  %271 = load i32*, i32** %4, align 8
  %272 = getelementptr inbounds i32, i32* %271, i64 2
  %273 = load i32, i32* %272, align 4
  %274 = ashr i32 %273, 8
  %275 = and i32 %274, 255
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i32, i32* %270, i64 %276
  %278 = load i32, i32* %277, align 4
  %279 = and i32 %278, 255
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i32, i32* %269, i64 %280
  %282 = load i32, i32* %281, align 4
  %283 = xor i32 %268, %282
  %284 = load i32*, i32** @Td3, align 8
  %285 = load i32*, i32** @Te4, align 8
  %286 = load i32*, i32** %4, align 8
  %287 = getelementptr inbounds i32, i32* %286, i64 2
  %288 = load i32, i32* %287, align 4
  %289 = and i32 %288, 255
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i32, i32* %285, i64 %290
  %292 = load i32, i32* %291, align 4
  %293 = and i32 %292, 255
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i32, i32* %284, i64 %294
  %296 = load i32, i32* %295, align 4
  %297 = xor i32 %283, %296
  %298 = load i32*, i32** %4, align 8
  %299 = getelementptr inbounds i32, i32* %298, i64 2
  store i32 %297, i32* %299, align 4
  %300 = load i32*, i32** @Td0, align 8
  %301 = load i32*, i32** @Te4, align 8
  %302 = load i32*, i32** %4, align 8
  %303 = getelementptr inbounds i32, i32* %302, i64 3
  %304 = load i32, i32* %303, align 4
  %305 = ashr i32 %304, 24
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds i32, i32* %301, i64 %306
  %308 = load i32, i32* %307, align 4
  %309 = and i32 %308, 255
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds i32, i32* %300, i64 %310
  %312 = load i32, i32* %311, align 4
  %313 = load i32*, i32** @Td1, align 8
  %314 = load i32*, i32** @Te4, align 8
  %315 = load i32*, i32** %4, align 8
  %316 = getelementptr inbounds i32, i32* %315, i64 3
  %317 = load i32, i32* %316, align 4
  %318 = ashr i32 %317, 16
  %319 = and i32 %318, 255
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds i32, i32* %314, i64 %320
  %322 = load i32, i32* %321, align 4
  %323 = and i32 %322, 255
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds i32, i32* %313, i64 %324
  %326 = load i32, i32* %325, align 4
  %327 = xor i32 %312, %326
  %328 = load i32*, i32** @Td2, align 8
  %329 = load i32*, i32** @Te4, align 8
  %330 = load i32*, i32** %4, align 8
  %331 = getelementptr inbounds i32, i32* %330, i64 3
  %332 = load i32, i32* %331, align 4
  %333 = ashr i32 %332, 8
  %334 = and i32 %333, 255
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds i32, i32* %329, i64 %335
  %337 = load i32, i32* %336, align 4
  %338 = and i32 %337, 255
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds i32, i32* %328, i64 %339
  %341 = load i32, i32* %340, align 4
  %342 = xor i32 %327, %341
  %343 = load i32*, i32** @Td3, align 8
  %344 = load i32*, i32** @Te4, align 8
  %345 = load i32*, i32** %4, align 8
  %346 = getelementptr inbounds i32, i32* %345, i64 3
  %347 = load i32, i32* %346, align 4
  %348 = and i32 %347, 255
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds i32, i32* %344, i64 %349
  %351 = load i32, i32* %350, align 4
  %352 = and i32 %351, 255
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds i32, i32* %343, i64 %353
  %355 = load i32, i32* %354, align 4
  %356 = xor i32 %342, %355
  %357 = load i32*, i32** %4, align 8
  %358 = getelementptr inbounds i32, i32* %357, i64 3
  store i32 %356, i32* %358, align 4
  br label %359

359:                                              ; preds = %120
  %360 = load i32, i32* %8, align 4
  %361 = add nsw i32 %360, 1
  store i32 %361, i32* %8, align 4
  br label %116

362:                                              ; preds = %116
  %363 = load i32, i32* %7, align 4
  ret i32 %363
}

declare dso_local i32 @rijndael_key_setup_enc(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
