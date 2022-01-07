; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmsopt.c__cmsOptimizePipeline.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmsopt.c__cmsOptimizePipeline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64 (i32, %struct.TYPE_11__**, i32, i32*, i32*, i32*)*, %struct.TYPE_13__* }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_12__ = type { %struct.TYPE_13__* }

@OptimizationPlugin = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@cmsFLAGS_FORCE_CLUT = common dso_local global i32 0, align 4
@FastIdentity16 = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@cmsFLAGS_NOOPTIMIZE = common dso_local global i32 0, align 4
@DefaultOptimization = common dso_local global %struct.TYPE_13__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_cmsOptimizePipeline(i32 %0, %struct.TYPE_11__** %1, i32 %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_11__**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_12__*, align 8
  %15 = alloca %struct.TYPE_13__*, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store %struct.TYPE_11__** %1, %struct.TYPE_11__*** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @OptimizationPlugin, align 4
  %19 = call i64 @_cmsContextGetClientChunk(i32 %17, i32 %18)
  %20 = inttoptr i64 %19 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %20, %struct.TYPE_12__** %14, align 8
  %21 = load i32, i32* @FALSE, align 4
  store i32 %21, i32* %16, align 4
  %22 = load i32*, i32** %13, align 8
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @cmsFLAGS_FORCE_CLUT, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %6
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %9, align 8
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  %31 = call i32 @PreOptimize(i32 %28, %struct.TYPE_11__* %30)
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %9, align 8
  %34 = load i32, i32* %10, align 4
  %35 = load i32*, i32** %11, align 8
  %36 = load i32*, i32** %12, align 8
  %37 = load i32*, i32** %13, align 8
  %38 = call i32 @OptimizeByResampling(i32 %32, %struct.TYPE_11__** %33, i32 %34, i32* %35, i32* %36, i32* %37)
  store i32 %38, i32* %7, align 4
  br label %135

39:                                               ; preds = %6
  %40 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %9, align 8
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %55

45:                                               ; preds = %39
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %9, align 8
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %47, align 8
  %49 = load i32, i32* @FastIdentity16, align 4
  %50 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %9, align 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %50, align 8
  %52 = bitcast %struct.TYPE_11__* %51 to i8*
  %53 = call i32 @_cmsPipelineSetOptimizationParameters(i32 %46, %struct.TYPE_11__* %48, i32 %49, i8* %52, i32* null, i32* null)
  %54 = load i32, i32* @TRUE, align 4
  store i32 %54, i32* %7, align 4
  br label %135

55:                                               ; preds = %39
  %56 = load i32, i32* %8, align 4
  %57 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %9, align 8
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %57, align 8
  %59 = call i32 @PreOptimize(i32 %56, %struct.TYPE_11__* %58)
  store i32 %59, i32* %16, align 4
  %60 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %9, align 8
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = icmp eq i32* %63, null
  br i1 %64, label %65, label %75

65:                                               ; preds = %55
  %66 = load i32, i32* %8, align 4
  %67 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %9, align 8
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %67, align 8
  %69 = load i32, i32* @FastIdentity16, align 4
  %70 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %9, align 8
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %70, align 8
  %72 = bitcast %struct.TYPE_11__* %71 to i8*
  %73 = call i32 @_cmsPipelineSetOptimizationParameters(i32 %66, %struct.TYPE_11__* %68, i32 %69, i8* %72, i32* null, i32* null)
  %74 = load i32, i32* @TRUE, align 4
  store i32 %74, i32* %7, align 4
  br label %135

75:                                               ; preds = %55
  %76 = load i32*, i32** %13, align 8
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @cmsFLAGS_NOOPTIMIZE, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %75
  %82 = load i32, i32* @FALSE, align 4
  store i32 %82, i32* %7, align 4
  br label %135

83:                                               ; preds = %75
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %85, align 8
  store %struct.TYPE_13__* %86, %struct.TYPE_13__** %15, align 8
  br label %87

87:                                               ; preds = %105, %83
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %89 = icmp ne %struct.TYPE_13__* %88, null
  br i1 %89, label %90, label %109

90:                                               ; preds = %87
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 0
  %93 = load i64 (i32, %struct.TYPE_11__**, i32, i32*, i32*, i32*)*, i64 (i32, %struct.TYPE_11__**, i32, i32*, i32*, i32*)** %92, align 8
  %94 = load i32, i32* %8, align 4
  %95 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %9, align 8
  %96 = load i32, i32* %10, align 4
  %97 = load i32*, i32** %11, align 8
  %98 = load i32*, i32** %12, align 8
  %99 = load i32*, i32** %13, align 8
  %100 = call i64 %93(i32 %94, %struct.TYPE_11__** %95, i32 %96, i32* %97, i32* %98, i32* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %90
  %103 = load i32, i32* @TRUE, align 4
  store i32 %103, i32* %7, align 4
  br label %135

104:                                              ; preds = %90
  br label %105

105:                                              ; preds = %104
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %107, align 8
  store %struct.TYPE_13__* %108, %struct.TYPE_13__** %15, align 8
  br label %87

109:                                              ; preds = %87
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** @DefaultOptimization, align 8
  store %struct.TYPE_13__* %110, %struct.TYPE_13__** %15, align 8
  br label %111

111:                                              ; preds = %129, %109
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %113 = icmp ne %struct.TYPE_13__* %112, null
  br i1 %113, label %114, label %133

114:                                              ; preds = %111
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 0
  %117 = load i64 (i32, %struct.TYPE_11__**, i32, i32*, i32*, i32*)*, i64 (i32, %struct.TYPE_11__**, i32, i32*, i32*, i32*)** %116, align 8
  %118 = load i32, i32* %8, align 4
  %119 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %9, align 8
  %120 = load i32, i32* %10, align 4
  %121 = load i32*, i32** %11, align 8
  %122 = load i32*, i32** %12, align 8
  %123 = load i32*, i32** %13, align 8
  %124 = call i64 %117(i32 %118, %struct.TYPE_11__** %119, i32 %120, i32* %121, i32* %122, i32* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %114
  %127 = load i32, i32* @TRUE, align 4
  store i32 %127, i32* %7, align 4
  br label %135

128:                                              ; preds = %114
  br label %129

129:                                              ; preds = %128
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 1
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %131, align 8
  store %struct.TYPE_13__* %132, %struct.TYPE_13__** %15, align 8
  br label %111

133:                                              ; preds = %111
  %134 = load i32, i32* %16, align 4
  store i32 %134, i32* %7, align 4
  br label %135

135:                                              ; preds = %133, %126, %102, %81, %65, %45, %27
  %136 = load i32, i32* %7, align 4
  ret i32 %136
}

declare dso_local i64 @_cmsContextGetClientChunk(i32, i32) #1

declare dso_local i32 @PreOptimize(i32, %struct.TYPE_11__*) #1

declare dso_local i32 @OptimizeByResampling(i32, %struct.TYPE_11__**, i32, i32*, i32*, i32*) #1

declare dso_local i32 @_cmsPipelineSetOptimizationParameters(i32, %struct.TYPE_11__*, i32, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
