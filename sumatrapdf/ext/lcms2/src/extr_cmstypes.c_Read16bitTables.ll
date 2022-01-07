; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_Read16bitTables.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_Read16bitTables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@cmsMAXCHANNELS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@cmsAT_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32*, i32, i32)* @Read16bitTables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Read16bitTables(i32 %0, i32* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load i32, i32* @cmsMAXCHANNELS, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %13, align 8
  %19 = alloca %struct.TYPE_6__*, i64 %17, align 16
  store i64 %17, i64* %14, align 8
  %20 = load i32, i32* %11, align 4
  %21 = icmp sle i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %5
  %23 = load i32, i32* @TRUE, align 4
  store i32 %23, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %124

24:                                               ; preds = %5
  %25 = load i32, i32* %11, align 4
  %26 = icmp slt i32 %25, 2
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i32, i32* @FALSE, align 4
  store i32 %28, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %124

29:                                               ; preds = %24
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @cmsMAXCHANNELS, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, i32* @FALSE, align 4
  store i32 %34, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %124

35:                                               ; preds = %29
  %36 = mul nuw i64 8, %17
  %37 = trunc i64 %36 to i32
  %38 = call i32 @memset(%struct.TYPE_6__** %19, i32 0, i32 %37)
  store i32 0, i32* %12, align 4
  br label %39

39:                                               ; preds = %70, %35
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %73

43:                                               ; preds = %39
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %11, align 4
  %46 = call %struct.TYPE_6__* @cmsBuildTabulatedToneCurve16(i32 %44, i32 %45, i32* null)
  %47 = load i32, i32* %12, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %19, i64 %48
  store %struct.TYPE_6__* %46, %struct.TYPE_6__** %49, align 8
  %50 = load i32, i32* %12, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %19, i64 %51
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = icmp eq %struct.TYPE_6__* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %43
  br label %100

56:                                               ; preds = %43
  %57 = load i32, i32* %7, align 4
  %58 = load i32*, i32** %8, align 8
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* %12, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %19, i64 %61
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @_cmsReadUInt16Array(i32 %57, i32* %58, i32 %59, i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %56
  br label %100

69:                                               ; preds = %56
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %12, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %12, align 4
  br label %39

73:                                               ; preds = %39
  %74 = load i32, i32* %7, align 4
  %75 = load i32*, i32** %9, align 8
  %76 = load i32, i32* @cmsAT_END, align 4
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @cmsStageAllocToneCurves(i32 %77, i32 %78, %struct.TYPE_6__** %19)
  %80 = call i32 @cmsPipelineInsertStage(i32 %74, i32* %75, i32 %76, i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %73
  br label %100

83:                                               ; preds = %73
  store i32 0, i32* %12, align 4
  br label %84

84:                                               ; preds = %95, %83
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* %10, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %98

88:                                               ; preds = %84
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* %12, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %19, i64 %91
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = call i32 @cmsFreeToneCurve(i32 %89, %struct.TYPE_6__* %93)
  br label %95

95:                                               ; preds = %88
  %96 = load i32, i32* %12, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %12, align 4
  br label %84

98:                                               ; preds = %84
  %99 = load i32, i32* @TRUE, align 4
  store i32 %99, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %124

100:                                              ; preds = %82, %68, %55
  store i32 0, i32* %12, align 4
  br label %101

101:                                              ; preds = %119, %100
  %102 = load i32, i32* %12, align 4
  %103 = load i32, i32* %10, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %122

105:                                              ; preds = %101
  %106 = load i32, i32* %12, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %19, i64 %107
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  %110 = icmp ne %struct.TYPE_6__* %109, null
  br i1 %110, label %111, label %118

111:                                              ; preds = %105
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* %12, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %19, i64 %114
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %115, align 8
  %117 = call i32 @cmsFreeToneCurve(i32 %112, %struct.TYPE_6__* %116)
  br label %118

118:                                              ; preds = %111, %105
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %12, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %12, align 4
  br label %101

122:                                              ; preds = %101
  %123 = load i32, i32* @FALSE, align 4
  store i32 %123, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %124

124:                                              ; preds = %122, %98, %33, %27, %22
  %125 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %125)
  %126 = load i32, i32* %6, align 4
  ret i32 %126
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(%struct.TYPE_6__**, i32, i32) #2

declare dso_local %struct.TYPE_6__* @cmsBuildTabulatedToneCurve16(i32, i32, i32*) #2

declare dso_local i32 @_cmsReadUInt16Array(i32, i32*, i32, i32) #2

declare dso_local i32 @cmsPipelineInsertStage(i32, i32*, i32, i32) #2

declare dso_local i32 @cmsStageAllocToneCurves(i32, i32, %struct.TYPE_6__**) #2

declare dso_local i32 @cmsFreeToneCurve(i32, %struct.TYPE_6__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
