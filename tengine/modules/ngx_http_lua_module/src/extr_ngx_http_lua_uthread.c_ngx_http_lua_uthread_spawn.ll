; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_uthread.c_ngx_http_lua_uthread_spawn.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_uthread.c_ngx_http_lua_uthread_spawn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__*, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, %struct.TYPE_9__*, i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"no request found\00", align 1
@ngx_http_lua_module = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"no request ctx found\00", align 1
@coroutines_key = common dso_local global i32 0, align 4
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@NGX_HTTP_LUA_CO_RUNNING = common dso_local global i32 0, align 4
@NGX_HTTP_LUA_USER_THREAD_RESUME = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"no memory\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"yielding with arg %s, top=%d, index-1:%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ngx_http_lua_uthread_spawn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_lua_uthread_spawn(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %7, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @lua_gettop(i32* %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32*, i32** %3, align 8
  %11 = call i32* @ngx_http_lua_get_req(i32* %10)
  store i32* %11, i32** %5, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @luaL_error(i32* %15, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 %16, i32* %2, align 4
  br label %110

17:                                               ; preds = %1
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* @ngx_http_lua_module, align 4
  %20 = call %struct.TYPE_8__* @ngx_http_get_module_ctx(i32* %18, i32 %19)
  store %struct.TYPE_8__* %20, %struct.TYPE_8__** %6, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %22 = icmp eq %struct.TYPE_8__* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @luaL_error(i32* %24, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store i32 %25, i32* %2, align 4
  br label %110

26:                                               ; preds = %17
  %27 = load i32*, i32** %3, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %30 = call i32 @ngx_http_lua_coroutine_create_helper(i32* %27, i32* %28, %struct.TYPE_8__* %29, %struct.TYPE_9__** %7)
  %31 = load i32*, i32** %3, align 8
  %32 = load i32, i32* @coroutines_key, align 4
  %33 = call i32 @ngx_http_lua_lightudata_mask(i32 %32)
  %34 = call i32 @lua_pushlightuserdata(i32* %31, i32 %33)
  %35 = load i32*, i32** %3, align 8
  %36 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %37 = call i32 @lua_rawget(i32* %35, i32 %36)
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @lua_pushvalue(i32* %38, i32 -2)
  %40 = load i32*, i32** %3, align 8
  %41 = call i32 @luaL_ref(i32* %40, i32 -2)
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 5
  store i32 %41, i32* %43, align 4
  %44 = load i32*, i32** %3, align 8
  %45 = call i32 @lua_pop(i32* %44, i32 1)
  %46 = load i32, i32* %4, align 4
  %47 = icmp sgt i32 %46, 1
  br i1 %47, label %48, label %58

48:                                               ; preds = %26
  %49 = load i32*, i32** %3, align 8
  %50 = call i32 @lua_replace(i32* %49, i32 1)
  %51 = load i32*, i32** %3, align 8
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %4, align 4
  %56 = sub nsw i32 %55, 1
  %57 = call i32 @lua_xmove(i32* %51, i32 %54, i32 %56)
  br label %58

58:                                               ; preds = %48, %26
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  store i32 1, i32* %60, align 8
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 4
  %65 = load i32, i32* @NGX_HTTP_LUA_CO_RUNNING, align 4
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 4
  store i32 %65, i32* %67, align 8
  %68 = load i32, i32* @NGX_HTTP_LUA_USER_THREAD_RESUME, align 4
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 8
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 1
  store i32 1, i32* %74, align 4
  %75 = load i32*, i32** %5, align 8
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %78, align 8
  %80 = call i64 @ngx_http_lua_post_thread(i32* %75, %struct.TYPE_8__* %76, %struct.TYPE_9__* %79)
  %81 = load i64, i64* @NGX_OK, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %58
  %84 = load i32*, i32** %3, align 8
  %85 = call i32 @luaL_error(i32* %84, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  store i32 %85, i32* %2, align 4
  br label %110

86:                                               ; preds = %58
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %88, align 8
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 3
  store %struct.TYPE_9__* %89, %struct.TYPE_9__** %91, align 8
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  store %struct.TYPE_9__* %92, %struct.TYPE_9__** %94, align 8
  %95 = load i32*, i32** %5, align 8
  %96 = load i32*, i32** %3, align 8
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @ngx_http_lua_probe_user_thread_spawn(i32* %95, i32* %96, i32 %99)
  %101 = load i32*, i32** %3, align 8
  %102 = call i32 @luaL_typename(i32* %101, i32 -1)
  %103 = load i32*, i32** %3, align 8
  %104 = call i32 @lua_gettop(i32* %103)
  %105 = load i32*, i32** %3, align 8
  %106 = call i32 @luaL_typename(i32* %105, i32 1)
  %107 = call i32 @dd(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %102, i32 %104, i32 %106)
  %108 = load i32*, i32** %3, align 8
  %109 = call i32 @lua_yield(i32* %108, i32 1)
  store i32 %109, i32* %2, align 4
  br label %110

110:                                              ; preds = %86, %83, %23, %14
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32* @ngx_http_lua_get_req(i32*) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local %struct.TYPE_8__* @ngx_http_get_module_ctx(i32*, i32) #1

declare dso_local i32 @ngx_http_lua_coroutine_create_helper(i32*, i32*, %struct.TYPE_8__*, %struct.TYPE_9__**) #1

declare dso_local i32 @lua_pushlightuserdata(i32*, i32) #1

declare dso_local i32 @ngx_http_lua_lightudata_mask(i32) #1

declare dso_local i32 @lua_rawget(i32*, i32) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @luaL_ref(i32*, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32 @lua_replace(i32*, i32) #1

declare dso_local i32 @lua_xmove(i32*, i32, i32) #1

declare dso_local i64 @ngx_http_lua_post_thread(i32*, %struct.TYPE_8__*, %struct.TYPE_9__*) #1

declare dso_local i32 @ngx_http_lua_probe_user_thread_spawn(i32*, i32*, i32) #1

declare dso_local i32 @dd(i8*, i32, i32, i32) #1

declare dso_local i32 @luaL_typename(i32*, i32) #1

declare dso_local i32 @lua_yield(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
