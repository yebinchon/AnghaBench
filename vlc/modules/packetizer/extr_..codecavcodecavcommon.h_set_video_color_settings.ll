; ModuleID = '/home/carl/AnghaBench/vlc/modules/packetizer/extr_..codecavcodecavcommon.h_set_video_color_settings.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/packetizer/extr_..codecavcodecavcommon.h_set_video_color_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i8*, i32, i32 }

@AVCOL_RANGE_JPEG = common dso_local global i32 0, align 4
@AVCOL_RANGE_MPEG = common dso_local global i32 0, align 4
@AVCOL_RANGE_UNSPECIFIED = common dso_local global i32 0, align 4
@AVCOL_SPC_BT709 = common dso_local global i32 0, align 4
@AVCOL_SPC_BT470BG = common dso_local global i32 0, align 4
@AVCOL_SPC_BT2020_CL = common dso_local global i32 0, align 4
@AVCOL_SPC_UNSPECIFIED = common dso_local global i32 0, align 4
@AVCOL_TRC_LINEAR = common dso_local global i8* null, align 8
@AVCOL_TRC_GAMMA22 = common dso_local global i8* null, align 8
@AVCOL_TRC_GAMMA28 = common dso_local global i8* null, align 8
@AVCOL_TRC_BT709 = common dso_local global i8* null, align 8
@AVCOL_TRC_SMPTEST2084 = common dso_local global i8* null, align 8
@AVCOL_TRC_SMPTE240M = common dso_local global i8* null, align 8
@AVCOL_TRC_UNSPECIFIED = common dso_local global i8* null, align 8
@AVCOL_PRI_SMPTE170M = common dso_local global i32 0, align 4
@AVCOL_PRI_BT470BG = common dso_local global i32 0, align 4
@AVCOL_PRI_BT709 = common dso_local global i32 0, align 4
@AVCOL_PRI_BT2020 = common dso_local global i32 0, align 4
@AVCOL_PRI_BT470M = common dso_local global i32 0, align 4
@AVCOL_PRI_UNSPECIFIED = common dso_local global i32 0, align 4
@AVCHROMA_LOC_LEFT = common dso_local global i32 0, align 4
@AVCHROMA_LOC_CENTER = common dso_local global i32 0, align 4
@AVCHROMA_LOC_TOPLEFT = common dso_local global i32 0, align 4
@AVCHROMA_LOC_TOP = common dso_local global i32 0, align 4
@AVCHROMA_LOC_BOTTOMLEFT = common dso_local global i32 0, align 4
@AVCHROMA_LOC_BOTTOM = common dso_local global i32 0, align 4
@AVCHROMA_LOC_UNSPECIFIED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, %struct.TYPE_6__*)* @set_video_color_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_video_color_settings(%struct.TYPE_5__* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %17 [
    i32 140, label %8
    i32 139, label %12
    i32 138, label %16
  ]

8:                                                ; preds = %2
  %9 = load i32, i32* @AVCOL_RANGE_JPEG, align 4
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 4
  store i32 %9, i32* %11, align 4
  br label %21

12:                                               ; preds = %2
  %13 = load i32, i32* @AVCOL_RANGE_MPEG, align 4
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 4
  store i32 %13, i32* %15, align 4
  br label %16

16:                                               ; preds = %2, %12
  br label %21

17:                                               ; preds = %2
  %18 = load i32, i32* @AVCOL_RANGE_UNSPECIFIED, align 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 4
  store i32 %18, i32* %20, align 4
  br label %21

21:                                               ; preds = %17, %16, %8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %37 [
    i32 135, label %25
    i32 136, label %29
    i32 137, label %33
  ]

25:                                               ; preds = %21
  %26 = load i32, i32* @AVCOL_SPC_BT709, align 4
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 8
  br label %41

29:                                               ; preds = %21
  %30 = load i32, i32* @AVCOL_SPC_BT470BG, align 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 8
  br label %41

33:                                               ; preds = %21
  %34 = load i32, i32* @AVCOL_SPC_BT2020_CL, align 4
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 8
  br label %41

37:                                               ; preds = %21
  %38 = load i32, i32* @AVCOL_SPC_UNSPECIFIED, align 4
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 8
  br label %41

41:                                               ; preds = %37, %33, %29, %25
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  switch i32 %44, label %73 [
    i32 131, label %45
    i32 128, label %49
    i32 134, label %53
    i32 133, label %57
    i32 132, label %61
    i32 129, label %65
    i32 130, label %69
  ]

45:                                               ; preds = %41
  %46 = load i8*, i8** @AVCOL_TRC_LINEAR, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 2
  store i8* %46, i8** %48, align 8
  br label %77

49:                                               ; preds = %41
  %50 = load i8*, i8** @AVCOL_TRC_GAMMA22, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 2
  store i8* %50, i8** %52, align 8
  br label %77

53:                                               ; preds = %41
  %54 = load i8*, i8** @AVCOL_TRC_GAMMA28, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 2
  store i8* %54, i8** %56, align 8
  br label %77

57:                                               ; preds = %41
  %58 = load i8*, i8** @AVCOL_TRC_GAMMA22, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 2
  store i8* %58, i8** %60, align 8
  br label %77

61:                                               ; preds = %41
  %62 = load i8*, i8** @AVCOL_TRC_BT709, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 2
  store i8* %62, i8** %64, align 8
  br label %77

65:                                               ; preds = %41
  %66 = load i8*, i8** @AVCOL_TRC_SMPTEST2084, align 8
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 2
  store i8* %66, i8** %68, align 8
  br label %77

69:                                               ; preds = %41
  %70 = load i8*, i8** @AVCOL_TRC_SMPTE240M, align 8
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 2
  store i8* %70, i8** %72, align 8
  br label %77

73:                                               ; preds = %41
  %74 = load i8*, i8** @AVCOL_TRC_UNSPECIFIED, align 8
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 2
  store i8* %74, i8** %76, align 8
  br label %77

77:                                               ; preds = %73, %69, %65, %61, %57, %53, %49, %45
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  switch i32 %80, label %101 [
    i32 144, label %81
    i32 143, label %85
    i32 142, label %89
    i32 145, label %93
    i32 141, label %97
  ]

81:                                               ; preds = %77
  %82 = load i32, i32* @AVCOL_PRI_SMPTE170M, align 4
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  br label %105

85:                                               ; preds = %77
  %86 = load i32, i32* @AVCOL_PRI_BT470BG, align 4
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  br label %105

89:                                               ; preds = %77
  %90 = load i32, i32* @AVCOL_PRI_BT709, align 4
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 4
  br label %105

93:                                               ; preds = %77
  %94 = load i32, i32* @AVCOL_PRI_BT2020, align 4
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  br label %105

97:                                               ; preds = %77
  %98 = load i32, i32* @AVCOL_PRI_BT470M, align 4
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  br label %105

101:                                              ; preds = %77
  %102 = load i32, i32* @AVCOL_PRI_UNSPECIFIED, align 4
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 4
  br label %105

105:                                              ; preds = %101, %97, %93, %89, %85, %81
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 4
  switch i32 %108, label %133 [
    i32 148, label %109
    i32 149, label %113
    i32 146, label %117
    i32 147, label %121
    i32 150, label %125
    i32 151, label %129
  ]

109:                                              ; preds = %105
  %110 = load i32, i32* @AVCHROMA_LOC_LEFT, align 4
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 8
  br label %137

113:                                              ; preds = %105
  %114 = load i32, i32* @AVCHROMA_LOC_CENTER, align 4
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 8
  br label %137

117:                                              ; preds = %105
  %118 = load i32, i32* @AVCHROMA_LOC_TOPLEFT, align 4
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 8
  br label %137

121:                                              ; preds = %105
  %122 = load i32, i32* @AVCHROMA_LOC_TOP, align 4
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  store i32 %122, i32* %124, align 8
  br label %137

125:                                              ; preds = %105
  %126 = load i32, i32* @AVCHROMA_LOC_BOTTOMLEFT, align 4
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  store i32 %126, i32* %128, align 8
  br label %137

129:                                              ; preds = %105
  %130 = load i32, i32* @AVCHROMA_LOC_BOTTOM, align 4
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  store i32 %130, i32* %132, align 8
  br label %137

133:                                              ; preds = %105
  %134 = load i32, i32* @AVCHROMA_LOC_UNSPECIFIED, align 4
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 8
  br label %137

137:                                              ; preds = %133, %129, %125, %121, %117, %113, %109
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
