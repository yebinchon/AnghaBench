; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_backward_references_cost_enc.c_CostModelBuild.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_backward_references_cost_enc.c_CostModelBuild.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32 }

@VP8LDistanceToPlaneCode = common dso_local global i32 0, align 4
@VALUES_IN_BYTE = common dso_local global i32 0, align 4
@NUM_DISTANCE_CODES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i32, i32, i32*)* @CostModelBuild to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CostModelBuild(%struct.TYPE_14__* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_12__, align 4
  %11 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %12 = load i32*, i32** %8, align 8
  %13 = call i32 @VP8LRefsCursorInit(i32* %12)
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call %struct.TYPE_13__* @VP8LAllocateHistogram(i32 %15)
  store %struct.TYPE_13__* %16, %struct.TYPE_13__** %11, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %18 = icmp eq %struct.TYPE_13__* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  br label %79

20:                                               ; preds = %4
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @VP8LHistogramInit(%struct.TYPE_13__* %21, i32 %22, i32 1)
  br label %24

24:                                               ; preds = %27, %20
  %25 = call i64 @VP8LRefsCursorOk(%struct.TYPE_12__* %10)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %24
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @VP8LDistanceToPlaneCode, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @VP8LHistogramAddSinglePixOrCopy(%struct.TYPE_13__* %28, i32 %30, i32 %31, i32 %32)
  %34 = call i32 @VP8LRefsCursorNext(%struct.TYPE_12__* %10)
  br label %24

35:                                               ; preds = %24
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @VP8LHistogramNumCodes(i32 %38)
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @ConvertPopulationCountTableToBitEstimates(i32 %39, i32 %42, i32 %45)
  %47 = load i32, i32* @VALUES_IN_BYTE, align 4
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @ConvertPopulationCountTableToBitEstimates(i32 %47, i32 %50, i32 %53)
  %55 = load i32, i32* @VALUES_IN_BYTE, align 4
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @ConvertPopulationCountTableToBitEstimates(i32 %55, i32 %58, i32 %61)
  %63 = load i32, i32* @VALUES_IN_BYTE, align 4
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @ConvertPopulationCountTableToBitEstimates(i32 %63, i32 %66, i32 %69)
  %71 = load i32, i32* @NUM_DISTANCE_CODES, align 4
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @ConvertPopulationCountTableToBitEstimates(i32 %71, i32 %74, i32 %77)
  store i32 1, i32* %9, align 4
  br label %79

79:                                               ; preds = %35, %19
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %81 = call i32 @VP8LFreeHistogram(%struct.TYPE_13__* %80)
  %82 = load i32, i32* %9, align 4
  ret i32 %82
}

declare dso_local i32 @VP8LRefsCursorInit(i32*) #1

declare dso_local %struct.TYPE_13__* @VP8LAllocateHistogram(i32) #1

declare dso_local i32 @VP8LHistogramInit(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i64 @VP8LRefsCursorOk(%struct.TYPE_12__*) #1

declare dso_local i32 @VP8LHistogramAddSinglePixOrCopy(%struct.TYPE_13__*, i32, i32, i32) #1

declare dso_local i32 @VP8LRefsCursorNext(%struct.TYPE_12__*) #1

declare dso_local i32 @ConvertPopulationCountTableToBitEstimates(i32, i32, i32) #1

declare dso_local i32 @VP8LHistogramNumCodes(i32) #1

declare dso_local i32 @VP8LFreeHistogram(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
