; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_socket_tcp.c_ngx_http_lua_socket_tcp_receive_helper.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_socket_tcp.c_ngx_http_lua_socket_tcp_receive_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, %struct.TYPE_18__*, i32, i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_20__ = type { i32, {}*, i64, i64, %struct.TYPE_20__*, %struct.TYPE_20__*, i32, i32, i64, i32, %struct.TYPE_20__*, %struct.TYPE_20__*, i32*, i32, %struct.TYPE_17__*, %struct.TYPE_20__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_21__ = type { %struct.TYPE_20__*, i64, %struct.TYPE_20__*, i32 }

@ngx_http_lua_module = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"no memory\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"tcp receive: buf_in: %p, bufs_in: %p\00", align 1
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"lua tcp socket read timeout: %M\00", align 1
@ngx_http_lua_req_socket_rev_handler = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [16 x i8] c"read failed: %d\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"tcp receive retval returned: %d\00", align 1
@NGX_OK = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [44 x i8] c"lua tcp socket receive done in a single run\00", align 1
@ngx_http_lua_socket_read_handler = common dso_local global i32 0, align 4
@ngx_http_lua_coctx_cleanup = common dso_local global i32 0, align 4
@ngx_http_lua_content_wev_handler = common dso_local global i32 0, align 4
@ngx_http_core_run_phases = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"setting data to %p, coctx:%p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, %struct.TYPE_20__*, i32*)* @ngx_http_lua_socket_tcp_receive_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_lua_socket_tcp_receive_helper(%struct.TYPE_19__* %0, %struct.TYPE_20__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %5, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %12 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 15
  store %struct.TYPE_20__* %11, %struct.TYPE_20__** %13, align 8
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %15 = load i32, i32* @ngx_http_lua_module, align 4
  %16 = call %struct.TYPE_21__* @ngx_http_get_module_ctx(%struct.TYPE_19__* %14, i32 %15)
  store %struct.TYPE_21__* %16, %struct.TYPE_21__** %9, align 8
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 10
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %20 = icmp eq %struct.TYPE_20__* %19, null
  br i1 %20, label %21, label %61

21:                                               ; preds = %3
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %30, i32 0, i32 3
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i32 0, i32 14
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call %struct.TYPE_20__* @ngx_http_lua_chain_get_free_buf(i32 %26, i32 %29, i32* %31, i32 %36)
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 10
  store %struct.TYPE_20__* %37, %struct.TYPE_20__** %39, align 8
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %40, i32 0, i32 10
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %41, align 8
  %43 = icmp eq %struct.TYPE_20__* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %21
  %45 = load i32*, i32** %7, align 8
  %46 = call i32 @luaL_error(i32* %45, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 %46, i32* %4, align 4
  br label %190

47:                                               ; preds = %21
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 0, i32 10
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %49, align 8
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 11
  store %struct.TYPE_20__* %50, %struct.TYPE_20__** %52, align 8
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 11
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i32 0, i32 12
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %59, i32 0, i32 13
  store i32 %58, i32* %60, align 8
  br label %61

61:                                               ; preds = %47, %3
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %62, i32 0, i32 11
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %63, align 8
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %65, i32 0, i32 10
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %66, align 8
  %68 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_20__* %64, %struct.TYPE_20__* %67)
  %69 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %75, i32 0, i32 9
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @ngx_log_debug1(i32 %69, i32 %74, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %77)
  %79 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %88, label %83

83:                                               ; preds = %61
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %83, %61
  %89 = load i32, i32* @ngx_http_lua_req_socket_rev_handler, align 4
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %90, i32 0, i32 2
  store i32 %89, i32* %91, align 8
  br label %92

92:                                               ; preds = %88, %83
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %93, i32 0, i32 0
  store i32 0, i32* %94, align 8
  %95 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %95, i32 0, i32 4
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %96, align 8
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %99 = call i64 @ngx_http_lua_socket_tcp_read(%struct.TYPE_19__* %97, %struct.TYPE_20__* %98)
  store i64 %99, i64* %8, align 8
  %100 = load i64, i64* %8, align 8
  %101 = load i64, i64* @NGX_ERROR, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %119

103:                                              ; preds = %92
  %104 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %104, i32 0, i32 8
  %106 = load i64, i64* %105, align 8
  %107 = trunc i64 %106 to i32
  %108 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %107)
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %110 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %111 = load i32*, i32** %7, align 8
  %112 = call i32 @ngx_http_lua_socket_tcp_receive_retval_handler(%struct.TYPE_19__* %109, %struct.TYPE_20__* %110, i32* %111)
  %113 = sext i32 %112 to i64
  store i64 %113, i64* %8, align 8
  %114 = load i64, i64* %8, align 8
  %115 = trunc i64 %114 to i32
  %116 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %115)
  %117 = load i64, i64* %8, align 8
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %4, align 4
  br label %190

