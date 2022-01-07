; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_control.c_ngx_http_lua_ngx_exit.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_control.c_ngx_http_lua_ngx_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__*, %struct.TYPE_9__, i64 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_12__ = type { i32, i64, i32, i64, i64 }

@.str = private unnamed_addr constant [23 x i8] c"expecting one argument\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"no request object found\00", align 1
@ngx_http_lua_module = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"no request ctx found\00", align 1
@NGX_HTTP_LUA_CONTEXT_REWRITE = common dso_local global i32 0, align 4
@NGX_HTTP_LUA_CONTEXT_ACCESS = common dso_local global i32 0, align 4
@NGX_HTTP_LUA_CONTEXT_CONTENT = common dso_local global i32 0, align 4
@NGX_HTTP_LUA_CONTEXT_TIMER = common dso_local global i32 0, align 4
@NGX_HTTP_LUA_CONTEXT_HEADER_FILTER = common dso_local global i32 0, align 4
@NGX_HTTP_LUA_CONTEXT_BALANCER = common dso_local global i32 0, align 4
@NGX_HTTP_LUA_CONTEXT_SSL_CERT = common dso_local global i32 0, align 4
@NGX_HTTP_LUA_CONTEXT_SSL_SESS_STORE = common dso_local global i32 0, align 4
@NGX_HTTP_LUA_CONTEXT_SSL_SESS_FETCH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"no SSL support\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_HTTP_CLOSE = common dso_local global i64 0, align 8
@NGX_HTTP_REQUEST_TIME_OUT = common dso_local global i64 0, align 8
@NGX_HTTP_CLIENT_CLOSED_REQUEST = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [42 x i8] c"attempt to abort with pending subrequests\00", align 1
@NGX_HTTP_SPECIAL_RESPONSE = common dso_local global i64 0, align 8
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [80 x i8] c"attempt to set status %i via ngx.exit after sending out the response status %ui\00", align 1
@NGX_HTTP_OK = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [22 x i8] c"setting exit code: %d\00", align 1
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [22 x i8] c"lua exit with code %i\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"calling yield\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ngx_http_lua_ngx_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_lua_ngx_exit(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call i32 @lua_gettop(i32* %7)
  %9 = icmp ne i32 %8, 1
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @luaL_error(i32* %11, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 %12, i32* %2, align 4
  br label %170

13:                                               ; preds = %1
  %14 = load i32*, i32** %3, align 8
  %15 = call %struct.TYPE_11__* @ngx_http_lua_get_req(i32* %14)
  store %struct.TYPE_11__* %15, %struct.TYPE_11__** %5, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %17 = icmp eq %struct.TYPE_11__* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @luaL_error(i32* %19, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  store i32 %20, i32* %2, align 4
  br label %170

21:                                               ; preds = %13
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %23 = load i32, i32* @ngx_http_lua_module, align 4
  %24 = call %struct.TYPE_12__* @ngx_http_get_module_ctx(%struct.TYPE_11__* %22, i32 %23)
  store %struct.TYPE_12__* %24, %struct.TYPE_12__** %6, align 8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %26 = icmp eq %struct.TYPE_12__* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @luaL_error(i32* %28, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  store i32 %29, i32* %2, align 4
  br label %170

30:                                               ; preds = %21
  %31 = load i32*, i32** %3, align 8
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %33 = load i32, i32* @NGX_HTTP_LUA_CONTEXT_REWRITE, align 4
  %34 = load i32, i32* @NGX_HTTP_LUA_CONTEXT_ACCESS, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @NGX_HTTP_LUA_CONTEXT_CONTENT, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @NGX_HTTP_LUA_CONTEXT_TIMER, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @NGX_HTTP_LUA_CONTEXT_HEADER_FILTER, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @NGX_HTTP_LUA_CONTEXT_BALANCER, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @NGX_HTTP_LUA_CONTEXT_SSL_CERT, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @NGX_HTTP_LUA_CONTEXT_SSL_SESS_STORE, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @NGX_HTTP_LUA_CONTEXT_SSL_SESS_FETCH, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @ngx_http_lua_check_context(i32* %31, %struct.TYPE_12__* %32, i32 %49)
  %51 = load i32*, i32** %3, align 8
  %52 = call i64 @luaL_checkinteger(i32* %51, i32 1)
  store i64 %52, i64* %4, align 8
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @NGX_HTTP_LUA_CONTEXT_SSL_CERT, align 4
  %57 = load i32, i32* @NGX_HTTP_LUA_CONTEXT_SSL_SESS_STORE, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @NGX_HTTP_LUA_CONTEXT_SSL_SESS_FETCH, align 4
  %60 = or i32 %58, %59
  %61 = and i32 %55, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %30
  %64 = load i32*, i32** %3, align 8
  %65 = call i32 @luaL_error(i32* %64, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  store i32 %65, i32* %2, align 4
  br label %170

66:                                               ; preds = %30
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 4
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %90

71:                                               ; preds = %66
  %72 = load i64, i64* %4, align 8
  %73 = load i64, i64* @NGX_ERROR, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %90

75:                                               ; preds = %71
  %76 = load i64, i64* %4, align 8
  %77 = load i64, i64* @NGX_HTTP_CLOSE, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %90

79:                                               ; preds = %75
  %80 = load i64, i64* %4, align 8
  %81 = load i64, i64* @NGX_HTTP_REQUEST_TIME_OUT, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %90

83:                                               ; preds = %79
  %84 = load i64, i64* %4, align 8
  %85 = load i64, i64* @NGX_HTTP_CLIENT_CLOSED_REQUEST, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %83
  %88 = load i32*, i32** %3, align 8
  %89 = call i32 @luaL_error(i32* %88, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  store i32 %89, i32* %2, align 4
  br label %170

90:                                               ; preds = %83, %79, %75, %71, %66
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %100, label %95

95:                                               ; preds = %90
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %138

100:                                              ; preds = %95, %90
  %101 = load i64, i64* %4, align 8
  %102 = load i64, i64* @NGX_HTTP_SPECIAL_RESPONSE, align 8
  %103 = icmp sge i64 %101, %102
  br i1 %103, label %104, label %138

104:                                              ; preds = %100
  %105 = load i64, i64* %4, align 8
  %106 = load i64, i64* @NGX_HTTP_REQUEST_TIME_OUT, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %108, label %138

108:                                              ; preds = %104
  %109 = load i64, i64* %4, align 8
  %110 = load i64, i64* @NGX_HTTP_CLIENT_CLOSED_REQUEST, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %112, label %138

112:                                              ; preds = %108
  %113 = load i64, i64* %4, align 8
  %114 = load i64, i64* @NGX_HTTP_CLOSE, align 8
  %115 = icmp ne i64 %113, %114
  br i1 %115, label %116, label %138

116:                                              ; preds = %112
  %117 = load i64, i64* %4, align 8
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %117, %121
  br i1 %122, label %123, label %136

123:                                              ; preds = %116
  %124 = load i32, i32* @NGX_LOG_ERR, align 4
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i64, i64* %4, align 8
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = call i32 @ngx_log_error(i32 %124, i32 %129, i32 0, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.5, i64 0, i64 0), i64 %130, i64 %134)
  br label %136

136:                                              ; preds = %123, %116
  %137 = load i64, i64* @NGX_HTTP_OK, align 8
  store i64 %137, i64* %4, align 8
  br label %138

138:                                              ; preds = %136, %112, %108, %104, %100, %95
  %139 = load i64, i64* %4, align 8
  %140 = trunc i64 %139 to i32
  %141 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %140)
  %142 = load i64, i64* %4, align 8
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 1
  store i64 %142, i64* %144, align 8
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 2
  store i32 1, i32* %146, align 8
  %147 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = call i32 @ngx_log_debug1(i32 %147, i32 %152, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i64 %155)
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* @NGX_HTTP_LUA_CONTEXT_HEADER_FILTER, align 4
  %161 = load i32, i32* @NGX_HTTP_LUA_CONTEXT_BALANCER, align 4
  %162 = or i32 %160, %161
  %163 = and i32 %159, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %138
  store i32 0, i32* %2, align 4
  br label %170

166:                                              ; preds = %138
  %167 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  %168 = load i32*, i32** %3, align 8
  %169 = call i32 @lua_yield(i32* %168, i32 0)
  store i32 %169, i32* %2, align 4
  br label %170

170:                                              ; preds = %166, %165, %87, %63, %27, %18, %10
  %171 = load i32, i32* %2, align 4
  ret i32 %171
}

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local %struct.TYPE_11__* @ngx_http_lua_get_req(i32*) #1

declare dso_local %struct.TYPE_12__* @ngx_http_get_module_ctx(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @ngx_http_lua_check_context(i32*, %struct.TYPE_12__*, i32) #1

declare dso_local i64 @luaL_checkinteger(i32*, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i64, i64) #1

declare dso_local i32 @dd(i8*, ...) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i64) #1

declare dso_local i32 @lua_yield(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
