; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckVCGT.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckVCGT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cmsSigVcgtTag = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"VCGT R\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"VCGT G\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"VCGT B\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @CheckVCGT to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckVCGT(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [3 x i32*], align 16
  %7 = alloca i32**, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %67 [
    i32 1, label %9
    i32 2, label %30
  ]

9:                                                ; preds = %2
  %10 = call i32 (...) @DbgThread()
  %11 = call i32* @cmsBuildGamma(i32 %10, double 1.100000e+00)
  %12 = getelementptr inbounds [3 x i32*], [3 x i32*]* %6, i64 0, i64 0
  store i32* %11, i32** %12, align 16
  %13 = call i32 (...) @DbgThread()
  %14 = call i32* @cmsBuildGamma(i32 %13, double 2.200000e+00)
  %15 = getelementptr inbounds [3 x i32*], [3 x i32*]* %6, i64 0, i64 1
  store i32* %14, i32** %15, align 8
  %16 = call i32 (...) @DbgThread()
  %17 = call i32* @cmsBuildGamma(i32 %16, double 3.400000e+00)
  %18 = getelementptr inbounds [3 x i32*], [3 x i32*]* %6, i64 0, i64 2
  store i32* %17, i32** %18, align 16
  %19 = call i32 (...) @DbgThread()
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @cmsSigVcgtTag, align 4
  %22 = getelementptr inbounds [3 x i32*], [3 x i32*]* %6, i64 0, i64 0
  %23 = call i32 @cmsWriteTag(i32 %19, i32 %20, i32 %21, i32** %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %69

26:                                               ; preds = %9
  %27 = call i32 (...) @DbgThread()
  %28 = getelementptr inbounds [3 x i32*], [3 x i32*]* %6, i64 0, i64 0
  %29 = call i32 @cmsFreeToneCurveTriple(i32 %27, i32** %28)
  store i32 1, i32* %3, align 4
  br label %69

30:                                               ; preds = %2
  %31 = call i32 (...) @DbgThread()
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @cmsSigVcgtTag, align 4
  %34 = call i64 @cmsReadTag(i32 %31, i32 %32, i32 %33)
  %35 = inttoptr i64 %34 to i32**
  store i32** %35, i32*** %7, align 8
  %36 = load i32**, i32*** %7, align 8
  %37 = icmp eq i32** %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %69

39:                                               ; preds = %30
  %40 = call i32 (...) @DbgThread()
  %41 = load i32**, i32*** %7, align 8
  %42 = getelementptr inbounds i32*, i32** %41, i64 0
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @cmsEstimateGamma(i32 %40, i32* %43, double 1.000000e-02)
  %45 = call i32 @IsGoodVal(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %44, double 1.100000e+00, double 1.000000e-03)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %69

48:                                               ; preds = %39
  %49 = call i32 (...) @DbgThread()
  %50 = load i32**, i32*** %7, align 8
  %51 = getelementptr inbounds i32*, i32** %50, i64 1
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @cmsEstimateGamma(i32 %49, i32* %52, double 1.000000e-02)
  %54 = call i32 @IsGoodVal(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %53, double 2.200000e+00, double 1.000000e-03)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %69

57:                                               ; preds = %48
  %58 = call i32 (...) @DbgThread()
  %59 = load i32**, i32*** %7, align 8
  %60 = getelementptr inbounds i32*, i32** %59, i64 2
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @cmsEstimateGamma(i32 %58, i32* %61, double 1.000000e-02)
  %63 = call i32 @IsGoodVal(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %62, double 3.400000e+00, double 1.000000e-03)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %57
  store i32 0, i32* %3, align 4
  br label %69

66:                                               ; preds = %57
  store i32 1, i32* %3, align 4
  br label %69

67:                                               ; preds = %2
  br label %68

68:                                               ; preds = %67
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %68, %66, %65, %56, %47, %38, %26, %25
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32* @cmsBuildGamma(i32, double) #1

declare dso_local i32 @DbgThread(...) #1

declare dso_local i32 @cmsWriteTag(i32, i32, i32, i32**) #1

declare dso_local i32 @cmsFreeToneCurveTriple(i32, i32**) #1

declare dso_local i64 @cmsReadTag(i32, i32, i32) #1

declare dso_local i32 @IsGoodVal(i8*, i32, double, double) #1

declare dso_local i32 @cmsEstimateGamma(i32, i32*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
