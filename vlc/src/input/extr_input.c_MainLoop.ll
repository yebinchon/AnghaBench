; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_input.c_MainLoop.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_input.c_MainLoop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32* }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_12__ = type { i64, i32, %struct.TYPE_9__*, i64 }
%struct.TYPE_9__ = type { i64, %struct.TYPE_11__* }

@.str = private unnamed_addr constant [13 x i8] c"start-paused\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"play-and-pause\00", align 1
@ERROR_S = common dso_local global i64 0, align 8
@PAUSE_S = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"waiting decoder fifos to empty\00", align 1
@INPUT_IDLE_SLEEP = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [34 x i8] c"pausing at EOF (pause after each)\00", align 1
@INPUT_CONTROL_SET_STATE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"control type=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @MainLoop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @MainLoop(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_10__, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_10__, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %2
  %24 = load i32*, i32** %3, align 8
  %25 = call i64 @var_InheritBool(i32* %24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load i32*, i32** %3, align 8
  %29 = call i64 (...) @vlc_tick_now()
  %30 = call i32 @ControlPause(i32* %28, i64 %29)
  br label %31

31:                                               ; preds = %27, %23, %2
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load i32*, i32** %3, align 8
  %36 = call i64 @var_InheritBool(i32* %35, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %37 = icmp ne i64 %36, 0
  br label %38

38:                                               ; preds = %34, %31
  %39 = phi i1 [ false, %31 ], [ %37, %34 ]
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %41 = load i32*, i32** %3, align 8
  %42 = call %struct.TYPE_12__* @input_priv(i32* %41)
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %45, align 8
  store %struct.TYPE_11__* %46, %struct.TYPE_11__** %9, align 8
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = icmp ne i32* %49, null
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %10, align 4
  br label %52

52:                                               ; preds = %262, %38
  %53 = load i32*, i32** %3, align 8
  %54 = call i32 @input_Stopped(i32* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %52
  %57 = load i32*, i32** %3, align 8
  %58 = call %struct.TYPE_12__* @input_priv(i32* %57)
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @ERROR_S, align 8
  %62 = icmp ne i64 %60, %61
  br label %63

63:                                               ; preds = %56, %52
  %64 = phi i1 [ false, %52 ], [ %62, %56 ]
  br i1 %64, label %65, label %263

65:                                               ; preds = %63
  store i64 -1, i64* %11, align 8
  %66 = load i32*, i32** %3, align 8
  %67 = call %struct.TYPE_12__* @input_priv(i32* %66)
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @PAUSE_S, align 8
  %71 = icmp eq i64 %69, %70
  %72 = zext i1 %71 to i32
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* %12, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %93

75:                                               ; preds = %65
  %76 = load i32*, i32** %3, align 8
  %77 = call %struct.TYPE_12__* @input_priv(i32* %76)
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i64 @es_out_GetBuffering(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %75
  %83 = load i32*, i32** %3, align 8
  %84 = call %struct.TYPE_12__* @input_priv(i32* %83)
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 2
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br label %90

90:                                               ; preds = %82, %75
  %91 = phi i1 [ true, %75 ], [ %89, %82 ]
  %92 = zext i1 %91 to i32
  store i32 %92, i32* %12, align 4
  br label %93

93:                                               ; preds = %90, %65
  %94 = load i32, i32* %12, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %178, label %96

96:                                               ; preds = %93
  %97 = load i32*, i32** %3, align 8
  %98 = call %struct.TYPE_12__* @input_priv(i32* %97)
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 2
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %120, label %104

104:                                              ; preds = %96
  store i32 0, i32* %13, align 4
  %105 = load i32*, i32** %3, align 8
  %106 = call i32 @MainLoopDemux(i32* %105, i32* %13)
  %107 = load i32, i32* %10, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %104
  %110 = load i32*, i32** %3, align 8
  %111 = call %struct.TYPE_12__* @input_priv(i32* %110)
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = call i64 @es_out_GetWakeup(i32 %113)
  store i64 %114, i64* %11, align 8
  br label %115

115:                                              ; preds = %109, %104
  %116 = load i32, i32* %13, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %115
  store i64 0, i64* %5, align 8
  br label %119

119:                                              ; preds = %118, %115
  store i32 0, i32* %8, align 4
  br label %166

120:                                              ; preds = %96
  %121 = load i32*, i32** %3, align 8
  %122 = call %struct.TYPE_12__* @input_priv(i32* %121)
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @es_out_GetEmpty(i32 %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %133, label %127

127:                                              ; preds = %120
  %128 = load i32*, i32** %3, align 8
  %129 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %128, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %130 = call i64 (...) @vlc_tick_now()
  %131 = load i64, i64* @INPUT_IDLE_SLEEP, align 8
  %132 = add nsw i64 %130, %131
  store i64 %132, i64* %11, align 8
  br label %165

133:                                              ; preds = %120
  %134 = load i32, i32* %7, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %158

136:                                              ; preds = %133
  %137 = load i32*, i32** %3, align 8
  %138 = call %struct.TYPE_12__* @input_priv(i32* %137)
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 3
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %158

142:                                              ; preds = %136
  %143 = load i32, i32* %8, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %142
  br label %263

146:                                              ; preds = %142
  %147 = load i64, i64* @PAUSE_S, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 0
  store i64 %147, i64* %149, align 8
  %150 = load i32*, i32** %3, align 8
  %151 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %150, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %152 = load i32*, i32** %3, align 8
  %153 = load i32, i32* @INPUT_CONTROL_SET_STATE, align 4
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = call i64 @Control(i32* %152, i32 %153, i64 %156)
  store i32 1, i32* %12, align 4
  store i32 1, i32* %8, align 4
  br label %164

158:                                              ; preds = %136, %133
  %159 = load i32*, i32** %3, align 8
  %160 = call i64 @MainLoopTryRepeat(i32* %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %158
  br label %263

163:                                              ; preds = %158
  br label %164

164:                                              ; preds = %163, %146
  br label %165

165:                                              ; preds = %164, %127
  br label %166

166:                                              ; preds = %165, %119
  %167 = call i64 (...) @vlc_tick_now()
  store i64 %167, i64* %15, align 8
  %168 = load i64, i64* %15, align 8
  %169 = load i64, i64* %5, align 8
  %170 = icmp sge i64 %168, %169
  br i1 %170, label %171, label %177

171:                                              ; preds = %166
  %172 = load i32*, i32** %3, align 8
  %173 = call i32 @MainLoopStatistics(i32* %172)
  %174 = load i64, i64* %15, align 8
  %175 = call i64 @VLC_TICK_FROM_MS(i32 250)
  %176 = add nsw i64 %174, %175
  store i64 %176, i64* %5, align 8
  br label %177

177:                                              ; preds = %171, %166
  br label %178

178:                                              ; preds = %177, %93
  br label %179

179:                                              ; preds = %261, %232, %178
  %180 = load i64, i64* %11, align 8
  store i64 %180, i64* %16, align 8
  %181 = load i32*, i32** %3, align 8
  %182 = call %struct.TYPE_12__* @input_priv(i32* %181)
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 8
  %185 = call i64 @es_out_GetBuffering(i32 %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %196

187:                                              ; preds = %179
  %188 = load i32*, i32** %3, align 8
  %189 = call %struct.TYPE_12__* @input_priv(i32* %188)
  %190 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %189, i32 0, i32 2
  %191 = load %struct.TYPE_9__*, %struct.TYPE_9__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = icmp ne i64 %193, 0
  %195 = xor i1 %194, true
  br label %196

196:                                              ; preds = %187, %179
  %197 = phi i1 [ false, %179 ], [ %195, %187 ]
  %198 = zext i1 %197 to i32
  store i32 %198, i32* %17, align 4
  %199 = load i32, i32* %17, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %223

201:                                              ; preds = %196
  %202 = call i64 (...) @vlc_tick_now()
  store i64 %202, i64* %18, align 8
  %203 = load i64, i64* %18, align 8
  %204 = load i64, i64* %6, align 8
  %205 = call i64 @VLC_TICK_FROM_MS(i32 125)
  %206 = add nsw i64 %204, %205
  %207 = icmp slt i64 %203, %206
  br i1 %207, label %208, label %221

208:                                              ; preds = %201
  %209 = load i64, i64* %16, align 8
  %210 = icmp slt i64 %209, 0
  br i1 %210, label %217, label %211

211:                                              ; preds = %208
  %212 = load i64, i64* %16, align 8
  %213 = load i64, i64* %18, align 8
  %214 = call i64 @VLC_TICK_FROM_MS(i32 20)
  %215 = add nsw i64 %213, %214
  %216 = icmp sgt i64 %212, %215
  br i1 %216, label %217, label %221

217:                                              ; preds = %211, %208
  %218 = load i64, i64* %18, align 8
  %219 = call i64 @VLC_TICK_FROM_MS(i32 20)
  %220 = add nsw i64 %218, %219
  store i64 %220, i64* %16, align 8
  br label %222

221:                                              ; preds = %211, %201
  store i32 0, i32* %17, align 4
  br label %222

222:                                              ; preds = %221, %217
  br label %223

223:                                              ; preds = %222, %196
  %224 = load i32*, i32** %3, align 8
  %225 = load i64, i64* %16, align 8
  %226 = load i32, i32* %17, align 4
  %227 = call i64 @ControlPop(i32* %224, i32* %19, %struct.TYPE_10__* %20, i64 %225, i32 %226)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %234

229:                                              ; preds = %223
  %230 = load i32, i32* %17, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %233

232:                                              ; preds = %229
  br label %179

233:                                              ; preds = %229
  br label %262

234:                                              ; preds = %223
  %235 = load i32*, i32** %3, align 8
  %236 = load i32, i32* %19, align 4
  %237 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %235, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %236)
  %238 = load i32*, i32** %3, align 8
  %239 = load i32, i32* %19, align 4
  %240 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = call i64 @Control(i32* %238, i32 %239, i64 %242)
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %252

245:                                              ; preds = %234
  %246 = load i32, i32* %19, align 4
  %247 = call i64 @ControlIsSeekRequest(i32 %246)
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %251

249:                                              ; preds = %245
  %250 = call i64 (...) @vlc_tick_now()
  store i64 %250, i64* %6, align 8
  br label %251

251:                                              ; preds = %249, %245
  store i64 0, i64* %5, align 8
  br label %252

252:                                              ; preds = %251, %234
  %253 = load i64, i64* %11, align 8
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %261

255:                                              ; preds = %252
  %256 = load i32*, i32** %3, align 8
  %257 = call %struct.TYPE_12__* @input_priv(i32* %256)
  %258 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 8
  %260 = call i64 @es_out_GetWakeup(i32 %259)
  store i64 %260, i64* %11, align 8
  br label %261

261:                                              ; preds = %255, %252
  br label %179

262:                                              ; preds = %233
  br label %52

263:                                              ; preds = %162, %145, %63
  ret void
}

declare dso_local i64 @var_InheritBool(i32*, i8*) #1

declare dso_local i32 @ControlPause(i32*, i64) #1

declare dso_local i64 @vlc_tick_now(...) #1

declare dso_local %struct.TYPE_12__* @input_priv(i32*) #1

declare dso_local i32 @input_Stopped(i32*) #1

declare dso_local i64 @es_out_GetBuffering(i32) #1

declare dso_local i32 @MainLoopDemux(i32*, i32*) #1

declare dso_local i64 @es_out_GetWakeup(i32) #1

declare dso_local i32 @es_out_GetEmpty(i32) #1

declare dso_local i32 @msg_Dbg(i32*, i8*, ...) #1

declare dso_local i64 @Control(i32*, i32, i64) #1

declare dso_local i64 @MainLoopTryRepeat(i32*) #1

declare dso_local i32 @MainLoopStatistics(i32*) #1

declare dso_local i64 @VLC_TICK_FROM_MS(i32) #1

declare dso_local i64 @ControlPop(i32*, i32*, %struct.TYPE_10__*, i64, i32) #1

declare dso_local i64 @ControlIsSeekRequest(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
