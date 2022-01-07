; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_socket_udp.c_ngx_http_lua_socket_resolve_handler.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_socket_udp.c_ngx_http_lua_socket_resolve_handler.c"
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
@.str = private unnamed_addr constant [31 x i8] c"lua udp socket resolve handler\00", align 1
@ngx_http_lua_module = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"setting socket_ready to 1\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"lua udp socket resolver error: %s (waiting: %d)\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c" could not be resolved (%d: %s)\00", align 1
@ngx_http_lua_socket_error_retval_handler = common dso_local global i8* null, align 8
@NGX_HTTP_LUA_SOCKET_FT_RESOLVER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"selected addr index: %d\00", align 1
@NGX_INET_ADDRSTRLEN = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c":%d\00", align 1
@ngx_http_lua_socket_udp_resume = common dso_local global i32 0, align 4
@NGX_HTTP_LUA_SOCKET_FT_NOMEM = common dso_local global i32 0, align 4
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
  br label %277

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
  %52 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %53 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %13, align 4
  %56 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %115

60:                                               ; preds = %37
  %61 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %62 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @ngx_resolver_strerror(i64 %67)
  %69 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @ngx_log_debug2(i32 %61, i32 %64, i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %68, i32 %71)
  %73 = load i32*, i32** %7, align 8
  %74 = call i32 @lua_pushnil(i32* %73)
  %75 = load i32*, i32** %7, align 8
  %76 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = inttoptr i64 %79 to i8*
  %81 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @lua_pushlstring(i32* %75, i8* %80, i32 %84)
  %86 = load i32*, i32** %7, align 8
  %87 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = trunc i64 %89 to i32
  %91 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @ngx_resolver_strerror(i64 %93)
  %95 = call i32 @lua_pushfstring(i32* %86, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %90, i32 %94)
  %96 = load i32*, i32** %7, align 8
  %97 = call i32 @lua_concat(i32* %96, i32 2)
  %98 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %99 = call i32 @ngx_resolve_name_done(%struct.TYPE_29__* %98)
  %100 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %100, i32 0, i32 2
  store i32* null, i32** %101, align 8
  %102 = load i8*, i8** @ngx_http_lua_socket_error_retval_handler, align 8
  %103 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %103, i32 0, i32 1
  store i8* %102, i8** %104, align 8
  %105 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %106 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %107 = load i32, i32* @NGX_HTTP_LUA_SOCKET_FT_RESOLVER, align 4
  %108 = call i32 @ngx_http_lua_socket_udp_handle_error(%struct.TYPE_31__* %105, %struct.TYPE_32__* %106, i32 %107)
  %109 = load i32, i32* %13, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %60
  %112 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %113 = call i32 @ngx_http_run_posted_requests(%struct.TYPE_23__* %112)
  br label %114

114:                                              ; preds = %111, %60
  br label %277

115:                                              ; preds = %37
  %116 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %117 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 8
  %121 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_24__*, %struct.TYPE_24__** %122, align 8
  %124 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %124, i32 0, i32 5
  store %struct.TYPE_24__* %123, %struct.TYPE_24__** %125, align 8
  %126 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = icmp sgt i32 %128, 0
  %130 = zext i1 %129 to i32
  %131 = call i32 @ngx_http_lua_assert(i32 %130)
  %132 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = icmp eq i32 %134, 1
  br i1 %135, label %136, label %137

136:                                              ; preds = %115
  store i64 0, i64* %12, align 8
  br label %144

137:                                              ; preds = %115
  %138 = call i64 (...) @ngx_random()
  %139 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = sext i32 %141 to i64
  %143 = urem i64 %138, %142
  store i64 %143, i64* %12, align 8
  br label %144

144:                                              ; preds = %137, %136
  %145 = load i64, i64* %12, align 8
  %146 = trunc i64 %145 to i32
  %147 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %146)
  %148 = load i32, i32* @NGX_INET_ADDRSTRLEN, align 4
  %149 = sext i32 %148 to i64
  %150 = add i64 %149, 7
  %151 = sub i64 %150, 1
  store i64 %151, i64* %10, align 8
  %152 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = load i64, i64* %10, align 8
  %156 = add i64 %155, 32
  %157 = call i32* @ngx_pnalloc(i32 %154, i64 %156)
  store i32* %157, i32** %9, align 8
  %158 = load i32*, i32** %9, align 8
  %159 = icmp eq i32* %158, null
  br i1 %159, label %160, label %161

