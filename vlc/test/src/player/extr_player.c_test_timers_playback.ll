; ModuleID = '/home/carl/AnghaBench/vlc/test/src/player/extr_player.c_test_timers_playback.c'
source_filename = "/home/carl/AnghaBench/vlc/test/src/player/extr_player.c_test_timers_playback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctx = type { i32 }
%struct.timer_state = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, %struct.report_timer* }
%struct.report_timer = type { i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i64, i32, i64 }
%struct.media_params = type { i64*, i32, i32, i64 }

@VIDEO_ES = common dso_local global i64 0, align 8
@AUDIO_ES = common dso_local global i64 0, align 8
@SPU_ES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"media1\00", align 1
@VLC_PLAYER_STATE_STARTED = common dso_local global i32 0, align 4
@VLC_PLAYER_STATE_STOPPED = common dso_local global i32 0, align 4
@SMPTE_TIMER_IDX = common dso_local global i64 0, align 8
@INT64_MAX = common dso_local global i64 0, align 8
@REPORT_TIMER_POINT = common dso_local global i64 0, align 8
@VLC_TICK_INVALID = common dso_local global i64 0, align 8
@REPORT_TIMER_DISCONTINUITY = common dso_local global i64 0, align 8
@REGULAR_TIMER_IDX = common dso_local global i64 0, align 8
@VLC_TICK_0 = common dso_local global i64 0, align 8
@REGULAR_DELAY_TIMER_IDX = common dso_local global i64 0, align 8
@TIMER_COUNT = common dso_local global i64 0, align 8
@MAX_UPDATE_COUNT = common dso_local global i64 0, align 8
@SAMPLE_LENGTH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ctx*, %struct.timer_state*, i64, i64, i32, i32)* @test_timers_playback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_timers_playback(%struct.ctx* %0, %struct.timer_state* %1, i64 %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.ctx*, align 8
  %8 = alloca %struct.timer_state*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.media_params, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.timer_state*, align 8
  %16 = alloca %struct.TYPE_5__*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.report_timer*, align 8
  %19 = alloca %struct.report_timer*, align 8
  %20 = alloca %struct.timer_state*, align 8
  %21 = alloca %struct.TYPE_5__*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca %struct.report_timer*, align 8
  %25 = alloca %struct.report_timer*, align 8
  %26 = alloca %struct.timer_state*, align 8
  %27 = alloca %struct.TYPE_5__*, align 8
  %28 = alloca i64, align 8
  %29 = alloca %struct.report_timer*, align 8
  %30 = alloca %struct.report_timer*, align 8
  %31 = alloca %struct.timer_state*, align 8
  %32 = alloca %struct.TYPE_5__*, align 8
  %33 = alloca i64, align 8
  %34 = alloca %struct.timer_state*, align 8
  store %struct.ctx* %0, %struct.ctx** %7, align 8
  store %struct.timer_state* %1, %struct.timer_state** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %35 = load i64, i64* %10, align 8
  call void @DEFAULT_MEDIA_PARAMS(%struct.media_params* sret %13, i64 %35)
  %36 = load i64, i64* %9, align 8
  %37 = getelementptr inbounds %struct.media_params, %struct.media_params* %13, i32 0, i32 0
  %38 = load i64*, i64** %37, align 8
  %39 = load i64, i64* @VIDEO_ES, align 8
  %40 = getelementptr inbounds i64, i64* %38, i64 %39
  store i64 %36, i64* %40, align 8
  %41 = load i64, i64* %9, align 8
  %42 = getelementptr inbounds %struct.media_params, %struct.media_params* %13, i32 0, i32 0
  %43 = load i64*, i64** %42, align 8
  %44 = load i64, i64* @AUDIO_ES, align 8
  %45 = getelementptr inbounds i64, i64* %43, i64 %44
  store i64 %41, i64* %45, align 8
  %46 = load i64, i64* %9, align 8
  %47 = getelementptr inbounds %struct.media_params, %struct.media_params* %13, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = load i64, i64* @SPU_ES, align 8
  %50 = getelementptr inbounds i64, i64* %48, i64 %49
  store i64 %46, i64* %50, align 8
  %51 = call i32 (i32, ...) bitcast (i32 (...)* @VLC_TICK_FROM_MS to i32 (i32, ...)*)(i32 1)
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.media_params, %struct.media_params* %13, i32 0, i32 3
  store i64 %52, i64* %53, align 8
  %54 = load i32, i32* %11, align 4
  %55 = getelementptr inbounds %struct.media_params, %struct.media_params* %13, i32 0, i32 1
  store i32 %54, i32* %55, align 8
  %56 = getelementptr inbounds %struct.media_params, %struct.media_params* %13, i32 0, i32 2
  store i32 1, i32* %56, align 4
  %57 = load %struct.ctx*, %struct.ctx** %7, align 8
  %58 = call i32 @player_set_current_mock_media(%struct.ctx* %57, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.media_params* %13, i32 0)
  %59 = load %struct.ctx*, %struct.ctx** %7, align 8
  %60 = load i32, i32* %12, align 4
  %61 = call i32 @player_set_rate(%struct.ctx* %59, i32 %60)
  %62 = load %struct.ctx*, %struct.ctx** %7, align 8
  %63 = call i32 @player_start(%struct.ctx* %62)
  %64 = load %struct.ctx*, %struct.ctx** %7, align 8
  %65 = load i32, i32* @VLC_PLAYER_STATE_STARTED, align 4
  %66 = call i32 @wait_state(%struct.ctx* %64, i32 %65)
  %67 = load %struct.ctx*, %struct.ctx** %7, align 8
  %68 = load i32, i32* @VLC_PLAYER_STATE_STOPPED, align 4
  %69 = call i32 @wait_state(%struct.ctx* %67, i32 %68)
  store i64 0, i64* %14, align 8
  br label %70

70:                                               ; preds = %190, %6
  %71 = load i64, i64* %14, align 8
  %72 = load i64, i64* @SMPTE_TIMER_IDX, align 8
  %73 = icmp ult i64 %71, %72
  br i1 %73, label %74, label %193

74:                                               ; preds = %70
  %75 = load %struct.timer_state*, %struct.timer_state** %8, align 8
  %76 = load i64, i64* %14, align 8
  %77 = getelementptr inbounds %struct.timer_state, %struct.timer_state* %75, i64 %76
  store %struct.timer_state* %77, %struct.timer_state** %15, align 8
  %78 = load %struct.timer_state*, %struct.timer_state** %15, align 8
  %79 = getelementptr inbounds %struct.timer_state, %struct.timer_state* %78, i32 0, i32 1
  store %struct.TYPE_5__* %79, %struct.TYPE_5__** %16, align 8
  store i64 1, i64* %17, align 8
  br label %80

80:                                               ; preds = %186, %74
  %81 = load i64, i64* %17, align 8
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ult i64 %81, %84
  br i1 %85, label %86, label %189

86:                                               ; preds = %80
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 1
  %89 = load %struct.report_timer*, %struct.report_timer** %88, align 8
  %90 = load i64, i64* %17, align 8
  %91 = sub i64 %90, 1
  %92 = getelementptr inbounds %struct.report_timer, %struct.report_timer* %89, i64 %91
  store %struct.report_timer* %92, %struct.report_timer** %18, align 8
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 1
  %95 = load %struct.report_timer*, %struct.report_timer** %94, align 8
  %96 = load i64, i64* %17, align 8
  %97 = getelementptr inbounds %struct.report_timer, %struct.report_timer* %95, i64 %96
  store %struct.report_timer* %97, %struct.report_timer** %19, align 8
  %98 = load i64, i64* %17, align 8
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = sub i64 %101, 1
  %103 = icmp ult i64 %98, %102
  br i1 %103, label %104, label %170

104:                                              ; preds = %86
  %105 = load i64, i64* %17, align 8
  %106 = icmp eq i64 %105, 1
  br i1 %106, label %107, label %116

107:                                              ; preds = %104
  %108 = load %struct.report_timer*, %struct.report_timer** %18, align 8
  %109 = getelementptr inbounds %struct.report_timer, %struct.report_timer* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @INT64_MAX, align 8
  %113 = icmp eq i64 %111, %112
  %114 = zext i1 %113 to i32
  %115 = call i32 @assert(i32 %114)
  br label %116

116:                                              ; preds = %107, %104
  %117 = load %struct.report_timer*, %struct.report_timer** %19, align 8
  %118 = getelementptr inbounds %struct.report_timer, %struct.report_timer* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @REPORT_TIMER_POINT, align 8
  %121 = icmp eq i64 %119, %120
  %122 = zext i1 %121 to i32
  %123 = call i32 @assert(i32 %122)
  %124 = load %struct.report_timer*, %struct.report_timer** %19, align 8
  %125 = getelementptr inbounds %struct.report_timer, %struct.report_timer* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.report_timer*, %struct.report_timer** %18, align 8
  %129 = getelementptr inbounds %struct.report_timer, %struct.report_timer* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = icmp sge i64 %127, %131
  %133 = zext i1 %132 to i32
  %134 = call i32 @assert(i32 %133)
  %135 = load %struct.report_timer*, %struct.report_timer** %19, align 8
  %136 = getelementptr inbounds %struct.report_timer, %struct.report_timer* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @VLC_TICK_INVALID, align 8
  %140 = icmp ne i64 %138, %139
  %141 = zext i1 %140 to i32
  %142 = call i32 @assert(i32 %141)
  %143 = load %struct.report_timer*, %struct.report_timer** %19, align 8
  %144 = getelementptr inbounds %struct.report_timer, %struct.report_timer* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.report_timer*, %struct.report_timer** %18, align 8
  %148 = getelementptr inbounds %struct.report_timer, %struct.report_timer* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = icmp sge i64 %146, %150
  %152 = zext i1 %151 to i32
  %153 = call i32 @assert(i32 %152)
  %154 = load %struct.report_timer*, %struct.report_timer** %19, align 8
  %155 = getelementptr inbounds %struct.report_timer, %struct.report_timer* %154, i32 0, i32 2
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* %12, align 4
  %159 = icmp eq i32 %157, %158
  %160 = zext i1 %159 to i32
  %161 = call i32 @assert(i32 %160)
  %162 = load %struct.report_timer*, %struct.report_timer** %19, align 8
  %163 = getelementptr inbounds %struct.report_timer, %struct.report_timer* %162, i32 0, i32 2
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 4
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* %10, align 8
  %167 = icmp eq i64 %165, %166
  %168 = zext i1 %167 to i32
  %169 = call i32 @assert(i32 %168)
  br label %185

170:                                              ; preds = %86
  %171 = load %struct.report_timer*, %struct.report_timer** %19, align 8
  %172 = getelementptr inbounds %struct.report_timer, %struct.report_timer* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @REPORT_TIMER_DISCONTINUITY, align 8
  %175 = icmp eq i64 %173, %174
  %176 = zext i1 %175 to i32
  %177 = call i32 @assert(i32 %176)
  %178 = load %struct.report_timer*, %struct.report_timer** %19, align 8
  %179 = getelementptr inbounds %struct.report_timer, %struct.report_timer* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @VLC_TICK_INVALID, align 8
  %182 = icmp eq i64 %180, %181
  %183 = zext i1 %182 to i32
  %184 = call i32 @assert(i32 %183)
  br label %185

185:                                              ; preds = %170, %116
  br label %186

186:                                              ; preds = %185
  %187 = load i64, i64* %17, align 8
  %188 = add i64 %187, 1
  store i64 %188, i64* %17, align 8
  br label %80

189:                                              ; preds = %80
  br label %190

190:                                              ; preds = %189
  %191 = load i64, i64* %14, align 8
  %192 = add i64 %191, 1
  store i64 %192, i64* %14, align 8
  br label %70

193:                                              ; preds = %70
  %194 = load i64, i64* %9, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %286

196:                                              ; preds = %193
  %197 = load %struct.timer_state*, %struct.timer_state** %8, align 8
  %198 = load i64, i64* @REGULAR_TIMER_IDX, align 8
  %199 = getelementptr inbounds %struct.timer_state, %struct.timer_state* %197, i64 %198
  store %struct.timer_state* %199, %struct.timer_state** %20, align 8
  %200 = load %struct.timer_state*, %struct.timer_state** %20, align 8
  %201 = getelementptr inbounds %struct.timer_state, %struct.timer_state* %200, i32 0, i32 1
  store %struct.TYPE_5__* %201, %struct.TYPE_5__** %21, align 8
  %202 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = icmp ugt i64 %204, 1
  %206 = zext i1 %205 to i32
  %207 = call i32 @assert(i32 %206)
  store i64 1, i64* %22, align 8
  store i64 1, i64* %23, align 8
  br label %208

208:                                              ; preds = %254, %196
  %209 = load i64, i64* %23, align 8
  %210 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %211 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = sub i64 %212, 1
  %214 = icmp ult i64 %209, %213
  br i1 %214, label %215, label %257

215:                                              ; preds = %208
  %216 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %217 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %216, i32 0, i32 1
  %218 = load %struct.report_timer*, %struct.report_timer** %217, align 8
  %219 = load i64, i64* %23, align 8
  %220 = sub i64 %219, 1
  %221 = getelementptr inbounds %struct.report_timer, %struct.report_timer* %218, i64 %220
  store %struct.report_timer* %221, %struct.report_timer** %24, align 8
  %222 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %223 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %222, i32 0, i32 1
  %224 = load %struct.report_timer*, %struct.report_timer** %223, align 8
  %225 = load i64, i64* %23, align 8
  %226 = getelementptr inbounds %struct.report_timer, %struct.report_timer* %224, i64 %225
  store %struct.report_timer* %226, %struct.report_timer** %25, align 8
  %227 = load %struct.report_timer*, %struct.report_timer** %25, align 8
  %228 = getelementptr inbounds %struct.report_timer, %struct.report_timer* %227, i32 0, i32 2
  %229 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %228, i32 0, i32 1
  %230 = load i64, i64* %229, align 8
  %231 = load %struct.report_timer*, %struct.report_timer** %24, align 8
  %232 = getelementptr inbounds %struct.report_timer, %struct.report_timer* %231, i32 0, i32 2
  %233 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %232, i32 0, i32 1
  %234 = load i64, i64* %233, align 8
  %235 = icmp ne i64 %230, %234
  br i1 %235, label %236, label %253

236:                                              ; preds = %215
  %237 = load %struct.report_timer*, %struct.report_timer** %25, align 8
  %238 = getelementptr inbounds %struct.report_timer, %struct.report_timer* %237, i32 0, i32 2
  %239 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %238, i32 0, i32 1
  %240 = load i64, i64* %239, align 8
  %241 = load %struct.report_timer*, %struct.report_timer** %24, align 8
  %242 = getelementptr inbounds %struct.report_timer, %struct.report_timer* %241, i32 0, i32 2
  %243 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %242, i32 0, i32 1
  %244 = load i64, i64* %243, align 8
  %245 = call i32 (i32, ...) bitcast (i32 (...)* @VLC_TICK_FROM_MS to i32 (i32, ...)*)(i32 1)
  %246 = sext i32 %245 to i64
  %247 = add nsw i64 %244, %246
  %248 = icmp eq i64 %240, %247
  %249 = zext i1 %248 to i32
  %250 = call i32 @assert(i32 %249)
  %251 = load i64, i64* %22, align 8
  %252 = add i64 %251, 1
  store i64 %252, i64* %22, align 8
  br label %253

253:                                              ; preds = %236, %215
  br label %254

254:                                              ; preds = %253
  %255 = load i64, i64* %23, align 8
  %256 = add i64 %255, 1
  store i64 %256, i64* %23, align 8
  br label %208

257:                                              ; preds = %208
  %258 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %259 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %258, i32 0, i32 1
  %260 = load %struct.report_timer*, %struct.report_timer** %259, align 8
  %261 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %262 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %261, i32 0, i32 0
  %263 = load i64, i64* %262, align 8
  %264 = sub i64 %263, 2
  %265 = getelementptr inbounds %struct.report_timer, %struct.report_timer* %260, i64 %264
  %266 = getelementptr inbounds %struct.report_timer, %struct.report_timer* %265, i32 0, i32 2
  %267 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %266, i32 0, i32 1
  %268 = load i64, i64* %267, align 8
  %269 = load i64, i64* %10, align 8
  %270 = call i32 (i32, ...) bitcast (i32 (...)* @VLC_TICK_FROM_MS to i32 (i32, ...)*)(i32 1)
  %271 = sext i32 %270 to i64
  %272 = sub nsw i64 %269, %271
  %273 = load i64, i64* @VLC_TICK_0, align 8
  %274 = add nsw i64 %272, %273
  %275 = icmp eq i64 %268, %274
  %276 = zext i1 %275 to i32
  %277 = call i32 @assert(i32 %276)
  %278 = load i64, i64* %22, align 8
  %279 = load i64, i64* %10, align 8
  %280 = call i32 (i32, ...) bitcast (i32 (...)* @VLC_TICK_FROM_MS to i32 (i32, ...)*)(i32 1)
  %281 = sext i32 %280 to i64
  %282 = sdiv i64 %279, %281
  %283 = icmp eq i64 %278, %282
  %284 = zext i1 %283 to i32
  %285 = call i32 @assert(i32 %284)
  br label %286

286:                                              ; preds = %257, %193
  %287 = load %struct.timer_state*, %struct.timer_state** %8, align 8
  %288 = load i64, i64* @REGULAR_DELAY_TIMER_IDX, align 8
  %289 = getelementptr inbounds %struct.timer_state, %struct.timer_state* %287, i64 %288
  store %struct.timer_state* %289, %struct.timer_state** %26, align 8
  %290 = load %struct.timer_state*, %struct.timer_state** %26, align 8
  %291 = getelementptr inbounds %struct.timer_state, %struct.timer_state* %290, i32 0, i32 1
  store %struct.TYPE_5__* %291, %struct.TYPE_5__** %27, align 8
  %292 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %293 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %292, i32 0, i32 0
  %294 = load i64, i64* %293, align 8
  %295 = load i64, i64* %10, align 8
  %296 = call i32 (i32, ...) bitcast (i32 (...)* @VLC_TICK_FROM_MS to i32 (i32, ...)*)(i32 1)
  %297 = sext i32 %296 to i64
  %298 = sdiv i64 %295, %297
  %299 = icmp ult i64 %294, %298
  %300 = zext i1 %299 to i32
  %301 = call i32 @assert(i32 %300)
  store i64 1, i64* %28, align 8
  br label %302

302:                                              ; preds = %356, %286
  %303 = load i64, i64* %28, align 8
  %304 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %305 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %304, i32 0, i32 0
  %306 = load i64, i64* %305, align 8
  %307 = icmp ult i64 %303, %306
  br i1 %307, label %308, label %359

308:                                              ; preds = %302
  %309 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %310 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %309, i32 0, i32 1
  %311 = load %struct.report_timer*, %struct.report_timer** %310, align 8
  %312 = load i64, i64* %28, align 8
  %313 = sub i64 %312, 1
  %314 = getelementptr inbounds %struct.report_timer, %struct.report_timer* %311, i64 %313
  store %struct.report_timer* %314, %struct.report_timer** %29, align 8
  %315 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %316 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %315, i32 0, i32 1
  %317 = load %struct.report_timer*, %struct.report_timer** %316, align 8
  %318 = load i64, i64* %28, align 8
  %319 = getelementptr inbounds %struct.report_timer, %struct.report_timer* %317, i64 %318
  store %struct.report_timer* %319, %struct.report_timer** %30, align 8
  %320 = load i64, i64* %28, align 8
  %321 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %322 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %321, i32 0, i32 0
  %323 = load i64, i64* %322, align 8
  %324 = sub i64 %323, 1
  %325 = icmp ult i64 %320, %324
  br i1 %325, label %326, label %355

326:                                              ; preds = %308
  %327 = load i64, i64* %28, align 8
  %328 = icmp eq i64 %327, 1
  br i1 %328, label %329, label %338

329:                                              ; preds = %326
  %330 = load %struct.report_timer*, %struct.report_timer** %29, align 8
  %331 = getelementptr inbounds %struct.report_timer, %struct.report_timer* %330, i32 0, i32 2
  %332 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %331, i32 0, i32 0
  %333 = load i64, i64* %332, align 8
  %334 = load i64, i64* @INT64_MAX, align 8
  %335 = icmp eq i64 %333, %334
  %336 = zext i1 %335 to i32
  %337 = call i32 @assert(i32 %336)
  br label %354

338:                                              ; preds = %326
  %339 = load %struct.report_timer*, %struct.report_timer** %30, align 8
  %340 = getelementptr inbounds %struct.report_timer, %struct.report_timer* %339, i32 0, i32 2
  %341 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %340, i32 0, i32 0
  %342 = load i64, i64* %341, align 8
  %343 = load %struct.report_timer*, %struct.report_timer** %29, align 8
  %344 = getelementptr inbounds %struct.report_timer, %struct.report_timer* %343, i32 0, i32 2
  %345 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %344, i32 0, i32 0
  %346 = load i64, i64* %345, align 8
  %347 = sub nsw i64 %342, %346
  %348 = load %struct.timer_state*, %struct.timer_state** %26, align 8
  %349 = getelementptr inbounds %struct.timer_state, %struct.timer_state* %348, i32 0, i32 0
  %350 = load i64, i64* %349, align 8
  %351 = icmp sge i64 %347, %350
  %352 = zext i1 %351 to i32
  %353 = call i32 @assert(i32 %352)
  br label %354

354:                                              ; preds = %338, %329
  br label %355

355:                                              ; preds = %354, %308
  br label %356

356:                                              ; preds = %355
  %357 = load i64, i64* %28, align 8
  %358 = add i64 %357, 1
  store i64 %358, i64* %28, align 8
  br label %302

359:                                              ; preds = %302
  %360 = load i64, i64* %9, align 8
  %361 = icmp ugt i64 %360, 0
  br i1 %361, label %362, label %369

362:                                              ; preds = %359
  %363 = load %struct.timer_state*, %struct.timer_state** %8, align 8
  %364 = load i64, i64* @SMPTE_TIMER_IDX, align 8
  %365 = getelementptr inbounds %struct.timer_state, %struct.timer_state* %363, i64 %364
  %366 = load i64, i64* %10, align 8
  %367 = load i32, i32* %11, align 4
  %368 = call i32 @test_timers_assert_smpte(%struct.timer_state* %365, i64 %366, i32 %367, i32 0, i32 3)
  br label %381

369:                                              ; preds = %359
  %370 = load %struct.timer_state*, %struct.timer_state** %8, align 8
  %371 = load i64, i64* @SMPTE_TIMER_IDX, align 8
  %372 = getelementptr inbounds %struct.timer_state, %struct.timer_state* %370, i64 %371
  store %struct.timer_state* %372, %struct.timer_state** %31, align 8
  %373 = load %struct.timer_state*, %struct.timer_state** %31, align 8
  %374 = getelementptr inbounds %struct.timer_state, %struct.timer_state* %373, i32 0, i32 1
  store %struct.TYPE_5__* %374, %struct.TYPE_5__** %32, align 8
  %375 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %376 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %375, i32 0, i32 0
  %377 = load i64, i64* %376, align 8
  %378 = icmp eq i64 %377, 0
  %379 = zext i1 %378 to i32
  %380 = call i32 @assert(i32 %379)
  br label %381

381:                                              ; preds = %369, %362
  %382 = load %struct.ctx*, %struct.ctx** %7, align 8
  %383 = call i32 @test_end(%struct.ctx* %382)
  store i64 0, i64* %33, align 8
  br label %384

384:                                              ; preds = %395, %381
  %385 = load i64, i64* %33, align 8
  %386 = load i64, i64* @TIMER_COUNT, align 8
  %387 = icmp ult i64 %385, %386
  br i1 %387, label %388, label %398

388:                                              ; preds = %384
  %389 = load %struct.timer_state*, %struct.timer_state** %8, align 8
  %390 = load i64, i64* %33, align 8
  %391 = getelementptr inbounds %struct.timer_state, %struct.timer_state* %389, i64 %390
  store %struct.timer_state* %391, %struct.timer_state** %34, align 8
  %392 = load %struct.timer_state*, %struct.timer_state** %34, align 8
  %393 = getelementptr inbounds %struct.timer_state, %struct.timer_state* %392, i32 0, i32 1
  %394 = call i32 @vlc_vector_clear(%struct.TYPE_5__* %393)
  br label %395

395:                                              ; preds = %388
  %396 = load i64, i64* %33, align 8
  %397 = add i64 %396, 1
  store i64 %397, i64* %33, align 8
  br label %384

398:                                              ; preds = %384
  ret void
}

declare dso_local void @DEFAULT_MEDIA_PARAMS(%struct.media_params* sret, i64) #1

declare dso_local i32 @VLC_TICK_FROM_MS(...) #1

declare dso_local i32 @player_set_current_mock_media(%struct.ctx*, i8*, %struct.media_params*, i32) #1

declare dso_local i32 @player_set_rate(%struct.ctx*, i32) #1

declare dso_local i32 @player_start(%struct.ctx*) #1

declare dso_local i32 @wait_state(%struct.ctx*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @test_timers_assert_smpte(%struct.timer_state*, i64, i32, i32, i32) #1

declare dso_local i32 @test_end(%struct.ctx*) #1

declare dso_local i32 @vlc_vector_clear(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
