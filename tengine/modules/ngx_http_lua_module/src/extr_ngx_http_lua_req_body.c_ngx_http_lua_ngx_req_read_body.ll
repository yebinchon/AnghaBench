; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_req_body.c_ngx_http_lua_ngx_req_read_body.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_req_body.c_ngx_http_lua_ngx_req_read_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32, %struct.TYPE_13__*, %struct.TYPE_12__*, i64, i64 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_16__*, i64, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_14__*, i32 }

@.str = private unnamed_addr constant [34 x i8] c"expecting 0 arguments but seen %d\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"request object not found\00", align 1
@ngx_http_lua_module = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"no ctx found\00", align 1
@NGX_HTTP_LUA_CONTEXT_REWRITE = common dso_local global i32 0, align 4
@NGX_HTTP_LUA_CONTEXT_ACCESS = common dso_local global i32 0, align 4
@NGX_HTTP_LUA_CONTEXT_CONTENT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"no co ctx found\00", align 1
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"lua start to read buffered request body\00", align 1
@ngx_http_lua_req_body_post_read = common dso_local global i32 0, align 4
@NGX_HTTP_SPECIAL_RESPONSE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [67 x i8] c"http read client request body returned error code %i, exitting now\00", align 1
@NGX_AGAIN = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [58 x i8] c"lua read buffered request body requires I/O interruptions\00", align 1
@ngx_http_lua_req_body_cleanup = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [51 x i8] c"lua has read buffered request body in a single run\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ngx_http_lua_ngx_req_read_body to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_lua_ngx_req_read_body(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  store i32* %0, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @lua_gettop(i32* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load i32*, i32** %3, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 (i32*, i8*, ...) @luaL_error(i32* %14, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %15)
  store i32 %16, i32* %2, align 4
  br label %136

17:                                               ; preds = %1
  %18 = load i32*, i32** %3, align 8
  %19 = call %struct.TYPE_14__* @ngx_http_lua_get_req(i32* %18)
  store %struct.TYPE_14__* %19, %struct.TYPE_14__** %4, align 8
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %21 = icmp eq %struct.TYPE_14__* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 (i32*, i8*, ...) @luaL_error(i32* %23, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store i32 %24, i32* %2, align 4
  br label %136

25:                                               ; preds = %17
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 1
  store i32 1, i32* %29, align 4
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 2
  store i32 1, i32* %31, align 8
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 6
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %25
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 5
  store i64 0, i64* %38, align 8
  br label %39

39:                                               ; preds = %36, %25
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %41 = load i32, i32* @ngx_http_lua_module, align 4
  %42 = call %struct.TYPE_15__* @ngx_http_get_module_ctx(%struct.TYPE_14__* %40, i32 %41)
  store %struct.TYPE_15__* %42, %struct.TYPE_15__** %7, align 8
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %44 = icmp eq %struct.TYPE_15__* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i32*, i32** %3, align 8
  %47 = call i32 (i32*, i8*, ...) @luaL_error(i32* %46, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  store i32 %47, i32* %2, align 4
  br label %136

48:                                               ; preds = %39
  %49 = load i32*, i32** %3, align 8
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %51 = load i32, i32* @NGX_HTTP_LUA_CONTEXT_REWRITE, align 4
  %52 = load i32, i32* @NGX_HTTP_LUA_CONTEXT_ACCESS, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @NGX_HTTP_LUA_CONTEXT_CONTENT, align 4
  %55 = or i32 %53, %54
  %56 = call i32 @ngx_http_lua_check_context(i32* %49, %struct.TYPE_15__* %50, i32 %55)
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 4
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %58, align 8
  store %struct.TYPE_16__* %59, %struct.TYPE_16__** %8, align 8
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %61 = icmp eq %struct.TYPE_16__* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %48
  %63 = load i32*, i32** %3, align 8
  %64 = call i32 (i32*, i8*, ...) @luaL_error(i32* %63, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  store i32 %64, i32* %2, align 4
  br label %136

65:                                               ; preds = %48
  %66 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 3
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @ngx_log_debug0(i32 %66, i32 %71, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %74 = load i32, i32* @ngx_http_lua_req_body_post_read, align 4
  %75 = call i64 @ngx_http_read_client_request_body(%struct.TYPE_14__* %73, i32 %74)
  store i64 %75, i64* %6, align 8
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 4
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %80, -1
  store i64 %81, i64* %79, align 8
  %82 = load i64, i64* %6, align 8
  %83 = load i64, i64* @NGX_HTTP_SPECIAL_RESPONSE, align 8
  %84 = icmp sge i64 %82, %83
  br i1 %84, label %85, label %101

85:                                               ; preds = %65
  %86 = load i64, i64* %6, align 8
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 3
  store i64 %86, i64* %88, align 8
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 0
  store i32 1, i32* %90, align 8
  %91 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 3
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i64, i64* %6, align 8
  %98 = call i32 @ngx_log_debug1(i32 %91, i32 %96, i32 0, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.5, i64 0, i64 0), i64 %97)
  %99 = load i32*, i32** %3, align 8
  %100 = call i32 @lua_yield(i32* %99, i32 0)
  store i32 %100, i32* %2, align 4
  br label %136

101:                                              ; preds = %65
  %102 = load i64, i64* %6, align 8
  %103 = load i64, i64* @NGX_AGAIN, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %128

105:                                              ; preds = %101
  %106 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 3
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @ngx_log_debug0(i32 %106, i32 %111, i32 0, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.6, i64 0, i64 0))
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 1
  store i32 1, i32* %114, align 4
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 2
  store %struct.TYPE_16__* %115, %struct.TYPE_16__** %117, align 8
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %119 = call i32 @ngx_http_lua_cleanup_pending_operation(%struct.TYPE_16__* %118)
  %120 = load i32, i32* @ngx_http_lua_req_body_cleanup, align 4
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 8
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 0
  store %struct.TYPE_14__* %123, %struct.TYPE_14__** %125, align 8
  %126 = load i32*, i32** %3, align 8
  %127 = call i32 @lua_yield(i32* %126, i32 0)
  store i32 %127, i32* %2, align 4
  br label %136

128:                                              ; preds = %101
  %129 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 3
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @ngx_log_debug0(i32 %129, i32 %134, i32 0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %136

136:                                              ; preds = %128, %105, %85, %62, %45, %22, %13
  %137 = load i32, i32* %2, align 4
  ret i32 %137
}

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @luaL_error(i32*, i8*, ...) #1

declare dso_local %struct.TYPE_14__* @ngx_http_lua_get_req(i32*) #1

declare dso_local %struct.TYPE_15__* @ngx_http_get_module_ctx(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @ngx_http_lua_check_context(i32*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i64 @ngx_http_read_client_request_body(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i64) #1

declare dso_local i32 @lua_yield(i32*, i32) #1

declare dso_local i32 @ngx_http_lua_cleanup_pending_operation(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
