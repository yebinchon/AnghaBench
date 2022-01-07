; ModuleID = '/home/carl/AnghaBench/vlc/modules/audio_output/extr_audiotrack.c_StartPassthrough.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/audio_output/extr_audiotrack.c_StartPassthrough.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i64, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i8* }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@jfields = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@AOUT_CHANS_7_1 = common dso_local global i8* null, align 8
@AOUT_CHANS_STEREO = common dso_local global i8* null, align 8
@VLC_CODEC_SPDIFL = common dso_local global i32 0, align 4
@VLC_CODEC_SPDIFB = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"SPDIF configuration failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_11__*)* @StartPassthrough to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @StartPassthrough(i32* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  store %struct.TYPE_12__* %11, %struct.TYPE_12__** %6, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @AudioTrack_HasEncoding(%struct.TYPE_11__* %12, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %20, i32* %3, align 4
  br label %163

21:                                               ; preds = %2
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @jfields, i32 0, i32 0, i32 7), align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %91

24:                                               ; preds = %21
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @jfields, i32 0, i32 0, i32 0), align 8
  store i32 %25, i32* %7, align 4
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  switch i32 %29, label %75 [
    i32 128, label %30
    i32 129, label %30
    i32 132, label %41
    i32 131, label %49
    i32 130, label %63
    i32 133, label %67
  ]

30:                                               ; preds = %24, %24
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 1
  store i32 192000, i32* %33, align 4
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 2
  store i32 16, i32* %36, align 8
  %37 = load i8*, i8** @AOUT_CHANS_7_1, align 8
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 5
  store i8* %37, i8** %40, align 8
  br label %77

41:                                               ; preds = %24
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 2
  store i32 4, i32* %44, align 8
  %45 = load i8*, i8** @AOUT_CHANS_STEREO, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 5
  store i8* %45, i8** %48, align 8
  br label %77

49:                                               ; preds = %24
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 2
  store i32 4, i32* %52, align 8
  %53 = load i8*, i8** @AOUT_CHANS_STEREO, align 8
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 5
  store i8* %53, i8** %56, align 8
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 1
  store i32 192000, i32* %59, align 4
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 2
  store i32 16, i32* %62, align 8
  br label %77

63:                                               ; preds = %24
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 1
  store i32 192000, i32* %66, align 4
  br label %67

67:                                               ; preds = %24, %63
  %68 = load i8*, i8** @AOUT_CHANS_STEREO, align 8
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 5
  store i8* %68, i8** %71, align 8
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 2
  store i32 4, i32* %74, align 8
  br label %77

75:                                               ; preds = %24
  %76 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %76, i32* %3, align 4
  br label %163

77:                                               ; preds = %67, %49, %41, %30
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 3
  store i32 1, i32* %80, align 4
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 2
  %83 = call i32 @aout_FormatNbChannels(%struct.TYPE_14__* %82)
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 4
  store i32 %83, i32* %86, align 8
  %87 = load i32, i32* @VLC_CODEC_SPDIFL, align 4
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 0
  store i32 %87, i32* %90, align 8
  br label %137

91:                                               ; preds = %21
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  switch i32 %95, label %117 [
    i32 133, label %96
    i32 130, label %103
    i32 132, label %110
  ]

96:                                               ; preds = %91
  %97 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @jfields, i32 0, i32 0, i32 6), align 8
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %101, label %99

99:                                               ; preds = %96
  %100 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %100, i32* %3, align 4
  br label %163

101:                                              ; preds = %96
  %102 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @jfields, i32 0, i32 0, i32 1), align 4
  store i32 %102, i32* %7, align 4
  br label %119

103:                                              ; preds = %91
  %104 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @jfields, i32 0, i32 0, i32 5), align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %108, label %106

106:                                              ; preds = %103
  %107 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %107, i32* %3, align 4
  br label %163

108:                                              ; preds = %103
  %109 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @jfields, i32 0, i32 0, i32 2), align 8
  store i32 %109, i32* %7, align 4
  br label %119

110:                                              ; preds = %91
  %111 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @jfields, i32 0, i32 0, i32 4), align 8
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %115, label %113

113:                                              ; preds = %110
  %114 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %114, i32* %3, align 4
  br label %163

115:                                              ; preds = %110
  %116 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @jfields, i32 0, i32 0, i32 3), align 4
  store i32 %116, i32* %7, align 4
  br label %119

117:                                              ; preds = %91
  %118 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %118, i32* %3, align 4
  br label %163

119:                                              ; preds = %115, %108, %101
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 2
  store i32 4, i32* %122, align 8
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 3
  store i32 1, i32* %125, align 4
  %126 = load i8*, i8** @AOUT_CHANS_STEREO, align 8
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 5
  store i8* %126, i8** %129, align 8
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 4
  store i32 2, i32* %132, align 8
  %133 = load i32, i32* @VLC_CODEC_SPDIFB, align 4
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 0
  store i32 %133, i32* %136, align 8
  br label %137

137:                                              ; preds = %119, %77
  %138 = load i32*, i32** %4, align 8
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* %7, align 4
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 5
  %148 = load i8*, i8** %147, align 8
  %149 = call i32 @AudioTrack_Create(i32* %138, %struct.TYPE_11__* %139, i32 %143, i32 %144, i8* %148)
  store i32 %149, i32* %8, align 4
  %150 = load i32, i32* %8, align 4
  %151 = load i32, i32* @VLC_SUCCESS, align 4
  %152 = icmp ne i32 %150, %151
  br i1 %152, label %153, label %156

153:                                              ; preds = %137
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %155 = call i32 @msg_Warn(%struct.TYPE_11__* %154, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %161

156:                                              ; preds = %137
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 0
  store i32 1, i32* %158, align 8
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 1
  store i64 0, i64* %160, align 8
  br label %161

161:                                              ; preds = %156, %153
  %162 = load i32, i32* %8, align 4
  store i32 %162, i32* %3, align 4
  br label %163

163:                                              ; preds = %161, %117, %113, %106, %99, %75, %19
  %164 = load i32, i32* %3, align 4
  ret i32 %164
}

declare dso_local i32 @AudioTrack_HasEncoding(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @aout_FormatNbChannels(%struct.TYPE_14__*) #1

declare dso_local i32 @AudioTrack_Create(i32*, %struct.TYPE_11__*, i32, i32, i8*) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_11__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
