; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-scale-simple.c_box.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-scale-simple.c_box.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (float (i32*, float)* @box to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @box(i32* %0, float %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca i32*, align 8
  %5 = alloca float, align 4
  store i32* %0, i32** %4, align 8
  store float %1, float* %5, align 4
  %6 = load float, float* %5, align 4
  %7 = fcmp oge float %6, 5.000000e-01
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store float 0.000000e+00, float* %3, align 4
  br label %10

9:                                                ; preds = %2
  store float 1.000000e+00, float* %3, align 4
  br label %10

10:                                               ; preds = %9, %8
  %11 = load float, float* %3, align 4
  ret float %11
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
