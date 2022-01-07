; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_geometry.c_fz_normalize_vector.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_geometry.c_fz_normalize_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { float, float }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local <2 x float> @fz_normalize_vector(<2 x float> %0) #0 {
  %2 = alloca %struct.TYPE_4__, align 4
  %3 = alloca %struct.TYPE_4__, align 4
  %4 = alloca float, align 4
  %5 = bitcast %struct.TYPE_4__* %3 to <2 x float>*
  store <2 x float> %0, <2 x float>* %5, align 4
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %7 = load float, float* %6, align 4
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %9 = load float, float* %8, align 4
  %10 = fmul float %7, %9
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  %12 = load float, float* %11, align 4
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  %14 = load float, float* %13, align 4
  %15 = fmul float %12, %14
  %16 = fadd float %10, %15
  store float %16, float* %4, align 4
  %17 = load float, float* %4, align 4
  %18 = fcmp une float %17, 0.000000e+00
  br i1 %18, label %19, label %30

19:                                               ; preds = %1
  %20 = load float, float* %4, align 4
  %21 = call float @sqrtf(float %20) #3
  store float %21, float* %4, align 4
  %22 = load float, float* %4, align 4
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %24 = load float, float* %23, align 4
  %25 = fdiv float %24, %22
  store float %25, float* %23, align 4
  %26 = load float, float* %4, align 4
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  %28 = load float, float* %27, align 4
  %29 = fdiv float %28, %26
  store float %29, float* %27, align 4
  br label %30

30:                                               ; preds = %19, %1
  %31 = bitcast %struct.TYPE_4__* %2 to i8*
  %32 = bitcast %struct.TYPE_4__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %31, i8* align 4 %32, i64 8, i1 false)
  %33 = bitcast %struct.TYPE_4__* %2 to <2 x float>*
  %34 = load <2 x float>, <2 x float>* %33, align 4
  ret <2 x float> %34
}

; Function Attrs: nounwind
declare dso_local float @sqrtf(float) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="64" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
