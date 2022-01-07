; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmsio1.c_BuildRGBInputMatrixShaper.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmsio1.c_BuildRGBInputMatrixShaper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }

@InpAdj = common dso_local global i32 0, align 4
@cmsSigRedTRCTag = common dso_local global i32 0, align 4
@cmsSigGreenTRCTag = common dso_local global i32 0, align 4
@cmsSigBlueTRCTag = common dso_local global i32 0, align 4
@cmsAT_END = common dso_local global i32 0, align 4
@cmsSigLabData = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i32)* @BuildRGBInputMatrixShaper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @BuildRGBInputMatrixShaper(i32 %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_5__, align 8
  %8 = alloca [3 x i32*], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @ReadICCMatrixRGB2XYZ(i32 %11, %struct.TYPE_5__* %7, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %123

16:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %17

17:                                               ; preds = %42, %16
  %18 = load i32, i32* %9, align 4
  %19 = icmp slt i32 %18, 3
  br i1 %19, label %20, label %45

20:                                               ; preds = %17
  store i32 0, i32* %10, align 4
  br label %21

21:                                               ; preds = %38, %20
  %22 = load i32, i32* %10, align 4
  %23 = icmp slt i32 %22, 3
  br i1 %23, label %24, label %41

24:                                               ; preds = %21
  %25 = load i32, i32* @InpAdj, align 4
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = mul nsw i32 %36, %25
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %24
  %39 = load i32, i32* %10, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %10, align 4
  br label %21

41:                                               ; preds = %21
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %9, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %9, align 4
  br label %17

45:                                               ; preds = %17
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @cmsSigRedTRCTag, align 4
  %49 = call i64 @cmsReadTag(i32 %46, i32 %47, i32 %48)
  %50 = inttoptr i64 %49 to i32*
  %51 = getelementptr inbounds [3 x i32*], [3 x i32*]* %8, i64 0, i64 0
  store i32* %50, i32** %51, align 16
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @cmsSigGreenTRCTag, align 4
  %55 = call i64 @cmsReadTag(i32 %52, i32 %53, i32 %54)
  %56 = inttoptr i64 %55 to i32*
  %57 = getelementptr inbounds [3 x i32*], [3 x i32*]* %8, i64 0, i64 1
  store i32* %56, i32** %57, align 8
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @cmsSigBlueTRCTag, align 4
  %61 = call i64 @cmsReadTag(i32 %58, i32 %59, i32 %60)
  %62 = inttoptr i64 %61 to i32*
  %63 = getelementptr inbounds [3 x i32*], [3 x i32*]* %8, i64 0, i64 2
  store i32* %62, i32** %63, align 16
  %64 = getelementptr inbounds [3 x i32*], [3 x i32*]* %8, i64 0, i64 0
  %65 = load i32*, i32** %64, align 16
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %75

67:                                               ; preds = %45
  %68 = getelementptr inbounds [3 x i32*], [3 x i32*]* %8, i64 0, i64 1
  %69 = load i32*, i32** %68, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %75

71:                                               ; preds = %67
  %72 = getelementptr inbounds [3 x i32*], [3 x i32*]* %8, i64 0, i64 2
  %73 = load i32*, i32** %72, align 16
  %74 = icmp ne i32* %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %71, %67, %45
  store i32* null, i32** %3, align 8
  br label %123

76:                                               ; preds = %71
  %77 = load i32, i32* %4, align 4
  %78 = call i32* @cmsPipelineAlloc(i32 %77, i32 3, i32 3)
  store i32* %78, i32** %6, align 8
  %79 = load i32*, i32** %6, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %117

81:                                               ; preds = %76
  %82 = load i32, i32* %4, align 4
  %83 = load i32*, i32** %6, align 8
  %84 = load i32, i32* @cmsAT_END, align 4
  %85 = load i32, i32* %4, align 4
  %86 = getelementptr inbounds [3 x i32*], [3 x i32*]* %8, i64 0, i64 0
  %87 = call i32 @cmsStageAllocToneCurves(i32 %85, i32 3, i32** %86)
  %88 = call i32 @cmsPipelineInsertStage(i32 %82, i32* %83, i32 %84, i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %81
  %91 = load i32, i32* %4, align 4
  %92 = load i32*, i32** %6, align 8
  %93 = load i32, i32* @cmsAT_END, align 4
  %94 = load i32, i32* %4, align 4
  %95 = bitcast %struct.TYPE_5__* %7 to i32*
  %96 = call i32 @cmsStageAllocMatrix(i32 %94, i32 3, i32 3, i32* %95, i32* null)
  %97 = call i32 @cmsPipelineInsertStage(i32 %91, i32* %92, i32 %93, i32 %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %90, %81
  br label %119

100:                                              ; preds = %90
  %101 = load i32, i32* %4, align 4
  %102 = load i32, i32* %5, align 4
  %103 = call i64 @cmsGetPCS(i32 %101, i32 %102)
  %104 = load i64, i64* @cmsSigLabData, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %116

106:                                              ; preds = %100
  %107 = load i32, i32* %4, align 4
  %108 = load i32*, i32** %6, align 8
  %109 = load i32, i32* @cmsAT_END, align 4
  %110 = load i32, i32* %4, align 4
  %111 = call i32 @_cmsStageAllocXYZ2Lab(i32 %110)
  %112 = call i32 @cmsPipelineInsertStage(i32 %107, i32* %108, i32 %109, i32 %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %106
  br label %119

115:                                              ; preds = %106
  br label %116

116:                                              ; preds = %115, %100
  br label %117

117:                                              ; preds = %116, %76
  %118 = load i32*, i32** %6, align 8
  store i32* %118, i32** %3, align 8
  br label %123

119:                                              ; preds = %114, %99
  %120 = load i32, i32* %4, align 4
  %121 = load i32*, i32** %6, align 8
  %122 = call i32 @cmsPipelineFree(i32 %120, i32* %121)
  store i32* null, i32** %3, align 8
  br label %123

123:                                              ; preds = %119, %117, %75, %15
  %124 = load i32*, i32** %3, align 8
  ret i32* %124
}

declare dso_local i32 @ReadICCMatrixRGB2XYZ(i32, %struct.TYPE_5__*, i32) #1

declare dso_local i64 @cmsReadTag(i32, i32, i32) #1

declare dso_local i32* @cmsPipelineAlloc(i32, i32, i32) #1

declare dso_local i32 @cmsPipelineInsertStage(i32, i32*, i32, i32) #1

declare dso_local i32 @cmsStageAllocToneCurves(i32, i32, i32**) #1

declare dso_local i32 @cmsStageAllocMatrix(i32, i32, i32, i32*, i32*) #1

declare dso_local i64 @cmsGetPCS(i32, i32) #1

declare dso_local i32 @_cmsStageAllocXYZ2Lab(i32) #1

declare dso_local i32 @cmsPipelineFree(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
