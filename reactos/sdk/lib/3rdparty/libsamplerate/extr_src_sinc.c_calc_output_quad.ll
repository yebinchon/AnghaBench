; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libsamplerate/extr_src_sinc.c_calc_output_quad.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libsamplerate/extr_src_sinc.c_calc_output_quad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, double*, double*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32, i32, double, float*)* @calc_output_quad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @calc_output_quad(%struct.TYPE_3__* %0, i32 %1, i32 %2, double %3, float* %4) #0 {
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca float*, align 8
  %11 = alloca double, align 8
  %12 = alloca [4 x double], align 16
  %13 = alloca [4 x double], align 16
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
  %44 = getelementptr inbounds [4 x double], [4 x double]* %12, i64 0, i64 3
  store double 0.000000e+00, double* %44, align 8
  %45 = getelementptr inbounds [4 x double], [4 x double]* %12, i64 0, i64 2
  store double 0.000000e+00, double* %45, align 16
  %46 = getelementptr inbounds [4 x double], [4 x double]* %12, i64 0, i64 1
  store double 0.000000e+00, double* %46, align 8
  %47 = getelementptr inbounds [4 x double], [4 x double]* %12, i64 0, i64 0
  store double 0.000000e+00, double* %47, align 16
  br label %48

48:                                               ; preds = %135, %5
  %49 = load i32, i32* %15, align 4
  %50 = call double @fp_to_double(i32 %49)
  store double %50, double* %11, align 8
  %51 = load i32, i32* %15, align 4
  %52 = call i32 @fp_to_int(i32 %51)
  store i32 %52, i32* %19, align 4
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 2
  %55 = load double*, double** %54, align 8
  %56 = load i32, i32* %19, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds double, double* %55, i64 %57
  %59 = load double, double* %58, align 8
  %60 = load double, double* %11, align 8
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 2
  %63 = load double*, double** %62, align 8
  %64 = load i32, i32* %19, align 4
  %65 = add nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds double, double* %63, i64 %66
  %68 = load double, double* %67, align 8
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 2
  %71 = load double*, double** %70, align 8
  %72 = load i32, i32* %19, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds double, double* %71, i64 %73
  %75 = load double, double* %74, align 8
  %76 = fsub double %68, %75
  %77 = fmul double %60, %76
  %78 = fadd double %59, %77
  store double %78, double* %14, align 8
  %79 = load double, double* %14, align 8
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 3
  %82 = load double*, double** %81, align 8
  %83 = load i32, i32* %17, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds double, double* %82, i64 %84
  %86 = load double, double* %85, align 8
  %87 = fmul double %79, %86
  %88 = getelementptr inbounds [4 x double], [4 x double]* %12, i64 0, i64 0
  %89 = load double, double* %88, align 16
  %90 = fadd double %89, %87
  store double %90, double* %88, align 16
  %91 = load double, double* %14, align 8
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 3
  %94 = load double*, double** %93, align 8
  %95 = load i32, i32* %17, align 4
  %96 = add nsw i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds double, double* %94, i64 %97
  %99 = load double, double* %98, align 8
  %100 = fmul double %91, %99
  %101 = getelementptr inbounds [4 x double], [4 x double]* %12, i64 0, i64 1
  %102 = load double, double* %101, align 8
  %103 = fadd double %102, %100
  store double %103, double* %101, align 8
  %104 = load double, double* %14, align 8
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 3
  %107 = load double*, double** %106, align 8
  %108 = load i32, i32* %17, align 4
  %109 = add nsw i32 %108, 2
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds double, double* %107, i64 %110
  %112 = load double, double* %111, align 8
  %113 = fmul double %104, %112
  %114 = getelementptr inbounds [4 x double], [4 x double]* %12, i64 0, i64 2
  %115 = load double, double* %114, align 16
  %116 = fadd double %115, %113
  store double %116, double* %114, align 16
  %117 = load double, double* %14, align 8
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 3
  %120 = load double*, double** %119, align 8
  %121 = load i32, i32* %17, align 4
  %122 = add nsw i32 %121, 3
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds double, double* %120, i64 %123
  %125 = load double, double* %124, align 8
  %126 = fmul double %117, %125
  %127 = getelementptr inbounds [4 x double], [4 x double]* %12, i64 0, i64 3
  %128 = load double, double* %127, align 8
  %129 = fadd double %128, %126
  store double %129, double* %127, align 8
  %130 = load i32, i32* %7, align 4
  %131 = load i32, i32* %15, align 4
  %132 = sub nsw i32 %131, %130
  store i32 %132, i32* %15, align 4
  %133 = load i32, i32* %17, align 4
  %134 = add nsw i32 %133, 4
  store i32 %134, i32* %17, align 4
  br label %135

