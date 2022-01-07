; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_ctx.c_ngx_http_lua_ngx_get_ctx.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_ctx.c_ngx_http_lua_ngx_get_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i64 }

@.str = private unnamed_addr constant [17 x i8] c"no request found\00", align 1
@ngx_http_lua_module = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"no request ctx found\00", align 1
@LUA_NOREF = common dso_local global i64 0, align 8
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"lua create ngx.ctx table for the current request\00", align 1
@ngx_http_lua_ctx_tables_key = common dso_local global i32 0, align 4
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [10 x i8] c"no memory\00", align 1
@.str.4 = private unnamed_addr constant [60 x i8] c"lua fetching existing ngx.ctx table for the current request\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_http_lua_ngx_get_ctx(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call %struct.TYPE_9__* @ngx_http_lua_get_req(i32* %6)
  store %struct.TYPE_9__* %7, %struct.TYPE_9__** %4, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %9 = icmp eq %struct.TYPE_9__* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @luaL_error(i32* %11, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 %12, i32* %2, align 4
  br label %80

13:                                               ; preds = %1
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %15 = load i32, i32* @ngx_http_lua_module, align 4
  %16 = call %struct.TYPE_10__* @ngx_http_get_module_ctx(%struct.TYPE_9__* %14, i32 %15)
  store %struct.TYPE_10__* %16, %struct.TYPE_10__** %5, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %18 = icmp eq %struct.TYPE_10__* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @luaL_error(i32* %20, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store i32 %21, i32* %2, align 4
  br label %80

22:                                               ; preds = %13
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @LUA_NOREF, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %61

28:                                               ; preds = %22
  %29 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @ngx_log_debug0(i32 %29, i32 %34, i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  %36 = load i32*, i32** %3, align 8
  %37 = load i32, i32* @ngx_http_lua_ctx_tables_key, align 4
  %38 = call i32 @lua_pushliteral(i32* %36, i32 %37)
  %39 = load i32*, i32** %3, align 8
  %40 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %41 = call i32 @lua_rawget(i32* %39, i32 %40)
  %42 = load i32*, i32** %3, align 8
  %43 = call i32 @lua_createtable(i32* %42, i32 0, i32 4)
  %44 = load i32*, i32** %3, align 8
  %45 = call i32 @lua_pushvalue(i32* %44, i32 -1)
  %46 = load i32*, i32** %3, align 8
  %47 = call i64 @luaL_ref(i32* %46, i32 -3)
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i64 @ngx_http_lua_ngx_ctx_add_cleanup(%struct.TYPE_9__* %50, i64 %53)
  %55 = load i64, i64* @NGX_OK, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %28
  %58 = load i32*, i32** %3, align 8
  %59 = call i32 @luaL_error(i32* %58, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  store i32 %59, i32* %2, align 4
  br label %80

60:                                               ; preds = %28
  store i32 1, i32* %2, align 4
  br label %80

61:                                               ; preds = %22
  %62 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @ngx_log_debug0(i32 %62, i32 %67, i32 0, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.4, i64 0, i64 0))
  %69 = load i32*, i32** %3, align 8
  %70 = load i32, i32* @ngx_http_lua_ctx_tables_key, align 4
  %71 = call i32 @lua_pushliteral(i32* %69, i32 %70)
  %72 = load i32*, i32** %3, align 8
  %73 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %74 = call i32 @lua_rawget(i32* %72, i32 %73)
  %75 = load i32*, i32** %3, align 8
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @lua_rawgeti(i32* %75, i32 -1, i64 %78)
  store i32 1, i32* %2, align 4
  br label %80

80:                                               ; preds = %61, %60, %57, %19, %10
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local %struct.TYPE_9__* @ngx_http_lua_get_req(i32*) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local %struct.TYPE_10__* @ngx_http_get_module_ctx(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i32 @lua_pushliteral(i32*, i32) #1

declare dso_local i32 @lua_rawget(i32*, i32) #1

declare dso_local i32 @lua_createtable(i32*, i32, i32) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i64 @luaL_ref(i32*, i32) #1

declare dso_local i64 @ngx_http_lua_ngx_ctx_add_cleanup(%struct.TYPE_9__*, i64) #1

declare dso_local i32 @lua_rawgeti(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
