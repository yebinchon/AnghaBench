; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_Check5DinterpGranular.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_Check5DinterpGranular.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.Check5DinterpGranular.Dimensions = private unnamed_addr constant [5 x i32] [i32 3, i32 2, i32 2, i32 2, i32 2], align 16
@Sampler5D = common dso_local global i32 0, align 4
@cmsAT_BEGIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @Check5DinterpGranular to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Check5DinterpGranular() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca [5 x i32], align 16
  %5 = bitcast [5 x i32]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %5, i8* align 16 bitcast ([5 x i32]* @__const.Check5DinterpGranular.Dimensions to i8*), i64 20, i1 false)
  %6 = call i32 (...) @DbgThread()
  %7 = call i32* @cmsPipelineAlloc(i32 %6, i32 5, i32 3)
  store i32* %7, i32** %2, align 8
  %8 = call i32 (...) @DbgThread()
  %9 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 0
  %10 = call i32* @cmsStageAllocCLut16bitGranular(i32 %8, i32* %9, i32 5, i32 3, i32* null)
  store i32* %10, i32** %3, align 8
  %11 = call i32 (...) @DbgThread()
  %12 = load i32*, i32** %3, align 8
  %13 = load i32, i32* @Sampler5D, align 4
  %14 = call i32 @cmsStageSampleCLut16bit(i32 %11, i32* %12, i32 %13, i32* null, i32 0)
  %15 = call i32 (...) @DbgThread()
  %16 = load i32*, i32** %2, align 8
  %17 = load i32, i32* @cmsAT_BEGIN, align 4
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @cmsPipelineInsertStage(i32 %15, i32* %16, i32 %17, i32* %18)
  %20 = load i32*, i32** %2, align 8
  %21 = call i32 @CheckOne5D(i32* %20, i32 0, i32 0, i32 0, i32 0, i32 0)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %63

24:                                               ; preds = %0
  %25 = load i32*, i32** %2, align 8
  %26 = call i32 @CheckOne5D(i32* %25, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  store i32 0, i32* %1, align 4
  br label %63

29:                                               ; preds = %24
  %30 = load i32*, i32** %2, align 8
  %31 = call i32 @CheckOne5D(i32* %30, i32 32896, i32 32896, i32 32896, i32 32896, i32 4660)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  store i32 0, i32* %1, align 4
  br label %63

34:                                               ; preds = %29
  %35 = load i32*, i32** %2, align 8
  %36 = call i32 @CheckOne5D(i32* %35, i32 0, i32 65024, i32 33023, i32 34952, i32 32888)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  store i32 0, i32* %1, align 4
  br label %63

39:                                               ; preds = %34
  %40 = load i32*, i32** %2, align 8
  %41 = call i32 @CheckOne5D(i32* %40, i32 4369, i32 8738, i32 13107, i32 17476, i32 5205)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  store i32 0, i32* %1, align 4
  br label %63

44:                                               ; preds = %39
  %45 = load i32*, i32** %2, align 8
  %46 = call i32 @CheckOne5D(i32* %45, i32 0, i32 18, i32 19, i32 20, i32 9011)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  store i32 0, i32* %1, align 4
  br label %63

49:                                               ; preds = %44
  %50 = load i32*, i32** %2, align 8
  %51 = call i32 @CheckOne5D(i32* %50, i32 12609, i32 5141, i32 5522, i32 37473, i32 17767)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %49
  store i32 0, i32* %1, align 4
  br label %63

54:                                               ; preds = %49
  %55 = load i32*, i32** %2, align 8
  %56 = call i32 @CheckOne5D(i32* %55, i32 65280, i32 65281, i32 65298, i32 65299, i32 62276)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %54
  store i32 0, i32* %1, align 4
  br label %63

59:                                               ; preds = %54
  %60 = call i32 (...) @DbgThread()
  %61 = load i32*, i32** %2, align 8
  %62 = call i32 @cmsPipelineFree(i32 %60, i32* %61)
  store i32 1, i32* %1, align 4
  br label %63

63:                                               ; preds = %59, %58, %53, %48, %43, %38, %33, %28, %23
  %64 = load i32, i32* %1, align 4
  ret i32 %64
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32* @cmsPipelineAlloc(i32, i32, i32) #2

declare dso_local i32 @DbgThread(...) #2

declare dso_local i32* @cmsStageAllocCLut16bitGranular(i32, i32*, i32, i32, i32*) #2

declare dso_local i32 @cmsStageSampleCLut16bit(i32, i32*, i32, i32*, i32) #2

declare dso_local i32 @cmsPipelineInsertStage(i32, i32*, i32, i32*) #2

declare dso_local i32 @CheckOne5D(i32*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @cmsPipelineFree(i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
