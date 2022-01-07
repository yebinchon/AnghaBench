; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testplugin.c_MyNewIntent.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testplugin.c_MyNewIntent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INTENT_DECEPTIVE = common dso_local global i64 0, align 8
@INTENT_PERCEPTUAL = common dso_local global i64 0, align 8
@cmsSigGrayData = common dso_local global i64 0, align 8
@cmsAT_BEGIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i64, i64*, i32*, i32*, i32*, i64)* @MyNewIntent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @MyNewIntent(i32 %0, i64 %1, i64* %2, i32* %3, i32* %4, i32* %5, i64 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca [256 x i64], align 16
  %18 = alloca i64, align 8
  store i32 %0, i32* %9, align 4
  store i64 %1, i64* %10, align 8
  store i64* %2, i64** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i64 %6, i64* %15, align 8
  store i64 0, i64* %18, align 8
  br label %19

19:                                               ; preds = %41, %7
  %20 = load i64, i64* %18, align 8
  %21 = load i64, i64* %10, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %44

23:                                               ; preds = %19
  %24 = load i64*, i64** %11, align 8
  %25 = load i64, i64* %18, align 8
  %26 = getelementptr inbounds i64, i64* %24, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @INTENT_DECEPTIVE, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i64, i64* @INTENT_PERCEPTUAL, align 8
  br label %37

32:                                               ; preds = %23
  %33 = load i64*, i64** %11, align 8
  %34 = load i64, i64* %18, align 8
  %35 = getelementptr inbounds i64, i64* %33, i64 %34
  %36 = load i64, i64* %35, align 8
  br label %37

37:                                               ; preds = %32, %30
  %38 = phi i64 [ %31, %30 ], [ %36, %32 ]
  %39 = load i64, i64* %18, align 8
  %40 = getelementptr inbounds [256 x i64], [256 x i64]* %17, i64 0, i64 %39
  store i64 %38, i64* %40, align 8
  br label %41

41:                                               ; preds = %37
  %42 = load i64, i64* %18, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %18, align 8
  br label %19

44:                                               ; preds = %19
  %45 = load i32, i32* %9, align 4
  %46 = load i32*, i32** %12, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @cmsGetColorSpace(i32 %45, i32 %48)
  %50 = load i64, i64* @cmsSigGrayData, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %62, label %52

52:                                               ; preds = %44
  %53 = load i32, i32* %9, align 4
  %54 = load i32*, i32** %12, align 8
  %55 = load i64, i64* %10, align 8
  %56 = sub i64 %55, 1
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @cmsGetColorSpace(i32 %53, i32 %58)
  %60 = load i64, i64* @cmsSigGrayData, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %71

62:                                               ; preds = %52, %44
  %63 = load i32, i32* %9, align 4
  %64 = load i64, i64* %10, align 8
  %65 = getelementptr inbounds [256 x i64], [256 x i64]* %17, i64 0, i64 0
  %66 = load i32*, i32** %12, align 8
  %67 = load i32*, i32** %13, align 8
  %68 = load i32*, i32** %14, align 8
  %69 = load i64, i64* %15, align 8
  %70 = call i32* @_cmsDefaultICCintents(i32 %63, i64 %64, i64* %65, i32* %66, i32* %67, i32* %68, i64 %69)
  store i32* %70, i32** %8, align 8
  br label %85

71:                                               ; preds = %52
  %72 = load i32, i32* %9, align 4
  %73 = call i32* @cmsPipelineAlloc(i32 %72, i32 1, i32 1)
  store i32* %73, i32** %16, align 8
  %74 = load i32*, i32** %16, align 8
  %75 = icmp eq i32* %74, null
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  store i32* null, i32** %8, align 8
  br label %85

77:                                               ; preds = %71
  %78 = load i32, i32* %9, align 4
  %79 = load i32*, i32** %16, align 8
  %80 = load i32, i32* @cmsAT_BEGIN, align 4
  %81 = load i32, i32* %9, align 4
  %82 = call i32 @cmsStageAllocIdentity(i32 %81, i32 1)
  %83 = call i32 @cmsPipelineInsertStage(i32 %78, i32* %79, i32 %80, i32 %82)
  %84 = load i32*, i32** %16, align 8
  store i32* %84, i32** %8, align 8
  br label %85

85:                                               ; preds = %77, %76, %62
  %86 = load i32*, i32** %8, align 8
  ret i32* %86
}

declare dso_local i64 @cmsGetColorSpace(i32, i32) #1

declare dso_local i32* @_cmsDefaultICCintents(i32, i64, i64*, i32*, i32*, i32*, i64) #1

declare dso_local i32* @cmsPipelineAlloc(i32, i32, i32) #1

declare dso_local i32 @cmsPipelineInsertStage(i32, i32*, i32, i32) #1

declare dso_local i32 @cmsStageAllocIdentity(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
