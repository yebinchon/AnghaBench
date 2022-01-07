; ModuleID = '/home/carl/AnghaBench/vlc/modules/audio_output/extr_directsound.c_CreateDSBuffer.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/audio_output/extr_directsound.c_CreateDSBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, i32, i32*, i32*, i32, i32, i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_11__, i32, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32, i32*, i32 }

@pi_vlc_chan_order_wg4 = common dso_local global i32* null, align 8
@pi_channels_in = common dso_local global i32* null, align 8
@SPEAKER_FRONT_LEFT = common dso_local global i32 0, align 4
@SPEAKER_FRONT_RIGHT = common dso_local global i32 0, align 4
@WAVE_FORMAT_DOLBY_AC3_SPDIF = common dso_local global i32 0, align 4
@_KSDATAFORMAT_SUBTYPE_DOLBY_AC3_SPDIF = common dso_local global i32 0, align 4
@WAVE_FORMAT_IEEE_FLOAT = common dso_local global i32 0, align 4
@_KSDATAFORMAT_SUBTYPE_IEEE_FLOAT = common dso_local global i32 0, align 4
@WAVE_FORMAT_PCM = common dso_local global i32 0, align 4
@_KSDATAFORMAT_SUBTYPE_PCM = common dso_local global i32 0, align 4
@DSBCAPS_GETCURRENTPOSITION2 = common dso_local global i32 0, align 4
@DSBCAPS_GLOBALFOCUS = common dso_local global i32 0, align 4
@DSBCAPS_CTRLVOLUME = common dso_local global i32 0, align 4
@DSBCAPS_CTRLPOSITIONNOTIFY = common dso_local global i32 0, align 4
@WAVE_FORMAT_EXTENSIBLE = common dso_local global i32 0, align 4
@DSBCAPS_LOCHARDWARE = common dso_local global i32 0, align 4
@DS_BUF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"couldn't use hardware sound buffer\00", align 1
@DS_OK = common dso_local global i64 0, align 8
@pi_channels_out = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"channel reordering needed\00", align 1
@IID_IDirectSoundNotify = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Couldn't query IDirectSoundNotify\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.TYPE_12__*, i32, i32, i32, i32, i32)* @CreateDSBuffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @CreateDSBuffer(i32* %0, %struct.TYPE_12__* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_13__, align 4
  %17 = alloca %struct.TYPE_14__, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  store i32 0, i32* %20, align 4
  store i32 0, i32* %19, align 4
  br label %21

21:                                               ; preds = %47, %7
  %22 = load i32*, i32** @pi_vlc_chan_order_wg4, align 8
  %23 = load i32, i32* %19, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %50

28:                                               ; preds = %21
  %29 = load i32, i32* %12, align 4
  %30 = load i32*, i32** @pi_vlc_chan_order_wg4, align 8
  %31 = load i32, i32* %19, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %29, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %28
  %38 = load i32*, i32** @pi_channels_in, align 8
  %39 = load i32, i32* %19, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %42
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %37, %28
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %19, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %19, align 4
  br label %21

50:                                               ; preds = %21
  %51 = load i32, i32* %11, align 4
  switch i32 %51, label %95 [
    i32 128, label %52
    i32 130, label %69
    i32 129, label %82
  ]

52:                                               ; preds = %50
  store i32 2, i32* %13, align 4
  %53 = load i32, i32* @SPEAKER_FRONT_LEFT, align 4
  %54 = load i32, i32* @SPEAKER_FRONT_RIGHT, align 4
  %55 = or i32 %53, %54
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  store i32 %55, i32* %56, align 4
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  store i32 16, i32* %58, align 4
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* @WAVE_FORMAT_DOLBY_AC3_SPDIF, align 4
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 6
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* @_KSDATAFORMAT_SUBTYPE_DOLBY_AC3_SPDIF, align 4
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 2
  store i32 %67, i32* %68, align 4
  br label %95

69:                                               ; preds = %50
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  store i32 32, i32* %71, align 4
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* @WAVE_FORMAT_IEEE_FLOAT, align 4
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 6
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* @_KSDATAFORMAT_SUBTYPE_IEEE_FLOAT, align 4
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 2
  store i32 %80, i32* %81, align 4
  br label %95

