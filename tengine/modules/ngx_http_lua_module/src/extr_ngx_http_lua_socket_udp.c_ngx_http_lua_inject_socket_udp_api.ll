; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_socket_udp.c_ngx_http_lua_inject_socket_udp_api.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_socket_udp.c_ngx_http_lua_inject_socket_udp_api.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@ngx_http_lua_socket_udp = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@socket_udp_metatable_key = common dso_local global i32 0, align 4
@ngx_http_lua_socket_udp_setpeername = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"setpeername\00", align 1
@ngx_http_lua_socket_udp_send = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"send\00", align 1
@ngx_http_lua_socket_udp_receive = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"receive\00", align 1
@ngx_http_lua_socket_udp_settimeout = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"settimeout\00", align 1
@ngx_http_lua_socket_udp_close = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"close\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"__index\00", align 1
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@udp_udata_metatable_key = common dso_local global i32 0, align 4
@ngx_http_lua_socket_udp_upstream_destroy = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"__gc\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ngx_http_lua_inject_socket_udp_api(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i32*, i32** %4, align 8
  %6 = call i32 @lua_getfield(i32* %5, i32 -1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %7 = load i32*, i32** %4, align 8
  %8 = load i32, i32* @ngx_http_lua_socket_udp, align 4
  %9 = call i32 @lua_pushcfunction(i32* %7, i32 %8)
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @lua_setfield(i32* %10, i32 -2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %12 = load i32*, i32** %4, align 8
  %13 = load i32, i32* @socket_udp_metatable_key, align 4
  %14 = call i32 @ngx_http_lua_lightudata_mask(i32 %13)
  %15 = call i32 @lua_pushlightuserdata(i32* %12, i32 %14)
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @lua_createtable(i32* %16, i32 0, i32 6)
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* @ngx_http_lua_socket_udp_setpeername, align 4
  %20 = call i32 @lua_pushcfunction(i32* %18, i32 %19)
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @lua_setfield(i32* %21, i32 -2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %23 = load i32*, i32** %4, align 8
  %24 = load i32, i32* @ngx_http_lua_socket_udp_send, align 4
  %25 = call i32 @lua_pushcfunction(i32* %23, i32 %24)
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @lua_setfield(i32* %26, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %28 = load i32*, i32** %4, align 8
  %29 = load i32, i32* @ngx_http_lua_socket_udp_receive, align 4
  %30 = call i32 @lua_pushcfunction(i32* %28, i32 %29)
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @lua_setfield(i32* %31, i32 -2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %33 = load i32*, i32** %4, align 8
  %34 = load i32, i32* @ngx_http_lua_socket_udp_settimeout, align 4
  %35 = call i32 @lua_pushcfunction(i32* %33, i32 %34)
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @lua_setfield(i32* %36, i32 -2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %38 = load i32*, i32** %4, align 8
  %39 = load i32, i32* @ngx_http_lua_socket_udp_close, align 4
  %40 = call i32 @lua_pushcfunction(i32* %38, i32 %39)
  %41 = load i32*, i32** %4, align 8
  %42 = call i32 @lua_setfield(i32* %41, i32 -2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %43 = load i32*, i32** %4, align 8
  %44 = call i32 @lua_pushvalue(i32* %43, i32 -1)
  %45 = load i32*, i32** %4, align 8
  %46 = call i32 @lua_setfield(i32* %45, i32 -2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %47 = load i32*, i32** %4, align 8
  %48 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %49 = call i32 @lua_rawset(i32* %47, i32 %48)
  %50 = load i32*, i32** %4, align 8
  %51 = load i32, i32* @udp_udata_metatable_key, align 4
  %52 = call i32 @ngx_http_lua_lightudata_mask(i32 %51)
  %53 = call i32 @lua_pushlightuserdata(i32* %50, i32 %52)
  %54 = load i32*, i32** %4, align 8
  %55 = call i32 @lua_createtable(i32* %54, i32 0, i32 1)
  %56 = load i32*, i32** %4, align 8
  %57 = load i32, i32* @ngx_http_lua_socket_udp_upstream_destroy, align 4
  %58 = call i32 @lua_pushcfunction(i32* %56, i32 %57)
  %59 = load i32*, i32** %4, align 8
  %60 = call i32 @lua_setfield(i32* %59, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %61 = load i32*, i32** %4, align 8
  %62 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %63 = call i32 @lua_rawset(i32* %61, i32 %62)
  %64 = load i32*, i32** %4, align 8
  %65 = call i32 @lua_pop(i32* %64, i32 1)
  ret void
}

declare dso_local i32 @lua_getfield(i32*, i32, i8*) #1

declare dso_local i32 @lua_pushcfunction(i32*, i32) #1

declare dso_local i32 @lua_setfield(i32*, i32, i8*) #1

declare dso_local i32 @lua_pushlightuserdata(i32*, i32) #1

declare dso_local i32 @ngx_http_lua_lightudata_mask(i32) #1

declare dso_local i32 @lua_createtable(i32*, i32, i32) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @lua_rawset(i32*, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
