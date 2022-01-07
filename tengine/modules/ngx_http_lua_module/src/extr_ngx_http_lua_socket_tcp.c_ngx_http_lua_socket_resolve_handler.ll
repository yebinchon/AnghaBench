; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_socket_tcp.c_ngx_http_lua_socket_resolve_handler.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_socket_tcp.c_ngx_http_lua_socket_resolve_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { i32, %struct.TYPE_24__*, i64, %struct.TYPE_28__, %struct.TYPE_32__* }
%struct.TYPE_24__ = type { i32, %struct.sockaddr* }
%struct.sockaddr = type { i32 }
%struct.TYPE_28__ = type { i32, i64 }
%struct.TYPE_32__ = type { i32, i8*, %struct.TYPE_27__*, %struct.TYPE_30__*, %struct.TYPE_31__* }
%struct.TYPE_27__ = type { i32*, i32* }
%struct.TYPE_30__ = type { i32, i32, i32*, %struct.TYPE_26__, %struct.sockaddr*, %struct.TYPE_24__*, i32 }
%struct.TYPE_26__ = type { i64, i32* }
%struct.TYPE_31__ = type { i32 (%struct.TYPE_31__*)*, i32, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_33__ = type { i32, %struct.TYPE_27__* }
%struct.sockaddr_in = type { %struct.TYPE_25__, i8*, i32 }
%struct.TYPE_25__ = type { %struct.TYPE_24__ }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"lua tcp socket resolve handler\00", align 1
@ngx_http_lua_module = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"lua tcp socket resolver error: %s (connect waiting: %d)\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c" could not be resolved (%d: %s)\00", align 1
@ngx_http_lua_socket_conn_error_retval_handler = common dso_local global i8* null, align 8
@NGX_HTTP_LUA_SOCKET_FT_RESOLVER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"selected addr index: %d\00", align 1
@NGX_INET_ADDRSTRLEN = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c":%d\00", align 1
@ngx_http_lua_socket_tcp_conn_resume = common dso_local global i32 0, align 4
@NGX_HTTP_LUA_SOCKET_FT_NOMEM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"run posted requests\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"no memory\00", align 1
@NGX_SOCKADDR_STRLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_29__*)* @ngx_http_lua_socket_resolve_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_http_lua_socket_resolve_handler(%struct.TYPE_29__* %0) #0 {
  %2 = alloca %struct.TYPE_29__*, align 8
  %3 = alloca %struct.TYPE_31__*, align 8
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca %struct.TYPE_30__*, align 8
  %6 = alloca %struct.TYPE_33__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_32__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.sockaddr_in*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %2, align 8
  %14 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %14, i32 0, i32 4
  %16 = load %struct.TYPE_32__*, %struct.TYPE_32__** %15, align 8
  store %struct.TYPE_32__* %16, %struct.TYPE_32__** %8, align 8
  %17 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %17, i32 0, i32 4
  %19 = load %struct.TYPE_31__*, %struct.TYPE_31__** %18, align 8
  store %struct.TYPE_31__* %19, %struct.TYPE_31__** %3, align 8
  %20 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  store %struct.TYPE_23__* %22, %struct.TYPE_23__** %4, align 8
  %23 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %23, i32 0, i32 3
  %25 = load %struct.TYPE_30__*, %struct.TYPE_30__** %24, align 8
  store %struct.TYPE_30__* %25, %struct.TYPE_30__** %5, align 8
  %26 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %27 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ngx_log_debug0(i32 %26, i32 %29, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %32 = load i32, i32* @ngx_http_lua_module, align 4
  %33 = call %struct.TYPE_33__* @ngx_http_get_module_ctx(%struct.TYPE_31__* %31, i32 %32)
  store %struct.TYPE_33__* %33, %struct.TYPE_33__** %6, align 8
  %34 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %35 = icmp eq %struct.TYPE_33__* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %1
  br label %273

37:                                               ; preds = %1
  %38 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %38, i32 0, i32 2
  %40 = load %struct.TYPE_27__*, %struct.TYPE_27__** %39, align 8
  %41 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %41, i32 0, i32 1
  store %struct.TYPE_27__* %40, %struct.TYPE_27__** %42, align 8
  %43 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %43, i32 0, i32 2
  %45 = load %struct.TYPE_27__*, %struct.TYPE_27__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %45, i32 0, i32 1
  store i32* null, i32** %46, align 8
  %47 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_27__*, %struct.TYPE_27__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  store i32* %51, i32** %7, align 8
  %52 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %13, align 4
  %55 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %108

59:                                               ; preds = %37
  %60 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %61 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @ngx_resolver_strerror(i64 %66)
  %68 = load i32, i32* %13, align 4
  %69 = call i32 @ngx_log_debug2(i32 %60, i32 %63, i32 0, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %67, i32 %68)
  %70 = load i32*, i32** %7, align 8
  %71 = call i32 @lua_pushnil(i32* %70)
  %72 = load i32*, i32** %7, align 8
  %73 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = inttoptr i64 %76 to i8*
  %78 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @lua_pushlstring(i32* %72, i8* %77, i32 %81)
  %83 = load i32*, i32** %7, align 8
  %84 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = trunc i64 %86 to i32
  %88 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @ngx_resolver_strerror(i64 %90)
  %92 = call i32 @lua_pushfstring(i32* %83, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %87, i32 %91)
  %93 = load i32*, i32** %7, align 8
  %94 = call i32 @lua_concat(i32* %93, i32 2)
  %95 = load i8*, i8** @ngx_http_lua_socket_conn_error_retval_handler, align 8
  %96 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %96, i32 0, i32 1
  store i8* %95, i8** %97, align 8
  %98 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %99 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %100 = load i32, i32* @NGX_HTTP_LUA_SOCKET_FT_RESOLVER, align 4
  %101 = call i32 @ngx_http_lua_socket_handle_conn_error(%struct.TYPE_31__* %98, %struct.TYPE_32__* %99, i32 %100)
  %102 = load i32, i32* %13, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %59
  %105 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %106 = call i32 @ngx_http_run_posted_requests(%struct.TYPE_23__* %105)
  br label %107

107:                                              ; preds = %104, %59
  br label %273

108:                                              ; preds = %37
  %109 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 8
  %114 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_24__*, %struct.TYPE_24__** %115, align 8
  %117 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %117, i32 0, i32 5
  store %struct.TYPE_24__* %116, %struct.TYPE_24__** %118, align 8
  %119 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = icmp sgt i32 %121, 0
  %123 = zext i1 %122 to i32
  %124 = call i32 @ngx_http_lua_assert(i32 %123)
  %125 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = icmp eq i32 %127, 1
  br i1 %128, label %129, label %130

129:                                              ; preds = %108
  store i64 0, i64* %12, align 8
  br label %137

130:                                              ; preds = %108
  %131 = call i64 (...) @ngx_random()
  %132 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = sext i32 %134 to i64
  %136 = urem i64 %131, %135
  store i64 %136, i64* %12, align 8
  br label %137

137:                                              ; preds = %130, %129
  %138 = load i64, i64* %12, align 8
  %139 = trunc i64 %138 to i32
  %140 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %139)
  %141 = load i32, i32* @NGX_INET_ADDRSTRLEN, align 4
  %142 = sext i32 %141 to i64
  %143 = add i64 %142, 7
  %144 = sub i64 %143, 1
  store i64 %144, i64* %10, align 8
  %145 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = load i64, i64* %10, align 8
  %149 = add i64 %148, 32
  %150 = call i32* @ngx_pnalloc(i32 %147, i64 %149)
  store i32* %150, i32** %9, align 8
  %151 = load i32*, i32** %9, align 8
  %152 = icmp eq i32* %151, null
  br i1 %152, label %153, label %154

