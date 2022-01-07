; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_control.c_ngx_http_lua_ffi_exit.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_control.c_ngx_http_lua_ffi_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__*, %struct.TYPE_9__, i64 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_12__ = type { i32, i32, i32, i64, i64 }

@ngx_http_lua_module = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"no request ctx found\00", align 1
@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_HTTP_LUA_CONTEXT_REWRITE = common dso_local global i32 0, align 4
@NGX_HTTP_LUA_CONTEXT_ACCESS = common dso_local global i32 0, align 4
@NGX_HTTP_LUA_CONTEXT_CONTENT = common dso_local global i32 0, align 4
@NGX_HTTP_LUA_CONTEXT_TIMER = common dso_local global i32 0, align 4
@NGX_HTTP_LUA_CONTEXT_HEADER_FILTER = common dso_local global i32 0, align 4
@NGX_HTTP_LUA_CONTEXT_BALANCER = common dso_local global i32 0, align 4
@NGX_HTTP_LUA_CONTEXT_SSL_CERT = common dso_local global i32 0, align 4
@NGX_HTTP_LUA_CONTEXT_SSL_SESS_STORE = common dso_local global i32 0, align 4
@NGX_HTTP_LUA_CONTEXT_SSL_SESS_FETCH = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@NGX_HTTP_CLOSE = common dso_local global i32 0, align 4
@NGX_HTTP_REQUEST_TIME_OUT = common dso_local global i32 0, align 4
@NGX_HTTP_CLIENT_CLOSED_REQUEST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"attempt to abort with pending subrequests\00", align 1
@NGX_HTTP_SPECIAL_RESPONSE = common dso_local global i32 0, align 4
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [80 x i8] c"attempt to set status %d via ngx.exit after sending out the response status %ui\00", align 1
@NGX_HTTP_OK = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"lua exit with code %i\00", align 1
@NGX_DONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_http_lua_ffi_exit(%struct.TYPE_11__* %0, i32 %1, i32* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i64* %3, i64** %9, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %12 = load i32, i32* @ngx_http_lua_module, align 4
  %13 = call %struct.TYPE_12__* @ngx_http_get_module_ctx(%struct.TYPE_11__* %11, i32 %12)
  store %struct.TYPE_12__* %13, %struct.TYPE_12__** %10, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %15 = icmp eq %struct.TYPE_12__* %14, null
  br i1 %15, label %16, label %28

16:                                               ; preds = %4
  %17 = load i32*, i32** %8, align 8
  %18 = load i64*, i64** %9, align 8
  %19 = load i64, i64* %18, align 8
  %20 = call i32* @ngx_snprintf(i32* %17, i64 %19, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %21 = load i32*, i32** %8, align 8
  %22 = ptrtoint i32* %20 to i64
  %23 = ptrtoint i32* %21 to i64
  %24 = sub i64 %22, %23
  %25 = sdiv exact i64 %24, 4
  %26 = load i64*, i64** %9, align 8
  store i64 %25, i64* %26, align 8
  %27 = load i32, i32* @NGX_ERROR, align 4
  store i32 %27, i32* %5, align 4
  br label %178

28:                                               ; preds = %4
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %30 = load i32, i32* @NGX_HTTP_LUA_CONTEXT_REWRITE, align 4
  %31 = load i32, i32* @NGX_HTTP_LUA_CONTEXT_ACCESS, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @NGX_HTTP_LUA_CONTEXT_CONTENT, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @NGX_HTTP_LUA_CONTEXT_TIMER, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @NGX_HTTP_LUA_CONTEXT_HEADER_FILTER, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @NGX_HTTP_LUA_CONTEXT_BALANCER, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @NGX_HTTP_LUA_CONTEXT_SSL_CERT, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @NGX_HTTP_LUA_CONTEXT_SSL_SESS_STORE, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @NGX_HTTP_LUA_CONTEXT_SSL_SESS_FETCH, align 4
  %46 = or i32 %44, %45
  %47 = load i32*, i32** %8, align 8
  %48 = load i64*, i64** %9, align 8
  %49 = call i64 @ngx_http_lua_ffi_check_context(%struct.TYPE_12__* %29, i32 %46, i32* %47, i64* %48)
  %50 = load i64, i64* @NGX_OK, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %28
  %53 = load i32, i32* @NGX_ERROR, align 4
  store i32 %53, i32* %5, align 4
  br label %178

54:                                               ; preds = %28
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @NGX_HTTP_LUA_CONTEXT_SSL_CERT, align 4
  %59 = load i32, i32* @NGX_HTTP_LUA_CONTEXT_SSL_SESS_STORE, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @NGX_HTTP_LUA_CONTEXT_SSL_SESS_FETCH, align 4
  %62 = or i32 %60, %61
  %63 = and i32 %57, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %54
  %66 = load i32, i32* @NGX_ERROR, align 4
  store i32 %66, i32* %5, align 4
  br label %178

67:                                               ; preds = %54
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 4
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %100

72:                                               ; preds = %67
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @NGX_ERROR, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %100

76:                                               ; preds = %72
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* @NGX_HTTP_CLOSE, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %100

80:                                               ; preds = %76
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @NGX_HTTP_REQUEST_TIME_OUT, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %84, label %100

84:                                               ; preds = %80
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* @NGX_HTTP_CLIENT_CLOSED_REQUEST, align 4
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %88, label %100

88:                                               ; preds = %84
  %89 = load i32*, i32** %8, align 8
  %90 = load i64*, i64** %9, align 8
  %91 = load i64, i64* %90, align 8
  %92 = call i32* @ngx_snprintf(i32* %89, i64 %91, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %93 = load i32*, i32** %8, align 8
  %94 = ptrtoint i32* %92 to i64
  %95 = ptrtoint i32* %93 to i64
  %96 = sub i64 %94, %95
  %97 = sdiv exact i64 %96, 4
  %98 = load i64*, i64** %9, align 8
  store i64 %97, i64* %98, align 8
  %99 = load i32, i32* @NGX_ERROR, align 4
  store i32 %99, i32* %5, align 4
  br label %178

100:                                              ; preds = %84, %80, %76, %72, %67
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %110, label %105

105:                                              ; preds = %100
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %149

110:                                              ; preds = %105, %100
  %111 = load i32, i32* %7, align 4
  %112 = load i32, i32* @NGX_HTTP_SPECIAL_RESPONSE, align 4
  %113 = icmp sge i32 %111, %112
  br i1 %113, label %114, label %149

114:                                              ; preds = %110
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* @NGX_HTTP_REQUEST_TIME_OUT, align 4
  %117 = icmp ne i32 %115, %116
  br i1 %117, label %118, label %149

118:                                              ; preds = %114
  %119 = load i32, i32* %7, align 4
  %120 = load i32, i32* @NGX_HTTP_CLIENT_CLOSED_REQUEST, align 4
  %121 = icmp ne i32 %119, %120
  br i1 %121, label %122, label %149

122:                                              ; preds = %118
  %123 = load i32, i32* %7, align 4
  %124 = load i32, i32* @NGX_HTTP_CLOSE, align 4
  %125 = icmp ne i32 %123, %124
  br i1 %125, label %126, label %149

126:                                              ; preds = %122
  %127 = load i32, i32* %7, align 4
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = trunc i64 %131 to i32
  %133 = icmp ne i32 %127, %132
  br i1 %133, label %134, label %147

134:                                              ; preds = %126
  %135 = load i32, i32* @NGX_LOG_ERR, align 4
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* %7, align 4
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = call i32 @ngx_log_error(i32 %135, i32 %140, i32 0, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.2, i64 0, i64 0), i32 %141, i64 %145)
  br label %147

147:                                              ; preds = %134, %126
  %148 = load i32, i32* @NGX_HTTP_OK, align 4
  store i32 %148, i32* %7, align 4
  br label %149

149:                                              ; preds = %147, %122, %118, %114, %110, %105
  %150 = load i32, i32* %7, align 4
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 1
  store i32 %150, i32* %152, align 4
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 2
  store i32 1, i32* %154, align 8
  %155 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 0
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @ngx_log_debug1(i32 %155, i32 %160, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %163)
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* @NGX_HTTP_LUA_CONTEXT_HEADER_FILTER, align 4
  %169 = load i32, i32* @NGX_HTTP_LUA_CONTEXT_BALANCER, align 4
  %170 = or i32 %168, %169
  %171 = and i32 %167, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %149
  %174 = load i32, i32* @NGX_DONE, align 4
  store i32 %174, i32* %5, align 4
  br label %178

175:                                              ; preds = %149
  %176 = load i64, i64* @NGX_OK, align 8
  %177 = trunc i64 %176 to i32
  store i32 %177, i32* %5, align 4
  br label %178

178:                                              ; preds = %175, %173, %88, %65, %52, %16
  %179 = load i32, i32* %5, align 4
  ret i32 %179
}

declare dso_local %struct.TYPE_12__* @ngx_http_get_module_ctx(%struct.TYPE_11__*, i32) #1

declare dso_local i32* @ngx_snprintf(i32*, i64, i8*) #1

declare dso_local i64 @ngx_http_lua_ffi_check_context(%struct.TYPE_12__*, i32, i32*, i64*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i32, i64) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
