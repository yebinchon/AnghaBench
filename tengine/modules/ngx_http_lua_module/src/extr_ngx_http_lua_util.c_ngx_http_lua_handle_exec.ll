; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_util.c_ngx_http_lua_handle_exec.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_util.c_ngx_http_lua_handle_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i64, %struct.TYPE_22__*, i8*, i32, %struct.TYPE_21__*, i64 }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_24__ = type { i32, %struct.TYPE_25__, %struct.TYPE_26__, %struct.TYPE_20__* }
%struct.TYPE_25__ = type { i64 }
%struct.TYPE_26__ = type { i8*, i64 }
%struct.TYPE_20__ = type { i32, i32 }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"lua thread initiated internal redirect to %V\00", align 1
@NGX_HTTP_LUA_CO_DEAD = common dso_local global i32 0, align 4
@ngx_http_lua_module = common dso_local global i32 0, align 4
@NGX_LOG_WARN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"query strings %V ignored when exec'ing named location %V\00", align 1
@ngx_http_request_empty_handler = common dso_local global i8* null, align 8
@ngx_http_lua_rd_check_broken_connection = common dso_local global i64 0, align 8
@ngx_http_block_reading = common dso_local global i8* null, align 8
@ngx_http_max_module = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_HTTP_SPECIAL_RESPONSE = common dso_local global i64 0, align 8
@NGX_DONE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"internal redirect to %.*s\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"internal redirect returned %d when in content phase? %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.TYPE_23__*, %struct.TYPE_24__*)* @ngx_http_lua_handle_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_lua_handle_exec(i32* %0, %struct.TYPE_23__* %1, %struct.TYPE_24__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %6, align 8
  store %struct.TYPE_24__* %2, %struct.TYPE_24__** %7, align 8
  %9 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %10 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %10, i32 0, i32 4
  %12 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %15, i32 0, i32 2
  %17 = call i32 @ngx_log_debug1(i32 %9, i32 %14, i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), %struct.TYPE_26__* %16)
  %18 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %18, i32 0, i32 3
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %21 = call i32 @ngx_http_lua_cleanup_pending_operation(%struct.TYPE_20__* %20)
  %22 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %23 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %23, i32 0, i32 3
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ngx_http_lua_probe_coroutine_done(%struct.TYPE_23__* %22, i32 %27, i32 1)
  %29 = load i32, i32* @NGX_HTTP_LUA_CO_DEAD, align 4
  %30 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %30, i32 0, i32 3
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i32 0, i32 0
  store i32 %29, i32* %33, align 4
  %34 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %34, i32 0, i32 5
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %3
  %39 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %40 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %41 = load i32, i32* @ngx_http_lua_module, align 4
  %42 = call i32 @ngx_http_set_ctx(%struct.TYPE_23__* %39, %struct.TYPE_24__* %40, i32 %41)
  br label %43

43:                                               ; preds = %38, %3
  %44 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %45 = call i32 @ngx_http_lua_request_cleanup(%struct.TYPE_24__* %44, i32 1)
  %46 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 0
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 64
  br i1 %53, label %54, label %110

54:                                               ; preds = %43
  %55 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp sgt i64 %58, 0
  br i1 %59, label %60, label %72

60:                                               ; preds = %54
  %61 = load i32, i32* @NGX_LOG_WARN, align 4
  %62 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %62, i32 0, i32 4
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %69, i32 0, i32 2
  %71 = call i32 @ngx_log_error(i32 %61, i32 %66, i32 0, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_25__* %68, %struct.TYPE_26__* %70)
  br label %72

72:                                               ; preds = %60, %54
  %73 = load i8*, i8** @ngx_http_request_empty_handler, align 8
  %74 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %74, i32 0, i32 2
  store i8* %73, i8** %75, align 8
  %76 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @ngx_http_lua_rd_check_broken_connection, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %86

81:                                               ; preds = %72
  %82 = load i8*, i8** @ngx_http_block_reading, align 8
  %83 = ptrtoint i8* %82 to i64
  %84 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %84, i32 0, i32 0
  store i64 %83, i64* %85, align 8
  br label %86

