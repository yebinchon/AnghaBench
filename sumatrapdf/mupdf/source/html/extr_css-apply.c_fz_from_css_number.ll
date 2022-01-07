; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_css-apply.c_fz_from_css_number.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_css-apply.c_fz_from_css_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, float }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @fz_from_css_number(i64 %0, float %1, float %2, float %3) #0 {
  %5 = alloca float, align 4
  %6 = alloca %struct.TYPE_3__, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = bitcast %struct.TYPE_3__* %6 to i64*
  store i64 %0, i64* %10, align 4
  store float %1, float* %7, align 4
  store float %2, float* %8, align 4
  store float %3, float* %9, align 4
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %13 [
    i32 130, label %14
    i32 131, label %17
    i32 128, label %20
    i32 129, label %25
    i32 132, label %31
  ]

13:                                               ; preds = %4
  br label %14

14:                                               ; preds = %4, %13
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %16 = load float, float* %15, align 4
  store float %16, float* %5, align 4
  br label %33

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %19 = load float, float* %18, align 4
  store float %19, float* %5, align 4
  br label %33

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %22 = load float, float* %21, align 4
  %23 = load float, float* %7, align 4
  %24 = fmul float %22, %23
  store float %24, float* %5, align 4
  br label %33

25:                                               ; preds = %4
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %27 = load float, float* %26, align 4
  %28 = fmul float %27, 0x3F847AE140000000
  %29 = load float, float* %8, align 4
  %30 = fmul float %28, %29
  store float %30, float* %5, align 4
  br label %33

31:                                               ; preds = %4
  %32 = load float, float* %9, align 4
  store float %32, float* %5, align 4
  br label %33

33:                                               ; preds = %31, %25, %20, %17, %14
  %34 = load float, float* %5, align 4
  ret float %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
