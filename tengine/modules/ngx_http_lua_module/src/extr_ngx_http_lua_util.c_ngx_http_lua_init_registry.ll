; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_util.c_ngx_http_lua_init_registry.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_util.c_ngx_http_lua_init_registry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"lua initializing lua registry\00", align 1
@coroutines_key = common dso_local global i32 0, align 4
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@ngx_http_lua_ctx_tables_key = common dso_local global i32 0, align 4
@socket_pool_key = common dso_local global i32 0, align 4
@code_cache_key = common dso_local global i32 0, align 4
@regex_cache_key = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @ngx_http_lua_init_registry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_http_lua_init_registry(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %6 = load i32*, i32** %4, align 8
  %7 = call i32 @ngx_log_debug0(i32 %5, i32* %6, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %8 = load i32*, i32** %3, align 8
  %9 = load i32, i32* @coroutines_key, align 4
  %10 = call i32 @ngx_http_lua_lightudata_mask(i32 %9)
  %11 = call i32 @lua_pushlightuserdata(i32* %8, i32 %10)
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @lua_createtable(i32* %12, i32 0, i32 32)
  %14 = load i32*, i32** %3, align 8
  %15 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %16 = call i32 @lua_rawset(i32* %14, i32 %15)
  %17 = load i32*, i32** %3, align 8
  %18 = load i32, i32* @ngx_http_lua_ctx_tables_key, align 4
  %19 = call i32 @lua_pushliteral(i32* %17, i32 %18)
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @lua_createtable(i32* %20, i32 0, i32 32)
  %22 = load i32*, i32** %3, align 8
  %23 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %24 = call i32 @lua_rawset(i32* %22, i32 %23)
  %25 = load i32*, i32** %3, align 8
  %26 = load i32, i32* @socket_pool_key, align 4
  %27 = call i32 @ngx_http_lua_lightudata_mask(i32 %26)
  %28 = call i32 @lua_pushlightuserdata(i32* %25, i32 %27)
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @lua_createtable(i32* %29, i32 0, i32 8)
  %31 = load i32*, i32** %3, align 8
  %32 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %33 = call i32 @lua_rawset(i32* %31, i32 %32)
  %34 = load i32*, i32** %3, align 8
  %35 = load i32, i32* @code_cache_key, align 4
  %36 = call i32 @ngx_http_lua_lightudata_mask(i32 %35)
  %37 = call i32 @lua_pushlightuserdata(i32* %34, i32 %36)
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @lua_createtable(i32* %38, i32 0, i32 8)
  %40 = load i32*, i32** %3, align 8
  %41 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %42 = call i32 @lua_rawset(i32* %40, i32 %41)
  ret void
}

declare dso_local i32 @ngx_log_debug0(i32, i32*, i32, i8*) #1

declare dso_local i32 @lua_pushlightuserdata(i32*, i32) #1

declare dso_local i32 @ngx_http_lua_lightudata_mask(i32) #1

declare dso_local i32 @lua_createtable(i32*, i32, i32) #1

declare dso_local i32 @lua_rawset(i32*, i32) #1

declare dso_local i32 @lua_pushliteral(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
