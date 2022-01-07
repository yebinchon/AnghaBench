; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_socket_tcp.c_ngx_http_lua_socket_connected_handler.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_socket_tcp.c_ngx_http_lua_socket_connected_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_22__ = type { i64, %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32, %struct.TYPE_19__*, i32 }
%struct.TYPE_19__ = type { i64, i64 }
%struct.TYPE_23__ = type { i64 }

@ngx_http_lua_module = common dso_local global i32 0, align 4
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"lua tcp socket connect timed out, when connecting to %V:%ud\00", align 1
@NGX_HTTP_LUA_SOCKET_FT_TIMEOUT = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@NGX_HTTP_LUA_SOCKET_FT_ERROR = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"lua tcp socket connected\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_21__*, %struct.TYPE_22__*)* @ngx_http_lua_socket_connected_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_http_lua_socket_connected_handler(%struct.TYPE_21__* %0, %struct.TYPE_22__* %1) #0 {
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %3, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %4, align 8
  %8 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  store %struct.TYPE_24__* %11, %struct.TYPE_24__** %6, align 8
  %12 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %49

18:                                               ; preds = %2
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %20 = load i32, i32* @ngx_http_lua_module, align 4
  %21 = call %struct.TYPE_23__* @ngx_http_get_module_loc_conf(%struct.TYPE_21__* %19, i32 %20)
  store %struct.TYPE_23__* %21, %struct.TYPE_23__** %7, align 8
  %22 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %44

26:                                               ; preds = %18
  %27 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %27, i32 0, i32 1
  %29 = call i32 @ngx_http_lua_socket_init_peer_connection_addr_text(%struct.TYPE_25__* %28)
  %30 = load i32, i32* @NGX_LOG_ERR, align 4
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %36, i32 0, i32 2
  %38 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @ngx_inet_get_port(i32 %41)
  %43 = call i32 @ngx_log_error(i32 %30, i32 %35, i32 0, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32* %37, i32 %42)
  br label %44

44:                                               ; preds = %26, %18
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %46 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %47 = load i32, i32* @NGX_HTTP_LUA_SOCKET_FT_TIMEOUT, align 4
  %48 = call i32 @ngx_http_lua_socket_handle_conn_error(%struct.TYPE_21__* %45, %struct.TYPE_22__* %46, i32 %47)
  br label %115

49:                                               ; preds = %2
  %50 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %49
  %57 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %58, align 8
  %60 = call i32 @ngx_del_timer(%struct.TYPE_19__* %59)
  br label %61

61:                                               ; preds = %56, %49
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %63 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %64 = call i64 @ngx_http_lua_socket_test_connect(%struct.TYPE_21__* %62, %struct.TYPE_24__* %63)
  store i64 %64, i64* %5, align 8
  %65 = load i64, i64* %5, align 8
  %66 = load i64, i64* @NGX_OK, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %80

68:                                               ; preds = %61
  %69 = load i64, i64* %5, align 8
  %70 = icmp sgt i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = load i64, i64* %5, align 8
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %73, i32 0, i32 0
  store i64 %72, i64* %74, align 8
  br label %75

75:                                               ; preds = %71, %68
  %76 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %77 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %78 = load i32, i32* @NGX_HTTP_LUA_SOCKET_FT_ERROR, align 4
  %79 = call i32 @ngx_http_lua_socket_handle_conn_error(%struct.TYPE_21__* %76, %struct.TYPE_22__* %77, i32 %78)
  br label %115

80:                                               ; preds = %61
  %81 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %82 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @ngx_log_debug0(i32 %81, i32 %86, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %88 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %89, align 8
  %91 = call i64 @ngx_handle_write_event(%struct.TYPE_19__* %90, i32 0)
  %92 = load i64, i64* @NGX_OK, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %99

94:                                               ; preds = %80
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %96 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %97 = load i32, i32* @NGX_HTTP_LUA_SOCKET_FT_ERROR, align 4
  %98 = call i32 @ngx_http_lua_socket_handle_conn_error(%struct.TYPE_21__* %95, %struct.TYPE_22__* %96, i32 %97)
  br label %115

99:                                               ; preds = %80
  %100 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i64 @ngx_handle_read_event(i32 %102, i32 0)
  %104 = load i64, i64* @NGX_OK, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %111

106:                                              ; preds = %99
  %107 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %108 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %109 = load i32, i32* @NGX_HTTP_LUA_SOCKET_FT_ERROR, align 4
  %110 = call i32 @ngx_http_lua_socket_handle_conn_error(%struct.TYPE_21__* %107, %struct.TYPE_22__* %108, i32 %109)
  br label %115

111:                                              ; preds = %99
  %112 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %113 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %114 = call i32 @ngx_http_lua_socket_handle_conn_success(%struct.TYPE_21__* %112, %struct.TYPE_22__* %113)
  br label %115

115:                                              ; preds = %111, %106, %94, %75, %44
  ret void
}

declare dso_local %struct.TYPE_23__* @ngx_http_get_module_loc_conf(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @ngx_http_lua_socket_init_peer_connection_addr_text(%struct.TYPE_25__*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i32*, i32) #1

declare dso_local i32 @ngx_inet_get_port(i32) #1

declare dso_local i32 @ngx_http_lua_socket_handle_conn_error(%struct.TYPE_21__*, %struct.TYPE_22__*, i32) #1

declare dso_local i32 @ngx_del_timer(%struct.TYPE_19__*) #1

declare dso_local i64 @ngx_http_lua_socket_test_connect(%struct.TYPE_21__*, %struct.TYPE_24__*) #1

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i64 @ngx_handle_write_event(%struct.TYPE_19__*, i32) #1

declare dso_local i64 @ngx_handle_read_event(i32, i32) #1

declare dso_local i32 @ngx_http_lua_socket_handle_conn_success(%struct.TYPE_21__*, %struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
