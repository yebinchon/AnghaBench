; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_Check3Dinterp.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_Check3Dinterp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Sampler3D = common dso_local global i32 0, align 4
@cmsAT_BEGIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @Check3Dinterp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Check3Dinterp() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = call i32 (...) @DbgThread()
  %5 = call i32* @cmsPipelineAlloc(i32 %4, i32 3, i32 3)
  store i32* %5, i32** %2, align 8
  %6 = call i32 (...) @DbgThread()
  %7 = call i32* @cmsStageAllocCLut16bit(i32 %6, i32 9, i32 3, i32 3, i32* null)
  store i32* %7, i32** %3, align 8
  %8 = call i32 (...) @DbgThread()
  %9 = load i32*, i32** %3, align 8
  %10 = load i32, i32* @Sampler3D, align 4
  %11 = call i32 @cmsStageSampleCLut16bit(i32 %8, i32* %9, i32 %10, i32* null, i32 0)
  %12 = call i32 (...) @DbgThread()
  %13 = load i32*, i32** %2, align 8
  %14 = load i32, i32* @cmsAT_BEGIN, align 4
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @cmsPipelineInsertStage(i32 %12, i32* %13, i32 %14, i32* %15)
  %17 = load i32*, i32** %2, align 8
  %18 = call i32 @CheckOne3D(i32* %17, i32 0, i32 0, i32 0)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %60

21:                                               ; preds = %0
  %22 = load i32*, i32** %2, align 8
  %23 = call i32 @CheckOne3D(i32* %22, i32 65535, i32 65535, i32 65535)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  store i32 0, i32* %1, align 4
  br label %60

26:                                               ; preds = %21
  %27 = load i32*, i32** %2, align 8
  %28 = call i32 @CheckOne3D(i32* %27, i32 32896, i32 32896, i32 32896)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  store i32 0, i32* %1, align 4
  br label %60

31:                                               ; preds = %26
  %32 = load i32*, i32** %2, align 8
  %33 = call i32 @CheckOne3D(i32* %32, i32 0, i32 65024, i32 33023)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  store i32 0, i32* %1, align 4
  br label %60

36:                                               ; preds = %31
  %37 = load i32*, i32** %2, align 8
  %38 = call i32 @CheckOne3D(i32* %37, i32 4369, i32 8738, i32 13107)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  store i32 0, i32* %1, align 4
  br label %60

41:                                               ; preds = %36
  %42 = load i32*, i32** %2, align 8
  %43 = call i32 @CheckOne3D(i32* %42, i32 0, i32 18, i32 19)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  store i32 0, i32* %1, align 4
  br label %60

46:                                               ; preds = %41
  %47 = load i32*, i32** %2, align 8
  %48 = call i32 @CheckOne3D(i32* %47, i32 12609, i32 5141, i32 5522)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %46
  store i32 0, i32* %1, align 4
  br label %60

51:                                               ; preds = %46
  %52 = load i32*, i32** %2, align 8
  %53 = call i32 @CheckOne3D(i32* %52, i32 65280, i32 65281, i32 65298)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %51
  store i32 0, i32* %1, align 4
  br label %60

56:                                               ; preds = %51
  %57 = call i32 (...) @DbgThread()
  %58 = load i32*, i32** %2, align 8
  %59 = call i32 @cmsPipelineFree(i32 %57, i32* %58)
  store i32 1, i32* %1, align 4
  br label %60

60:                                               ; preds = %56, %55, %50, %45, %40, %35, %30, %25, %20
  %61 = load i32, i32* %1, align 4
  ret i32 %61
}

declare dso_local i32* @cmsPipelineAlloc(i32, i32, i32) #1

declare dso_local i32 @DbgThread(...) #1

declare dso_local i32* @cmsStageAllocCLut16bit(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @cmsStageSampleCLut16bit(i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @cmsPipelineInsertStage(i32, i32*, i32, i32*) #1

declare dso_local i32 @CheckOne3D(i32*, i32, i32, i32) #1

declare dso_local i32 @cmsPipelineFree(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
