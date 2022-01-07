; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_socket_udp.c_ngx_http_lua_socket_udp.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_socket_udp.c_ngx_http_lua_socket_udp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [37 x i8] c"expecting zero arguments, but got %d\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"no request found\00", align 1
@ngx_http_lua_module = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"no ctx found\00", align 1
@NGX_HTTP_LUA_CONTEXT_REWRITE = common dso_local global i32 0, align 4
@NGX_HTTP_LUA_CONTEXT_ACCESS = common dso_local global i32 0, align 4
@NGX_HTTP_LUA_CONTEXT_CONTENT = common dso_local global i32 0, align 4
@NGX_HTTP_LUA_CONTEXT_TIMER = common dso_local global i32 0, align 4
@NGX_HTTP_LUA_CONTEXT_SSL_CERT = common dso_local global i32 0, align 4
@socket_udp_metatable_key = common dso_local global i32 0, align 4
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"top: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ngx_http_lua_socket_udp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_lua_socket_udp(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i64 @lua_gettop(i32* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load i32*, i32** %3, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = call i64 @lua_gettop(i32* %11)
  %13 = call i32 (i32*, i8*, ...) @luaL_error(i32* %10, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %12)
  store i32 %13, i32* %2, align 4
  br label %58

14:                                               ; preds = %1
  %15 = load i32*, i32** %3, align 8
  %16 = call i32* @ngx_http_lua_get_req(i32* %15)
  store i32* %16, i32** %4, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 (i32*, i8*, ...) @luaL_error(i32* %20, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i32 %21, i32* %2, align 4
  br label %58

22:                                               ; preds = %14
  %23 = load i32*, i32** %4, align 8
  %24 = load i32, i32* @ngx_http_lua_module, align 4
  %25 = call i32* @ngx_http_get_module_ctx(i32* %23, i32 %24)
  store i32* %25, i32** %5, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 (i32*, i8*, ...) @luaL_error(i32* %29, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  store i32 %30, i32* %2, align 4
  br label %58

31:                                               ; preds = %22
  %32 = load i32*, i32** %3, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = load i32, i32* @NGX_HTTP_LUA_CONTEXT_REWRITE, align 4
  %35 = load i32, i32* @NGX_HTTP_LUA_CONTEXT_ACCESS, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @NGX_HTTP_LUA_CONTEXT_CONTENT, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @NGX_HTTP_LUA_CONTEXT_TIMER, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @NGX_HTTP_LUA_CONTEXT_SSL_CERT, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @ngx_http_lua_check_context(i32* %32, i32* %33, i32 %42)
  %44 = load i32*, i32** %3, align 8
  %45 = call i32 @lua_createtable(i32* %44, i32 3, i32 1)
  %46 = load i32*, i32** %3, align 8
  %47 = load i32, i32* @socket_udp_metatable_key, align 4
  %48 = call i32 @ngx_http_lua_lightudata_mask(i32 %47)
  %49 = call i32 @lua_pushlightuserdata(i32* %46, i32 %48)
  %50 = load i32*, i32** %3, align 8
  %51 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %52 = call i32 @lua_rawget(i32* %50, i32 %51)
  %53 = load i32*, i32** %3, align 8
  %54 = call i32 @lua_setmetatable(i32* %53, i32 -2)
  %55 = load i32*, i32** %3, align 8
  %56 = call i64 @lua_gettop(i32* %55)
  %57 = call i32 @dd(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i64 %56)
  store i32 1, i32* %2, align 4
  br label %58

58:                                               ; preds = %31, %28, %19, %9
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i64 @lua_gettop(i32*) #1

declare dso_local i32 @luaL_error(i32*, i8*, ...) #1

declare dso_local i32* @ngx_http_lua_get_req(i32*) #1

declare dso_local i32* @ngx_http_get_module_ctx(i32*, i32) #1

declare dso_local i32 @ngx_http_lua_check_context(i32*, i32*, i32) #1

declare dso_local i32 @lua_createtable(i32*, i32, i32) #1

declare dso_local i32 @lua_pushlightuserdata(i32*, i32) #1

declare dso_local i32 @ngx_http_lua_lightudata_mask(i32) #1

declare dso_local i32 @lua_rawget(i32*, i32) #1

declare dso_local i32 @lua_setmetatable(i32*, i32) #1

declare dso_local i32 @dd(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
