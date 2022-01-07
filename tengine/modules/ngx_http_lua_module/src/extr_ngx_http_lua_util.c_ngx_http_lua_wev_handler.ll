; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_util.c_ngx_http_lua_wev_handler.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_util.c_ngx_http_lua_wev_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32, i32, i32, i32, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i64, i32, i64 }
%struct.TYPE_22__ = type { i64, i64, %struct.TYPE_21__*, i64 }
%struct.TYPE_21__ = type { i32 (%struct.TYPE_20__*, %struct.TYPE_21__*)* }
%struct.TYPE_23__ = type { i32, i32 }

@ngx_http_lua_module = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [81 x i8] c"lua run write event handler: timedout:%ud, ready:%ud, writing_raw_req_socket:%ud\00", align 1
@ngx_http_core_module = common dso_local global i32 0, align 4
@NGX_LOG_INFO = common dso_local global i32 0, align 4
@NGX_ETIMEDOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"client timed out\00", align 1
@NGX_OK = common dso_local global i64 0, align 8
@NGX_DONE = common dso_local global i64 0, align 8
@NGX_HTTP_LOWLEVEL_BUFFERED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"flush pending output returned %d, c->error: %d\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"ctx->flushing_coros: %d\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"useless lua write event handler\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ngx_http_lua_wev_handler(%struct.TYPE_20__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  %10 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  store %struct.TYPE_25__* %12, %struct.TYPE_25__** %6, align 8
  %13 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %13, i32 0, i32 4
  %15 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  store %struct.TYPE_24__* %15, %struct.TYPE_24__** %5, align 8
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %17 = load i32, i32* @ngx_http_lua_module, align 4
  %18 = call %struct.TYPE_22__* @ngx_http_get_module_ctx(%struct.TYPE_20__* %16, i32 %17)
  store %struct.TYPE_22__* %18, %struct.TYPE_22__** %7, align 8
  %19 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %20 = icmp eq %struct.TYPE_22__* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i64, i64* @NGX_ERROR, align 8
  store i64 %22, i64* %2, align 8
  br label %191

23:                                               ; preds = %1
  %24 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %25 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @ngx_log_debug3(i32 %24, i32 %27, i32 0, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0), i64 %30, i32 %33, i64 %36)
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @ngx_http_core_module, align 4
  %42 = call %struct.TYPE_23__* @ngx_http_get_module_loc_conf(i32 %40, i32 %41)
  store %struct.TYPE_23__* %42, %struct.TYPE_23__** %8, align 8
  %43 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %101

47:                                               ; preds = %23
  %48 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %101, label %52

52:                                               ; preds = %47
  %53 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %66, label %57

