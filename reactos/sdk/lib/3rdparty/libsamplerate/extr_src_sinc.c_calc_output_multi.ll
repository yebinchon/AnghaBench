; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libsamplerate/extr_src_sinc.c_calc_output_multi.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libsamplerate/extr_src_sinc.c_calc_output_multi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { double*, double*, i32, double*, double*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32, i32, i32, double, float*)* @calc_output_multi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @calc_output_multi(%struct.TYPE_3__* %0, i32 %1, i32 %2, i32 %3, double %4, float* %5) #0 {
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca float*, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double*, align 8
  %16 = alloca double*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store double %4, double* %11, align 8
  store float* %5, float** %12, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load double*, double** %24, align 8
  store double* %25, double** %15, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load double*, double** %27, align 8
  store double* %28, double** %16, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @int_to_fp(i32 %31)
  store i32 %32, i32* %18, align 4
  %33 = load i32, i32* %9, align 4
  store i32 %33, i32* %17, align 4
  %34 = load i32, i32* %18, align 4
  %35 = load i32, i32* %17, align 4
  %36 = sub nsw i32 %34, %35
  %37 = load i32, i32* %8, align 4
  %38 = sdiv i32 %36, %37
  store i32 %38, i32* %20, align 4
  %39 = load i32, i32* %17, align 4
  %40 = load i32, i32* %20, align 4
  %41 = load i32, i32* %8, align 4
  %42 = mul nsw i32 %40, %41
  %43 = add nsw i32 %39, %42
  store i32 %43, i32* %17, align 4
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %20, align 4
  %49 = mul nsw i32 %47, %48
  %50 = sub nsw i32 %46, %49
  store i32 %50, i32* %19, align 4
  %51 = load double*, double** %15, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = mul i64 8, %53
  %55 = trunc i64 %54 to i32
  %56 = call i32 @memset(double* %51, i32 0, i32 %55)
  br label %57

57:                                               ; preds = %263, %6
  %58 = load i32, i32* %17, align 4
  %59 = call double @fp_to_double(i32 %58)
  store double %59, double* %13, align 8
  %60 = load i32, i32* %17, align 4
  %61 = call i32 @fp_to_int(i32 %60)
  store i32 %61, i32* %21, align 4
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 3
  %64 = load double*, double** %63, align 8
  %65 = load i32, i32* %21, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds double, double* %64, i64 %66
  %68 = load double, double* %67, align 8
  %69 = load double, double* %13, align 8
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 3
  %72 = load double*, double** %71, align 8
  %73 = load i32, i32* %21, align 4
  %74 = add nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds double, double* %72, i64 %75
  %77 = load double, double* %76, align 8
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 3
  %80 = load double*, double** %79, align 8
  %81 = load i32, i32* %21, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds double, double* %80, i64 %82
  %84 = load double, double* %83, align 8
  %85 = fsub double %77, %84
  %86 = fmul double %69, %85
  %87 = fadd double %68, %86
  store double %87, double* %14, align 8
  %88 = load i32, i32* %10, align 4
  store i32 %88, i32* %22, align 4
  br label %89

89:                                               ; preds = %253, %57
  %90 = load i32, i32* %22, align 4
  %91 = srem i32 %90, 8
  switch i32 %91, label %92 [
    i32 7, label %112
    i32 6, label %132
    i32 5, label %152
    i32 4, label %172
    i32 3, label %192
    i32 2, label %212
    i32 1, label %232
  ]

92:                                               ; preds = %89
  %93 = load i32, i32* %22, align 4
  %94 = add nsw i32 %93, -1
  store i32 %94, i32* %22, align 4
  %95 = load double, double* %14, align 8
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 4
  %98 = load double*, double** %97, align 8
  %99 = load i32, i32* %19, align 4
  %100 = load i32, i32* %22, align 4
  %101 = add nsw i32 %99, %100
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds double, double* %98, i64 %102
  %104 = load double, double* %103, align 8
  %105 = fmul double %95, %104
  %106 = load double*, double** %15, align 8
  %107 = load i32, i32* %22, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds double, double* %106, i64 %108
  %110 = load double, double* %109, align 8
  %111 = fadd double %110, %105
  store double %111, double* %109, align 8
  br label %112

