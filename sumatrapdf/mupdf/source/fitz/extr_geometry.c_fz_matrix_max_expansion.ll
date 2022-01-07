; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_geometry.c_fz_matrix_max_expansion.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_geometry.c_fz_matrix_max_expansion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @fz_matrix_max_expansion(i64 %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_3__, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = bitcast %struct.TYPE_3__* %3 to { i64, i64 }*
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %6, i32 0, i32 0
  store i64 %0, i64* %7, align 4
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %6, i32 0, i32 1
  store i64 %1, i64* %8, align 4
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = call float @fabsf(i32 %10)
  store float %11, float* %4, align 4
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call float @fabsf(i32 %13)
  store float %14, float* %5, align 4
  %15 = load float, float* %4, align 4
  %16 = load float, float* %5, align 4
  %17 = fcmp olt float %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load float, float* %5, align 4
  store float %19, float* %4, align 4
  br label %20

20:                                               ; preds = %18, %2
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call float @fabsf(i32 %22)
  store float %23, float* %5, align 4
  %24 = load float, float* %4, align 4
  %25 = load float, float* %5, align 4
  %26 = fcmp olt float %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load float, float* %5, align 4
  store float %28, float* %4, align 4
  br label %29

29:                                               ; preds = %27, %20
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call float @fabsf(i32 %31)
  store float %32, float* %5, align 4
  %33 = load float, float* %4, align 4
  %34 = load float, float* %5, align 4
  %35 = fcmp olt float %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load float, float* %5, align 4
  store float %37, float* %4, align 4
  br label %38

38:                                               ; preds = %36, %29
  %39 = load float, float* %4, align 4
  ret float %39
}

declare dso_local float @fabsf(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