160:                                              ; preds = %144
  br label %249

161:                                              ; preds = %144
  %162 = load i32*, i32** %9, align 8
  %163 = load i64, i64* %10, align 8
  %164 = getelementptr inbounds i32, i32* %162, i64 %163
  %165 = bitcast i32* %164 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %165, %struct.sockaddr_in** %11, align 8
  %166 = load %struct.sockaddr_in*, %struct.sockaddr_in** %11, align 8
  %167 = call i32 @ngx_memzero(%struct.sockaddr_in* %166, i32 32)
  %168 = load i32, i32* @AF_INET, align 4
  %169 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %169, i32 0, i32 5
  %171 = load %struct.TYPE_24__*, %struct.TYPE_24__** %170, align 8
  %172 = load i64, i64* %12, align 8
  %173 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %171, i64 %172
  %174 = load i32*, i32** %9, align 8
  %175 = load i32, i32* @NGX_INET_ADDRSTRLEN, align 4
  %176 = call i64 @ngx_inet_ntop(i32 %168, %struct.TYPE_24__* %173, i32* %174, i32 %175)
  store i64 %176, i64* %10, align 8
  %177 = load i32*, i32** %9, align 8
  %178 = load i64, i64* %10, align 8
  %179 = getelementptr inbounds i32, i32* %177, i64 %178
  %180 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %180, i32 0, i32 6
  %182 = load i32, i32* %181, align 8
  %183 = call i32* @ngx_sprintf(i32* %179, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %182)
  %184 = load i32*, i32** %9, align 8
  %185 = ptrtoint i32* %183 to i64
  %186 = ptrtoint i32* %184 to i64
  %187 = sub i64 %185, %186
  %188 = sdiv exact i64 %187, 4
  store i64 %188, i64* %10, align 8
  %189 = load i32, i32* @AF_INET, align 4
  %190 = load %struct.sockaddr_in*, %struct.sockaddr_in** %11, align 8
  %191 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %190, i32 0, i32 2
  store i32 %189, i32* %191, align 8
  %192 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %192, i32 0, i32 6
  %194 = load i32, i32* %193, align 8
  %195 = call i8* @htons(i32 %194)
  %196 = load %struct.sockaddr_in*, %struct.sockaddr_in** %11, align 8
  %197 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %196, i32 0, i32 1
  store i8* %195, i8** %197, align 8
  %198 = load %struct.sockaddr_in*, %struct.sockaddr_in** %11, align 8
  %199 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %199, i32 0, i32 0
  %201 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %201, i32 0, i32 5
  %203 = load %struct.TYPE_24__*, %struct.TYPE_24__** %202, align 8
  %204 = load i64, i64* %12, align 8
  %205 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %203, i64 %204
  %206 = bitcast %struct.TYPE_24__* %200 to i8*
  %207 = bitcast %struct.TYPE_24__* %205 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %206, i8* align 8 %207, i64 16, i1 false)
  %208 = load %struct.sockaddr_in*, %struct.sockaddr_in** %11, align 8
  %209 = bitcast %struct.sockaddr_in* %208 to %struct.sockaddr*
  %210 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %211 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %210, i32 0, i32 4
  store %struct.sockaddr* %209, %struct.sockaddr** %211, align 8
  %212 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %212, i32 0, i32 1
  store i32 32, i32* %213, align 4
  %214 = load i32*, i32** %9, align 8
  %215 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %216 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %215, i32 0, i32 3
  %217 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %216, i32 0, i32 1
  store i32* %214, i32** %217, align 8
  %218 = load i64, i64* %10, align 8
  %219 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %220 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %219, i32 0, i32 3
  %221 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %220, i32 0, i32 0
  store i64 %218, i64* %221, align 8
  %222 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %222, i32 0, i32 0
  store i32 1, i32* %223, align 8
  %224 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %225 = call i32 @ngx_resolve_name_done(%struct.TYPE_29__* %224)
  %226 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %227 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %226, i32 0, i32 2
  store i32* null, i32** %227, align 8
  %228 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %229 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %228, i32 0, i32 0
  store i32 0, i32* %229, align 8
  %230 = load i32, i32* %13, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %243

