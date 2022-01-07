; ModuleID = '/home/carl/AnghaBench/tengine/src/http/v2/extr_ngx_http_v2.c_ngx_http_v2_send_window_update.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/v2/extr_ngx_http_v2.c_ngx_http_v2_send_window_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_15__* }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"http2 send WINDOW_UPDATE frame sid:%ui, window:%uz\00", align 1
@NGX_HTTP_V2_WINDOW_UPDATE_SIZE = common dso_local global i32 0, align 4
@NGX_HTTP_V2_WINDOW_UPDATE_FRAME = common dso_local global i32 0, align 4
@NGX_HTTP_V2_NO_FLAG = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i32, i64)* @ngx_http_v2_send_window_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_v2_send_window_update(%struct.TYPE_14__* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %10 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i64, i64* %7, align 8
  %18 = call i32 @ngx_log_debug2(i32 %10, i32 %15, i32 0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %16, i64 %17)
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %20 = load i32, i32* @NGX_HTTP_V2_WINDOW_UPDATE_SIZE, align 4
  %21 = load i32, i32* @NGX_HTTP_V2_WINDOW_UPDATE_FRAME, align 4
  %22 = load i32, i32* @NGX_HTTP_V2_NO_FLAG, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call %struct.TYPE_13__* @ngx_http_v2_get_frame(%struct.TYPE_14__* %19, i32 %20, i32 %21, i32 %22, i32 %23)
  store %struct.TYPE_13__* %24, %struct.TYPE_13__** %9, align 8
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %26 = icmp eq %struct.TYPE_13__* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = load i32, i32* @NGX_ERROR, align 4
  store i32 %28, i32* %4, align 4
  br label %46

29:                                               ; preds = %3
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %33, align 8
  store %struct.TYPE_15__* %34, %struct.TYPE_15__** %8, align 8
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i64, i64* %7, align 8
  %39 = call i32 @ngx_http_v2_write_uint32(i32 %37, i64 %38)
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %44 = call i32 @ngx_http_v2_queue_blocked_frame(%struct.TYPE_14__* %42, %struct.TYPE_13__* %43)
  %45 = load i32, i32* @NGX_OK, align 4
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %29, %27
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, i32, i64) #1

declare dso_local %struct.TYPE_13__* @ngx_http_v2_get_frame(%struct.TYPE_14__*, i32, i32, i32, i32) #1

declare dso_local i32 @ngx_http_v2_write_uint32(i32, i64) #1

declare dso_local i32 @ngx_http_v2_queue_blocked_frame(%struct.TYPE_14__*, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
