; ModuleID = '/home/carl/AnghaBench/rofi/source/widgets/extr_textbox.c_textbox_get_estimated_char_height.c'
source_filename = "/home/carl/AnghaBench/rofi/source/widgets/extr_textbox.c_textbox_get_estimated_char_height.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@char_height = common dso_local global double 0.000000e+00, align 8
@p_metrics = common dso_local global i32 0, align 4
@PANGO_SCALE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @textbox_get_estimated_char_height() #0 {
  %1 = alloca i32, align 4
  %2 = load double, double* @char_height, align 8
  %3 = fcmp olt double %2, 0.000000e+00
  br i1 %3, label %4, label %15

4:                                                ; preds = %0
  %5 = load i32, i32* @p_metrics, align 4
  %6 = call i32 @pango_font_metrics_get_ascent(i32 %5)
  %7 = load i32, i32* @p_metrics, align 4
  %8 = call i32 @pango_font_metrics_get_descent(i32 %7)
  %9 = add nsw i32 %6, %8
  store i32 %9, i32* %1, align 4
  %10 = load i32, i32* %1, align 4
  %11 = sitofp i32 %10 to double
  %12 = load i64, i64* @PANGO_SCALE, align 8
  %13 = sitofp i64 %12 to double
  %14 = fdiv double %11, %13
  store double %14, double* @char_height, align 8
  br label %15

15:                                               ; preds = %4, %0
  %16 = load double, double* @char_height, align 8
  ret double %16
}

declare dso_local i32 @pango_font_metrics_get_ascent(i32) #1

declare dso_local i32 @pango_font_metrics_get_descent(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
