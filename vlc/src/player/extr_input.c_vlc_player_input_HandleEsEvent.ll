; ModuleID = '/home/carl/AnghaBench/vlc/src/player/extr_input.c_vlc_player_input_HandleEsEvent.c'
source_filename = "/home/carl/AnghaBench/vlc/src/player/extr_input.c_vlc_player_input_HandleEsEvent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, %struct.TYPE_18__* }
%struct.vlc_player_input = type { %struct.TYPE_16__, i32* }
%struct.TYPE_16__ = type { i32, i32, i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32, i32 }
%struct.vlc_input_event_es = type { i32, i64, %struct.TYPE_17__*, i64 }
%struct.TYPE_17__ = type { i64, i64, i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.vlc_player_track_priv = type { %struct.TYPE_18__ }

@VLC_CODEC_TELETEXT = common dso_local global i64 0, align 8
@on_track_list_changed = common dso_local global i32 0, align 4
@VLC_PLAYER_LIST_ADDED = common dso_local global %struct.TYPE_18__* null, align 8
@VLC_PLAYER_SELECT_EXCLUSIVE = common dso_local global i32 0, align 4
@VLC_PLAYER_LIST_REMOVED = common dso_local global %struct.TYPE_18__* null, align 8
@VLC_PLAYER_LIST_UPDATED = common dso_local global %struct.TYPE_18__* null, align 8
@on_track_selection_changed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vlc_player_input*, %struct.vlc_input_event_es*)* @vlc_player_input_HandleEsEvent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vlc_player_input_HandleEsEvent(%struct.vlc_player_input* %0, %struct.vlc_input_event_es* %1) #0 {
  %3 = alloca %struct.vlc_player_input*, align 8
  %4 = alloca %struct.vlc_input_event_es*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.vlc_player_track_priv*, align 8
  %8 = alloca i64, align 8
  store %struct.vlc_player_input* %0, %struct.vlc_player_input** %3, align 8
  store %struct.vlc_input_event_es* %1, %struct.vlc_input_event_es** %4, align 8
  %9 = load %struct.vlc_input_event_es*, %struct.vlc_input_event_es** %4, align 8
  %10 = getelementptr inbounds %struct.vlc_input_event_es, %struct.vlc_input_event_es* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %2
  %14 = load %struct.vlc_input_event_es*, %struct.vlc_input_event_es** %4, align 8
  %15 = getelementptr inbounds %struct.vlc_input_event_es, %struct.vlc_input_event_es* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load %struct.vlc_input_event_es*, %struct.vlc_input_event_es** %4, align 8
  %20 = getelementptr inbounds %struct.vlc_input_event_es, %struct.vlc_input_event_es* %19, i32 0, i32 2
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %22 = icmp ne %struct.TYPE_17__* %21, null
  br label %23

23:                                               ; preds = %18, %13, %2
  %24 = phi i1 [ false, %13 ], [ false, %2 ], [ %22, %18 ]
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load %struct.vlc_input_event_es*, %struct.vlc_input_event_es** %4, align 8
  %28 = getelementptr inbounds %struct.vlc_input_event_es, %struct.vlc_input_event_es* %27, i32 0, i32 2
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 134
  br i1 %32, label %33, label %63

33:                                               ; preds = %23
  %34 = load %struct.vlc_input_event_es*, %struct.vlc_input_event_es** %4, align 8
  %35 = getelementptr inbounds %struct.vlc_input_event_es, %struct.vlc_input_event_es* %34, i32 0, i32 2
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @VLC_CODEC_TELETEXT, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %63

41:                                               ; preds = %33
  %42 = load %struct.vlc_input_event_es*, %struct.vlc_input_event_es** %4, align 8
  %43 = getelementptr inbounds %struct.vlc_input_event_es, %struct.vlc_input_event_es* %42, i32 0, i32 2
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %59, label %50

