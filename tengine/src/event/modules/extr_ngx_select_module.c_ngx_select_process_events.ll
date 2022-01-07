; ModuleID = '/home/carl/AnghaBench/tengine/src/event/modules/extr_ngx_select_module.c_ngx_select_process_events.c'
source_filename = "/home/carl/AnghaBench/tengine/src/event/modules/extr_ngx_select_module.c_ngx_select_process_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i64, i64, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.timeval = type { i64, i64 }

@max_fd = common dso_local global i32 0, align 4
@nevents = common dso_local global i64 0, align 8
@event_index = common dso_local global %struct.TYPE_11__** null, align 8
@NGX_LOG_DEBUG_EVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"change max_fd: %i\00", align 1
@NGX_TIMER_INFINITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"select timer: %M\00", align 1
@master_read_fd_set = common dso_local global i32 0, align 4
@work_read_fd_set = common dso_local global i32 0, align 4
@master_write_fd_set = common dso_local global i32 0, align 4
@work_write_fd_set = common dso_local global i32 0, align 4
@ngx_errno = common dso_local global i32 0, align 4
@NGX_UPDATE_TIME = common dso_local global i64 0, align 8
@ngx_event_timer_alarm = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"select ready %d\00", align 1
@NGX_EINTR = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4
@NGX_LOG_INFO = common dso_local global i64 0, align 8
@NGX_LOG_ALERT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [16 x i8] c"select() failed\00", align 1
@NGX_EBADF = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [44 x i8] c"select() returned no events without timeout\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"select write %d\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"select read %d\00", align 1
@ngx_posted_accept_events = common dso_local global i32 0, align 4
@ngx_posted_events = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [30 x i8] c"select ready != events: %d:%d\00", align 1
@NGX_LOG_DEBUG_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32, i64)* @ngx_select_process_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_select_process_events(%struct.TYPE_12__* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.timeval, align 8
  %16 = alloca %struct.timeval*, align 8
  %17 = alloca %struct.TYPE_13__*, align 8
  %18 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %19 = load i32, i32* @max_fd, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %53

21:                                               ; preds = %3
  store i64 0, i64* %11, align 8
  br label %22

22:                                               ; preds = %43, %21
  %23 = load i64, i64* %11, align 8
  %24 = load i64, i64* @nevents, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %46

26:                                               ; preds = %22
  %27 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @event_index, align 8
  %28 = load i64, i64* %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %27, i64 %28
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 3
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %31, align 8
  store %struct.TYPE_13__* %32, %struct.TYPE_13__** %17, align 8
  %33 = load i32, i32* @max_fd, align 4
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %26
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* @max_fd, align 4
  br label %42

42:                                               ; preds = %38, %26
  br label %43

43:                                               ; preds = %42
  %44 = load i64, i64* %11, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %11, align 8
  br label %22

46:                                               ; preds = %22
  %47 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %49, align 8
  %51 = load i32, i32* @max_fd, align 4
  %52 = call i32 @ngx_log_debug1(i32 %47, %struct.TYPE_14__* %50, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %46, %3
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @NGX_TIMER_INFINITE, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  store %struct.timeval* null, %struct.timeval** %16, align 8
  br label %68

58:                                               ; preds = %53
  %59 = load i32, i32* %6, align 4
  %60 = sdiv i32 %59, 1000
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.timeval, %struct.timeval* %15, i32 0, i32 0
  store i64 %61, i64* %62, align 8
  %63 = load i32, i32* %6, align 4
  %64 = srem i32 %63, 1000
  %65 = mul nsw i32 %64, 1000
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.timeval, %struct.timeval* %15, i32 0, i32 1
  store i64 %66, i64* %67, align 8
  store %struct.timeval* %15, %struct.timeval** %16, align 8
  br label %68

68:                                               ; preds = %58, %57
  %69 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @ngx_log_debug1(i32 %69, %struct.TYPE_14__* %72, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* @master_read_fd_set, align 4
  store i32 %75, i32* @work_read_fd_set, align 4
  %76 = load i32, i32* @master_write_fd_set, align 4
  store i32 %76, i32* @work_write_fd_set, align 4
  %77 = load i32, i32* @max_fd, align 4
  %78 = add nsw i32 %77, 1
  %79 = load %struct.timeval*, %struct.timeval** %16, align 8
  %80 = call i32 @select(i32 %78, i32* @work_read_fd_set, i32* @work_write_fd_set, i32* null, %struct.timeval* %79)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp eq i32 %81, -1
  br i1 %82, label %83, label %85

83:                                               ; preds = %68
  %84 = load i32, i32* @ngx_errno, align 4
  br label %86

85:                                               ; preds = %68
  br label %86

86:                                               ; preds = %85, %83
  %87 = phi i32 [ %84, %83 ], [ 0, %85 ]
  store i32 %87, i32* %10, align 4
  %88 = load i64, i64* %7, align 8
  %89 = load i64, i64* @NGX_UPDATE_TIME, align 8
  %90 = and i64 %88, %89
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %86
  %93 = load i64, i64* @ngx_event_timer_alarm, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %92, %86
  %96 = call i32 (...) @ngx_time_update()
  br label %97

97:                                               ; preds = %95, %92
  %98 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %100, align 8
  %102 = load i32, i32* %8, align 4
  %103 = call i32 @ngx_log_debug1(i32 %98, %struct.TYPE_14__* %101, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %102)
  %104 = load i32, i32* %10, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %134

106:                                              ; preds = %97
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* @NGX_EINTR, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %117

110:                                              ; preds = %106
  %111 = load i64, i64* @ngx_event_timer_alarm, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %110
  store i64 0, i64* @ngx_event_timer_alarm, align 8
  %114 = load i32, i32* @NGX_OK, align 4
  store i32 %114, i32* %4, align 4
  br label %236

115:                                              ; preds = %110
  %116 = load i64, i64* @NGX_LOG_INFO, align 8
  store i64 %116, i64* %18, align 8
  br label %119

117:                                              ; preds = %106
  %118 = load i64, i64* @NGX_LOG_ALERT, align 8
  store i64 %118, i64* %18, align 8
  br label %119

119:                                              ; preds = %117, %115
  %120 = load i64, i64* %18, align 8
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %122, align 8
  %124 = load i32, i32* %10, align 4
  %125 = call i32 (i64, %struct.TYPE_14__*, i32, i8*, ...) @ngx_log_error(i64 %120, %struct.TYPE_14__* %123, i32 %124, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %126 = load i32, i32* %10, align 4
  %127 = load i32, i32* @NGX_EBADF, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %132

129:                                              ; preds = %119
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %131 = call i32 @ngx_select_repair_fd_sets(%struct.TYPE_12__* %130)
  br label %132

132:                                              ; preds = %129, %119
  %133 = load i32, i32* @NGX_ERROR, align 4
  store i32 %133, i32* %4, align 4
  br label %236

134:                                              ; preds = %97
  %135 = load i32, i32* %8, align 4
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %150

137:                                              ; preds = %134
  %138 = load i32, i32* %6, align 4
  %139 = load i32, i32* @NGX_TIMER_INFINITE, align 4
  %140 = icmp ne i32 %138, %139
  br i1 %140, label %141, label %143

141:                                              ; preds = %137
  %142 = load i32, i32* @NGX_OK, align 4
  store i32 %142, i32* %4, align 4
  br label %236

143:                                              ; preds = %137
  %144 = load i64, i64* @NGX_LOG_ALERT, align 8
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %146, align 8
  %148 = call i32 (i64, %struct.TYPE_14__*, i32, i8*, ...) @ngx_log_error(i64 %144, %struct.TYPE_14__* %147, i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  %149 = load i32, i32* @NGX_ERROR, align 4
  store i32 %149, i32* %4, align 4
  br label %236

150:                                              ; preds = %134
  store i32 0, i32* %9, align 4
  store i64 0, i64* %11, align 8
  br label %151

151:                                              ; preds = %217, %150
  %152 = load i64, i64* %11, align 8
  %153 = load i64, i64* @nevents, align 8
  %154 = icmp ult i64 %152, %153
  br i1 %154, label %155, label %220

155:                                              ; preds = %151
  %156 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @event_index, align 8
  %157 = load i64, i64* %11, align 8
  %158 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %156, i64 %157
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %158, align 8
  store %struct.TYPE_11__* %159, %struct.TYPE_11__** %13, align 8
  %160 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 3
  %162 = load %struct.TYPE_13__*, %struct.TYPE_13__** %161, align 8
  store %struct.TYPE_13__* %162, %struct.TYPE_13__** %17, align 8
  store i64 0, i64* %12, align 8
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %183

167:                                              ; preds = %155
  %168 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = call i64 @FD_ISSET(i32 %170, i32* @work_write_fd_set)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %182

173:                                              ; preds = %167
  store i64 1, i64* %12, align 8
  %174 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %175 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 0
  %177 = load %struct.TYPE_14__*, %struct.TYPE_14__** %176, align 8
  %178 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @ngx_log_debug1(i32 %174, %struct.TYPE_14__* %177, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %180)
  br label %182

182:                                              ; preds = %173, %167
  br label %199

183:                                              ; preds = %155
  %184 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = call i64 @FD_ISSET(i32 %186, i32* @work_read_fd_set)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %198

189:                                              ; preds = %183
  store i64 1, i64* %12, align 8
  %190 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %191 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %191, i32 0, i32 0
  %193 = load %struct.TYPE_14__*, %struct.TYPE_14__** %192, align 8
  %194 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %195 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @ngx_log_debug1(i32 %190, %struct.TYPE_14__* %193, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 %196)
  br label %198

198:                                              ; preds = %189, %183
  br label %199

199:                                              ; preds = %198, %182
  %200 = load i64, i64* %12, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %216

202:                                              ; preds = %199
  %203 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %204 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %203, i32 0, i32 0
  store i32 1, i32* %204, align 8
  %205 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %206 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %205, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = icmp ne i64 %207, 0
  %209 = zext i1 %208 to i64
  %210 = select i1 %208, i32* @ngx_posted_accept_events, i32* @ngx_posted_events
  store i32* %210, i32** %14, align 8
  %211 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %212 = load i32*, i32** %14, align 8
  %213 = call i32 @ngx_post_event(%struct.TYPE_11__* %211, i32* %212)
  %214 = load i32, i32* %9, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %9, align 4
  br label %216

216:                                              ; preds = %202, %199
  br label %217

217:                                              ; preds = %216
  %218 = load i64, i64* %11, align 8
  %219 = add i64 %218, 1
  store i64 %219, i64* %11, align 8
  br label %151

220:                                              ; preds = %151
  %221 = load i32, i32* %8, align 4
  %222 = load i32, i32* %9, align 4
  %223 = icmp ne i32 %221, %222
  br i1 %223, label %224, label %234

224:                                              ; preds = %220
  %225 = load i64, i64* @NGX_LOG_ALERT, align 8
  %226 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %227 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %226, i32 0, i32 0
  %228 = load %struct.TYPE_14__*, %struct.TYPE_14__** %227, align 8
  %229 = load i32, i32* %8, align 4
  %230 = load i32, i32* %9, align 4
  %231 = call i32 (i64, %struct.TYPE_14__*, i32, i8*, ...) @ngx_log_error(i64 %225, %struct.TYPE_14__* %228, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i32 %229, i32 %230)
  %232 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %233 = call i32 @ngx_select_repair_fd_sets(%struct.TYPE_12__* %232)
  br label %234

234:                                              ; preds = %224, %220
  %235 = load i32, i32* @NGX_OK, align 4
  store i32 %235, i32* %4, align 4
  br label %236

236:                                              ; preds = %234, %143, %141, %132, %113
  %237 = load i32, i32* %4, align 4
  ret i32 %237
}

declare dso_local i32 @ngx_log_debug1(i32, %struct.TYPE_14__*, i32, i8*, i32) #1

declare dso_local i32 @select(i32, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i32 @ngx_time_update(...) #1

declare dso_local i32 @ngx_log_error(i64, %struct.TYPE_14__*, i32, i8*, ...) #1

declare dso_local i32 @ngx_select_repair_fd_sets(%struct.TYPE_12__*) #1

declare dso_local i64 @FD_ISSET(i32, i32*) #1

declare dso_local i32 @ngx_post_event(%struct.TYPE_11__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
