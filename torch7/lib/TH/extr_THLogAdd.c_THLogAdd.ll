; ModuleID = '/home/carl/AnghaBench/torch7/lib/TH/extr_THLogAdd.c_THLogAdd.c'
source_filename = "/home/carl/AnghaBench/torch7/lib/TH/extr_THLogAdd.c_THLogAdd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MINUS_LOG_THRESHOLD = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @THLogAdd(double %0, double %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  store double %0, double* %4, align 8
  store double %1, double* %5, align 8
  %8 = load double, double* %4, align 8
  %9 = load double, double* %5, align 8
  %10 = fcmp olt double %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load double, double* %4, align 8
  store double %12, double* %7, align 8
  %13 = load double, double* %5, align 8
  store double %13, double* %4, align 8
  %14 = load double, double* %7, align 8
  store double %14, double* %5, align 8
  br label %15

15:                                               ; preds = %11, %2
  %16 = load double, double* %5, align 8
  %17 = load double, double* %4, align 8
  %18 = fsub double %16, %17
  store double %18, double* %6, align 8
  %19 = load double, double* %6, align 8
  %20 = load double, double* @MINUS_LOG_THRESHOLD, align 8
  %21 = fcmp olt double %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = load double, double* %4, align 8
  store double %23, double* %3, align 8
  br label %30

24:                                               ; preds = %15
  %25 = load double, double* %4, align 8
  %26 = load double, double* %6, align 8
  %27 = call i32 @exp(double %26)
  %28 = call double @log1p(i32 %27)
  %29 = fadd double %25, %28
  store double %29, double* %3, align 8
  br label %30

30:                                               ; preds = %24, %22
  %31 = load double, double* %3, align 8
  ret double %31
}

declare dso_local double @log1p(i32) #1

declare dso_local i32 @exp(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
