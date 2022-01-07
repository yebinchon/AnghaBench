; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libsamplerate/extr_src_sinc.c_calc_output_hex.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libsamplerate/extr_src_sinc.c_calc_output_hex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, double*, double*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32, i32, double, float*)* @calc_output_hex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @calc_output_hex(%struct.TYPE_3__* %0, i32 %1, i32 %2, double %3, float* %4) #0 {
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca float*, align 8
  %11 = alloca double, align 8
  %12 = alloca [6 x double], align 16
  %13 = alloca [6 x double], align 16
  %14 = alloca double, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store double %3, double* %9, align 8
  store float* %4, float** %10, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @int_to_fp(i32 %22)
  store i32 %23, i32* %16, align 4
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %15, align 4
  %25 = load i32, i32* %16, align 4
  %26 = load i32, i32* %15, align 4
  %27 = sub nsw i32 %25, %26
  %28 = load i32, i32* %7, align 4
  %29 = sdiv i32 %27, %28
  store i32 %29, i32* %18, align 4
  %30 = load i32, i32* %15, align 4
  %31 = load i32, i32* %18, align 4
  %32 = load i32, i32* %7, align 4
  %33 = mul nsw i32 %31, %32
  %34 = add nsw i32 %30, %33
  store i32 %34, i32* %15, align 4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %18, align 4
  %42 = mul nsw i32 %40, %41
  %43 = sub nsw i32 %37, %42
  store i32 %43, i32* %17, align 4
  %44 = getelementptr inbounds [6 x double], [6 x double]* %12, i64 0, i64 5
  store double 0.000000e+00, double* %44, align 8
  %45 = getelementptr inbounds [6 x double], [6 x double]* %12, i64 0, i64 4
  store double 0.000000e+00, double* %45, align 16
  %46 = getelementptr inbounds [6 x double], [6 x double]* %12, i64 0, i64 3
  store double 0.000000e+00, double* %46, align 8
  %47 = getelementptr inbounds [6 x double], [6 x double]* %12, i64 0, i64 2
  store double 0.000000e+00, double* %47, align 16
  %48 = getelementptr inbounds [6 x double], [6 x double]* %12, i64 0, i64 1
  store double 0.000000e+00, double* %48, align 8
  %49 = getelementptr inbounds [6 x double], [6 x double]* %12, i64 0, i64 0
  store double 0.000000e+00, double* %49, align 16
  br label %50

