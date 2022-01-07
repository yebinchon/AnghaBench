; ModuleID = '/home/carl/AnghaBench/vlc/modules/audio_output/extr_directsound.c_Start.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/audio_output/extr_directsound.c_Start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32*, i32*, i32*, i32, i32, i64, i64, i64, i32 }
%struct.TYPE_11__ = type { i32, i32, i8*, i32, i32, i32 }

@E_FAIL = common dso_local global i64 0, align 8
@DSSCL_EXCLUSIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"cannot set direct sound cooperative level\00", align 1
@speaker_list = common dso_local global i8** null, align 8
@DSERR_UNSUPPORTED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"directx-audio-float32\00", align 1
@VLC_VAR_BOOL = common dso_local global i32 0, align 4
@VLC_VAR_DOINHERIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"directx-audio-speaker\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"(%s) isn't valid speaker setup option\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"Defaulting to Windows default speaker config\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"spdif\00", align 1
@VLC_CODEC_SPDIFL = common dso_local global i32 0, align 4
@DS_OK = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [36 x i8] c"using A/52 pass-through over S/PDIF\00", align 1
@AOUT_SPDIF_SIZE = common dso_local global i32 0, align 4
@A52_FRAME_NB = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [24 x i8] c"GetSpeakerConfig failed\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"7.1\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"5.1\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"Quad\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"Surround\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"Stereo\00", align 1
@.str.14 = private unnamed_addr constant [68 x i8] c"%s speaker config: %s and stream has %d channels, using %d channels\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"Windows\00", align 1
@AOUT_CHANS_7_1 = common dso_local global i8* null, align 8
@AOUT_CHANS_5_1 = common dso_local global i8* null, align 8
@AOUT_CHANS_4_0 = common dso_local global i8* null, align 8
@AOUT_CHANS_2_0 = common dso_local global i8* null, align 8
@.str.16 = private unnamed_addr constant [13 x i8] c"Non-existant\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"Mono\00", align 1
@AOUT_CHAN_CENTER = common dso_local global i8* null, align 8
@.str.18 = private unnamed_addr constant [22 x i8] c"%s speaker config: %s\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"VLC\00", align 1
@.str.20 = private unnamed_addr constant [33 x i8] c"cannot open directx audio device\00", align 1
@PlayedDataEraser = common dso_local global i32 0, align 4
@VLC_THREAD_PRIORITY_LOW = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [29 x i8] c"Couldn't start eraser thread\00", align 1
@AUDIO_CHANNEL_TYPE_BITMAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.TYPE_12__*, %struct.TYPE_11__*)* @Start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @Start(i32* %0, %struct.TYPE_12__* %1, %struct.TYPE_11__* noalias %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_11__, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %7, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %20 = call i32 @aout_FormatNbChannels(%struct.TYPE_11__* %19)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i64, i64* @E_FAIL, align 8
  store i64 %23, i64* %4, align 8
  br label %294

24:                                               ; preds = %3
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 (...) @GetDesktopWindow()
  %29 = load i32, i32* @DSSCL_EXCLUSIVE, align 4
  %30 = call i64 @IDirectSound_SetCooperativeLevel(i32* %27, i32 %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @msg_Warn(i32* %33, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %35

35:                                               ; preds = %32, %24
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %37 = call i64 @AOUT_FMT_HDMI(%struct.TYPE_11__* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i64, i64* @E_FAIL, align 8
  store i64 %40, i64* %4, align 8
  br label %294

41:                                               ; preds = %35
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %43 = bitcast %struct.TYPE_11__* %8 to i8*
  %44 = bitcast %struct.TYPE_11__* %42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %43, i8* align 8 %44, i64 32, i1 false)
  %45 = load i8**, i8*** @speaker_list, align 8
  store i8** %45, i8*** %9, align 8
  store i32 0, i32* %11, align 4
  %46 = load i64, i64* @DSERR_UNSUPPORTED, align 8
  store i64 %46, i64* %12, align 8
  %47 = load i32*, i32** %5, align 8
  %48 = load i32, i32* @VLC_VAR_BOOL, align 4
  %49 = load i32, i32* @VLC_VAR_DOINHERIT, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @var_Create(i32* %47, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = load i32*, i32** %5, align 8
  %53 = call i8* @var_CreateGetString(i32* %52, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  store i8* %53, i8** %10, align 8
  br label %54

54:                                               ; preds = %68, %41
  %55 = load i8**, i8*** %9, align 8
  %56 = load i8*, i8** %55, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %73

58:                                               ; preds = %54
  %59 = load i8**, i8*** %9, align 8
  %60 = load i8*, i8** %59, align 8
  %61 = load i8*, i8** %10, align 8
  %62 = load i8**, i8*** %9, align 8
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @strlen(i8* %63)
  %65 = call i32 @strncmp(i8* %60, i8* %61, i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %58
  br label %73

68:                                               ; preds = %58
  %69 = load i8**, i8*** %9, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i32 1
  store i8** %70, i8*** %9, align 8
  %71 = load i32, i32* %11, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %11, align 4
  br label %54

73:                                               ; preds = %67, %54
  %74 = load i8**, i8*** %9, align 8
  %75 = load i8*, i8** %74, align 8
  %76 = icmp eq i8* %75, null
  br i1 %76, label %77, label %83

77:                                               ; preds = %73
  %78 = load i32*, i32** %5, align 8
  %79 = load i8*, i8** %10, align 8
  %80 = call i32 (i32*, i8*, ...) @msg_Err(i32* %78, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i8* %79)
  %81 = load i32*, i32** %5, align 8
  %82 = call i32 (i32*, i8*, ...) @msg_Err(i32* %81, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %11, align 4
  br label %83

83:                                               ; preds = %77, %73
  %84 = load i8*, i8** %10, align 8
  %85 = call i32 @free(i8* %84)
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 4
  %88 = call i32 @vlc_mutex_init(i32* %87)
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 5
  %91 = call i32 @vlc_cond_init(i32* %90)
  %92 = call i64 @AOUT_FMT_SPDIF(%struct.TYPE_11__* %8)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %130

94:                                               ; preds = %83
  %95 = load i32*, i32** %5, align 8
  %96 = call i64 @var_InheritBool(i32* %95, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %108

98:                                               ; preds = %94
  %99 = load i32*, i32** %5, align 8
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %101 = load i32, i32* @VLC_CODEC_SPDIFL, align 4
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 2
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 @aout_FormatNbChannels(%struct.TYPE_11__* %8)
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i64 @CreateDSBuffer(i32* %99, %struct.TYPE_12__* %100, i32 %101, i8* %103, i32 %104, i32 %106, i32 0)
  store i64 %107, i64* %12, align 8
  br label %108

108:                                              ; preds = %98, %94
  %109 = load i64, i64* %12, align 8
  %110 = load i64, i64* @DS_OK, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %121

112:                                              ; preds = %108
  %113 = load i32*, i32** %5, align 8
  %114 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %113, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  %115 = load i32, i32* @VLC_CODEC_SPDIFL, align 4
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 3
  store i32 %115, i32* %116, align 8
  %117 = load i32, i32* @AOUT_SPDIF_SIZE, align 4
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 5
  store i32 %117, i32* %118, align 8
  %119 = load i32, i32* @A52_FRAME_NB, align 4
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 4
  store i32 %119, i32* %120, align 4
  br label %129

121:                                              ; preds = %108
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 4
  %124 = call i32 @vlc_mutex_destroy(i32* %123)
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 5
  %127 = call i32 @vlc_cond_destroy(i32* %126)
  %128 = load i64, i64* @E_FAIL, align 8
  store i64 %128, i64* %4, align 8
  br label %294

129:                                              ; preds = %112
  br label %130

130:                                              ; preds = %129, %83
  %131 = load i64, i64* %12, align 8
  %132 = load i64, i64* @DS_OK, align 8
  %133 = icmp ne i64 %131, %132
  br i1 %133, label %134, label %221

134:                                              ; preds = %130
  %135 = load i32, i32* %11, align 4
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %183

137:                                              ; preds = %134
  store i32 2, i32* %14, align 4
  %138 = call i32 @aout_FormatNbChannels(%struct.TYPE_11__* %8)
  store i32 %138, i32* %15, align 4
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 1
  %141 = load i32*, i32** %140, align 8
  %142 = call i64 @IDirectSound_GetSpeakerConfig(i32* %141, i32* %13)
  store i64 %142, i64* %12, align 8
  %143 = load i64, i64* %12, align 8
  %144 = call i64 @FAILED(i64 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %137
  store i32 129, i32* %13, align 4
  %147 = load i32*, i32** %5, align 8
  %148 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %147, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  br label %149

149:                                              ; preds = %146, %137
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8** %16, align 8
  %150 = load i32, i32* %13, align 4
  %151 = call i32 @DSSPEAKER_CONFIG(i32 %150)
  switch i32 %151, label %157 [
    i32 133, label %152
    i32 132, label %152
    i32 135, label %153
    i32 134, label %153
    i32 130, label %154
    i32 128, label %155
    i32 129, label %156
  ]

152:                                              ; preds = %149, %149
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8** %16, align 8
  store i32 8, i32* %14, align 4
  br label %157

153:                                              ; preds = %149, %149
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8** %16, align 8
  store i32 6, i32* %14, align 4
  br label %157

154:                                              ; preds = %149
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8** %16, align 8
  store i32 4, i32* %14, align 4
  br label %157

155:                                              ; preds = %149
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i8** %16, align 8
  store i32 4, i32* %14, align 4
  br label %157

156:                                              ; preds = %149
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i8** %16, align 8
  store i32 2, i32* %14, align 4
  br label %157

157:                                              ; preds = %149, %156, %155, %154, %153, %152
  %158 = load i32, i32* %14, align 4
  %159 = load i32, i32* %15, align 4
  %160 = icmp sge i32 %158, %159
  br i1 %160, label %161, label %163

161:                                              ; preds = %157
  %162 = load i32, i32* %15, align 4
  store i32 %162, i32* %14, align 4
  br label %163

163:                                              ; preds = %161, %157
  %164 = load i32*, i32** %5, align 8
  %165 = load i8*, i8** %16, align 8
  %166 = load i32, i32* %15, align 4
  %167 = load i32, i32* %14, align 4
  %168 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %164, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), i8* %165, i32 %166, i32 %167)
  %169 = load i32, i32* %14, align 4
  switch i32 %169, label %179 [
    i32 8, label %170
    i32 7, label %173
    i32 6, label %173
    i32 5, label %176
    i32 4, label %176
  ]

170:                                              ; preds = %163
  %171 = load i8*, i8** @AOUT_CHANS_7_1, align 8
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 2
  store i8* %171, i8** %172, align 8
  br label %182

173:                                              ; preds = %163, %163
  %174 = load i8*, i8** @AOUT_CHANS_5_1, align 8
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 2
  store i8* %174, i8** %175, align 8
  br label %182

176:                                              ; preds = %163, %163
  %177 = load i8*, i8** @AOUT_CHANS_4_0, align 8
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 2
  store i8* %177, i8** %178, align 8
  br label %182

179:                                              ; preds = %163
  %180 = load i8*, i8** @AOUT_CHANS_2_0, align 8
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 2
  store i8* %180, i8** %181, align 8
  br label %182

182:                                              ; preds = %179, %176, %173, %170
  br label %204

183:                                              ; preds = %134
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0), i8** %17, align 8
  %184 = load i32, i32* %11, align 4
  switch i32 %184, label %200 [
    i32 1, label %185
    i32 2, label %188
    i32 3, label %191
    i32 4, label %194
    i32 5, label %197
  ]

185:                                              ; preds = %183
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i8** %17, align 8
  %186 = load i8*, i8** @AOUT_CHAN_CENTER, align 8
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 2
  store i8* %186, i8** %187, align 8
  br label %200

188:                                              ; preds = %183
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i8** %17, align 8
  %189 = load i8*, i8** @AOUT_CHANS_2_0, align 8
  %190 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 2
  store i8* %189, i8** %190, align 8
  br label %200

191:                                              ; preds = %183
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8** %17, align 8
  %192 = load i8*, i8** @AOUT_CHANS_4_0, align 8
  %193 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 2
  store i8* %192, i8** %193, align 8
  br label %200

194:                                              ; preds = %183
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8** %17, align 8
  %195 = load i8*, i8** @AOUT_CHANS_5_1, align 8
  %196 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 2
  store i8* %195, i8** %196, align 8
  br label %200

197:                                              ; preds = %183
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8** %17, align 8
  %198 = load i8*, i8** @AOUT_CHANS_7_1, align 8
  %199 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 2
  store i8* %198, i8** %199, align 8
  br label %200

200:                                              ; preds = %183, %197, %194, %191, %188, %185
  %201 = load i32*, i32** %5, align 8
  %202 = load i8*, i8** %17, align 8
  %203 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %201, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0), i8* %202)
  br label %204

204:                                              ; preds = %200, %182
  %205 = call i32 @aout_FormatPrepare(%struct.TYPE_11__* %8)
  %206 = load i32*, i32** %5, align 8
  %207 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %208 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 3
  %209 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 2
  %210 = load i8*, i8** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = call i64 @CreateDSBufferPCM(i32* %206, %struct.TYPE_12__* %207, i32* %208, i8* %210, i32 %212, i32 0)
  store i64 %213, i64* %12, align 8
  %214 = load i64, i64* %12, align 8
  %215 = load i64, i64* @DS_OK, align 8
  %216 = icmp ne i64 %214, %215
  br i1 %216, label %217, label %220

217:                                              ; preds = %204
  %218 = load i32*, i32** %5, align 8
  %219 = call i32 (i32*, i8*, ...) @msg_Err(i32* %218, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.20, i64 0, i64 0))
  br label %256

220:                                              ; preds = %204
  br label %221

221:                                              ; preds = %220, %130
  %222 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %223 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %222, i32 0, i32 9
  %224 = load i32, i32* @PlayedDataEraser, align 4
  %225 = load i32*, i32** %5, align 8
  %226 = bitcast i32* %225 to i8*
  %227 = load i32, i32* @VLC_THREAD_PRIORITY_LOW, align 4
  %228 = call i32 @vlc_clone(i32* %223, i32 %224, i8* %226, i32 %227)
  store i32 %228, i32* %18, align 4
  %229 = load i32, i32* %18, align 4
  %230 = call i64 @unlikely(i32 %229)
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %241

232:                                              ; preds = %221
  %233 = load i32, i32* %18, align 4
  %234 = load i32, i32* @ENOMEM, align 4
  %235 = icmp ne i32 %233, %234
  br i1 %235, label %236, label %239

236:                                              ; preds = %232
  %237 = load i32*, i32** %5, align 8
  %238 = call i32 (i32*, i8*, ...) @msg_Err(i32* %237, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.21, i64 0, i64 0))
  br label %239

239:                                              ; preds = %236, %232
  %240 = load i64, i64* @E_FAIL, align 8
  store i64 %240, i64* %12, align 8
  br label %256

241:                                              ; preds = %221
  %242 = load i32, i32* @AUDIO_CHANNEL_TYPE_BITMAP, align 4
  %243 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  store i32 %242, i32* %243, align 8
  %244 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %245 = bitcast %struct.TYPE_11__* %244 to i8*
  %246 = bitcast %struct.TYPE_11__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %245, i8* align 8 %246, i64 32, i1 false)
  %247 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %248 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %247, i32 0, i32 0
  store i32 0, i32* %248, align 8
  %249 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %250 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %249, i32 0, i32 8
  store i64 0, i64* %250, align 8
  %251 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %252 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %251, i32 0, i32 7
  store i64 0, i64* %252, align 8
  %253 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %254 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %253, i32 0, i32 6
  store i64 0, i64* %254, align 8
  %255 = load i64, i64* @DS_OK, align 8
  store i64 %255, i64* %4, align 8
  br label %294

256:                                              ; preds = %239, %217
  %257 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %258 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %257, i32 0, i32 5
  %259 = call i32 @vlc_cond_destroy(i32* %258)
  %260 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %261 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %260, i32 0, i32 4
  %262 = call i32 @vlc_mutex_destroy(i32* %261)
  %263 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %264 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %263, i32 0, i32 3
  %265 = load i32*, i32** %264, align 8
  %266 = icmp ne i32* %265, null
  br i1 %266, label %267, label %274

267:                                              ; preds = %256
  %268 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %269 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %268, i32 0, i32 3
  %270 = load i32*, i32** %269, align 8
  %271 = call i32 @IDirectSoundNotify_Release(i32* %270)
  %272 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %273 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %272, i32 0, i32 3
  store i32* null, i32** %273, align 8
  br label %274

274:                                              ; preds = %267, %256
  %275 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %276 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %275, i32 0, i32 2
  %277 = load i32*, i32** %276, align 8
  %278 = icmp ne i32* %277, null
  br i1 %278, label %279, label %286

279:                                              ; preds = %274
  %280 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %281 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %280, i32 0, i32 2
  %282 = load i32*, i32** %281, align 8
  %283 = call i32 @IDirectSoundBuffer_Release(i32* %282)
  %284 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %285 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %284, i32 0, i32 2
  store i32* null, i32** %285, align 8
  br label %286

286:                                              ; preds = %279, %274
  %287 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %288 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %287, i32 0, i32 1
  %289 = load i32*, i32** %288, align 8
  %290 = call i32 @IDirectSound_Release(i32* %289)
  %291 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %292 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %291, i32 0, i32 1
  store i32* null, i32** %292, align 8
  %293 = load i64, i64* %12, align 8
  store i64 %293, i64* %4, align 8
  br label %294

294:                                              ; preds = %286, %241, %121, %39, %22
  %295 = load i64, i64* %4, align 8
  ret i64 %295
}

