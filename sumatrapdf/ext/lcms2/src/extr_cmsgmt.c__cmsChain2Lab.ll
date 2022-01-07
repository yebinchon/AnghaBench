; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmsgmt.c__cmsChain2Lab.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmsgmt.c__cmsChain2Lab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INTENT_RELATIVE_COLORIMETRIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @_cmsChain2Lab(i32 %0, i32 %1, i32 %2, i32 %3, i32* %4, i32** %5, i64* %6, double* %7, i32 %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32**, align 8
  %17 = alloca i64*, align 8
  %18 = alloca double*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca [256 x i32*], align 16
  %23 = alloca [256 x i64], align 16
  %24 = alloca [256 x double], align 16
  %25 = alloca [256 x i32], align 16
  %26 = alloca i32, align 4
  store i32 %0, i32* %11, align 4
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32* %4, i32** %15, align 8
  store i32** %5, i32*** %16, align 8
  store i64* %6, i64** %17, align 8
  store double* %7, double** %18, align 8
  store i32 %8, i32* %19, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp sgt i32 %27, 254
  br i1 %28, label %29, label %30

29:                                               ; preds = %9
  store i32* null, i32** %10, align 8
  br label %107

30:                                               ; preds = %9
  %31 = load i32, i32* %11, align 4
  %32 = call i32* @cmsCreateLab4Profile(i32 %31, i32* null)
  store i32* %32, i32** %21, align 8
  %33 = load i32*, i32** %21, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i32* null, i32** %10, align 8
  br label %107

36:                                               ; preds = %30
  store i32 0, i32* %26, align 4
  br label %37

37:                                               ; preds = %74, %36
  %38 = load i32, i32* %26, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %77

41:                                               ; preds = %37
  %42 = load i32**, i32*** %16, align 8
  %43 = load i32, i32* %26, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32*, i32** %42, i64 %44
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %26, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [256 x i32*], [256 x i32*]* %22, i64 0, i64 %48
  store i32* %46, i32** %49, align 8
  %50 = load i64*, i64** %17, align 8
  %51 = load i32, i32* %26, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = load i32, i32* %26, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [256 x i64], [256 x i64]* %23, i64 0, i64 %56
  store i64 %54, i64* %57, align 8
  %58 = load double*, double** %18, align 8
  %59 = load i32, i32* %26, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds double, double* %58, i64 %60
  %62 = load double, double* %61, align 8
  %63 = load i32, i32* %26, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [256 x double], [256 x double]* %24, i64 0, i64 %64
  store double %62, double* %65, align 8
  %66 = load i32*, i32** %15, align 8
  %67 = load i32, i32* %26, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %26, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [256 x i32], [256 x i32]* %25, i64 0, i64 %72
  store i32 %70, i32* %73, align 4
  br label %74

74:                                               ; preds = %41
  %75 = load i32, i32* %26, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %26, align 4
  br label %37

77:                                               ; preds = %37
  %78 = load i32*, i32** %21, align 8
  %79 = load i32, i32* %12, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [256 x i32*], [256 x i32*]* %22, i64 0, i64 %80
  store i32* %78, i32** %81, align 8
  %82 = load i32, i32* %12, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [256 x i64], [256 x i64]* %23, i64 0, i64 %83
  store i64 0, i64* %84, align 8
  %85 = load i32, i32* %12, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [256 x double], [256 x double]* %24, i64 0, i64 %86
  store double 1.000000e+00, double* %87, align 8
  %88 = load i32, i32* @INTENT_RELATIVE_COLORIMETRIC, align 4
  %89 = load i32, i32* %12, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [256 x i32], [256 x i32]* %25, i64 0, i64 %90
  store i32 %88, i32* %91, align 4
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* %12, align 4
  %94 = add nsw i32 %93, 1
  %95 = getelementptr inbounds [256 x i32*], [256 x i32*]* %22, i64 0, i64 0
  %96 = getelementptr inbounds [256 x i64], [256 x i64]* %23, i64 0, i64 0
  %97 = getelementptr inbounds [256 x i32], [256 x i32]* %25, i64 0, i64 0
  %98 = getelementptr inbounds [256 x double], [256 x double]* %24, i64 0, i64 0
  %99 = load i32, i32* %13, align 4
  %100 = load i32, i32* %14, align 4
  %101 = load i32, i32* %19, align 4
  %102 = call i32* @cmsCreateExtendedTransform(i32 %92, i32 %94, i32** %95, i64* %96, i32* %97, double* %98, i32* null, i32 0, i32 %99, i32 %100, i32 %101)
  store i32* %102, i32** %20, align 8
  %103 = load i32, i32* %11, align 4
  %104 = load i32*, i32** %21, align 8
  %105 = call i32 @cmsCloseProfile(i32 %103, i32* %104)
  %106 = load i32*, i32** %20, align 8
  store i32* %106, i32** %10, align 8
  br label %107

107:                                              ; preds = %77, %35, %29
  %108 = load i32*, i32** %10, align 8
  ret i32* %108
}

declare dso_local i32* @cmsCreateLab4Profile(i32, i32*) #1

declare dso_local i32* @cmsCreateExtendedTransform(i32, i32, i32**, i64*, i32*, double*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @cmsCloseProfile(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
