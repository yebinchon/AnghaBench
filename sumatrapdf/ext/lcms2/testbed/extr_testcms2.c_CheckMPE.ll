; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckMPE.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckMPE.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cmsAT_BEGIN = common dso_local global i32 0, align 4
@cmsAT_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @CheckMPE to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckMPE(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca [3 x i32*], align 16
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %66 [
    i32 1, label %13
    i32 2, label %54
  ]

13:                                               ; preds = %3
  %14 = call i32 (...) @DbgThread()
  %15 = call i32* @cmsPipelineAlloc(i32 %14, i32 3, i32 3)
  store i32* %15, i32** %8, align 8
  %16 = call i32 (...) @DbgThread()
  %17 = load i32*, i32** %8, align 8
  %18 = load i32, i32* @cmsAT_BEGIN, align 4
  %19 = call i32 (...) @DbgThread()
  %20 = call i32 @_cmsStageAllocLabV2ToV4(i32 %19)
  %21 = call i32 @cmsPipelineInsertStage(i32 %16, i32* %17, i32 %18, i32 %20)
  %22 = call i32 (...) @DbgThread()
  %23 = load i32*, i32** %8, align 8
  %24 = load i32, i32* @cmsAT_END, align 4
  %25 = call i32 (...) @DbgThread()
  %26 = call i32 @_cmsStageAllocLabV4ToV2(i32 %25)
  %27 = call i32 @cmsPipelineInsertStage(i32 %22, i32* %23, i32 %24, i32 %26)
  %28 = load i32*, i32** %8, align 8
  %29 = call i32 @AddIdentityCLUTfloat(i32* %28)
  %30 = call i32* (...) @CreateSegmentedCurve()
  %31 = getelementptr inbounds [3 x i32*], [3 x i32*]* %10, i64 0, i64 2
  store i32* %30, i32** %31, align 16
  %32 = getelementptr inbounds [3 x i32*], [3 x i32*]* %10, i64 0, i64 1
  store i32* %30, i32** %32, align 8
  %33 = getelementptr inbounds [3 x i32*], [3 x i32*]* %10, i64 0, i64 0
  store i32* %30, i32** %33, align 16
  %34 = call i32 (...) @DbgThread()
  %35 = load i32*, i32** %8, align 8
  %36 = load i32, i32* @cmsAT_END, align 4
  %37 = call i32 (...) @DbgThread()
  %38 = getelementptr inbounds [3 x i32*], [3 x i32*]* %10, i64 0, i64 0
  %39 = call i32 @cmsStageAllocToneCurves(i32 %37, i32 3, i32** %38)
  %40 = call i32 @cmsPipelineInsertStage(i32 %34, i32* %35, i32 %36, i32 %39)
  %41 = call i32 (...) @DbgThread()
  %42 = getelementptr inbounds [3 x i32*], [3 x i32*]* %10, i64 0, i64 0
  %43 = load i32*, i32** %42, align 16
  %44 = call i32 @cmsFreeToneCurve(i32 %41, i32* %43)
  %45 = call i32 (...) @DbgThread()
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load i32*, i32** %8, align 8
  %49 = call i32 @cmsWriteTag(i32 %45, i32 %46, i32 %47, i32* %48)
  store i32 %49, i32* %11, align 4
  %50 = call i32 (...) @DbgThread()
  %51 = load i32*, i32** %8, align 8
  %52 = call i32 @cmsPipelineFree(i32 %50, i32* %51)
  %53 = load i32, i32* %11, align 4
  store i32 %53, i32* %4, align 4
  br label %67

54:                                               ; preds = %3
  %55 = call i32 (...) @DbgThread()
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* %7, align 4
  %58 = call i64 @cmsReadTag(i32 %55, i32 %56, i32 %57)
  %59 = inttoptr i64 %58 to i32*
  store i32* %59, i32** %9, align 8
  %60 = load i32*, i32** %9, align 8
  %61 = icmp eq i32* %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  store i32 0, i32* %4, align 4
  br label %67

63:                                               ; preds = %54
  %64 = load i32*, i32** %9, align 8
  %65 = call i32 @CheckFloatLUT(i32* %64)
  store i32 %65, i32* %4, align 4
  br label %67

66:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %66, %63, %62, %13
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32* @cmsPipelineAlloc(i32, i32, i32) #1

declare dso_local i32 @DbgThread(...) #1

declare dso_local i32 @cmsPipelineInsertStage(i32, i32*, i32, i32) #1

declare dso_local i32 @_cmsStageAllocLabV2ToV4(i32) #1

declare dso_local i32 @_cmsStageAllocLabV4ToV2(i32) #1

declare dso_local i32 @AddIdentityCLUTfloat(i32*) #1

declare dso_local i32* @CreateSegmentedCurve(...) #1

declare dso_local i32 @cmsStageAllocToneCurves(i32, i32, i32**) #1

declare dso_local i32 @cmsFreeToneCurve(i32, i32*) #1

declare dso_local i32 @cmsWriteTag(i32, i32, i32, i32*) #1

declare dso_local i32 @cmsPipelineFree(i32, i32*) #1

declare dso_local i64 @cmsReadTag(i32, i32, i32) #1

declare dso_local i32 @CheckFloatLUT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
