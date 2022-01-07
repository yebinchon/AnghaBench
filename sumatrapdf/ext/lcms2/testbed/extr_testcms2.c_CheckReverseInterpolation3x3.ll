; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckReverseInterpolation3x3.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckReverseInterpolation3x3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.CheckReverseInterpolation3x3.Table = private unnamed_addr constant [24 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 65535, i32 0, i32 65535, i32 0, i32 0, i32 65535, i32 65535, i32 65535, i32 0, i32 0, i32 65535, i32 0, i32 65535, i32 65535, i32 65535, i32 0, i32 65535, i32 65535, i32 65535], align 16
@cmsAT_BEGIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Reverse interpolation didn't find zero\00", align 1
@FLOAT_PRECISSION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @CheckReverseInterpolation3x3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckReverseInterpolation3x3() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca [4 x i64], align 16
  %5 = alloca [4 x i64], align 16
  %6 = alloca [4 x i64], align 16
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca [24 x i32], align 16
  %11 = alloca i64, align 8
  %12 = bitcast [24 x i32]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %12, i8* align 16 bitcast ([24 x i32]* @__const.CheckReverseInterpolation3x3.Table to i8*), i64 96, i1 false)
  %13 = call i32 (...) @DbgThread()
  %14 = call i32* @cmsPipelineAlloc(i32 %13, i32 3, i32 3)
  store i32* %14, i32** %2, align 8
  %15 = call i32 (...) @DbgThread()
  %16 = getelementptr inbounds [24 x i32], [24 x i32]* %10, i64 0, i64 0
  %17 = call i32* @cmsStageAllocCLut16bit(i32 %15, i32 2, i32 3, i32 3, i32* %16)
  store i32* %17, i32** %3, align 8
  %18 = call i32 (...) @DbgThread()
  %19 = load i32*, i32** %2, align 8
  %20 = load i32, i32* @cmsAT_BEGIN, align 4
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @cmsPipelineInsertStage(i32 %18, i32* %19, i32 %20, i32* %21)
  %23 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0
  store i64 0, i64* %23, align 16
  %24 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 1
  store i64 0, i64* %24, align 8
  %25 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 2
  store i64 0, i64* %25, align 16
  %26 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 0
  store i64 0, i64* %26, align 16
  %27 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 1
  store i64 0, i64* %27, align 8
  %28 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 2
  store i64 0, i64* %28, align 16
  %29 = call i32 (...) @DbgThread()
  %30 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0
  %31 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0
  %32 = load i32*, i32** %2, align 8
  %33 = call i32 @cmsPipelineEvalReverseFloat(i32 %29, i64* %30, i64* %31, i64* null, i32* %32)
  %34 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0
  %35 = load i64, i64* %34, align 16
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %45, label %37

37:                                               ; preds = %0
  %38 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 2
  %43 = load i64, i64* %42, align 16
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %41, %37, %0
  %46 = call i32 @Fail(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %91

47:                                               ; preds = %41
  store i64 0, i64* %8, align 8
  store i32 0, i32* %9, align 4
  br label %48

48:                                               ; preds = %80, %47
  %49 = load i32, i32* %9, align 4
  %50 = icmp sle i32 %49, 100
  br i1 %50, label %51, label %83

51:                                               ; preds = %48
  %52 = load i32, i32* %9, align 4
  %53 = sitofp i32 %52 to float
  %54 = fdiv float %53, 1.000000e+02
  %55 = fptosi float %54 to i64
  store i64 %55, i64* %11, align 8
  %56 = load i64, i64* %11, align 8
  %57 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0
  store i64 %56, i64* %57, align 16
  %58 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 1
  store i64 0, i64* %58, align 8
  %59 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 2
  store i64 0, i64* %59, align 16
  %60 = call i32 (...) @DbgThread()
  %61 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0
  %62 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0
  %63 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 0
  %64 = load i32*, i32** %2, align 8
  %65 = call i32 @cmsPipelineEvalReverseFloat(i32 %60, i64* %61, i64* %62, i64* %63, i32* %64)
  %66 = load i64, i64* %11, align 8
  %67 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0
  %68 = load i64, i64* %67, align 16
  %69 = sub nsw i64 %66, %68
  %70 = call i64 @fabsf(i64 %69)
  store i64 %70, i64* %7, align 8
  %71 = load i64, i64* %7, align 8
  %72 = load i64, i64* %8, align 8
  %73 = icmp sgt i64 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %51
  %75 = load i64, i64* %7, align 8
  store i64 %75, i64* %8, align 8
  br label %76

76:                                               ; preds = %74, %51
  %77 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 0
  %78 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0
  %79 = call i32 @memcpy(i64* %77, i64* %78, i32 32)
  br label %80

80:                                               ; preds = %76
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %9, align 4
  br label %48

83:                                               ; preds = %48
  %84 = call i32 (...) @DbgThread()
  %85 = load i32*, i32** %2, align 8
  %86 = call i32 @cmsPipelineFree(i32 %84, i32* %85)
  %87 = load i64, i64* %8, align 8
  %88 = load i64, i64* @FLOAT_PRECISSION, align 8
  %89 = icmp sle i64 %87, %88
  %90 = zext i1 %89 to i32
  store i32 %90, i32* %1, align 4
  br label %95

91:                                               ; preds = %45
  %92 = call i32 (...) @DbgThread()
  %93 = load i32*, i32** %2, align 8
  %94 = call i32 @cmsPipelineFree(i32 %92, i32* %93)
  store i32 0, i32* %1, align 4
  br label %95

95:                                               ; preds = %91, %83
  %96 = load i32, i32* %1, align 4
  ret i32 %96
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32* @cmsPipelineAlloc(i32, i32, i32) #2

declare dso_local i32 @DbgThread(...) #2

declare dso_local i32* @cmsStageAllocCLut16bit(i32, i32, i32, i32, i32*) #2

declare dso_local i32 @cmsPipelineInsertStage(i32, i32*, i32, i32*) #2

declare dso_local i32 @cmsPipelineEvalReverseFloat(i32, i64*, i64*, i64*, i32*) #2

declare dso_local i32 @Fail(i8*) #2

declare dso_local i64 @fabsf(i64) #2

declare dso_local i32 @memcpy(i64*, i64*, i32) #2

declare dso_local i32 @cmsPipelineFree(i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
