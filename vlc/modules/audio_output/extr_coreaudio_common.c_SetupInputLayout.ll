; ModuleID = '/home/carl/AnghaBench/vlc/modules/audio_output/extr_coreaudio_common.c_SetupInputLayout.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/audio_output/extr_coreaudio_common.c_SetupInputLayout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32 }
%struct.aout_sys_common = type { i8*, i32 }

@AOUT_CHAN_MAX = common dso_local global i32 0, align 4
@kAudioChannelLayoutTag_Mono = common dso_local global i32 0, align 4
@kAudioChannelLayoutTag_Stereo = common dso_local global i32 0, align 4
@AOUT_CHAN_CENTER = common dso_local global i32 0, align 4
@kAudioChannelLayoutTag_DVD_7 = common dso_local global i32 0, align 4
@AOUT_CHAN_LFE = common dso_local global i32 0, align 4
@kAudioChannelLayoutTag_DVD_4 = common dso_local global i32 0, align 4
@kAudioChannelLayoutTag_DVD_10 = common dso_local global i32 0, align 4
@AOUT_CHANS_REAR = common dso_local global i32 0, align 4
@kAudioChannelLayoutTag_DVD_3 = common dso_local global i32 0, align 4
@AOUT_CHANS_CENTER = common dso_local global i32 0, align 4
@kAudioChannelLayoutTag_DVD_19 = common dso_local global i32 0, align 4
@kAudioChannelLayoutTag_DVD_18 = common dso_local global i32 0, align 4
@kAudioChannelLayoutTag_DVD_20 = common dso_local global i32 0, align 4
@AOUT_CHAN_LEFT = common dso_local global i32 0, align 4
@AOUT_CHAN_RIGHT = common dso_local global i32 0, align 4
@AOUT_CHAN_REARLEFT = common dso_local global i32 0, align 4
@AOUT_CHAN_REARRIGHT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"channel reordering needed for 5.1 output\00", align 1
@kAudioChannelLayoutTag_AudioUnit_6_0 = common dso_local global i32 0, align 4
@AOUT_CHAN_REARCENTER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"channel reordering needed for 6.0 output\00", align 1
@kAudioChannelLayoutTag_MPEG_6_1_A = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"channel reordering needed for 6.1 output\00", align 1
@kAudioChannelLayoutTag_MPEG_7_1_C = common dso_local global i32 0, align 4
@AOUT_CHAN_MIDDLELEFT = common dso_local global i32 0, align 4
@AOUT_CHAN_MIDDLERIGHT = common dso_local global i32 0, align 4
@kAudioChannelLayoutTag_DTS_8_0_B = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"channel reordering needed for 7.1 / 8.0 output\00", align 1
@kAudioChannelLayoutTag_DTS_8_1_B = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"channel reordering needed for 8.1 output\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.TYPE_7__*, i32*)* @SetupInputLayout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SetupInputLayout(%struct.TYPE_8__* %0, %struct.TYPE_7__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.aout_sys_common*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.aout_sys_common*
  store %struct.aout_sys_common* %13, %struct.aout_sys_common** %7, align 8
  %14 = load i32, i32* @AOUT_CHAN_MAX, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %8, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %9, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %19 = call i32 @aout_FormatNbChannels(%struct.TYPE_7__* %18)
  switch i32 %19, label %312 [
    i32 1, label %20
    i32 2, label %23
    i32 3, label %26
    i32 4, label %48
    i32 5, label %83
    i32 6, label %105
    i32 7, label %177
    i32 8, label %211
    i32 9, label %274
  ]

20:                                               ; preds = %3
  %21 = load i32, i32* @kAudioChannelLayoutTag_Mono, align 4
  %22 = load i32*, i32** %6, align 8
  store i32 %21, i32* %22, align 4
  br label %312

