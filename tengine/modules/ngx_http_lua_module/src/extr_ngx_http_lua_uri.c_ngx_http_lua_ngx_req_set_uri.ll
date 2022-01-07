; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_uri.c_ngx_http_lua_ngx_req_set_uri.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_uri.c_ngx_http_lua_ngx_req_set_uri.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i64, i64, %struct.TYPE_13__, i32, %struct.TYPE_12__* }
%struct.TYPE_13__ = type { i64, i32* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_15__ = type { i64, i64, i64 }

@.str = private unnamed_addr constant [39 x i8] c"expecting 1 or 2 arguments but seen %d\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"no request found\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"attempt to use zero-length uri\00", align 1
@LUA_TBOOLEAN = common dso_local global i32 0, align 4
@ngx_http_lua_module = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"no ctx found\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"rewrite: %d, access: %d, content: %d\00", align 1
@NGX_HTTP_LUA_CONTEXT_REWRITE = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"lua set uri jump to \22%*s\22\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"no memory\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ngx_http_lua_ngx_req_set_uri to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_lua_ngx_req_set_uri(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_15__*, align 8
  store i32* %0, i32** %3, align 8
  store i32 0, i32* %8, align 4
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @lua_gettop(i32* %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 1
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 2
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = load i32*, i32** %3, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 (i32*, i8*, ...) @luaL_error(i32* %18, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %19)
  store i32 %20, i32* %2, align 4
  br label %139

21:                                               ; preds = %14, %1
  %22 = load i32*, i32** %3, align 8
  %23 = call %struct.TYPE_14__* @ngx_http_lua_get_req(i32* %22)
  store %struct.TYPE_14__* %23, %struct.TYPE_14__** %4, align 8
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %25 = icmp eq %struct.TYPE_14__* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 (i32*, i8*, ...) @luaL_error(i32* %27, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i32 %28, i32* %2, align 4
  br label %139

29:                                               ; preds = %21
  %30 = load i32*, i32** %3, align 8
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %32 = call i32 @ngx_http_lua_check_fake_request(i32* %30, %struct.TYPE_14__* %31)
  %33 = load i32*, i32** %3, align 8
  %34 = call i64 @luaL_checklstring(i32* %33, i32 1, i64* %5)
  %35 = inttoptr i64 %34 to i32*
  store i32* %35, i32** %6, align 8
  %36 = load i64, i64* %5, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %29
  %39 = load i32*, i32** %3, align 8
  %40 = call i32 (i32*, i8*, ...) @luaL_error(i32* %39, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  store i32 %40, i32* %2, align 4
  br label %139

41:                                               ; preds = %29
  %42 = load i32, i32* %7, align 4
  %43 = icmp eq i32 %42, 2
  br i1 %43, label %44, label %92

44:                                               ; preds = %41
  %45 = load i32*, i32** %3, align 8
  %46 = load i32, i32* @LUA_TBOOLEAN, align 4
  %47 = call i32 @luaL_checktype(i32* %45, i32 2, i32 %46)
  %48 = load i32*, i32** %3, align 8
  %49 = call i32 @lua_toboolean(i32* %48, i32 2)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %91

52:                                               ; preds = %44
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %54 = load i32, i32* @ngx_http_lua_module, align 4
  %55 = call %struct.TYPE_15__* @ngx_http_get_module_ctx(%struct.TYPE_14__* %53, i32 %54)
  store %struct.TYPE_15__* %55, %struct.TYPE_15__** %9, align 8
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %57 = icmp eq %struct.TYPE_15__* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load i32*, i32** %3, align 8
  %60 = call i32 (i32*, i8*, ...) @luaL_error(i32* %59, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  store i32 %60, i32* %2, align 4
  br label %139

61:                                               ; preds = %52
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = trunc i64 %64 to i32
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = trunc i64 %68 to i32
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = trunc i64 %72 to i32
  %74 = call i32 @dd(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %65, i32 %69, i32 %73)
  %75 = load i32*, i32** %3, align 8
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %77 = load i32, i32* @NGX_HTTP_LUA_CONTEXT_REWRITE, align 4
  %78 = call i32 @ngx_http_lua_check_context(i32* %75, %struct.TYPE_15__* %76, i32 %77)
  %79 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 6
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i64, i64* %5, align 8
  %86 = load i32*, i32** %6, align 8
  %87 = call i32 @ngx_log_debug2(i32 %79, i32 %84, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i64 %85, i32* %86)
  %88 = load i32*, i32** %3, align 8
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %90 = call i32 @ngx_http_lua_check_if_abortable(i32* %88, %struct.TYPE_15__* %89)
  br label %91

91:                                               ; preds = %61, %44
  br label %92

92:                                               ; preds = %91, %41
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 8
  %96 = load i64, i64* %5, align 8
  %97 = call i32* @ngx_palloc(i32 %95, i64 %96)
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 4
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 1
  store i32* %97, i32** %100, align 8
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 4
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = icmp eq i32* %104, null
  br i1 %105, label %106, label %109

106:                                              ; preds = %92
  %107 = load i32*, i32** %3, align 8
  %108 = call i32 (i32*, i8*, ...) @luaL_error(i32* %107, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  store i32 %108, i32* %2, align 4
  br label %139

109:                                              ; preds = %92
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 4
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = load i32*, i32** %6, align 8
  %115 = load i64, i64* %5, align 8
  %116 = call i32 @ngx_memcpy(i32* %113, i32* %114, i64 %115)
  %117 = load i64, i64* %5, align 8
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 4
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 0
  store i64 %117, i64* %120, align 8
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 0
  store i32 1, i32* %122, align 8
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 3
  store i64 0, i64* %124, align 8
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %126 = call i32 @ngx_http_set_exten(%struct.TYPE_14__* %125)
  %127 = load i32, i32* %8, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %109
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 1
  store i32 1, i32* %131, align 4
  %132 = load i32*, i32** %3, align 8
  %133 = call i32 @lua_yield(i32* %132, i32 0)
  store i32 %133, i32* %2, align 4
  br label %139

134:                                              ; preds = %109
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 2
  store i64 0, i64* %136, align 8
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 1
  store i32 0, i32* %138, align 4
  store i32 0, i32* %2, align 4
  br label %139

139:                                              ; preds = %134, %129, %106, %58, %38, %26, %17
  %140 = load i32, i32* %2, align 4
  ret i32 %140
}

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @luaL_error(i32*, i8*, ...) #1

declare dso_local %struct.TYPE_14__* @ngx_http_lua_get_req(i32*) #1

declare dso_local i32 @ngx_http_lua_check_fake_request(i32*, %struct.TYPE_14__*) #1

declare dso_local i64 @luaL_checklstring(i32*, i32, i64*) #1

declare dso_local i32 @luaL_checktype(i32*, i32, i32) #1

declare dso_local i32 @lua_toboolean(i32*, i32) #1

declare dso_local %struct.TYPE_15__* @ngx_http_get_module_ctx(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @dd(i8*, i32, i32, i32) #1

declare dso_local i32 @ngx_http_lua_check_context(i32*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, i64, i32*) #1

declare dso_local i32 @ngx_http_lua_check_if_abortable(i32*, %struct.TYPE_15__*) #1

declare dso_local i32* @ngx_palloc(i32, i64) #1

declare dso_local i32 @ngx_memcpy(i32*, i32*, i64) #1

declare dso_local i32 @ngx_http_set_exten(%struct.TYPE_14__*) #1

declare dso_local i32 @lua_yield(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
