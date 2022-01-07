; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_coroutine.c_ngx_http_lua_coroutine_status.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_coroutine.c_ngx_http_lua_coroutine_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_4__ = type { i64 }

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
@ngx_http_lua_co_status_names = common dso_local global %struct.TYPE_5__* null, align 8
@NGX_HTTP_LUA_CO_DEAD = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"co status: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ngx_http_lua_coroutine_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_lua_coroutine_status(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i32* @lua_tothread(i32* %8, i32 1)
  store i32* %9, i32** %4, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @luaL_argcheck(i32* %10, i32* %11, i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %13 = load i32*, i32** %3, align 8
  %14 = call i32* @ngx_http_lua_get_req(i32* %13)
  store i32* %14, i32** %5, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @luaL_error(i32* %18, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i32 %19, i32* %2, align 4
  br label %85

20:                                               ; preds = %1
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* @ngx_http_lua_module, align 4
  %23 = call i32* @ngx_http_get_module_ctx(i32* %21, i32 %22)
  store i32* %23, i32** %6, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @luaL_error(i32* %27, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  store i32 %28, i32* %2, align 4
  br label %85

29:                                               ; preds = %20
  %30 = load i32*, i32** %3, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* @NGX_HTTP_LUA_CONTEXT_REWRITE, align 4
  %33 = load i32, i32* @NGX_HTTP_LUA_CONTEXT_ACCESS, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @NGX_HTTP_LUA_CONTEXT_CONTENT, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @NGX_HTTP_LUA_CONTEXT_TIMER, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @NGX_HTTP_LUA_CONTEXT_SSL_CERT, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @NGX_HTTP_LUA_CONTEXT_SSL_SESS_FETCH, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @ngx_http_lua_check_context(i32* %30, i32* %31, i32 %42)
  %44 = load i32*, i32** %4, align 8
  %45 = load i32*, i32** %6, align 8
  %46 = call %struct.TYPE_4__* @ngx_http_lua_get_co_ctx(i32* %44, i32* %45)
  store %struct.TYPE_4__* %46, %struct.TYPE_4__** %7, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %48 = icmp eq %struct.TYPE_4__* %47, null
  br i1 %48, label %49, label %63

49:                                               ; preds = %29
  %50 = load i32*, i32** %3, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ngx_http_lua_co_status_names, align 8
  %52 = load i64, i64* @NGX_HTTP_LUA_CO_DEAD, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to i8*
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ngx_http_lua_co_status_names, align 8
  %58 = load i64, i64* @NGX_HTTP_LUA_CO_DEAD, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @lua_pushlstring(i32* %50, i8* %56, i32 %61)
  store i32 1, i32* %2, align 4
  br label %85

63:                                               ; preds = %29
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @dd(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i64 %66)
  %68 = load i32*, i32** %3, align 8
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ngx_http_lua_co_status_names, align 8
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = inttoptr i64 %75 to i8*
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ngx_http_lua_co_status_names, align 8
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @lua_pushlstring(i32* %68, i8* %76, i32 %83)
  store i32 1, i32* %2, align 4
  br label %85

85:                                               ; preds = %63, %49, %26, %17
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32* @lua_tothread(i32*, i32) #1

declare dso_local i32 @luaL_argcheck(i32*, i32*, i32, i8*) #1

declare dso_local i32* @ngx_http_lua_get_req(i32*) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i32* @ngx_http_get_module_ctx(i32*, i32) #1

declare dso_local i32 @ngx_http_lua_check_context(i32*, i32*, i32) #1

declare dso_local %struct.TYPE_4__* @ngx_http_lua_get_co_ctx(i32*, i32*) #1

declare dso_local i32 @lua_pushlstring(i32*, i8*, i32) #1

declare dso_local i32 @dd(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
