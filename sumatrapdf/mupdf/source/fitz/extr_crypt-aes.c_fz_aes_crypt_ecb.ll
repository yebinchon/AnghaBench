; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_crypt-aes.c_fz_aes_crypt_ecb.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_crypt-aes.c_fz_aes_crypt_ecb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64*, i32 }

@FZ_AES_DECRYPT = common dso_local global i32 0, align 4
@RSb = common dso_local global i32* null, align 8
@FSb = common dso_local global i32* null, align 8
@PADLOCK_ACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fz_aes_crypt_ecb(%struct.TYPE_4__* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  store i64* %21, i64** %10, align 8
  %22 = load i64, i64* %11, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = call i32 @GET_ULONG_LE(i64 %22, i8* %23, i32 0)
  %25 = load i64*, i64** %10, align 8
  %26 = getelementptr inbounds i64, i64* %25, i32 1
  store i64* %26, i64** %10, align 8
  %27 = load i64, i64* %25, align 8
  %28 = load i64, i64* %11, align 8
  %29 = xor i64 %28, %27
  store i64 %29, i64* %11, align 8
  %30 = load i64, i64* %12, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 @GET_ULONG_LE(i64 %30, i8* %31, i32 4)
  %33 = load i64*, i64** %10, align 8
  %34 = getelementptr inbounds i64, i64* %33, i32 1
  store i64* %34, i64** %10, align 8
  %35 = load i64, i64* %33, align 8
  %36 = load i64, i64* %12, align 8
  %37 = xor i64 %36, %35
  store i64 %37, i64* %12, align 8
  %38 = load i64, i64* %13, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = call i32 @GET_ULONG_LE(i64 %38, i8* %39, i32 8)
  %41 = load i64*, i64** %10, align 8
  %42 = getelementptr inbounds i64, i64* %41, i32 1
  store i64* %42, i64** %10, align 8
  %43 = load i64, i64* %41, align 8
  %44 = load i64, i64* %13, align 8
  %45 = xor i64 %44, %43
  store i64 %45, i64* %13, align 8
  %46 = load i64, i64* %14, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = call i32 @GET_ULONG_LE(i64 %46, i8* %47, i32 12)
  %49 = load i64*, i64** %10, align 8
  %50 = getelementptr inbounds i64, i64* %49, i32 1
  store i64* %50, i64** %10, align 8
  %51 = load i64, i64* %49, align 8
  %52 = load i64, i64* %14, align 8
  %53 = xor i64 %52, %51
  store i64 %53, i64* %14, align 8
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @FZ_AES_DECRYPT, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %245

57:                                               ; preds = %4
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = ashr i32 %60, 1
  %62 = sub nsw i32 %61, 1
  store i32 %62, i32* %9, align 4
  br label %63

63:                                               ; preds = %85, %57
  %64 = load i32, i32* %9, align 4
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %88

66:                                               ; preds = %63
  %67 = load i64, i64* %15, align 8
  %68 = load i64, i64* %16, align 8
  %69 = load i64, i64* %17, align 8
  %70 = load i64, i64* %18, align 8
  %71 = load i64, i64* %11, align 8
  %72 = load i64, i64* %12, align 8
  %73 = load i64, i64* %13, align 8
  %74 = load i64, i64* %14, align 8
  %75 = call i32 @AES_RROUND(i64 %67, i64 %68, i64 %69, i64 %70, i64 %71, i64 %72, i64 %73, i64 %74)
  %76 = load i64, i64* %11, align 8
  %77 = load i64, i64* %12, align 8
  %78 = load i64, i64* %13, align 8
  %79 = load i64, i64* %14, align 8
  %80 = load i64, i64* %15, align 8
  %81 = load i64, i64* %16, align 8
  %82 = load i64, i64* %17, align 8
  %83 = load i64, i64* %18, align 8
  %84 = call i32 @AES_RROUND(i64 %76, i64 %77, i64 %78, i64 %79, i64 %80, i64 %81, i64 %82, i64 %83)
  br label %85

85:                                               ; preds = %66
  %86 = load i32, i32* %9, align 4
  %87 = add nsw i32 %86, -1
  store i32 %87, i32* %9, align 4
  br label %63

88:                                               ; preds = %63
  %89 = load i64, i64* %15, align 8
  %90 = load i64, i64* %16, align 8
  %91 = load i64, i64* %17, align 8
  %92 = load i64, i64* %18, align 8
  %93 = load i64, i64* %11, align 8
  %94 = load i64, i64* %12, align 8
  %95 = load i64, i64* %13, align 8
  %96 = load i64, i64* %14, align 8
  %97 = call i32 @AES_RROUND(i64 %89, i64 %90, i64 %91, i64 %92, i64 %93, i64 %94, i64 %95, i64 %96)
  %98 = load i64*, i64** %10, align 8
  %99 = getelementptr inbounds i64, i64* %98, i32 1
  store i64* %99, i64** %10, align 8
  %100 = load i64, i64* %98, align 8
  %101 = load i32*, i32** @RSb, align 8
  %102 = load i64, i64* %15, align 8
  %103 = and i64 %102, 255
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = sext i32 %105 to i64
  %107 = xor i64 %100, %106
  %108 = load i32*, i32** @RSb, align 8
  %109 = load i64, i64* %18, align 8
  %110 = lshr i64 %109, 8
  %111 = and i64 %110, 255
  %112 = getelementptr inbounds i32, i32* %108, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = shl i32 %113, 8
  %115 = sext i32 %114 to i64
  %116 = xor i64 %107, %115
  %117 = load i32*, i32** @RSb, align 8
  %118 = load i64, i64* %17, align 8
  %119 = lshr i64 %118, 16
  %120 = and i64 %119, 255
  %121 = getelementptr inbounds i32, i32* %117, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = shl i32 %122, 16
  %124 = sext i32 %123 to i64
  %125 = xor i64 %116, %124
  %126 = load i32*, i32** @RSb, align 8
  %127 = load i64, i64* %16, align 8
  %128 = lshr i64 %127, 24
  %129 = and i64 %128, 255
  %130 = getelementptr inbounds i32, i32* %126, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = shl i32 %131, 24
  %133 = sext i32 %132 to i64
  %134 = xor i64 %125, %133
  store i64 %134, i64* %11, align 8
  %135 = load i64*, i64** %10, align 8
  %136 = getelementptr inbounds i64, i64* %135, i32 1
  store i64* %136, i64** %10, align 8
  %137 = load i64, i64* %135, align 8
  %138 = load i32*, i32** @RSb, align 8
  %139 = load i64, i64* %16, align 8
  %140 = and i64 %139, 255
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = sext i32 %142 to i64
  %144 = xor i64 %137, %143
  %145 = load i32*, i32** @RSb, align 8
  %146 = load i64, i64* %15, align 8
  %147 = lshr i64 %146, 8
  %148 = and i64 %147, 255
  %149 = getelementptr inbounds i32, i32* %145, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = shl i32 %150, 8
  %152 = sext i32 %151 to i64
  %153 = xor i64 %144, %152
  %154 = load i32*, i32** @RSb, align 8
  %155 = load i64, i64* %18, align 8
  %156 = lshr i64 %155, 16
  %157 = and i64 %156, 255
  %158 = getelementptr inbounds i32, i32* %154, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = shl i32 %159, 16
  %161 = sext i32 %160 to i64
  %162 = xor i64 %153, %161
  %163 = load i32*, i32** @RSb, align 8
  %164 = load i64, i64* %17, align 8
  %165 = lshr i64 %164, 24
  %166 = and i64 %165, 255
  %167 = getelementptr inbounds i32, i32* %163, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = shl i32 %168, 24
  %170 = sext i32 %169 to i64
  %171 = xor i64 %162, %170
  store i64 %171, i64* %12, align 8
  %172 = load i64*, i64** %10, align 8
  %173 = getelementptr inbounds i64, i64* %172, i32 1
  store i64* %173, i64** %10, align 8
  %174 = load i64, i64* %172, align 8
  %175 = load i32*, i32** @RSb, align 8
  %176 = load i64, i64* %17, align 8
  %177 = and i64 %176, 255
  %178 = getelementptr inbounds i32, i32* %175, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = sext i32 %179 to i64
  %181 = xor i64 %174, %180
  %182 = load i32*, i32** @RSb, align 8
  %183 = load i64, i64* %16, align 8
  %184 = lshr i64 %183, 8
  %185 = and i64 %184, 255
  %186 = getelementptr inbounds i32, i32* %182, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = shl i32 %187, 8
  %189 = sext i32 %188 to i64
  %190 = xor i64 %181, %189
  %191 = load i32*, i32** @RSb, align 8
  %192 = load i64, i64* %15, align 8
  %193 = lshr i64 %192, 16
  %194 = and i64 %193, 255
  %195 = getelementptr inbounds i32, i32* %191, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = shl i32 %196, 16
  %198 = sext i32 %197 to i64
  %199 = xor i64 %190, %198
  %200 = load i32*, i32** @RSb, align 8
  %201 = load i64, i64* %18, align 8
  %202 = lshr i64 %201, 24
  %203 = and i64 %202, 255
  %204 = getelementptr inbounds i32, i32* %200, i64 %203
  %205 = load i32, i32* %204, align 4
  %206 = shl i32 %205, 24
  %207 = sext i32 %206 to i64
  %208 = xor i64 %199, %207
  store i64 %208, i64* %13, align 8
  %209 = load i64*, i64** %10, align 8
  %210 = load i64, i64* %209, align 8
  %211 = load i32*, i32** @RSb, align 8
  %212 = load i64, i64* %18, align 8
  %213 = and i64 %212, 255
  %214 = getelementptr inbounds i32, i32* %211, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = sext i32 %215 to i64
  %217 = xor i64 %210, %216
  %218 = load i32*, i32** @RSb, align 8
  %219 = load i64, i64* %17, align 8
  %220 = lshr i64 %219, 8
  %221 = and i64 %220, 255
  %222 = getelementptr inbounds i32, i32* %218, i64 %221
  %223 = load i32, i32* %222, align 4
  %224 = shl i32 %223, 8
  %225 = sext i32 %224 to i64
  %226 = xor i64 %217, %225
  %227 = load i32*, i32** @RSb, align 8
  %228 = load i64, i64* %16, align 8
  %229 = lshr i64 %228, 16
  %230 = and i64 %229, 255
  %231 = getelementptr inbounds i32, i32* %227, i64 %230
  %232 = load i32, i32* %231, align 4
  %233 = shl i32 %232, 16
  %234 = sext i32 %233 to i64
  %235 = xor i64 %226, %234
  %236 = load i32*, i32** @RSb, align 8
  %237 = load i64, i64* %15, align 8
  %238 = lshr i64 %237, 24
  %239 = and i64 %238, 255
  %240 = getelementptr inbounds i32, i32* %236, i64 %239
  %241 = load i32, i32* %240, align 4
  %242 = shl i32 %241, 24
  %243 = sext i32 %242 to i64
  %244 = xor i64 %235, %243
  store i64 %244, i64* %14, align 8
  br label %433

245:                                              ; preds = %4
  %246 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %247 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 8
  %249 = ashr i32 %248, 1
  %250 = sub nsw i32 %249, 1
  store i32 %250, i32* %9, align 4
  br label %251

251:                                              ; preds = %273, %245
  %252 = load i32, i32* %9, align 4
  %253 = icmp sgt i32 %252, 0
  br i1 %253, label %254, label %276

254:                                              ; preds = %251
  %255 = load i64, i64* %15, align 8
  %256 = load i64, i64* %16, align 8
  %257 = load i64, i64* %17, align 8
  %258 = load i64, i64* %18, align 8
  %259 = load i64, i64* %11, align 8
  %260 = load i64, i64* %12, align 8
  %261 = load i64, i64* %13, align 8
  %262 = load i64, i64* %14, align 8
  %263 = call i32 @AES_FROUND(i64 %255, i64 %256, i64 %257, i64 %258, i64 %259, i64 %260, i64 %261, i64 %262)
  %264 = load i64, i64* %11, align 8
  %265 = load i64, i64* %12, align 8
  %266 = load i64, i64* %13, align 8
  %267 = load i64, i64* %14, align 8
  %268 = load i64, i64* %15, align 8
  %269 = load i64, i64* %16, align 8
  %270 = load i64, i64* %17, align 8
  %271 = load i64, i64* %18, align 8
  %272 = call i32 @AES_FROUND(i64 %264, i64 %265, i64 %266, i64 %267, i64 %268, i64 %269, i64 %270, i64 %271)
  br label %273

273:                                              ; preds = %254
  %274 = load i32, i32* %9, align 4
  %275 = add nsw i32 %274, -1
  store i32 %275, i32* %9, align 4
  br label %251

276:                                              ; preds = %251
  %277 = load i64, i64* %15, align 8
  %278 = load i64, i64* %16, align 8
  %279 = load i64, i64* %17, align 8
  %280 = load i64, i64* %18, align 8
  %281 = load i64, i64* %11, align 8
  %282 = load i64, i64* %12, align 8
  %283 = load i64, i64* %13, align 8
  %284 = load i64, i64* %14, align 8
  %285 = call i32 @AES_FROUND(i64 %277, i64 %278, i64 %279, i64 %280, i64 %281, i64 %282, i64 %283, i64 %284)
  %286 = load i64*, i64** %10, align 8
  %287 = getelementptr inbounds i64, i64* %286, i32 1
  store i64* %287, i64** %10, align 8
  %288 = load i64, i64* %286, align 8
  %289 = load i32*, i32** @FSb, align 8
  %290 = load i64, i64* %15, align 8
  %291 = and i64 %290, 255
  %292 = getelementptr inbounds i32, i32* %289, i64 %291
  %293 = load i32, i32* %292, align 4
  %294 = sext i32 %293 to i64
  %295 = xor i64 %288, %294
  %296 = load i32*, i32** @FSb, align 8
  %297 = load i64, i64* %16, align 8
  %298 = lshr i64 %297, 8
  %299 = and i64 %298, 255
  %300 = getelementptr inbounds i32, i32* %296, i64 %299
  %301 = load i32, i32* %300, align 4
  %302 = shl i32 %301, 8
  %303 = sext i32 %302 to i64
  %304 = xor i64 %295, %303
  %305 = load i32*, i32** @FSb, align 8
  %306 = load i64, i64* %17, align 8
  %307 = lshr i64 %306, 16
  %308 = and i64 %307, 255
  %309 = getelementptr inbounds i32, i32* %305, i64 %308
  %310 = load i32, i32* %309, align 4
  %311 = shl i32 %310, 16
  %312 = sext i32 %311 to i64
  %313 = xor i64 %304, %312
  %314 = load i32*, i32** @FSb, align 8
  %315 = load i64, i64* %18, align 8
  %316 = lshr i64 %315, 24
  %317 = and i64 %316, 255
  %318 = getelementptr inbounds i32, i32* %314, i64 %317
  %319 = load i32, i32* %318, align 4
  %320 = shl i32 %319, 24
  %321 = sext i32 %320 to i64
  %322 = xor i64 %313, %321
  store i64 %322, i64* %11, align 8
  %323 = load i64*, i64** %10, align 8
  %324 = getelementptr inbounds i64, i64* %323, i32 1
  store i64* %324, i64** %10, align 8
  %325 = load i64, i64* %323, align 8
  %326 = load i32*, i32** @FSb, align 8
  %327 = load i64, i64* %16, align 8
  %328 = and i64 %327, 255
  %329 = getelementptr inbounds i32, i32* %326, i64 %328
  %330 = load i32, i32* %329, align 4
  %331 = sext i32 %330 to i64
  %332 = xor i64 %325, %331
  %333 = load i32*, i32** @FSb, align 8
  %334 = load i64, i64* %17, align 8
  %335 = lshr i64 %334, 8
  %336 = and i64 %335, 255
  %337 = getelementptr inbounds i32, i32* %333, i64 %336
  %338 = load i32, i32* %337, align 4
  %339 = shl i32 %338, 8
  %340 = sext i32 %339 to i64
  %341 = xor i64 %332, %340
  %342 = load i32*, i32** @FSb, align 8
  %343 = load i64, i64* %18, align 8
  %344 = lshr i64 %343, 16
  %345 = and i64 %344, 255
  %346 = getelementptr inbounds i32, i32* %342, i64 %345
  %347 = load i32, i32* %346, align 4
  %348 = shl i32 %347, 16
  %349 = sext i32 %348 to i64
  %350 = xor i64 %341, %349
  %351 = load i32*, i32** @FSb, align 8
  %352 = load i64, i64* %15, align 8
  %353 = lshr i64 %352, 24
  %354 = and i64 %353, 255
  %355 = getelementptr inbounds i32, i32* %351, i64 %354
  %356 = load i32, i32* %355, align 4
  %357 = shl i32 %356, 24
  %358 = sext i32 %357 to i64
  %359 = xor i64 %350, %358
  store i64 %359, i64* %12, align 8
  %360 = load i64*, i64** %10, align 8
  %361 = getelementptr inbounds i64, i64* %360, i32 1
  store i64* %361, i64** %10, align 8
  %362 = load i64, i64* %360, align 8
  %363 = load i32*, i32** @FSb, align 8
  %364 = load i64, i64* %17, align 8
  %365 = and i64 %364, 255
  %366 = getelementptr inbounds i32, i32* %363, i64 %365
  %367 = load i32, i32* %366, align 4
  %368 = sext i32 %367 to i64
  %369 = xor i64 %362, %368
  %370 = load i32*, i32** @FSb, align 8
  %371 = load i64, i64* %18, align 8
  %372 = lshr i64 %371, 8
  %373 = and i64 %372, 255
  %374 = getelementptr inbounds i32, i32* %370, i64 %373
  %375 = load i32, i32* %374, align 4
  %376 = shl i32 %375, 8
  %377 = sext i32 %376 to i64
  %378 = xor i64 %369, %377
  %379 = load i32*, i32** @FSb, align 8
  %380 = load i64, i64* %15, align 8
  %381 = lshr i64 %380, 16
  %382 = and i64 %381, 255
  %383 = getelementptr inbounds i32, i32* %379, i64 %382
  %384 = load i32, i32* %383, align 4
  %385 = shl i32 %384, 16
  %386 = sext i32 %385 to i64
  %387 = xor i64 %378, %386
  %388 = load i32*, i32** @FSb, align 8
  %389 = load i64, i64* %16, align 8
  %390 = lshr i64 %389, 24
  %391 = and i64 %390, 255
  %392 = getelementptr inbounds i32, i32* %388, i64 %391
  %393 = load i32, i32* %392, align 4
  %394 = shl i32 %393, 24
  %395 = sext i32 %394 to i64
  %396 = xor i64 %387, %395
  store i64 %396, i64* %13, align 8
  %397 = load i64*, i64** %10, align 8
  %398 = load i64, i64* %397, align 8
  %399 = load i32*, i32** @FSb, align 8
  %400 = load i64, i64* %18, align 8
  %401 = and i64 %400, 255
  %402 = getelementptr inbounds i32, i32* %399, i64 %401
  %403 = load i32, i32* %402, align 4
  %404 = sext i32 %403 to i64
  %405 = xor i64 %398, %404
  %406 = load i32*, i32** @FSb, align 8
  %407 = load i64, i64* %15, align 8
  %408 = lshr i64 %407, 8
  %409 = and i64 %408, 255
  %410 = getelementptr inbounds i32, i32* %406, i64 %409
  %411 = load i32, i32* %410, align 4
  %412 = shl i32 %411, 8
  %413 = sext i32 %412 to i64
  %414 = xor i64 %405, %413
  %415 = load i32*, i32** @FSb, align 8
  %416 = load i64, i64* %16, align 8
  %417 = lshr i64 %416, 16
  %418 = and i64 %417, 255
  %419 = getelementptr inbounds i32, i32* %415, i64 %418
  %420 = load i32, i32* %419, align 4
  %421 = shl i32 %420, 16
  %422 = sext i32 %421 to i64
  %423 = xor i64 %414, %422
  %424 = load i32*, i32** @FSb, align 8
  %425 = load i64, i64* %17, align 8
  %426 = lshr i64 %425, 24
  %427 = and i64 %426, 255
  %428 = getelementptr inbounds i32, i32* %424, i64 %427
  %429 = load i32, i32* %428, align 4
  %430 = shl i32 %429, 24
  %431 = sext i32 %430 to i64
  %432 = xor i64 %423, %431
  store i64 %432, i64* %14, align 8
  br label %433

433:                                              ; preds = %276, %88
  %434 = load i64, i64* %11, align 8
  %435 = load i8*, i8** %8, align 8
  %436 = call i32 @PUT_ULONG_LE(i64 %434, i8* %435, i32 0)
  %437 = load i64, i64* %12, align 8
  %438 = load i8*, i8** %8, align 8
  %439 = call i32 @PUT_ULONG_LE(i64 %437, i8* %438, i32 4)
  %440 = load i64, i64* %13, align 8
  %441 = load i8*, i8** %8, align 8
  %442 = call i32 @PUT_ULONG_LE(i64 %440, i8* %441, i32 8)
  %443 = load i64, i64* %14, align 8
  %444 = load i8*, i8** %8, align 8
  %445 = call i32 @PUT_ULONG_LE(i64 %443, i8* %444, i32 12)
  ret void
}

declare dso_local i32 @GET_ULONG_LE(i64, i8*, i32) #1

declare dso_local i32 @AES_RROUND(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @AES_FROUND(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @PUT_ULONG_LE(i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
