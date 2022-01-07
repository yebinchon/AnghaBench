; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testplugin.c_MyOptimize.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testplugin.c_MyOptimize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32* }

@cmsSigCurveSetElemType = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@cmsFLAGS_NOCACHE = common dso_local global i32 0, align 4
@FastEvaluateCurves = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32**, i32, i32*, i32*, i32*)* @MyOptimize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MyOptimize(i32 %0, i32** %1, i32 %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_2__*, align 8
  store i32 %0, i32* %8, align 4
  store i32** %1, i32*** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load i32**, i32*** %9, align 8
  %18 = load i32*, i32** %17, align 8
  %19 = call i32* @cmsPipelineGetPtrToFirstStage(i32 %16, i32* %18)
  store i32* %19, i32** %14, align 8
  br label %20

20:                                               ; preds = %54, %6
  %21 = load i32*, i32** %14, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %58

23:                                               ; preds = %20
  %24 = load i32, i32* %8, align 4
  %25 = load i32*, i32** %14, align 8
  %26 = call i64 @cmsStageType(i32 %24, i32* %25)
  %27 = load i64, i64* @cmsSigCurveSetElemType, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* @FALSE, align 4
  store i32 %30, i32* %7, align 4
  br label %69

31:                                               ; preds = %23
  %32 = load i32, i32* %8, align 4
  %33 = load i32*, i32** %14, align 8
  %34 = call i64 @cmsStageData(i32 %32, i32* %33)
  %35 = inttoptr i64 %34 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %35, %struct.TYPE_2__** %15, align 8
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 1
  br i1 %39, label %40, label %42

40:                                               ; preds = %31
  %41 = load i32, i32* @FALSE, align 4
  store i32 %41, i32* %7, align 4
  br label %69

42:                                               ; preds = %31
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = call double @cmsEstimateGamma(i32 %43, i32 %48, double 1.000000e-01)
  %50 = fcmp ogt double %49, 1.000000e+00
  br i1 %50, label %51, label %53

51:                                               ; preds = %42
  %52 = load i32, i32* @FALSE, align 4
  store i32 %52, i32* %7, align 4
  br label %69

53:                                               ; preds = %42
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %8, align 4
  %56 = load i32*, i32** %14, align 8
  %57 = call i32* @cmsStageNext(i32 %55, i32* %56)
  store i32* %57, i32** %14, align 8
  br label %20

58:                                               ; preds = %20
  %59 = load i32, i32* @cmsFLAGS_NOCACHE, align 4
  %60 = load i32*, i32** %13, align 8
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %59
  store i32 %62, i32* %60, align 4
  %63 = load i32, i32* %8, align 4
  %64 = load i32**, i32*** %9, align 8
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* @FastEvaluateCurves, align 4
  %67 = call i32 @_cmsPipelineSetOptimizationParameters(i32 %63, i32* %65, i32 %66, i32* null, i32* null, i32* null)
  %68 = load i32, i32* @TRUE, align 4
  store i32 %68, i32* %7, align 4
  br label %69

69:                                               ; preds = %58, %51, %40, %29
  %70 = load i32, i32* %7, align 4
  ret i32 %70
}

declare dso_local i32* @cmsPipelineGetPtrToFirstStage(i32, i32*) #1

declare dso_local i64 @cmsStageType(i32, i32*) #1

declare dso_local i64 @cmsStageData(i32, i32*) #1

declare dso_local double @cmsEstimateGamma(i32, i32, double) #1

declare dso_local i32* @cmsStageNext(i32, i32*) #1

declare dso_local i32 @_cmsPipelineSetOptimizationParameters(i32, i32*, i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
