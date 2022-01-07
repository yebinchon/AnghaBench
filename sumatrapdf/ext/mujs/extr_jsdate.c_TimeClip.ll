; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsdate.c_TimeClip.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsdate.c_TimeClip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NAN = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (double)* @TimeClip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @TimeClip(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  store double %0, double* %3, align 8
  %4 = load double, double* %3, align 8
  %5 = call i32 @isfinite(double %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = load double, double* @NAN, align 8
  store double %8, double* %2, align 8
  br label %28

9:                                                ; preds = %1
  %10 = load double, double* %3, align 8
  %11 = call double @llvm.fabs.f64(double %10)
  %12 = fcmp ogt double %11, 8.640000e+15
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = load double, double* @NAN, align 8
  store double %14, double* %2, align 8
  br label %28

15:                                               ; preds = %9
  %16 = load double, double* %3, align 8
  %17 = fcmp olt double %16, 0.000000e+00
  br i1 %17, label %18, label %23

18:                                               ; preds = %15
  %19 = load double, double* %3, align 8
  %20 = fneg double %19
  %21 = call double @llvm.floor.f64(double %20)
  %22 = fneg double %21
  br label %26

23:                                               ; preds = %15
  %24 = load double, double* %3, align 8
  %25 = call double @llvm.floor.f64(double %24)
  br label %26

26:                                               ; preds = %23, %18
  %27 = phi double [ %22, %18 ], [ %25, %23 ]
  store double %27, double* %2, align 8
  br label %28

28:                                               ; preds = %26, %13, %7
  %29 = load double, double* %2, align 8
  ret double %29
}

declare dso_local i32 @isfinite(double) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
