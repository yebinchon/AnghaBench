; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_filter/deinterlace/extr_algo_ivtc.c_RenderIVTC.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_filter/deinterlace/extr_algo_ivtc.c_RenderIVTC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_14__, %struct.TYPE_15__ }
%struct.TYPE_14__ = type { i32** }
%struct.TYPE_15__ = type { i32*, i32* }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@FIELD_PAIR_TNBN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RenderIVTC(%struct.TYPE_16__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = call i32 @VLC_UNUSED(i32* %15)
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %18 = icmp ne %struct.TYPE_16__* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load i32*, i32** %6, align 8
  %22 = icmp ne i32* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  store %struct.TYPE_17__* %27, %struct.TYPE_17__** %8, align 8
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 1
  store %struct.TYPE_15__* %29, %struct.TYPE_15__** %9, align 8
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %33 = load i32**, i32*** %32, align 8
  %34 = getelementptr inbounds i32*, i32** %33, i64 0
  %35 = load i32*, i32** %34, align 8
  store i32* %35, i32** %10, align 8
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = load i32**, i32*** %38, align 8
  %40 = getelementptr inbounds i32*, i32** %39, i64 1
  %41 = load i32*, i32** %40, align 8
  store i32* %41, i32** %11, align 8
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = load i32**, i32*** %44, align 8
  %46 = getelementptr inbounds i32*, i32** %45, i64 2
  %47 = load i32*, i32** %46, align 8
  store i32* %47, i32** %12, align 8
  %48 = load i32*, i32** %12, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %3
  %51 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %51, i32* %4, align 4
  br label %134

52:                                               ; preds = %3
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %54 = call i32 @IVTCFrameInit(%struct.TYPE_16__* %53)
  %55 = load i32*, i32** %10, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %82

57:                                               ; preds = %52
  %58 = load i32*, i32** %11, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %82

60:                                               ; preds = %57
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %62 = call i32 @IVTCLowLevelDetect(%struct.TYPE_16__* %61)
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %64 = call i32 @IVTCSoftTelecineDetect(%struct.TYPE_16__* %63)
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %66 = call i32 @IVTCCadenceDetectAlgoScores(%struct.TYPE_16__* %65)
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %68 = call i32 @IVTCCadenceDetectAlgoVektor(%struct.TYPE_16__* %67)
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %70 = call i32 @IVTCCadenceDetectFinalize(%struct.TYPE_16__* %69)
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %72 = call i32 @IVTCCadenceAnalyze(%struct.TYPE_16__* %71)
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %74 = load i32*, i32** %6, align 8
  %75 = call i32 @IVTCOutputOrDropFrame(%struct.TYPE_16__* %73, i32* %74)
  store i32 %75, i32* %13, align 4
  %76 = load i32, i32* %13, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %60
  %79 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %79, i32* %4, align 4
  br label %134

80:                                               ; preds = %60
  %81 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %81, i32* %4, align 4
  br label %134

82:                                               ; preds = %57, %52
  %83 = load i32*, i32** %10, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %107, label %85

85:                                               ; preds = %82
  %86 = load i32*, i32** %11, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %107, label %88

88:                                               ; preds = %85
  %89 = load i32*, i32** %12, align 8
  %90 = load i32*, i32** %12, align 8
  %91 = call i32 @CalculateInterlaceScore(i32* %89, i32* %90)
  store i32 %91, i32* %14, align 4
  %92 = load i32, i32* %14, align 4
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = load i64, i64* @FIELD_PAIR_TNBN, align 8
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  store i32 %92, i32* %97, align 4
  %98 = load i32, i32* %14, align 4
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 0
  store i32 %98, i32* %102, align 4
  %103 = load i32*, i32** %6, align 8
  %104 = load i32*, i32** %12, align 8
  %105 = call i32 @picture_Copy(i32* %103, i32* %104)
  %106 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %106, i32* %4, align 4
  br label %134

107:                                              ; preds = %85, %82
  %108 = load i32*, i32** %11, align 8
  %109 = icmp ne i32* %108, null
  br i1 %109, label %110, label %114

110:                                              ; preds = %107
  %111 = load i32*, i32** %10, align 8
  %112 = icmp ne i32* %111, null
  %113 = xor i1 %112, true
  br label %114

114:                                              ; preds = %110, %107
  %115 = phi i1 [ false, %107 ], [ %113, %110 ]
  %116 = zext i1 %115 to i32
  %117 = call i32 @assert(i32 %116)
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %119 = call i32 @IVTCLowLevelDetect(%struct.TYPE_16__* %118)
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = load i64, i64* @FIELD_PAIR_TNBN, align 8
  %124 = getelementptr inbounds i32, i32* %122, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 1
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 1
  store i32 %125, i32* %129, align 4
  %130 = load i32*, i32** %6, align 8
  %131 = load i32*, i32** %12, align 8
  %132 = call i32 @picture_Copy(i32* %130, i32* %131)
  %133 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %133, i32* %4, align 4
  br label %134

134:                                              ; preds = %114, %88, %80, %78, %50
  %135 = load i32, i32* %4, align 4
  ret i32 %135
}

declare dso_local i32 @VLC_UNUSED(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @IVTCFrameInit(%struct.TYPE_16__*) #1

declare dso_local i32 @IVTCLowLevelDetect(%struct.TYPE_16__*) #1

declare dso_local i32 @IVTCSoftTelecineDetect(%struct.TYPE_16__*) #1

declare dso_local i32 @IVTCCadenceDetectAlgoScores(%struct.TYPE_16__*) #1

declare dso_local i32 @IVTCCadenceDetectAlgoVektor(%struct.TYPE_16__*) #1

declare dso_local i32 @IVTCCadenceDetectFinalize(%struct.TYPE_16__*) #1

declare dso_local i32 @IVTCCadenceAnalyze(%struct.TYPE_16__*) #1

declare dso_local i32 @IVTCOutputOrDropFrame(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @CalculateInterlaceScore(i32*, i32*) #1

declare dso_local i32 @picture_Copy(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