82:                                               ; preds = %50
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 0
  store i32 16, i32* %84, align 4
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 4
  %90 = load i32, i32* @WAVE_FORMAT_PCM, align 4
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 6
  store i32 %90, i32* %92, align 4
  %93 = load i32, i32* @_KSDATAFORMAT_SUBTYPE_PCM, align 4
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 2
  store i32 %93, i32* %94, align 4
  br label %95

95:                                               ; preds = %50, %82, %69, %52
  %96 = load i32, i32* %13, align 4
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 4
  %99 = load i32, i32* %14, align 4
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 2
  store i32 %99, i32* %101, align 4
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = sdiv i32 %104, 8
  %106 = load i32, i32* %13, align 4
  %107 = mul nsw i32 %105, %106
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 3
  store i32 %107, i32* %109, align 4
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = mul nsw i32 %112, %115
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 4
  store i32 %116, i32* %118, align 4
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 8
  %124 = load i32, i32* %11, align 4
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 1
  store i32 %124, i32* %126, align 4
  %127 = call i32 @memset(%struct.TYPE_14__* %17, i32 0, i32 24)
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  store i32 24, i32* %128, align 8
  %129 = load i32, i32* @DSBCAPS_GETCURRENTPOSITION2, align 4
  %130 = load i32, i32* @DSBCAPS_GLOBALFOCUS, align 4
  %131 = or i32 %129, %130
  %132 = load i32, i32* @DSBCAPS_CTRLVOLUME, align 4
  %133 = or i32 %131, %132
  %134 = load i32, i32* @DSBCAPS_CTRLPOSITIONNOTIFY, align 4
  %135 = or i32 %133, %134
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 1
  store i32 %135, i32* %136, align 4
  %137 = load i32, i32* %13, align 4
  %138 = icmp sle i32 %137, 2
  br i1 %138, label %139, label %142

139:                                              ; preds = %95
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 5
  store i32 0, i32* %141, align 4
  br label %152

142:                                              ; preds = %95
  %143 = load i32, i32* @WAVE_FORMAT_EXTENSIBLE, align 4
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 6
  store i32 %143, i32* %145, align 4
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 5
  store i32 36, i32* %147, align 4
  %148 = load i32, i32* @DSBCAPS_LOCHARDWARE, align 4
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = or i32 %150, %148
  store i32 %151, i32* %149, align 4
  br label %152

152:                                              ; preds = %142, %139
  %153 = load i32, i32* @DS_BUF_SIZE, align 4
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 3
  store i32 %153, i32* %154, align 8
  %155 = bitcast %struct.TYPE_13__* %16 to i32*
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 2
  store i32* %155, i32** %156, align 8
  %157 = load i32, i32* %11, align 4
  %158 = icmp eq i32 %157, 128
  br i1 %158, label %159, label %165

159:                                              ; preds = %152
  %160 = load i32, i32* @DSBCAPS_CTRLVOLUME, align 4
  %161 = xor i32 %160, -1
  %162 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = and i32 %163, %161
  store i32 %164, i32* %162, align 4
  br label %165

