; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/unarr/rar/extr_uncompress-rar.c_rar_decode_audio.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/unarr/rar/extr_uncompress-rar.c_rar_decode_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AudioState = type { i32*, i32, i32, i32*, i64*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.AudioState*, i32*, i32)* @rar_decode_audio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rar_decode_audio(%struct.AudioState* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.AudioState*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.AudioState* %0, %struct.AudioState** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.AudioState*, %struct.AudioState** %4, align 8
  %13 = getelementptr inbounds %struct.AudioState, %struct.AudioState* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.AudioState*, %struct.AudioState** %4, align 8
  %18 = getelementptr inbounds %struct.AudioState, %struct.AudioState* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 3
  store i32 %16, i32* %20, align 4
  %21 = load %struct.AudioState*, %struct.AudioState** %4, align 8
  %22 = getelementptr inbounds %struct.AudioState, %struct.AudioState* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.AudioState*, %struct.AudioState** %4, align 8
  %27 = getelementptr inbounds %struct.AudioState, %struct.AudioState* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 2
  store i32 %25, i32* %29, align 4
  %30 = load %struct.AudioState*, %struct.AudioState** %4, align 8
  %31 = getelementptr inbounds %struct.AudioState, %struct.AudioState* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.AudioState*, %struct.AudioState** %4, align 8
  %34 = getelementptr inbounds %struct.AudioState, %struct.AudioState* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = sub nsw i32 %32, %37
  %39 = load %struct.AudioState*, %struct.AudioState** %4, align 8
  %40 = getelementptr inbounds %struct.AudioState, %struct.AudioState* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  store i32 %38, i32* %42, align 4
  %43 = load %struct.AudioState*, %struct.AudioState** %4, align 8
  %44 = getelementptr inbounds %struct.AudioState, %struct.AudioState* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.AudioState*, %struct.AudioState** %4, align 8
  %47 = getelementptr inbounds %struct.AudioState, %struct.AudioState* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  store i32 %45, i32* %49, align 4
  %50 = load %struct.AudioState*, %struct.AudioState** %4, align 8
  %51 = getelementptr inbounds %struct.AudioState, %struct.AudioState* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = mul nsw i32 8, %52
  %54 = load %struct.AudioState*, %struct.AudioState** %4, align 8
  %55 = getelementptr inbounds %struct.AudioState, %struct.AudioState* %54, i32 0, i32 3
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.AudioState*, %struct.AudioState** %4, align 8
  %60 = getelementptr inbounds %struct.AudioState, %struct.AudioState* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = mul nsw i32 %58, %63
  %65 = add nsw i32 %53, %64
  %66 = load %struct.AudioState*, %struct.AudioState** %4, align 8
  %67 = getelementptr inbounds %struct.AudioState, %struct.AudioState* %66, i32 0, i32 3
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.AudioState*, %struct.AudioState** %4, align 8
  %72 = getelementptr inbounds %struct.AudioState, %struct.AudioState* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 1
  %75 = load i32, i32* %74, align 4
  %76 = mul nsw i32 %70, %75
  %77 = add nsw i32 %65, %76
  %78 = load %struct.AudioState*, %struct.AudioState** %4, align 8
  %79 = getelementptr inbounds %struct.AudioState, %struct.AudioState* %78, i32 0, i32 3
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 2
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.AudioState*, %struct.AudioState** %4, align 8
  %84 = getelementptr inbounds %struct.AudioState, %struct.AudioState* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 2
  %87 = load i32, i32* %86, align 4
  %88 = mul nsw i32 %82, %87
  %89 = add nsw i32 %77, %88
  %90 = load %struct.AudioState*, %struct.AudioState** %4, align 8
  %91 = getelementptr inbounds %struct.AudioState, %struct.AudioState* %90, i32 0, i32 3
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 3
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.AudioState*, %struct.AudioState** %4, align 8
  %96 = getelementptr inbounds %struct.AudioState, %struct.AudioState* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 3
  %99 = load i32, i32* %98, align 4
  %100 = mul nsw i32 %94, %99
  %101 = add nsw i32 %89, %100
  %102 = load %struct.AudioState*, %struct.AudioState** %4, align 8
  %103 = getelementptr inbounds %struct.AudioState, %struct.AudioState* %102, i32 0, i32 3
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 4
  %106 = load i32, i32* %105, align 4
  %107 = load i32*, i32** %5, align 8
  %108 = load i32, i32* %107, align 4
  %109 = mul nsw i32 %106, %108
  %110 = add nsw i32 %101, %109
  %111 = ashr i32 %110, 3
  %112 = and i32 %111, 255
  store i32 %112, i32* %7, align 4
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* %6, align 4
  %115 = sub nsw i32 %113, %114
  %116 = and i32 %115, 255
  store i32 %116, i32* %8, align 4
  %117 = load i32, i32* %6, align 4
  %118 = shl i32 %117, 3
  store i32 %118, i32* %9, align 4
  %119 = load i32, i32* %9, align 4
  %120 = call i64 @abs(i32 %119)
  %121 = load %struct.AudioState*, %struct.AudioState** %4, align 8
  %122 = getelementptr inbounds %struct.AudioState, %struct.AudioState* %121, i32 0, i32 4
  %123 = load i64*, i64** %122, align 8
  %124 = getelementptr inbounds i64, i64* %123, i64 0
  %125 = load i64, i64* %124, align 8
  %126 = add nsw i64 %125, %120
  store i64 %126, i64* %124, align 8
  %127 = load i32, i32* %9, align 4
  %128 = load %struct.AudioState*, %struct.AudioState** %4, align 8
  %129 = getelementptr inbounds %struct.AudioState, %struct.AudioState* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 0
  %132 = load i32, i32* %131, align 4
  %133 = sub nsw i32 %127, %132
  %134 = call i64 @abs(i32 %133)
  %135 = load %struct.AudioState*, %struct.AudioState** %4, align 8
  %136 = getelementptr inbounds %struct.AudioState, %struct.AudioState* %135, i32 0, i32 4
  %137 = load i64*, i64** %136, align 8
  %138 = getelementptr inbounds i64, i64* %137, i64 1
  %139 = load i64, i64* %138, align 8
  %140 = add nsw i64 %139, %134
  store i64 %140, i64* %138, align 8
  %141 = load i32, i32* %9, align 4
  %142 = load %struct.AudioState*, %struct.AudioState** %4, align 8
  %143 = getelementptr inbounds %struct.AudioState, %struct.AudioState* %142, i32 0, i32 0
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 0
  %146 = load i32, i32* %145, align 4
  %147 = add nsw i32 %141, %146
  %148 = call i64 @abs(i32 %147)
  %149 = load %struct.AudioState*, %struct.AudioState** %4, align 8
  %150 = getelementptr inbounds %struct.AudioState, %struct.AudioState* %149, i32 0, i32 4
  %151 = load i64*, i64** %150, align 8
  %152 = getelementptr inbounds i64, i64* %151, i64 2
  %153 = load i64, i64* %152, align 8
  %154 = add nsw i64 %153, %148
  store i64 %154, i64* %152, align 8
  %155 = load i32, i32* %9, align 4
  %156 = load %struct.AudioState*, %struct.AudioState** %4, align 8
  %157 = getelementptr inbounds %struct.AudioState, %struct.AudioState* %156, i32 0, i32 0
  %158 = load i32*, i32** %157, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 1
  %160 = load i32, i32* %159, align 4
  %161 = sub nsw i32 %155, %160
  %162 = call i64 @abs(i32 %161)
  %163 = load %struct.AudioState*, %struct.AudioState** %4, align 8
  %164 = getelementptr inbounds %struct.AudioState, %struct.AudioState* %163, i32 0, i32 4
  %165 = load i64*, i64** %164, align 8
  %166 = getelementptr inbounds i64, i64* %165, i64 3
  %167 = load i64, i64* %166, align 8
  %168 = add nsw i64 %167, %162
  store i64 %168, i64* %166, align 8
  %169 = load i32, i32* %9, align 4
  %170 = load %struct.AudioState*, %struct.AudioState** %4, align 8
  %171 = getelementptr inbounds %struct.AudioState, %struct.AudioState* %170, i32 0, i32 0
  %172 = load i32*, i32** %171, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 1
  %174 = load i32, i32* %173, align 4
  %175 = add nsw i32 %169, %174
  %176 = call i64 @abs(i32 %175)
  %177 = load %struct.AudioState*, %struct.AudioState** %4, align 8
  %178 = getelementptr inbounds %struct.AudioState, %struct.AudioState* %177, i32 0, i32 4
  %179 = load i64*, i64** %178, align 8
  %180 = getelementptr inbounds i64, i64* %179, i64 4
  %181 = load i64, i64* %180, align 8
  %182 = add nsw i64 %181, %176
  store i64 %182, i64* %180, align 8
  %183 = load i32, i32* %9, align 4
  %184 = load %struct.AudioState*, %struct.AudioState** %4, align 8
  %185 = getelementptr inbounds %struct.AudioState, %struct.AudioState* %184, i32 0, i32 0
  %186 = load i32*, i32** %185, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 2
  %188 = load i32, i32* %187, align 4
  %189 = sub nsw i32 %183, %188
  %190 = call i64 @abs(i32 %189)
  %191 = load %struct.AudioState*, %struct.AudioState** %4, align 8
  %192 = getelementptr inbounds %struct.AudioState, %struct.AudioState* %191, i32 0, i32 4
  %193 = load i64*, i64** %192, align 8
  %194 = getelementptr inbounds i64, i64* %193, i64 5
  %195 = load i64, i64* %194, align 8
  %196 = add nsw i64 %195, %190
  store i64 %196, i64* %194, align 8
  %197 = load i32, i32* %9, align 4
  %198 = load %struct.AudioState*, %struct.AudioState** %4, align 8
  %199 = getelementptr inbounds %struct.AudioState, %struct.AudioState* %198, i32 0, i32 0
  %200 = load i32*, i32** %199, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 2
  %202 = load i32, i32* %201, align 4
  %203 = add nsw i32 %197, %202
  %204 = call i64 @abs(i32 %203)
  %205 = load %struct.AudioState*, %struct.AudioState** %4, align 8
  %206 = getelementptr inbounds %struct.AudioState, %struct.AudioState* %205, i32 0, i32 4
  %207 = load i64*, i64** %206, align 8
  %208 = getelementptr inbounds i64, i64* %207, i64 6
  %209 = load i64, i64* %208, align 8
  %210 = add nsw i64 %209, %204
  store i64 %210, i64* %208, align 8
  %211 = load i32, i32* %9, align 4
  %212 = load %struct.AudioState*, %struct.AudioState** %4, align 8
  %213 = getelementptr inbounds %struct.AudioState, %struct.AudioState* %212, i32 0, i32 0
  %214 = load i32*, i32** %213, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 3
  %216 = load i32, i32* %215, align 4
  %217 = sub nsw i32 %211, %216
  %218 = call i64 @abs(i32 %217)
  %219 = load %struct.AudioState*, %struct.AudioState** %4, align 8
  %220 = getelementptr inbounds %struct.AudioState, %struct.AudioState* %219, i32 0, i32 4
  %221 = load i64*, i64** %220, align 8
  %222 = getelementptr inbounds i64, i64* %221, i64 7
  %223 = load i64, i64* %222, align 8
  %224 = add nsw i64 %223, %218
  store i64 %224, i64* %222, align 8
  %225 = load i32, i32* %9, align 4
  %226 = load %struct.AudioState*, %struct.AudioState** %4, align 8
  %227 = getelementptr inbounds %struct.AudioState, %struct.AudioState* %226, i32 0, i32 0
  %228 = load i32*, i32** %227, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 3
  %230 = load i32, i32* %229, align 4
  %231 = add nsw i32 %225, %230
  %232 = call i64 @abs(i32 %231)
  %233 = load %struct.AudioState*, %struct.AudioState** %4, align 8
  %234 = getelementptr inbounds %struct.AudioState, %struct.AudioState* %233, i32 0, i32 4
  %235 = load i64*, i64** %234, align 8
  %236 = getelementptr inbounds i64, i64* %235, i64 8
  %237 = load i64, i64* %236, align 8
  %238 = add nsw i64 %237, %232
  store i64 %238, i64* %236, align 8
  %239 = load i32, i32* %9, align 4
  %240 = load i32*, i32** %5, align 8
  %241 = load i32, i32* %240, align 4
  %242 = sub nsw i32 %239, %241
  %243 = call i64 @abs(i32 %242)
  %244 = load %struct.AudioState*, %struct.AudioState** %4, align 8
  %245 = getelementptr inbounds %struct.AudioState, %struct.AudioState* %244, i32 0, i32 4
  %246 = load i64*, i64** %245, align 8
  %247 = getelementptr inbounds i64, i64* %246, i64 9
  %248 = load i64, i64* %247, align 8
  %249 = add nsw i64 %248, %243
  store i64 %249, i64* %247, align 8
  %250 = load i32, i32* %9, align 4
  %251 = load i32*, i32** %5, align 8
  %252 = load i32, i32* %251, align 4
  %253 = add nsw i32 %250, %252
  %254 = call i64 @abs(i32 %253)
  %255 = load %struct.AudioState*, %struct.AudioState** %4, align 8
  %256 = getelementptr inbounds %struct.AudioState, %struct.AudioState* %255, i32 0, i32 4
  %257 = load i64*, i64** %256, align 8
  %258 = getelementptr inbounds i64, i64* %257, i64 10
  %259 = load i64, i64* %258, align 8
  %260 = add nsw i64 %259, %254
  store i64 %260, i64* %258, align 8
  %261 = load i32, i32* %8, align 4
  %262 = load %struct.AudioState*, %struct.AudioState** %4, align 8
  %263 = getelementptr inbounds %struct.AudioState, %struct.AudioState* %262, i32 0, i32 2
  %264 = load i32, i32* %263, align 4
  %265 = sub nsw i32 %261, %264
  %266 = load %struct.AudioState*, %struct.AudioState** %4, align 8
  %267 = getelementptr inbounds %struct.AudioState, %struct.AudioState* %266, i32 0, i32 1
  store i32 %265, i32* %267, align 8
  %268 = load i32*, i32** %5, align 8
  store i32 %265, i32* %268, align 4
  %269 = load i32, i32* %8, align 4
  %270 = load %struct.AudioState*, %struct.AudioState** %4, align 8
  %271 = getelementptr inbounds %struct.AudioState, %struct.AudioState* %270, i32 0, i32 2
  store i32 %269, i32* %271, align 4
  %272 = load %struct.AudioState*, %struct.AudioState** %4, align 8
  %273 = getelementptr inbounds %struct.AudioState, %struct.AudioState* %272, i32 0, i32 5
  %274 = load i32, i32* %273, align 8
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %273, align 8
  %276 = and i32 %275, 31
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %461, label %278

278:                                              ; preds = %3
  store i32 0, i32* %11, align 4
  store i32 1, i32* %10, align 4
  br label %279

279:                                              ; preds = %301, %278
  %280 = load i32, i32* %10, align 4
  %281 = icmp slt i32 %280, 11
  br i1 %281, label %282, label %304

282:                                              ; preds = %279
  %283 = load %struct.AudioState*, %struct.AudioState** %4, align 8
  %284 = getelementptr inbounds %struct.AudioState, %struct.AudioState* %283, i32 0, i32 4
  %285 = load i64*, i64** %284, align 8
  %286 = load i32, i32* %10, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i64, i64* %285, i64 %287
  %289 = load i64, i64* %288, align 8
  %290 = load %struct.AudioState*, %struct.AudioState** %4, align 8
  %291 = getelementptr inbounds %struct.AudioState, %struct.AudioState* %290, i32 0, i32 4
  %292 = load i64*, i64** %291, align 8
  %293 = load i32, i32* %11, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i64, i64* %292, i64 %294
  %296 = load i64, i64* %295, align 8
  %297 = icmp slt i64 %289, %296
  br i1 %297, label %298, label %300

298:                                              ; preds = %282
  %299 = load i32, i32* %10, align 4
  store i32 %299, i32* %11, align 4
  br label %300

300:                                              ; preds = %298, %282
  br label %301

301:                                              ; preds = %300
  %302 = load i32, i32* %10, align 4
  %303 = add nsw i32 %302, 1
  store i32 %303, i32* %10, align 4
  br label %279

304:                                              ; preds = %279
  %305 = load %struct.AudioState*, %struct.AudioState** %4, align 8
  %306 = getelementptr inbounds %struct.AudioState, %struct.AudioState* %305, i32 0, i32 4
  %307 = load i64*, i64** %306, align 8
  %308 = call i32 @memset(i64* %307, i32 0, i32 8)
  %309 = load i32, i32* %11, align 4
  switch i32 %309, label %460 [
    i32 1, label %310
    i32 2, label %325
    i32 3, label %340
    i32 4, label %355
    i32 5, label %370
    i32 6, label %385
    i32 7, label %400
    i32 8, label %415
    i32 9, label %430
    i32 10, label %445
  ]

310:                                              ; preds = %304
  %311 = load %struct.AudioState*, %struct.AudioState** %4, align 8
  %312 = getelementptr inbounds %struct.AudioState, %struct.AudioState* %311, i32 0, i32 3
  %313 = load i32*, i32** %312, align 8
  %314 = getelementptr inbounds i32, i32* %313, i64 0
  %315 = load i32, i32* %314, align 4
  %316 = icmp sge i32 %315, -16
  br i1 %316, label %317, label %324

317:                                              ; preds = %310
  %318 = load %struct.AudioState*, %struct.AudioState** %4, align 8
  %319 = getelementptr inbounds %struct.AudioState, %struct.AudioState* %318, i32 0, i32 3
  %320 = load i32*, i32** %319, align 8
  %321 = getelementptr inbounds i32, i32* %320, i64 0
  %322 = load i32, i32* %321, align 4
  %323 = add nsw i32 %322, -1
  store i32 %323, i32* %321, align 4
  br label %324

324:                                              ; preds = %317, %310
  br label %460

325:                                              ; preds = %304
  %326 = load %struct.AudioState*, %struct.AudioState** %4, align 8
  %327 = getelementptr inbounds %struct.AudioState, %struct.AudioState* %326, i32 0, i32 3
  %328 = load i32*, i32** %327, align 8
  %329 = getelementptr inbounds i32, i32* %328, i64 0
  %330 = load i32, i32* %329, align 4
  %331 = icmp slt i32 %330, 16
  br i1 %331, label %332, label %339

332:                                              ; preds = %325
  %333 = load %struct.AudioState*, %struct.AudioState** %4, align 8
  %334 = getelementptr inbounds %struct.AudioState, %struct.AudioState* %333, i32 0, i32 3
  %335 = load i32*, i32** %334, align 8
  %336 = getelementptr inbounds i32, i32* %335, i64 0
  %337 = load i32, i32* %336, align 4
  %338 = add nsw i32 %337, 1
  store i32 %338, i32* %336, align 4
  br label %339

339:                                              ; preds = %332, %325
  br label %460

340:                                              ; preds = %304
  %341 = load %struct.AudioState*, %struct.AudioState** %4, align 8
  %342 = getelementptr inbounds %struct.AudioState, %struct.AudioState* %341, i32 0, i32 3
  %343 = load i32*, i32** %342, align 8
  %344 = getelementptr inbounds i32, i32* %343, i64 1
  %345 = load i32, i32* %344, align 4
  %346 = icmp sge i32 %345, -16
  br i1 %346, label %347, label %354

347:                                              ; preds = %340
  %348 = load %struct.AudioState*, %struct.AudioState** %4, align 8
  %349 = getelementptr inbounds %struct.AudioState, %struct.AudioState* %348, i32 0, i32 3
  %350 = load i32*, i32** %349, align 8
  %351 = getelementptr inbounds i32, i32* %350, i64 1
  %352 = load i32, i32* %351, align 4
  %353 = add nsw i32 %352, -1
  store i32 %353, i32* %351, align 4
  br label %354

354:                                              ; preds = %347, %340
  br label %460

355:                                              ; preds = %304
  %356 = load %struct.AudioState*, %struct.AudioState** %4, align 8
  %357 = getelementptr inbounds %struct.AudioState, %struct.AudioState* %356, i32 0, i32 3
  %358 = load i32*, i32** %357, align 8
  %359 = getelementptr inbounds i32, i32* %358, i64 1
  %360 = load i32, i32* %359, align 4
  %361 = icmp slt i32 %360, 16
  br i1 %361, label %362, label %369

362:                                              ; preds = %355
  %363 = load %struct.AudioState*, %struct.AudioState** %4, align 8
  %364 = getelementptr inbounds %struct.AudioState, %struct.AudioState* %363, i32 0, i32 3
  %365 = load i32*, i32** %364, align 8
  %366 = getelementptr inbounds i32, i32* %365, i64 1
  %367 = load i32, i32* %366, align 4
  %368 = add nsw i32 %367, 1
  store i32 %368, i32* %366, align 4
  br label %369

369:                                              ; preds = %362, %355
  br label %460

370:                                              ; preds = %304
  %371 = load %struct.AudioState*, %struct.AudioState** %4, align 8
  %372 = getelementptr inbounds %struct.AudioState, %struct.AudioState* %371, i32 0, i32 3
  %373 = load i32*, i32** %372, align 8
  %374 = getelementptr inbounds i32, i32* %373, i64 2
  %375 = load i32, i32* %374, align 4
  %376 = icmp sge i32 %375, -16
  br i1 %376, label %377, label %384

377:                                              ; preds = %370
  %378 = load %struct.AudioState*, %struct.AudioState** %4, align 8
  %379 = getelementptr inbounds %struct.AudioState, %struct.AudioState* %378, i32 0, i32 3
  %380 = load i32*, i32** %379, align 8
  %381 = getelementptr inbounds i32, i32* %380, i64 2
  %382 = load i32, i32* %381, align 4
  %383 = add nsw i32 %382, -1
  store i32 %383, i32* %381, align 4
  br label %384

384:                                              ; preds = %377, %370
  br label %460

385:                                              ; preds = %304
  %386 = load %struct.AudioState*, %struct.AudioState** %4, align 8
  %387 = getelementptr inbounds %struct.AudioState, %struct.AudioState* %386, i32 0, i32 3
  %388 = load i32*, i32** %387, align 8
  %389 = getelementptr inbounds i32, i32* %388, i64 2
  %390 = load i32, i32* %389, align 4
  %391 = icmp slt i32 %390, 16
  br i1 %391, label %392, label %399

392:                                              ; preds = %385
  %393 = load %struct.AudioState*, %struct.AudioState** %4, align 8
  %394 = getelementptr inbounds %struct.AudioState, %struct.AudioState* %393, i32 0, i32 3
  %395 = load i32*, i32** %394, align 8
  %396 = getelementptr inbounds i32, i32* %395, i64 2
  %397 = load i32, i32* %396, align 4
  %398 = add nsw i32 %397, 1
  store i32 %398, i32* %396, align 4
  br label %399

399:                                              ; preds = %392, %385
  br label %460

400:                                              ; preds = %304
  %401 = load %struct.AudioState*, %struct.AudioState** %4, align 8
  %402 = getelementptr inbounds %struct.AudioState, %struct.AudioState* %401, i32 0, i32 3
  %403 = load i32*, i32** %402, align 8
  %404 = getelementptr inbounds i32, i32* %403, i64 3
  %405 = load i32, i32* %404, align 4
  %406 = icmp sge i32 %405, -16
  br i1 %406, label %407, label %414

407:                                              ; preds = %400
  %408 = load %struct.AudioState*, %struct.AudioState** %4, align 8
  %409 = getelementptr inbounds %struct.AudioState, %struct.AudioState* %408, i32 0, i32 3
  %410 = load i32*, i32** %409, align 8
  %411 = getelementptr inbounds i32, i32* %410, i64 3
  %412 = load i32, i32* %411, align 4
  %413 = add nsw i32 %412, -1
  store i32 %413, i32* %411, align 4
  br label %414

414:                                              ; preds = %407, %400
  br label %460

415:                                              ; preds = %304
  %416 = load %struct.AudioState*, %struct.AudioState** %4, align 8
  %417 = getelementptr inbounds %struct.AudioState, %struct.AudioState* %416, i32 0, i32 3
  %418 = load i32*, i32** %417, align 8
  %419 = getelementptr inbounds i32, i32* %418, i64 3
  %420 = load i32, i32* %419, align 4
  %421 = icmp slt i32 %420, 16
  br i1 %421, label %422, label %429

422:                                              ; preds = %415
  %423 = load %struct.AudioState*, %struct.AudioState** %4, align 8
  %424 = getelementptr inbounds %struct.AudioState, %struct.AudioState* %423, i32 0, i32 3
  %425 = load i32*, i32** %424, align 8
  %426 = getelementptr inbounds i32, i32* %425, i64 3
  %427 = load i32, i32* %426, align 4
  %428 = add nsw i32 %427, 1
  store i32 %428, i32* %426, align 4
  br label %429

429:                                              ; preds = %422, %415
  br label %460

430:                                              ; preds = %304
  %431 = load %struct.AudioState*, %struct.AudioState** %4, align 8
  %432 = getelementptr inbounds %struct.AudioState, %struct.AudioState* %431, i32 0, i32 3
  %433 = load i32*, i32** %432, align 8
  %434 = getelementptr inbounds i32, i32* %433, i64 4
  %435 = load i32, i32* %434, align 4
  %436 = icmp sge i32 %435, -16
  br i1 %436, label %437, label %444

437:                                              ; preds = %430
  %438 = load %struct.AudioState*, %struct.AudioState** %4, align 8
  %439 = getelementptr inbounds %struct.AudioState, %struct.AudioState* %438, i32 0, i32 3
  %440 = load i32*, i32** %439, align 8
  %441 = getelementptr inbounds i32, i32* %440, i64 4
  %442 = load i32, i32* %441, align 4
  %443 = add nsw i32 %442, -1
  store i32 %443, i32* %441, align 4
  br label %444

444:                                              ; preds = %437, %430
  br label %460

445:                                              ; preds = %304
  %446 = load %struct.AudioState*, %struct.AudioState** %4, align 8
  %447 = getelementptr inbounds %struct.AudioState, %struct.AudioState* %446, i32 0, i32 3
  %448 = load i32*, i32** %447, align 8
  %449 = getelementptr inbounds i32, i32* %448, i64 4
  %450 = load i32, i32* %449, align 4
  %451 = icmp slt i32 %450, 16
  br i1 %451, label %452, label %459

452:                                              ; preds = %445
  %453 = load %struct.AudioState*, %struct.AudioState** %4, align 8
  %454 = getelementptr inbounds %struct.AudioState, %struct.AudioState* %453, i32 0, i32 3
  %455 = load i32*, i32** %454, align 8
  %456 = getelementptr inbounds i32, i32* %455, i64 4
  %457 = load i32, i32* %456, align 4
  %458 = add nsw i32 %457, 1
  store i32 %458, i32* %456, align 4
  br label %459

459:                                              ; preds = %452, %445
  br label %460

460:                                              ; preds = %304, %459, %444, %429, %414, %399, %384, %369, %354, %339, %324
  br label %461

461:                                              ; preds = %460, %3
  %462 = load i32, i32* %8, align 4
  ret i32 %462
}

declare dso_local i64 @abs(i32) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
