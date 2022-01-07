; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_util.c_ngx_http_lua_new_thread.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_util.c_ngx_http_lua_new_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"lua creating new thread\00", align 1
@coroutines_key = common dso_local global i32 0, align 4
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"__index\00", align 1
@LUA_NOREF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ngx_http_lua_new_thread(%struct.TYPE_5__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @ngx_log_debug0(i32 %10, i32 %15, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @lua_gettop(i32* %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32*, i32** %6, align 8
  %20 = load i32, i32* @coroutines_key, align 4
  %21 = call i32 @ngx_http_lua_lightudata_mask(i32 %20)
  %22 = call i32 @lua_pushlightuserdata(i32* %19, i32 %21)
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %25 = call i32 @lua_rawget(i32* %23, i32 %24)
  %26 = load i32*, i32** %6, align 8
  %27 = call i32* @lua_newthread(i32* %26)
  store i32* %27, i32** %9, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = call i32 @ngx_http_lua_create_new_globals_table(i32* %28, i32 0, i32 0)
  %30 = load i32*, i32** %9, align 8
  %31 = call i32 @lua_createtable(i32* %30, i32 0, i32 1)
  %32 = load i32*, i32** %9, align 8
  %33 = call i32 @ngx_http_lua_get_globals_table(i32* %32)
  %34 = load i32*, i32** %9, align 8
  %35 = call i32 @lua_setfield(i32* %34, i32 -2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32*, i32** %9, align 8
  %37 = call i32 @lua_setmetatable(i32* %36, i32 -2)
  %38 = load i32*, i32** %9, align 8
  %39 = call i32 @ngx_http_lua_set_globals_table(i32* %38)
  %40 = load i32*, i32** %6, align 8
  %41 = call i32 @luaL_ref(i32* %40, i32 -2)
  %42 = load i32*, i32** %7, align 8
  store i32 %41, i32* %42, align 4
  %43 = load i32*, i32** %7, align 8
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @LUA_NOREF, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %3
  %48 = load i32*, i32** %6, align 8
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @lua_settop(i32* %48, i32 %49)
  store i32* null, i32** %4, align 8
  br label %56

51:                                               ; preds = %3
  %52 = load i32*, i32** %6, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @lua_settop(i32* %52, i32 %53)
  %55 = load i32*, i32** %9, align 8
  store i32* %55, i32** %4, align 8
  br label %56

56:                                               ; preds = %51, %47
  %57 = load i32*, i32** %4, align 8
  ret i32* %57
}

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @lua_pushlightuserdata(i32*, i32) #1

declare dso_local i32 @ngx_http_lua_lightudata_mask(i32) #1

declare dso_local i32 @lua_rawget(i32*, i32) #1

declare dso_local i32* @lua_newthread(i32*) #1

declare dso_local i32 @ngx_http_lua_create_new_globals_table(i32*, i32, i32) #1

declare dso_local i32 @lua_createtable(i32*, i32, i32) #1

declare dso_local i32 @ngx_http_lua_get_globals_table(i32*) #1

declare dso_local i32 @lua_setfield(i32*, i32, i8*) #1

declare dso_local i32 @lua_setmetatable(i32*, i32) #1

declare dso_local i32 @ngx_http_lua_set_globals_table(i32*) #1

declare dso_local i32 @luaL_ref(i32*, i32) #1

declare dso_local i32 @lua_settop(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
