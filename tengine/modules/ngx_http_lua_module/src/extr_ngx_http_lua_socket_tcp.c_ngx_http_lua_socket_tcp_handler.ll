; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_socket_tcp.c_ngx_http_lua_socket_tcp_handler.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_socket_tcp.c_ngx_http_lua_socket_tcp_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64, %struct.TYPE_13__*, %struct.TYPE_15__* }
%struct.TYPE_13__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_18__* }
%struct.TYPE_15__ = type { i32 (%struct.TYPE_14__*, %struct.TYPE_15__*)*, i32 (%struct.TYPE_14__*, %struct.TYPE_15__*)*, %struct.TYPE_14__* }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"lua tcp socket handler for \22%V?%V\22, wev %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*)* @ngx_http_lua_socket_tcp_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_http_lua_socket_tcp_handler(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %2, align 8
  %7 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  store %struct.TYPE_18__* %9, %struct.TYPE_18__** %3, align 8
  %10 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  store %struct.TYPE_15__* %12, %struct.TYPE_15__** %6, align 8
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  store %struct.TYPE_14__* %15, %struct.TYPE_14__** %4, align 8
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  store %struct.TYPE_18__* %18, %struct.TYPE_18__** %3, align 8
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, -1
  br i1 %22, label %23, label %32

23:                                               ; preds = %1
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %27, align 8
  store %struct.TYPE_16__* %28, %struct.TYPE_16__** %5, align 8
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 0
  store %struct.TYPE_14__* %29, %struct.TYPE_14__** %31, align 8
  br label %32

32:                                               ; preds = %23, %1
  %33 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %35, align 8
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = trunc i64 %43 to i32
  %45 = call i32 @ngx_log_debug3(i32 %33, %struct.TYPE_13__* %36, i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32* %38, i32* %40, i32 %44)
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %32
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 1
  %53 = load i32 (%struct.TYPE_14__*, %struct.TYPE_15__*)*, i32 (%struct.TYPE_14__*, %struct.TYPE_15__*)** %52, align 8
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %56 = call i32 %53(%struct.TYPE_14__* %54, %struct.TYPE_15__* %55)
  br label %64

57:                                               ; preds = %32
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 0
  %60 = load i32 (%struct.TYPE_14__*, %struct.TYPE_15__*)*, i32 (%struct.TYPE_14__*, %struct.TYPE_15__*)** %59, align 8
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %63 = call i32 %60(%struct.TYPE_14__* %61, %struct.TYPE_15__* %62)
  br label %64

64:                                               ; preds = %57, %50
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %66 = call i32 @ngx_http_run_posted_requests(%struct.TYPE_18__* %65)
  ret void
}

declare dso_local i32 @ngx_log_debug3(i32, %struct.TYPE_13__*, i32, i8*, i32*, i32*, i32) #1

declare dso_local i32 @ngx_http_run_posted_requests(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
