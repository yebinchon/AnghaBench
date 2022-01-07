; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckGammaFloatTable.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckGammaFloatTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MaxErr = common dso_local global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [11 x i8] c"|Err|<%lf \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (double)* @CheckGammaFloatTable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckGammaFloatTable(double %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca double, align 8
  %4 = alloca [1025 x double], align 16
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  store double %0, double* %3, align 8
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %25, %1
  %12 = load i32, i32* %6, align 4
  %13 = icmp sle i32 %12, 1024
  br i1 %13, label %14, label %28

14:                                               ; preds = %11
  %15 = load i32, i32* %6, align 4
  %16 = sitofp i32 %15 to double
  %17 = fdiv double %16, 1.024000e+03
  store double %17, double* %7, align 8
  %18 = load double, double* %7, align 8
  %19 = load double, double* %3, align 8
  %20 = fptrunc double %19 to float
  %21 = call double @powf(double %18, float %20)
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [1025 x double], [1025 x double]* %4, i64 0, i64 %23
  store double %21, double* %24, align 8
  br label %25

25:                                               ; preds = %14
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %6, align 4
  br label %11

28:                                               ; preds = %11
  %29 = call i32 (...) @DbgThread()
  %30 = getelementptr inbounds [1025 x double], [1025 x double]* %4, i64 0, i64 0
  %31 = call i32* @cmsBuildTabulatedToneCurveFloat(i32 %29, i32 1025, double* %30)
  store i32* %31, i32** %5, align 8
  store double 0.000000e+00, double* @MaxErr, align 8
  store i32 0, i32* %6, align 4
  br label %32

32:                                               ; preds = %56, %28
  %33 = load i32, i32* %6, align 4
  %34 = icmp sle i32 %33, 65535
  br i1 %34, label %35, label %59

35:                                               ; preds = %32
  %36 = load i32, i32* %6, align 4
  %37 = sitofp i32 %36 to double
  %38 = fdiv double %37, 6.553500e+04
  store double %38, double* %7, align 8
  %39 = call i32 (...) @DbgThread()
  %40 = load i32*, i32** %5, align 8
  %41 = load double, double* %7, align 8
  %42 = call double @cmsEvalToneCurveFloat(i32 %39, i32* %40, double %41)
  store double %42, double* %8, align 8
  %43 = load double, double* %7, align 8
  %44 = load double, double* %3, align 8
  %45 = call double @pow(double %43, double %44) #4
  store double %45, double* %9, align 8
  %46 = load double, double* %9, align 8
  %47 = load double, double* %8, align 8
  %48 = fsub double %46, %47
  %49 = call double @llvm.fabs.f64(double %48)
  store double %49, double* %10, align 8
  %50 = load double, double* %10, align 8
  %51 = load double, double* @MaxErr, align 8
  %52 = fcmp ogt double %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %35
  %54 = load double, double* %10, align 8
  store double %54, double* @MaxErr, align 8
  br label %55

55:                                               ; preds = %53, %35
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %6, align 4
  br label %32

59:                                               ; preds = %32
  %60 = load double, double* @MaxErr, align 8
  %61 = fcmp ogt double %60, 0.000000e+00
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load double, double* @MaxErr, align 8
  %64 = fmul double %63, 6.553500e+04
  %65 = call i32 @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), double %64)
  br label %66

66:                                               ; preds = %62, %59
  %67 = load i32*, i32** %5, align 8
  %68 = load double, double* %3, align 8
  %69 = call i32 @CheckGammaEstimation(i32* %67, double %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %66
  store i32 0, i32* %2, align 4
  br label %76

72:                                               ; preds = %66
  %73 = call i32 (...) @DbgThread()
  %74 = load i32*, i32** %5, align 8
  %75 = call i32 @cmsFreeToneCurve(i32 %73, i32* %74)
  store i32 1, i32* %2, align 4
  br label %76

76:                                               ; preds = %72, %71
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local double @powf(double, float) #1

declare dso_local i32* @cmsBuildTabulatedToneCurveFloat(i32, i32, double*) #1

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
