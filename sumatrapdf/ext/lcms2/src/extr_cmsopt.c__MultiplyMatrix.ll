; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmsopt.c__MultiplyMatrix.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmsopt.c__MultiplyMatrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, %struct.TYPE_10__* }
%struct.TYPE_12__ = type { i64, i32* }

@FALSE = common dso_local global i32 0, align 4
@cmsSigMatrixElemType = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_11__*)* @_MultiplyMatrix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_MultiplyMatrix(i32 %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_10__**, align 8
  %7 = alloca %struct.TYPE_10__**, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_10__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  %14 = load i32, i32* @FALSE, align 4
  store i32 %14, i32* %9, align 4
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  store %struct.TYPE_10__** %16, %struct.TYPE_10__*** %6, align 8
  %17 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %6, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %19 = icmp eq %struct.TYPE_10__* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %9, align 4
  store i32 %21, i32* %3, align 4
  br label %142

22:                                               ; preds = %2
  br label %23

23:                                               ; preds = %139, %22
  %24 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %6, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  %26 = icmp ne %struct.TYPE_10__* %25, null
  br i1 %26, label %27, label %140

27:                                               ; preds = %23
  %28 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %6, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 1
  store %struct.TYPE_10__** %30, %struct.TYPE_10__*** %7, align 8
  %31 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %7, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %31, align 8
  %33 = icmp eq %struct.TYPE_10__* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* %9, align 4
  store i32 %35, i32* %3, align 4
  br label %142

36:                                               ; preds = %27
  %37 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %6, align 8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @cmsSigMatrixElemType, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %135

43:                                               ; preds = %36
  %44 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %7, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @cmsSigMatrixElemType, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %135

50:                                               ; preds = %43
  %51 = load i32, i32* %4, align 4
  %52 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %6, align 8
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %52, align 8
  %54 = call i64 @cmsStageData(i32 %51, %struct.TYPE_10__* %53)
  %55 = inttoptr i64 %54 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %55, %struct.TYPE_12__** %10, align 8
  %56 = load i32, i32* %4, align 4
  %57 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %7, align 8
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %57, align 8
  %59 = call i64 @cmsStageData(i32 %56, %struct.TYPE_10__* %58)
  %60 = inttoptr i64 %59 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %60, %struct.TYPE_12__** %11, align 8
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %94, label %65

65:                                               ; preds = %50
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %94, label %70

70:                                               ; preds = %65
  %71 = load i32, i32* %4, align 4
  %72 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %6, align 8
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %72, align 8
  %74 = call i32 @cmsStageInputChannels(i32 %71, %struct.TYPE_10__* %73)
  %75 = icmp ne i32 %74, 3
  br i1 %75, label %94, label %76

76:                                               ; preds = %70
  %77 = load i32, i32* %4, align 4
  %78 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %6, align 8
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %78, align 8
  %80 = call i32 @cmsStageOutputChannels(i32 %77, %struct.TYPE_10__* %79)
  %81 = icmp ne i32 %80, 3
  br i1 %81, label %94, label %82

82:                                               ; preds = %76
  %83 = load i32, i32* %4, align 4
  %84 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %7, align 8
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %84, align 8
  %86 = call i32 @cmsStageInputChannels(i32 %83, %struct.TYPE_10__* %85)
  %87 = icmp ne i32 %86, 3
  br i1 %87, label %94, label %88

88:                                               ; preds = %82
  %89 = load i32, i32* %4, align 4
  %90 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %7, align 8
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %90, align 8
  %92 = call i32 @cmsStageOutputChannels(i32 %89, %struct.TYPE_10__* %91)
  %93 = icmp ne i32 %92, 3
  br i1 %93, label %94, label %96

94:                                               ; preds = %88, %82, %76, %70, %65, %50
  %95 = load i32, i32* @FALSE, align 4
  store i32 %95, i32* %3, align 4
  br label %142

96:                                               ; preds = %88
  %97 = load i32, i32* %4, align 4
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = inttoptr i64 %100 to i32*
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = inttoptr i64 %104 to i32*
  %106 = call i32 @_cmsMAT3per(i32 %97, i32* %12, i32* %101, i32* %105)
  %107 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %7, align 8
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %109, align 8
  store %struct.TYPE_10__* %110, %struct.TYPE_10__** %8, align 8
  %111 = load i32, i32* %4, align 4
  %112 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %7, align 8
  %113 = call i32 @_RemoveElement(i32 %111, %struct.TYPE_10__** %112)
  %114 = load i32, i32* %4, align 4
  %115 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %6, align 8
  %116 = call i32 @_RemoveElement(i32 %114, %struct.TYPE_10__** %115)
  %117 = load i32, i32* %4, align 4
  %118 = call i32 @isFloatMatrixIdentity(i32 %117, i32* %12)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %133, label %120

120:                                              ; preds = %96
  %121 = load i32, i32* %4, align 4
  %122 = call %struct.TYPE_10__* @cmsStageAllocMatrix(i32 %121, i32 3, i32 3, i32* %12, i32* null)
  store %struct.TYPE_10__* %122, %struct.TYPE_10__** %13, align 8
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %124 = icmp eq %struct.TYPE_10__* %123, null
  br i1 %124, label %125, label %127

125:                                              ; preds = %120
  %126 = load i32, i32* @FALSE, align 4
  store i32 %126, i32* %3, align 4
  br label %142

127:                                              ; preds = %120
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 1
  store %struct.TYPE_10__* %128, %struct.TYPE_10__** %130, align 8
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %132 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %6, align 8
  store %struct.TYPE_10__* %131, %struct.TYPE_10__** %132, align 8
  br label %133

133:                                              ; preds = %127, %96
  %134 = load i32, i32* @TRUE, align 4
  store i32 %134, i32* %9, align 4
  br label %139

135:                                              ; preds = %43, %36
  %136 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %6, align 8
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 1
  store %struct.TYPE_10__** %138, %struct.TYPE_10__*** %6, align 8
  br label %139

139:                                              ; preds = %135, %133
  br label %23

140:                                              ; preds = %23
  %141 = load i32, i32* %9, align 4
  store i32 %141, i32* %3, align 4
  br label %142

142:                                              ; preds = %140, %125, %94, %34, %20
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

declare dso_local i64 @cmsStageData(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @cmsStageInputChannels(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @cmsStageOutputChannels(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @_cmsMAT3per(i32, i32*, i32*, i32*) #1

declare dso_local i32 @_RemoveElement(i32, %struct.TYPE_10__**) #1

declare dso_local i32 @isFloatMatrixIdentity(i32, i32*) #1

declare dso_local %struct.TYPE_10__* @cmsStageAllocMatrix(i32, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
