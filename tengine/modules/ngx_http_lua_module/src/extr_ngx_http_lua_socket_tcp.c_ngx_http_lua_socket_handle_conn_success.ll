; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_socket_tcp.c_ngx_http_lua_socket_handle_conn_success.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_socket_tcp.c_ngx_http_lua_socket_handle_conn_success.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 (%struct.TYPE_13__*)*, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_16__*, i64, i8*, i8* }
%struct.TYPE_16__ = type { i64, i32* }
%struct.TYPE_15__ = type { %struct.TYPE_16__*, i32 }

@ngx_http_lua_socket_dummy_handler = common dso_local global i8* null, align 8
@ngx_http_lua_module = common dso_local global i32 0, align 4
@ngx_http_lua_socket_tcp_conn_resume = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"lua tcp socket waking up the current request (conn)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, %struct.TYPE_14__*)* @ngx_http_lua_socket_handle_conn_success to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_http_lua_socket_handle_conn_success(%struct.TYPE_13__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %4, align 8
  %7 = load i8*, i8** @ngx_http_lua_socket_dummy_handler, align 8
  %8 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 3
  store i8* %7, i8** %9, align 8
  %10 = load i8*, i8** @ngx_http_lua_socket_dummy_handler, align 8
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 2
  store i8* %10, i8** %12, align 8
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %69

17:                                               ; preds = %2
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 1
  store i64 0, i64* %19, align 8
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  store %struct.TYPE_16__* %22, %struct.TYPE_16__** %6, align 8
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 1
  store i32* null, i32** %24, align 8
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %26, align 8
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %28 = load i32, i32* @ngx_http_lua_module, align 4
  %29 = call %struct.TYPE_15__* @ngx_http_get_module_ctx(%struct.TYPE_13__* %27, i32 %28)
  store %struct.TYPE_15__* %29, %struct.TYPE_15__** %5, align 8
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %31 = icmp eq %struct.TYPE_15__* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %17
  br label %69

33:                                               ; preds = %17
  %34 = load i32, i32* @ngx_http_lua_socket_tcp_conn_resume, align 4
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 8
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  store %struct.TYPE_16__* %37, %struct.TYPE_16__** %39, align 8
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %41 = icmp ne %struct.TYPE_16__* %40, null
  br i1 %41, label %42, label %53

42:                                               ; preds = %33
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %44 = call i32 @ngx_http_lua_is_thread(%struct.TYPE_15__* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp sge i64 %49, 0
  br label %51

51:                                               ; preds = %46, %42
  %52 = phi i1 [ true, %42 ], [ %50, %46 ]
  br label %53

53:                                               ; preds = %51, %33
  %54 = phi i1 [ false, %33 ], [ %52, %51 ]
  %55 = zext i1 %54 to i32
  %56 = call i32 @ngx_http_lua_assert(i32 %55)
  %57 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @ngx_log_debug0(i32 %57, i32 %62, i32 0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 0
  %66 = load i32 (%struct.TYPE_13__*)*, i32 (%struct.TYPE_13__*)** %65, align 8
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %68 = call i32 %66(%struct.TYPE_13__* %67)
  br label %69

69:                                               ; preds = %32, %53, %2
  ret void
}

declare dso_local %struct.TYPE_15__* @ngx_http_get_module_ctx(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @ngx_http_lua_assert(i32) #1

declare dso_local i32 @ngx_http_lua_is_thread(%struct.TYPE_15__*) #1

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
