; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_mock.c_InitAudioTracks.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_mock.c_InitAudioTracks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.demux_sys* }
%struct.demux_sys = type { i64, i32, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i64, i32, i32 }

@VLC_SUCCESS = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i64 0, align 8
@AOUT_CHAN_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Invalid audio rate\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Invalid audio format\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Invalid audio channels\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@AOUT_CHAN_CENTER = common dso_local global i32 0, align 4
@AOUT_CHANS_2_0 = common dso_local global i32 0, align 4
@AOUT_CHANS_2_1 = common dso_local global i32 0, align 4
@AOUT_CHANS_4_0 = common dso_local global i32 0, align 4
@AOUT_CHANS_4_1 = common dso_local global i32 0, align 4
@AOUT_CHANS_6_0 = common dso_local global i32 0, align 4
@AOUT_CHANS_7_0 = common dso_local global i32 0, align 4
@AOUT_CHANS_7_1 = common dso_local global i32 0, align 4
@AOUT_CHANS_8_1 = common dso_local global i32 0, align 4
@AUDIO_ES = common dso_local global i32 0, align 4
@VLC_ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32, i64)* @InitAudioTracks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @InitAudioTracks(%struct.TYPE_10__* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.demux_sys*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_9__, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load %struct.demux_sys*, %struct.demux_sys** %16, align 8
  store %struct.demux_sys* %17, %struct.demux_sys** %8, align 8
  %18 = load i64, i64* %7, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %21, i32* %4, align 4
  br label %147

22:                                               ; preds = %3
  %23 = load %struct.demux_sys*, %struct.demux_sys** %8, align 8
  %24 = getelementptr inbounds %struct.demux_sys, %struct.demux_sys* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load %struct.demux_sys*, %struct.demux_sys** %8, align 8
  %29 = getelementptr inbounds %struct.demux_sys, %struct.demux_sys* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @UINT_MAX, align 8
  %32 = icmp ne i64 %30, %31
  br label %33

33:                                               ; preds = %27, %22
  %34 = phi i1 [ false, %22 ], [ %32, %27 ]
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %9, align 4
  %36 = load %struct.demux_sys*, %struct.demux_sys** %8, align 8
  %37 = getelementptr inbounds %struct.demux_sys, %struct.demux_sys* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @aout_BitsPerSample(i32 %38)
  %40 = icmp ne i64 %39, 0
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %10, align 4
  %42 = load %struct.demux_sys*, %struct.demux_sys** %8, align 8
  %43 = getelementptr inbounds %struct.demux_sys, %struct.demux_sys* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %33
  %47 = load %struct.demux_sys*, %struct.demux_sys** %8, align 8
  %48 = getelementptr inbounds %struct.demux_sys, %struct.demux_sys* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @AOUT_CHAN_MAX, align 4
  %51 = icmp sle i32 %49, %50
  br label %52

52:                                               ; preds = %46, %33
  %53 = phi i1 [ false, %33 ], [ %51, %46 ]
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %83, label %63

63:                                               ; preds = %60, %57, %52
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %63
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %68 = call i32 @msg_Err(%struct.TYPE_10__* %67, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %69

69:                                               ; preds = %66, %63
  %70 = load i32, i32* %10, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %69
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %74 = call i32 @msg_Err(%struct.TYPE_10__* %73, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %75

75:                                               ; preds = %72, %69
  %76 = load i32, i32* %11, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %75
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %80 = call i32 @msg_Err(%struct.TYPE_10__* %79, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %81

81:                                               ; preds = %78, %75
  %82 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %82, i32* %4, align 4
  br label %147

83:                                               ; preds = %60
  store i32 0, i32* %12, align 4
  %84 = load %struct.demux_sys*, %struct.demux_sys** %8, align 8
  %85 = getelementptr inbounds %struct.demux_sys, %struct.demux_sys* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  switch i32 %86, label %105 [
    i32 1, label %87
    i32 2, label %89
    i32 3, label %91
    i32 4, label %93
    i32 5, label %95
    i32 6, label %97
    i32 7, label %99
    i32 8, label %101
    i32 9, label %103
  ]

87:                                               ; preds = %83
  %88 = load i32, i32* @AOUT_CHAN_CENTER, align 4
  store i32 %88, i32* %12, align 4
  br label %107

89:                                               ; preds = %83
  %90 = load i32, i32* @AOUT_CHANS_2_0, align 4
  store i32 %90, i32* %12, align 4
  br label %107

91:                                               ; preds = %83
  %92 = load i32, i32* @AOUT_CHANS_2_1, align 4
  store i32 %92, i32* %12, align 4
  br label %107

93:                                               ; preds = %83
  %94 = load i32, i32* @AOUT_CHANS_4_0, align 4
  store i32 %94, i32* %12, align 4
  br label %107

95:                                               ; preds = %83
  %96 = load i32, i32* @AOUT_CHANS_4_1, align 4
  store i32 %96, i32* %12, align 4
  br label %107

97:                                               ; preds = %83
  %98 = load i32, i32* @AOUT_CHANS_6_0, align 4
  store i32 %98, i32* %12, align 4
  br label %107

99:                                               ; preds = %83
  %100 = load i32, i32* @AOUT_CHANS_7_0, align 4
  store i32 %100, i32* %12, align 4
  br label %107

101:                                              ; preds = %83
  %102 = load i32, i32* @AOUT_CHANS_7_1, align 4
  store i32 %102, i32* %12, align 4
  br label %107

103:                                              ; preds = %83
  %104 = load i32, i32* @AOUT_CHANS_8_1, align 4
  store i32 %104, i32* %12, align 4
  br label %107

105:                                              ; preds = %83
  %106 = call i32 (...) @vlc_assert_unreachable()
  br label %107

107:                                              ; preds = %105, %103, %101, %99, %97, %95, %93, %91, %89, %87
  store i64 0, i64* %13, align 8
  br label %108

108:                                              ; preds = %142, %107
  %109 = load i64, i64* %13, align 8
  %110 = load i64, i64* %7, align 8
  %111 = icmp ult i64 %109, %110
  br i1 %111, label %112, label %145

112:                                              ; preds = %108
  %113 = load i32, i32* @AUDIO_ES, align 4
  %114 = load %struct.demux_sys*, %struct.demux_sys** %8, align 8
  %115 = getelementptr inbounds %struct.demux_sys, %struct.demux_sys* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @es_format_Init(%struct.TYPE_9__* %14, i32 %113, i32 %116)
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 2
  store i32 %119, i32* %121, align 4
  %122 = load %struct.demux_sys*, %struct.demux_sys** %8, align 8
  %123 = getelementptr inbounds %struct.demux_sys, %struct.demux_sys* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 0
  store i64 %124, i64* %126, align 8
  %127 = load i32, i32* %12, align 4
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 1
  store i32 %127, i32* %129, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %131 = call i32 @aout_FormatPrepare(%struct.TYPE_11__* %130)
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %133 = load i32, i32* %6, align 4
  %134 = load %struct.demux_sys*, %struct.demux_sys** %8, align 8
  %135 = getelementptr inbounds %struct.demux_sys, %struct.demux_sys* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = call i64 @AppendMockTrack(%struct.TYPE_10__* %132, %struct.TYPE_9__* %14, i32 %133, i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %112
  %140 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %140, i32* %4, align 4
  br label %147

141:                                              ; preds = %112
  br label %142

142:                                              ; preds = %141
  %143 = load i64, i64* %13, align 8
  %144 = add i64 %143, 1
  store i64 %144, i64* %13, align 8
  br label %108

145:                                              ; preds = %108
  %146 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %146, i32* %4, align 4
  br label %147

147:                                              ; preds = %145, %139, %81, %20
  %148 = load i32, i32* %4, align 4
  ret i32 %148
}

declare dso_local i64 @aout_BitsPerSample(i32) #1

declare dso_local i32 @msg_Err(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @vlc_assert_unreachable(...) #1

declare dso_local i32 @es_format_Init(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @aout_FormatPrepare(%struct.TYPE_11__*) #1

declare dso_local i64 @AppendMockTrack(%struct.TYPE_10__*, %struct.TYPE_9__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
