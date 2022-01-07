; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testplugin.c_Rec709Math.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testplugin.c_Rec709Math.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (i32, i32, double*, double)* @Rec709Math to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @Rec709Math(i32 %0, i32 %1, double* %2, double %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca double*, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store double* %2, double** %7, align 8
  store double %3, double* %8, align 8
  store double 0.000000e+00, double* %9, align 8
  %10 = load i32, i32* %6, align 4
  switch i32 %10, label %70 [
    i32 709, label %11
    i32 -709, label %42
  ]

11:                                               ; preds = %4
  %12 = load double, double* %8, align 8
  %13 = load double*, double** %7, align 8
  %14 = getelementptr inbounds double, double* %13, i64 3
  %15 = load double, double* %14, align 8
  %16 = load double*, double** %7, align 8
  %17 = getelementptr inbounds double, double* %16, i64 4
  %18 = load double, double* %17, align 8
  %19 = fmul double %15, %18
  %20 = fcmp ole double %12, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %11
  %22 = load double, double* %8, align 8
  %23 = load double*, double** %7, align 8
  %24 = getelementptr inbounds double, double* %23, i64 3
  %25 = load double, double* %24, align 8
  %26 = fdiv double %22, %25
  store double %26, double* %9, align 8
  br label %41

27:                                               ; preds = %11
  %28 = load double, double* %8, align 8
  %29 = load double*, double** %7, align 8
  %30 = getelementptr inbounds double, double* %29, i64 2
  %31 = load double, double* %30, align 8
  %32 = fsub double %28, %31
  %33 = load double*, double** %7, align 8
  %34 = getelementptr inbounds double, double* %33, i64 1
  %35 = load double, double* %34, align 8
  %36 = fdiv double %32, %35
  %37 = load double*, double** %7, align 8
  %38 = getelementptr inbounds double, double* %37, i64 0
  %39 = load double, double* %38, align 8
  %40 = call double @pow(double %36, double %39)
  store double %40, double* %9, align 8
  br label %41

41:                                               ; preds = %27, %21
  br label %70

42:                                               ; preds = %4
  %43 = load double, double* %8, align 8
  %44 = load double*, double** %7, align 8
  %45 = getelementptr inbounds double, double* %44, i64 4
  %46 = load double, double* %45, align 8
  %47 = fcmp ole double %43, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %42
  %49 = load double, double* %8, align 8
  %50 = load double*, double** %7, align 8
  %51 = getelementptr inbounds double, double* %50, i64 3
  %52 = load double, double* %51, align 8
  %53 = fmul double %49, %52
  store double %53, double* %9, align 8
  br label %69

54:                                               ; preds = %42
  %55 = load double*, double** %7, align 8
  %56 = getelementptr inbounds double, double* %55, i64 1
  %57 = load double, double* %56, align 8
  %58 = load double, double* %8, align 8
  %59 = load double*, double** %7, align 8
  %60 = getelementptr inbounds double, double* %59, i64 0
  %61 = load double, double* %60, align 8
  %62 = fdiv double 1.000000e+00, %61
  %63 = call double @pow(double %58, double %62)
  %64 = fmul double %57, %63
  %65 = load double*, double** %7, align 8
  %66 = getelementptr inbounds double, double* %65, i64 2
  %67 = load double, double* %66, align 8
  %68 = fadd double %64, %67
  store double %68, double* %9, align 8
  br label %69

69:                                               ; preds = %54, %48
  br label %70

70:                                               ; preds = %4, %69, %41
  %71 = load double, double* %9, align 8
  ret double %71
}

declare dso_local double @pow(double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
