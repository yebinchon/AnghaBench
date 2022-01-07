; ModuleID = '/home/carl/AnghaBench/robotjs/src/extr_mouse.c_crude_hypot.c'
source_filename = "/home/carl/AnghaBench/robotjs/src/extr_mouse.c_crude_hypot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@M_SQRT2 = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (double, double)* @crude_hypot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @crude_hypot(double %0, double %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  store double %0, double* %3, align 8
  store double %1, double* %4, align 8
  %8 = load double, double* %3, align 8
  %9 = call double @llvm.fabs.f64(double %8)
  store double %9, double* %5, align 8
  %10 = load double, double* %4, align 8
  %11 = call double @llvm.fabs.f64(double %10)
  store double %11, double* %6, align 8
  %12 = load double, double* %5, align 8
  %13 = load double, double* %6, align 8
  %14 = fcmp ogt double %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load double, double* %5, align 8
  store double %16, double* %7, align 8
  %17 = load double, double* %6, align 8
  store double %17, double* %5, align 8
  %18 = load double, double* %7, align 8
  store double %18, double* %6, align 8
  br label %19

19:                                               ; preds = %15, %2
  %20 = load double, double* @M_SQRT2, align 8
  %21 = fsub double %20, 1.000000e+00
  %22 = load double, double* %6, align 8
  %23 = fmul double %21, %22
  %24 = load double, double* %5, align 8
  %25 = fadd double %23, %24
  ret double %25
}

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