112:                                              ; preds = %89, %92
  %113 = load i32, i32* %22, align 4
  %114 = add nsw i32 %113, -1
  store i32 %114, i32* %22, align 4
  %115 = load double, double* %14, align 8
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 4
  %118 = load double*, double** %117, align 8
  %119 = load i32, i32* %19, align 4
  %120 = load i32, i32* %22, align 4
  %121 = add nsw i32 %119, %120
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds double, double* %118, i64 %122
  %124 = load double, double* %123, align 8
  %125 = fmul double %115, %124
  %126 = load double*, double** %15, align 8
  %127 = load i32, i32* %22, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds double, double* %126, i64 %128
  %130 = load double, double* %129, align 8
  %131 = fadd double %130, %125
  store double %131, double* %129, align 8
  br label %132

132:                                              ; preds = %89, %112
  %133 = load i32, i32* %22, align 4
  %134 = add nsw i32 %133, -1
  store i32 %134, i32* %22, align 4
  %135 = load double, double* %14, align 8
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 4
  %138 = load double*, double** %137, align 8
  %139 = load i32, i32* %19, align 4
  %140 = load i32, i32* %22, align 4
  %141 = add nsw i32 %139, %140
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds double, double* %138, i64 %142
  %144 = load double, double* %143, align 8
  %145 = fmul double %135, %144
  %146 = load double*, double** %15, align 8
  %147 = load i32, i32* %22, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds double, double* %146, i64 %148
  %150 = load double, double* %149, align 8
  %151 = fadd double %150, %145
  store double %151, double* %149, align 8
  br label %152

152:                                              ; preds = %89, %132
  %153 = load i32, i32* %22, align 4
  %154 = add nsw i32 %153, -1
  store i32 %154, i32* %22, align 4
  %155 = load double, double* %14, align 8
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 4
  %158 = load double*, double** %157, align 8
  %159 = load i32, i32* %19, align 4
  %160 = load i32, i32* %22, align 4
  %161 = add nsw i32 %159, %160
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds double, double* %158, i64 %162
  %164 = load double, double* %163, align 8
  %165 = fmul double %155, %164
  %166 = load double*, double** %15, align 8
  %167 = load i32, i32* %22, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds double, double* %166, i64 %168
  %170 = load double, double* %169, align 8
  %171 = fadd double %170, %165
  store double %171, double* %169, align 8
  br label %172

172:                                              ; preds = %89, %152
  %173 = load i32, i32* %22, align 4
  %174 = add nsw i32 %173, -1
  store i32 %174, i32* %22, align 4
  %175 = load double, double* %14, align 8
  %176 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 4
  %178 = load double*, double** %177, align 8
  %179 = load i32, i32* %19, align 4
  %180 = load i32, i32* %22, align 4
  %181 = add nsw i32 %179, %180
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds double, double* %178, i64 %182
  %184 = load double, double* %183, align 8
  %185 = fmul double %175, %184
  %186 = load double*, double** %15, align 8
  %187 = load i32, i32* %22, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds double, double* %186, i64 %188
  %190 = load double, double* %189, align 8
  %191 = fadd double %190, %185
  store double %191, double* %189, align 8
  br label %192

192:                                              ; preds = %89, %172
  %193 = load i32, i32* %22, align 4
  %194 = add nsw i32 %193, -1
  store i32 %194, i32* %22, align 4
  %195 = load double, double* %14, align 8
  %196 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %197 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %196, i32 0, i32 4
  %198 = load double*, double** %197, align 8
  %199 = load i32, i32* %19, align 4
  %200 = load i32, i32* %22, align 4
  %201 = add nsw i32 %199, %200
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds double, double* %198, i64 %202
  %204 = load double, double* %203, align 8
  %205 = fmul double %195, %204
  %206 = load double*, double** %15, align 8
  %207 = load i32, i32* %22, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds double, double* %206, i64 %208
  %210 = load double, double* %209, align 8
  %211 = fadd double %210, %205
  store double %211, double* %209, align 8
  br label %212

