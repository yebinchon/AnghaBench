; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_socket_tcp.c_ngx_http_lua_cleanup_conn_pools.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_socket_tcp.c_ngx_http_lua_cleanup_conn_pools.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@socket_pool_key = common dso_local global i32 0, align 4
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@ngx_cycle = common dso_local global %struct.TYPE_7__* null, align 8
@.str = private unnamed_addr constant [59 x i8] c"lua tcp socket keepalive: free connection pool %p for \22%s\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ngx_http_lua_cleanup_conn_pools(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = load i32, i32* @socket_pool_key, align 4
  %6 = call i32 @ngx_http_lua_lightudata_mask(i32 %5)
  %7 = call i32 @lua_pushlightuserdata(i32* %4, i32 %6)
  %8 = load i32*, i32** %2, align 8
  %9 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %10 = call i32 @lua_rawget(i32* %8, i32 %9)
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @lua_pushnil(i32* %11)
  br label %13

13:                                               ; preds = %34, %1
  %14 = load i32*, i32** %2, align 8
  %15 = call i64 @lua_next(i32* %14, i32 -2)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %37

17:                                               ; preds = %13
  %18 = load i32*, i32** %2, align 8
  %19 = call %struct.TYPE_6__* @lua_touserdata(i32* %18, i32 -1)
  store %struct.TYPE_6__* %19, %struct.TYPE_6__** %3, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %21 = icmp ne %struct.TYPE_6__* %20, null
  br i1 %21, label %22, label %34

22:                                               ; preds = %17
  %23 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** @ngx_cycle, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ngx_log_debug2(i32 %23, i32 %26, i32 0, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), %struct.TYPE_6__* %27, i32 %30)
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %33 = call i32 @ngx_http_lua_socket_shutdown_pool_helper(%struct.TYPE_6__* %32)
  br label %34

34:                                               ; preds = %22, %17
  %35 = load i32*, i32** %2, align 8
  %36 = call i32 @lua_pop(i32* %35, i32 1)
  br label %13

37:                                               ; preds = %13
  %38 = load i32*, i32** %2, align 8
  %39 = call i32 @lua_pop(i32* %38, i32 1)
  ret void
}

declare dso_local i32 @lua_pushlightuserdata(i32*, i32) #1

declare dso_local i32 @ngx_http_lua_lightudata_mask(i32) #1

declare dso_local i32 @lua_rawget(i32*, i32) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i64 @lua_next(i32*, i32) #1

declare dso_local %struct.TYPE_6__* @lua_touserdata(i32*, i32) #1

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @ngx_http_lua_socket_shutdown_pool_helper(%struct.TYPE_6__*) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
