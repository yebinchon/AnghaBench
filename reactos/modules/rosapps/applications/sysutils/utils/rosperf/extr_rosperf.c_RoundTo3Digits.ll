; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/rosperf/extr_rosperf.c_RoundTo3Digits.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/rosperf/extr_rosperf.c_RoundTo3Digits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (double)* @RoundTo3Digits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @RoundTo3Digits(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  store double %0, double* %2, align 8
  store double 1.000000e+00, double* %3, align 8
  %5 = load double, double* %2, align 8
  %6 = fcmp olt double %5, 0.000000e+00
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load double, double* %2, align 8
  %9 = fneg double %8
  store double %9, double* %2, align 8
  store double -1.000000e+00, double* %4, align 8
  br label %11

10:                                               ; preds = %1
  store double 1.000000e+00, double* %4, align 8
  br label %11

11:                                               ; preds = %10, %7
  %12 = load double, double* %2, align 8
  %13 = fcmp ole double 1.000000e+03, %12
  br i1 %13, label %14, label %33

14:                                               ; preds = %11
  br label %15

15:                                               ; preds = %18, %14
  %16 = load double, double* %3, align 8
  %17 = fmul double %16, 1.000000e+01
  store double %17, double* %3, align 8
  br label %18

18:                                               ; preds = %15
  %19 = load double, double* %2, align 8
  %20 = load double, double* %3, align 8
  %21 = fdiv double %19, %20
  %22 = fcmp ole double 1.000000e+03, %21
  br i1 %22, label %15, label %23

23:                                               ; preds = %18
  %24 = load double, double* %2, align 8
  %25 = load double, double* %3, align 8
  %26 = fdiv double %24, %25
  %27 = fadd double %26, 5.000000e-01
  %28 = fptosi double %27 to i32
  %29 = sitofp i32 %28 to double
  store double %29, double* %2, align 8
  %30 = load double, double* %3, align 8
  %31 = load double, double* %2, align 8
  %32 = fmul double %31, %30
  store double %32, double* %2, align 8
  br label %56

33:                                               ; preds = %11
  %34 = load double, double* %2, align 8
  %35 = fcmp une double 0.000000e+00, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %33
  br label %37

37:                                               ; preds = %42, %36
  %38 = load double, double* %2, align 8
  %39 = load double, double* %3, align 8
  %40 = fmul double %38, %39
  %41 = fcmp olt double %40, 1.000000e+02
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load double, double* %3, align 8
  %44 = fmul double %43, 1.000000e+01
  store double %44, double* %3, align 8
  br label %37

45:                                               ; preds = %37
  br label %46

46:                                               ; preds = %45, %33
  %47 = load double, double* %2, align 8
  %48 = load double, double* %3, align 8
  %49 = fmul double %47, %48
  %50 = fadd double %49, 5.000000e-01
  %51 = fptosi double %50 to i32
  %52 = sitofp i32 %51 to double
  store double %52, double* %2, align 8
  %53 = load double, double* %3, align 8
  %54 = load double, double* %2, align 8
  %55 = fdiv double %54, %53
  store double %55, double* %2, align 8
  br label %56

56:                                               ; preds = %46, %23
  %57 = load double, double* %2, align 8
  %58 = load double, double* %4, align 8
  %59 = fmul double %57, %58
  ret double %59
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