212:                                              ; preds = %89, %192
  %213 = load i32, i32* %22, align 4
  %214 = add nsw i32 %213, -1
  store i32 %214, i32* %22, align 4
  %215 = load double, double* %14, align 8
  %216 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %217 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %216, i32 0, i32 4
  %218 = load double*, double** %217, align 8
  %219 = load i32, i32* %19, align 4
  %220 = load i32, i32* %22, align 4
  %221 = add nsw i32 %219, %220
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds double, double* %218, i64 %222
  %224 = load double, double* %223, align 8
  %225 = fmul double %215, %224
  %226 = load double*, double** %15, align 8
  %227 = load i32, i32* %22, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds double, double* %226, i64 %228
  %230 = load double, double* %229, align 8
  %231 = fadd double %230, %225
  store double %231, double* %229, align 8
  br label %232

232:                                              ; preds = %89, %212
  %233 = load i32, i32* %22, align 4
  %234 = add nsw i32 %233, -1
  store i32 %234, i32* %22, align 4
  %235 = load double, double* %14, align 8
  %236 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %237 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %236, i32 0, i32 4
  %238 = load double*, double** %237, align 8
  %239 = load i32, i32* %19, align 4
  %240 = load i32, i32* %22, align 4
  %241 = add nsw i32 %239, %240
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds double, double* %238, i64 %242
  %244 = load double, double* %243, align 8
  %245 = fmul double %235, %244
  %246 = load double*, double** %15, align 8
  %247 = load i32, i32* %22, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds double, double* %246, i64 %248
  %250 = load double, double* %249, align 8
  %251 = fadd double %250, %245
  store double %251, double* %249, align 8
  br label %252

252:                                              ; preds = %232
  br label %253

253:                                              ; preds = %252
  %254 = load i32, i32* %22, align 4
  %255 = icmp sgt i32 %254, 0
  br i1 %255, label %89, label %256

256:                                              ; preds = %253
  %257 = load i32, i32* %8, align 4
  %258 = load i32, i32* %17, align 4
  %259 = sub nsw i32 %258, %257
  store i32 %259, i32* %17, align 4
  %260 = load i32, i32* %19, align 4
  %261 = load i32, i32* %10, align 4
  %262 = add nsw i32 %260, %261
  store i32 %262, i32* %19, align 4
  br label %263

263:                                              ; preds = %256
  %264 = load i32, i32* %17, align 4
  %265 = call i32 @MAKE_INCREMENT_T(i32 0)
  %266 = icmp sge i32 %264, %265
  br i1 %266, label %57, label %267

267:                                              ; preds = %263
  %268 = load i32, i32* %8, align 4
  %269 = load i32, i32* %9, align 4
  %270 = sub nsw i32 %268, %269
  store i32 %270, i32* %17, align 4
  %271 = load i32, i32* %18, align 4
  %272 = load i32, i32* %17, align 4
  %273 = sub nsw i32 %271, %272
  %274 = load i32, i32* %8, align 4
  %275 = sdiv i32 %273, %274
  store i32 %275, i32* %20, align 4
  %276 = load i32, i32* %17, align 4
  %277 = load i32, i32* %20, align 4
  %278 = load i32, i32* %8, align 4
  %279 = mul nsw i32 %277, %278
  %280 = add nsw i32 %276, %279
  store i32 %280, i32* %17, align 4
  %281 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %282 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %281, i32 0, i32 2
  %283 = load i32, i32* %282, align 8
  %284 = load i32, i32* %10, align 4
  %285 = load i32, i32* %20, align 4
  %286 = add nsw i32 1, %285
  %287 = mul nsw i32 %284, %286
  %288 = add nsw i32 %283, %287
  store i32 %288, i32* %19, align 4
  %289 = load double*, double** %16, align 8
  %290 = load i32, i32* %10, align 4
  %291 = sext i32 %290 to i64
  %292 = mul i64 8, %291
  %293 = trunc i64 %292 to i32
  %294 = call i32 @memset(double* %289, i32 0, i32 %293)
  br label %295