119:                                              ; preds = %92
  %120 = load i64, i64* %8, align 8
  %121 = load i64, i64* @NGX_OK, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %135

123:                                              ; preds = %119
  %124 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %125 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @ngx_log_debug0(i32 %124, i32 %129, i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0))
  %131 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %132 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %133 = load i32*, i32** %7, align 8
  %134 = call i32 @ngx_http_lua_socket_tcp_receive_retval_handler(%struct.TYPE_19__* %131, %struct.TYPE_20__* %132, i32* %133)
  store i32 %134, i32* %4, align 4
  br label %190

135:                                              ; preds = %119
  %136 = load i32, i32* @ngx_http_lua_socket_read_handler, align 4
  %137 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %137, i32 0, i32 7
  store i32 %136, i32* %138, align 4
  %139 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %140 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %139, i32 0, i32 2
  %141 = load %struct.TYPE_20__*, %struct.TYPE_20__** %140, align 8
  store %struct.TYPE_20__* %141, %struct.TYPE_20__** %10, align 8
  %142 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %143 = call i32 @ngx_http_lua_cleanup_pending_operation(%struct.TYPE_20__* %142)
  %144 = load i32, i32* @ngx_http_lua_coctx_cleanup, align 4
  %145 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %146 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %145, i32 0, i32 6
  store i32 %144, i32* %146, align 8
  %147 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %148 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %149 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %148, i32 0, i32 5
  store %struct.TYPE_20__* %147, %struct.TYPE_20__** %149, align 8
  %150 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %151 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %135
  %155 = load i32, i32* @ngx_http_lua_content_wev_handler, align 4
  %156 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %156, i32 0, i32 0
  store i32 %155, i32* %157, align 8
  br label %162

158:                                              ; preds = %135
  %159 = load i32, i32* @ngx_http_core_run_phases, align 4
  %160 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %160, i32 0, i32 0
  store i32 %159, i32* %161, align 8
  br label %162

162:                                              ; preds = %158, %154
  %163 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %164 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %164, i32 0, i32 4
  store %struct.TYPE_20__* %163, %struct.TYPE_20__** %165, align 8
  %166 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %166, i32 0, i32 0
  store i32 1, i32* %167, align 8
  %168 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %168, i32 0, i32 1
  %170 = bitcast {}** %169 to i32 (%struct.TYPE_19__*, %struct.TYPE_20__*, i32*)**
  store i32 (%struct.TYPE_19__*, %struct.TYPE_20__*, i32*)* @ngx_http_lua_socket_tcp_receive_retval_handler, i32 (%struct.TYPE_19__*, %struct.TYPE_20__*, i32*)** %170, align 8
  %171 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %172 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %173 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_20__* %171, %struct.TYPE_20__* %172)
  %174 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %174, i32 0, i32 3
  %176 = load i64, i64* %175, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %183, label %178

178:                                              ; preds = %162
  %179 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %179, i32 0, i32 2
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %187

183:                                              ; preds = %178, %162
  %184 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %185 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %186 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %185, i32 0, i32 0
  store %struct.TYPE_20__* %184, %struct.TYPE_20__** %186, align 8
  br label %187

187:                                              ; preds = %183, %178
  %188 = load i32*, i32** %7, align 8
  %189 = call i32 @lua_yield(i32* %188, i32 0)
  store i32 %189, i32* %4, align 4
  br label %190

190:                                              ; preds = %187, %123, %103, %44
  %191 = load i32, i32* %4, align 4
  ret i32 %191
}

declare dso_local %struct.TYPE_21__* @ngx_http_get_module_ctx(%struct.TYPE_19__*, i32) #1

declare dso_local %struct.TYPE_20__* @ngx_http_lua_chain_get_free_buf(i32, i32, i32*, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i32 @dd(i8*, ...) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i32) #1

declare dso_local i64 @ngx_http_lua_socket_tcp_read(%struct.TYPE_19__*, %struct.TYPE_20__*) #1

declare dso_local i32 @ngx_http_lua_socket_tcp_receive_retval_handler(%struct.TYPE_19__*, %struct.TYPE_20__*, i32*) #1

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i32 @ngx_http_lua_cleanup_pending_operation(%struct.TYPE_20__*) #1

declare dso_local i32 @lua_yield(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
