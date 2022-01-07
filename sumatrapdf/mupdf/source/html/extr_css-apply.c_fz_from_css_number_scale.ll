; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_css-apply.c_fz_from_css_number_scale.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_css-apply.c_fz_from_css_number_scale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, float }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @fz_from_css_number_scale(i64 %0, float %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca %struct.TYPE_3__, align 4
  %5 = alloca float, align 4
  %6 = bitcast %struct.TYPE_3__* %4 to i64*
  store i64 %0, i64* %6, align 4
  store float %1, float* %5, align 4
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %9 [
    i32 130, label %10
    i32 131, label %15
    i32 128, label %18
    i32 129, label %23
    i32 132, label %29
  ]

9:                                                ; preds = %2
  br label %10

10:                                               ; preds = %2, %9
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %12 = load float, float* %11, align 4
  %13 = load float, float* %5, align 4
  %14 = fmul float %12, %13
  store float %14, float* %3, align 4
  br label %31

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %17 = load float, float* %16, align 4
  store float %17, float* %3, align 4
  br label %31

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %20 = load float, float* %19, align 4
  %21 = load float, float* %5, align 4
  %22 = fmul float %20, %21
  store float %22, float* %3, align 4
  br label %31

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %25 = load float, float* %24, align 4
  %26 = fmul float %25, 0x3F847AE140000000
  %27 = load float, float* %5, align 4
  %28 = fmul float %26, %27
  store float %28, float* %3, align 4
  br label %31

29:                                               ; preds = %2
  %30 = load float, float* %5, align 4
  store float %30, float* %3, align 4
  br label %31

31:                                               ; preds = %29, %23, %18, %15, %10
  %32 = load float, float* %3, align 4
  ret float %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
