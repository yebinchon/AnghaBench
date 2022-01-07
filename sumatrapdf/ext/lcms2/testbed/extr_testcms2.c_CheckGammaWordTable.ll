; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckGammaWordTable.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckGammaWordTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MaxErr = common dso_local global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [11 x i8] c"|Err|<%lf \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (double)* @CheckGammaWordTable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckGammaWordTable(double %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca double, align 8
  %4 = alloca [1025 x i64], align 16
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  store double %0, double* %3, align 8
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %28, %1
  %12 = load i32, i32* %6, align 4
  %13 = icmp sle i32 %12, 1024
  br i1 %13, label %14, label %31

14:                                               ; preds = %11
  %15 = load i32, i32* %6, align 4
  %16 = sitofp i32 %15 to double
  %17 = fdiv double %16, 1.024000e+03
  %18 = fptosi double %17 to i64
  store i64 %18, i64* %7, align 8
  %19 = load i64, i64* %7, align 8
  %20 = load double, double* %3, align 8
  %21 = call double @pow(i64 %19, double %20)
  %22 = fmul double %21, 6.553500e+04
  %23 = fadd double %22, 5.000000e-01
  %24 = call i64 @floor(double %23)
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [1025 x i64], [1025 x i64]* %4, i64 0, i64 %26
  store i64 %24, i64* %27, align 8
  br label %28

28:                                               ; preds = %14
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %6, align 4
  br label %11

31:                                               ; preds = %11
  %32 = call i32 (...) @DbgThread()
  %33 = getelementptr inbounds [1025 x i64], [1025 x i64]* %4, i64 0, i64 0
  %34 = call i32* @cmsBuildTabulatedToneCurve16(i32 %32, i32 1025, i64* %33)
  store i32* %34, i32** %5, align 8
  store double 0.000000e+00, double* @MaxErr, align 8
  store i32 0, i32* %6, align 4
  br label %35

35:                                               ; preds = %62, %31
  %36 = load i32, i32* %6, align 4
  %37 = icmp sle i32 %36, 65535
  br i1 %37, label %38, label %65

38:                                               ; preds = %35
  %39 = load i32, i32* %6, align 4
  %40 = sitofp i32 %39 to double
  %41 = fdiv double %40, 6.553500e+04
  %42 = fptosi double %41 to i64
  store i64 %42, i64* %7, align 8
  %43 = call i32 (...) @DbgThread()
  %44 = load i32*, i32** %5, align 8
  %45 = load i64, i64* %7, align 8
  %46 = call i64 @cmsEvalToneCurveFloat(i32 %43, i32* %44, i64 %45)
  store i64 %46, i64* %8, align 8
  %47 = load i64, i64* %7, align 8
  %48 = load double, double* %3, align 8
  %49 = call double @pow(i64 %47, double %48)
  store double %49, double* %9, align 8
  %50 = load double, double* %9, align 8
  %51 = load i64, i64* %8, align 8
  %52 = sitofp i64 %51 to double
  %53 = fsub double %50, %52
  %54 = fptosi double %53 to i64
  %55 = call double @fabs(i64 %54)
  store double %55, double* %10, align 8
  %56 = load double, double* %10, align 8
  %57 = load double, double* @MaxErr, align 8
  %58 = fcmp ogt double %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %38
  %60 = load double, double* %10, align 8
  store double %60, double* @MaxErr, align 8
  br label %61

61:                                               ; preds = %59, %38
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %6, align 4
  br label %35

65:                                               ; preds = %35
  %66 = load double, double* @MaxErr, align 8
  %67 = fcmp ogt double %66, 0.000000e+00
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = load double, double* @MaxErr, align 8
  %70 = fmul double %69, 6.553500e+04
  %71 = call i32 @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), double %70)
  br label %72

72:                                               ; preds = %68, %65
  %73 = load i32*, i32** %5, align 8
  %74 = load double, double* %3, align 8
  %75 = call i32 @CheckGammaEstimation(i32* %73, double %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %72
  store i32 0, i32* %2, align 4
  br label %82

78:                                               ; preds = %72
  %79 = call i32 (...) @DbgThread()
  %80 = load i32*, i32** %5, align 8
  %81 = call i32 @cmsFreeToneCurve(i32 %79, i32* %80)
  store i32 1, i32* %2, align 4
  br label %82

82:                                               ; preds = %78, %77
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i64 @floor(double) #1

declare dso_local double @pow(i64, double) #1

declare dso_local i32* @cmsBuildTabulatedToneCurve16(i32, i32, i64*) #1

declare dso_local i32 @DbgThread(...) #1

declare dso_local i64 @cmsEvalToneCurveFloat(i32, i32*, i64) #1

declare dso_local double @fabs(i64) #1

declare dso_local i32 @printf(i8*, double) #1

declare dso_local i32 @CheckGammaEstimation(i32*, double) #1

declare dso_local i32 @cmsFreeToneCurve(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
