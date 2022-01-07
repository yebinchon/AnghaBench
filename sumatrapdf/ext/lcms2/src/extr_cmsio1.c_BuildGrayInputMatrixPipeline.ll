; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmsio1.c_BuildGrayInputMatrixPipeline.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmsio1.c_BuildGrayInputMatrixPipeline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cmsSigGrayTRCTag = common dso_local global i32 0, align 4
@cmsSigLabData = common dso_local global i64 0, align 8
@__const.BuildGrayInputMatrixPipeline.Zero = private unnamed_addr constant [2 x i32] [i32 32896, i32 32896], align 4
@cmsAT_END = common dso_local global i32 0, align 4
@OneToThreeInputMatrix = common dso_local global i32 0, align 4
@GrayInputMatrix = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i32)* @BuildGrayInputMatrixPipeline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @BuildGrayInputMatrixPipeline(i32 %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [2 x i32], align 4
  %9 = alloca i32*, align 8
  %10 = alloca [3 x i32*], align 16
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @cmsSigGrayTRCTag, align 4
  %14 = call i64 @cmsReadTag(i32 %11, i32 %12, i32 %13)
  %15 = inttoptr i64 %14 to i32*
  store i32* %15, i32** %6, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %96

19:                                               ; preds = %2
  %20 = load i32, i32* %4, align 4
  %21 = call i32* @cmsPipelineAlloc(i32 %20, i32 1, i32 3)
  store i32* %21, i32** %7, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %92

25:                                               ; preds = %19
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i64 @cmsGetPCS(i32 %26, i32 %27)
  %29 = load i64, i64* @cmsSigLabData, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %71

31:                                               ; preds = %25
  %32 = bitcast [2 x i32]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %32, i8* align 4 bitcast ([2 x i32]* @__const.BuildGrayInputMatrixPipeline.Zero to i8*), i64 8, i1 false)
  %33 = load i32, i32* %4, align 4
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %35 = call i32* @cmsBuildTabulatedToneCurve16(i32 %33, i32 2, i32* %34)
  store i32* %35, i32** %9, align 8
  %36 = load i32*, i32** %9, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %92

39:                                               ; preds = %31
  %40 = load i32*, i32** %6, align 8
  %41 = getelementptr inbounds [3 x i32*], [3 x i32*]* %10, i64 0, i64 0
  store i32* %40, i32** %41, align 16
  %42 = load i32*, i32** %9, align 8
  %43 = getelementptr inbounds [3 x i32*], [3 x i32*]* %10, i64 0, i64 1
  store i32* %42, i32** %43, align 8
  %44 = load i32*, i32** %9, align 8
  %45 = getelementptr inbounds [3 x i32*], [3 x i32*]* %10, i64 0, i64 2
  store i32* %44, i32** %45, align 16
  %46 = load i32, i32* %4, align 4
  %47 = load i32*, i32** %7, align 8
  %48 = load i32, i32* @cmsAT_END, align 4
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @OneToThreeInputMatrix, align 4
  %51 = call i32 @cmsStageAllocMatrix(i32 %49, i32 3, i32 1, i32 %50, i32* null)
  %52 = call i32 @cmsPipelineInsertStage(i32 %46, i32* %47, i32 %48, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %39
  %55 = load i32, i32* %4, align 4
  %56 = load i32*, i32** %7, align 8
  %57 = load i32, i32* @cmsAT_END, align 4
  %58 = load i32, i32* %4, align 4
  %59 = getelementptr inbounds [3 x i32*], [3 x i32*]* %10, i64 0, i64 0
  %60 = call i32 @cmsStageAllocToneCurves(i32 %58, i32 3, i32** %59)
  %61 = call i32 @cmsPipelineInsertStage(i32 %55, i32* %56, i32 %57, i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %54, %39
  %64 = load i32, i32* %4, align 4
  %65 = load i32*, i32** %9, align 8
  %66 = call i32 @cmsFreeToneCurve(i32 %64, i32* %65)
  br label %92

67:                                               ; preds = %54
  %68 = load i32, i32* %4, align 4
  %69 = load i32*, i32** %9, align 8
  %70 = call i32 @cmsFreeToneCurve(i32 %68, i32* %69)
  br label %90

71:                                               ; preds = %25
  %72 = load i32, i32* %4, align 4
  %73 = load i32*, i32** %7, align 8
  %74 = load i32, i32* @cmsAT_END, align 4
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @cmsStageAllocToneCurves(i32 %75, i32 1, i32** %6)
  %77 = call i32 @cmsPipelineInsertStage(i32 %72, i32* %73, i32 %74, i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %71
  %80 = load i32, i32* %4, align 4
  %81 = load i32*, i32** %7, align 8
  %82 = load i32, i32* @cmsAT_END, align 4
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* @GrayInputMatrix, align 4
  %85 = call i32 @cmsStageAllocMatrix(i32 %83, i32 3, i32 1, i32 %84, i32* null)
  %86 = call i32 @cmsPipelineInsertStage(i32 %80, i32* %81, i32 %82, i32 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %79, %71
  br label %92

89:                                               ; preds = %79
  br label %90

90:                                               ; preds = %89, %67
  %91 = load i32*, i32** %7, align 8
  store i32* %91, i32** %3, align 8
  br label %96

92:                                               ; preds = %88, %63, %38, %24
  %93 = load i32, i32* %4, align 4
  %94 = load i32*, i32** %7, align 8
  %95 = call i32 @cmsPipelineFree(i32 %93, i32* %94)
  store i32* null, i32** %3, align 8
  br label %96

96:                                               ; preds = %92, %90, %18
  %97 = load i32*, i32** %3, align 8
  ret i32* %97
}

declare dso_local i64 @cmsReadTag(i32, i32, i32) #1

declare dso_local i32* @cmsPipelineAlloc(i32, i32, i32) #1

declare dso_local i64 @cmsGetPCS(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32* @cmsBuildTabulatedToneCurve16(i32, i32, i32*) #1

declare dso_local i32 @cmsPipelineInsertStage(i32, i32*, i32, i32) #1

declare dso_local i32 @cmsStageAllocMatrix(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @cmsStageAllocToneCurves(i32, i32, i32**) #1

declare dso_local i32 @cmsFreeToneCurve(i32, i32*) #1

declare dso_local i32 @cmsPipelineFree(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
