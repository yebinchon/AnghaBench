; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsmath.c_jsM_round.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsmath.c_jsM_round.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (double)* @jsM_round to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @jsM_round(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  store double %0, double* %3, align 8
  %4 = load double, double* %3, align 8
  %5 = call i64 @isnan(double %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load double, double* %3, align 8
  store double %8, double* %2, align 8
  br label %38

9:                                                ; preds = %1
  %10 = load double, double* %3, align 8
  %11 = call i64 @isinf(double %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = load double, double* %3, align 8
  store double %14, double* %2, align 8
  br label %38

15:                                               ; preds = %9
  %16 = load double, double* %3, align 8
  %17 = fcmp oeq double %16, 0.000000e+00
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = load double, double* %3, align 8
  store double %19, double* %2, align 8
  br label %38

20:                                               ; preds = %15
  %21 = load double, double* %3, align 8
  %22 = fcmp ogt double %21, 0.000000e+00
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load double, double* %3, align 8
  %25 = fcmp olt double %24, 5.000000e-01
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store double 0.000000e+00, double* %2, align 8
  br label %38

27:                                               ; preds = %23, %20
  %28 = load double, double* %3, align 8
  %29 = fcmp olt double %28, 0.000000e+00
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load double, double* %3, align 8
  %32 = fcmp oge double %31, -5.000000e-01
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store double 0.000000e+00, double* %2, align 8
  br label %38

34:                                               ; preds = %30, %27
  %35 = load double, double* %3, align 8
  %36 = fadd double %35, 5.000000e-01
  %37 = call double @llvm.floor.f64(double %36)
  store double %37, double* %2, align 8
  br label %38

38:                                               ; preds = %34, %33, %26, %18, %13, %7
  %39 = load double, double* %2, align 8
  ret double %39
}

declare dso_local i64 @isnan(double) #1

declare dso_local i64 @isinf(double) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
