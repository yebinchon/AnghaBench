; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_socket_udp.c_ngx_http_lua_socket_udp_handle_error.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_socket_udp.c_ngx_http_lua_socket_udp_handle_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 (%struct.TYPE_14__*)*, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { i64, %struct.TYPE_17__*, i32, i32 }
%struct.TYPE_17__ = type { i32* }
%struct.TYPE_16__ = type { %struct.TYPE_17__*, i32 }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"lua udp socket handle error\00", align 1
@ngx_http_lua_socket_dummy_handler = common dso_local global i32 0, align 4
@ngx_http_lua_module = common dso_local global i32 0, align 4
@ngx_http_lua_socket_udp_resume = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"lua udp socket waking up the current request\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, %struct.TYPE_15__*, i32)* @ngx_http_lua_socket_udp_handle_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_http_lua_socket_udp_handle_error(%struct.TYPE_14__* %0, %struct.TYPE_15__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @ngx_log_debug0(i32 %9, i32 %14, i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 4
  %21 = load i32, i32* @ngx_http_lua_socket_dummy_handler, align 4
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  store %struct.TYPE_17__* %26, %struct.TYPE_17__** %8, align 8
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %28 = icmp ne %struct.TYPE_17__* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %3
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 0
  store i32* null, i32** %31, align 8
  br label %32

32:                                               ; preds = %29, %3
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %65

37:                                               ; preds = %32
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  store i64 0, i64* %39, align 8
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %41 = load i32, i32* @ngx_http_lua_module, align 4
  %42 = call %struct.TYPE_16__* @ngx_http_get_module_ctx(%struct.TYPE_14__* %40, i32 %41)
  store %struct.TYPE_16__* %42, %struct.TYPE_16__** %7, align 8
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %44 = icmp eq %struct.TYPE_16__* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  br label %65

46:                                               ; preds = %37
  %47 = load i32, i32* @ngx_http_lua_socket_udp_resume, align 4
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 8
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 0
  store %struct.TYPE_17__* %50, %struct.TYPE_17__** %52, align 8
  %53 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @ngx_log_debug0(i32 %53, i32 %58, i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  %62 = load i32 (%struct.TYPE_14__*)*, i32 (%struct.TYPE_14__*)** %61, align 8
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %64 = call i32 %62(%struct.TYPE_14__* %63)
  br label %65

65:                                               ; preds = %45, %46, %32
  ret void
}

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local %struct.TYPE_16__* @ngx_http_get_module_ctx(%struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
