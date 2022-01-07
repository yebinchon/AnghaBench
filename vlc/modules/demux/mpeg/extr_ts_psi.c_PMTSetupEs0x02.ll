; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ts_psi.c_PMTSetupEs0x02.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ts_psi.c_PMTSetupEs0x02.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_14__ = type { i64, i32* }
%struct.TYPE_13__ = type { i32, i32, i32 }

@PMTSetupEs0x02.code_to_frame_rate = internal constant [8 x [2 x i32]] [[2 x i32] [i32 24000, i32 1001], [2 x i32] [i32 24, i32 1], [2 x i32] [i32 25, i32 1], [2 x i32] [i32 30000, i32 1001], [2 x i32] [i32 30, i32 1], [2 x i32] [i32 50, i32 1], [2 x i32] [i32 60000, i32 1001], [2 x i32] [i32 60, i32 1]], align 16
@VLC_CODEC_MPGV = common dso_local global i64 0, align 8
@VLC_CODEC_MP1V = common dso_local global i32 0, align 4
@MULTIVIEW_STEREO_SBS = common dso_local global i32 0, align 4
@MULTIVIEW_STEREO_TB = common dso_local global i32 0, align 4
@MULTIVIEW_2D = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, i32*)* @PMTSetupEs0x02 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PMTSetupEs0x02(%struct.TYPE_12__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call %struct.TYPE_14__* @PMTEsFindDescriptor(i32* %8, i32 2)
  store %struct.TYPE_14__* %9, %struct.TYPE_14__** %5, align 8
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %11 = icmp ne %struct.TYPE_14__* %10, null
  br i1 %11, label %12, label %76

12:                                               ; preds = %2
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %14 = call %struct.TYPE_13__* @dvbpsi_DecodeVStreamDr(%struct.TYPE_14__* %13)
  store %struct.TYPE_13__* %14, %struct.TYPE_13__** %6, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %16 = icmp ne %struct.TYPE_13__* %15, null
  br i1 %16, label %17, label %75

17:                                               ; preds = %12
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp sgt i32 %20, 1
  br i1 %21, label %22, label %57

22:                                               ; preds = %17
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %25, 9
  br i1 %26, label %27, label %57

27:                                               ; preds = %22
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %57, label %32

32:                                               ; preds = %27
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = sub nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* @PMTSetupEs0x02.code_to_frame_rate, i64 0, i64 %37
  %39 = getelementptr inbounds [2 x i32], [2 x i32]* %38, i64 0, i64 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  store i32 %40, i32* %44, align 8
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sub nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* @PMTSetupEs0x02.code_to_frame_rate, i64 0, i64 %49
  %51 = getelementptr inbounds [2 x i32], [2 x i32]* %50, i64 0, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 1
  store i32 %52, i32* %56, align 4
  br label %57

57:                                               ; preds = %32, %27, %22, %17
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %74, label %62

62:                                               ; preds = %57
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @VLC_CODEC_MPGV, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %62
  %70 = load i32, i32* @VLC_CODEC_MP1V, align 4
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 2
  store i32 %70, i32* %73, align 4
  br label %74

74:                                               ; preds = %69, %62, %57
  br label %75

75:                                               ; preds = %74, %12
  br label %76

76:                                               ; preds = %75, %2
  %77 = load i32*, i32** %4, align 8
  %78 = call %struct.TYPE_14__* @PMTEsFindDescriptor(i32* %77, i32 52)
  store %struct.TYPE_14__* %78, %struct.TYPE_14__** %5, align 8
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %80 = icmp ne %struct.TYPE_14__* %79, null
  br i1 %80, label %81, label %114

81:                                               ; preds = %76
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp sgt i64 %84, 0
  br i1 %85, label %86, label %114

86:                                               ; preds = %81
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  %91 = load i32, i32* %90, align 4
  %92 = and i32 %91, 128
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %114

94:                                               ; preds = %86
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  %99 = load i32, i32* %98, align 4
  %100 = and i32 %99, 127
  switch i32 %100, label %106 [
    i32 3, label %101
    i32 4, label %103
    i32 8, label %105
  ]

101:                                              ; preds = %94
  %102 = load i32, i32* @MULTIVIEW_STEREO_SBS, align 4
  store i32 %102, i32* %7, align 4
  br label %108

103:                                              ; preds = %94
  %104 = load i32, i32* @MULTIVIEW_STEREO_TB, align 4
  store i32 %104, i32* %7, align 4
  br label %108

105:                                              ; preds = %94
  br label %106

106:                                              ; preds = %94, %105
  %107 = load i32, i32* @MULTIVIEW_2D, align 4
  store i32 %107, i32* %7, align 4
  br label %108

108:                                              ; preds = %106, %103, %101
  %109 = load i32, i32* %7, align 4
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 2
  store i32 %109, i32* %113, align 8
  br label %114

114:                                              ; preds = %108, %86, %81, %76
  ret void
}

declare dso_local %struct.TYPE_14__* @PMTEsFindDescriptor(i32*, i32) #1

declare dso_local %struct.TYPE_13__* @dvbpsi_DecodeVStreamDr(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