50:                                               ; preds = %41
  %51 = load %struct.vlc_input_event_es*, %struct.vlc_input_event_es** %4, align 8
  %52 = getelementptr inbounds %struct.vlc_input_event_es, %struct.vlc_input_event_es* %51, i32 0, i32 2
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp sgt i32 %57, 8
  br i1 %58, label %59, label %63

59:                                               ; preds = %50, %41
  %60 = load %struct.vlc_player_input*, %struct.vlc_player_input** %3, align 8
  %61 = load %struct.vlc_input_event_es*, %struct.vlc_input_event_es** %4, align 8
  %62 = call i32 @vlc_player_input_HandleTeletextMenu(%struct.vlc_player_input* %60, %struct.vlc_input_event_es* %61)
  br label %351

63:                                               ; preds = %50, %33, %23
  %64 = load %struct.vlc_player_input*, %struct.vlc_player_input** %3, align 8
  %65 = load %struct.vlc_input_event_es*, %struct.vlc_input_event_es** %4, align 8
  %66 = getelementptr inbounds %struct.vlc_input_event_es, %struct.vlc_input_event_es* %65, i32 0, i32 2
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i32* @vlc_player_input_GetTrackVector(%struct.vlc_player_input* %64, i64 %69)
  store i32* %70, i32** %5, align 8
  %71 = load i32*, i32** %5, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %63
  br label %351

74:                                               ; preds = %63
  %75 = load %struct.vlc_player_input*, %struct.vlc_player_input** %3, align 8
  %76 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  store i32* %77, i32** %6, align 8
  %78 = load %struct.vlc_input_event_es*, %struct.vlc_input_event_es** %4, align 8
  %79 = getelementptr inbounds %struct.vlc_input_event_es, %struct.vlc_input_event_es* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  switch i32 %80, label %349 [
    i32 132, label %81
    i32 131, label %201
    i32 128, label %222
    i32 130, label %249
    i32 129, label %324
  ]

81:                                               ; preds = %74
  %82 = load %struct.vlc_input_event_es*, %struct.vlc_input_event_es** %4, align 8
  %83 = getelementptr inbounds %struct.vlc_input_event_es, %struct.vlc_input_event_es* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.vlc_input_event_es*, %struct.vlc_input_event_es** %4, align 8
  %86 = getelementptr inbounds %struct.vlc_input_event_es, %struct.vlc_input_event_es* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.vlc_input_event_es*, %struct.vlc_input_event_es** %4, align 8
  %89 = getelementptr inbounds %struct.vlc_input_event_es, %struct.vlc_input_event_es* %88, i32 0, i32 2
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %89, align 8
  %91 = call %struct.vlc_player_track_priv* @vlc_player_track_priv_New(i64 %84, i64 %87, %struct.TYPE_17__* %90)
  store %struct.vlc_player_track_priv* %91, %struct.vlc_player_track_priv** %7, align 8
  %92 = load %struct.vlc_player_track_priv*, %struct.vlc_player_track_priv** %7, align 8
  %93 = icmp ne %struct.vlc_player_track_priv* %92, null
  br i1 %93, label %95, label %94

94:                                               ; preds = %81
  br label %351

