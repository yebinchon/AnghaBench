; ModuleID = '/home/carl/AnghaBench/tengine/src/event/modules/extr_ngx_rtsig_module.c_ngx_rtsig_process_events.c'
source_filename = "/home/carl/AnghaBench/tengine/src/event/modules/extr_ngx_rtsig_module.c_ngx_rtsig_process_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_20__**, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_18__*, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, i32, i32 (%struct.TYPE_18__*)*, i64, i64 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_16__ = type { i64, i32 }
%struct.timespec = type { i32, i32 }
%struct.sigaction = type { i32, i32 }
%struct.TYPE_17__ = type { i32 }

@NGX_TIMER_INFINITE = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_EVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"rtsig timer: %M\00", align 1
@set = common dso_local global i32 0, align 4
@ngx_errno = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"rtsig signo:%d\00", align 1
@NGX_UPDATE_TIME = common dso_local global i32 0, align 4
@NGX_EAGAIN = common dso_local global i64 0, align 8
@NGX_AGAIN = common dso_local global i32 0, align 4
@NGX_LOG_ALERT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"sigtimedwait() returned EAGAIN without timeout\00", align 1
@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_EINTR = common dso_local global i64 0, align 8
@NGX_LOG_INFO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"sigtimedwait() failed\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"rtsig signo:%d fd:%d band:%04Xd\00", align 1
@ngx_cycle = common dso_local global %struct.TYPE_15__* null, align 8
@ngx_rtsig_module = common dso_local global i32 0, align 4
@overflow = common dso_local global i32 0, align 4
@overflow_current = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"rtsig: stale event %p\00", align 1
@POLLIN = common dso_local global i32 0, align 4
@POLLHUP = common dso_local global i32 0, align 4
@POLLERR = common dso_local global i32 0, align 4
@NGX_POST_EVENTS = common dso_local global i32 0, align 4
@ngx_posted_accept_events = common dso_local global i32 0, align 4
@ngx_posted_events = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4
@SIGALRM = common dso_local global i32 0, align 4
@SIGIO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"rt signal queue overflowed\00", align 1
@SIG_DFL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [30 x i8] c"sigaction(%d, SIG_DFL) failed\00", align 1
@ngx_rtsig_process_overflow = common dso_local global i32 0, align 4
@ngx_event_actions = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@.str.8 = private unnamed_addr constant [46 x i8] c"sigtimedwait() returned unexpected signal: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, i32, i32)* @ngx_rtsig_process_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_rtsig_process_events(%struct.TYPE_19__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_16__, align 8
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca %struct.TYPE_18__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.timespec, align 4
  %16 = alloca %struct.timespec*, align 8
  %17 = alloca %struct.sigaction, align 4
  %18 = alloca %struct.TYPE_20__*, align 8
  %19 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @NGX_TIMER_INFINITE, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store %struct.timespec* null, %struct.timespec** %16, align 8
  br label %32

24:                                               ; preds = %3
  %25 = load i32, i32* %6, align 4
  %26 = sdiv i32 %25, 1000
  %27 = getelementptr inbounds %struct.timespec, %struct.timespec* %15, i32 0, i32 0
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* %6, align 4
  %29 = srem i32 %28, 1000
  %30 = mul nsw i32 %29, 1000000
  %31 = getelementptr inbounds %struct.timespec, %struct.timespec* %15, i32 0, i32 1
  store i32 %30, i32* %31, align 4
  store %struct.timespec* %15, %struct.timespec** %16, align 8
  br label %32