135:                                              ; preds = %48
  %136 = load i32, i32* %15, align 4
  %137 = call i32 @MAKE_INCREMENT_T(i32 0)
  %138 = icmp sge i32 %136, %137
  br i1 %138, label %48, label %139

139:                                              ; preds = %135
  %140 = load i32, i32* %7, align 4
  %141 = load i32, i32* %8, align 4
  %142 = sub nsw i32 %140, %141
  store i32 %142, i32* %15, align 4
  %143 = load i32, i32* %16, align 4
  %144 = load i32, i32* %15, align 4
  %145 = sub nsw i32 %143, %144
  %146 = load i32, i32* %7, align 4
  %147 = sdiv i32 %145, %146
  store i32 %147, i32* %18, align 4
  %148 = load i32, i32* %15, align 4
  %149 = load i32, i32* %18, align 4
  %150 = load i32, i32* %7, align 4
  %151 = mul nsw i32 %149, %150
  %152 = add nsw i32 %148, %151
  store i32 %152, i32* %15, align 4
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* %18, align 4
  %160 = add nsw i32 1, %159
  %161 = mul nsw i32 %158, %160
  %162 = add nsw i32 %155, %161
  store i32 %162, i32* %17, align 4
  %163 = getelementptr inbounds [4 x double], [4 x double]* %13, i64 0, i64 3
  store double 0.000000e+00, double* %163, align 8
  %164 = getelementptr inbounds [4 x double], [4 x double]* %13, i64 0, i64 2
  store double 0.000000e+00, double* %164, align 16
  %165 = getelementptr inbounds [4 x double], [4 x double]* %13, i64 0, i64 1
  store double 0.000000e+00, double* %165, align 8
  %166 = getelementptr inbounds [4 x double], [4 x double]* %13, i64 0, i64 0
  store double 0.000000e+00, double* %166, align 16
  br label %167

167:                                              ; preds = %254, %139
  %168 = load i32, i32* %15, align 4
  %169 = call double @fp_to_double(i32 %168)
  store double %169, double* %11, align 8
  %170 = load i32, i32* %15, align 4
  %171 = call i32 @fp_to_int(i32 %170)
  store i32 %171, i32* %19, align 4
  %172 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 2
  %174 = load double*, double** %173, align 8
  %175 = load i32, i32* %19, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds double, double* %174, i64 %176
  %178 = load double, double* %177, align 8
  %179 = load double, double* %11, align 8
  %180 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 2
  %182 = load double*, double** %181, align 8
  %183 = load i32, i32* %19, align 4
  %184 = add nsw i32 %183, 1
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds double, double* %182, i64 %185
  %187 = load double, double* %186, align 8
  %188 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 2
  %190 = load double*, double** %189, align 8
  %191 = load i32, i32* %19, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds double, double* %190, i64 %192
  %194 = load double, double* %193, align 8
  %195 = fsub double %187, %194
  %196 = fmul double %179, %195
  %197 = fadd double %178, %196
  store double %197, double* %14, align 8
  %198 = load double, double* %14, align 8
  %199 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %200 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %199, i32 0, i32 3
  %201 = load double*, double** %200, align 8
  %202 = load i32, i32* %17, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds double, double* %201, i64 %203
  %205 = load double, double* %204, align 8
  %206 = fmul double %198, %205
  %207 = getelementptr inbounds [4 x double], [4 x double]* %13, i64 0, i64 0
  %208 = load double, double* %207, align 16
  %209 = fadd double %208, %206
  store double %209, double* %207, align 16
  %210 = load double, double* %14, align 8
  %211 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %211, i32 0, i32 3
  %213 = load double*, double** %212, align 8
  %214 = load i32, i32* %17, align 4
  %215 = add nsw i32 %214, 1
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds double, double* %213, i64 %216
  %218 = load double, double* %217, align 8
  %219 = fmul double %210, %218
  %220 = getelementptr inbounds [4 x double], [4 x double]* %13, i64 0, i64 1
  %221 = load double, double* %220, align 8
  %222 = fadd double %221, %219
  store double %222, double* %220, align 8
  %223 = load double, double* %14, align 8
  %224 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %225 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %224, i32 0, i32 3
  %226 = load double*, double** %225, align 8
  %227 = load i32, i32* %17, align 4
  %228 = add nsw i32 %227, 2
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds double, double* %226, i64 %229
  %231 = load double, double* %230, align 8
  %232 = fmul double %223, %231
  %233 = getelementptr inbounds [4 x double], [4 x double]* %13, i64 0, i64 2
  %234 = load double, double* %233, align 16
  %235 = fadd double %234, %232
  store double %235, double* %233, align 16
  %236 = load double, double* %14, align 8
  %237 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %238 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %237, i32 0, i32 3
  %239 = load double*, double** %238, align 8
  %240 = load i32, i32* %17, align 4
  %241 = add nsw i32 %240, 3
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds double, double* %239, i64 %242
  %244 = load double, double* %243, align 8
  %245 = fmul double %236, %244
  %246 = getelementptr inbounds [4 x double], [4 x double]* %13, i64 0, i64 3
  %247 = load double, double* %246, align 8
  %248 = fadd double %247, %245
  store double %248, double* %246, align 8
  %249 = load i32, i32* %7, align 4
  %250 = load i32, i32* %15, align 4
  %251 = sub nsw i32 %250, %249
  store i32 %251, i32* %15, align 4
  %252 = load i32, i32* %17, align 4
  %253 = sub nsw i32 %252, 4
  store i32 %253, i32* %17, align 4
  br label %254