295:                                              ; preds = %501, %267
  %296 = load i32, i32* %17, align 4
  %297 = call double @fp_to_double(i32 %296)
  store double %297, double* %13, align 8
  %298 = load i32, i32* %17, align 4
  %299 = call i32 @fp_to_int(i32 %298)
  store i32 %299, i32* %21, align 4
  %300 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %301 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %300, i32 0, i32 3
  %302 = load double*, double** %301, align 8
  %303 = load i32, i32* %21, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds double, double* %302, i64 %304
  %306 = load double, double* %305, align 8
  %307 = load double, double* %13, align 8
  %308 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %309 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %308, i32 0, i32 3
  %310 = load double*, double** %309, align 8
  %311 = load i32, i32* %21, align 4
  %312 = add nsw i32 %311, 1
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds double, double* %310, i64 %313
  %315 = load double, double* %314, align 8
  %316 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %317 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %316, i32 0, i32 3
  %318 = load double*, double** %317, align 8
  %319 = load i32, i32* %21, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds double, double* %318, i64 %320
  %322 = load double, double* %321, align 8
  %323 = fsub double %315, %322
  %324 = fmul double %307, %323
  %325 = fadd double %306, %324
  store double %325, double* %14, align 8
  %326 = load i32, i32* %10, align 4
  store i32 %326, i32* %22, align 4
  br label %327

327:                                              ; preds = %491, %295
  %328 = load i32, i32* %22, align 4
  %329 = srem i32 %328, 8
  switch i32 %329, label %330 [
    i32 7, label %350
    i32 6, label %370
    i32 5, label %390
    i32 4, label %410
    i32 3, label %430
    i32 2, label %450
    i32 1, label %470
  ]

330:                                              ; preds = %327
  %331 = load i32, i32* %22, align 4
  %332 = add nsw i32 %331, -1
  store i32 %332, i32* %22, align 4
  %333 = load double, double* %14, align 8
  %334 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %335 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %334, i32 0, i32 4
  %336 = load double*, double** %335, align 8
  %337 = load i32, i32* %19, align 4
  %338 = load i32, i32* %22, align 4
  %339 = add nsw i32 %337, %338
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds double, double* %336, i64 %340
  %342 = load double, double* %341, align 8
  %343 = fmul double %333, %342
  %344 = load double*, double** %16, align 8
  %345 = load i32, i32* %22, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds double, double* %344, i64 %346
  %348 = load double, double* %347, align 8
  %349 = fadd double %348, %343
  store double %349, double* %347, align 8
  br label %350

350:                                              ; preds = %327, %330
  %351 = load i32, i32* %22, align 4
  %352 = add nsw i32 %351, -1
  store i32 %352, i32* %22, align 4
  %353 = load double, double* %14, align 8
  %354 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %355 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %354, i32 0, i32 4
  %356 = load double*, double** %355, align 8
  %357 = load i32, i32* %19, align 4
  %358 = load i32, i32* %22, align 4
  %359 = add nsw i32 %357, %358
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds double, double* %356, i64 %360
  %362 = load double, double* %361, align 8
  %363 = fmul double %353, %362
  %364 = load double*, double** %16, align 8
  %365 = load i32, i32* %22, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds double, double* %364, i64 %366
  %368 = load double, double* %367, align 8
  %369 = fadd double %368, %363
  store double %369, double* %367, align 8
  br label %370