153:                                              ; preds = %137
  br label %244

154:                                              ; preds = %137
  %155 = load i32*, i32** %9, align 8
  %156 = load i64, i64* %10, align 8
  %157 = getelementptr inbounds i32, i32* %155, i64 %156
  %158 = bitcast i32* %157 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %158, %struct.sockaddr_in** %11, align 8
  %159 = load %struct.sockaddr_in*, %struct.sockaddr_in** %11, align 8
  %160 = call i32 @ngx_memzero(%struct.sockaddr_in* %159, i32 32)
  %161 = load i32, i32* @AF_INET, align 4
  %162 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %162, i32 0, i32 5
  %164 = load %struct.TYPE_24__*, %struct.TYPE_24__** %163, align 8
  %165 = load i64, i64* %12, align 8
  %166 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %164, i64 %165
  %167 = load i32*, i32** %9, align 8
  %168 = load i32, i32* @NGX_INET_ADDRSTRLEN, align 4
  %169 = call i64 @ngx_inet_ntop(i32 %161, %struct.TYPE_24__* %166, i32* %167, i32 %168)
  store i64 %169, i64* %10, align 8
  %170 = load i32*, i32** %9, align 8
  %171 = load i64, i64* %10, align 8
  %172 = getelementptr inbounds i32, i32* %170, i64 %171
  %173 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %173, i32 0, i32 6
  %175 = load i32, i32* %174, align 8
  %176 = call i32* @ngx_sprintf(i32* %172, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %175)
  %177 = load i32*, i32** %9, align 8
  %178 = ptrtoint i32* %176 to i64
  %179 = ptrtoint i32* %177 to i64
  %180 = sub i64 %178, %179
  %181 = sdiv exact i64 %180, 4
  store i64 %181, i64* %10, align 8
  %182 = load i32, i32* @AF_INET, align 4
  %183 = load %struct.sockaddr_in*, %struct.sockaddr_in** %11, align 8
  %184 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %183, i32 0, i32 2
  store i32 %182, i32* %184, align 8
  %185 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %185, i32 0, i32 6
  %187 = load i32, i32* %186, align 8
  %188 = call i8* @htons(i32 %187)
  %189 = load %struct.sockaddr_in*, %struct.sockaddr_in** %11, align 8
  %190 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %189, i32 0, i32 1
  store i8* %188, i8** %190, align 8
  %191 = load %struct.sockaddr_in*, %struct.sockaddr_in** %11, align 8
  %192 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %192, i32 0, i32 0
  %194 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %194, i32 0, i32 5
  %196 = load %struct.TYPE_24__*, %struct.TYPE_24__** %195, align 8
  %197 = load i64, i64* %12, align 8
  %198 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %196, i64 %197
  %199 = bitcast %struct.TYPE_24__* %193 to i8*
  %200 = bitcast %struct.TYPE_24__* %198 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %199, i8* align 8 %200, i64 16, i1 false)
  %201 = load %struct.sockaddr_in*, %struct.sockaddr_in** %11, align 8
  %202 = bitcast %struct.sockaddr_in* %201 to %struct.sockaddr*
  %203 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %203, i32 0, i32 4
  store %struct.sockaddr* %202, %struct.sockaddr** %204, align 8
  %205 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %205, i32 0, i32 1
  store i32 32, i32* %206, align 4
  %207 = load i32*, i32** %9, align 8
  %208 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %208, i32 0, i32 3
  %210 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %209, i32 0, i32 1
  store i32* %207, i32** %210, align 8
  %211 = load i64, i64* %10, align 8
  %212 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %212, i32 0, i32 3
  %214 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %213, i32 0, i32 0
  store i64 %211, i64* %214, align 8
  %215 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %216 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %215, i32 0, i32 0
  store i32 1, i32* %216, align 8
  %217 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %218 = call i32 @ngx_resolve_name_done(%struct.TYPE_29__* %217)
  %219 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %220 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %219, i32 0, i32 2
  store i32* null, i32** %220, align 8
  %221 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %222 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %221, i32 0, i32 0
  store i32 0, i32* %222, align 8
  %223 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %224 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %223, i32 0, i32 2
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %224, align 8
  %225 = load i32, i32* %13, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %238

