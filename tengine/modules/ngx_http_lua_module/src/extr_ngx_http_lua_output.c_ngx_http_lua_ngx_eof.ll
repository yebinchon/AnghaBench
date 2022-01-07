; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_output.c_ngx_http_lua_ngx_eof.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_output.c_ngx_http_lua_ngx_eof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i64, i64 }

@.str = private unnamed_addr constant [24 x i8] c"no request object found\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"no argument is expected\00", align 1
@ngx_http_lua_module = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"no ctx found\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"raw request socket acquired\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"seen eof\00", align 1
@NGX_HTTP_LUA_CONTEXT_REWRITE = common dso_local global i32 0, align 4
@NGX_HTTP_LUA_CONTEXT_ACCESS = common dso_local global i32 0, align 4
@NGX_HTTP_LUA_CONTEXT_CONTENT = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"lua send eof\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"send chain: %d\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_HTTP_SPECIAL_RESPONSE = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [26 x i8] c"nginx output filter error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ngx_http_lua_ngx_eof to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_lua_ngx_eof(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call %struct.TYPE_11__* @ngx_http_lua_get_req(i32* %7)
  store %struct.TYPE_11__* %8, %struct.TYPE_11__** %4, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %10 = icmp eq %struct.TYPE_11__* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @luaL_error(i32* %12, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 %13, i32* %2, align 4
  br label %87

14:                                               ; preds = %1
  %15 = load i32*, i32** %3, align 8
  %16 = call i64 @lua_gettop(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @luaL_error(i32* %19, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  store i32 %20, i32* %2, align 4
  br label %87

21:                                               ; preds = %14
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %23 = load i32, i32* @ngx_http_lua_module, align 4
  %24 = call %struct.TYPE_12__* @ngx_http_get_module_ctx(%struct.TYPE_11__* %22, i32 %23)
  store %struct.TYPE_12__* %24, %struct.TYPE_12__** %5, align 8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %26 = icmp eq %struct.TYPE_12__* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @luaL_error(i32* %28, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  store i32 %29, i32* %2, align 4
  br label %87

30:                                               ; preds = %21
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 @lua_pushnil(i32* %36)
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @lua_pushliteral(i32* %38, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  store i32 2, i32* %2, align 4
  br label %87

40:                                               ; preds = %30
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load i32*, i32** %3, align 8
  %47 = call i32 @lua_pushnil(i32* %46)
  %48 = load i32*, i32** %3, align 8
  %49 = call i32 @lua_pushliteral(i32* %48, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  store i32 2, i32* %2, align 4
  br label %87

50:                                               ; preds = %40
  %51 = load i32*, i32** %3, align 8
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %53 = load i32, i32* @NGX_HTTP_LUA_CONTEXT_REWRITE, align 4
  %54 = load i32, i32* @NGX_HTTP_LUA_CONTEXT_ACCESS, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @NGX_HTTP_LUA_CONTEXT_CONTENT, align 4
  %57 = or i32 %55, %56
  %58 = call i32 @ngx_http_lua_check_context(i32* %51, %struct.TYPE_12__* %52, i32 %57)
  %59 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @ngx_log_debug0(i32 %59, i32 %64, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %68 = call i64 @ngx_http_lua_send_chain_link(%struct.TYPE_11__* %66, %struct.TYPE_12__* %67, i32* null)
  store i64 %68, i64* %6, align 8
  %69 = load i64, i64* %6, align 8
  %70 = trunc i64 %69 to i32
  %71 = call i32 @dd(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 %70)
  %72 = load i64, i64* %6, align 8
  %73 = load i64, i64* @NGX_ERROR, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %79, label %75

75:                                               ; preds = %50
  %76 = load i64, i64* %6, align 8
  %77 = load i64, i64* @NGX_HTTP_SPECIAL_RESPONSE, align 8
  %78 = icmp sge i64 %76, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %75, %50
  %80 = load i32*, i32** %3, align 8
  %81 = call i32 @lua_pushnil(i32* %80)
  %82 = load i32*, i32** %3, align 8
  %83 = call i32 @lua_pushliteral(i32* %82, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  store i32 2, i32* %2, align 4
  br label %87

84:                                               ; preds = %75
  %85 = load i32*, i32** %3, align 8
  %86 = call i32 @lua_pushinteger(i32* %85, i32 1)
  store i32 1, i32* %2, align 4
  br label %87

87:                                               ; preds = %84, %79, %45, %35, %27, %18, %11
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local %struct.TYPE_11__* @ngx_http_lua_get_req(i32*) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i64 @lua_gettop(i32*) #1

declare dso_local %struct.TYPE_12__* @ngx_http_get_module_ctx(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i32 @lua_pushliteral(i32*, i8*) #1

declare dso_local i32 @ngx_http_lua_check_context(i32*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i64 @ngx_http_lua_send_chain_link(%struct.TYPE_11__*, %struct.TYPE_12__*, i32*) #1

declare dso_local i32 @dd(i8*, i32) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
