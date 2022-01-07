; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_socket_udp.c_ngx_http_lua_socket_udp_handle_success.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_socket_udp.c_ngx_http_lua_socket_udp_handle_success.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 (%struct.TYPE_13__*)*, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_12__*, i64, i32 }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_15__ = type { %struct.TYPE_12__*, i32 }

@ngx_http_lua_socket_dummy_handler = common dso_local global i32 0, align 4
@ngx_http_lua_module = common dso_local global i32 0, align 4
@ngx_http_lua_socket_udp_resume = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"lua udp socket waking up the current request\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, %struct.TYPE_14__*)* @ngx_http_lua_socket_udp_handle_success to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_http_lua_socket_udp_handle_success(%struct.TYPE_13__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %4, align 8
  %6 = load i32, i32* @ngx_http_lua_socket_dummy_handler, align 4
  %7 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 2
  store i32 %6, i32* %8, align 8
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %12 = icmp ne %struct.TYPE_12__* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  store i32* null, i32** %17, align 8
  br label %18

18:                                               ; preds = %13, %2
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %53

23:                                               ; preds = %18
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 1
  store i64 0, i64* %25, align 8
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %27 = load i32, i32* @ngx_http_lua_module, align 4
  %28 = call %struct.TYPE_15__* @ngx_http_get_module_ctx(%struct.TYPE_13__* %26, i32 %27)
  store %struct.TYPE_15__* %28, %struct.TYPE_15__** %5, align 8
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %30 = icmp eq %struct.TYPE_15__* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %53

32:                                               ; preds = %23
  %33 = load i32, i32* @ngx_http_lua_socket_udp_resume, align 4
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %37, align 8
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 0
  store %struct.TYPE_12__* %38, %struct.TYPE_12__** %40, align 8
  %41 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @ngx_log_debug0(i32 %41, i32 %46, i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  %50 = load i32 (%struct.TYPE_13__*)*, i32 (%struct.TYPE_13__*)** %49, align 8
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %52 = call i32 %50(%struct.TYPE_13__* %51)
  br label %53

53:                                               ; preds = %31, %32, %18
  ret void
}

declare dso_local %struct.TYPE_15__* @ngx_http_get_module_ctx(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
