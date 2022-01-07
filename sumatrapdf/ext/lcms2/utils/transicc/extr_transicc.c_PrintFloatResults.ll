; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/transicc/extr_transicc.c_PrintFloatResults.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/transicc/extr_transicc.c_PrintFloatResults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cmsMAX_PATH = common dso_local global i32 0, align 4
@OutputColorSpace = common dso_local global i32 0, align 4
@OutputColorant = common dso_local global i32* null, align 8
@OutputRange = common dso_local global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [12 x i8] c"Channel #%u\00", align 1
@lQuantize = common dso_local global i64 0, align 8
@lUnbounded = common dso_local global i32 0, align 4
@Verbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"%.4f \00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"%s=%.4f \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, double*)* @PrintFloatResults to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PrintFloatResults(i32 %0, double* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca double*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca double, align 8
  store i32 %0, i32* %3, align 4
  store double* %1, double** %4, align 8
  %10 = load i32, i32* @cmsMAX_PATH, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %7, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %8, align 8
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @OutputColorSpace, align 4
  %16 = call i32 @cmsChannelsOf(i32 %14, i32 %15)
  store i32 %16, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %71, %2
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %74

21:                                               ; preds = %17
  %22 = load i32*, i32** @OutputColorant, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load i32, i32* %3, align 4
  %26 = load i32*, i32** @OutputColorant, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @cmsNamedColorInfo(i32 %25, i32* %26, i32 %27, i8* %13, i32* null, i32* null, i32* null, i32* null)
  br label %33

29:                                               ; preds = %21
  store double 1.000000e+00, double* @OutputRange, align 8
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, 1
  %32 = call i32 @sprintf(i8* %13, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %29, %24
  %34 = load double*, double** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds double, double* %34, i64 %36
  %38 = load double, double* %37, align 8
  %39 = load double, double* @OutputRange, align 8
  %40 = fmul double %38, %39
  store double %40, double* %9, align 8
  %41 = load i64, i64* @lQuantize, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %33
  %44 = load double, double* %9, align 8
  %45 = fadd double %44, 5.000000e-01
  %46 = call double @llvm.floor.f64(double %45)
  store double %46, double* %9, align 8
  br label %47

47:                                               ; preds = %43, %33
  %48 = load i32, i32* @lUnbounded, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %61, label %50

50:                                               ; preds = %47
  %51 = load double, double* %9, align 8
  %52 = fcmp olt double %51, 0.000000e+00
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store double 0.000000e+00, double* %9, align 8
  br label %54

54:                                               ; preds = %53, %50
  %55 = load double, double* %9, align 8
  %56 = load double, double* @OutputRange, align 8
  %57 = fcmp ogt double %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load double, double* @OutputRange, align 8
  store double %59, double* %9, align 8
  br label %60

60:                                               ; preds = %58, %54
  br label %61

61:                                               ; preds = %60, %47
  %62 = load i64, i64* @Verbose, align 8
  %63 = icmp sle i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load double, double* %9, align 8
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), double %65)
  br label %70

67:                                               ; preds = %61
  %68 = load double, double* %9, align 8
  %69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %13, double %68)
  br label %70

70:                                               ; preds = %67, %64
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %5, align 4
  br label %17

74:                                               ; preds = %17
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %76 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %76)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @cmsChannelsOf(i32, i32) #2

declare dso_local i32 @cmsNamedColorInfo(i32, i32*, i32, i8*, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @sprintf(i8*, i8*, i32) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #3

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
