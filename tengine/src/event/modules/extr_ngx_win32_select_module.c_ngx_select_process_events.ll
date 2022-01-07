; ModuleID = '/home/carl/AnghaBench/tengine/src/event/modules/extr_ngx_win32_select_module.c_ngx_select_process_events.c'
source_filename = "/home/carl/AnghaBench/tengine/src/event/modules/extr_ngx_win32_select_module.c_ngx_select_process_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i64, i64, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.timeval = type { i64, i64 }

@NGX_TIMER_INFINITE = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_EVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"select timer: %M\00", align 1
@master_read_fd_set = common dso_local global i32 0, align 4
@work_read_fd_set = common dso_local global i32 0, align 4
@master_write_fd_set = common dso_local global i32 0, align 4
@work_write_fd_set = common dso_local global i32 0, align 4
@work_except_fd_set = common dso_local global i32 0, align 4
@max_read = common dso_local global i64 0, align 8
@max_write = common dso_local global i64 0, align 8
@ngx_socket_errno = common dso_local global i32 0, align 4
@NGX_UPDATE_TIME = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"select ready %d\00", align 1
@NGX_LOG_ALERT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"select() failed\00", align 1
@WSAENOTSOCK = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"select() returned no events without timeout\00", align 1
@nevents = common dso_local global i64 0, align 8
@event_index = common dso_local global %struct.TYPE_11__** null, align 8
@.str.4 = private unnamed_addr constant [16 x i8] c"select write %d\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"select except %d\00", align 1
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
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @NGX_TIMER_INFINITE, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store %struct.timeval* null, %struct.timeval** %16, align 8
  br label %32

22:                                               ; preds = %3
  %23 = load i32, i32* %6, align 4
  %24 = sdiv i32 %23, 1000
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.timeval, %struct.timeval* %15, i32 0, i32 0
  store i64 %25, i64* %26, align 8
  %27 = load i32, i32* %6, align 4
  %28 = srem i32 %27, 1000
  %29 = mul nsw i32 %28, 1000
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.timeval, %struct.timeval* %15, i32 0, i32 1
  store i64 %30, i64* %31, align 8
  store %struct.timeval* %15, %struct.timeval** %16, align 8
  br label %32