227:                                              ; preds = %154
  %228 = load i32, i32* @ngx_http_lua_socket_tcp_conn_resume, align 4
  %229 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %230 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %229, i32 0, i32 0
  store i32 %228, i32* %230, align 8
  %231 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %232 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %231, i32 0, i32 0
  %233 = load i32 (%struct.TYPE_31__*)*, i32 (%struct.TYPE_31__*)** %232, align 8
  %234 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %235 = call i32 %233(%struct.TYPE_31__* %234)
  %236 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %237 = call i32 @ngx_http_run_posted_requests(%struct.TYPE_23__* %236)
  br label %243

238:                                              ; preds = %154
  %239 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %240 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %241 = load i32*, i32** %7, align 8
  %242 = call i32 @ngx_http_lua_socket_resolve_retval_handler(%struct.TYPE_31__* %239, %struct.TYPE_32__* %240, i32* %241)
  br label %243

243:                                              ; preds = %238, %227
  br label %273

244:                                              ; preds = %153
  %245 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %246 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %245, i32 0, i32 2
  %247 = load i32*, i32** %246, align 8
  %248 = icmp ne i32* %247, null
  br i1 %248, label %249, label %254

249:                                              ; preds = %244
  %250 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %251 = call i32 @ngx_resolve_name_done(%struct.TYPE_29__* %250)
  %252 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %253 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %252, i32 0, i32 2
  store i32* null, i32** %253, align 8
  br label %254

