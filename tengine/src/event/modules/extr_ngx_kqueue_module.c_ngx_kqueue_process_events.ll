; ModuleID = '/home/carl/AnghaBench/tengine/src/event/modules/extr_ngx_kqueue_module.c_ngx_kqueue_process_events.c'
source_filename = "/home/carl/AnghaBench/tengine/src/event/modules/extr_ngx_kqueue_module.c_ngx_kqueue_process_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32, i32, i64, i64 }
%struct.TYPE_15__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i32 (%struct.TYPE_14__*)*, i64, i32, i32, i32, i32, %struct.TYPE_16__*, i32 }
%struct.timespec = type { i32, i32 }

@nchanges = common dso_local global i64 0, align 8
@NGX_TIMER_INFINITE = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_EVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"kevent timer: %M, changes: %d\00", align 1
@ngx_kqueue = common dso_local global i32 0, align 4
@change_list = common dso_local global i32 0, align 4
@event_list = common dso_local global %struct.TYPE_13__* null, align 8
@nevents = common dso_local global i64 0, align 8
@ngx_errno = common dso_local global i32 0, align 4
@NGX_UPDATE_TIME = common dso_local global i32 0, align 4
@ngx_event_timer_alarm = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"kevent events: %d\00", align 1
@NGX_EINTR = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4
@NGX_LOG_INFO = common dso_local global i32 0, align 4
@NGX_LOG_ALERT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"kevent() failed\00", align 1
@NGX_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"kevent() returned no events without timeout\00", align 1
@EV_ERROR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [43 x i8] c"kevent() error on %d filter:%d flags:%04Xd\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"kevent: stale event %p\00", align 1
@NGX_LOG_DEBUG_CONNECTION = common dso_local global i32 0, align 4
@EV_EOF = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"unexpected kevent() filter %d\00", align 1
@NGX_POST_EVENTS = common dso_local global i32 0, align 4
@ngx_posted_accept_events = common dso_local global i32 0, align 4
@ngx_posted_events = common dso_local global i32 0, align 4
@EVFILT_TIMER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i32, i32)* @ngx_kqueue_process_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_kqueue_process_events(%struct.TYPE_15__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_14__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.timespec, align 4
  %17 = alloca %struct.timespec*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %18 = load i64, i64* @nchanges, align 8
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %9, align 4
  store i64 0, i64* @nchanges, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @NGX_TIMER_INFINITE, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store %struct.timespec* null, %struct.timespec** %17, align 8
  br label %32

24:                                               ; preds = %3
  %25 = load i32, i32* %6, align 4
  %26 = sdiv i32 %25, 1000
  %27 = getelementptr inbounds %struct.timespec, %struct.timespec* %16, i32 0, i32 0
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* %6, align 4
  %29 = srem i32 %28, 1000
  %30 = mul nsw i32 %29, 1000000
  %31 = getelementptr inbounds %struct.timespec, %struct.timespec* %16, i32 0, i32 1
  store i32 %30, i32* %31, align 4
  store %struct.timespec* %16, %struct.timespec** %17, align 8
  br label %32

32:                                               ; preds = %24, %23
  %33 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @ngx_log_debug2(i32 %33, %struct.TYPE_16__* %36, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %38)
  %40 = load i32, i32* @ngx_kqueue, align 4
  %41 = load i32, i32* @change_list, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** @event_list, align 8
  %44 = load i64, i64* @nevents, align 8
  %45 = trunc i64 %44 to i32
  %46 = load %struct.timespec*, %struct.timespec** %17, align 8
  %47 = call i32 @kevent(i32 %40, i32 %41, i32 %42, %struct.TYPE_13__* %43, i32 %45, %struct.timespec* %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %50, label %52

50:                                               ; preds = %32
  %51 = load i32, i32* @ngx_errno, align 4
  br label %53

52:                                               ; preds = %32
  br label %53

53:                                               ; preds = %52, %50
  %54 = phi i32 [ %51, %50 ], [ 0, %52 ]
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @NGX_UPDATE_TIME, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %53
  %60 = load i64, i64* @ngx_event_timer_alarm, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %59, %53
  %63 = call i32 (...) @ngx_time_update()
  br label %64

64:                                               ; preds = %62, %59
  %65 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = call i32 (i32, %struct.TYPE_16__*, i32, i8*, ...) @ngx_log_debug1(i32 %65, %struct.TYPE_16__* %68, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* %13, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %94

73:                                               ; preds = %64
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* @NGX_EINTR, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %84

77:                                               ; preds = %73
  %78 = load i64, i64* @ngx_event_timer_alarm, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  store i64 0, i64* @ngx_event_timer_alarm, align 8
  %81 = load i32, i32* @NGX_OK, align 4
  store i32 %81, i32* %4, align 4
  br label %314

82:                                               ; preds = %77
  %83 = load i32, i32* @NGX_LOG_INFO, align 4
  store i32 %83, i32* %12, align 4
  br label %86

84:                                               ; preds = %73
  %85 = load i32, i32* @NGX_LOG_ALERT, align 4
  store i32 %85, i32* %12, align 4
  br label %86

86:                                               ; preds = %84, %82
  %87 = load i32, i32* %12, align 4
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %89, align 8
  %91 = load i32, i32* %13, align 4
  %92 = call i32 (i32, %struct.TYPE_16__*, i32, i8*, ...) @ngx_log_error(i32 %87, %struct.TYPE_16__* %90, i32 %91, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %93 = load i32, i32* @NGX_ERROR, align 4
  store i32 %93, i32* %4, align 4
  br label %314

94:                                               ; preds = %64
  %95 = load i32, i32* %8, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %110

97:                                               ; preds = %94
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* @NGX_TIMER_INFINITE, align 4
  %100 = icmp ne i32 %98, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %97
  %102 = load i32, i32* @NGX_OK, align 4
  store i32 %102, i32* %4, align 4
  br label %314

103:                                              ; preds = %97
  %104 = load i32, i32* @NGX_LOG_ALERT, align 4
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %106, align 8
  %108 = call i32 (i32, %struct.TYPE_16__*, i32, i8*, ...) @ngx_log_error(i32 %104, %struct.TYPE_16__* %107, i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  %109 = load i32, i32* @NGX_ERROR, align 4
  store i32 %109, i32* %4, align 4
  br label %314

110:                                              ; preds = %94
  store i32 0, i32* %10, align 4
  br label %111

111:                                              ; preds = %309, %110
  %112 = load i32, i32* %10, align 4
  %113 = load i32, i32* %8, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %312

115:                                              ; preds = %111
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %117, align 8
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** @event_list, align 8
  %120 = load i32, i32* %10, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i64 %121
  %123 = call i32 @ngx_kqueue_dump_event(%struct.TYPE_16__* %118, %struct.TYPE_13__* %122)
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** @event_list, align 8
  %125 = load i32, i32* %10, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @EV_ERROR, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %164

133:                                              ; preds = %115
  %134 = load i32, i32* @NGX_LOG_ALERT, align 4
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %136, align 8
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** @event_list, align 8
  %139 = load i32, i32* %10, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** @event_list, align 8
  %145 = load i32, i32* %10, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 5
  %149 = load i64, i64* %148, align 8
  %150 = trunc i64 %149 to i32
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** @event_list, align 8
  %152 = load i32, i32* %10, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** @event_list, align 8
  %158 = load i32, i32* %10, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = call i32 (i32, %struct.TYPE_16__*, i32, i8*, ...) @ngx_log_error(i32 %134, %struct.TYPE_16__* %137, i32 %143, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %150, i32 %156, i32 %162)
  br label %309

164:                                              ; preds = %115
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** @event_list, align 8
  %166 = load i32, i32* %10, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 4
  %170 = load i64, i64* %169, align 8
  %171 = inttoptr i64 %170 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %171, %struct.TYPE_14__** %14, align 8
  %172 = load %struct.TYPE_13__*, %struct.TYPE_13__** @event_list, align 8
  %173 = load i32, i32* %10, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  switch i32 %177, label %276 [
    i32 131, label %178
    i32 128, label %178
    i32 129, label %267
    i32 132, label %270
    i32 130, label %275
  ]

178:                                              ; preds = %164, %164
  %179 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %180 = ptrtoint %struct.TYPE_14__* %179 to i64
  %181 = and i64 %180, 1
  %182 = trunc i64 %181 to i32
  store i32 %182, i32* %11, align 4
  %183 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %184 = ptrtoint %struct.TYPE_14__* %183 to i64
  %185 = and i64 %184, -2
  %186 = inttoptr i64 %185 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %186, %struct.TYPE_14__** %14, align 8
  %187 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %188 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %187, i32 0, i32 12
  %189 = load i32, i32* %188, align 8
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %197, label %191

191:                                              ; preds = %178
  %192 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %193 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* %11, align 4
  %196 = icmp ne i32 %194, %195
  br i1 %196, label %197, label %204

197:                                              ; preds = %191, %178
  %198 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %199 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %199, i32 0, i32 0
  %201 = load %struct.TYPE_16__*, %struct.TYPE_16__** %200, align 8
  %202 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %203 = call i32 (i32, %struct.TYPE_16__*, i32, i8*, ...) @ngx_log_debug1(i32 %198, %struct.TYPE_16__* %201, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_14__* %202)
  br label %309

204:                                              ; preds = %191
  %205 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %206 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %205, i32 0, i32 11
  %207 = load %struct.TYPE_16__*, %struct.TYPE_16__** %206, align 8
  %208 = icmp ne %struct.TYPE_16__* %207, null
  br i1 %208, label %209, label %227

209:                                              ; preds = %204
  %210 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %211 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %210, i32 0, i32 11
  %212 = load %struct.TYPE_16__*, %struct.TYPE_16__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* @NGX_LOG_DEBUG_CONNECTION, align 4
  %216 = and i32 %214, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %227

218:                                              ; preds = %209
  %219 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %220 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %219, i32 0, i32 11
  %221 = load %struct.TYPE_16__*, %struct.TYPE_16__** %220, align 8
  %222 = load %struct.TYPE_13__*, %struct.TYPE_13__** @event_list, align 8
  %223 = load i32, i32* %10, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %222, i64 %224
  %226 = call i32 @ngx_kqueue_dump_event(%struct.TYPE_16__* %221, %struct.TYPE_13__* %225)
  br label %227

227:                                              ; preds = %218, %209, %204
  %228 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %229 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %228, i32 0, i32 10
  %230 = load i32, i32* %229, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %235

232:                                              ; preds = %227
  %233 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %234 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %233, i32 0, i32 9
  store i32 0, i32* %234, align 8
  br label %235

235:                                              ; preds = %232, %227
  %236 = load %struct.TYPE_13__*, %struct.TYPE_13__** @event_list, align 8
  %237 = load i32, i32* %10, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %236, i64 %238
  %240 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %239, i32 0, i32 3
  %241 = load i32, i32* %240, align 4
  %242 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %243 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %242, i32 0, i32 8
  store i32 %241, i32* %243, align 4
  %244 = load %struct.TYPE_13__*, %struct.TYPE_13__** @event_list, align 8
  %245 = load i32, i32* %10, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %244, i64 %246
  %248 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = load i32, i32* @EV_EOF, align 4
  %251 = and i32 %249, %250
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %264

253:                                              ; preds = %235
  %254 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %255 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %254, i32 0, i32 1
  store i32 1, i32* %255, align 4
  %256 = load %struct.TYPE_13__*, %struct.TYPE_13__** @event_list, align 8
  %257 = load i32, i32* %10, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %256, i64 %258
  %260 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %259, i32 0, i32 2
  %261 = load i32, i32* %260, align 8
  %262 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %263 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %262, i32 0, i32 7
  store i32 %261, i32* %263, align 8
  br label %264

264:                                              ; preds = %253, %235
  %265 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %266 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %265, i32 0, i32 2
  store i32 1, i32* %266, align 8
  br label %288

267:                                              ; preds = %164
  %268 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %269 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %268, i32 0, i32 3
  store i32 1, i32* %269, align 4
  br label %288

270:                                              ; preds = %164
  %271 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %272 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %271, i32 0, i32 4
  store i32 1, i32* %272, align 8
  %273 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %274 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %273, i32 0, i32 2
  store i32 1, i32* %274, align 8
  br label %288

275:                                              ; preds = %164
  br label %288

276:                                              ; preds = %164
  %277 = load i32, i32* @NGX_LOG_ALERT, align 4
  %278 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %279 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %278, i32 0, i32 0
  %280 = load %struct.TYPE_16__*, %struct.TYPE_16__** %279, align 8
  %281 = load %struct.TYPE_13__*, %struct.TYPE_13__** @event_list, align 8
  %282 = load i32, i32* %10, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %281, i64 %283
  %285 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 4
  %287 = call i32 (i32, %struct.TYPE_16__*, i32, i8*, ...) @ngx_log_error(i32 %277, %struct.TYPE_16__* %280, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %286)
  br label %309

288:                                              ; preds = %275, %270, %267, %264
  %289 = load i32, i32* %7, align 4
  %290 = load i32, i32* @NGX_POST_EVENTS, align 4
  %291 = and i32 %289, %290
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %303

293:                                              ; preds = %288
  %294 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %295 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %294, i32 0, i32 6
  %296 = load i64, i64* %295, align 8
  %297 = icmp ne i64 %296, 0
  %298 = zext i1 %297 to i64
  %299 = select i1 %297, i32* @ngx_posted_accept_events, i32* @ngx_posted_events
  store i32* %299, i32** %15, align 8
  %300 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %301 = load i32*, i32** %15, align 8
  %302 = call i32 @ngx_post_event(%struct.TYPE_14__* %300, i32* %301)
  br label %309

303:                                              ; preds = %288
  %304 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %305 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %304, i32 0, i32 5
  %306 = load i32 (%struct.TYPE_14__*)*, i32 (%struct.TYPE_14__*)** %305, align 8
  %307 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %308 = call i32 %306(%struct.TYPE_14__* %307)
  br label %309

309:                                              ; preds = %303, %293, %276, %197, %133
  %310 = load i32, i32* %10, align 4
  %311 = add nsw i32 %310, 1
  store i32 %311, i32* %10, align 4
  br label %111

312:                                              ; preds = %111
  %313 = load i32, i32* @NGX_OK, align 4
  store i32 %313, i32* %4, align 4
  br label %314

314:                                              ; preds = %312, %103, %101, %86, %80
  %315 = load i32, i32* %4, align 4
  ret i32 %315
}

declare dso_local i32 @ngx_log_debug2(i32, %struct.TYPE_16__*, i32, i8*, i32, i32) #1

declare dso_local i32 @kevent(i32, i32, i32, %struct.TYPE_13__*, i32, %struct.timespec*) #1

declare dso_local i32 @ngx_time_update(...) #1

declare dso_local i32 @ngx_log_debug1(i32, %struct.TYPE_16__*, i32, i8*, ...) #1

declare dso_local i32 @ngx_log_error(i32, %struct.TYPE_16__*, i32, i8*, ...) #1

declare dso_local i32 @ngx_kqueue_dump_event(%struct.TYPE_16__*, %struct.TYPE_13__*) #1

declare dso_local i32 @ngx_post_event(%struct.TYPE_14__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