32:                                               ; preds = %22, %21
  %33 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @ngx_log_debug1(i32 %33, %struct.TYPE_14__* %36, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @master_read_fd_set, align 4
  store i32 %39, i32* @work_read_fd_set, align 4
  %40 = load i32, i32* @master_write_fd_set, align 4
  store i32 %40, i32* @work_write_fd_set, align 4
  %41 = load i32, i32* @master_write_fd_set, align 4
  store i32 %41, i32* @work_except_fd_set, align 4
  %42 = load i64, i64* @max_read, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %32
  %45 = load i64, i64* @max_write, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44, %32
  %48 = load %struct.timeval*, %struct.timeval** %16, align 8
  %49 = call i32 @select(i32 0, i32* @work_read_fd_set, i32* @work_write_fd_set, i32* @work_except_fd_set, %struct.timeval* %48)
  store i32 %49, i32* %8, align 4
  br label %53

50:                                               ; preds = %44
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @ngx_msleep(i32 %51)
  store i32 0, i32* %8, align 4
  br label %53

53:                                               ; preds = %50, %47
  %54 = load i32, i32* %8, align 4
  %55 = icmp eq i32 %54, -1
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = load i32, i32* @ngx_socket_errno, align 4
  br label %59

58:                                               ; preds = %53
  br label %59

59:                                               ; preds = %58, %56
  %60 = phi i32 [ %57, %56 ], [ 0, %58 ]
  store i32 %60, i32* %10, align 4
  %61 = load i64, i64* %7, align 8
  %62 = load i64, i64* @NGX_UPDATE_TIME, align 8
  %63 = and i64 %61, %62
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = call i32 (...) @ngx_time_update()
  br label %67

67:                                               ; preds = %65, %59
  %68 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %70, align 8
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @ngx_log_debug1(i32 %68, %struct.TYPE_14__* %71, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* %10, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %91

76:                                               ; preds = %67
  %77 = load i32, i32* @NGX_LOG_ALERT, align 4
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %79, align 8
  %81 = load i32, i32* %10, align 4
  %82 = call i32 (i32, %struct.TYPE_14__*, i32, i8*, ...) @ngx_log_error(i32 %77, %struct.TYPE_14__* %80, i32 %81, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* @WSAENOTSOCK, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %76
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %88 = call i32 @ngx_select_repair_fd_sets(%struct.TYPE_12__* %87)
  br label %89

89:                                               ; preds = %86, %76
  %90 = load i32, i32* @NGX_ERROR, align 4
  store i32 %90, i32* %4, align 4
  br label %217

91:                                               ; preds = %67
  %92 = load i32, i32* %8, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %107

94:                                               ; preds = %91
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* @NGX_TIMER_INFINITE, align 4
  %97 = icmp ne i32 %95, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %94
  %99 = load i32, i32* @NGX_OK, align 4
  store i32 %99, i32* %4, align 4
  br label %217

100:                                              ; preds = %94
  %101 = load i32, i32* @NGX_LOG_ALERT, align 4
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %103, align 8
  %105 = call i32 (i32, %struct.TYPE_14__*, i32, i8*, ...) @ngx_log_error(i32 %101, %struct.TYPE_14__* %104, i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  %106 = load i32, i32* @NGX_ERROR, align 4
  store i32 %106, i32* %4, align 4
  br label %217

107:                                              ; preds = %91
  store i32 0, i32* %9, align 4
  store i64 0, i64* %11, align 8
  br label %108

108:                                              ; preds = %198, %107
  %109 = load i64, i64* %11, align 8
  %110 = load i64, i64* @nevents, align 8
  %111 = icmp ult i64 %109, %110
  br i1 %111, label %112, label %201

112:                                              ; preds = %108
  %113 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @event_index, align 8
  %114 = load i64, i64* %11, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %113, i64 %114
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %115, align 8
  store %struct.TYPE_11__* %116, %struct.TYPE_11__** %13, align 8
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 3
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %118, align 8
  store %struct.TYPE_13__* %119, %struct.TYPE_13__** %17, align 8
  store i64 0, i64* %12, align 8
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %159

124:                                              ; preds = %112
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i64 @FD_ISSET(i32 %127, i32* @work_write_fd_set)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %141

130:                                              ; preds = %124
  %131 = load i64, i64* %12, align 8
  %132 = add i64 %131, 1
  store i64 %132, i64* %12, align 8
  %133 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %135, align 8
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @ngx_log_debug1(i32 %133, %struct.TYPE_14__* %136, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %139)
  br label %141

141:                                              ; preds = %130, %124
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call i64 @FD_ISSET(i32 %144, i32* @work_except_fd_set)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %158

147:                                              ; preds = %141
  %148 = load i64, i64* %12, align 8
  %149 = add i64 %148, 1
  store i64 %149, i64* %12, align 8
  %150 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 0
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %152, align 8
  %154 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @ngx_log_debug1(i32 %150, %struct.TYPE_14__* %153, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %156)
  br label %158

158:                                              ; preds = %147, %141
  br label %177

159:                                              ; preds = %112
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = call i64 @FD_ISSET(i32 %162, i32* @work_read_fd_set)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %176

165:                                              ; preds = %159
  %166 = load i64, i64* %12, align 8
  %167 = add i64 %166, 1
  store i64 %167, i64* %12, align 8
  %168 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %169 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 0
  %171 = load %struct.TYPE_14__*, %struct.TYPE_14__** %170, align 8
  %172 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %173 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @ngx_log_debug1(i32 %168, %struct.TYPE_14__* %171, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 %174)
  br label %176

176:                                              ; preds = %165, %159
  br label %177

177:                                              ; preds = %176, %158
  %178 = load i64, i64* %12, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %197

180:                                              ; preds = %177
  %181 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %182 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %181, i32 0, i32 0
  store i32 1, i32* %182, align 8
  %183 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %184 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  %187 = zext i1 %186 to i64
  %188 = select i1 %186, i32* @ngx_posted_accept_events, i32* @ngx_posted_events
  store i32* %188, i32** %14, align 8
  %189 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %190 = load i32*, i32** %14, align 8
  %191 = call i32 @ngx_post_event(%struct.TYPE_11__* %189, i32* %190)
  %192 = load i64, i64* %12, align 8
  %193 = load i32, i32* %9, align 4
  %194 = sext i32 %193 to i64
  %195 = add i64 %194, %192
  %196 = trunc i64 %195 to i32
  store i32 %196, i32* %9, align 4
  br label %197

197:                                              ; preds = %180, %177
  br label %198

198:                                              ; preds = %197
  %199 = load i64, i64* %11, align 8
  %200 = add i64 %199, 1
  store i64 %200, i64* %11, align 8
  br label %108

201:                                              ; preds = %108
  %202 = load i32, i32* %8, align 4
  %203 = load i32, i32* %9, align 4
  %204 = icmp ne i32 %202, %203
  br i1 %204, label %205, label %215

205:                                              ; preds = %201
  %206 = load i32, i32* @NGX_LOG_ALERT, align 4
  %207 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %207, i32 0, i32 0
  %209 = load %struct.TYPE_14__*, %struct.TYPE_14__** %208, align 8
  %210 = load i32, i32* %8, align 4
  %211 = load i32, i32* %9, align 4
  %212 = call i32 (i32, %struct.TYPE_14__*, i32, i8*, ...) @ngx_log_error(i32 %206, %struct.TYPE_14__* %209, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i32 %210, i32 %211)
  %213 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %214 = call i32 @ngx_select_repair_fd_sets(%struct.TYPE_12__* %213)
  br label %215

215:                                              ; preds = %205, %201
  %216 = load i32, i32* @NGX_OK, align 4
  store i32 %216, i32* %4, align 4
  br label %217

217:                                              ; preds = %215, %100, %98, %89
  %218 = load i32, i32* %4, align 4
  ret i32 %218
}

declare dso_local i32 @ngx_log_debug1(i32, %struct.TYPE_14__*, i32, i8*, i32) #1

declare dso_local i32 @select(i32, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i32 @ngx_msleep(i32) #1

declare dso_local i32 @ngx_time_update(...) #1

declare dso_local i32 @ngx_log_error(i32, %struct.TYPE_14__*, i32, i8*, ...) #1

declare dso_local i32 @ngx_select_repair_fd_sets(%struct.TYPE_12__*) #1

declare dso_local i64 @FD_ISSET(i32, i32*) #1

declare dso_local i32 @ngx_post_event(%struct.TYPE_11__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