23:                                               ; preds = %3
  %24 = load i32, i32* @kAudioChannelLayoutTag_Stereo, align 4
  %25 = load i32*, i32** %6, align 8
  store i32 %24, i32* %25, align 4
  br label %312

26:                                               ; preds = %3
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @AOUT_CHAN_CENTER, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load i32, i32* @kAudioChannelLayoutTag_DVD_7, align 4
  %35 = load i32*, i32** %6, align 8
  store i32 %34, i32* %35, align 4
  br label %47

36:                                               ; preds = %26
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @AOUT_CHAN_LFE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load i32, i32* @kAudioChannelLayoutTag_DVD_4, align 4
  %45 = load i32*, i32** %6, align 8
  store i32 %44, i32* %45, align 4
  br label %46

46:                                               ; preds = %43, %36
  br label %47

47:                                               ; preds = %46, %33
  br label %312

48:                                               ; preds = %3
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @AOUT_CHAN_CENTER, align 4
  %53 = load i32, i32* @AOUT_CHAN_LFE, align 4
  %54 = or i32 %52, %53
  %55 = and i32 %51, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %48
  %58 = load i32, i32* @kAudioChannelLayoutTag_DVD_10, align 4
  %59 = load i32*, i32** %6, align 8
  store i32 %58, i32* %59, align 4
  br label %82

60:                                               ; preds = %48
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @AOUT_CHANS_REAR, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %60
  %68 = load i32, i32* @kAudioChannelLayoutTag_DVD_3, align 4
  %69 = load i32*, i32** %6, align 8
  store i32 %68, i32* %69, align 4
  br label %81

70:                                               ; preds = %60
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @AOUT_CHANS_CENTER, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %70
  %78 = load i32, i32* @kAudioChannelLayoutTag_DVD_3, align 4
  %79 = load i32*, i32** %6, align 8
  store i32 %78, i32* %79, align 4
  br label %80

80:                                               ; preds = %77, %70
  br label %81

81:                                               ; preds = %80, %67
  br label %82

82:                                               ; preds = %81, %57
  br label %312

83:                                               ; preds = %3
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @AOUT_CHAN_CENTER, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %83
  %91 = load i32, i32* @kAudioChannelLayoutTag_DVD_19, align 4
  %92 = load i32*, i32** %6, align 8
  store i32 %91, i32* %92, align 4
  br label %104

93:                                               ; preds = %83
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @AOUT_CHAN_LFE, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %93
  %101 = load i32, i32* @kAudioChannelLayoutTag_DVD_18, align 4
  %102 = load i32*, i32** %6, align 8
  store i32 %101, i32* %102, align 4
  br label %103

103:                                              ; preds = %100, %93
  br label %104

104:                                              ; preds = %103, %90
  br label %312

105:                                              ; preds = %3
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @AOUT_CHAN_LFE, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %144