86:                                               ; preds = %81, %72
  %87 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @ngx_http_max_module, align 4
  %91 = sext i32 %90 to i64
  %92 = mul i64 8, %91
  %93 = trunc i64 %92 to i32
  %94 = call i32 @ngx_memzero(i32 %89, i32 %93)
  %95 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %96 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %96, i32 0, i32 2
  %98 = call i64 @ngx_http_named_location(%struct.TYPE_23__* %95, %struct.TYPE_26__* %97)
  store i64 %98, i64* %8, align 8
  %99 = load i64, i64* %8, align 8
  %100 = load i64, i64* @NGX_ERROR, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %106, label %102

102:                                              ; preds = %86
  %103 = load i64, i64* %8, align 8
  %104 = load i64, i64* @NGX_HTTP_SPECIAL_RESPONSE, align 8
  %105 = icmp sge i64 %103, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %102, %86
  %107 = load i64, i64* %8, align 8
  store i64 %107, i64* %4, align 8
  br label %158

108:                                              ; preds = %102
  %109 = load i64, i64* @NGX_DONE, align 8
  store i64 %109, i64* %4, align 8
  br label %158

110:                                              ; preds = %43
  %111 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = trunc i64 %114 to i32
  %116 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %117, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  %120 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %115, i8* %119)
  %121 = load i8*, i8** @ngx_http_request_empty_handler, align 8
  %122 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %122, i32 0, i32 2
  store i8* %121, i8** %123, align 8
  %124 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @ngx_http_lua_rd_check_broken_connection, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %134

129:                                              ; preds = %110
  %130 = load i8*, i8** @ngx_http_block_reading, align 8
  %131 = ptrtoint i8* %130 to i64
  %132 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %132, i32 0, i32 0
  store i64 %131, i64* %133, align 8
  br label %134

134:                                              ; preds = %129, %110
  %135 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %136 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %136, i32 0, i32 2
  %138 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %138, i32 0, i32 1
  %140 = call i64 @ngx_http_internal_redirect(%struct.TYPE_23__* %135, %struct.TYPE_26__* %137, %struct.TYPE_25__* %139)
  store i64 %140, i64* %8, align 8
  %141 = load i64, i64* %8, align 8
  %142 = trunc i64 %141 to i32
  %143 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i32 %142, i32 %145)
  %147 = load i64, i64* %8, align 8
  %148 = load i64, i64* @NGX_ERROR, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %154, label %150

150:                                              ; preds = %134
  %151 = load i64, i64* %8, align 8
  %152 = load i64, i64* @NGX_HTTP_SPECIAL_RESPONSE, align 8
  %153 = icmp sge i64 %151, %152
  br i1 %153, label %154, label %156

154:                                              ; preds = %150, %134
  %155 = load i64, i64* %8, align 8
  store i64 %155, i64* %4, align 8
  br label %158

156:                                              ; preds = %150
  %157 = load i64, i64* @NGX_DONE, align 8
  store i64 %157, i64* %4, align 8
  br label %158

158:                                              ; preds = %156, %154, %108, %106
  %159 = load i64, i64* %4, align 8
  ret i64 %159
}

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, %struct.TYPE_26__*) #1

declare dso_local i32 @ngx_http_lua_cleanup_pending_operation(%struct.TYPE_20__*) #1

declare dso_local i32 @ngx_http_lua_probe_coroutine_done(%struct.TYPE_23__*, i32, i32) #1

declare dso_local i32 @ngx_http_set_ctx(%struct.TYPE_23__*, %struct.TYPE_24__*, i32) #1

declare dso_local i32 @ngx_http_lua_request_cleanup(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, %struct.TYPE_25__*, %struct.TYPE_26__*) #1

declare dso_local i32 @ngx_memzero(i32, i32) #1

declare dso_local i64 @ngx_http_named_location(%struct.TYPE_23__*, %struct.TYPE_26__*) #1

declare dso_local i32 @dd(i8*, ...) #1

declare dso_local i64 @ngx_http_internal_redirect(%struct.TYPE_23__*, %struct.TYPE_26__*, %struct.TYPE_25__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
