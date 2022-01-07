; ModuleID = '/home/carl/AnghaBench/tengine/src/event/modules/extr_ngx_eventport_module.c_ngx_eventport_process_events.c'
source_filename = "/home/carl/AnghaBench/tengine/src/event/modules/extr_ngx_eventport_module.c_ngx_eventport_process_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, i32, i32 (%struct.TYPE_11__*)*, i32, i32, i32, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_11__*, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i32 }
%struct.timespec = type { i32, i32 }

@NGX_TIMER_INFINITE = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_EVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"eventport timer: %M\00", align 1
@ep = common dso_local global i32 0, align 4
@event_list = common dso_local global %struct.TYPE_14__* null, align 8
@nevents = common dso_local global i64 0, align 8
@ngx_errno = common dso_local global i64 0, align 8
@NGX_UPDATE_TIME = common dso_local global i32 0, align 4
@ETIME = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8
@NGX_LOG_ALERT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"port_getn() returned no events without timeout\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_EINTR = common dso_local global i64 0, align 8
@NGX_LOG_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"port_getn() failed\00", align 1
@PORT_SOURCE_TIMER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"eventport: stale event %p\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"eventport: fd:%d, ev:%04Xd\00", align 1
@POLLERR = common dso_local global i32 0, align 4
@POLLHUP = common dso_local global i32 0, align 4
@POLLNVAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"port_getn() error fd:%d ev:%04Xd\00", align 1
@POLLIN = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [42 x i8] c"strange port_getn() events fd:%d ev:%04Xd\00", align 1
@NGX_POST_EVENTS = common dso_local global i32 0, align 4
@ngx_posted_accept_events = common dso_local global i32 0, align 4
@ngx_posted_events = common dso_local global i32 0, align 4
@ngx_use_accept_mutex = common dso_local global i32 0, align 4
@ngx_accept_events = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [24 x i8] c"port_associate() failed\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"unexpected eventport object %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_12__*, i32, i32)* @ngx_eventport_process_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_eventport_process_events(%struct.TYPE_12__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_11__*, align 8
  %16 = alloca %struct.TYPE_11__*, align 8
  %17 = alloca %struct.TYPE_11__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_13__*, align 8
  %20 = alloca %struct.timespec, align 4
  %21 = alloca %struct.timespec*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @NGX_TIMER_INFINITE, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  store %struct.timespec* null, %struct.timespec** %21, align 8
  br label %34

26:                                               ; preds = %3
  %27 = load i32, i32* %6, align 4
  %28 = sdiv i32 %27, 1000
  %29 = getelementptr inbounds %struct.timespec, %struct.timespec* %20, i32 0, i32 0
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* %6, align 4
  %31 = srem i32 %30, 1000
  %32 = mul nsw i32 %31, 1000000
  %33 = getelementptr inbounds %struct.timespec, %struct.timespec* %20, i32 0, i32 1
  store i32 %32, i32* %33, align 4
  store %struct.timespec* %20, %struct.timespec** %21, align 8
  br label %34

34:                                               ; preds = %26, %25
  %35 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_debug1(i32 %35, i32 %38, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %39)
  store i32 1, i32* %10, align 4
  %41 = load i32, i32* @ep, align 4
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** @event_list, align 8
  %43 = load i64, i64* @nevents, align 8
  %44 = trunc i64 %43 to i32
  %45 = load %struct.timespec*, %struct.timespec** %21, align 8
  %46 = call i32 @port_getn(i32 %41, %struct.TYPE_14__* %42, i32 %44, i32* %10, %struct.timespec* %45)
  store i32 %46, i32* %8, align 4
  %47 = load i64, i64* @ngx_errno, align 8
  store i64 %47, i64* %11, align 8
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @NGX_UPDATE_TIME, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %34
  %53 = call i32 (...) @ngx_time_update()
  br label %54

54:                                               ; preds = %52, %34
  %55 = load i32, i32* %8, align 4
  %56 = icmp eq i32 %55, -1
  br i1 %56, label %57, label %91

57:                                               ; preds = %54
  %58 = load i64, i64* %11, align 8
  %59 = load i64, i64* @ETIME, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %74

61:                                               ; preds = %57
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @NGX_TIMER_INFINITE, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = load i64, i64* @NGX_OK, align 8
  store i64 %66, i64* %4, align 8
  br label %380

67:                                               ; preds = %61
  %68 = load i32, i32* @NGX_LOG_ALERT, align 4
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (i32, i32, i64, i8*, ...) @ngx_log_error(i32 %68, i32 %71, i64 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %73 = load i64, i64* @NGX_ERROR, align 8
  store i64 %73, i64* %4, align 8
  br label %380

74:                                               ; preds = %57
  %75 = load i64, i64* %11, align 8
  %76 = load i64, i64* @NGX_EINTR, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = load i32, i32* @NGX_LOG_INFO, align 4
  br label %82

80:                                               ; preds = %74
  %81 = load i32, i32* @NGX_LOG_ALERT, align 4
  br label %82

82:                                               ; preds = %80, %78
  %83 = phi i32 [ %79, %78 ], [ %81, %80 ]
  store i32 %83, i32* %14, align 4
  %84 = load i32, i32* %14, align 4
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i64, i64* %11, align 8
  %89 = call i32 (i32, i32, i64, i8*, ...) @ngx_log_error(i32 %84, i32 %87, i64 %88, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %90 = load i64, i64* @NGX_ERROR, align 8
  store i64 %90, i64* %4, align 8
  br label %380

91:                                               ; preds = %54
  %92 = load i32, i32* %10, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %107

94:                                               ; preds = %91
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* @NGX_TIMER_INFINITE, align 4
  %97 = icmp ne i32 %95, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %94
  %99 = load i64, i64* @NGX_OK, align 8
  store i64 %99, i64* %4, align 8
  br label %380

100:                                              ; preds = %94
  %101 = load i32, i32* @NGX_LOG_ALERT, align 4
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 (i32, i32, i64, i8*, ...) @ngx_log_error(i32 %101, i32 %104, i64 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %106 = load i64, i64* @NGX_ERROR, align 8
  store i64 %106, i64* %4, align 8
  br label %380

107:                                              ; preds = %91
  store i32 0, i32* %13, align 4
  br label %108

108:                                              ; preds = %375, %107
  %109 = load i32, i32* %13, align 4
  %110 = load i32, i32* %10, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %378

112:                                              ; preds = %108
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** @event_list, align 8
  %114 = load i32, i32* %13, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @PORT_SOURCE_TIMER, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %123

121:                                              ; preds = %112
  %122 = call i32 (...) @ngx_time_update()
  br label %375

123:                                              ; preds = %112
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** @event_list, align 8
  %125 = load i32, i32* %13, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 3
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %128, align 8
  store %struct.TYPE_11__* %129, %struct.TYPE_11__** %15, align 8
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** @event_list, align 8
  %131 = load i32, i32* %13, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  switch i32 %135, label %362 [
    i32 129, label %136
    i32 128, label %356
  ]

136:                                              ; preds = %123
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %138 = ptrtoint %struct.TYPE_11__* %137 to i64
  %139 = and i64 %138, 1
  store i64 %139, i64* %12, align 8
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %141 = ptrtoint %struct.TYPE_11__* %140 to i64
  %142 = and i64 %141, -2
  %143 = inttoptr i64 %142 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %143, %struct.TYPE_11__** %15, align 8
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 5
  %146 = load i32, i32* %145, align 8
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %154, label %148

148:                                              ; preds = %136
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* %12, align 8
  %153 = icmp ne i64 %151, %152
  br i1 %153, label %154, label %161

154:                                              ; preds = %148, %136
  %155 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %160 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_debug1(i32 %155, i32 %158, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_11__* %159)
  br label %375

161:                                              ; preds = %148
  %162 = load %struct.TYPE_14__*, %struct.TYPE_14__** @event_list, align 8
  %163 = load i32, i32* %13, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  store i32 %167, i32* %9, align 4
  %168 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %169 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.TYPE_14__*, %struct.TYPE_14__** @event_list, align 8
  %173 = load i32, i32* %13, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %175, i32 0, i32 2
  %177 = load i64, i64* %176, align 8
  %178 = trunc i64 %177 to i32
  %179 = load i32, i32* %9, align 4
  %180 = call i32 @ngx_log_debug2(i32 %168, i32 %171, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %178, i32 %179)
  %181 = load i32, i32* %9, align 4
  %182 = load i32, i32* @POLLERR, align 4
  %183 = load i32, i32* @POLLHUP, align 4
  %184 = or i32 %182, %183
  %185 = load i32, i32* @POLLNVAL, align 4
  %186 = or i32 %184, %185
  %187 = and i32 %181, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %203

189:                                              ; preds = %161
  %190 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %191 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.TYPE_14__*, %struct.TYPE_14__** @event_list, align 8
  %195 = load i32, i32* %13, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %194, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %197, i32 0, i32 2
  %199 = load i64, i64* %198, align 8
  %200 = trunc i64 %199 to i32
  %201 = load i32, i32* %9, align 4
  %202 = call i32 @ngx_log_debug2(i32 %190, i32 %193, i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %200, i32 %201)
  br label %203

203:                                              ; preds = %189, %161
  %204 = load i32, i32* %9, align 4
  %205 = load i32, i32* @POLLIN, align 4
  %206 = load i32, i32* @POLLOUT, align 4
  %207 = or i32 %205, %206
  %208 = load i32, i32* @POLLERR, align 4
  %209 = or i32 %207, %208
  %210 = load i32, i32* @POLLHUP, align 4
  %211 = or i32 %209, %210
  %212 = load i32, i32* @POLLNVAL, align 4
  %213 = or i32 %211, %212
  %214 = xor i32 %213, -1
  %215 = and i32 %204, %214
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %231

217:                                              ; preds = %203
  %218 = load i32, i32* @NGX_LOG_ALERT, align 4
  %219 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %220 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.TYPE_14__*, %struct.TYPE_14__** @event_list, align 8
  %223 = load i32, i32* %13, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %222, i64 %224
  %226 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %225, i32 0, i32 2
  %227 = load i64, i64* %226, align 8
  %228 = trunc i64 %227 to i32
  %229 = load i32, i32* %9, align 4
  %230 = call i32 (i32, i32, i64, i8*, ...) @ngx_log_error(i32 %218, i32 %221, i64 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i32 %228, i32 %229)
  br label %231

231:                                              ; preds = %217, %203
  %232 = load i32, i32* %9, align 4
  %233 = load i32, i32* @POLLERR, align 4
  %234 = load i32, i32* @POLLHUP, align 4
  %235 = or i32 %233, %234
  %236 = load i32, i32* @POLLNVAL, align 4
  %237 = or i32 %235, %236
  %238 = and i32 %232, %237
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %246

240:                                              ; preds = %231
  %241 = load i32, i32* @POLLIN, align 4
  %242 = load i32, i32* @POLLOUT, align 4
  %243 = or i32 %241, %242
  %244 = load i32, i32* %9, align 4
  %245 = or i32 %244, %243
  store i32 %245, i32* %9, align 4
  br label %246

246:                                              ; preds = %240, %231
  %247 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %248 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %247, i32 0, i32 7
  %249 = load %struct.TYPE_13__*, %struct.TYPE_13__** %248, align 8
  store %struct.TYPE_13__* %249, %struct.TYPE_13__** %19, align 8
  %250 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %251 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %250, i32 0, i32 2
  %252 = load %struct.TYPE_11__*, %struct.TYPE_11__** %251, align 8
  store %struct.TYPE_11__* %252, %struct.TYPE_11__** %16, align 8
  %253 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %254 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %253, i32 0, i32 1
  %255 = load %struct.TYPE_11__*, %struct.TYPE_11__** %254, align 8
  store %struct.TYPE_11__* %255, %struct.TYPE_11__** %17, align 8
  %256 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %257 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %256, i32 0, i32 6
  store i32 0, i32* %257, align 4
  %258 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %259 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %258, i32 0, i32 6
  store i32 0, i32* %259, align 4
  %260 = load i32, i32* %9, align 4
  %261 = load i32, i32* @POLLIN, align 4
  %262 = and i32 %260, %261
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %333

264:                                              ; preds = %246
  %265 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %266 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %265, i32 0, i32 1
  store i32 1, i32* %266, align 8
  %267 = load i32, i32* %7, align 4
  %268 = load i32, i32* @NGX_POST_EVENTS, align 4
  %269 = and i32 %267, %268
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %281

271:                                              ; preds = %264
  %272 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %273 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %272, i32 0, i32 4
  %274 = load i32, i32* %273, align 4
  %275 = icmp ne i32 %274, 0
  %276 = zext i1 %275 to i64
  %277 = select i1 %275, i32* @ngx_posted_accept_events, i32* @ngx_posted_events
  store i32* %277, i32** %18, align 8
  %278 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %279 = load i32*, i32** %18, align 8
  %280 = call i32 @ngx_post_event(%struct.TYPE_11__* %278, i32* %279)
  br label %299

281:                                              ; preds = %264
  %282 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %283 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %282, i32 0, i32 2
  %284 = load i32 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*)** %283, align 8
  %285 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %286 = call i32 %284(%struct.TYPE_11__* %285)
  %287 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %288 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %287, i32 0, i32 5
  %289 = load i32, i32* %288, align 8
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %297, label %291

291:                                              ; preds = %281
  %292 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %293 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %292, i32 0, i32 0
  %294 = load i64, i64* %293, align 8
  %295 = load i64, i64* %12, align 8
  %296 = icmp ne i64 %294, %295
  br i1 %296, label %297, label %298

297:                                              ; preds = %291, %281
  br label %375

298:                                              ; preds = %291
  br label %299

299:                                              ; preds = %298, %271
  %300 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %301 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %300, i32 0, i32 4
  %302 = load i32, i32* %301, align 4
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %332

304:                                              ; preds = %299
  %305 = load i32, i32* @ngx_use_accept_mutex, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %308

307:                                              ; preds = %304
  store i32 1, i32* @ngx_accept_events, align 4
  br label %375

308:                                              ; preds = %304
  %309 = load i32, i32* @ep, align 4
  %310 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %311 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 8
  %313 = load i32, i32* @POLLIN, align 4
  %314 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %315 = ptrtoint %struct.TYPE_11__* %314 to i64
  %316 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %317 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %316, i32 0, i32 0
  %318 = load i64, i64* %317, align 8
  %319 = or i64 %315, %318
  %320 = inttoptr i64 %319 to i8*
  %321 = call i32 @port_associate(i32 %309, i32 129, i32 %312, i32 %313, i8* %320)
  %322 = icmp eq i32 %321, -1
  br i1 %322, label %323, label %331

323:                                              ; preds = %308
  %324 = load i32, i32* @NGX_LOG_ALERT, align 4
  %325 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %326 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %325, i32 0, i32 3
  %327 = load i32, i32* %326, align 8
  %328 = load i64, i64* @ngx_errno, align 8
  %329 = call i32 (i32, i32, i64, i8*, ...) @ngx_log_error(i32 %324, i32 %327, i64 %328, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %330 = load i64, i64* @NGX_ERROR, align 8
  store i64 %330, i64* %4, align 8
  br label %380

331:                                              ; preds = %308
  br label %332

332:                                              ; preds = %331, %299
  br label %333

333:                                              ; preds = %332, %246
  %334 = load i32, i32* %9, align 4
  %335 = load i32, i32* @POLLOUT, align 4
  %336 = and i32 %334, %335
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %355

338:                                              ; preds = %333
  %339 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %340 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %339, i32 0, i32 1
  store i32 1, i32* %340, align 8
  %341 = load i32, i32* %7, align 4
  %342 = load i32, i32* @NGX_POST_EVENTS, align 4
  %343 = and i32 %341, %342
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %348

345:                                              ; preds = %338
  %346 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %347 = call i32 @ngx_post_event(%struct.TYPE_11__* %346, i32* @ngx_posted_events)
  br label %354

348:                                              ; preds = %338
  %349 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %350 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %349, i32 0, i32 2
  %351 = load i32 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*)** %350, align 8
  %352 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %353 = call i32 %351(%struct.TYPE_11__* %352)
  br label %354

354:                                              ; preds = %348, %345
  br label %355

355:                                              ; preds = %354, %333
  br label %375

356:                                              ; preds = %123
  %357 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %358 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %357, i32 0, i32 2
  %359 = load i32 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*)** %358, align 8
  %360 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %361 = call i32 %359(%struct.TYPE_11__* %360)
  br label %375

362:                                              ; preds = %123
  %363 = load i32, i32* @NGX_LOG_ALERT, align 4
  %364 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %365 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %364, i32 0, i32 0
  %366 = load i32, i32* %365, align 4
  %367 = load %struct.TYPE_14__*, %struct.TYPE_14__** @event_list, align 8
  %368 = load i32, i32* %13, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %367, i64 %369
  %371 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %370, i32 0, i32 2
  %372 = load i64, i64* %371, align 8
  %373 = trunc i64 %372 to i32
  %374 = call i32 (i32, i32, i64, i8*, ...) @ngx_log_error(i32 %363, i32 %366, i64 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i32 %373)
  br label %375

375:                                              ; preds = %362, %356, %355, %307, %297, %154, %121
  %376 = load i32, i32* %13, align 4
  %377 = add nsw i32 %376, 1
  store i32 %377, i32* %13, align 4
  br label %108

378:                                              ; preds = %108
  %379 = load i64, i64* @NGX_OK, align 8
  store i64 %379, i64* %4, align 8
  br label %380

380:                                              ; preds = %378, %323, %100, %98, %82, %67, %65
  %381 = load i64, i64* %4, align 8
  ret i64 %381
}

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, ...) #1

declare dso_local i32 @port_getn(i32, %struct.TYPE_14__*, i32, i32*, %struct.timespec*) #1

declare dso_local i32 @ngx_time_update(...) #1

declare dso_local i32 @ngx_log_error(i32, i32, i64, i8*, ...) #1

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @ngx_post_event(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @port_associate(i32, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
