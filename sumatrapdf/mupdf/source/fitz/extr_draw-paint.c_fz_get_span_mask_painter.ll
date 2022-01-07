; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-paint.c_fz_get_span_mask_painter.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-paint.c_fz_get_span_mask_painter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@paint_span_with_mask_0_a = common dso_local global i32* null, align 8
@paint_span_with_mask_1_a = common dso_local global i32* null, align 8
@paint_span_with_mask_1 = common dso_local global i32* null, align 8
@paint_span_with_mask_3 = common dso_local global i32* null, align 8
@paint_span_with_mask_3_a = common dso_local global i32* null, align 8
@paint_span_with_mask_4 = common dso_local global i32* null, align 8
@paint_span_with_mask_4_a = common dso_local global i32* null, align 8
@paint_span_with_mask_N = common dso_local global i32* null, align 8
@paint_span_with_mask_N_a = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i32)* @fz_get_span_mask_painter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @fz_get_span_mask_painter(i32 %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %16 [
    i32 0, label %7
    i32 1, label %9
  ]

7:                                                ; preds = %2
  %8 = load i32*, i32** @paint_span_with_mask_0_a, align 8
  store i32* %8, i32** %3, align 8
  br label %17

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = load i32*, i32** @paint_span_with_mask_1_a, align 8
  store i32* %13, i32** %3, align 8
  br label %17

14:                                               ; preds = %9
  %15 = load i32*, i32** @paint_span_with_mask_1, align 8
  store i32* %15, i32** %3, align 8
  br label %17

16:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %17

17:                                               ; preds = %16, %14, %12, %7
  %18 = load i32*, i32** %3, align 8
  ret i32* %18
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
