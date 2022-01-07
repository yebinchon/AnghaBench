; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmsps2.c_WriteInputLUT.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmsps2.c_WriteInputLUT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@TYPE_Lab_DBL = common dso_local global i32 0, align 4
@cmsERROR_COLORSPACE_CHECK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Cannot create transform Profile -> Lab\00", align 1
@TYPE_Lab_16 = common dso_local global i32 0, align 4
@cmsFLAGS_FORCE_CLUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [68 x i8] c"Only 3, 4 channels supported for CSA. This profile has %d channels.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32, i32, i32)* @WriteInputLUT to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @WriteInputLUT(i32 %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [2 x i32], align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @FALSE, align 4
  %26 = call i32 @cmsFormatterForColorspaceOfProfile(i32 %23, i32 %24, i32 2, i32 %25)
  store i32 %26, i32* %15, align 4
  %27 = load i32, i32* %15, align 4
  %28 = call i32 @T_CHANNELS(i32 %27)
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @cmsDetectBlackPoint(i32 %29, i32* %18, i32 %30, i32 %31, i32 0)
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @cmsCreateLab4Profile(i32 %33, i32* null)
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %9, align 4
  %36 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 0
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* %12, align 4
  %38 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 1
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* %7, align 4
  %40 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 0
  %41 = load i32, i32* %15, align 4
  %42 = load i32, i32* @TYPE_Lab_DBL, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call i32* @cmsCreateMultiprofileTransform(i32 %39, i32* %40, i32 2, i32 %41, i32 %42, i32 %43, i32 0)
  store i32* %44, i32** %13, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %12, align 4
  %47 = call i32 @cmsCloseProfile(i32 %45, i32 %46)
  %48 = load i32*, i32** %13, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %5
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @cmsERROR_COLORSPACE_CHECK, align 4
  %53 = call i32 (i32, i32, i8*, ...) @cmsSignalError(i32 %51, i32 %52, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %110

54:                                               ; preds = %5
  %55 = load i32, i32* %14, align 4
  switch i32 %55, label %101 [
    i32 1, label %56
    i32 3, label %68
    i32 4, label %68
  ]

56:                                               ; preds = %54
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %10, align 4
  %60 = call i32* @ExtractGray2Y(i32 %57, i32 %58, i32 %59)
  store i32* %60, i32** %19, align 8
  %61 = load i32, i32* %7, align 4
  %62 = load i32*, i32** %8, align 8
  %63 = load i32*, i32** %19, align 8
  %64 = call i32 @EmitCIEBasedA(i32 %61, i32* %62, i32* %63, i32* %18)
  %65 = load i32, i32* %7, align 4
  %66 = load i32*, i32** %19, align 8
  %67 = call i32 @cmsFreeToneCurve(i32 %65, i32* %66)
  br label %106

68:                                               ; preds = %54, %54
  %69 = load i32, i32* @TYPE_Lab_16, align 4
  store i32 %69, i32* %20, align 4
  %70 = load i32*, i32** %13, align 8
  %71 = bitcast i32* %70 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %71, %struct.TYPE_4__** %22, align 8
  %72 = load i32, i32* %7, align 4
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32* @cmsPipelineDup(i32 %72, i32 %77)
  store i32* %78, i32** %21, align 8
  %79 = load i32*, i32** %21, align 8
  %80 = icmp eq i32* %79, null
  br i1 %80, label %81, label %82

81:                                               ; preds = %68
  store i32 0, i32* %6, align 4
  br label %110

82:                                               ; preds = %68
  %83 = load i32, i32* @cmsFLAGS_FORCE_CLUT, align 4
  %84 = load i32, i32* %11, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %11, align 4
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @_cmsOptimizePipeline(i32 %86, i32** %21, i32 %87, i32* %15, i32* %20, i32* %11)
  %89 = load i32, i32* %7, align 4
  %90 = load i32*, i32** %8, align 8
  %91 = load i32*, i32** %21, align 8
  %92 = load i32, i32* %10, align 4
  %93 = call i32 @EmitCIEBasedDEF(i32 %89, i32* %90, i32* %91, i32 %92, i32* %18)
  store i32 %93, i32* %16, align 4
  %94 = load i32, i32* %7, align 4
  %95 = load i32*, i32** %21, align 8
  %96 = call i32 @cmsPipelineFree(i32 %94, i32* %95)
  %97 = load i32, i32* %16, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %82
  store i32 0, i32* %6, align 4
  br label %110

100:                                              ; preds = %82
  br label %106

101:                                              ; preds = %54
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* @cmsERROR_COLORSPACE_CHECK, align 4
  %104 = load i32, i32* %14, align 4
  %105 = call i32 (i32, i32, i8*, ...) @cmsSignalError(i32 %102, i32 %103, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0), i32 %104)
  store i32 0, i32* %6, align 4
  br label %110

106:                                              ; preds = %100, %56
  %107 = load i32, i32* %7, align 4
  %108 = load i32*, i32** %13, align 8
  %109 = call i32 @cmsDeleteTransform(i32 %107, i32* %108)
  store i32 1, i32* %6, align 4
  br label %110

110:                                              ; preds = %106, %101, %99, %81, %50
  %111 = load i32, i32* %6, align 4
  ret i32 %111
}

declare dso_local i32 @cmsFormatterForColorspaceOfProfile(i32, i32, i32, i32) #1

declare dso_local i32 @T_CHANNELS(i32) #1

declare dso_local i32 @cmsDetectBlackPoint(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @cmsCreateLab4Profile(i32, i32*) #1

declare dso_local i32* @cmsCreateMultiprofileTransform(i32, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @cmsCloseProfile(i32, i32) #1

declare dso_local i32 @cmsSignalError(i32, i32, i8*, ...) #1

declare dso_local i32* @ExtractGray2Y(i32, i32, i32) #1

declare dso_local i32 @EmitCIEBasedA(i32, i32*, i32*, i32*) #1

declare dso_local i32 @cmsFreeToneCurve(i32, i32*) #1

declare dso_local i32* @cmsPipelineDup(i32, i32) #1

declare dso_local i32 @_cmsOptimizePipeline(i32, i32**, i32, i32*, i32*, i32*) #1

declare dso_local i32 @EmitCIEBasedDEF(i32, i32*, i32*, i32, i32*) #1

declare dso_local i32 @cmsPipelineFree(i32, i32*) #1

declare dso_local i32 @cmsDeleteTransform(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