32:                                               ; preds = %24, %23
  %33 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 (i32, i32, i64, i8*, ...) @ngx_log_debug1(i32 %33, i32 %36, i64 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load %struct.timespec*, %struct.timespec** %16, align 8
  %40 = call i32 @sigtimedwait(i32* @set, %struct.TYPE_16__* %11, %struct.timespec* %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %43, label %92

43:                                               ; preds = %32
  %44 = load i64, i64* @ngx_errno, align 8
  store i64 %44, i64* %10, align 8
  %45 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i64, i64* %10, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i32 (i32, i32, i64, i8*, ...) @ngx_log_debug1(i32 %45, i32 %48, i64 %49, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @NGX_UPDATE_TIME, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %43
  %57 = call i32 (...) @ngx_time_update()
  br label %58

58:                                               ; preds = %56, %43
  %59 = load i64, i64* %10, align 8
  %60 = load i64, i64* @NGX_EAGAIN, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %76

62:                                               ; preds = %58
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @NGX_TIMER_INFINITE, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = load i32, i32* @NGX_AGAIN, align 4
  store i32 %67, i32* %4, align 4
  br label %316

68:                                               ; preds = %62
  %69 = load i32, i32* @NGX_LOG_ALERT, align 4
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i64, i64* %10, align 8
  %74 = call i32 (i32, i32, i64, i8*, ...) @ngx_log_error(i32 %69, i32 %72, i64 %73, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  %75 = load i32, i32* @NGX_ERROR, align 4
  store i32 %75, i32* %4, align 4
  br label %316

76:                                               ; preds = %58
  %77 = load i64, i64* %10, align 8
  %78 = load i64, i64* @NGX_EINTR, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = load i32, i32* @NGX_LOG_INFO, align 4
  br label %84

82:                                               ; preds = %76
  %83 = load i32, i32* @NGX_LOG_ALERT, align 4
  br label %84

84:                                               ; preds = %82, %80
  %85 = phi i32 [ %81, %80 ], [ %83, %82 ]
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i64, i64* %10, align 8
  %90 = call i32 (i32, i32, i64, i8*, ...) @ngx_log_error(i32 %85, i32 %88, i64 %89, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %91 = load i32, i32* @NGX_ERROR, align 4
  store i32 %91, i32* %4, align 4
  br label %316

92:                                               ; preds = %32
  %93 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %8, align 4
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @ngx_log_debug3(i32 %93, i32 %96, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %97, i64 %99, i32 %101)
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* @NGX_UPDATE_TIME, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %92
  %108 = call i32 (...) @ngx_time_update()
  br label %109

109:                                              ; preds = %107, %92
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** @ngx_cycle, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @ngx_rtsig_module, align 4
  %114 = call %struct.TYPE_17__* @ngx_event_get_conf(i32 %112, i32 %113)
  store %struct.TYPE_17__* %114, %struct.TYPE_17__** %19, align 8
  %115 = load i32, i32* %8, align 4
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = icmp eq i32 %115, %118
  br i1 %119, label %127, label %120

120:                                              ; preds = %109
  %121 = load i32, i32* %8, align 4
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = add nsw i32 %124, 1
  %126 = icmp eq i32 %121, %125
  br i1 %126, label %127, label %248

127:                                              ; preds = %120, %109
  %128 = load i32, i32* @overflow, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %138

130:                                              ; preds = %127
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = trunc i64 %132 to i32
  %134 = load i32, i32* @overflow_current, align 4
  %135 = icmp sgt i32 %133, %134
  br i1 %135, label %136, label %138

136:                                              ; preds = %130
  %137 = load i32, i32* @NGX_OK, align 4
  store i32 %137, i32* %4, align 4
  br label %316

138:                                              ; preds = %130, %127
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** @ngx_cycle, align 8
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %141, i64 %143
  %145 = load %struct.TYPE_20__*, %struct.TYPE_20__** %144, align 8
  store %struct.TYPE_20__* %145, %struct.TYPE_20__** %18, align 8
  %146 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %147 = icmp eq %struct.TYPE_20__* %146, null
  br i1 %147, label %148, label %150

148:                                              ; preds = %138
  %149 = load i32, i32* @NGX_OK, align 4
  store i32 %149, i32* %4, align 4
  br label %316

150:                                              ; preds = %138
  %151 = load i32, i32* %8, align 4
  %152 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %153 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = sub nsw i32 %151, %154
  store i32 %155, i32* %9, align 4
  %156 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %157 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %156, i32 0, i32 1
  %158 = load %struct.TYPE_18__*, %struct.TYPE_18__** %157, align 8
  store %struct.TYPE_18__* %158, %struct.TYPE_18__** %12, align 8
  %159 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %160 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* %9, align 4
  %163 = icmp ne i32 %161, %162
  br i1 %163, label %164, label %172

164:                                              ; preds = %150
  %165 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %166 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %170 = call i32 (i32, i32, i64, i8*, ...) @ngx_log_debug1(i32 %165, i32 %168, i64 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_20__* %169)
  %171 = load i32, i32* @NGX_OK, align 4
  store i32 %171, i32* %4, align 4
  br label %316

172:                                              ; preds = %150
  %173 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @POLLIN, align 4
  %176 = load i32, i32* @POLLHUP, align 4
  %177 = or i32 %175, %176
  %178 = load i32, i32* @POLLERR, align 4
  %179 = or i32 %177, %178
  %180 = and i32 %174, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %211

182:                                              ; preds = %172
  %183 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %184 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %183, i32 0, i32 3
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %211

187:                                              ; preds = %182
  %188 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %189 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %188, i32 0, i32 1
  store i32 1, i32* %189, align 4
  %190 = load i32, i32* %7, align 4
  %191 = load i32, i32* @NGX_POST_EVENTS, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %204

194:                                              ; preds = %187
  %195 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %196 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %195, i32 0, i32 4
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %197, 0
  %199 = zext i1 %198 to i64
  %200 = select i1 %198, i32* @ngx_posted_accept_events, i32* @ngx_posted_events
  store i32* %200, i32** %14, align 8
  %201 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %202 = load i32*, i32** %14, align 8
  %203 = call i32 @ngx_post_event(%struct.TYPE_18__* %201, i32* %202)
  br label %210

204:                                              ; preds = %187
  %205 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %206 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %205, i32 0, i32 2
  %207 = load i32 (%struct.TYPE_18__*)*, i32 (%struct.TYPE_18__*)** %206, align 8
  %208 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %209 = call i32 %207(%struct.TYPE_18__* %208)
  br label %210

210:                                              ; preds = %204, %194
  br label %211

211:                                              ; preds = %210, %182, %172
  %212 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %213 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %212, i32 0, i32 0
  %214 = load %struct.TYPE_18__*, %struct.TYPE_18__** %213, align 8
  store %struct.TYPE_18__* %214, %struct.TYPE_18__** %13, align 8
  %215 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 1
  %216 = load i32, i32* %215, align 8
  %217 = load i32, i32* @POLLOUT, align 4
  %218 = load i32, i32* @POLLHUP, align 4
  %219 = or i32 %217, %218
  %220 = load i32, i32* @POLLERR, align 4
  %221 = or i32 %219, %220
  %222 = and i32 %216, %221
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %246

224:                                              ; preds = %211
  %225 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %226 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %225, i32 0, i32 3
  %227 = load i64, i64* %226, align 8
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %246

229:                                              ; preds = %224
  %230 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %231 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %230, i32 0, i32 1
  store i32 1, i32* %231, align 4
  %232 = load i32, i32* %7, align 4
  %233 = load i32, i32* @NGX_POST_EVENTS, align 4
  %234 = and i32 %232, %233
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %239

236:                                              ; preds = %229
  %237 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %238 = call i32 @ngx_post_event(%struct.TYPE_18__* %237, i32* @ngx_posted_events)
  br label %245

239:                                              ; preds = %229
  %240 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %241 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %240, i32 0, i32 2
  %242 = load i32 (%struct.TYPE_18__*)*, i32 (%struct.TYPE_18__*)** %241, align 8
  %243 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %244 = call i32 %242(%struct.TYPE_18__* %243)
  br label %245

245:                                              ; preds = %239, %236
  br label %246

246:                                              ; preds = %245, %224, %211
  %247 = load i32, i32* @NGX_OK, align 4
  store i32 %247, i32* %4, align 4
  br label %316

248:                                              ; preds = %120
  %249 = load i32, i32* %8, align 4
  %250 = load i32, i32* @SIGALRM, align 4
  %251 = icmp eq i32 %249, %250
  br i1 %251, label %252, label %255

252:                                              ; preds = %248
  %253 = call i32 (...) @ngx_time_update()
  %254 = load i32, i32* @NGX_OK, align 4
  store i32 %254, i32* %4, align 4
  br label %316

255:                                              ; preds = %248
  %256 = load i32, i32* %8, align 4
  %257 = load i32, i32* @SIGIO, align 4
  %258 = icmp eq i32 %256, %257
  br i1 %258, label %259, label %306

259:                                              ; preds = %255
  %260 = load i32, i32* @NGX_LOG_ALERT, align 4
  %261 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %262 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = call i32 (i32, i32, i64, i8*, ...) @ngx_log_error(i32 %260, i32 %263, i64 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  %265 = call i32 @ngx_memzero(%struct.sigaction* %17, i32 8)
  %266 = load i32, i32* @SIG_DFL, align 4
  %267 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %17, i32 0, i32 1
  store i32 %266, i32* %267, align 4
  %268 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %17, i32 0, i32 0
  %269 = call i32 @sigemptyset(i32* %268)
  %270 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %271 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 4
  %273 = call i32 @sigaction(i32 %272, %struct.sigaction* %17, i32* null)
  %274 = icmp eq i32 %273, -1
  br i1 %274, label %275, label %285

275:                                              ; preds = %259
  %276 = load i32, i32* @NGX_LOG_ALERT, align 4
  %277 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %278 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 4
  %280 = load i64, i64* @ngx_errno, align 8
  %281 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %282 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 4
  %284 = call i32 (i32, i32, i64, i8*, ...) @ngx_log_error(i32 %276, i32 %279, i64 %280, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i32 %283)
  br label %285

285:                                              ; preds = %275, %259
  %286 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %287 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 4
  %289 = add nsw i32 %288, 1
  %290 = call i32 @sigaction(i32 %289, %struct.sigaction* %17, i32* null)
  %291 = icmp eq i32 %290, -1
  br i1 %291, label %292, label %303

292:                                              ; preds = %285
  %293 = load i32, i32* @NGX_LOG_ALERT, align 4
  %294 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %295 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 4
  %297 = load i64, i64* @ngx_errno, align 8
  %298 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %299 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 4
  %301 = add nsw i32 %300, 1
  %302 = call i32 (i32, i32, i64, i8*, ...) @ngx_log_error(i32 %293, i32 %296, i64 %297, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i32 %301)
  br label %303

303:                                              ; preds = %292, %285
  store i32 1, i32* @overflow, align 4
  store i32 0, i32* @overflow_current, align 4
  %304 = load i32, i32* @ngx_rtsig_process_overflow, align 4
  store i32 %304, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @ngx_event_actions, i32 0, i32 0), align 4
  %305 = load i32, i32* @NGX_ERROR, align 4
  store i32 %305, i32* %4, align 4
  br label %316

306:                                              ; preds = %255
  br label %307

307:                                              ; preds = %306
  br label %308

308:                                              ; preds = %307
  %309 = load i32, i32* @NGX_LOG_ALERT, align 4
  %310 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %311 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 4
  %313 = load i32, i32* %8, align 4
  %314 = call i32 (i32, i32, i64, i8*, ...) @ngx_log_error(i32 %309, i32 %312, i64 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.8, i64 0, i64 0), i32 %313)
  %315 = load i32, i32* @NGX_ERROR, align 4
  store i32 %315, i32* %4, align 4
  br label %316

316:                                              ; preds = %308, %303, %252, %246, %164, %148, %136, %84, %68, %66
  %317 = load i32, i32* %4, align 4
  ret i32 %317
}

declare dso_local i32 @ngx_log_debug1(i32, i32, i64, i8*, ...) #1

declare dso_local i32 @sigtimedwait(i32*, %struct.TYPE_16__*, %struct.timespec*) #1

declare dso_local i32 @ngx_time_update(...) #1

declare dso_local i32 @ngx_log_error(i32, i32, i64, i8*, ...) #1

declare dso_local i32 @ngx_log_debug3(i32, i32, i32, i8*, i32, i64, i32) #1

declare dso_local %struct.TYPE_17__* @ngx_event_get_conf(i32, i32) #1

declare dso_local i32 @ngx_post_event(%struct.TYPE_18__*, i32*) #1

declare dso_local i32 @ngx_memzero(%struct.sigaction*, i32) #1

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @sigaction(i32, %struct.sigaction*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
