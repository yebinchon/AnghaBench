; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_coroutine.c_ngx_http_lua_coroutine_resume.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_coroutine.c_ngx_http_lua_coroutine_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i64, %struct.TYPE_9__* }

@.str = private unnamed_addr constant [19 x i8] c"coroutine expected\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"no request found\00", align 1
@ngx_http_lua_module = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"no request ctx found\00", align 1
@NGX_HTTP_LUA_CONTEXT_REWRITE = common dso_local global i32 0, align 4
@NGX_HTTP_LUA_CONTEXT_ACCESS = common dso_local global i32 0, align 4
@NGX_HTTP_LUA_CONTEXT_CONTENT = common dso_local global i32 0, align 4
@NGX_HTTP_LUA_CONTEXT_TIMER = common dso_local global i32 0, align 4
@NGX_HTTP_LUA_CONTEXT_SSL_CERT = common dso_local global i32 0, align 4
@NGX_HTTP_LUA_CONTEXT_SSL_SESS_FETCH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"no parent co ctx found\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"no co ctx found\00", align 1
@NGX_HTTP_LUA_CO_SUSPENDED = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [21 x i8] c"coroutine resume: %d\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"cannot resume %s coroutine\00", align 1
@ngx_http_lua_co_status_names = common dso_local global %struct.TYPE_10__* null, align 8
@NGX_HTTP_LUA_CO_NORMAL = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [25 x i8] c"set coroutine to running\00", align 1
@NGX_HTTP_LUA_CO_RUNNING = common dso_local global i64 0, align 8
@NGX_HTTP_LUA_USER_CORO_RESUME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ngx_http_lua_coroutine_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_lua_coroutine_resume(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call i32* @lua_tothread(i32* %9, i32 1)
  store i32* %10, i32** %4, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @luaL_argcheck(i32* %11, i32* %12, i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %14 = load i32*, i32** %3, align 8
  %15 = call i32* @ngx_http_lua_get_req(i32* %14)
  store i32* %15, i32** %5, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @luaL_error(i32* %19, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i32 %20, i32* %2, align 4
  br label %110

21:                                               ; preds = %1
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* @ngx_http_lua_module, align 4
  %24 = call %struct.TYPE_8__* @ngx_http_get_module_ctx(i32* %22, i32 %23)
  store %struct.TYPE_8__* %24, %struct.TYPE_8__** %6, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %26 = icmp eq %struct.TYPE_8__* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @luaL_error(i32* %28, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  store i32 %29, i32* %2, align 4
  br label %110

30:                                               ; preds = %21
  %31 = load i32*, i32** %3, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %33 = load i32, i32* @NGX_HTTP_LUA_CONTEXT_REWRITE, align 4
  %34 = load i32, i32* @NGX_HTTP_LUA_CONTEXT_ACCESS, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @NGX_HTTP_LUA_CONTEXT_CONTENT, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @NGX_HTTP_LUA_CONTEXT_TIMER, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @NGX_HTTP_LUA_CONTEXT_SSL_CERT, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @NGX_HTTP_LUA_CONTEXT_SSL_SESS_FETCH, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @ngx_http_lua_check_context(i32* %31, %struct.TYPE_8__* %32, i32 %43)
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %46, align 8
  store %struct.TYPE_9__* %47, %struct.TYPE_9__** %8, align 8
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %49 = icmp eq %struct.TYPE_9__* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %30
  %51 = load i32*, i32** %3, align 8
  %52 = call i32 @luaL_error(i32* %51, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  store i32 %52, i32* %2, align 4
  br label %110

53:                                               ; preds = %30
  %54 = load i32*, i32** %4, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %56 = call %struct.TYPE_9__* @ngx_http_lua_get_co_ctx(i32* %54, %struct.TYPE_8__* %55)
  store %struct.TYPE_9__* %56, %struct.TYPE_9__** %7, align 8
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %58 = icmp eq %struct.TYPE_9__* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load i32*, i32** %3, align 8
  %61 = call i32 @luaL_error(i32* %60, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  store i32 %61, i32* %2, align 4
  br label %110

62:                                               ; preds = %53
  %63 = load i32*, i32** %5, align 8
  %64 = load i32*, i32** %3, align 8
  %65 = load i32*, i32** %4, align 8
  %66 = call i32 @ngx_http_lua_probe_user_coroutine_resume(i32* %63, i32* %64, i32* %65)
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @NGX_HTTP_LUA_CO_SUSPENDED, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %88

72:                                               ; preds = %62
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i64 %75)
  %77 = load i32*, i32** %3, align 8
  %78 = call i32 @lua_pushboolean(i32* %77, i32 0)
  %79 = load i32*, i32** %3, align 8
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ngx_http_lua_co_status_names, align 8
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @lua_pushfstring(i32* %79, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %86)
  store i32 2, i32* %2, align 4
  br label %110

88:                                               ; preds = %62
  %89 = load i64, i64* @NGX_HTTP_LUA_CO_NORMAL, align 8
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  store i64 %89, i64* %91, align 8
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 1
  store %struct.TYPE_9__* %92, %struct.TYPE_9__** %94, align 8
  %95 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  %96 = load i64, i64* @NGX_HTTP_LUA_CO_RUNNING, align 8
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  store i64 %96, i64* %98, align 8
  %99 = load i32, i32* @NGX_HTTP_LUA_USER_CORO_RESUME, align 4
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 8
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  store %struct.TYPE_9__* %102, %struct.TYPE_9__** %104, align 8
  %105 = load i32*, i32** %3, align 8
  %106 = load i32*, i32** %3, align 8
  %107 = call i64 @lua_gettop(i32* %106)
  %108 = sub nsw i64 %107, 1
  %109 = call i32 @lua_yield(i32* %105, i64 %108)
  store i32 %109, i32* %2, align 4
  br label %110

110:                                              ; preds = %88, %72, %59, %50, %27, %18
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local i32* @lua_tothread(i32*, i32) #1

declare dso_local i32 @luaL_argcheck(i32*, i32*, i32, i8*) #1

declare dso_local i32* @ngx_http_lua_get_req(i32*) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local %struct.TYPE_8__* @ngx_http_get_module_ctx(i32*, i32) #1

declare dso_local i32 @ngx_http_lua_check_context(i32*, %struct.TYPE_8__*, i32) #1

declare dso_local %struct.TYPE_9__* @ngx_http_lua_get_co_ctx(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @ngx_http_lua_probe_user_coroutine_resume(i32*, i32*, i32*) #1

declare dso_local i32 @dd(i8*, ...) #1

declare dso_local i32 @lua_pushboolean(i32*, i32) #1

declare dso_local i32 @lua_pushfstring(i32*, i8*, i32) #1

declare dso_local i32 @lua_yield(i32*, i64) #1

declare dso_local i64 @lua_gettop(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
