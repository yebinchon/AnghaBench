; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jp3d/extr_opj_jp3d_decompress.c_calc_SSIM.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jp3d/extr_opj_jp3d_decompress.c_calc_SSIM.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, double* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (%struct.TYPE_6__*, %struct.TYPE_6__*)* @calc_SSIM to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @calc_SSIM(%struct.TYPE_6__* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  store i32 0, i32* %7, align 4
  store double 0.000000e+00, double* %11, align 8
  store double 0.000000e+00, double* %12, align 8
  store double 0.000000e+00, double* %13, align 8
  store double 0.000000e+00, double* %14, align 8
  store double 0.000000e+00, double* %15, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 6
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp sle i32 %29, 8
  br i1 %30, label %31, label %32

31:                                               ; preds = %2
  br label %43

32:                                               ; preds = %2
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 6
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = shl i32 1, %40
  %42 = sub nsw i32 %41, 1
  br label %43

43:                                               ; preds = %32, %31
  %44 = phi i32 [ 255, %31 ], [ %42, %32 ]
  store i32 %44, i32* %5, align 4
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = sub nsw i32 %47, %50
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = sub nsw i32 %54, %57
  %59 = mul nsw i32 %51, %58
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 4
  %66 = sub nsw i32 %62, %65
  %67 = mul nsw i32 %59, %66
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  store i32 %68, i32* %9, align 4
  store double 0.000000e+00, double* %10, align 8
  store i32 0, i32* %6, align 4
  br label %69

69:                                               ; preds = %102, %43
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* %9, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %105

73:                                               ; preds = %69
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 6
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  %81 = load double*, double** %80, align 8
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds double, double* %81, i64 %83
  %85 = load double, double* %84, align 8
  %86 = load double, double* %11, align 8
  %87 = fadd double %86, %85
  store double %87, double* %11, align 8
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 6
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %89, align 8
  %91 = load i32, i32* %7, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 1
  %95 = load double*, double** %94, align 8
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds double, double* %95, i64 %97
  %99 = load double, double* %98, align 8
  %100 = load double, double* %12, align 8
  %101 = fadd double %100, %99
  store double %101, double* %12, align 8
  br label %102

102:                                              ; preds = %73
  %103 = load i32, i32* %6, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %6, align 4
  br label %69

105:                                              ; preds = %69
  %106 = load i32, i32* %9, align 4
  %107 = sitofp i32 %106 to double
  %108 = load double, double* %11, align 8
  %109 = fdiv double %108, %107
  store double %109, double* %11, align 8
  %110 = load i32, i32* %9, align 4
  %111 = sitofp i32 %110 to double
  %112 = load double, double* %12, align 8
  %113 = fdiv double %112, %111
  store double %113, double* %12, align 8
  store double 0.000000e+00, double* %10, align 8
  store i32 0, i32* %6, align 4
  br label %114

114:                                              ; preds = %212, %105
  %115 = load i32, i32* %6, align 4
  %116 = load i32, i32* %9, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %215

118:                                              ; preds = %114
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 6
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %120, align 8
  %122 = load i32, i32* %7, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 1
  %126 = load double*, double** %125, align 8
  %127 = load i32, i32* %6, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds double, double* %126, i64 %128
  %130 = load double, double* %129, align 8
  %131 = load double, double* %11, align 8
  %132 = fsub double %130, %131
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 6
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %134, align 8
  %136 = load i32, i32* %7, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 1
  %140 = load double*, double** %139, align 8
  %141 = load i32, i32* %6, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds double, double* %140, i64 %142
  %144 = load double, double* %143, align 8
  %145 = load double, double* %11, align 8
  %146 = fsub double %144, %145
  %147 = fmul double %132, %146
  %148 = load double, double* %13, align 8
  %149 = fadd double %148, %147
  store double %149, double* %13, align 8
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 6
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %151, align 8
  %153 = load i32, i32* %7, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 1
  %157 = load double*, double** %156, align 8
  %158 = load i32, i32* %6, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds double, double* %157, i64 %159
  %161 = load double, double* %160, align 8
  %162 = load double, double* %12, align 8
  %163 = fsub double %161, %162
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 6
  %166 = load %struct.TYPE_5__*, %struct.TYPE_5__** %165, align 8
  %167 = load i32, i32* %7, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 1
  %171 = load double*, double** %170, align 8
  %172 = load i32, i32* %6, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds double, double* %171, i64 %173
  %175 = load double, double* %174, align 8
  %176 = load double, double* %12, align 8
  %177 = fsub double %175, %176
  %178 = fmul double %163, %177
  %179 = load double, double* %14, align 8
  %180 = fadd double %179, %178
  store double %180, double* %14, align 8
  %181 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 6
  %183 = load %struct.TYPE_5__*, %struct.TYPE_5__** %182, align 8
  %184 = load i32, i32* %7, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 1
  %188 = load double*, double** %187, align 8
  %189 = load i32, i32* %6, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds double, double* %188, i64 %190
  %192 = load double, double* %191, align 8
  %193 = load double, double* %11, align 8
  %194 = fsub double %192, %193
  %195 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 6
  %197 = load %struct.TYPE_5__*, %struct.TYPE_5__** %196, align 8
  %198 = load i32, i32* %7, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i32 0, i32 1
  %202 = load double*, double** %201, align 8
  %203 = load i32, i32* %6, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds double, double* %202, i64 %204
  %206 = load double, double* %205, align 8
  %207 = load double, double* %12, align 8
  %208 = fsub double %206, %207
  %209 = fmul double %194, %208
  %210 = load double, double* %15, align 8
  %211 = fadd double %210, %209
  store double %211, double* %15, align 8
  br label %212

212:                                              ; preds = %118
  %213 = load i32, i32* %6, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %6, align 4
  br label %114

215:                                              ; preds = %114
  %216 = load i32, i32* %9, align 4
  %217 = sub nsw i32 %216, 1
  %218 = sitofp i32 %217 to double
  %219 = load double, double* %13, align 8
  %220 = fdiv double %219, %218
  store double %220, double* %13, align 8
  %221 = load i32, i32* %9, align 4
  %222 = sub nsw i32 %221, 1
  %223 = sitofp i32 %222 to double
  %224 = load double, double* %14, align 8
  %225 = fdiv double %224, %223
  store double %225, double* %14, align 8
  %226 = load i32, i32* %9, align 4
  %227 = sub nsw i32 %226, 1
  %228 = sitofp i32 %227 to double
  %229 = load double, double* %15, align 8
  %230 = fdiv double %229, %228
  store double %230, double* %15, align 8
  %231 = load double, double* %13, align 8
  %232 = call double @sqrt(double %231) #2
  store double %232, double* %13, align 8
  %233 = load double, double* %14, align 8
  %234 = call double @sqrt(double %233) #2
  store double %234, double* %14, align 8
  %235 = load double, double* %15, align 8
  %236 = call double @sqrt(double %235) #2
  store double %236, double* %15, align 8
  %237 = load i32, i32* %5, align 4
  %238 = sitofp i32 %237 to double
  %239 = fmul double 1.000000e-02, %238
  %240 = load i32, i32* %5, align 4
  %241 = sitofp i32 %240 to double
  %242 = fmul double 1.000000e-02, %241
  %243 = fmul double %239, %242
  store double %243, double* %19, align 8
  %244 = load double, double* %11, align 8
  %245 = fmul double 2.000000e+00, %244
  %246 = load double, double* %12, align 8
  %247 = fmul double %245, %246
  %248 = load double, double* %19, align 8
  %249 = fadd double %247, %248
  %250 = load double, double* %11, align 8
  %251 = load double, double* %11, align 8
  %252 = fmul double %250, %251
  %253 = load double, double* %12, align 8
  %254 = load double, double* %11, align 8
  %255 = fmul double %253, %254
  %256 = fadd double %252, %255
  %257 = load double, double* %19, align 8
  %258 = fadd double %256, %257
  %259 = fdiv double %249, %258
  store double %259, double* %16, align 8
  %260 = load i32, i32* %5, align 4
  %261 = sitofp i32 %260 to double
  %262 = fmul double 3.000000e-02, %261
  %263 = load i32, i32* %5, align 4
  %264 = sitofp i32 %263 to double
  %265 = fmul double 3.000000e-02, %264
  %266 = fmul double %262, %265
  store double %266, double* %20, align 8
  %267 = load double, double* %13, align 8
  %268 = fmul double 2.000000e+00, %267
  %269 = load double, double* %14, align 8
  %270 = fmul double %268, %269
  %271 = load double, double* %20, align 8
  %272 = fadd double %270, %271
  %273 = load double, double* %13, align 8
  %274 = load double, double* %13, align 8
  %275 = fmul double %273, %274
  %276 = load double, double* %14, align 8
  %277 = load double, double* %14, align 8
  %278 = fmul double %276, %277
  %279 = fadd double %275, %278
  %280 = load double, double* %20, align 8
  %281 = fadd double %279, %280
  %282 = fdiv double %272, %281
  store double %282, double* %17, align 8
  %283 = load double, double* %20, align 8
  %284 = fdiv double %283, 2.000000e+00
  store double %284, double* %21, align 8
  %285 = load double, double* %15, align 8
  %286 = load double, double* %21, align 8
  %287 = fadd double %285, %286
  %288 = load double, double* %13, align 8
  %289 = load double, double* %14, align 8
  %290 = fmul double %288, %289
  %291 = load double, double* %21, align 8
  %292 = fadd double %290, %291
  %293 = fdiv double %287, %292
  store double %293, double* %18, align 8
  %294 = load double, double* %16, align 8
  %295 = load double, double* %17, align 8
  %296 = fmul double %294, %295
  %297 = load double, double* %18, align 8
  %298 = fmul double %296, %297
  store double %298, double* %10, align 8
  %299 = load double, double* %10, align 8
  ret double %299
}

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