254:                                              ; preds = %249, %244
  %255 = load i8*, i8** @ngx_http_lua_socket_conn_error_retval_handler, align 8
  %256 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %257 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %256, i32 0, i32 1
  store i8* %255, i8** %257, align 8
  %258 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %259 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %260 = load i32, i32* @NGX_HTTP_LUA_SOCKET_FT_NOMEM, align 4
  %261 = call i32 @ngx_http_lua_socket_handle_conn_error(%struct.TYPE_31__* %258, %struct.TYPE_32__* %259, i32 %260)
  %262 = load i32, i32* %13, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %268

264:                                              ; preds = %254
  %265 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %266 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %267 = call i32 @ngx_http_run_posted_requests(%struct.TYPE_23__* %266)
  br label %273

268:                                              ; preds = %254
  %269 = load i32*, i32** %7, align 8
  %270 = call i32 @lua_pushnil(i32* %269)
  %271 = load i32*, i32** %7, align 8
  %272 = call i32 @lua_pushliteral(i32* %271, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  br label %273

273:                                              ; preds = %36, %107, %243, %268, %264
  ret void
}

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local %struct.TYPE_33__* @ngx_http_get_module_ctx(%struct.TYPE_31__*, i32) #1

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @ngx_resolver_strerror(i64) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i32 @lua_pushlstring(i32*, i8*, i32) #1

declare dso_local i32 @lua_pushfstring(i32*, i8*, i32, i32) #1

declare dso_local i32 @lua_concat(i32*, i32) #1

declare dso_local i32 @ngx_http_lua_socket_handle_conn_error(%struct.TYPE_31__*, %struct.TYPE_32__*, i32) #1

declare dso_local i32 @ngx_http_run_posted_requests(%struct.TYPE_23__*) #1

declare dso_local i32 @ngx_http_lua_assert(i32) #1

declare dso_local i64 @ngx_random(...) #1

declare dso_local i32 @dd(i8*, ...) #1

declare dso_local i32* @ngx_pnalloc(i32, i64) #1

declare dso_local i32 @ngx_memzero(%struct.sockaddr_in*, i32) #1

declare dso_local i64 @ngx_inet_ntop(i32, %struct.TYPE_24__*, i32*, i32) #1

declare dso_local i32* @ngx_sprintf(i32*, i8*, i32) #1

declare dso_local i8* @htons(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ngx_resolve_name_done(%struct.TYPE_29__*) #1

declare dso_local i32 @ngx_http_lua_socket_resolve_retval_handler(%struct.TYPE_31__*, %struct.TYPE_32__*, i32*) #1

declare dso_local i32 @lua_pushliteral(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
