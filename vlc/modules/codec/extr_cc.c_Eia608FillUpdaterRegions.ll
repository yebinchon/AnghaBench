; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_cc.c_Eia608FillUpdaterRegions.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_cc.c_Eia608FillUpdaterRegions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_15__*, i32, %struct.TYPE_14__, i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_15__* }
%struct.TYPE_14__ = type { float }
%struct.TYPE_18__ = type { i64, %struct.eia608_screen* }
%struct.eia608_screen = type { i32* }

@EIA608_SCREEN_ROWS = common dso_local global i32 0, align 4
@FONT_TO_LINE_HEIGHT_RATIO = common dso_local global i32 0, align 4
@UPDT_REGION_ORIGIN_Y_IS_RATIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*, %struct.TYPE_18__*)* @Eia608FillUpdaterRegions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Eia608FillUpdaterRegions(%struct.TYPE_16__* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.eia608_screen*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_15__**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %4, align 8
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 1
  %14 = load %struct.eia608_screen*, %struct.eia608_screen** %13, align 8
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.eia608_screen, %struct.eia608_screen* %14, i64 %17
  store %struct.eia608_screen* %18, %struct.eia608_screen** %5, align 8
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 0
  store %struct.TYPE_17__* %20, %struct.TYPE_17__** %6, align 8
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 0
  store %struct.TYPE_15__** %22, %struct.TYPE_15__*** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %23

23:                                               ; preds = %128, %2
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @EIA608_SCREEN_ROWS, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %131

27:                                               ; preds = %23
  %28 = load %struct.eia608_screen*, %struct.eia608_screen** %5, align 8
  %29 = getelementptr inbounds %struct.eia608_screen, %struct.eia608_screen* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %27
  br label %128

37:                                               ; preds = %27
  %38 = load %struct.eia608_screen*, %struct.eia608_screen** %5, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call %struct.TYPE_15__* @Eia608TextLine(%struct.eia608_screen* %38, i32 %39)
  store %struct.TYPE_15__* %40, %struct.TYPE_15__** %10, align 8
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %42 = icmp ne %struct.TYPE_15__* %41, null
  br i1 %42, label %43, label %119

43:                                               ; preds = %37
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %75

46:                                               ; preds = %43
  %47 = call %struct.TYPE_17__* (...) @SubpictureUpdaterSysRegionNew()
  store %struct.TYPE_17__* %47, %struct.TYPE_17__** %11, align 8
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %49 = icmp ne %struct.TYPE_17__* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %46
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %52 = call i32 @text_segment_ChainDelete(%struct.TYPE_15__* %51)
  br label %131

53:                                               ; preds = %46
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 4
  store i32 %56, i32* %58, align 4
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 8
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 8
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %71 = call i32 @SubpictureUpdaterSysRegionAdd(%struct.TYPE_17__* %69, %struct.TYPE_17__* %70)
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  store %struct.TYPE_17__* %72, %struct.TYPE_17__** %6, align 8
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 0
  store %struct.TYPE_15__** %74, %struct.TYPE_15__*** %7, align 8
  store i32 0, i32* %8, align 4
  br label %75

75:                                               ; preds = %53, %43
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %77, align 8
  %79 = icmp eq %struct.TYPE_15__* %78, null
  br i1 %79, label %80, label %96

80:                                               ; preds = %75
  %81 = load i32, i32* %9, align 4
  %82 = sitofp i32 %81 to float
  %83 = load i32, i32* @EIA608_SCREEN_ROWS, align 4
  %84 = load i32, i32* @FONT_TO_LINE_HEIGHT_RATIO, align 4
  %85 = mul nsw i32 %83, %84
  %86 = sitofp i32 %85 to float
  %87 = fdiv float %82, %86
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 0
  store float %87, float* %90, align 4
  %91 = load i32, i32* @UPDT_REGION_ORIGIN_Y_IS_RATIO, align 4
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 8
  br label %107

96:                                               ; preds = %75
  %97 = call %struct.TYPE_15__* @text_segment_New(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %98 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %7, align 8
  store %struct.TYPE_15__* %97, %struct.TYPE_15__** %98, align 8
  %99 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %7, align 8
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %99, align 8
  %101 = icmp ne %struct.TYPE_15__* %100, null
  br i1 %101, label %102, label %106

102:                                              ; preds = %96
  %103 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %7, align 8
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 0
  store %struct.TYPE_15__** %105, %struct.TYPE_15__*** %7, align 8
  br label %106

106:                                              ; preds = %102, %96
  br label %107

107:                                              ; preds = %106, %80
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %109 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %7, align 8
  store %struct.TYPE_15__* %108, %struct.TYPE_15__** %109, align 8
  br label %110

110:                                              ; preds = %114, %107
  %111 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %7, align 8
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 0
  store %struct.TYPE_15__** %113, %struct.TYPE_15__*** %7, align 8
  br label %114

114:                                              ; preds = %110
  %115 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %7, align 8
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %115, align 8
  %117 = icmp ne %struct.TYPE_15__* %116, null
  br i1 %117, label %110, label %118

118:                                              ; preds = %114
  br label %127

119:                                              ; preds = %37
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %121, align 8
  %123 = icmp ne %struct.TYPE_15__* %122, null
  %124 = xor i1 %123, true
  %125 = xor i1 %124, true
  %126 = zext i1 %125 to i32
  store i32 %126, i32* %8, align 4
  br label %127

127:                                              ; preds = %119, %118
  br label %128

128:                                              ; preds = %127, %36
  %129 = load i32, i32* %9, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %9, align 4
  br label %23

131:                                              ; preds = %50, %23
  ret void
}

declare dso_local %struct.TYPE_15__* @Eia608TextLine(%struct.eia608_screen*, i32) #1

declare dso_local %struct.TYPE_17__* @SubpictureUpdaterSysRegionNew(...) #1

declare dso_local i32 @text_segment_ChainDelete(%struct.TYPE_15__*) #1

declare dso_local i32 @SubpictureUpdaterSysRegionAdd(%struct.TYPE_17__*, %struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_15__* @text_segment_New(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