112:                                              ; preds = %105
  %113 = load i32, i32* @kAudioChannelLayoutTag_DVD_20, align 4
  %114 = load i32*, i32** %6, align 8
  store i32 %113, i32* %114, align 4
  %115 = load i32, i32* @AOUT_CHAN_LEFT, align 4
  %116 = getelementptr inbounds i32, i32* %17, i64 0
  store i32 %115, i32* %116, align 16
  %117 = load i32, i32* @AOUT_CHAN_RIGHT, align 4
  %118 = getelementptr inbounds i32, i32* %17, i64 1
  store i32 %117, i32* %118, align 4
  %119 = load i32, i32* @AOUT_CHAN_REARLEFT, align 4
  %120 = getelementptr inbounds i32, i32* %17, i64 2
  store i32 %119, i32* %120, align 8
  %121 = load i32, i32* @AOUT_CHAN_REARRIGHT, align 4
  %122 = getelementptr inbounds i32, i32* %17, i64 3
  store i32 %121, i32* %122, align 4
  %123 = load i32, i32* @AOUT_CHAN_CENTER, align 4
  %124 = getelementptr inbounds i32, i32* %17, i64 4
  store i32 %123, i32* %124, align 16
  %125 = load i32, i32* @AOUT_CHAN_LFE, align 4
  %126 = getelementptr inbounds i32, i32* %17, i64 5
  store i32 %125, i32* %126, align 4
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.aout_sys_common*, %struct.aout_sys_common** %7, align 8
  %131 = getelementptr inbounds %struct.aout_sys_common, %struct.aout_sys_common* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = call i8* @aout_CheckChannelReorder(i32* null, i32* %17, i32 %129, i32 %132)
  %134 = load %struct.aout_sys_common*, %struct.aout_sys_common** %7, align 8
  %135 = getelementptr inbounds %struct.aout_sys_common, %struct.aout_sys_common* %134, i32 0, i32 0
  store i8* %133, i8** %135, align 8
  %136 = load %struct.aout_sys_common*, %struct.aout_sys_common** %7, align 8
  %137 = getelementptr inbounds %struct.aout_sys_common, %struct.aout_sys_common* %136, i32 0, i32 0
  %138 = load i8*, i8** %137, align 8
  %139 = icmp ne i8* %138, null
  br i1 %139, label %140, label %143

