; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_service.c_service_set_state.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_service.c_service_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i64, i64, i64, i64, i8*, i32, i32*, i32*, i8* }
%struct.TYPE_18__ = type { i32, i64 }

@SERVICE_IDLE = common dso_local global i64 0, align 8
@state_translation_table_idle = common dso_local global i32* null, align 8
@state_translation_table = common dso_local global i32* null, align 8
@SERVICE_CONDITION = common dso_local global i32 0, align 4
@SERVICE_START_PRE = common dso_local global i32 0, align 4
@SERVICE_START = common dso_local global i64 0, align 8
@SERVICE_START_POST = common dso_local global i64 0, align 8
@SERVICE_RUNNING = common dso_local global i32 0, align 4
@SERVICE_RELOAD = common dso_local global i32 0, align 4
@SERVICE_STOP = common dso_local global i32 0, align 4
@SERVICE_STOP_WATCHDOG = common dso_local global i32 0, align 4
@SERVICE_STOP_SIGTERM = common dso_local global i32 0, align 4
@SERVICE_STOP_SIGKILL = common dso_local global i32 0, align 4
@SERVICE_STOP_POST = common dso_local global i32 0, align 4
@SERVICE_FINAL_SIGTERM = common dso_local global i32 0, align 4
@SERVICE_FINAL_SIGKILL = common dso_local global i32 0, align 4
@SERVICE_AUTO_RESTART = common dso_local global i32 0, align 4
@SERVICE_CLEANING = common dso_local global i32 0, align 4
@_SERVICE_EXEC_COMMAND_INVALID = common dso_local global i32 0, align 4
@SERVICE_DEAD = common dso_local global i64 0, align 8
@SERVICE_FAILED = common dso_local global i32 0, align 4
@SERVICE_EXITED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"Changed %s -> %s\00", align 1
@SERVICE_SUCCESS = common dso_local global i64 0, align 8
@UNIT_NOTIFY_RELOAD_FAILURE = common dso_local global i32 0, align 4
@UNIT_NOTIFY_WILL_AUTO_RESTART = common dso_local global i32 0, align 4
@SERVICE_SKIP_CONDITION = common dso_local global i64 0, align 8
@UNIT_NOTIFY_SKIP_CONDITION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*, i64)* @service_set_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @service_set_state(%struct.TYPE_17__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %8 = call i32 @assert(%struct.TYPE_17__* %7)
  %9 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* %4, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %16 = call %struct.TYPE_18__* @UNIT(%struct.TYPE_17__* %15)
  %17 = call i32 @bus_unit_send_pending_change_signal(%struct.TYPE_18__* %16, i32 0)
  br label %18

18:                                               ; preds = %14, %2
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @SERVICE_IDLE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32*, i32** @state_translation_table_idle, align 8
  br label %28

26:                                               ; preds = %18
  %27 = load i32*, i32** @state_translation_table, align 8
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i32* [ %25, %24 ], [ %27, %26 ]
  store i32* %29, i32** %6, align 8
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %5, align 8
  %33 = load i64, i64* %4, align 8
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %37 = call i32 @service_unwatch_pid_file(%struct.TYPE_17__* %36)
  %38 = load i64, i64* %4, align 8
  %39 = load i32, i32* @SERVICE_CONDITION, align 4
  %40 = sext i32 %39 to i64
  %41 = load i32, i32* @SERVICE_START_PRE, align 4
  %42 = sext i32 %41 to i64
  %43 = load i64, i64* @SERVICE_START, align 8
  %44 = load i64, i64* @SERVICE_START_POST, align 8
  %45 = load i32, i32* @SERVICE_RUNNING, align 4
  %46 = load i32, i32* @SERVICE_RELOAD, align 4
  %47 = load i32, i32* @SERVICE_STOP, align 4
  %48 = load i32, i32* @SERVICE_STOP_WATCHDOG, align 4
  %49 = load i32, i32* @SERVICE_STOP_SIGTERM, align 4
  %50 = load i32, i32* @SERVICE_STOP_SIGKILL, align 4
  %51 = load i32, i32* @SERVICE_STOP_POST, align 4
  %52 = load i32, i32* @SERVICE_FINAL_SIGTERM, align 4
  %53 = load i32, i32* @SERVICE_FINAL_SIGKILL, align 4
  %54 = load i32, i32* @SERVICE_AUTO_RESTART, align 4
  %55 = load i32, i32* @SERVICE_CLEANING, align 4
  %56 = call i64 (i64, i64, i64, i64, ...) @IN_SET(i64 %38, i64 %40, i64 %42, i64 %43, i64 %44, i32 %45, i32 %46, i32 %47, i32 %48, i32 %49, i32 %50, i32 %51, i32 %52, i32 %53, i32 %54, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %65, label %58

58:                                               ; preds = %28
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 9
  %61 = load i8*, i8** %60, align 8
  %62 = call i8* @sd_event_source_unref(i8* %61)
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 9
  store i8* %62, i8** %64, align 8
  br label %65

65:                                               ; preds = %58, %28
  %66 = load i64, i64* %4, align 8
  %67 = load i64, i64* @SERVICE_START, align 8
  %68 = load i64, i64* @SERVICE_START_POST, align 8
  %69 = load i32, i32* @SERVICE_RUNNING, align 4
  %70 = sext i32 %69 to i64
  %71 = load i32, i32* @SERVICE_RELOAD, align 4
  %72 = load i32, i32* @SERVICE_STOP, align 4
  %73 = load i32, i32* @SERVICE_STOP_WATCHDOG, align 4
  %74 = load i32, i32* @SERVICE_STOP_SIGTERM, align 4
  %75 = load i32, i32* @SERVICE_STOP_SIGKILL, align 4
  %76 = load i32, i32* @SERVICE_STOP_POST, align 4
  %77 = load i32, i32* @SERVICE_FINAL_SIGTERM, align 4
  %78 = load i32, i32* @SERVICE_FINAL_SIGKILL, align 4
  %79 = call i64 (i64, i64, i64, i64, ...) @IN_SET(i64 %66, i64 %67, i64 %68, i64 %70, i32 %71, i32 %72, i32 %73, i32 %74, i32 %75, i32 %76, i32 %77, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %65
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %83 = call i32 @service_unwatch_main_pid(%struct.TYPE_17__* %82)
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 8
  store i32* null, i32** %85, align 8
  br label %86

86:                                               ; preds = %81, %65
  %87 = load i64, i64* %4, align 8
  %88 = load i32, i32* @SERVICE_CONDITION, align 4
  %89 = sext i32 %88 to i64
  %90 = load i32, i32* @SERVICE_START_PRE, align 4
  %91 = sext i32 %90 to i64
  %92 = load i64, i64* @SERVICE_START, align 8
  %93 = load i64, i64* @SERVICE_START_POST, align 8
  %94 = load i32, i32* @SERVICE_RELOAD, align 4
  %95 = load i32, i32* @SERVICE_STOP, align 4
  %96 = load i32, i32* @SERVICE_STOP_WATCHDOG, align 4
  %97 = load i32, i32* @SERVICE_STOP_SIGTERM, align 4
  %98 = load i32, i32* @SERVICE_STOP_SIGKILL, align 4
  %99 = load i32, i32* @SERVICE_STOP_POST, align 4
  %100 = load i32, i32* @SERVICE_FINAL_SIGTERM, align 4
  %101 = load i32, i32* @SERVICE_FINAL_SIGKILL, align 4
  %102 = load i32, i32* @SERVICE_CLEANING, align 4
  %103 = call i64 (i64, i64, i64, i64, ...) @IN_SET(i64 %87, i64 %89, i64 %91, i64 %92, i64 %93, i32 %94, i32 %95, i32 %96, i32 %97, i32 %98, i32 %99, i32 %100, i32 %101, i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %113, label %105

105:                                              ; preds = %86
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %107 = call i32 @service_unwatch_control_pid(%struct.TYPE_17__* %106)
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 7
  store i32* null, i32** %109, align 8
  %110 = load i32, i32* @_SERVICE_EXEC_COMMAND_INVALID, align 4
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 6
  store i32 %110, i32* %112, align 8
  br label %113

113:                                              ; preds = %105, %86
  %114 = load i64, i64* %4, align 8
  %115 = load i64, i64* @SERVICE_DEAD, align 8
  %116 = load i32, i32* @SERVICE_FAILED, align 4
  %117 = sext i32 %116 to i64
  %118 = load i32, i32* @SERVICE_AUTO_RESTART, align 4
  %119 = sext i32 %118 to i64
  %120 = call i64 (i64, i64, i64, i64, ...) @IN_SET(i64 %114, i64 %115, i64 %117, i64 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %129

122:                                              ; preds = %113
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %124 = call %struct.TYPE_18__* @UNIT(%struct.TYPE_17__* %123)
  %125 = call i32 @unit_unwatch_all_pids(%struct.TYPE_18__* %124)
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %127 = call %struct.TYPE_18__* @UNIT(%struct.TYPE_17__* %126)
  %128 = call i32 @unit_dequeue_rewatch_pids(%struct.TYPE_18__* %127)
  br label %129

129:                                              ; preds = %122, %113
  %130 = load i64, i64* %4, align 8
  %131 = load i32, i32* @SERVICE_CONDITION, align 4
  %132 = sext i32 %131 to i64
  %133 = load i32, i32* @SERVICE_START_PRE, align 4
  %134 = sext i32 %133 to i64
  %135 = load i64, i64* @SERVICE_START, align 8
  %136 = load i64, i64* @SERVICE_START_POST, align 8
  %137 = load i32, i32* @SERVICE_RUNNING, align 4
  %138 = load i32, i32* @SERVICE_RELOAD, align 4
  %139 = load i32, i32* @SERVICE_STOP, align 4
  %140 = load i32, i32* @SERVICE_STOP_WATCHDOG, align 4
  %141 = load i32, i32* @SERVICE_STOP_SIGTERM, align 4
  %142 = load i32, i32* @SERVICE_STOP_SIGKILL, align 4
  %143 = load i32, i32* @SERVICE_STOP_POST, align 4
  %144 = load i32, i32* @SERVICE_FINAL_SIGTERM, align 4
  %145 = load i32, i32* @SERVICE_FINAL_SIGKILL, align 4
  %146 = call i64 (i64, i64, i64, i64, ...) @IN_SET(i64 %130, i64 %132, i64 %134, i64 %135, i64 %136, i32 %137, i32 %138, i32 %139, i32 %140, i32 %141, i32 %142, i32 %143, i32 %144, i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %161, label %148

148:                                              ; preds = %129
  %149 = load i64, i64* %4, align 8
  %150 = load i64, i64* @SERVICE_DEAD, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %158

152:                                              ; preds = %148
  %153 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %154 = call %struct.TYPE_18__* @UNIT(%struct.TYPE_17__* %153)
  %155 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %161, label %158

158:                                              ; preds = %152, %148
  %159 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %160 = call i32 @service_close_socket_fd(%struct.TYPE_17__* %159)
  br label %161

161:                                              ; preds = %158, %152, %129
  %162 = load i64, i64* %4, align 8
  %163 = load i64, i64* @SERVICE_START, align 8
  %164 = icmp ne i64 %162, %163
  br i1 %164, label %165, label %172

165:                                              ; preds = %161
  %166 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %166, i32 0, i32 5
  %168 = load i8*, i8** %167, align 8
  %169 = call i8* @sd_event_source_unref(i8* %168)
  %170 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %170, i32 0, i32 5
  store i8* %169, i8** %171, align 8
  br label %172

172:                                              ; preds = %165, %161
  %173 = load i64, i64* %4, align 8
  %174 = load i64, i64* @SERVICE_START_POST, align 8
  %175 = load i32, i32* @SERVICE_RUNNING, align 4
  %176 = sext i32 %175 to i64
  %177 = load i32, i32* @SERVICE_RELOAD, align 4
  %178 = sext i32 %177 to i64
  %179 = call i64 (i64, i64, i64, i64, ...) @IN_SET(i64 %173, i64 %174, i64 %176, i64 %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %184, label %181

181:                                              ; preds = %172
  %182 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %183 = call i32 @service_stop_watchdog(%struct.TYPE_17__* %182)
  br label %184

184:                                              ; preds = %181, %172
  %185 = load i64, i64* %4, align 8
  %186 = load i64, i64* @SERVICE_EXITED, align 8
  %187 = icmp eq i64 %185, %186
  br i1 %187, label %188, label %199

188:                                              ; preds = %184
  %189 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %190 = call %struct.TYPE_18__* @UNIT(%struct.TYPE_17__* %189)
  %191 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = call i32 @MANAGER_IS_RELOADING(i32 %192)
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %199, label %195

195:                                              ; preds = %188
  %196 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %197 = call %struct.TYPE_18__* @UNIT(%struct.TYPE_17__* %196)
  %198 = call i32 @unit_prune_cgroup(%struct.TYPE_18__* %197)
  br label %199

199:                                              ; preds = %195, %188, %184
  %200 = load i64, i64* %5, align 8
  %201 = load i64, i64* %4, align 8
  %202 = icmp ne i64 %200, %201
  br i1 %202, label %203, label %211

203:                                              ; preds = %199
  %204 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %205 = call %struct.TYPE_18__* @UNIT(%struct.TYPE_17__* %204)
  %206 = load i64, i64* %5, align 8
  %207 = call i32 @service_state_to_string(i64 %206)
  %208 = load i64, i64* %4, align 8
  %209 = call i32 @service_state_to_string(i64 %208)
  %210 = call i32 @log_unit_debug(%struct.TYPE_18__* %205, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %207, i32 %209)
  br label %211

211:                                              ; preds = %203, %199
  %212 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %213 = call %struct.TYPE_18__* @UNIT(%struct.TYPE_17__* %212)
  %214 = load i32*, i32** %6, align 8
  %215 = load i64, i64* %5, align 8
  %216 = getelementptr inbounds i32, i32* %214, i64 %215
  %217 = load i32, i32* %216, align 4
  %218 = load i32*, i32** %6, align 8
  %219 = load i64, i64* %4, align 8
  %220 = getelementptr inbounds i32, i32* %218, i64 %219
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %223 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %222, i32 0, i32 2
  %224 = load i64, i64* %223, align 8
  %225 = load i64, i64* @SERVICE_SUCCESS, align 8
  %226 = icmp eq i64 %224, %225
  br i1 %226, label %227, label %228

227:                                              ; preds = %211
  br label %230

228:                                              ; preds = %211
  %229 = load i32, i32* @UNIT_NOTIFY_RELOAD_FAILURE, align 4
  br label %230

230:                                              ; preds = %228, %227
  %231 = phi i32 [ 0, %227 ], [ %229, %228 ]
  %232 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %233 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %232, i32 0, i32 4
  %234 = load i64, i64* %233, align 8
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %238

236:                                              ; preds = %230
  %237 = load i32, i32* @UNIT_NOTIFY_WILL_AUTO_RESTART, align 4
  br label %239

238:                                              ; preds = %230
  br label %239

239:                                              ; preds = %238, %236
  %240 = phi i32 [ %237, %236 ], [ 0, %238 ]
  %241 = or i32 %231, %240
  %242 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %243 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %242, i32 0, i32 3
  %244 = load i64, i64* %243, align 8
  %245 = load i64, i64* @SERVICE_SKIP_CONDITION, align 8
  %246 = icmp eq i64 %244, %245
  br i1 %246, label %247, label %249

247:                                              ; preds = %239
  %248 = load i32, i32* @UNIT_NOTIFY_SKIP_CONDITION, align 4
  br label %250

249:                                              ; preds = %239
  br label %250

250:                                              ; preds = %249, %247
  %251 = phi i32 [ %248, %247 ], [ 0, %249 ]
  %252 = or i32 %241, %251
  %253 = call i32 @unit_notify(%struct.TYPE_18__* %213, i32 %217, i32 %221, i32 %252)
  ret void
}

declare dso_local i32 @assert(%struct.TYPE_17__*) #1

declare dso_local i32 @bus_unit_send_pending_change_signal(%struct.TYPE_18__*, i32) #1

declare dso_local %struct.TYPE_18__* @UNIT(%struct.TYPE_17__*) #1

declare dso_local i32 @service_unwatch_pid_file(%struct.TYPE_17__*) #1

declare dso_local i64 @IN_SET(i64, i64, i64, i64, ...) #1

declare dso_local i8* @sd_event_source_unref(i8*) #1

declare dso_local i32 @service_unwatch_main_pid(%struct.TYPE_17__*) #1

declare dso_local i32 @service_unwatch_control_pid(%struct.TYPE_17__*) #1

declare dso_local i32 @unit_unwatch_all_pids(%struct.TYPE_18__*) #1

declare dso_local i32 @unit_dequeue_rewatch_pids(%struct.TYPE_18__*) #1

declare dso_local i32 @service_close_socket_fd(%struct.TYPE_17__*) #1

declare dso_local i32 @service_stop_watchdog(%struct.TYPE_17__*) #1

declare dso_local i32 @MANAGER_IS_RELOADING(i32) #1

declare dso_local i32 @unit_prune_cgroup(%struct.TYPE_18__*) #1

declare dso_local i32 @log_unit_debug(%struct.TYPE_18__*, i8*, i32, i32) #1

declare dso_local i32 @service_state_to_string(i64) #1

declare dso_local i32 @unit_notify(%struct.TYPE_18__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