50:                                               ; preds = %163, %5
  %51 = load i32, i32* %15, align 4
  %52 = call double @fp_to_double(i32 %51)
  store double %52, double* %11, align 8
  %53 = load i32, i32* %15, align 4
  %54 = call i32 @fp_to_int(i32 %53)
  store i32 %54, i32* %19, align 4
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 2
  %57 = load double*, double** %56, align 8
  %58 = load i32, i32* %19, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds double, double* %57, i64 %59
  %61 = load double, double* %60, align 8
  %62 = load double, double* %11, align 8
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 2
  %65 = load double*, double** %64, align 8
  %66 = load i32, i32* %19, align 4
  %67 = add nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds double, double* %65, i64 %68
  %70 = load double, double* %69, align 8
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 2
  %73 = load double*, double** %72, align 8
  %74 = load i32, i32* %19, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds double, double* %73, i64 %75
  %77 = load double, double* %76, align 8
  %78 = fsub double %70, %77
  %79 = fmul double %62, %78
  %80 = fadd double %61, %79
  store double %80, double* %14, align 8
  %81 = load double, double* %14, align 8
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 3
  %84 = load double*, double** %83, align 8
  %85 = load i32, i32* %17, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds double, double* %84, i64 %86
  %88 = load double, double* %87, align 8
  %89 = fmul double %81, %88
  %90 = getelementptr inbounds [6 x double], [6 x double]* %12, i64 0, i64 0
  %91 = load double, double* %90, align 16
  %92 = fadd double %91, %89
  store double %92, double* %90, align 16
  %93 = load double, double* %14, align 8
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 3
  %96 = load double*, double** %95, align 8
  %97 = load i32, i32* %17, align 4
  %98 = add nsw i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds double, double* %96, i64 %99
  %101 = load double, double* %100, align 8
  %102 = fmul double %93, %101
  %103 = getelementptr inbounds [6 x double], [6 x double]* %12, i64 0, i64 1
  %104 = load double, double* %103, align 8
  %105 = fadd double %104, %102
  store double %105, double* %103, align 8
  %106 = load double, double* %14, align 8
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 3
  %109 = load double*, double** %108, align 8
  %110 = load i32, i32* %17, align 4
  %111 = add nsw i32 %110, 2
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds double, double* %109, i64 %112
  %114 = load double, double* %113, align 8
  %115 = fmul double %106, %114
  %116 = getelementptr inbounds [6 x double], [6 x double]* %12, i64 0, i64 2
  %117 = load double, double* %116, align 16
  %118 = fadd double %117, %115
  store double %118, double* %116, align 16
  %119 = load double, double* %14, align 8
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 3
  %122 = load double*, double** %121, align 8
  %123 = load i32, i32* %17, align 4
  %124 = add nsw i32 %123, 3
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds double, double* %122, i64 %125
  %127 = load double, double* %126, align 8
  %128 = fmul double %119, %127
  %129 = getelementptr inbounds [6 x double], [6 x double]* %12, i64 0, i64 3
  %130 = load double, double* %129, align 8
  %131 = fadd double %130, %128
  store double %131, double* %129, align 8
  %132 = load double, double* %14, align 8
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 3
  %135 = load double*, double** %134, align 8
  %136 = load i32, i32* %17, align 4
  %137 = add nsw i32 %136, 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds double, double* %135, i64 %138
  %140 = load double, double* %139, align 8
  %141 = fmul double %132, %140
  %142 = getelementptr inbounds [6 x double], [6 x double]* %12, i64 0, i64 4
  %143 = load double, double* %142, align 16
  %144 = fadd double %143, %141
  store double %144, double* %142, align 16
  %145 = load double, double* %14, align 8
  %146 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 3
  %148 = load double*, double** %147, align 8
  %149 = load i32, i32* %17, align 4
  %150 = add nsw i32 %149, 5
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds double, double* %148, i64 %151
  %153 = load double, double* %152, align 8
  %154 = fmul double %145, %153
  %155 = getelementptr inbounds [6 x double], [6 x double]* %12, i64 0, i64 5
  %156 = load double, double* %155, align 8
  %157 = fadd double %156, %154
  store double %157, double* %155, align 8
  %158 = load i32, i32* %7, align 4
  %159 = load i32, i32* %15, align 4
  %160 = sub nsw i32 %159, %158
  store i32 %160, i32* %15, align 4
  %161 = load i32, i32* %17, align 4
  %162 = add nsw i32 %161, 6
  store i32 %162, i32* %17, align 4
  br label %163

163:                                              ; preds = %50
  %164 = load i32, i32* %15, align 4
  %165 = call i32 @MAKE_INCREMENT_T(i32 0)
  %166 = icmp sge i32 %164, %165
  br i1 %166, label %50, label %167

167:                                              ; preds = %163
  %168 = load i32, i32* %7, align 4
  %169 = load i32, i32* %8, align 4
  %170 = sub nsw i32 %168, %169
  store i32 %170, i32* %15, align 4
  %171 = load i32, i32* %16, align 4
  %172 = load i32, i32* %15, align 4
  %173 = sub nsw i32 %171, %172
  %174 = load i32, i32* %7, align 4
  %175 = sdiv i32 %173, %174
  store i32 %175, i32* %18, align 4
  %176 = load i32, i32* %15, align 4
  %177 = load i32, i32* %18, align 4
  %178 = load i32, i32* %7, align 4
  %179 = mul nsw i32 %177, %178
  %180 = add nsw i32 %176, %179
  store i32 %180, i32* %15, align 4
  %181 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* %18, align 4
  %188 = add nsw i32 1, %187
  %189 = mul nsw i32 %186, %188
  %190 = add nsw i32 %183, %189
  store i32 %190, i32* %17, align 4
  %191 = getelementptr inbounds [6 x double], [6 x double]* %13, i64 0, i64 5
  store double 0.000000e+00, double* %191, align 8
  %192 = getelementptr inbounds [6 x double], [6 x double]* %13, i64 0, i64 4
  store double 0.000000e+00, double* %192, align 16
  %193 = getelementptr inbounds [6 x double], [6 x double]* %13, i64 0, i64 3
  store double 0.000000e+00, double* %193, align 8
  %194 = getelementptr inbounds [6 x double], [6 x double]* %13, i64 0, i64 2
  store double 0.000000e+00, double* %194, align 16
  %195 = getelementptr inbounds [6 x double], [6 x double]* %13, i64 0, i64 1
  store double 0.000000e+00, double* %195, align 8
  %196 = getelementptr inbounds [6 x double], [6 x double]* %13, i64 0, i64 0
  store double 0.000000e+00, double* %196, align 16
  br label %197

