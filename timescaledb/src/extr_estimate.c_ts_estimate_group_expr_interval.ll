; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_estimate.c_ts_estimate_group_expr_interval.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_estimate.c_ts_estimate_group_expr_interval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INVALID_ESTIMATE = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @ts_estimate_group_expr_interval(i32* %0, i32* %1, double %2) #0 {
  %4 = alloca double, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store double %2, double* %7, align 8
  %9 = load double, double* %7, align 8
  %10 = fcmp ole double %9, 0.000000e+00
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = load double, double* @INVALID_ESTIMATE, align 8
  store double %12, double* %4, align 8
  br label %27

13:                                               ; preds = %3
  %14 = load i32*, i32** %5, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = call double @estimate_max_spread_expr(i32* %14, i32* %15)
  store double %16, double* %8, align 8
  %17 = load double, double* %8, align 8
  %18 = call i32 @IS_VALID_ESTIMATE(double %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %13
  %21 = load double, double* @INVALID_ESTIMATE, align 8
  store double %21, double* %4, align 8
  br label %27

22:                                               ; preds = %13
  %23 = load double, double* %8, align 8
  %24 = load double, double* %7, align 8
  %25 = fdiv double %23, %24
  %26 = call double @clamp_row_est(double %25)
  store double %26, double* %4, align 8
  br label %27

27:                                               ; preds = %22, %20, %11
  %28 = load double, double* %4, align 8
  ret double %28
}

declare dso_local double @estimate_max_spread_expr(i32*, i32*) #1

declare dso_local i32 @IS_VALID_ESTIMATE(double) #1

declare dso_local double @clamp_row_est(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
