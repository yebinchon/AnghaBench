; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmssm.c__cmsAtan2.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmssm.c__cmsAtan2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@M_PI = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (double, double)* @_cmsAtan2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @_cmsAtan2(double %0, double %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  store double %0, double* %4, align 8
  store double %1, double* %5, align 8
  %7 = load double, double* %5, align 8
  %8 = fcmp oeq double %7, 0.000000e+00
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load double, double* %4, align 8
  %11 = fcmp oeq double %10, 0.000000e+00
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  store double 0.000000e+00, double* %3, align 8
  br label %28

13:                                               ; preds = %9, %2
  %14 = load double, double* %4, align 8
  %15 = load double, double* %5, align 8
  %16 = call double @atan2(double %14, double %15) #2
  %17 = fmul double %16, 1.800000e+02
  %18 = load double, double* @M_PI, align 8
  %19 = fdiv double %17, %18
  store double %19, double* %6, align 8
  br label %20

20:                                               ; preds = %23, %13
  %21 = load double, double* %6, align 8
  %22 = fcmp olt double %21, 0.000000e+00
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load double, double* %6, align 8
  %25 = fadd double %24, 3.600000e+02
  store double %25, double* %6, align 8
  br label %20

26:                                               ; preds = %20
  %27 = load double, double* %6, align 8
  store double %27, double* %3, align 8
  br label %28

28:                                               ; preds = %26, %12
  %29 = load double, double* %3, align 8
  ret double %29
}

; Function Attrs: nounwind
declare dso_local double @atan2(double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