165:                                              ; preds = %159, %152
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 8
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 5
  %171 = call i64 @IDirectSound_CreateSoundBuffer(i32 %168, %struct.TYPE_14__* %17, i32** %170, i32* null)
  store i64 %171, i64* %18, align 8
  %172 = load i64, i64* %18, align 8
  %173 = call i64 @FAILED(i64 %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %207

175:                                              ; preds = %165
  %176 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* @DSBCAPS_LOCHARDWARE, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %183, label %181

181:                                              ; preds = %175
  %182 = load i64, i64* %18, align 8
  store i64 %182, i64* %8, align 8
  br label %264

183:                                              ; preds = %175
  %184 = load i32, i32* @DSBCAPS_LOCHARDWARE, align 4
  %185 = xor i32 %184, -1
  %186 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = and i32 %187, %185
  store i32 %188, i32* %186, align 4
  %189 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %190 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %189, i32 0, i32 8
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i32 0, i32 5
  %194 = call i64 @IDirectSound_CreateSoundBuffer(i32 %191, %struct.TYPE_14__* %17, i32** %193, i32* null)
  store i64 %194, i64* %18, align 8
  %195 = load i64, i64* %18, align 8
  %196 = call i64 @FAILED(i64 %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %200

198:                                              ; preds = %183
  %199 = load i64, i64* %18, align 8
  store i64 %199, i64* %8, align 8
  br label %264

200:                                              ; preds = %183
  %201 = load i32, i32* %15, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %206, label %203

203:                                              ; preds = %200
  %204 = load i32*, i32** %9, align 8
  %205 = call i32 @msg_Dbg(i32* %204, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %206

206:                                              ; preds = %203, %200
  br label %207

207:                                              ; preds = %206, %165
  %208 = load i32, i32* %15, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %218

210:                                              ; preds = %207
  %211 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %212 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %211, i32 0, i32 5
  %213 = load i32*, i32** %212, align 8
  %214 = call i32 @IDirectSoundBuffer_Release(i32* %213)
  %215 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %216 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %215, i32 0, i32 5
  store i32* null, i32** %216, align 8
  %217 = load i64, i64* @DS_OK, align 8
  store i64 %217, i64* %8, align 8
  br label %264

218:                                              ; preds = %207
  %219 = load i32, i32* %14, align 4
  %220 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %221 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %220, i32 0, i32 2
  store i32 %219, i32* %221, align 8
  %222 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %225 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %224, i32 0, i32 3
  store i32 %223, i32* %225, align 4
  %226 = load i32*, i32** @pi_channels_in, align 8
  %227 = load i32, i32* @pi_channels_out, align 4
  %228 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %231 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %230, i32 0, i32 7
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @aout_CheckChannelReorder(i32* %226, i32 %227, i32 %229, i32 %232)
  %234 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %235 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %234, i32 0, i32 6
  store i32 %233, i32* %235, align 8
  %236 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %237 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %236, i32 0, i32 6
  %238 = load i32, i32* %237, align 8
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %243

240:                                              ; preds = %218
  %241 = load i32*, i32** %9, align 8
  %242 = call i32 @msg_Dbg(i32* %241, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %243

243:                                              ; preds = %240, %218
  %244 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %245 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %244, i32 0, i32 5
  %246 = load i32*, i32** %245, align 8
  %247 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %248 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %247, i32 0, i32 4
  %249 = bitcast i32** %248 to i8**
  %250 = call i64 @IDirectSoundBuffer_QueryInterface(i32* %246, i32* @IID_IDirectSoundNotify, i8** %249)
  store i64 %250, i64* %18, align 8
  %251 = load i64, i64* %18, align 8
  %252 = load i64, i64* @DS_OK, align 8
  %253 = icmp ne i64 %251, %252
  br i1 %253, label %254, label %259

254:                                              ; preds = %243
  %255 = load i32*, i32** %9, align 8
  %256 = call i32 @msg_Err(i32* %255, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %257 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %258 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %257, i32 0, i32 4
  store i32* null, i32** %258, align 8
  br label %259

259:                                              ; preds = %254, %243
  %260 = load i32*, i32** %9, align 8
  %261 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %262 = call i32 @FillBuffer(i32* %260, %struct.TYPE_12__* %261, i32* null)
  %263 = load i64, i64* @DS_OK, align 8
  store i64 %263, i64* %8, align 8
  br label %264

264:                                              ; preds = %259, %210, %198, %181
  %265 = load i64, i64* %8, align 8
  ret i64 %265
}

declare dso_local i32 @memset(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i64 @IDirectSound_CreateSoundBuffer(i32, %struct.TYPE_14__*, i32**, i32*) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i32 @msg_Dbg(i32*, i8*) #1

declare dso_local i32 @IDirectSoundBuffer_Release(i32*) #1

declare dso_local i32 @aout_CheckChannelReorder(i32*, i32, i32, i32) #1

declare dso_local i64 @IDirectSoundBuffer_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @msg_Err(i32*, i8*) #1

declare dso_local i32 @FillBuffer(i32*, %struct.TYPE_12__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