140:                                              ; preds = %112
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %142 = call i32 @msg_Dbg(%struct.TYPE_8__* %141, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %143

143:                                              ; preds = %140, %112
  br label %176

144:                                              ; preds = %105
  %145 = load i32, i32* @kAudioChannelLayoutTag_AudioUnit_6_0, align 4
  %146 = load i32*, i32** %6, align 8
  store i32 %145, i32* %146, align 4
  %147 = load i32, i32* @AOUT_CHAN_LEFT, align 4
  %148 = getelementptr inbounds i32, i32* %17, i64 0
  store i32 %147, i32* %148, align 16
  %149 = load i32, i32* @AOUT_CHAN_RIGHT, align 4
  %150 = getelementptr inbounds i32, i32* %17, i64 1
  store i32 %149, i32* %150, align 4
  %151 = load i32, i32* @AOUT_CHAN_REARLEFT, align 4
  %152 = getelementptr inbounds i32, i32* %17, i64 2
  store i32 %151, i32* %152, align 8
  %153 = load i32, i32* @AOUT_CHAN_REARRIGHT, align 4
  %154 = getelementptr inbounds i32, i32* %17, i64 3
  store i32 %153, i32* %154, align 4
  %155 = load i32, i32* @AOUT_CHAN_CENTER, align 4
  %156 = getelementptr inbounds i32, i32* %17, i64 4
  store i32 %155, i32* %156, align 16
  %157 = load i32, i32* @AOUT_CHAN_REARCENTER, align 4
  %158 = getelementptr inbounds i32, i32* %17, i64 5
  store i32 %157, i32* %158, align 4
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.aout_sys_common*, %struct.aout_sys_common** %7, align 8
  %163 = getelementptr inbounds %struct.aout_sys_common, %struct.aout_sys_common* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = call i8* @aout_CheckChannelReorder(i32* null, i32* %17, i32 %161, i32 %164)
  %166 = load %struct.aout_sys_common*, %struct.aout_sys_common** %7, align 8
  %167 = getelementptr inbounds %struct.aout_sys_common, %struct.aout_sys_common* %166, i32 0, i32 0
  store i8* %165, i8** %167, align 8
  %168 = load %struct.aout_sys_common*, %struct.aout_sys_common** %7, align 8
  %169 = getelementptr inbounds %struct.aout_sys_common, %struct.aout_sys_common* %168, i32 0, i32 0
  %170 = load i8*, i8** %169, align 8
  %171 = icmp ne i8* %170, null
  br i1 %171, label %172, label %175

172:                                              ; preds = %144
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %174 = call i32 @msg_Dbg(%struct.TYPE_8__* %173, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %175

175:                                              ; preds = %172, %144
  br label %176

176:                                              ; preds = %175, %143
  br label %312

177:                                              ; preds = %3
  %178 = load i32, i32* @kAudioChannelLayoutTag_MPEG_6_1_A, align 4
  %179 = load i32*, i32** %6, align 8
  store i32 %178, i32* %179, align 4
  %180 = load i32, i32* @AOUT_CHAN_LEFT, align 4
  %181 = getelementptr inbounds i32, i32* %17, i64 0
  store i32 %180, i32* %181, align 16
  %182 = load i32, i32* @AOUT_CHAN_RIGHT, align 4
  %183 = getelementptr inbounds i32, i32* %17, i64 1
  store i32 %182, i32* %183, align 4
  %184 = load i32, i32* @AOUT_CHAN_CENTER, align 4
  %185 = getelementptr inbounds i32, i32* %17, i64 2
  store i32 %184, i32* %185, align 8
  %186 = load i32, i32* @AOUT_CHAN_LFE, align 4
  %187 = getelementptr inbounds i32, i32* %17, i64 3
  store i32 %186, i32* %187, align 4
  %188 = load i32, i32* @AOUT_CHAN_REARLEFT, align 4
  %189 = getelementptr inbounds i32, i32* %17, i64 4
  store i32 %188, i32* %189, align 16
  %190 = load i32, i32* @AOUT_CHAN_REARRIGHT, align 4
  %191 = getelementptr inbounds i32, i32* %17, i64 5
  store i32 %190, i32* %191, align 4
  %192 = load i32, i32* @AOUT_CHAN_REARCENTER, align 4
  %193 = getelementptr inbounds i32, i32* %17, i64 6
  store i32 %192, i32* %193, align 8
  %194 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.aout_sys_common*, %struct.aout_sys_common** %7, align 8
  %198 = getelementptr inbounds %struct.aout_sys_common, %struct.aout_sys_common* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 8
  %200 = call i8* @aout_CheckChannelReorder(i32* null, i32* %17, i32 %196, i32 %199)
  %201 = load %struct.aout_sys_common*, %struct.aout_sys_common** %7, align 8
  %202 = getelementptr inbounds %struct.aout_sys_common, %struct.aout_sys_common* %201, i32 0, i32 0
  store i8* %200, i8** %202, align 8
  %203 = load %struct.aout_sys_common*, %struct.aout_sys_common** %7, align 8
  %204 = getelementptr inbounds %struct.aout_sys_common, %struct.aout_sys_common* %203, i32 0, i32 0
  %205 = load i8*, i8** %204, align 8
  %206 = icmp ne i8* %205, null
  br i1 %206, label %207, label %210

207:                                              ; preds = %177
  %208 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %209 = call i32 @msg_Dbg(%struct.TYPE_8__* %208, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  br label %210

210:                                              ; preds = %207, %177
  br label %312

211:                                              ; preds = %3
  %212 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* @AOUT_CHAN_LFE, align 4
  %216 = and i32 %214, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %237

218:                                              ; preds = %211
  %219 = load i32, i32* @kAudioChannelLayoutTag_MPEG_7_1_C, align 4
  %220 = load i32*, i32** %6, align 8
  store i32 %219, i32* %220, align 4
  %221 = load i32, i32* @AOUT_CHAN_LEFT, align 4
  %222 = getelementptr inbounds i32, i32* %17, i64 0
  store i32 %221, i32* %222, align 16
  %223 = load i32, i32* @AOUT_CHAN_RIGHT, align 4
  %224 = getelementptr inbounds i32, i32* %17, i64 1
  store i32 %223, i32* %224, align 4
  %225 = load i32, i32* @AOUT_CHAN_CENTER, align 4
  %226 = getelementptr inbounds i32, i32* %17, i64 2
  store i32 %225, i32* %226, align 8
  %227 = load i32, i32* @AOUT_CHAN_LFE, align 4
  %228 = getelementptr inbounds i32, i32* %17, i64 3
  store i32 %227, i32* %228, align 4
  %229 = load i32, i32* @AOUT_CHAN_MIDDLELEFT, align 4
  %230 = getelementptr inbounds i32, i32* %17, i64 4
  store i32 %229, i32* %230, align 16
  %231 = load i32, i32* @AOUT_CHAN_MIDDLERIGHT, align 4
  %232 = getelementptr inbounds i32, i32* %17, i64 5
  store i32 %231, i32* %232, align 4
  %233 = load i32, i32* @AOUT_CHAN_REARLEFT, align 4
  %234 = getelementptr inbounds i32, i32* %17, i64 6
  store i32 %233, i32* %234, align 8
  %235 = load i32, i32* @AOUT_CHAN_REARRIGHT, align 4
  %236 = getelementptr inbounds i32, i32* %17, i64 7
  store i32 %235, i32* %236, align 4
  br label %256

237:                                              ; preds = %211
  %238 = load i32, i32* @kAudioChannelLayoutTag_DTS_8_0_B, align 4
  %239 = load i32*, i32** %6, align 8
  store i32 %238, i32* %239, align 4
  %240 = load i32, i32* @AOUT_CHAN_MIDDLELEFT, align 4
  %241 = getelementptr inbounds i32, i32* %17, i64 0
  store i32 %240, i32* %241, align 16
  %242 = load i32, i32* @AOUT_CHAN_CENTER, align 4
  %243 = getelementptr inbounds i32, i32* %17, i64 1
  store i32 %242, i32* %243, align 4
  %244 = load i32, i32* @AOUT_CHAN_MIDDLERIGHT, align 4
  %245 = getelementptr inbounds i32, i32* %17, i64 2
  store i32 %244, i32* %245, align 8
  %246 = load i32, i32* @AOUT_CHAN_LEFT, align 4
  %247 = getelementptr inbounds i32, i32* %17, i64 3
  store i32 %246, i32* %247, align 4
  %248 = load i32, i32* @AOUT_CHAN_RIGHT, align 4
  %249 = getelementptr inbounds i32, i32* %17, i64 4
  store i32 %248, i32* %249, align 16
  %250 = load i32, i32* @AOUT_CHAN_REARLEFT, align 4
  %251 = getelementptr inbounds i32, i32* %17, i64 5
  store i32 %250, i32* %251, align 4
  %252 = load i32, i32* @AOUT_CHAN_REARCENTER, align 4
  %253 = getelementptr inbounds i32, i32* %17, i64 6
  store i32 %252, i32* %253, align 8
  %254 = load i32, i32* @AOUT_CHAN_REARRIGHT, align 4
  %255 = getelementptr inbounds i32, i32* %17, i64 7
  store i32 %254, i32* %255, align 4
  br label %256

256:                                              ; preds = %237, %218
  %257 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %258 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 4
  %260 = load %struct.aout_sys_common*, %struct.aout_sys_common** %7, align 8
  %261 = getelementptr inbounds %struct.aout_sys_common, %struct.aout_sys_common* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 8
  %263 = call i8* @aout_CheckChannelReorder(i32* null, i32* %17, i32 %259, i32 %262)
  %264 = load %struct.aout_sys_common*, %struct.aout_sys_common** %7, align 8
  %265 = getelementptr inbounds %struct.aout_sys_common, %struct.aout_sys_common* %264, i32 0, i32 0
  store i8* %263, i8** %265, align 8
  %266 = load %struct.aout_sys_common*, %struct.aout_sys_common** %7, align 8
  %267 = getelementptr inbounds %struct.aout_sys_common, %struct.aout_sys_common* %266, i32 0, i32 0
  %268 = load i8*, i8** %267, align 8
  %269 = icmp ne i8* %268, null
  br i1 %269, label %270, label %273

270:                                              ; preds = %256
  %271 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %272 = call i32 @msg_Dbg(%struct.TYPE_8__* %271, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  br label %273

273:                                              ; preds = %270, %256
  br label %312

274:                                              ; preds = %3
  %275 = load i32, i32* @kAudioChannelLayoutTag_DTS_8_1_B, align 4
  %276 = load i32*, i32** %6, align 8
  store i32 %275, i32* %276, align 4
  %277 = load i32, i32* @AOUT_CHAN_MIDDLELEFT, align 4
  %278 = getelementptr inbounds i32, i32* %17, i64 0
  store i32 %277, i32* %278, align 16
  %279 = load i32, i32* @AOUT_CHAN_CENTER, align 4
  %280 = getelementptr inbounds i32, i32* %17, i64 1
  store i32 %279, i32* %280, align 4
  %281 = load i32, i32* @AOUT_CHAN_MIDDLERIGHT, align 4
  %282 = getelementptr inbounds i32, i32* %17, i64 2
  store i32 %281, i32* %282, align 8
  %283 = load i32, i32* @AOUT_CHAN_LEFT, align 4
  %284 = getelementptr inbounds i32, i32* %17, i64 3
  store i32 %283, i32* %284, align 4
  %285 = load i32, i32* @AOUT_CHAN_RIGHT, align 4
  %286 = getelementptr inbounds i32, i32* %17, i64 4
  store i32 %285, i32* %286, align 16
  %287 = load i32, i32* @AOUT_CHAN_REARLEFT, align 4
  %288 = getelementptr inbounds i32, i32* %17, i64 5
  store i32 %287, i32* %288, align 4
  %289 = load i32, i32* @AOUT_CHAN_REARCENTER, align 4
  %290 = getelementptr inbounds i32, i32* %17, i64 6
  store i32 %289, i32* %290, align 8
  %291 = load i32, i32* @AOUT_CHAN_REARRIGHT, align 4
  %292 = getelementptr inbounds i32, i32* %17, i64 7
  store i32 %291, i32* %292, align 4
  %293 = load i32, i32* @AOUT_CHAN_LFE, align 4
  %294 = getelementptr inbounds i32, i32* %17, i64 8
  store i32 %293, i32* %294, align 16
  %295 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %296 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 4
  %298 = load %struct.aout_sys_common*, %struct.aout_sys_common** %7, align 8
  %299 = getelementptr inbounds %struct.aout_sys_common, %struct.aout_sys_common* %298, i32 0, i32 1
  %300 = load i32, i32* %299, align 8
  %301 = call i8* @aout_CheckChannelReorder(i32* null, i32* %17, i32 %297, i32 %300)
  %302 = load %struct.aout_sys_common*, %struct.aout_sys_common** %7, align 8
  %303 = getelementptr inbounds %struct.aout_sys_common, %struct.aout_sys_common* %302, i32 0, i32 0
  store i8* %301, i8** %303, align 8
  %304 = load %struct.aout_sys_common*, %struct.aout_sys_common** %7, align 8
  %305 = getelementptr inbounds %struct.aout_sys_common, %struct.aout_sys_common* %304, i32 0, i32 0
  %306 = load i8*, i8** %305, align 8
  %307 = icmp ne i8* %306, null
  br i1 %307, label %308, label %311

308:                                              ; preds = %274
  %309 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %310 = call i32 @msg_Dbg(%struct.TYPE_8__* %309, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  br label %311

311:                                              ; preds = %308, %274
  br label %312

312:                                              ; preds = %3, %311, %273, %210, %176, %104, %82, %47, %23, %20
  %313 = load i32, i32* @VLC_SUCCESS, align 4
  %314 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %314)
  ret i32 %313
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @aout_FormatNbChannels(%struct.TYPE_7__*) #2

declare dso_local i8* @aout_CheckChannelReorder(i32*, i32*, i32, i32) #2

declare dso_local i32 @msg_Dbg(%struct.TYPE_8__*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