370:                                              ; preds = %327, %350
  %371 = load i32, i32* %22, align 4
  %372 = add nsw i32 %371, -1
  store i32 %372, i32* %22, align 4
  %373 = load double, double* %14, align 8
  %374 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %375 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %374, i32 0, i32 4
  %376 = load double*, double** %375, align 8
  %377 = load i32, i32* %19, align 4
  %378 = load i32, i32* %22, align 4
  %379 = add nsw i32 %377, %378
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds double, double* %376, i64 %380
  %382 = load double, double* %381, align 8
  %383 = fmul double %373, %382
  %384 = load double*, double** %16, align 8
  %385 = load i32, i32* %22, align 4
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds double, double* %384, i64 %386
  %388 = load double, double* %387, align 8
  %389 = fadd double %388, %383
  store double %389, double* %387, align 8
  br label %390

390:                                              ; preds = %327, %370
  %391 = load i32, i32* %22, align 4
  %392 = add nsw i32 %391, -1
  store i32 %392, i32* %22, align 4
  %393 = load double, double* %14, align 8
  %394 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %395 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %394, i32 0, i32 4
  %396 = load double*, double** %395, align 8
  %397 = load i32, i32* %19, align 4
  %398 = load i32, i32* %22, align 4
  %399 = add nsw i32 %397, %398
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds double, double* %396, i64 %400
  %402 = load double, double* %401, align 8
  %403 = fmul double %393, %402
  %404 = load double*, double** %16, align 8
  %405 = load i32, i32* %22, align 4
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds double, double* %404, i64 %406
  %408 = load double, double* %407, align 8
  %409 = fadd double %408, %403
  store double %409, double* %407, align 8
  br label %410

410:                                              ; preds = %327, %390
  %411 = load i32, i32* %22, align 4
  %412 = add nsw i32 %411, -1
  store i32 %412, i32* %22, align 4
  %413 = load double, double* %14, align 8
  %414 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %415 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %414, i32 0, i32 4
  %416 = load double*, double** %415, align 8
  %417 = load i32, i32* %19, align 4
  %418 = load i32, i32* %22, align 4
  %419 = add nsw i32 %417, %418
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds double, double* %416, i64 %420
  %422 = load double, double* %421, align 8
  %423 = fmul double %413, %422
  %424 = load double*, double** %16, align 8
  %425 = load i32, i32* %22, align 4
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds double, double* %424, i64 %426
  %428 = load double, double* %427, align 8
  %429 = fadd double %428, %423
  store double %429, double* %427, align 8
  br label %430

430:                                              ; preds = %327, %410
  %431 = load i32, i32* %22, align 4
  %432 = add nsw i32 %431, -1
  store i32 %432, i32* %22, align 4
  %433 = load double, double* %14, align 8
  %434 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %435 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %434, i32 0, i32 4
  %436 = load double*, double** %435, align 8
  %437 = load i32, i32* %19, align 4
  %438 = load i32, i32* %22, align 4
  %439 = add nsw i32 %437, %438
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds double, double* %436, i64 %440
  %442 = load double, double* %441, align 8
  %443 = fmul double %433, %442
  %444 = load double*, double** %16, align 8
  %445 = load i32, i32* %22, align 4
  %446 = sext i32 %445 to i64
  %447 = getelementptr inbounds double, double* %444, i64 %446
  %448 = load double, double* %447, align 8
  %449 = fadd double %448, %443
  store double %449, double* %447, align 8
  br label %450

450:                                              ; preds = %327, %430
  %451 = load i32, i32* %22, align 4
  %452 = add nsw i32 %451, -1
  store i32 %452, i32* %22, align 4
  %453 = load double, double* %14, align 8
  %454 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %455 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %454, i32 0, i32 4
  %456 = load double*, double** %455, align 8
  %457 = load i32, i32* %19, align 4
  %458 = load i32, i32* %22, align 4
  %459 = add nsw i32 %457, %458
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds double, double* %456, i64 %460
  %462 = load double, double* %461, align 8
  %463 = fmul double %453, %462
  %464 = load double*, double** %16, align 8
  %465 = load i32, i32* %22, align 4
  %466 = sext i32 %465 to i64
  %467 = getelementptr inbounds double, double* %464, i64 %466
  %468 = load double, double* %467, align 8
  %469 = fadd double %468, %463
  store double %469, double* %467, align 8
  br label %470

