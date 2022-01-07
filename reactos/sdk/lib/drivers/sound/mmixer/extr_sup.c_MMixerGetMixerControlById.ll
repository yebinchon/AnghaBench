; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/drivers/sound/mmixer/extr_sup.c_MMixerGetMixerControlById.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/drivers/sound/mmixer/extr_sup.c_MMixerGetMixerControlById.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_12__* }
%struct.TYPE_14__ = type { %struct.TYPE_12__ }
%struct.TYPE_15__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }

@MIXERLINE_EXT = common dso_local global i32 0, align 4
@MIXERCONTROL_EXT = common dso_local global i32 0, align 4
@MM_STATUS_SUCCESS = common dso_local global i32 0, align 4
@MM_STATUS_UNSUCCESSFUL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MMixerGetMixerControlById(%struct.TYPE_13__* %0, i64 %1, %struct.TYPE_14__** %2, %struct.TYPE_15__** %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_14__**, align 8
  %10 = alloca %struct.TYPE_15__**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca %struct.TYPE_14__*, align 8
  %15 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.TYPE_14__** %2, %struct.TYPE_14__*** %9, align 8
  store %struct.TYPE_15__** %3, %struct.TYPE_15__*** %10, align 8
  store i32* %4, i32** %11, align 8
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  store %struct.TYPE_12__* %19, %struct.TYPE_12__** %12, align 8
  br label %20

20:                                               ; preds = %78, %5
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = icmp ne %struct.TYPE_12__* %21, %23
  br i1 %24, label %25, label %82

25:                                               ; preds = %20
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %27 = load i32, i32* @MIXERLINE_EXT, align 4
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %29 = call i64 @CONTAINING_RECORD(%struct.TYPE_12__* %26, i32 %27, %struct.TYPE_12__* %28)
  %30 = inttoptr i64 %29 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %30, %struct.TYPE_14__** %14, align 8
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %33, align 8
  store %struct.TYPE_12__* %34, %struct.TYPE_12__** %13, align 8
  br label %35

35:                                               ; preds = %74, %25
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = icmp ne %struct.TYPE_12__* %36, %38
  br i1 %39, label %40, label %78

40:                                               ; preds = %35
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %42 = load i32, i32* @MIXERCONTROL_EXT, align 4
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %44 = call i64 @CONTAINING_RECORD(%struct.TYPE_12__* %41, i32 %42, %struct.TYPE_12__* %43)
  %45 = inttoptr i64 %44 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %45, %struct.TYPE_15__** %15, align 8
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %8, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %74

52:                                               ; preds = %40
  %53 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %9, align 8
  %54 = icmp ne %struct.TYPE_14__** %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %57 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %9, align 8
  store %struct.TYPE_14__* %56, %struct.TYPE_14__** %57, align 8
  br label %58

58:                                               ; preds = %55, %52
  %59 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %10, align 8
  %60 = icmp ne %struct.TYPE_15__** %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %63 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %10, align 8
  store %struct.TYPE_15__* %62, %struct.TYPE_15__** %63, align 8
  br label %64

64:                                               ; preds = %61, %58
  %65 = load i32*, i32** %11, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %72

67:                                               ; preds = %64
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32*, i32** %11, align 8
  store i32 %70, i32* %71, align 4
  br label %72

72:                                               ; preds = %67, %64
  %73 = load i32, i32* @MM_STATUS_SUCCESS, align 4
  store i32 %73, i32* %6, align 4
  br label %84

74:                                               ; preds = %40
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %76, align 8
  store %struct.TYPE_12__* %77, %struct.TYPE_12__** %13, align 8
  br label %35

78:                                               ; preds = %35
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %80, align 8
  store %struct.TYPE_12__* %81, %struct.TYPE_12__** %12, align 8
  br label %20

82:                                               ; preds = %20
  %83 = load i32, i32* @MM_STATUS_UNSUCCESSFUL, align 4
  store i32 %83, i32* %6, align 4
  br label %84

84:                                               ; preds = %82, %72
  %85 = load i32, i32* %6, align 4
  ret i32 %85
}

declare dso_local i64 @CONTAINING_RECORD(%struct.TYPE_12__*, i32, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