254:                                              ; preds = %167
  %255 = load i32, i32* %15, align 4
  %256 = call i32 @MAKE_INCREMENT_T(i32 0)
  %257 = icmp sgt i32 %255, %256
  br i1 %257, label %167, label %258

258:                                              ; preds = %254
  %259 = load double, double* %9, align 8
  %260 = getelementptr inbounds [4 x double], [4 x double]* %12, i64 0, i64 0
  %261 = load double, double* %260, align 16
  %262 = getelementptr inbounds [4 x double], [4 x double]* %13, i64 0, i64 0
  %263 = load double, double* %262, align 16
  %264 = fadd double %261, %263
  %265 = fmul double %259, %264
  %266 = fptrunc double %265 to float
  %267 = load float*, float** %10, align 8
  %268 = getelementptr inbounds float, float* %267, i64 0
  store float %266, float* %268, align 4
  %269 = load double, double* %9, align 8
  %270 = getelementptr inbounds [4 x double], [4 x double]* %12, i64 0, i64 1
  %271 = load double, double* %270, align 8
  %272 = getelementptr inbounds [4 x double], [4 x double]* %13, i64 0, i64 1
  %273 = load double, double* %272, align 8
  %274 = fadd double %271, %273
  %275 = fmul double %269, %274
  %276 = fptrunc double %275 to float
  %277 = load float*, float** %10, align 8
  %278 = getelementptr inbounds float, float* %277, i64 1
  store float %276, float* %278, align 4
  %279 = load double, double* %9, align 8
  %280 = getelementptr inbounds [4 x double], [4 x double]* %12, i64 0, i64 2
  %281 = load double, double* %280, align 16
  %282 = getelementptr inbounds [4 x double], [4 x double]* %13, i64 0, i64 2
  %283 = load double, double* %282, align 16
  %284 = fadd double %281, %283
  %285 = fmul double %279, %284
  %286 = fptrunc double %285 to float
  %287 = load float*, float** %10, align 8
  %288 = getelementptr inbounds float, float* %287, i64 2
  store float %286, float* %288, align 4
  %289 = load double, double* %9, align 8
  %290 = getelementptr inbounds [4 x double], [4 x double]* %12, i64 0, i64 3
  %291 = load double, double* %290, align 8
  %292 = getelementptr inbounds [4 x double], [4 x double]* %13, i64 0, i64 3
  %293 = load double, double* %292, align 8
  %294 = fadd double %291, %293
  %295 = fmul double %289, %294
  %296 = fptrunc double %295 to float
  %297 = load float*, float** %10, align 8
  %298 = getelementptr inbounds float, float* %297, i64 3
  store float %296, float* %298, align 4
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
