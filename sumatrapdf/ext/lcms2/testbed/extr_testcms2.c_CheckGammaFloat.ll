; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckGammaFloat.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckGammaFloat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MaxErr = common dso_local global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [11 x i8] c"|Err|<%lf \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (double)* @CheckGammaFloat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckGammaFloat(double %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca double, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  store double %0, double* %3, align 8
  %10 = call i32 (...) @DbgThread()
  %11 = load double, double* %3, align 8
  %12 = call i32* @cmsBuildGamma(i32 %10, double %11)
  store i32* %12, i32** %4, align 8
  store double 0.000000e+00, double* @MaxErr, align 8
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %37, %1
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 65535
  br i1 %15, label %16, label %40

16:                                               ; preds = %13
  %17 = load i32, i32* %5, align 4
  %18 = sitofp i32 %17 to double
  %19 = fdiv double %18, 6.553500e+04
  store double %19, double* %6, align 8
  %20 = call i32 (...) @DbgThread()
  %21 = load i32*, i32** %4, align 8
  %22 = load double, double* %6, align 8
  %23 = call double @cmsEvalToneCurveFloat(i32 %20, i32* %21, double %22)
  store double %23, double* %7, align 8
  %24 = load double, double* %6, align 8
  %25 = load double, double* %3, align 8
  %26 = call double @pow(double %24, double %25) #4
  store double %26, double* %8, align 8
  %27 = load double, double* %8, align 8
  %28 = load double, double* %7, align 8
  %29 = fsub double %27, %28
  %30 = call double @llvm.fabs.f64(double %29)
  store double %30, double* %9, align 8
  %31 = load double, double* %9, align 8
  %32 = load double, double* @MaxErr, align 8
  %33 = fcmp ogt double %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %16
  %35 = load double, double* %9, align 8
  store double %35, double* @MaxErr, align 8
  br label %36

36:                                               ; preds = %34, %16
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %5, align 4
  br label %13

40:                                               ; preds = %13
  %41 = load double, double* @MaxErr, align 8
  %42 = fcmp ogt double %41, 0.000000e+00
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load double, double* @MaxErr, align 8
  %45 = fmul double %44, 6.553500e+04
  %46 = call i32 @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), double %45)
  br label %47

47:                                               ; preds = %43, %40
  %48 = load i32*, i32** %4, align 8
  %49 = load double, double* %3, align 8
  %50 = call i32 @CheckGammaEstimation(i32* %48, double %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %47
  store i32 0, i32* %2, align 4
  br label %57

53:                                               ; preds = %47
  %54 = call i32 (...) @DbgThread()
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @cmsFreeToneCurve(i32 %54, i32* %55)
  store i32 1, i32* %2, align 4
  br label %57

57:                                               ; preds = %53, %52
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32* @cmsBuildGamma(i32, double) #1

declare dso_local i32 @DbgThread(...) #1

declare dso_local double @cmsEvalToneCurveFloat(i32, i32*, double) #1

; Function Attrs: nounwind
declare dso_local double @pow(double, double) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #3

declare dso_local i32 @printf(i8*, double) #1

declare dso_local i32 @CheckGammaEstimation(i32*, double) #1

declare dso_local i32 @cmsFreeToneCurve(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
