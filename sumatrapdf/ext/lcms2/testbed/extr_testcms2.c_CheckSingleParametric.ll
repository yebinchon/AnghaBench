; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckSingleParametric.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckSingleParametric.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FIXED_PRECISION_15_16 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"Inverse %s\00", align 1
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32 (i32, i32*)*, i32, i32*)* @CheckSingleParametric to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckSingleParametric(i8* %0, i32 (i32, i32*)* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32 (i32, i32*)*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca [256 x i8], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 (i32, i32*)* %1, i32 (i32, i32*)** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %19 = call i32 (...) @DbgThread()
  %20 = load i32, i32* %8, align 4
  %21 = load i32*, i32** %9, align 8
  %22 = call i32* @cmsBuildParametricToneCurve(i32 %19, i32 %20, i32* %21)
  store i32* %22, i32** %11, align 8
  %23 = call i32 (...) @DbgThread()
  %24 = load i32, i32* %8, align 4
  %25 = sub nsw i32 0, %24
  %26 = load i32*, i32** %9, align 8
  %27 = call i32* @cmsBuildParametricToneCurve(i32 %23, i32 %25, i32* %26)
  store i32* %27, i32** %12, align 8
  store i32 0, i32* %10, align 4
  br label %28

28:                                               ; preds = %69, %4
  %29 = load i32, i32* %10, align 4
  %30 = icmp sle i32 %29, 1000
  br i1 %30, label %31, label %72

31:                                               ; preds = %28
  %32 = load i32, i32* %10, align 4
  %33 = sdiv i32 %32, 1000
  store i32 %33, i32* %14, align 4
  %34 = load i32 (i32, i32*)*, i32 (i32, i32*)** %7, align 8
  %35 = load i32, i32* %14, align 4
  %36 = load i32*, i32** %9, align 8
  %37 = call i32 %34(i32 %35, i32* %36)
  store i32 %37, i32* %15, align 4
  %38 = call i32 (...) @DbgThread()
  %39 = load i32*, i32** %11, align 8
  %40 = load i32, i32* %14, align 4
  %41 = call i32 @cmsEvalToneCurveFloat(i32 %38, i32* %39, i32 %40)
  store i32 %41, i32* %16, align 4
  %42 = call i32 (...) @DbgThread()
  %43 = load i32*, i32** %12, align 8
  %44 = load i32, i32* %16, align 4
  %45 = call i32 @cmsEvalToneCurveFloat(i32 %42, i32* %43, i32 %44)
  store i32 %45, i32* %17, align 4
  %46 = load i32 (i32, i32*)*, i32 (i32, i32*)** %7, align 8
  %47 = load i32, i32* %17, align 4
  %48 = load i32*, i32** %9, align 8
  %49 = call i32 %46(i32 %47, i32* %48)
  store i32 %49, i32* %18, align 4
  %50 = load i8*, i8** %6, align 8
  %51 = load i32, i32* %15, align 4
  %52 = load i32, i32* %16, align 4
  %53 = load i32, i32* @FIXED_PRECISION_15_16, align 4
  %54 = call i32 @IsGoodVal(i8* %50, i32 %51, i32 %52, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %31
  br label %80

57:                                               ; preds = %31
  %58 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %59 = load i8*, i8** %6, align 8
  %60 = call i32 @sprintf(i8* %58, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %59)
  %61 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %62 = load i32, i32* %15, align 4
  %63 = load i32, i32* %18, align 4
  %64 = load i32, i32* @FIXED_PRECISION_15_16, align 4
  %65 = call i32 @IsGoodVal(i8* %61, i32 %62, i32 %63, i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %57
  br label %80

68:                                               ; preds = %57
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %10, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %10, align 4
  br label %28

72:                                               ; preds = %28
  %73 = call i32 (...) @DbgThread()
  %74 = load i32*, i32** %11, align 8
  %75 = call i32 @cmsFreeToneCurve(i32 %73, i32* %74)
  %76 = call i32 (...) @DbgThread()
  %77 = load i32*, i32** %12, align 8
  %78 = call i32 @cmsFreeToneCurve(i32 %76, i32* %77)
  %79 = load i32, i32* @TRUE, align 4
  store i32 %79, i32* %5, align 4
  br label %88

80:                                               ; preds = %67, %56
  %81 = call i32 (...) @DbgThread()
  %82 = load i32*, i32** %11, align 8
  %83 = call i32 @cmsFreeToneCurve(i32 %81, i32* %82)
  %84 = call i32 (...) @DbgThread()
  %85 = load i32*, i32** %12, align 8
  %86 = call i32 @cmsFreeToneCurve(i32 %84, i32* %85)
  %87 = load i32, i32* @FALSE, align 4
  store i32 %87, i32* %5, align 4
  br label %88

88:                                               ; preds = %80, %72
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local i32* @cmsBuildParametricToneCurve(i32, i32, i32*) #1

declare dso_local i32 @DbgThread(...) #1

declare dso_local i32 @cmsEvalToneCurveFloat(i32, i32*, i32) #1

declare dso_local i32 @IsGoodVal(i8*, i32, i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i32 @cmsFreeToneCurve(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
