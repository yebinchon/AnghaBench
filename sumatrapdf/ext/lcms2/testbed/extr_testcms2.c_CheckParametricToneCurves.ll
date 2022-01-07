; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckParametricToneCurves.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckParametricToneCurves.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"Gamma\00", align 1
@Gamma = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"CIE122-1966\00", align 1
@CIE122 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"IEC 61966-3\00", align 1
@IEC61966_3 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"IEC 61966-2.1\00", align 1
@IEC61966_21 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"param_5\00", align 1
@param_5 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"param_6\00", align 1
@param_6 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"param_7\00", align 1
@param_7 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"param_8\00", align 1
@param_8 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [10 x i8] c"sigmoidal\00", align 1
@sigmoidal = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @CheckParametricToneCurves to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckParametricToneCurves() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [10 x double], align 16
  %3 = getelementptr inbounds [10 x double], [10 x double]* %2, i64 0, i64 0
  store double 2.200000e+00, double* %3, align 16
  %4 = load i32, i32* @Gamma, align 4
  %5 = getelementptr inbounds [10 x double], [10 x double]* %2, i64 0, i64 0
  %6 = call i32 @CheckSingleParametric(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %4, i32 1, double* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %92

9:                                                ; preds = %0
  %10 = getelementptr inbounds [10 x double], [10 x double]* %2, i64 0, i64 0
  store double 2.200000e+00, double* %10, align 16
  %11 = getelementptr inbounds [10 x double], [10 x double]* %2, i64 0, i64 1
  store double 1.500000e+00, double* %11, align 8
  %12 = getelementptr inbounds [10 x double], [10 x double]* %2, i64 0, i64 2
  store double -5.000000e-01, double* %12, align 16
  %13 = load i32, i32* @CIE122, align 4
  %14 = getelementptr inbounds [10 x double], [10 x double]* %2, i64 0, i64 0
  %15 = call i32 @CheckSingleParametric(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %13, i32 2, double* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %9
  store i32 0, i32* %1, align 4
  br label %92

18:                                               ; preds = %9
  %19 = getelementptr inbounds [10 x double], [10 x double]* %2, i64 0, i64 0
  store double 2.200000e+00, double* %19, align 16
  %20 = getelementptr inbounds [10 x double], [10 x double]* %2, i64 0, i64 1
  store double 1.500000e+00, double* %20, align 8
  %21 = getelementptr inbounds [10 x double], [10 x double]* %2, i64 0, i64 2
  store double -5.000000e-01, double* %21, align 16
  %22 = getelementptr inbounds [10 x double], [10 x double]* %2, i64 0, i64 3
  store double 3.000000e-01, double* %22, align 8
  %23 = load i32, i32* @IEC61966_3, align 4
  %24 = getelementptr inbounds [10 x double], [10 x double]* %2, i64 0, i64 0
  %25 = call i32 @CheckSingleParametric(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %23, i32 3, double* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %18
  store i32 0, i32* %1, align 4
  br label %92

28:                                               ; preds = %18
  %29 = getelementptr inbounds [10 x double], [10 x double]* %2, i64 0, i64 0
  store double 2.400000e+00, double* %29, align 16
  %30 = getelementptr inbounds [10 x double], [10 x double]* %2, i64 0, i64 1
  store double 0x3FEE54EDCD0AEB60, double* %30, align 8
  %31 = getelementptr inbounds [10 x double], [10 x double]* %2, i64 0, i64 2
  store double 0x3FAAB1232F514A03, double* %31, align 16
  %32 = getelementptr inbounds [10 x double], [10 x double]* %2, i64 0, i64 3
  store double 0x3FB3D0722149B580, double* %32, align 8
  %33 = getelementptr inbounds [10 x double], [10 x double]* %2, i64 0, i64 4
  store double 4.045000e-02, double* %33, align 16
  %34 = load i32, i32* @IEC61966_21, align 4
  %35 = getelementptr inbounds [10 x double], [10 x double]* %2, i64 0, i64 0
  %36 = call i32 @CheckSingleParametric(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %34, i32 4, double* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %28
  store i32 0, i32* %1, align 4
  br label %92

39:                                               ; preds = %28
  %40 = getelementptr inbounds [10 x double], [10 x double]* %2, i64 0, i64 0
  store double 2.200000e+00, double* %40, align 16
  %41 = getelementptr inbounds [10 x double], [10 x double]* %2, i64 0, i64 1
  store double 0x3FE6666666666666, double* %41, align 8
  %42 = getelementptr inbounds [10 x double], [10 x double]* %2, i64 0, i64 2
  store double 2.000000e-01, double* %42, align 16
  %43 = getelementptr inbounds [10 x double], [10 x double]* %2, i64 0, i64 3
  store double 3.000000e-01, double* %43, align 8
  %44 = getelementptr inbounds [10 x double], [10 x double]* %2, i64 0, i64 4
  store double 1.000000e-01, double* %44, align 16
  %45 = getelementptr inbounds [10 x double], [10 x double]* %2, i64 0, i64 5
  store double 5.000000e-01, double* %45, align 8
  %46 = getelementptr inbounds [10 x double], [10 x double]* %2, i64 0, i64 6
  store double 2.000000e-01, double* %46, align 16
  %47 = load i32, i32* @param_5, align 4
  %48 = getelementptr inbounds [10 x double], [10 x double]* %2, i64 0, i64 0
  %49 = call i32 @CheckSingleParametric(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %47, i32 5, double* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %39
  store i32 0, i32* %1, align 4
  br label %92

52:                                               ; preds = %39
  %53 = getelementptr inbounds [10 x double], [10 x double]* %2, i64 0, i64 0
  store double 2.200000e+00, double* %53, align 16
  %54 = getelementptr inbounds [10 x double], [10 x double]* %2, i64 0, i64 1
  store double 0x3FE6666666666666, double* %54, align 8
  %55 = getelementptr inbounds [10 x double], [10 x double]* %2, i64 0, i64 2
  store double 2.000000e-01, double* %55, align 16
  %56 = getelementptr inbounds [10 x double], [10 x double]* %2, i64 0, i64 3
  store double 3.000000e-01, double* %56, align 8
  %57 = load i32, i32* @param_6, align 4
  %58 = getelementptr inbounds [10 x double], [10 x double]* %2, i64 0, i64 0
  %59 = call i32 @CheckSingleParametric(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %57, i32 6, double* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %52
  store i32 0, i32* %1, align 4
  br label %92

62:                                               ; preds = %52
  %63 = getelementptr inbounds [10 x double], [10 x double]* %2, i64 0, i64 0
  store double 2.200000e+00, double* %63, align 16
  %64 = getelementptr inbounds [10 x double], [10 x double]* %2, i64 0, i64 1
  store double 9.000000e-01, double* %64, align 8
  %65 = getelementptr inbounds [10 x double], [10 x double]* %2, i64 0, i64 2
  store double 9.000000e-01, double* %65, align 16
  %66 = getelementptr inbounds [10 x double], [10 x double]* %2, i64 0, i64 3
  store double 2.000000e-02, double* %66, align 8
  %67 = getelementptr inbounds [10 x double], [10 x double]* %2, i64 0, i64 4
  store double 1.000000e-01, double* %67, align 16
  %68 = load i32, i32* @param_7, align 4
  %69 = getelementptr inbounds [10 x double], [10 x double]* %2, i64 0, i64 0
  %70 = call i32 @CheckSingleParametric(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %68, i32 7, double* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %62
  store i32 0, i32* %1, align 4
  br label %92

73:                                               ; preds = %62
  %74 = getelementptr inbounds [10 x double], [10 x double]* %2, i64 0, i64 0
  store double 9.000000e-01, double* %74, align 16
  %75 = getelementptr inbounds [10 x double], [10 x double]* %2, i64 0, i64 1
  store double 9.000000e-01, double* %75, align 8
  %76 = getelementptr inbounds [10 x double], [10 x double]* %2, i64 0, i64 2
  store double 1.020000e+00, double* %76, align 16
  %77 = getelementptr inbounds [10 x double], [10 x double]* %2, i64 0, i64 3
  store double 1.000000e-01, double* %77, align 8
  %78 = getelementptr inbounds [10 x double], [10 x double]* %2, i64 0, i64 4
  store double 2.000000e-01, double* %78, align 16
  %79 = load i32, i32* @param_8, align 4
  %80 = getelementptr inbounds [10 x double], [10 x double]* %2, i64 0, i64 0
  %81 = call i32 @CheckSingleParametric(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %79, i32 8, double* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %73
  store i32 0, i32* %1, align 4
  br label %92

84:                                               ; preds = %73
  %85 = getelementptr inbounds [10 x double], [10 x double]* %2, i64 0, i64 0
  store double 1.900000e+00, double* %85, align 16
  %86 = load i32, i32* @sigmoidal, align 4
  %87 = getelementptr inbounds [10 x double], [10 x double]* %2, i64 0, i64 0
  %88 = call i32 @CheckSingleParametric(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i32 %86, i32 108, double* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %84
  store i32 0, i32* %1, align 4
  br label %92

91:                                               ; preds = %84
  store i32 1, i32* %1, align 4
  br label %92

92:                                               ; preds = %91, %90, %83, %72, %61, %51, %38, %27, %17, %8
  %93 = load i32, i32* %1, align 4
  ret i32 %93
}

declare dso_local i32 @CheckSingleParametric(i8*, i32, i32, double*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