57:                                               ; preds = %52
  %58 = load i32, i32* @NGX_LOG_INFO, align 4
  %59 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @NGX_ETIMEDOUT, align 4
  %63 = call i32 @ngx_log_error(i32 %58, i32 %61, i32 %62, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %64 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %64, i32 0, i32 0
  store i32 1, i32* %65, align 8
  br label %162

66:                                               ; preds = %52
  %67 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %67, i32 0, i32 0
  store i64 0, i64* %68, align 8
  %69 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %69, i32 0, i32 2
  store i64 0, i64* %70, align 8
  %71 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %100, label %75

75:                                               ; preds = %66
  %76 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %77 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @ngx_add_timer(%struct.TYPE_24__* %76, i32 %79)
  %81 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %82 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @ngx_handle_write_event(%struct.TYPE_24__* %81, i32 %84)
  %86 = load i64, i64* @NGX_OK, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %99

88:                                               ; preds = %75
  %89 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %88
  %94 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %95 = load i64, i64* @NGX_ERROR, align 8
  %96 = call i32 @ngx_http_lua_finalize_request(%struct.TYPE_20__* %94, i64 %95)
  br label %97

97:                                               ; preds = %93, %88
  %98 = load i64, i64* @NGX_ERROR, align 8
  store i64 %98, i64* %2, align 8
  br label %191

99:                                               ; preds = %75
  br label %100

100:                                              ; preds = %99, %66
  br label %101

101:                                              ; preds = %100, %47, %23
  %102 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %112, label %106

106:                                              ; preds = %101
  %107 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %106
  br label %177

112:                                              ; preds = %106, %101
  %113 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %113, i32 0, i32 3
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %135

117:                                              ; preds = %112
  %118 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %118, i32 0, i32 3
  store i64 0, i64* %119, align 8
  %120 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %120, i32 0, i32 2
  %122 = load %struct.TYPE_21__*, %struct.TYPE_21__** %121, align 8
  store %struct.TYPE_21__* %122, %struct.TYPE_21__** %9, align 8
  %123 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %124 = icmp eq %struct.TYPE_21__* %123, null
  br i1 %124, label %125, label %127

125:                                              ; preds = %117
  %126 = load i64, i64* @NGX_ERROR, align 8
  store i64 %126, i64* %2, align 8
  br label %191

127:                                              ; preds = %117
  %128 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %128, i32 0, i32 0
  %130 = load i32 (%struct.TYPE_20__*, %struct.TYPE_21__*)*, i32 (%struct.TYPE_20__*, %struct.TYPE_21__*)** %129, align 8
  %131 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %132 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %133 = call i32 %130(%struct.TYPE_20__* %131, %struct.TYPE_21__* %132)
  %134 = load i64, i64* @NGX_DONE, align 8
  store i64 %134, i64* %2, align 8
  br label %191

135:                                              ; preds = %112
  %136 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @NGX_HTTP_LOWLEVEL_BUFFERED, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %161

142:                                              ; preds = %135
  %143 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %144 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %145 = call i64 @ngx_http_lua_flush_pending_output(%struct.TYPE_20__* %143, %struct.TYPE_22__* %144)
  store i64 %145, i64* %4, align 8
  %146 = load i64, i64* %4, align 8
  %147 = trunc i64 %146 to i32
  %148 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = call i32 (i8*, i32, ...) @dd(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %147, i32 %150)
  %152 = load i64, i64* %4, align 8
  %153 = load i64, i64* @NGX_ERROR, align 8
  %154 = icmp ne i64 %152, %153
  br i1 %154, label %155, label %160

155:                                              ; preds = %142
  %156 = load i64, i64* %4, align 8
  %157 = load i64, i64* @NGX_OK, align 8
  %158 = icmp ne i64 %156, %157
  br i1 %158, label %159, label %160

159:                                              ; preds = %155
  br label %177

160:                                              ; preds = %155, %142
  br label %161

161:                                              ; preds = %160, %135
  br label %162

162:                                              ; preds = %161, %57
  %163 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = trunc i64 %165 to i32
  %167 = call i32 (i8*, i32, ...) @dd(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %166)
  %168 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %169 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %162
  %173 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %174 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %175 = call i64 @ngx_http_lua_process_flushing_coroutines(%struct.TYPE_20__* %173, %struct.TYPE_22__* %174)
  store i64 %175, i64* %2, align 8
  br label %191

176:                                              ; preds = %162
  br label %177

177:                                              ; preds = %176, %159, %111
  %178 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %179 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = call i32 @ngx_log_debug0(i32 %178, i32 %181, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %183 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %184 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %189

187:                                              ; preds = %177
  %188 = load i64, i64* @NGX_OK, align 8
  store i64 %188, i64* %2, align 8
  br label %191

189:                                              ; preds = %177
  %190 = load i64, i64* @NGX_DONE, align 8
  store i64 %190, i64* %2, align 8
  br label %191

191:                                              ; preds = %189, %187, %172, %127, %125, %97, %21
  %192 = load i64, i64* %2, align 8
  ret i64 %192
}

declare dso_local %struct.TYPE_22__* @ngx_http_get_module_ctx(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @ngx_log_debug3(i32, i32, i32, i8*, i64, i32, i64) #1

declare dso_local %struct.TYPE_23__* @ngx_http_get_module_loc_conf(i32, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*) #1

declare dso_local i32 @ngx_add_timer(%struct.TYPE_24__*, i32) #1

declare dso_local i64 @ngx_handle_write_event(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @ngx_http_lua_finalize_request(%struct.TYPE_20__*, i64) #1

declare dso_local i64 @ngx_http_lua_flush_pending_output(%struct.TYPE_20__*, %struct.TYPE_22__*) #1

declare dso_local i32 @dd(i8*, i32, ...) #1

declare dso_local i64 @ngx_http_lua_process_flushing_coroutines(%struct.TYPE_20__*, %struct.TYPE_22__*) #1

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
