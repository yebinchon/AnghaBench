; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckLUT.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckLUT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cmsAT_BEGIN = common dso_local global i32 0, align 4
@cmsAT_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @CheckLUT to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckLUT(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %58 [
    i32 1, label %12
    i32 2, label %46
  ]

12:                                               ; preds = %3
  %13 = call i32 (...) @DbgThread()
  %14 = call i32* @cmsPipelineAlloc(i32 %13, i32 3, i32 3)
  store i32* %14, i32** %8, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store i32 0, i32* %4, align 4
  br label %59

18:                                               ; preds = %12
  %19 = call i32 (...) @DbgThread()
  %20 = load i32*, i32** %8, align 8
  %21 = load i32, i32* @cmsAT_BEGIN, align 4
  %22 = call i32 (...) @DbgThread()
  %23 = call i32 @_cmsStageAllocIdentityCurves(i32 %22, i32 3)
  %24 = call i32 @cmsPipelineInsertStage(i32 %19, i32* %20, i32 %21, i32 %23)
  %25 = call i32 (...) @DbgThread()
  %26 = load i32*, i32** %8, align 8
  %27 = load i32, i32* @cmsAT_END, align 4
  %28 = call i32 (...) @DbgThread()
  %29 = call i32 @_cmsStageAllocIdentityCLut(i32 %28, i32 3)
  %30 = call i32 @cmsPipelineInsertStage(i32 %25, i32* %26, i32 %27, i32 %29)
  %31 = call i32 (...) @DbgThread()
  %32 = load i32*, i32** %8, align 8
  %33 = load i32, i32* @cmsAT_END, align 4
  %34 = call i32 (...) @DbgThread()
  %35 = call i32 @_cmsStageAllocIdentityCurves(i32 %34, i32 3)
  %36 = call i32 @cmsPipelineInsertStage(i32 %31, i32* %32, i32 %33, i32 %35)
  %37 = call i32 (...) @DbgThread()
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32*, i32** %8, align 8
  %41 = call i32 @cmsWriteTag(i32 %37, i32 %38, i32 %39, i32* %40)
  store i32 %41, i32* %10, align 4
  %42 = call i32 (...) @DbgThread()
  %43 = load i32*, i32** %8, align 8
  %44 = call i32 @cmsPipelineFree(i32 %42, i32* %43)
  %45 = load i32, i32* %10, align 4
  store i32 %45, i32* %4, align 4
  br label %59

46:                                               ; preds = %3
  %47 = call i32 (...) @DbgThread()
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i64 @cmsReadTag(i32 %47, i32 %48, i32 %49)
  %51 = inttoptr i64 %50 to i32*
  store i32* %51, i32** %9, align 8
  %52 = load i32*, i32** %9, align 8
  %53 = icmp eq i32* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  store i32 0, i32* %4, align 4
  br label %59

55:                                               ; preds = %46
  %56 = load i32*, i32** %9, align 8
  %57 = call i32 @Check16LUT(i32* %56)
  store i32 %57, i32* %4, align 4
  br label %59

58:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %58, %55, %54, %18, %17
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32* @cmsPipelineAlloc(i32, i32, i32) #1

declare dso_local i32 @DbgThread(...) #1

declare dso_local i32 @cmsPipelineInsertStage(i32, i32*, i32, i32) #1

declare dso_local i32 @_cmsStageAllocIdentityCurves(i32, i32) #1

declare dso_local i32 @_cmsStageAllocIdentityCLut(i32, i32) #1

declare dso_local i32 @cmsWriteTag(i32, i32, i32, i32*) #1

declare dso_local i32 @cmsPipelineFree(i32, i32*) #1

declare dso_local i64 @cmsReadTag(i32, i32, i32) #1

declare dso_local i32 @Check16LUT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
