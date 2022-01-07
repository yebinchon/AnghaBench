; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_ctx.c_ngx_http_lua_ngx_set_ctx_helper.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_ctx.c_ngx_http_lua_ngx_set_ctx_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i64 }

@LUA_NOREF = common dso_local global i64 0, align 8
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"lua create ngx.ctx table for the current request\00", align 1
@ngx_http_lua_ctx_tables_key = common dso_local global i32 0, align 4
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"no memory\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"lua fetching existing ngx.ctx table for the current request\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_http_lua_ngx_set_ctx_helper(i32* %0, %struct.TYPE_8__* %1, %struct.TYPE_9__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %7, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %9, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %4
  %13 = load i32*, i32** %6, align 8
  %14 = call i32 @lua_gettop(i32* %13)
  %15 = load i32, i32* %9, align 4
  %16 = add nsw i32 %14, %15
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %9, align 4
  br label %18

18:                                               ; preds = %12, %4
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @LUA_NOREF, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %59

24:                                               ; preds = %18
  %25 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ngx_log_debug0(i32 %25, i32 %30, i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* @ngx_http_lua_ctx_tables_key, align 4
  %34 = call i32 @lua_pushliteral(i32* %32, i32 %33)
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %37 = call i32 @lua_rawget(i32* %35, i32 %36)
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @lua_pushvalue(i32* %38, i32 %39)
  %41 = load i32*, i32** %6, align 8
  %42 = call i8* @luaL_ref(i32* %41, i32 -2)
  %43 = ptrtoint i8* %42 to i64
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load i32*, i32** %6, align 8
  %47 = call i32 @lua_pop(i32* %46, i32 1)
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i64 @ngx_http_lua_ngx_ctx_add_cleanup(%struct.TYPE_8__* %48, i64 %51)
  %53 = load i64, i64* @NGX_OK, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %24
  %56 = load i32*, i32** %6, align 8
  %57 = call i32 @luaL_error(i32* %56, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i32 %57, i32* %5, align 4
  br label %88

58:                                               ; preds = %24
  store i32 0, i32* %5, align 4
  br label %88

59:                                               ; preds = %18
  %60 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @ngx_log_debug0(i32 %60, i32 %65, i32 0, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0))
  %67 = load i32*, i32** %6, align 8
  %68 = load i32, i32* @ngx_http_lua_ctx_tables_key, align 4
  %69 = call i32 @lua_pushliteral(i32* %67, i32 %68)
  %70 = load i32*, i32** %6, align 8
  %71 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %72 = call i32 @lua_rawget(i32* %70, i32 %71)
  %73 = load i32*, i32** %6, align 8
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @luaL_unref(i32* %73, i32 -1, i64 %76)
  %78 = load i32*, i32** %6, align 8
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @lua_pushvalue(i32* %78, i32 %79)
  %81 = load i32*, i32** %6, align 8
  %82 = call i8* @luaL_ref(i32* %81, i32 -2)
  %83 = ptrtoint i8* %82 to i64
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  store i64 %83, i64* %85, align 8
  %86 = load i32*, i32** %6, align 8
  %87 = call i32 @lua_pop(i32* %86, i32 1)
  store i32 0, i32* %5, align 4
  br label %88

88:                                               ; preds = %59, %58, %55
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i32 @lua_pushliteral(i32*, i32) #1

declare dso_local i32 @lua_rawget(i32*, i32) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i8* @luaL_ref(i32*, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i64 @ngx_http_lua_ngx_ctx_add_cleanup(%struct.TYPE_8__*, i64) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i32 @luaL_unref(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
