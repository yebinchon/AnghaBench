; ModuleID = '/home/carl/AnghaBench/vlc/modules/audio_output/extr_oss.c_Start.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/audio_output/extr_oss.c_Start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32, i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i8*, i32, i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"OSS_AUDIODEV\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"/dev/dsp\00", align 1
@O_WRONLY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"cannot open OSS device %s: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"using OSS device: %s\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"oss-spdif\00", align 1
@HAVE_FPU = common dso_local global i32 0, align 4
@SNDCTL_DSP_SETFMT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"cannot set audio format 0x%X: %s\00", align 1
@VLC_CODEC_SPDIFL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"unsupported audio format 0x%X\00", align 1
@SNDCTL_DSP_CHANNELS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [27 x i8] c"cannot set %d channels: %s\00", align 1
@AOUT_CHAN_CENTER = common dso_local global i32 0, align 4
@AOUT_CHANS_STEREO = common dso_local global i32 0, align 4
@AOUT_CHANS_4_0 = common dso_local global i32 0, align 4
@AOUT_CHANS_5_1 = common dso_local global i32 0, align 4
@AOUT_CHANS_7_1 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [30 x i8] c"unsupported channels count %d\00", align 1
@SNDCTL_DSP_SPEED = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [33 x i8] c"cannot set %d Hz sample rate: %s\00", align 1
@TimeGet = common dso_local global i32 0, align 4
@Play = common dso_local global i32 0, align 4
@Pause = common dso_local global i32 0, align 4
@Flush = common dso_local global i32 0, align 4
@AOUT_SPDIF_SIZE = common dso_local global i8* null, align 8
@A52_FRAME_NB = common dso_local global i32 0, align 4
@AUDIO_CHANNEL_TYPE_BITMAP = common dso_local global i32 0, align 4
@CLOCK_FREQ = common dso_local global i32 0, align 4
@AOUT_MIN_PREPARE_TIME = common dso_local global i32 0, align 4
@AOUT_MAX_ADVANCE_TIME = common dso_local global i32 0, align 4
@SNDCTL_DSP_SETFRAGMENT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [31 x i8] c"cannot set 0x%08x fragment: %s\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, %struct.TYPE_13__*)* @Start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Start(%struct.TYPE_14__* %0, %struct.TYPE_13__* noalias %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 4
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  store %struct.TYPE_15__* %17, %struct.TYPE_15__** %6, align 8
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %19 = call i32 @aout_FormatNbChannels(%struct.TYPE_13__* %18)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %22, i32* %3, align 4
  br label %267

23:                                               ; preds = %2
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %7, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = call i8* @getenv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i8* %30, i8** %7, align 8
  br label %31

31:                                               ; preds = %29, %23
  %32 = load i8*, i8** %7, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  br label %35