470:                                              ; preds = %327, %450
  %471 = load i32, i32* %22, align 4
  %472 = add nsw i32 %471, -1
  store i32 %472, i32* %22, align 4
  %473 = load double, double* %14, align 8
  %474 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %475 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %474, i32 0, i32 4
  %476 = load double*, double** %475, align 8
  %477 = load i32, i32* %19, align 4
  %478 = load i32, i32* %22, align 4
  %479 = add nsw i32 %477, %478
  %480 = sext i32 %479 to i64
  %481 = getelementptr inbounds double, double* %476, i64 %480
  %482 = load double, double* %481, align 8
  %483 = fmul double %473, %482
  %484 = load double*, double** %16, align 8
  %485 = load i32, i32* %22, align 4
  %486 = sext i32 %485 to i64
  %487 = getelementptr inbounds double, double* %484, i64 %486
  %488 = load double, double* %487, align 8
  %489 = fadd double %488, %483
  store double %489, double* %487, align 8
  br label %490

490:                                              ; preds = %470
  br label %491

491:                                              ; preds = %490
  %492 = load i32, i32* %22, align 4
  %493 = icmp sgt i32 %492, 0
  br i1 %493, label %327, label %494

494:                                              ; preds = %491
  %495 = load i32, i32* %8, align 4
  %496 = load i32, i32* %17, align 4
  %497 = sub nsw i32 %496, %495
  store i32 %497, i32* %17, align 4
  %498 = load i32, i32* %19, align 4
  %499 = load i32, i32* %10, align 4
  %500 = sub nsw i32 %498, %499
  store i32 %500, i32* %19, align 4
  br label %501

501:                                              ; preds = %494
  %502 = load i32, i32* %17, align 4
  %503 = call i32 @MAKE_INCREMENT_T(i32 0)
  %504 = icmp sgt i32 %502, %503
  br i1 %504, label %295, label %505

505:                                              ; preds = %501
  %506 = load i32, i32* %10, align 4
  store i32 %506, i32* %22, align 4
  br label %507

507:                                              ; preds = %679, %505
  %508 = load i32, i32* %22, align 4
  %509 = srem i32 %508, 8
  switch i32 %509, label %510 [
    i32 7, label %531
    i32 6, label %552
    i32 5, label %573
    i32 4, label %594
    i32 3, label %615
    i32 2, label %636
    i32 1, label %657
  ]

510:                                              ; preds = %507
  %511 = load i32, i32* %22, align 4
  %512 = add nsw i32 %511, -1
  store i32 %512, i32* %22, align 4
  %513 = load double, double* %11, align 8
  %514 = load double*, double** %15, align 8
  %515 = load i32, i32* %22, align 4
  %516 = sext i32 %515 to i64
  %517 = getelementptr inbounds double, double* %514, i64 %516
  %518 = load double, double* %517, align 8
  %519 = load double*, double** %16, align 8
  %520 = load i32, i32* %22, align 4
  %521 = sext i32 %520 to i64
  %522 = getelementptr inbounds double, double* %519, i64 %521
  %523 = load double, double* %522, align 8
  %524 = fadd double %518, %523
  %525 = fmul double %513, %524
  %526 = fptrunc double %525 to float
  %527 = load float*, float** %12, align 8
  %528 = load i32, i32* %22, align 4
  %529 = sext i32 %528 to i64
  %530 = getelementptr inbounds float, float* %527, i64 %529
  store float %526, float* %530, align 4
  br label %531

