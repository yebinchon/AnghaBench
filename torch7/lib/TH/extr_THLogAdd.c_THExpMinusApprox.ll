; ModuleID = '/home/carl/AnghaBench/torch7/lib/TH/extr_THLogAdd.c_THExpMinusApprox.c'
source_filename = "/home/carl/AnghaBench/torch7/lib/TH/extr_THLogAdd.c_THExpMinusApprox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@A0 = common dso_local global double 0.000000e+00, align 8
@A1 = common dso_local global double 0.000000e+00, align 8
@A2 = common dso_local global double 0.000000e+00, align 8
@A3 = common dso_local global double 0.000000e+00, align 8
@A4 = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @THExpMinusApprox(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  store double %0, double* %3, align 8
  %5 = load double, double* %3, align 8
  %6 = fcmp olt double %5, 1.300000e+01
  br i1 %6, label %7, label %32

7:                                                ; preds = %1
  %8 = load double, double* %3, align 8
  %9 = load double, double* %3, align 8
  %10 = load double, double* %3, align 8
  %11 = load double, double* %3, align 8
  %12 = fmul double %11, 0x3EE5555553DE088B
  %13 = fadd double 0x3F35555551AB155A, %12
  %14 = fmul double %10, %13
  %15 = fadd double 7.812500e-03, %14
  %16 = fmul double %9, %15
  %17 = fadd double 1.250000e-01, %16
  %18 = fmul double %8, %17
  %19 = fadd double 1.000000e+00, %18
  store double %19, double* %4, align 8
  %20 = load double, double* %4, align 8
  %21 = load double, double* %4, align 8
  %22 = fmul double %21, %20
  store double %22, double* %4, align 8
  %23 = load double, double* %4, align 8
  %24 = load double, double* %4, align 8
  %25 = fmul double %24, %23
  store double %25, double* %4, align 8
  %26 = load double, double* %4, align 8
  %27 = load double, double* %4, align 8
  %28 = fmul double %27, %26
  store double %28, double* %4, align 8
  %29 = load double, double* %4, align 8
  %30 = fdiv double 1.000000e+00, %29
  store double %30, double* %4, align 8
  %31 = load double, double* %4, align 8
  store double %31, double* %2, align 8
  br label %33

32:                                               ; preds = %1
  store double 0.000000e+00, double* %2, align 8
  br label %33

33:                                               ; preds = %32, %7
  %34 = load double, double* %2, align 8
  ret double %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