95:                                               ; preds = %81
  %96 = load i32*, i32** %5, align 8
  %97 = load %struct.vlc_player_track_priv*, %struct.vlc_player_track_priv** %7, align 8
  %98 = call i32 @vlc_vector_push(i32* %96, %struct.vlc_player_track_priv* %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %95
  %101 = load %struct.vlc_player_track_priv*, %struct.vlc_player_track_priv** %7, align 8
  %102 = call i32 @vlc_player_track_priv_Delete(%struct.vlc_player_track_priv* %101)
  br label %351

103:                                              ; preds = %95
  %104 = load i32*, i32** %6, align 8
  %105 = load i32, i32* @on_track_list_changed, align 4
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** @VLC_PLAYER_LIST_ADDED, align 8
  %107 = load %struct.vlc_player_track_priv*, %struct.vlc_player_track_priv** %7, align 8
  %108 = getelementptr inbounds %struct.vlc_player_track_priv, %struct.vlc_player_track_priv* %107, i32 0, i32 0
  %109 = call i32 @vlc_player_SendEvent(i32* %104, i32 %105, %struct.TYPE_18__* %106, %struct.TYPE_18__* %108)
  %110 = load %struct.vlc_input_event_es*, %struct.vlc_input_event_es** %4, align 8
  %111 = getelementptr inbounds %struct.vlc_input_event_es, %struct.vlc_input_event_es* %110, i32 0, i32 2
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  switch i64 %114, label %199 [
    i64 133, label %115
    i64 135, label %143
    i64 134, label %171
  ]

115:                                              ; preds = %103
  %116 = load %struct.vlc_player_input*, %struct.vlc_player_input** %3, align 8
  %117 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 3
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = icmp ne i32 %120, -2
  br i1 %121, label %122, label %142

122:                                              ; preds = %115
  %123 = load %struct.vlc_player_input*, %struct.vlc_player_input** %3, align 8
  %124 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 3
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.vlc_input_event_es*, %struct.vlc_input_event_es** %4, align 8
  %129 = getelementptr inbounds %struct.vlc_input_event_es, %struct.vlc_input_event_es* %128, i32 0, i32 2
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = icmp eq i32 %127, %132
  br i1 %133, label %134, label %142

134:                                              ; preds = %122
  %135 = load %struct.vlc_player_input*, %struct.vlc_player_input** %3, align 8
  %136 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %135, i32 0, i32 1
  %137 = load i32*, i32** %136, align 8
  %138 = load %struct.vlc_player_track_priv*, %struct.vlc_player_track_priv** %7, align 8
  %139 = getelementptr inbounds %struct.vlc_player_track_priv, %struct.vlc_player_track_priv* %138, i32 0, i32 0
  %140 = load i32, i32* @VLC_PLAYER_SELECT_EXCLUSIVE, align 4
  %141 = call i32 @vlc_player_SelectTrack(i32* %137, %struct.TYPE_18__* %139, i32 %140)
  br label %142

142:                                              ; preds = %134, %122, %115
  br label %200

143:                                              ; preds = %103
  %144 = load %struct.vlc_player_input*, %struct.vlc_player_input** %3, align 8
  %145 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 3
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = icmp ne i32 %148, -2
  br i1 %149, label %150, label %170

150:                                              ; preds = %143
  %151 = load %struct.vlc_player_input*, %struct.vlc_player_input** %3, align 8
  %152 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i32 0, i32 3
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.vlc_input_event_es*, %struct.vlc_input_event_es** %4, align 8
  %157 = getelementptr inbounds %struct.vlc_input_event_es, %struct.vlc_input_event_es* %156, i32 0, i32 2
  %158 = load %struct.TYPE_17__*, %struct.TYPE_17__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = icmp eq i32 %155, %160
  br i1 %161, label %162, label %170

162:                                              ; preds = %150
  %163 = load %struct.vlc_player_input*, %struct.vlc_player_input** %3, align 8
  %164 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %163, i32 0, i32 1
  %165 = load i32*, i32** %164, align 8
  %166 = load %struct.vlc_player_track_priv*, %struct.vlc_player_track_priv** %7, align 8
  %167 = getelementptr inbounds %struct.vlc_player_track_priv, %struct.vlc_player_track_priv* %166, i32 0, i32 0
  %168 = load i32, i32* @VLC_PLAYER_SELECT_EXCLUSIVE, align 4
  %169 = call i32 @vlc_player_SelectTrack(i32* %165, %struct.TYPE_18__* %167, i32 %168)
  br label %170

170:                                              ; preds = %162, %150, %143
  br label %200

171:                                              ; preds = %103
  %172 = load %struct.vlc_player_input*, %struct.vlc_player_input** %3, align 8
  %173 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %173, i32 0, i32 3
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 4
  %177 = icmp ne i32 %176, -2
  br i1 %177, label %178, label %198

178:                                              ; preds = %171
  %179 = load %struct.vlc_player_input*, %struct.vlc_player_input** %3, align 8
  %180 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %180, i32 0, i32 3
  %182 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.vlc_input_event_es*, %struct.vlc_input_event_es** %4, align 8
  %185 = getelementptr inbounds %struct.vlc_input_event_es, %struct.vlc_input_event_es* %184, i32 0, i32 2
  %186 = load %struct.TYPE_17__*, %struct.TYPE_17__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = icmp eq i32 %183, %188
  br i1 %189, label %190, label %198

190:                                              ; preds = %178
  %191 = load %struct.vlc_player_input*, %struct.vlc_player_input** %3, align 8
  %192 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %191, i32 0, i32 1
  %193 = load i32*, i32** %192, align 8
  %194 = load %struct.vlc_player_track_priv*, %struct.vlc_player_track_priv** %7, align 8
  %195 = getelementptr inbounds %struct.vlc_player_track_priv, %struct.vlc_player_track_priv* %194, i32 0, i32 0
  %196 = load i32, i32* @VLC_PLAYER_SELECT_EXCLUSIVE, align 4
  %197 = call i32 @vlc_player_SelectTrack(i32* %193, %struct.TYPE_18__* %195, i32 %196)
  br label %198

198:                                              ; preds = %190, %178, %171
  br label %199

199:                                              ; preds = %103, %198
  br label %200

200:                                              ; preds = %199, %170, %142
  br label %351

201:                                              ; preds = %74
  %202 = load i32*, i32** %5, align 8
  %203 = load %struct.vlc_input_event_es*, %struct.vlc_input_event_es** %4, align 8
  %204 = getelementptr inbounds %struct.vlc_input_event_es, %struct.vlc_input_event_es* %203, i32 0, i32 1
  %205 = load i64, i64* %204, align 8
  %206 = call %struct.vlc_player_track_priv* @vlc_player_track_vector_FindById(i32* %202, i64 %205, i64* %8)
  store %struct.vlc_player_track_priv* %206, %struct.vlc_player_track_priv** %7, align 8
  %207 = load %struct.vlc_player_track_priv*, %struct.vlc_player_track_priv** %7, align 8
  %208 = icmp ne %struct.vlc_player_track_priv* %207, null
  br i1 %208, label %209, label %221

209:                                              ; preds = %201
  %210 = load i32*, i32** %6, align 8
  %211 = load i32, i32* @on_track_list_changed, align 4
  %212 = load %struct.TYPE_18__*, %struct.TYPE_18__** @VLC_PLAYER_LIST_REMOVED, align 8
  %213 = load %struct.vlc_player_track_priv*, %struct.vlc_player_track_priv** %7, align 8
  %214 = getelementptr inbounds %struct.vlc_player_track_priv, %struct.vlc_player_track_priv* %213, i32 0, i32 0
  %215 = call i32 @vlc_player_SendEvent(i32* %210, i32 %211, %struct.TYPE_18__* %212, %struct.TYPE_18__* %214)
  %216 = load i32*, i32** %5, align 8
  %217 = load i64, i64* %8, align 8
  %218 = call i32 @vlc_vector_remove(i32* %216, i64 %217)
  %219 = load %struct.vlc_player_track_priv*, %struct.vlc_player_track_priv** %7, align 8
  %220 = call i32 @vlc_player_track_priv_Delete(%struct.vlc_player_track_priv* %219)
  br label %221

221:                                              ; preds = %209, %201
  br label %351

222:                                              ; preds = %74
  %223 = load i32*, i32** %5, align 8
  %224 = load %struct.vlc_input_event_es*, %struct.vlc_input_event_es** %4, align 8
  %225 = getelementptr inbounds %struct.vlc_input_event_es, %struct.vlc_input_event_es* %224, i32 0, i32 1
  %226 = load i64, i64* %225, align 8
  %227 = call %struct.vlc_player_track_priv* @vlc_player_track_vector_FindById(i32* %223, i64 %226, i64* null)
  store %struct.vlc_player_track_priv* %227, %struct.vlc_player_track_priv** %7, align 8
  %228 = load %struct.vlc_player_track_priv*, %struct.vlc_player_track_priv** %7, align 8
  %229 = icmp ne %struct.vlc_player_track_priv* %228, null
  br i1 %229, label %231, label %230

230:                                              ; preds = %222
  br label %351

231:                                              ; preds = %222
  %232 = load %struct.vlc_player_track_priv*, %struct.vlc_player_track_priv** %7, align 8
  %233 = load %struct.vlc_input_event_es*, %struct.vlc_input_event_es** %4, align 8
  %234 = getelementptr inbounds %struct.vlc_input_event_es, %struct.vlc_input_event_es* %233, i32 0, i32 3
  %235 = load i64, i64* %234, align 8
  %236 = load %struct.vlc_input_event_es*, %struct.vlc_input_event_es** %4, align 8
  %237 = getelementptr inbounds %struct.vlc_input_event_es, %struct.vlc_input_event_es* %236, i32 0, i32 2
  %238 = load %struct.TYPE_17__*, %struct.TYPE_17__** %237, align 8
  %239 = call i32 @vlc_player_track_priv_Update(%struct.vlc_player_track_priv* %232, i64 %235, %struct.TYPE_17__* %238)
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %242

241:                                              ; preds = %231
  br label %351

242:                                              ; preds = %231
  %243 = load i32*, i32** %6, align 8
  %244 = load i32, i32* @on_track_list_changed, align 4
  %245 = load %struct.TYPE_18__*, %struct.TYPE_18__** @VLC_PLAYER_LIST_UPDATED, align 8
  %246 = load %struct.vlc_player_track_priv*, %struct.vlc_player_track_priv** %7, align 8
  %247 = getelementptr inbounds %struct.vlc_player_track_priv, %struct.vlc_player_track_priv* %246, i32 0, i32 0
  %248 = call i32 @vlc_player_SendEvent(i32* %243, i32 %244, %struct.TYPE_18__* %245, %struct.TYPE_18__* %247)
  br label %351

249:                                              ; preds = %74
  %250 = load i32*, i32** %5, align 8
  %251 = load %struct.vlc_input_event_es*, %struct.vlc_input_event_es** %4, align 8
  %252 = getelementptr inbounds %struct.vlc_input_event_es, %struct.vlc_input_event_es* %251, i32 0, i32 1
  %253 = load i64, i64* %252, align 8
  %254 = call %struct.vlc_player_track_priv* @vlc_player_track_vector_FindById(i32* %250, i64 %253, i64* null)
  store %struct.vlc_player_track_priv* %254, %struct.vlc_player_track_priv** %7, align 8
  %255 = load %struct.vlc_player_track_priv*, %struct.vlc_player_track_priv** %7, align 8
  %256 = icmp ne %struct.vlc_player_track_priv* %255, null
  br i1 %256, label %257, label %268

257:                                              ; preds = %249
  %258 = load %struct.vlc_player_track_priv*, %struct.vlc_player_track_priv** %7, align 8
  %259 = getelementptr inbounds %struct.vlc_player_track_priv, %struct.vlc_player_track_priv* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %259, i32 0, i32 0
  store i32 1, i32* %260, align 8
  %261 = load i32*, i32** %6, align 8
  %262 = load i32, i32* @on_track_selection_changed, align 4
  %263 = load %struct.vlc_player_track_priv*, %struct.vlc_player_track_priv** %7, align 8
  %264 = getelementptr inbounds %struct.vlc_player_track_priv, %struct.vlc_player_track_priv* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %264, i32 0, i32 1
  %266 = load %struct.TYPE_18__*, %struct.TYPE_18__** %265, align 8
  %267 = call i32 @vlc_player_SendEvent(i32* %261, i32 %262, %struct.TYPE_18__* null, %struct.TYPE_18__* %266)
  br label %268

268:                                              ; preds = %257, %249
  %269 = load %struct.vlc_input_event_es*, %struct.vlc_input_event_es** %4, align 8
  %270 = getelementptr inbounds %struct.vlc_input_event_es, %struct.vlc_input_event_es* %269, i32 0, i32 2
  %271 = load %struct.TYPE_17__*, %struct.TYPE_17__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %271, i32 0, i32 0
  %273 = load i64, i64* %272, align 8
  switch i64 %273, label %322 [
    i64 133, label %274
    i64 135, label %290
    i64 134, label %306
  ]

274:                                              ; preds = %268
  %275 = load %struct.vlc_player_input*, %struct.vlc_player_input** %3, align 8
  %276 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %275, i32 0, i32 0
  %277 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = icmp eq i32 %278, -2
  br i1 %279, label %280, label %289

280:                                              ; preds = %274
  %281 = load %struct.vlc_input_event_es*, %struct.vlc_input_event_es** %4, align 8
  %282 = getelementptr inbounds %struct.vlc_input_event_es, %struct.vlc_input_event_es* %281, i32 0, i32 2
  %283 = load %struct.TYPE_17__*, %struct.TYPE_17__** %282, align 8
  %284 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %283, i32 0, i32 2
  %285 = load i32, i32* %284, align 8
  %286 = load %struct.vlc_player_input*, %struct.vlc_player_input** %3, align 8
  %287 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %286, i32 0, i32 0
  %288 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %287, i32 0, i32 0
  store i32 %285, i32* %288, align 8
  br label %289

289:                                              ; preds = %280, %274
  br label %323

290:                                              ; preds = %268
  %291 = load %struct.vlc_player_input*, %struct.vlc_player_input** %3, align 8
  %292 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %291, i32 0, i32 0
  %293 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 4
  %295 = icmp eq i32 %294, -2
  br i1 %295, label %296, label %305

296:                                              ; preds = %290
  %297 = load %struct.vlc_input_event_es*, %struct.vlc_input_event_es** %4, align 8
  %298 = getelementptr inbounds %struct.vlc_input_event_es, %struct.vlc_input_event_es* %297, i32 0, i32 2
  %299 = load %struct.TYPE_17__*, %struct.TYPE_17__** %298, align 8
  %300 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %299, i32 0, i32 2
  %301 = load i32, i32* %300, align 8
  %302 = load %struct.vlc_player_input*, %struct.vlc_player_input** %3, align 8
  %303 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %302, i32 0, i32 0
  %304 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %303, i32 0, i32 1
  store i32 %301, i32* %304, align 4
  br label %305

305:                                              ; preds = %296, %290
  br label %323

306:                                              ; preds = %268
  %307 = load %struct.vlc_player_input*, %struct.vlc_player_input** %3, align 8
  %308 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %307, i32 0, i32 0
  %309 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %308, i32 0, i32 2
  %310 = load i32, i32* %309, align 8
  %311 = icmp eq i32 %310, -2
  br i1 %311, label %312, label %321

312:                                              ; preds = %306
  %313 = load %struct.vlc_input_event_es*, %struct.vlc_input_event_es** %4, align 8
  %314 = getelementptr inbounds %struct.vlc_input_event_es, %struct.vlc_input_event_es* %313, i32 0, i32 2
  %315 = load %struct.TYPE_17__*, %struct.TYPE_17__** %314, align 8
  %316 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %315, i32 0, i32 2
  %317 = load i32, i32* %316, align 8
  %318 = load %struct.vlc_player_input*, %struct.vlc_player_input** %3, align 8
  %319 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %318, i32 0, i32 0
  %320 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %319, i32 0, i32 2
  store i32 %317, i32* %320, align 8
  br label %321

321:                                              ; preds = %312, %306
  br label %323

322:                                              ; preds = %268
  br label %323

323:                                              ; preds = %322, %321, %305, %289
  br label %351

324:                                              ; preds = %74
  %325 = load i32*, i32** %5, align 8
  %326 = load %struct.vlc_input_event_es*, %struct.vlc_input_event_es** %4, align 8
  %327 = getelementptr inbounds %struct.vlc_input_event_es, %struct.vlc_input_event_es* %326, i32 0, i32 1
  %328 = load i64, i64* %327, align 8
  %329 = call %struct.vlc_player_track_priv* @vlc_player_track_vector_FindById(i32* %325, i64 %328, i64* null)
  store %struct.vlc_player_track_priv* %329, %struct.vlc_player_track_priv** %7, align 8
  %330 = load %struct.vlc_player_track_priv*, %struct.vlc_player_track_priv** %7, align 8
  %331 = icmp ne %struct.vlc_player_track_priv* %330, null
  br i1 %331, label %332, label %348

332:                                              ; preds = %324
  %333 = load i32*, i32** %6, align 8
  %334 = load %struct.vlc_input_event_es*, %struct.vlc_input_event_es** %4, align 8
  %335 = getelementptr inbounds %struct.vlc_input_event_es, %struct.vlc_input_event_es* %334, i32 0, i32 1
  %336 = load i64, i64* %335, align 8
  %337 = call i32 @vlc_player_RemoveTimerSource(i32* %333, i64 %336)
  %338 = load %struct.vlc_player_track_priv*, %struct.vlc_player_track_priv** %7, align 8
  %339 = getelementptr inbounds %struct.vlc_player_track_priv, %struct.vlc_player_track_priv* %338, i32 0, i32 0
  %340 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %339, i32 0, i32 0
  store i32 0, i32* %340, align 8
  %341 = load i32*, i32** %6, align 8
  %342 = load i32, i32* @on_track_selection_changed, align 4
  %343 = load %struct.vlc_player_track_priv*, %struct.vlc_player_track_priv** %7, align 8
  %344 = getelementptr inbounds %struct.vlc_player_track_priv, %struct.vlc_player_track_priv* %343, i32 0, i32 0
  %345 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %344, i32 0, i32 1
  %346 = load %struct.TYPE_18__*, %struct.TYPE_18__** %345, align 8
  %347 = call i32 @vlc_player_SendEvent(i32* %341, i32 %342, %struct.TYPE_18__* %346, %struct.TYPE_18__* null)
  br label %348

348:                                              ; preds = %332, %324
  br label %351

349:                                              ; preds = %74
  %350 = call i32 (...) @vlc_assert_unreachable()
  br label %351

351:                                              ; preds = %59, %73, %349, %348, %323, %242, %241, %230, %221, %200, %100, %94
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vlc_player_input_HandleTeletextMenu(%struct.vlc_player_input*, %struct.vlc_input_event_es*) #1

declare dso_local i32* @vlc_player_input_GetTrackVector(%struct.vlc_player_input*, i64) #1

declare dso_local %struct.vlc_player_track_priv* @vlc_player_track_priv_New(i64, i64, %struct.TYPE_17__*) #1

declare dso_local i32 @vlc_vector_push(i32*, %struct.vlc_player_track_priv*) #1

declare dso_local i32 @vlc_player_track_priv_Delete(%struct.vlc_player_track_priv*) #1

declare dso_local i32 @vlc_player_SendEvent(i32*, i32, %struct.TYPE_18__*, %struct.TYPE_18__*) #1

declare dso_local i32 @vlc_player_SelectTrack(i32*, %struct.TYPE_18__*, i32) #1

declare dso_local %struct.vlc_player_track_priv* @vlc_player_track_vector_FindById(i32*, i64, i64*) #1

declare dso_local i32 @vlc_vector_remove(i32*, i64) #1

declare dso_local i32 @vlc_player_track_priv_Update(%struct.vlc_player_track_priv*, i64, %struct.TYPE_17__*) #1

declare dso_local i32 @vlc_player_RemoveTimerSource(i32*, i64) #1

declare dso_local i32 @vlc_assert_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