531:                                              ; preds = %507, %510
  %532 = load i32, i32* %22, align 4
  %533 = add nsw i32 %532, -1
  store i32 %533, i32* %22, align 4
  %534 = load double, double* %11, align 8
  %535 = load double*, double** %15, align 8
  %536 = load i32, i32* %22, align 4
  %537 = sext i32 %536 to i64
  %538 = getelementptr inbounds double, double* %535, i64 %537
  %539 = load double, double* %538, align 8
  %540 = load double*, double** %16, align 8
  %541 = load i32, i32* %22, align 4
  %542 = sext i32 %541 to i64
  %543 = getelementptr inbounds double, double* %540, i64 %542
  %544 = load double, double* %543, align 8
  %545 = fadd double %539, %544
  %546 = fmul double %534, %545
  %547 = fptrunc double %546 to float
  %548 = load float*, float** %12, align 8
  %549 = load i32, i32* %22, align 4
  %550 = sext i32 %549 to i64
  %551 = getelementptr inbounds float, float* %548, i64 %550
  store float %547, float* %551, align 4
  br label %552

552:                                              ; preds = %507, %531
  %553 = load i32, i32* %22, align 4
  %554 = add nsw i32 %553, -1
  store i32 %554, i32* %22, align 4
  %555 = load double, double* %11, align 8
  %556 = load double*, double** %15, align 8
  %557 = load i32, i32* %22, align 4
  %558 = sext i32 %557 to i64
  %559 = getelementptr inbounds double, double* %556, i64 %558
  %560 = load double, double* %559, align 8
  %561 = load double*, double** %16, align 8
  %562 = load i32, i32* %22, align 4
  %563 = sext i32 %562 to i64
  %564 = getelementptr inbounds double, double* %561, i64 %563
  %565 = load double, double* %564, align 8
  %566 = fadd double %560, %565
  %567 = fmul double %555, %566
  %568 = fptrunc double %567 to float
  %569 = load float*, float** %12, align 8
  %570 = load i32, i32* %22, align 4
  %571 = sext i32 %570 to i64
  %572 = getelementptr inbounds float, float* %569, i64 %571
  store float %568, float* %572, align 4
  br label %573

573:                                              ; preds = %507, %552
  %574 = load i32, i32* %22, align 4
  %575 = add nsw i32 %574, -1
  store i32 %575, i32* %22, align 4
  %576 = load double, double* %11, align 8
  %577 = load double*, double** %15, align 8
  %578 = load i32, i32* %22, align 4
  %579 = sext i32 %578 to i64
  %580 = getelementptr inbounds double, double* %577, i64 %579
  %581 = load double, double* %580, align 8
  %582 = load double*, double** %16, align 8
  %583 = load i32, i32* %22, align 4
  %584 = sext i32 %583 to i64
  %585 = getelementptr inbounds double, double* %582, i64 %584
  %586 = load double, double* %585, align 8
  %587 = fadd double %581, %586
  %588 = fmul double %576, %587
  %589 = fptrunc double %588 to float
  %590 = load float*, float** %12, align 8
  %591 = load i32, i32* %22, align 4
  %592 = sext i32 %591 to i64
  %593 = getelementptr inbounds float, float* %590, i64 %592
  store float %589, float* %593, align 4
  br label %594

594:                                              ; preds = %507, %573
  %595 = load i32, i32* %22, align 4
  %596 = add nsw i32 %595, -1
  store i32 %596, i32* %22, align 4
  %597 = load double, double* %11, align 8
  %598 = load double*, double** %15, align 8
  %599 = load i32, i32* %22, align 4
  %600 = sext i32 %599 to i64
  %601 = getelementptr inbounds double, double* %598, i64 %600
  %602 = load double, double* %601, align 8
  %603 = load double*, double** %16, align 8
  %604 = load i32, i32* %22, align 4
  %605 = sext i32 %604 to i64
  %606 = getelementptr inbounds double, double* %603, i64 %605
  %607 = load double, double* %606, align 8
  %608 = fadd double %602, %607
  %609 = fmul double %597, %608
  %610 = fptrunc double %609 to float
  %611 = load float*, float** %12, align 8
  %612 = load i32, i32* %22, align 4
  %613 = sext i32 %612 to i64
  %614 = getelementptr inbounds float, float* %611, i64 %613
  store float %610, float* %614, align 4
  br label %615