197:                                              ; preds = %310, %167
  %198 = load i32, i32* %15, align 4
  %199 = call double @fp_to_double(i32 %198)
  store double %199, double* %11, align 8
  %200 = load i32, i32* %15, align 4
  %201 = call i32 @fp_to_int(i32 %200)
  store i32 %201, i32* %19, align 4
  %202 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %202, i32 0, i32 2
  %204 = load double*, double** %203, align 8
  %205 = load i32, i32* %19, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds double, double* %204, i64 %206
  %208 = load double, double* %207, align 8
  %209 = load double, double* %11, align 8
  %210 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %211 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %210, i32 0, i32 2
  %212 = load double*, double** %211, align 8
  %213 = load i32, i32* %19, align 4
  %214 = add nsw i32 %213, 1
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds double, double* %212, i64 %215
  %217 = load double, double* %216, align 8
  %218 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %219 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %218, i32 0, i32 2
  %220 = load double*, double** %219, align 8
  %221 = load i32, i32* %19, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds double, double* %220, i64 %222
  %224 = load double, double* %223, align 8
  %225 = fsub double %217, %224
  %226 = fmul double %209, %225
  %227 = fadd double %208, %226
  store double %227, double* %14, align 8
  %228 = load double, double* %14, align 8
  %229 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %230 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %229, i32 0, i32 3
  %231 = load double*, double** %230, align 8
  %232 = load i32, i32* %17, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds double, double* %231, i64 %233
  %235 = load double, double* %234, align 8
  %236 = fmul double %228, %235
  %237 = getelementptr inbounds [6 x double], [6 x double]* %13, i64 0, i64 0
  %238 = load double, double* %237, align 16
  %239 = fadd double %238, %236
  store double %239, double* %237, align 16
  %240 = load double, double* %14, align 8
  %241 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %242 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %241, i32 0, i32 3
  %243 = load double*, double** %242, align 8
  %244 = load i32, i32* %17, align 4
  %245 = add nsw i32 %244, 1
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds double, double* %243, i64 %246
  %248 = load double, double* %247, align 8
  %249 = fmul double %240, %248
  %250 = getelementptr inbounds [6 x double], [6 x double]* %13, i64 0, i64 1
  %251 = load double, double* %250, align 8
  %252 = fadd double %251, %249
  store double %252, double* %250, align 8
  %253 = load double, double* %14, align 8
  %254 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %255 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %254, i32 0, i32 3
  %256 = load double*, double** %255, align 8
  %257 = load i32, i32* %17, align 4
  %258 = add nsw i32 %257, 2
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds double, double* %256, i64 %259
  %261 = load double, double* %260, align 8
  %262 = fmul double %253, %261
  %263 = getelementptr inbounds [6 x double], [6 x double]* %13, i64 0, i64 2
  %264 = load double, double* %263, align 16
  %265 = fadd double %264, %262
  store double %265, double* %263, align 16
  %266 = load double, double* %14, align 8
  %267 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %268 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %267, i32 0, i32 3
  %269 = load double*, double** %268, align 8
  %270 = load i32, i32* %17, align 4
  %271 = add nsw i32 %270, 3
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds double, double* %269, i64 %272
  %274 = load double, double* %273, align 8
  %275 = fmul double %266, %274
  %276 = getelementptr inbounds [6 x double], [6 x double]* %13, i64 0, i64 3
  %277 = load double, double* %276, align 8
  %278 = fadd double %277, %275
  store double %278, double* %276, align 8
  %279 = load double, double* %14, align 8
  %280 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %281 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %280, i32 0, i32 3
  %282 = load double*, double** %281, align 8
  %283 = load i32, i32* %17, align 4
  %284 = add nsw i32 %283, 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds double, double* %282, i64 %285
  %287 = load double, double* %286, align 8
  %288 = fmul double %279, %287
  %289 = getelementptr inbounds [6 x double], [6 x double]* %13, i64 0, i64 4
  %290 = load double, double* %289, align 16
  %291 = fadd double %290, %288
  store double %291, double* %289, align 16
  %292 = load double, double* %14, align 8
  %293 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %294 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %293, i32 0, i32 3
  %295 = load double*, double** %294, align 8
  %296 = load i32, i32* %17, align 4
  %297 = add nsw i32 %296, 5
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds double, double* %295, i64 %298
  %300 = load double, double* %299, align 8
  %301 = fmul double %292, %300
  %302 = getelementptr inbounds [6 x double], [6 x double]* %13, i64 0, i64 5
  %303 = load double, double* %302, align 8
  %304 = fadd double %303, %301
  store double %304, double* %302, align 8
  %305 = load i32, i32* %7, align 4
  %306 = load i32, i32* %15, align 4
  %307 = sub nsw i32 %306, %305
  store i32 %307, i32* %15, align 4
  %308 = load i32, i32* %17, align 4
  %309 = sub nsw i32 %308, 6
  store i32 %309, i32* %17, align 4
  br label %310