35:                                               ; preds = %34, %31
  %36 = load i8*, i8** %7, align 8
  %37 = load i32, i32* @O_WRONLY, align 4
  %38 = call i32 @vlc_open(i8* %36, i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %48

41:                                               ; preds = %35
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = load i32, i32* @errno, align 4
  %45 = call i32 @vlc_strerror_c(i32 %44)
  %46 = call i32 (%struct.TYPE_14__*, i8*, ...) @msg_Err(%struct.TYPE_14__* %42, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %43, i32 %45)
  %47 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %47, i32* %3, align 4
  br label %267

48:                                               ; preds = %35
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = call i32 @msg_Dbg(%struct.TYPE_14__* %49, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %50)
  store i32 0, i32* %10, align 4
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  switch i32 %54, label %59 [
    i32 131, label %55
    i32 132, label %55
    i32 129, label %56
    i32 130, label %57
    i32 128, label %58
  ]

55:                                               ; preds = %48, %48
  store i32 136, i32* %9, align 4
  br label %77

56:                                               ; preds = %48
  store i32 134, i32* %9, align 4
  br label %77

57:                                               ; preds = %48
  store i32 135, i32* %9, align 4
  br label %77

58:                                               ; preds = %48
  store i32 133, i32* %9, align 4
  br label %77

59:                                               ; preds = %48
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %61 = call i32 @AOUT_FMT_SPDIF(%struct.TYPE_13__* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %65 = call i32 @var_InheritBool(%struct.TYPE_14__* %64, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  store i32 %65, i32* %10, align 4
  br label %66

66:                                               ; preds = %63, %59
  %67 = load i32, i32* %10, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  store i32 137, i32* %9, align 4
  br label %76

70:                                               ; preds = %66
  %71 = load i32, i32* @HAVE_FPU, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  store i32 136, i32* %9, align 4
  br label %75

74:                                               ; preds = %70
  store i32 135, i32* %9, align 4
  br label %75

75:                                               ; preds = %74, %73
  br label %76

76:                                               ; preds = %75, %69
  br label %77

77:                                               ; preds = %76, %58, %57, %56, %55
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @SNDCTL_DSP_SETFMT, align 4
  %80 = call i64 @ioctl(i32 %78, i32 %79, i32* %9)
  %81 = icmp slt i64 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %77
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* @errno, align 4
  %86 = call i32 @vlc_strerror_c(i32 %85)
  %87 = call i32 (%struct.TYPE_14__*, i8*, ...) @msg_Err(%struct.TYPE_14__* %83, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %84, i32 %86)
  br label %263

88:                                               ; preds = %77
  %89 = load i32, i32* %9, align 4
  switch i32 %89, label %110 [
    i32 133, label %90
    i32 135, label %93
    i32 134, label %96
    i32 136, label %99
    i32 137, label %102
  ]

90:                                               ; preds = %88
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 0
  store i32 128, i32* %92, align 4
  br label %114

93:                                               ; preds = %88
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 0
  store i32 130, i32* %95, align 4
  br label %114

96:                                               ; preds = %88
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 0
  store i32 129, i32* %98, align 4
  br label %114

99:                                               ; preds = %88
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 0
  store i32 132, i32* %101, align 4
  br label %114

102:                                              ; preds = %88
  %103 = load i32, i32* %10, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %102
  %106 = load i32, i32* @VLC_CODEC_SPDIFL, align 4
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 4
  br label %114

109:                                              ; preds = %102
  br label %110

110:                                              ; preds = %88, %109
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %112 = load i32, i32* %9, align 4
  %113 = call i32 (%struct.TYPE_14__*, i8*, ...) @msg_Err(%struct.TYPE_14__* %111, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %112)
  br label %263

114:                                              ; preds = %105, %99, %96, %93, %90
  %115 = load i32, i32* %10, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %114
  br label %121

118:                                              ; preds = %114
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %120 = call i32 @aout_FormatNbChannels(%struct.TYPE_13__* %119)
  br label %121

121:                                              ; preds = %118, %117
  %122 = phi i32 [ 2, %117 ], [ %120, %118 ]
  store i32 %122, i32* %11, align 4
  %123 = load i32, i32* %8, align 4
  %124 = load i32, i32* @SNDCTL_DSP_CHANNELS, align 4
  %125 = call i64 @ioctl(i32 %123, i32 %124, i32* %11)
  %126 = icmp slt i64 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %121
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %129 = load i32, i32* %11, align 4
  %130 = load i32, i32* @errno, align 4
  %131 = call i32 @vlc_strerror_c(i32 %130)
  %132 = call i32 (%struct.TYPE_14__*, i8*, ...) @msg_Err(%struct.TYPE_14__* %128, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i32 %129, i32 %131)
  br label %263

133:                                              ; preds = %121
  %134 = load i32, i32* %11, align 4
  switch i32 %134, label %145 [
    i32 1, label %135
    i32 2, label %137
    i32 4, label %139
    i32 6, label %141
    i32 8, label %143
  ]

135:                                              ; preds = %133
  %136 = load i32, i32* @AOUT_CHAN_CENTER, align 4
  store i32 %136, i32* %11, align 4
  br label %149

137:                                              ; preds = %133
  %138 = load i32, i32* @AOUT_CHANS_STEREO, align 4
  store i32 %138, i32* %11, align 4
  br label %149

139:                                              ; preds = %133
  %140 = load i32, i32* @AOUT_CHANS_4_0, align 4
  store i32 %140, i32* %11, align 4
  br label %149

141:                                              ; preds = %133
  %142 = load i32, i32* @AOUT_CHANS_5_1, align 4
  store i32 %142, i32* %11, align 4
  br label %149

143:                                              ; preds = %133
  %144 = load i32, i32* @AOUT_CHANS_7_1, align 4
  store i32 %144, i32* %11, align 4
  br label %149

145:                                              ; preds = %133
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %147 = load i32, i32* %11, align 4
  %148 = call i32 (%struct.TYPE_14__*, i8*, ...) @msg_Err(%struct.TYPE_14__* %146, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i32 %147)
  br label %263

149:                                              ; preds = %143, %141, %139, %137, %135
  %150 = load i32, i32* %10, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %149
  br label %157

153:                                              ; preds = %149
  %154 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  br label %157

157:                                              ; preds = %153, %152
  %158 = phi i32 [ 48000, %152 ], [ %156, %153 ]
  store i32 %158, i32* %12, align 4
  %159 = load i32, i32* %8, align 4
  %160 = load i32, i32* @SNDCTL_DSP_SPEED, align 4
  %161 = call i64 @ioctl(i32 %159, i32 %160, i32* %12)
  %162 = icmp slt i64 %161, 0
  br i1 %162, label %163, label %169

163:                                              ; preds = %157
  %164 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %165 = load i32, i32* %12, align 4
  %166 = load i32, i32* @errno, align 4
  %167 = call i32 @vlc_strerror_c(i32 %166)
  %168 = call i32 (%struct.TYPE_14__*, i8*, ...) @msg_Err(%struct.TYPE_14__* %164, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i32 %165, i32 %167)
  br label %263

169:                                              ; preds = %157
  %170 = load i32, i32* @TimeGet, align 4
  %171 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %171, i32 0, i32 3
  store i32 %170, i32* %172, align 4
  %173 = load i32, i32* @Play, align 4
  %174 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %174, i32 0, i32 2
  store i32 %173, i32* %175, align 8
  %176 = load i32, i32* @Pause, align 4
  %177 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %177, i32 0, i32 1
  store i32 %176, i32* %178, align 4
  %179 = load i32, i32* @Flush, align 4
  %180 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 0
  store i32 %179, i32* %181, align 8
  %182 = load i32, i32* %10, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %192

184:                                              ; preds = %169
  %185 = load i8*, i8** @AOUT_SPDIF_SIZE, align 8
  %186 = ptrtoint i8* %185 to i32
  %187 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %187, i32 0, i32 2
  store i32 %186, i32* %188, align 4
  %189 = load i32, i32* @A52_FRAME_NB, align 4
  %190 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %190, i32 0, i32 5
  store i32 %189, i32* %191, align 4
  br label %199

192:                                              ; preds = %169
  %193 = load i32, i32* %12, align 4
  %194 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %194, i32 0, i32 1
  store i32 %193, i32* %195, align 4
  %196 = load i32, i32* %11, align 4
  %197 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %197, i32 0, i32 3
  store i32 %196, i32* %198, align 4
  br label %199

199:                                              ; preds = %192, %184
  %200 = load i32, i32* @AUDIO_CHANNEL_TYPE_BITMAP, align 4
  %201 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %201, i32 0, i32 4
  store i32 %200, i32* %202, align 4
  %203 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %204 = call i32 @aout_FormatPrepare(%struct.TYPE_13__* %203)
  %205 = load i32, i32* %10, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %210

207:                                              ; preds = %199
  %208 = load i8*, i8** @AOUT_SPDIF_SIZE, align 8
  %209 = ptrtoint i8* %208 to i32
  store i32 %209, i32* %13, align 4
  br label %222

210:                                              ; preds = %199
  %211 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %212 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* @CLOCK_FREQ, align 4
  %215 = load i32, i32* @AOUT_MIN_PREPARE_TIME, align 4
  %216 = sdiv i32 %214, %215
  %217 = sdiv i32 %213, %216
  %218 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %219 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 4
  %221 = mul nsw i32 %217, %220
  store i32 %221, i32* %13, align 4
  br label %222

222:                                              ; preds = %210, %207
  %223 = load i32, i32* %13, align 4
  %224 = icmp slt i32 %223, 16
  %225 = zext i1 %224 to i32
  %226 = call i64 @unlikely(i32 %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %229

228:                                              ; preds = %222
  store i32 16, i32* %13, align 4
  br label %229

229:                                              ; preds = %228, %222
  %230 = load i32, i32* @AOUT_MAX_ADVANCE_TIME, align 4
  %231 = load i32, i32* @AOUT_MIN_PREPARE_TIME, align 4
  %232 = sdiv i32 %230, %231
  %233 = shl i32 %232, 16
  %234 = load i32, i32* %13, align 4
  %235 = sub nsw i32 %234, 1
  %236 = call i32 @clz(i32 %235)
  %237 = sub nsw i32 32, %236
  %238 = or i32 %233, %237
  store i32 %238, i32* %14, align 4
  %239 = load i32, i32* %8, align 4
  %240 = load i32, i32* @SNDCTL_DSP_SETFRAGMENT, align 4
  %241 = call i64 @ioctl(i32 %239, i32 %240, i32* %14)
  %242 = icmp slt i64 %241, 0
  br i1 %242, label %243, label %249

243:                                              ; preds = %229
  %244 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %245 = load i32, i32* %14, align 4
  %246 = load i32, i32* @errno, align 4
  %247 = call i32 @vlc_strerror_c(i32 %246)
  %248 = call i32 (%struct.TYPE_14__*, i8*, ...) @msg_Err(%struct.TYPE_14__* %244, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0), i32 %245, i32 %247)
  br label %249

249:                                              ; preds = %243, %229
  %250 = load i32, i32* %8, align 4
  %251 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %252 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %251, i32 0, i32 1
  store i32 %250, i32* %252, align 8
  %253 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %254 = call i32 @aout_SoftVolumeStart(%struct.TYPE_14__* %253)
  %255 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %256 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %255, i32 0, i32 2
  store i32 1, i32* %256, align 4
  %257 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %258 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %257, i32 0, i32 3
  %259 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %260 = bitcast %struct.TYPE_13__* %258 to i8*
  %261 = bitcast %struct.TYPE_13__* %259 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %260, i8* align 4 %261, i64 24, i1 false)
  %262 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %262, i32* %3, align 4
  br label %267

263:                                              ; preds = %163, %145, %127, %110, %82
  %264 = load i32, i32* %8, align 4
  %265 = call i32 @vlc_close(i32 %264)
  %266 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %266, i32* %3, align 4
  br label %267

267:                                              ; preds = %263, %249, %41, %21
  %268 = load i32, i32* %3, align 4
  ret i32 %268
}

declare dso_local i32 @aout_FormatNbChannels(%struct.TYPE_13__*) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @vlc_open(i8*, i32) #1

declare dso_local i32 @msg_Err(%struct.TYPE_14__*, i8*, ...) #1

declare dso_local i32 @vlc_strerror_c(i32) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_14__*, i8*, i8*) #1

declare dso_local i32 @AOUT_FMT_SPDIF(%struct.TYPE_13__*) #1

declare dso_local i32 @var_InheritBool(%struct.TYPE_14__*, i8*) #1

declare dso_local i64 @ioctl(i32, i32, i32*) #1

declare dso_local i32 @aout_FormatPrepare(%struct.TYPE_13__*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @clz(i32) #1

declare dso_local i32 @aout_SoftVolumeStart(%struct.TYPE_14__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @vlc_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