615:                                              ; preds = %507, %594
  %616 = load i32, i32* %22, align 4
  %617 = add nsw i32 %616, -1
  store i32 %617, i32* %22, align 4
  %618 = load double, double* %11, align 8
  %619 = load double*, double** %15, align 8
  %620 = load i32, i32* %22, align 4
  %621 = sext i32 %620 to i64
  %622 = getelementptr inbounds double, double* %619, i64 %621
  %623 = load double, double* %622, align 8
  %624 = load double*, double** %16, align 8
  %625 = load i32, i32* %22, align 4
  %626 = sext i32 %625 to i64
  %627 = getelementptr inbounds double, double* %624, i64 %626
  %628 = load double, double* %627, align 8
  %629 = fadd double %623, %628
  %630 = fmul double %618, %629
  %631 = fptrunc double %630 to float
  %632 = load float*, float** %12, align 8
  %633 = load i32, i32* %22, align 4
  %634 = sext i32 %633 to i64
  %635 = getelementptr inbounds float, float* %632, i64 %634
  store float %631, float* %635, align 4
  br label %636

636:                                              ; preds = %507, %615
  %637 = load i32, i32* %22, align 4
  %638 = add nsw i32 %637, -1
  store i32 %638, i32* %22, align 4
  %639 = load double, double* %11, align 8
  %640 = load double*, double** %15, align 8
  %641 = load i32, i32* %22, align 4
  %642 = sext i32 %641 to i64
  %643 = getelementptr inbounds double, double* %640, i64 %642
  %644 = load double, double* %643, align 8
  %645 = load double*, double** %16, align 8
  %646 = load i32, i32* %22, align 4
  %647 = sext i32 %646 to i64
  %648 = getelementptr inbounds double, double* %645, i64 %647
  %649 = load double, double* %648, align 8
  %650 = fadd double %644, %649
  %651 = fmul double %639, %650
  %652 = fptrunc double %651 to float
  %653 = load float*, float** %12, align 8
  %654 = load i32, i32* %22, align 4
  %655 = sext i32 %654 to i64
  %656 = getelementptr inbounds float, float* %653, i64 %655
  store float %652, float* %656, align 4
  br label %657

657:                                              ; preds = %507, %636
  %658 = load i32, i32* %22, align 4
  %659 = add nsw i32 %658, -1
  store i32 %659, i32* %22, align 4
  %660 = load double, double* %11, align 8
  %661 = load double*, double** %15, align 8
  %662 = load i32, i32* %22, align 4
  %663 = sext i32 %662 to i64
  %664 = getelementptr inbounds double, double* %661, i64 %663
  %665 = load double, double* %664, align 8
  %666 = load double*, double** %16, align 8
  %667 = load i32, i32* %22, align 4
  %668 = sext i32 %667 to i64
  %669 = getelementptr inbounds double, double* %666, i64 %668
  %670 = load double, double* %669, align 8
  %671 = fadd double %665, %670
  %672 = fmul double %660, %671
  %673 = fptrunc double %672 to float
  %674 = load float*, float** %12, align 8
  %675 = load i32, i32* %22, align 4
  %676 = sext i32 %675 to i64
  %677 = getelementptr inbounds float, float* %674, i64 %676
  store float %673, float* %677, align 4
  br label %678

678:                                              ; preds = %657
  br label %679

679:                                              ; preds = %678
  %680 = load i32, i32* %22, align 4
  %681 = icmp sgt i32 %680, 0
  br i1 %681, label %507, label %682

682:                                              ; preds = %679
  ret void
}

declare dso_local i32 @int_to_fp(i32) #1

declare dso_local i32 @memset(double*, i32, i32) #1

declare dso_local double @fp_to_double(i32) #1

declare dso_local i32 @fp_to_int(i32) #1

declare dso_local i32 @MAKE_INCREMENT_T(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