310:                                              ; preds = %197
  %311 = load i32, i32* %15, align 4
  %312 = call i32 @MAKE_INCREMENT_T(i32 0)
  %313 = icmp sgt i32 %311, %312
  br i1 %313, label %197, label %314

314:                                              ; preds = %310
  %315 = load double, double* %9, align 8
  %316 = getelementptr inbounds [6 x double], [6 x double]* %12, i64 0, i64 0
  %317 = load double, double* %316, align 16
  %318 = getelementptr inbounds [6 x double], [6 x double]* %13, i64 0, i64 0
  %319 = load double, double* %318, align 16
  %320 = fadd double %317, %319
  %321 = fmul double %315, %320
  %322 = fptrunc double %321 to float
  %323 = load float*, float** %10, align 8
  %324 = getelementptr inbounds float, float* %323, i64 0
  store float %322, float* %324, align 4
  %325 = load double, double* %9, align 8
  %326 = getelementptr inbounds [6 x double], [6 x double]* %12, i64 0, i64 1
  %327 = load double, double* %326, align 8
  %328 = getelementptr inbounds [6 x double], [6 x double]* %13, i64 0, i64 1
  %329 = load double, double* %328, align 8
  %330 = fadd double %327, %329
  %331 = fmul double %325, %330
  %332 = fptrunc double %331 to float
  %333 = load float*, float** %10, align 8
  %334 = getelementptr inbounds float, float* %333, i64 1
  store float %332, float* %334, align 4
  %335 = load double, double* %9, align 8
  %336 = getelementptr inbounds [6 x double], [6 x double]* %12, i64 0, i64 2
  %337 = load double, double* %336, align 16
  %338 = getelementptr inbounds [6 x double], [6 x double]* %13, i64 0, i64 2
  %339 = load double, double* %338, align 16
  %340 = fadd double %337, %339
  %341 = fmul double %335, %340
  %342 = fptrunc double %341 to float
  %343 = load float*, float** %10, align 8
  %344 = getelementptr inbounds float, float* %343, i64 2
  store float %342, float* %344, align 4
  %345 = load double, double* %9, align 8
  %346 = getelementptr inbounds [6 x double], [6 x double]* %12, i64 0, i64 3
  %347 = load double, double* %346, align 8
  %348 = getelementptr inbounds [6 x double], [6 x double]* %13, i64 0, i64 3
  %349 = load double, double* %348, align 8
  %350 = fadd double %347, %349
  %351 = fmul double %345, %350
  %352 = fptrunc double %351 to float
  %353 = load float*, float** %10, align 8
  %354 = getelementptr inbounds float, float* %353, i64 3
  store float %352, float* %354, align 4
  %355 = load double, double* %9, align 8
  %356 = getelementptr inbounds [6 x double], [6 x double]* %12, i64 0, i64 4
  %357 = load double, double* %356, align 16
  %358 = getelementptr inbounds [6 x double], [6 x double]* %13, i64 0, i64 4
  %359 = load double, double* %358, align 16
  %360 = fadd double %357, %359
  %361 = fmul double %355, %360
  %362 = fptrunc double %361 to float
  %363 = load float*, float** %10, align 8
  %364 = getelementptr inbounds float, float* %363, i64 4
  store float %362, float* %364, align 4
  %365 = load double, double* %9, align 8
  %366 = getelementptr inbounds [6 x double], [6 x double]* %12, i64 0, i64 5
  %367 = load double, double* %366, align 8
  %368 = getelementptr inbounds [6 x double], [6 x double]* %13, i64 0, i64 5
  %369 = load double, double* %368, align 8
  %370 = fadd double %367, %369
  %371 = fmul double %365, %370
  %372 = fptrunc double %371 to float
  %373 = load float*, float** %10, align 8
  %374 = getelementptr inbounds float, float* %373, i64 5
  store float %372, float* %374, align 4
  ret void
}

declare dso_local i32 @int_to_fp(i32) #1

declare dso_local double @fp_to_double(i32) #1

declare dso_local i32 @fp_to_int(i32) #1

declare dso_local i32 @MAKE_INCREMENT_T(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
