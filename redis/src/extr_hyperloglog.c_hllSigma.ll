; ModuleID = '/home/carl/AnghaBench/redis/src/extr_hyperloglog.c_hllSigma.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_hyperloglog.c_hllSigma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INFINITY = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @hllSigma(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  store double %0, double* %3, align 8
  %7 = load double, double* %3, align 8
  %8 = fcmp oeq double %7, 1.000000e+00
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load double, double* @INFINITY, align 8
  store double %10, double* %2, align 8
  br label %32

11:                                               ; preds = %1
  store double 1.000000e+00, double* %5, align 8
  %12 = load double, double* %3, align 8
  store double %12, double* %6, align 8
  br label %13

13:                                               ; preds = %26, %11
  %14 = load double, double* %3, align 8
  %15 = load double, double* %3, align 8
  %16 = fmul double %15, %14
  store double %16, double* %3, align 8
  %17 = load double, double* %6, align 8
  store double %17, double* %4, align 8
  %18 = load double, double* %3, align 8
  %19 = load double, double* %5, align 8
  %20 = fmul double %18, %19
  %21 = load double, double* %6, align 8
  %22 = fadd double %21, %20
  store double %22, double* %6, align 8
  %23 = load double, double* %5, align 8
  %24 = load double, double* %5, align 8
  %25 = fadd double %24, %23
  store double %25, double* %5, align 8
  br label %26

26:                                               ; preds = %13
  %27 = load double, double* %4, align 8
  %28 = load double, double* %6, align 8
  %29 = fcmp une double %27, %28
  br i1 %29, label %13, label %30

30:                                               ; preds = %26
  %31 = load double, double* %6, align 8
  store double %31, double* %2, align 8
  br label %32

32:                                               ; preds = %30, %9
  %33 = load double, double* %2, align 8
  ret double %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