232:                                              ; preds = %161
  %233 = load i32, i32* @ngx_http_lua_socket_udp_resume, align 4
  %234 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %235 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %234, i32 0, i32 0
  store i32 %233, i32* %235, align 8
  %236 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %237 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %236, i32 0, i32 0
  %238 = load i32 (%struct.TYPE_31__*)*, i32 (%struct.TYPE_31__*)** %237, align 8
  %239 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %240 = call i32 %238(%struct.TYPE_31__* %239)
  %241 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %242 = call i32 @ngx_http_run_posted_requests(%struct.TYPE_23__* %241)
  br label %248

243:                                              ; preds = %161
  %244 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %245 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %246 = load i32*, i32** %7, align 8
  %247 = call i32 @ngx_http_lua_socket_resolve_retval_handler(%struct.TYPE_31__* %244, %struct.TYPE_32__* %245, i32* %246)
  br label %248

248:                                              ; preds = %243, %232
  br label %277

249:                                              ; preds = %160
  %250 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %251 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %250, i32 0, i32 2
  %252 = load i32*, i32** %251, align 8
  %253 = icmp ne i32* %252, null
  br i1 %253, label %254, label %259

254:                                              ; preds = %249
  %255 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %256 = call i32 @ngx_resolve_name_done(%struct.TYPE_29__* %255)
  %257 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %258 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %257, i32 0, i32 2
  store i32* null, i32** %258, align 8
  br label %259

259:                                              ; preds = %254, %249
  %260 = load i8*, i8** @ngx_http_lua_socket_error_retval_handler, align 8
  %261 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %262 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %261, i32 0, i32 1
  store i8* %260, i8** %262, align 8
  %263 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %264 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %265 = load i32, i32* @NGX_HTTP_LUA_SOCKET_FT_NOMEM, align 4
  %266 = call i32 @ngx_http_lua_socket_udp_handle_error(%struct.TYPE_31__* %263, %struct.TYPE_32__* %264, i32 %265)
  %267 = load i32, i32* %13, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %272

269:                                              ; preds = %259
  %270 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %271 = call i32 @ngx_http_run_posted_requests(%struct.TYPE_23__* %270)
  br label %277

272:                                              ; preds = %259
  %273 = load i32*, i32** %7, align 8
  %274 = call i32 @lua_pushnil(i32* %273)
  %275 = load i32*, i32** %7, align 8
  %276 = call i32 @lua_pushliteral(i32* %275, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  br label %277

277:                                              ; preds = %36, %114, %248, %272, %269
  ret void
}

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local %struct.TYPE_33__* @ngx_http_get_module_ctx(%struct.TYPE_31__*, i32) #1

declare dso_local i32 @dd(i8*, ...) #1

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @ngx_resolver_strerror(i64) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i32 @lua_pushlstring(i32*, i8*, i32) #1

declare dso_local i32 @lua_pushfstring(i32*, i8*, i32, i32) #1

declare dso_local i32 @lua_concat(i32*, i32) #1

declare dso_local i32 @ngx_resolve_name_done(%struct.TYPE_29__*) #1

declare dso_local i32 @ngx_http_lua_socket_udp_handle_error(%struct.TYPE_31__*, %struct.TYPE_32__*, i32) #1

declare dso_local i32 @ngx_http_run_posted_requests(%struct.TYPE_23__*) #1

declare dso_local i32 @ngx_http_lua_assert(i32) #1

declare dso_local i64 @ngx_random(...) #1

declare dso_local i32* @ngx_pnalloc(i32, i64) #1

declare dso_local i32 @ngx_memzero(%struct.sockaddr_in*, i32) #1

declare dso_local i64 @ngx_inet_ntop(i32, %struct.TYPE_24__*, i32*, i32) #1

declare dso_local i32* @ngx_sprintf(i32*, i8*, i32) #1

declare dso_local i8* @htons(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ngx_http_lua_socket_resolve_retval_handler(%struct.TYPE_31__*, %struct.TYPE_32__*, i32*) #1

declare dso_local i32 @lua_pushliteral(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
