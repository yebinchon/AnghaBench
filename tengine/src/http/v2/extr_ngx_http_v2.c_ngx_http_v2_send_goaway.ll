; ModuleID = '/home/carl/AnghaBench/tengine/src/http/v2/extr_ngx_http_v2.c_ngx_http_v2_send_goaway.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/v2/extr_ngx_http_v2.c_ngx_http_v2_send_goaway.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_15__* }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"http2 send GOAWAY frame: last sid %ui, error %ui\00", align 1
@NGX_HTTP_V2_GOAWAY_SIZE = common dso_local global i32 0, align 4
@NGX_HTTP_V2_GOAWAY_FRAME = common dso_local global i32 0, align 4
@NGX_HTTP_V2_NO_FLAG = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i32)* @ngx_http_v2_send_goaway to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_v2_send_goaway(%struct.TYPE_14__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @ngx_log_debug2(i32 %8, i32 %13, i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %17)
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %20 = load i32, i32* @NGX_HTTP_V2_GOAWAY_SIZE, align 4
  %21 = load i32, i32* @NGX_HTTP_V2_GOAWAY_FRAME, align 4
  %22 = load i32, i32* @NGX_HTTP_V2_NO_FLAG, align 4
  %23 = call %struct.TYPE_13__* @ngx_http_v2_get_frame(%struct.TYPE_14__* %19, i32 %20, i32 %21, i32 %22, i32 0)
  store %struct.TYPE_13__* %23, %struct.TYPE_13__** %7, align 8
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %25 = icmp eq %struct.TYPE_13__* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* @NGX_ERROR, align 4
  store i32 %27, i32* %3, align 4
  br label %54

28:                                               ; preds = %2
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %32, align 8
  store %struct.TYPE_15__* %33, %struct.TYPE_15__** %6, align 8
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @ngx_http_v2_write_sid(i32 %36, i32 %39)
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @ngx_http_v2_write_uint32(i32 %45, i32 %46)
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %52 = call i32 @ngx_http_v2_queue_blocked_frame(%struct.TYPE_14__* %50, %struct.TYPE_13__* %51)
  %53 = load i32, i32* @NGX_OK, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %28, %26
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, i32, i32) #1

declare dso_local %struct.TYPE_13__* @ngx_http_v2_get_frame(%struct.TYPE_14__*, i32, i32, i32, i32) #1

declare dso_local i32 @ngx_http_v2_write_sid(i32, i32) #1

declare dso_local i32 @ngx_http_v2_write_uint32(i32, i32) #1

declare dso_local i32 @ngx_http_v2_queue_blocked_frame(%struct.TYPE_14__*, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
