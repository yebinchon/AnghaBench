; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_socket_tcp.c_ngx_http_lua_socket_handle_write_error.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_socket_tcp.c_ngx_http_lua_socket_handle_write_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 (%struct.TYPE_15__*)*, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_18__*, i64, i32, i32 }
%struct.TYPE_18__ = type { i64, i32* }
%struct.TYPE_17__ = type { %struct.TYPE_18__*, i32 }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"lua tcp socket handle write error\00", align 1
@ngx_http_lua_socket_dummy_handler = common dso_local global i32 0, align 4
@ngx_http_lua_module = common dso_local global i32 0, align 4
@ngx_http_lua_socket_tcp_write_resume = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"lua tcp socket waking up the current request\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, %struct.TYPE_16__*, i32)* @ngx_http_lua_socket_handle_write_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_http_lua_socket_handle_write_error(%struct.TYPE_15__* %0, %struct.TYPE_16__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @ngx_log_debug0(i32 %9, i32 %14, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 4
  %21 = load i32, i32* @ngx_http_lua_socket_dummy_handler, align 4
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %76

28:                                               ; preds = %3
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 1
  store i64 0, i64* %30, align 8
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %32, align 8
  store %struct.TYPE_18__* %33, %struct.TYPE_18__** %8, align 8
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 1
  store i32* null, i32** %35, align 8
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 0
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %37, align 8
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %39 = load i32, i32* @ngx_http_lua_module, align 4
  %40 = call %struct.TYPE_17__* @ngx_http_get_module_ctx(%struct.TYPE_15__* %38, i32 %39)
  store %struct.TYPE_17__* %40, %struct.TYPE_17__** %7, align 8
  %41 = load i32, i32* @ngx_http_lua_socket_tcp_write_resume, align 4
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 8
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 0
  store %struct.TYPE_18__* %44, %struct.TYPE_18__** %46, align 8
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %48 = icmp ne %struct.TYPE_18__* %47, null
  br i1 %48, label %49, label %60

49:                                               ; preds = %28
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %51 = call i32 @ngx_http_lua_is_thread(%struct.TYPE_17__* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %49
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp sge i64 %56, 0
  br label %58

58:                                               ; preds = %53, %49
  %59 = phi i1 [ true, %49 ], [ %57, %53 ]
  br label %60

60:                                               ; preds = %58, %28
  %61 = phi i1 [ false, %28 ], [ %59, %58 ]
  %62 = zext i1 %61 to i32
  %63 = call i32 @ngx_http_lua_assert(i32 %62)
  %64 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @ngx_log_debug0(i32 %64, i32 %69, i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 0
  %73 = load i32 (%struct.TYPE_15__*)*, i32 (%struct.TYPE_15__*)** %72, align 8
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %75 = call i32 %73(%struct.TYPE_15__* %74)
  br label %76

76:                                               ; preds = %60, %3
  ret void
}

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local %struct.TYPE_17__* @ngx_http_get_module_ctx(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @ngx_http_lua_assert(i32) #1

declare dso_local i32 @ngx_http_lua_is_thread(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
