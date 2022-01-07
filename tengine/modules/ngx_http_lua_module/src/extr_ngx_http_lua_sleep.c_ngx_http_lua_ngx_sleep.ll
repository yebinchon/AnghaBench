; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_sleep.c_ngx_http_lua_ngx_sleep.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_sleep.c_ngx_http_lua_ngx_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_14__*, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32, i64 }
%struct.TYPE_16__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_18__, %struct.TYPE_15__*, i32 }
%struct.TYPE_18__ = type { i32, i32, %struct.TYPE_17__*, i32 }

@.str = private unnamed_addr constant [45 x i8] c"attempt to pass %d arguments, but accepted 1\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"no request found\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"invalid sleep duration \22%d\22\00", align 1
@ngx_http_lua_module = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"no request ctx found\00", align 1
@NGX_HTTP_LUA_CONTEXT_REWRITE = common dso_local global i32 0, align 4
@NGX_HTTP_LUA_CONTEXT_ACCESS = common dso_local global i32 0, align 4
@NGX_HTTP_LUA_CONTEXT_CONTENT = common dso_local global i32 0, align 4
@NGX_HTTP_LUA_CONTEXT_TIMER = common dso_local global i32 0, align 4
@NGX_HTTP_LUA_CONTEXT_SSL_CERT = common dso_local global i32 0, align 4
@NGX_HTTP_LUA_CONTEXT_SSL_SESS_FETCH = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"no co ctx found\00", align 1
@ngx_http_lua_sleep_cleanup = common dso_local global i32 0, align 4
@ngx_http_lua_sleep_handler = common dso_local global i32 0, align 4
@NGX_LOG_WARN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [77 x i8] c"ngx.sleep(0) called without delayed events patch, this will hurt performance\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"adding timer with delay %lu ms, r:%.*s\00", align 1
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [29 x i8] c"lua ready to sleep for %d ms\00", align 1
@ngx_posted_delayed_events = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ngx_http_lua_ngx_sleep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_lua_ngx_sleep(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  store i32* %0, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @lua_gettop(i32* %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 1
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load i32*, i32** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 (i32*, i8*, ...) @luaL_error(i32* %14, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %15)
  store i32 %16, i32* %2, align 4
  br label %136

17:                                               ; preds = %1
  %18 = load i32*, i32** %3, align 8
  %19 = call %struct.TYPE_15__* @ngx_http_lua_get_req(i32* %18)
  store %struct.TYPE_15__* %19, %struct.TYPE_15__** %6, align 8
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %21 = icmp eq %struct.TYPE_15__* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 (i32*, i8*, ...) @luaL_error(i32* %23, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i32 %24, i32* %2, align 4
  br label %136

25:                                               ; preds = %17
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @luaL_checknumber(i32* %26, i32 1)
  %28 = mul nsw i32 %27, 1000
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %5, align 8
  %30 = load i64, i64* %5, align 8
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %25
  %33 = load i32*, i32** %3, align 8
  %34 = load i64, i64* %5, align 8
  %35 = call i32 (i32*, i8*, ...) @luaL_error(i32* %33, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i64 %34)
  store i32 %35, i32* %2, align 4
  br label %136

36:                                               ; preds = %25
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %38 = load i32, i32* @ngx_http_lua_module, align 4
  %39 = call %struct.TYPE_16__* @ngx_http_get_module_ctx(%struct.TYPE_15__* %37, i32 %38)
  store %struct.TYPE_16__* %39, %struct.TYPE_16__** %7, align 8
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %41 = icmp eq %struct.TYPE_16__* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i32*, i32** %3, align 8
  %44 = call i32 (i32*, i8*, ...) @luaL_error(i32* %43, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  store i32 %44, i32* %2, align 4
  br label %136

45:                                               ; preds = %36
  %46 = load i32*, i32** %3, align 8
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %48 = load i32, i32* @NGX_HTTP_LUA_CONTEXT_REWRITE, align 4
  %49 = load i32, i32* @NGX_HTTP_LUA_CONTEXT_ACCESS, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @NGX_HTTP_LUA_CONTEXT_CONTENT, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @NGX_HTTP_LUA_CONTEXT_TIMER, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @NGX_HTTP_LUA_CONTEXT_SSL_CERT, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @NGX_HTTP_LUA_CONTEXT_SSL_SESS_FETCH, align 4
  %58 = or i32 %56, %57
  %59 = call i32 @ngx_http_lua_check_context(i32* %46, %struct.TYPE_16__* %47, i32 %58)
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %61, align 8
  store %struct.TYPE_17__* %62, %struct.TYPE_17__** %8, align 8
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %64 = icmp eq %struct.TYPE_17__* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %45
  %66 = load i32*, i32** %3, align 8
  %67 = call i32 (i32*, i8*, ...) @luaL_error(i32* %66, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  store i32 %67, i32* %2, align 4
  br label %136

68:                                               ; preds = %45
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %70 = call i32 @ngx_http_lua_cleanup_pending_operation(%struct.TYPE_17__* %69)
  %71 = load i32, i32* @ngx_http_lua_sleep_cleanup, align 4
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 8
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 1
  store %struct.TYPE_15__* %74, %struct.TYPE_15__** %76, align 8
  %77 = load i32, i32* @ngx_http_lua_sleep_handler, align 4
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 3
  store i32 %77, i32* %80, align 8
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 2
  store %struct.TYPE_17__* %81, %struct.TYPE_17__** %84, align 8
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 1
  store i32 %89, i32* %92, align 4
  %93 = load i64, i64* %5, align 8
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %108

95:                                               ; preds = %68
  %96 = load i32, i32* @NGX_LOG_WARN, align 4
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @ngx_log_error(i32 %96, i32 %101, i32 0, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.5, i64 0, i64 0))
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 0
  %105 = load i64, i64* %5, align 8
  %106 = trunc i64 %105 to i32
  %107 = call i32 @ngx_add_timer(%struct.TYPE_18__* %104, i32 %106)
  br label %125

108:                                              ; preds = %68
  %109 = load i64, i64* %5, align 8
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = trunc i64 %113 to i32
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i64 %109, i32 %114, i32 %118)
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %120, i32 0, i32 0
  %122 = load i64, i64* %5, align 8
  %123 = trunc i64 %122 to i32
  %124 = call i32 @ngx_add_timer(%struct.TYPE_18__* %121, i32 %123)
  br label %125

125:                                              ; preds = %108, %95
  %126 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i64, i64* %5, align 8
  %133 = call i32 @ngx_log_debug1(i32 %126, i32 %131, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i64 %132)
  %134 = load i32*, i32** %3, align 8
  %135 = call i32 @lua_yield(i32* %134, i32 0)
  store i32 %135, i32* %2, align 4
  br label %136

136:                                              ; preds = %125, %65, %42, %32, %22, %13
  %137 = load i32, i32* %2, align 4
  ret i32 %137
}

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @luaL_error(i32*, i8*, ...) #1

declare dso_local %struct.TYPE_15__* @ngx_http_lua_get_req(i32*) #1

declare dso_local i32 @luaL_checknumber(i32*, i32) #1

declare dso_local %struct.TYPE_16__* @ngx_http_get_module_ctx(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @ngx_http_lua_check_context(i32*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @ngx_http_lua_cleanup_pending_operation(%struct.TYPE_17__*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*) #1

declare dso_local i32 @ngx_add_timer(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @dd(i8*, ...) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i64) #1

declare dso_local i32 @lua_yield(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
