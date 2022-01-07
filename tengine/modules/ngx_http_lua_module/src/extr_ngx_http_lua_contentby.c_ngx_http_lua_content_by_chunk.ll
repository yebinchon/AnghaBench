; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_contentby.c_ngx_http_lua_content_by_chunk.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_contentby.c_ngx_http_lua_content_by_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i32, %struct.TYPE_27__*, i32 }
%struct.TYPE_27__ = type { %struct.TYPE_32__*, i32 }
%struct.TYPE_32__ = type { i32 }
%struct.TYPE_30__ = type { i32, i32, i32*, %struct.TYPE_26__*, %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i32, i32, i32* }
%struct.TYPE_31__ = type { i32, %struct.TYPE_30__* }
%struct.TYPE_29__ = type { i64 }

@.str = private unnamed_addr constant [17 x i8] c"content by chunk\00", align 1
@ngx_http_lua_module = common dso_local global i32 0, align 4
@NGX_HTTP_INTERNAL_SERVER_ERROR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"reset ctx\00", align 1
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"lua: failed to create new coroutine to handle request\00", align 1
@ngx_http_lua_request_cleanup_handler = common dso_local global i32 0, align 4
@NGX_HTTP_LUA_CONTEXT_CONTENT = common dso_local global i32 0, align 4
@ngx_http_lua_rd_check_broken_connection = common dso_local global i32 0, align 4
@NGX_READ_EVENT = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@ngx_http_block_reading = common dso_local global i32 0, align 4
@NGX_AGAIN = common dso_local global i64 0, align 8
@NGX_DONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ngx_http_lua_content_by_chunk(i32* %0, %struct.TYPE_28__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_28__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_32__*, align 8
  %10 = alloca %struct.TYPE_30__*, align 8
  %11 = alloca %struct.TYPE_31__*, align 8
  %12 = alloca %struct.TYPE_29__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_28__* %1, %struct.TYPE_28__** %5, align 8
  %13 = call i32 @dd(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %15 = load i32, i32* @ngx_http_lua_module, align 4
  %16 = call %struct.TYPE_30__* @ngx_http_get_module_ctx(%struct.TYPE_28__* %14, i32 %15)
  store %struct.TYPE_30__* %16, %struct.TYPE_30__** %10, align 8
  %17 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %18 = icmp eq %struct.TYPE_30__* %17, null
  br i1 %18, label %19, label %27

19:                                               ; preds = %2
  %20 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %21 = call %struct.TYPE_30__* @ngx_http_lua_create_ctx(%struct.TYPE_28__* %20)
  store %struct.TYPE_30__* %21, %struct.TYPE_30__** %10, align 8
  %22 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %23 = icmp eq %struct.TYPE_30__* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  store i64 %25, i64* %3, align 8
  br label %169

26:                                               ; preds = %19
  br label %33

27:                                               ; preds = %2
  %28 = call i32 @dd(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %29 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %30 = load i32*, i32** %4, align 8
  %31 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %32 = call i32 @ngx_http_lua_reset_ctx(%struct.TYPE_28__* %29, i32* %30, %struct.TYPE_30__* %31)
  br label %33

33:                                               ; preds = %27, %26
  %34 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  %36 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %37 = load i32*, i32** %4, align 8
  %38 = call i32* @ngx_http_lua_new_thread(%struct.TYPE_28__* %36, i32* %37, i32* %6)
  store i32* %38, i32** %8, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %50

41:                                               ; preds = %33
  %42 = load i32, i32* @NGX_LOG_ERR, align 4
  %43 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_27__*, %struct.TYPE_27__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @ngx_log_error(i32 %42, i32 %47, i32 0, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  %49 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  store i64 %49, i64* %3, align 8
  br label %169

50:                                               ; preds = %33
  %51 = load i32*, i32** %4, align 8
  %52 = load i32*, i32** %8, align 8
  %53 = call i32 @lua_xmove(i32* %51, i32* %52, i32 1)
  %54 = load i32*, i32** %8, align 8
  %55 = call i32 @ngx_http_lua_get_globals_table(i32* %54)
  %56 = load i32*, i32** %8, align 8
  %57 = call i32 @lua_setfenv(i32* %56, i32 -2)
  %58 = load i32*, i32** %8, align 8
  %59 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %60 = call i32 @ngx_http_lua_set_req(i32* %58, %struct.TYPE_28__* %59)
  %61 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %61, i32 0, i32 4
  %63 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %63, i32 0, i32 3
  store %struct.TYPE_26__* %62, %struct.TYPE_26__** %64, align 8
  %65 = load i32*, i32** %8, align 8
  %66 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %66, i32 0, i32 3
  %68 = load %struct.TYPE_26__*, %struct.TYPE_26__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %68, i32 0, i32 2
  store i32* %65, i32** %69, align 8
  %70 = load i32, i32* %6, align 4
  %71 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %71, i32 0, i32 3
  %73 = load %struct.TYPE_26__*, %struct.TYPE_26__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %73, i32 0, i32 0
  store i32 %70, i32* %74, align 8
  %75 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = icmp eq i32* %77, null
  br i1 %78, label %79, label %97

79:                                               ; preds = %50
  %80 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %81 = call %struct.TYPE_31__* @ngx_http_cleanup_add(%struct.TYPE_28__* %80, i32 0)
  store %struct.TYPE_31__* %81, %struct.TYPE_31__** %11, align 8
  %82 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %83 = icmp eq %struct.TYPE_31__* %82, null
  br i1 %83, label %84, label %86

84:                                               ; preds = %79
  %85 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  store i64 %85, i64* %3, align 8
  br label %169

86:                                               ; preds = %79
  %87 = load i32, i32* @ngx_http_lua_request_cleanup_handler, align 4
  %88 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  %90 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %91 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %92 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %91, i32 0, i32 1
  store %struct.TYPE_30__* %90, %struct.TYPE_30__** %92, align 8
  %93 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %95, i32 0, i32 2
  store i32* %94, i32** %96, align 8
  br label %97

97:                                               ; preds = %86, %50
  %98 = load i32, i32* @NGX_HTTP_LUA_CONTEXT_CONTENT, align 4
  %99 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  %101 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %102 = load i32, i32* @ngx_http_lua_module, align 4
  %103 = call %struct.TYPE_29__* @ngx_http_get_module_loc_conf(%struct.TYPE_28__* %101, i32 %102)
  store %struct.TYPE_29__* %103, %struct.TYPE_29__** %12, align 8
  %104 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %105 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %131

108:                                              ; preds = %97
  %109 = load i32, i32* @ngx_http_lua_rd_check_broken_connection, align 4
  %110 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 8
  %112 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_27__*, %struct.TYPE_27__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_32__*, %struct.TYPE_32__** %115, align 8
  store %struct.TYPE_32__* %116, %struct.TYPE_32__** %9, align 8
  %117 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %130, label %121

121:                                              ; preds = %108
  %122 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %123 = load i32, i32* @NGX_READ_EVENT, align 4
  %124 = call i64 @ngx_add_event(%struct.TYPE_32__* %122, i32 %123, i32 0)
  %125 = load i64, i64* @NGX_OK, align 8
  %126 = icmp ne i64 %124, %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %121
  %128 = load i64, i64* @NGX_ERROR, align 8
  store i64 %128, i64* %3, align 8
  br label %169

129:                                              ; preds = %121
  br label %130

130:                                              ; preds = %129, %108
  br label %135

131:                                              ; preds = %97
  %132 = load i32, i32* @ngx_http_block_reading, align 4
  %133 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 8
  br label %135

135:                                              ; preds = %131, %130
  %136 = load i32*, i32** %4, align 8
  %137 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %138 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %139 = call i64 @ngx_http_lua_run_thread(i32* %136, %struct.TYPE_28__* %137, %struct.TYPE_30__* %138, i32 0)
  store i64 %139, i64* %7, align 8
  %140 = load i64, i64* %7, align 8
  %141 = load i64, i64* @NGX_ERROR, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %147, label %143

143:                                              ; preds = %135
  %144 = load i64, i64* %7, align 8
  %145 = load i64, i64* @NGX_OK, align 8
  %146 = icmp sge i64 %144, %145
  br i1 %146, label %147, label %149

147:                                              ; preds = %143, %135
  %148 = load i64, i64* %7, align 8
  store i64 %148, i64* %3, align 8
  br label %169

149:                                              ; preds = %143
  %150 = load i64, i64* %7, align 8
  %151 = load i64, i64* @NGX_AGAIN, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %158

153:                                              ; preds = %149
  %154 = load i32*, i32** %4, align 8
  %155 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %156 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %157 = call i64 @ngx_http_lua_content_run_posted_threads(i32* %154, %struct.TYPE_28__* %155, %struct.TYPE_30__* %156, i32 0)
  store i64 %157, i64* %3, align 8
  br label %169

158:                                              ; preds = %149
  %159 = load i64, i64* %7, align 8
  %160 = load i64, i64* @NGX_DONE, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %167

162:                                              ; preds = %158
  %163 = load i32*, i32** %4, align 8
  %164 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %165 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %166 = call i64 @ngx_http_lua_content_run_posted_threads(i32* %163, %struct.TYPE_28__* %164, %struct.TYPE_30__* %165, i32 1)
  store i64 %166, i64* %3, align 8
  br label %169

167:                                              ; preds = %158
  %168 = load i64, i64* @NGX_OK, align 8
  store i64 %168, i64* %3, align 8
  br label %169

169:                                              ; preds = %167, %162, %153, %147, %127, %84, %41, %24
  %170 = load i64, i64* %3, align 8
  ret i64 %170
}

declare dso_local i32 @dd(i8*) #1

declare dso_local %struct.TYPE_30__* @ngx_http_get_module_ctx(%struct.TYPE_28__*, i32) #1

declare dso_local %struct.TYPE_30__* @ngx_http_lua_create_ctx(%struct.TYPE_28__*) #1

declare dso_local i32 @ngx_http_lua_reset_ctx(%struct.TYPE_28__*, i32*, %struct.TYPE_30__*) #1

declare dso_local i32* @ngx_http_lua_new_thread(%struct.TYPE_28__*, i32*, i32*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*) #1

declare dso_local i32 @lua_xmove(i32*, i32*, i32) #1

declare dso_local i32 @ngx_http_lua_get_globals_table(i32*) #1

declare dso_local i32 @lua_setfenv(i32*, i32) #1

declare dso_local i32 @ngx_http_lua_set_req(i32*, %struct.TYPE_28__*) #1

declare dso_local %struct.TYPE_31__* @ngx_http_cleanup_add(%struct.TYPE_28__*, i32) #1

declare dso_local %struct.TYPE_29__* @ngx_http_get_module_loc_conf(%struct.TYPE_28__*, i32) #1

declare dso_local i64 @ngx_add_event(%struct.TYPE_32__*, i32, i32) #1

declare dso_local i64 @ngx_http_lua_run_thread(i32*, %struct.TYPE_28__*, %struct.TYPE_30__*, i32) #1

declare dso_local i64 @ngx_http_lua_content_run_posted_threads(i32*, %struct.TYPE_28__*, %struct.TYPE_30__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
