; ModuleID = '/home/carl/AnghaBench/rofi/source/widgets/extr_textbox.c_textbox_get_estimated_char_width.c'
source_filename = "/home/carl/AnghaBench/rofi/source/widgets/extr_textbox.c_textbox_get_estimated_char_width.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@char_width = common dso_local global double 0.000000e+00, align 8
@p_metrics = common dso_local global i32 0, align 4
@PANGO_SCALE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @textbox_get_estimated_char_width() #0 {
  %1 = alloca i32, align 4
  %2 = load double, double* @char_width, align 8
  %3 = fcmp olt double %2, 0.000000e+00
  br i1 %3, label %4, label %12

4:                                                ; preds = %0
  %5 = load i32, i32* @p_metrics, align 4
  %6 = call i32 @pango_font_metrics_get_approximate_char_width(i32 %5)
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* %1, align 4
  %8 = sitofp i32 %7 to double
  %9 = load i64, i64* @PANGO_SCALE, align 8
  %10 = sitofp i64 %9 to double
  %11 = fdiv double %8, %10
  store double %11, double* @char_width, align 8
  br label %12

12:                                               ; preds = %4, %0
  %13 = load double, double* @char_width, align 8
  ret double %13
}

declare dso_local i32 @pango_font_metrics_get_approximate_char_width(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