declare dso_local i32 @aout_FormatNbChannels(%struct.TYPE_11__*) #1

declare dso_local i64 @IDirectSound_SetCooperativeLevel(i32*, i32, i32) #1

declare dso_local i32 @GetDesktopWindow(...) #1

declare dso_local i32 @msg_Warn(i32*, i8*) #1

declare dso_local i64 @AOUT_FMT_HDMI(%struct.TYPE_11__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @var_Create(i32*, i8*, i32) #1

declare dso_local i8* @var_CreateGetString(i32*, i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @msg_Err(i32*, i8*, ...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @vlc_mutex_init(i32*) #1

declare dso_local i32 @vlc_cond_init(i32*) #1

declare dso_local i64 @AOUT_FMT_SPDIF(%struct.TYPE_11__*) #1

declare dso_local i64 @var_InheritBool(i32*, i8*) #1

declare dso_local i64 @CreateDSBuffer(i32*, %struct.TYPE_12__*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @msg_Dbg(i32*, i8*, ...) #1

declare dso_local i32 @vlc_mutex_destroy(i32*) #1

declare dso_local i32 @vlc_cond_destroy(i32*) #1

declare dso_local i64 @IDirectSound_GetSpeakerConfig(i32*, i32*) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i32 @DSSPEAKER_CONFIG(i32) #1

declare dso_local i32 @aout_FormatPrepare(%struct.TYPE_11__*) #1

declare dso_local i64 @CreateDSBufferPCM(i32*, %struct.TYPE_12__*, i32*, i8*, i32, i32) #1

declare dso_local i32 @vlc_clone(i32*, i32, i8*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @IDirectSoundNotify_Release(i32*) #1

declare dso_local i32 @IDirectSoundBuffer_Release(i32*) #1

declare dso_local i32 @IDirectSound_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
