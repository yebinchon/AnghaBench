; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_estimate.c_group_estimate_expr.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_estimate.c_group_estimate_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INVALID_ESTIMATE = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (i32*, i32*, double)* @group_estimate_expr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @group_estimate_expr(i32* %0, i32* %1, double %2) #0 {
  %4 = alloca double, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca double, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store double %2, double* %7, align 8
  %8 = load i32*, i32** %6, align 8
  %9 = call i32 @nodeTag(i32* %8)
  switch i32 %9, label %20 [
    i32 129, label %10
    i32 128, label %15
  ]

10:                                               ; preds = %3
  %11 = load i32*, i32** %5, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = load double, double* %7, align 8
  %14 = call double @group_estimate_funcexpr(i32* %11, i32* %12, double %13)
  store double %14, double* %4, align 8
  br label %22

15:                                               ; preds = %3
  %16 = load i32*, i32** %5, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = load double, double* %7, align 8
  %19 = call double @group_estimate_opexpr(i32* %16, i32* %17, double %18)
  store double %19, double* %4, align 8
  br label %22

20:                                               ; preds = %3
  %21 = load double, double* @INVALID_ESTIMATE, align 8
  store double %21, double* %4, align 8
  br label %22

22:                                               ; preds = %20, %15, %10
  %23 = load double, double* %4, align 8
  ret double %23
}

declare dso_local i32 @nodeTag(i32*) #1

declare dso_local double @group_estimate_funcexpr(i32*, i32*, double) #1

declare dso_local double @group_estimate_opexpr(i32*, i32*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
