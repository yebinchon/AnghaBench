; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_uthread.c_ngx_http_lua_uthread_kill.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_uthread.c_ngx_http_lua_uthread_kill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, i32, %struct.TYPE_11__*, i32 }

@.str = private unnamed_addr constant [17 x i8] c"no request found\00", align 1
@ngx_http_lua_module = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"no request ctx found\00", align 1
@NGX_HTTP_LUA_CONTEXT_REWRITE = common dso_local global i32 0, align 4
@NGX_HTTP_LUA_CONTEXT_ACCESS = common dso_local global i32 0, align 4
@NGX_HTTP_LUA_CONTEXT_CONTENT = common dso_local global i32 0, align 4
@NGX_HTTP_LUA_CONTEXT_TIMER = common dso_local global i32 0, align 4
@NGX_HTTP_LUA_CONTEXT_SSL_CERT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"lua thread expected\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"no co ctx found\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"not user thread\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"killer not parent\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"pending subrequests\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"already terminated\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"already waited or killed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ngx_http_lua_uthread_kill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_lua_uthread_kill(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  store i32* %0, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call i32* @ngx_http_lua_get_req(i32* %9)
  store i32* %10, i32** %5, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @luaL_error(i32* %14, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 %15, i32* %2, align 4
  br label %122

16:                                               ; preds = %1
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* @ngx_http_lua_module, align 4
  %19 = call %struct.TYPE_10__* @ngx_http_get_module_ctx(i32* %17, i32 %18)
  store %struct.TYPE_10__* %19, %struct.TYPE_10__** %6, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %21 = icmp eq %struct.TYPE_10__* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @luaL_error(i32* %23, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store i32 %24, i32* %2, align 4
  br label %122

25:                                               ; preds = %16
  %26 = load i32*, i32** %3, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %28 = load i32, i32* @NGX_HTTP_LUA_CONTEXT_REWRITE, align 4
  %29 = load i32, i32* @NGX_HTTP_LUA_CONTEXT_ACCESS, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @NGX_HTTP_LUA_CONTEXT_CONTENT, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @NGX_HTTP_LUA_CONTEXT_TIMER, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @NGX_HTTP_LUA_CONTEXT_SSL_CERT, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @ngx_http_lua_check_context(i32* %26, %struct.TYPE_10__* %27, i32 %36)
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %39, align 8
  store %struct.TYPE_11__* %40, %struct.TYPE_11__** %7, align 8
  %41 = load i32*, i32** %3, align 8
  %42 = call i32* @lua_tothread(i32* %41, i32 1)
  store i32* %42, i32** %4, align 8
  %43 = load i32*, i32** %3, align 8
  %44 = load i32*, i32** %4, align 8
  %45 = call i32 @luaL_argcheck(i32* %43, i32* %44, i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %46 = load i32*, i32** %4, align 8
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %48 = call %struct.TYPE_11__* @ngx_http_lua_get_co_ctx(i32* %46, %struct.TYPE_10__* %47)
  store %struct.TYPE_11__* %48, %struct.TYPE_11__** %8, align 8
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %50 = icmp eq %struct.TYPE_11__* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %25
  %52 = load i32*, i32** %3, align 8
  %53 = call i32 @luaL_error(i32* %52, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  store i32 %53, i32* %2, align 4
  br label %122

54:                                               ; preds = %25
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %54
  %60 = load i32*, i32** %3, align 8
  %61 = call i32 @lua_pushnil(i32* %60)
  %62 = load i32*, i32** %3, align 8
  %63 = call i32 @lua_pushliteral(i32* %62, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  store i32 2, i32* %2, align 4
  br label %122

64:                                               ; preds = %54
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 2
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %66, align 8
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %69 = icmp ne %struct.TYPE_11__* %67, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %64
  %71 = load i32*, i32** %3, align 8
  %72 = call i32 @lua_pushnil(i32* %71)
  %73 = load i32*, i32** %3, align 8
  %74 = call i32 @lua_pushliteral(i32* %73, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  store i32 2, i32* %2, align 4
  br label %122

75:                                               ; preds = %64
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp sgt i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %75
  %81 = load i32*, i32** %3, align 8
  %82 = call i32 @lua_pushnil(i32* %81)
  %83 = load i32*, i32** %3, align 8
  %84 = call i32 @lua_pushliteral(i32* %83, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  store i32 2, i32* %2, align 4
  br label %122

85:                                               ; preds = %75
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  switch i32 %88, label %108 [
    i32 128, label %89
    i32 129, label %103
  ]

89:                                               ; preds = %85
  %90 = load i32*, i32** %5, align 8
  %91 = load i32*, i32** %3, align 8
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %94 = call i32 @ngx_http_lua_del_thread(i32* %90, i32* %91, %struct.TYPE_10__* %92, %struct.TYPE_11__* %93)
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = add nsw i32 %97, -1
  store i32 %98, i32* %96, align 8
  %99 = load i32*, i32** %3, align 8
  %100 = call i32 @lua_pushnil(i32* %99)
  %101 = load i32*, i32** %3, align 8
  %102 = call i32 @lua_pushliteral(i32* %101, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  store i32 2, i32* %2, align 4
  br label %122

103:                                              ; preds = %85
  %104 = load i32*, i32** %3, align 8
  %105 = call i32 @lua_pushnil(i32* %104)
  %106 = load i32*, i32** %3, align 8
  %107 = call i32 @lua_pushliteral(i32* %106, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  store i32 2, i32* %2, align 4
  br label %122

108:                                              ; preds = %85
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %110 = call i32 @ngx_http_lua_cleanup_pending_operation(%struct.TYPE_11__* %109)
  %111 = load i32*, i32** %5, align 8
  %112 = load i32*, i32** %3, align 8
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %115 = call i32 @ngx_http_lua_del_thread(i32* %111, i32* %112, %struct.TYPE_10__* %113, %struct.TYPE_11__* %114)
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = add nsw i32 %118, -1
  store i32 %119, i32* %117, align 8
  %120 = load i32*, i32** %3, align 8
  %121 = call i32 @lua_pushinteger(i32* %120, i32 1)
  store i32 1, i32* %2, align 4
  br label %122

122:                                              ; preds = %108, %103, %89, %80, %70, %59, %51, %22, %13
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local i32* @ngx_http_lua_get_req(i32*) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local %struct.TYPE_10__* @ngx_http_get_module_ctx(i32*, i32) #1

declare dso_local i32 @ngx_http_lua_check_context(i32*, %struct.TYPE_10__*, i32) #1

declare dso_local i32* @lua_tothread(i32*, i32) #1

declare dso_local i32 @luaL_argcheck(i32*, i32*, i32, i8*) #1

declare dso_local %struct.TYPE_11__* @ngx_http_lua_get_co_ctx(i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i32 @lua_pushliteral(i32*, i8*) #1

declare dso_local i32 @ngx_http_lua_del_thread(i32*, i32*, %struct.TYPE_10__*, %struct.TYPE_11__*) #1

declare dso_local i32 @ngx_http_lua_cleanup_pending_operation(%struct.TYPE_11__*) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
