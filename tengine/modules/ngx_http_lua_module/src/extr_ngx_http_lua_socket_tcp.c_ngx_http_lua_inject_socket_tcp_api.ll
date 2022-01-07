; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_socket_tcp.c_ngx_http_lua_inject_socket_tcp_api.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_socket_tcp.c_ngx_http_lua_inject_socket_tcp_api.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ngx_http_lua_socket_tcp = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"stream\00", align 1
@__const.ngx_http_lua_inject_socket_tcp_api.buf = private unnamed_addr constant [112 x i8] c"local sock = ngx.socket.tcp() local ok, err = sock:connect(...) if ok then return sock else return nil, err end\00", align 16
@.str.2 = private unnamed_addr constant [20 x i8] c"=ngx.socket.connect\00", align 1
@NGX_OK = common dso_local global i64 0, align 8
@NGX_LOG_CRIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [53 x i8] c"failed to load Lua code for ngx.socket.connect(): %i\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"connect\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@req_socket_metatable_key = common dso_local global i32 0, align 4
@ngx_http_lua_socket_tcp_receive = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"receive\00", align 1
@ngx_http_lua_socket_tcp_receiveuntil = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [13 x i8] c"receiveuntil\00", align 1
@ngx_http_lua_socket_tcp_settimeout = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [11 x i8] c"settimeout\00", align 1
@ngx_http_lua_socket_tcp_settimeouts = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [12 x i8] c"settimeouts\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"__index\00", align 1
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@raw_req_socket_metatable_key = common dso_local global i32 0, align 4
@ngx_http_lua_socket_tcp_send = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [5 x i8] c"send\00", align 1
@tcp_socket_metatable_key = common dso_local global i32 0, align 4
@ngx_http_lua_socket_tcp_connect = common dso_local global i32 0, align 4
@ngx_http_lua_socket_tcp_receiveany = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [11 x i8] c"receiveany\00", align 1
@ngx_http_lua_socket_tcp_close = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [6 x i8] c"close\00", align 1
@ngx_http_lua_socket_tcp_setoption = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [10 x i8] c"setoption\00", align 1
@ngx_http_lua_socket_tcp_getreusedtimes = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [15 x i8] c"getreusedtimes\00", align 1
@ngx_http_lua_socket_tcp_setkeepalive = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [13 x i8] c"setkeepalive\00", align 1
@upstream_udata_metatable_key = common dso_local global i32 0, align 4
@ngx_http_lua_socket_tcp_upstream_destroy = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [5 x i8] c"__gc\00", align 1
@downstream_udata_metatable_key = common dso_local global i32 0, align 4
@ngx_http_lua_socket_downstream_destroy = common dso_local global i32 0, align 4
@pool_udata_metatable_key = common dso_local global i32 0, align 4
@ngx_http_lua_socket_shutdown_pool = common dso_local global i32 0, align 4
@pattern_udata_metatable_key = common dso_local global i32 0, align 4
@ngx_http_lua_socket_cleanup_compiled_pattern = common dso_local global i32 0, align 4
@ngx_http_lua_socket_tcp_sslhandshake = common dso_local global i32 0, align 4
@ngx_http_lua_ssl_free_session = common dso_local global i32 0, align 4
@ssl_session_metatable_key = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ngx_http_lua_inject_socket_tcp_api(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca [112 x i8], align 16
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = call i32 @lua_createtable(i32* %7, i32 0, i32 4)
  %9 = load i32*, i32** %4, align 8
  %10 = load i32, i32* @ngx_http_lua_socket_tcp, align 4
  %11 = call i32 @lua_pushcfunction(i32* %9, i32 %10)
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @lua_pushvalue(i32* %12, i32 -1)
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @lua_setfield(i32* %14, i32 -3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @lua_setfield(i32* %16, i32 -2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %18 = bitcast [112 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %18, i8* align 16 getelementptr inbounds ([112 x i8], [112 x i8]* @__const.ngx_http_lua_inject_socket_tcp_api.buf, i32 0, i32 0), i64 112, i1 false)
  %19 = load i32*, i32** %4, align 8
  %20 = getelementptr inbounds [112 x i8], [112 x i8]* %6, i64 0, i64 0
  %21 = call i64 @luaL_loadbuffer(i32* %19, i8* %20, i32 111, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  store i64 %21, i64* %5, align 8
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* @NGX_OK, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %2
  %26 = load i32, i32* @NGX_LOG_CRIT, align 4
  %27 = load i32*, i32** %3, align 8
  %28 = load i64, i64* %5, align 8
  %29 = call i32 @ngx_log_error(i32 %26, i32* %27, i32 0, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i64 %28)
  br label %33

30:                                               ; preds = %2
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @lua_setfield(i32* %31, i32 -2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  br label %33

33:                                               ; preds = %30, %25
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 @lua_setfield(i32* %34, i32 -2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %36 = load i32*, i32** %4, align 8
  %37 = load i32, i32* @req_socket_metatable_key, align 4
  %38 = call i32 @ngx_http_lua_lightudata_mask(i32 %37)
  %39 = call i32 @lua_pushlightuserdata(i32* %36, i32 %38)
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 @lua_createtable(i32* %40, i32 0, i32 5)
  %42 = load i32*, i32** %4, align 8
  %43 = load i32, i32* @ngx_http_lua_socket_tcp_receive, align 4
  %44 = call i32 @lua_pushcfunction(i32* %42, i32 %43)
  %45 = load i32*, i32** %4, align 8
  %46 = call i32 @lua_setfield(i32* %45, i32 -2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %47 = load i32*, i32** %4, align 8
  %48 = load i32, i32* @ngx_http_lua_socket_tcp_receiveuntil, align 4
  %49 = call i32 @lua_pushcfunction(i32* %47, i32 %48)
  %50 = load i32*, i32** %4, align 8
  %51 = call i32 @lua_setfield(i32* %50, i32 -2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  %52 = load i32*, i32** %4, align 8
  %53 = load i32, i32* @ngx_http_lua_socket_tcp_settimeout, align 4
  %54 = call i32 @lua_pushcfunction(i32* %52, i32 %53)
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @lua_setfield(i32* %55, i32 -2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  %57 = load i32*, i32** %4, align 8
  %58 = load i32, i32* @ngx_http_lua_socket_tcp_settimeouts, align 4
  %59 = call i32 @lua_pushcfunction(i32* %57, i32 %58)
  %60 = load i32*, i32** %4, align 8
  %61 = call i32 @lua_setfield(i32* %60, i32 -2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  %62 = load i32*, i32** %4, align 8
  %63 = call i32 @lua_pushvalue(i32* %62, i32 -1)
  %64 = load i32*, i32** %4, align 8
  %65 = call i32 @lua_setfield(i32* %64, i32 -2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  %66 = load i32*, i32** %4, align 8
  %67 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %68 = call i32 @lua_rawset(i32* %66, i32 %67)
  %69 = load i32*, i32** %4, align 8
  %70 = load i32, i32* @raw_req_socket_metatable_key, align 4
  %71 = call i32 @ngx_http_lua_lightudata_mask(i32 %70)
  %72 = call i32 @lua_pushlightuserdata(i32* %69, i32 %71)
  %73 = load i32*, i32** %4, align 8
  %74 = call i32 @lua_createtable(i32* %73, i32 0, i32 6)
  %75 = load i32*, i32** %4, align 8
  %76 = load i32, i32* @ngx_http_lua_socket_tcp_receive, align 4
  %77 = call i32 @lua_pushcfunction(i32* %75, i32 %76)
  %78 = load i32*, i32** %4, align 8
  %79 = call i32 @lua_setfield(i32* %78, i32 -2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %80 = load i32*, i32** %4, align 8
  %81 = load i32, i32* @ngx_http_lua_socket_tcp_receiveuntil, align 4
  %82 = call i32 @lua_pushcfunction(i32* %80, i32 %81)
  %83 = load i32*, i32** %4, align 8
  %84 = call i32 @lua_setfield(i32* %83, i32 -2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  %85 = load i32*, i32** %4, align 8
  %86 = load i32, i32* @ngx_http_lua_socket_tcp_send, align 4
  %87 = call i32 @lua_pushcfunction(i32* %85, i32 %86)
  %88 = load i32*, i32** %4, align 8
  %89 = call i32 @lua_setfield(i32* %88, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %90 = load i32*, i32** %4, align 8
  %91 = load i32, i32* @ngx_http_lua_socket_tcp_settimeout, align 4
  %92 = call i32 @lua_pushcfunction(i32* %90, i32 %91)
  %93 = load i32*, i32** %4, align 8
  %94 = call i32 @lua_setfield(i32* %93, i32 -2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  %95 = load i32*, i32** %4, align 8
  %96 = load i32, i32* @ngx_http_lua_socket_tcp_settimeouts, align 4
  %97 = call i32 @lua_pushcfunction(i32* %95, i32 %96)
  %98 = load i32*, i32** %4, align 8
  %99 = call i32 @lua_setfield(i32* %98, i32 -2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  %100 = load i32*, i32** %4, align 8
  %101 = call i32 @lua_pushvalue(i32* %100, i32 -1)
  %102 = load i32*, i32** %4, align 8
  %103 = call i32 @lua_setfield(i32* %102, i32 -2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  %104 = load i32*, i32** %4, align 8
  %105 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %106 = call i32 @lua_rawset(i32* %104, i32 %105)
  %107 = load i32*, i32** %4, align 8
  %108 = load i32, i32* @tcp_socket_metatable_key, align 4
  %109 = call i32 @ngx_http_lua_lightudata_mask(i32 %108)
  %110 = call i32 @lua_pushlightuserdata(i32* %107, i32 %109)
  %111 = load i32*, i32** %4, align 8
  %112 = call i32 @lua_createtable(i32* %111, i32 0, i32 12)
  %113 = load i32*, i32** %4, align 8
  %114 = load i32, i32* @ngx_http_lua_socket_tcp_connect, align 4
  %115 = call i32 @lua_pushcfunction(i32* %113, i32 %114)
  %116 = load i32*, i32** %4, align 8
  %117 = call i32 @lua_setfield(i32* %116, i32 -2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %118 = load i32*, i32** %4, align 8
  %119 = load i32, i32* @ngx_http_lua_socket_tcp_receive, align 4
  %120 = call i32 @lua_pushcfunction(i32* %118, i32 %119)
  %121 = load i32*, i32** %4, align 8
  %122 = call i32 @lua_setfield(i32* %121, i32 -2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %123 = load i32*, i32** %4, align 8
  %124 = load i32, i32* @ngx_http_lua_socket_tcp_receiveany, align 4
  %125 = call i32 @lua_pushcfunction(i32* %123, i32 %124)
  %126 = load i32*, i32** %4, align 8
  %127 = call i32 @lua_setfield(i32* %126, i32 -2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0))
  %128 = load i32*, i32** %4, align 8
  %129 = load i32, i32* @ngx_http_lua_socket_tcp_receiveuntil, align 4
  %130 = call i32 @lua_pushcfunction(i32* %128, i32 %129)
  %131 = load i32*, i32** %4, align 8
  %132 = call i32 @lua_setfield(i32* %131, i32 -2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  %133 = load i32*, i32** %4, align 8
  %134 = load i32, i32* @ngx_http_lua_socket_tcp_send, align 4
  %135 = call i32 @lua_pushcfunction(i32* %133, i32 %134)
  %136 = load i32*, i32** %4, align 8
  %137 = call i32 @lua_setfield(i32* %136, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %138 = load i32*, i32** %4, align 8
  %139 = load i32, i32* @ngx_http_lua_socket_tcp_close, align 4
  %140 = call i32 @lua_pushcfunction(i32* %138, i32 %139)
  %141 = load i32*, i32** %4, align 8
  %142 = call i32 @lua_setfield(i32* %141, i32 -2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0))
  %143 = load i32*, i32** %4, align 8
  %144 = load i32, i32* @ngx_http_lua_socket_tcp_setoption, align 4
  %145 = call i32 @lua_pushcfunction(i32* %143, i32 %144)
  %146 = load i32*, i32** %4, align 8
  %147 = call i32 @lua_setfield(i32* %146, i32 -2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0))
  %148 = load i32*, i32** %4, align 8
  %149 = load i32, i32* @ngx_http_lua_socket_tcp_settimeout, align 4
  %150 = call i32 @lua_pushcfunction(i32* %148, i32 %149)
  %151 = load i32*, i32** %4, align 8
  %152 = call i32 @lua_setfield(i32* %151, i32 -2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  %153 = load i32*, i32** %4, align 8
  %154 = load i32, i32* @ngx_http_lua_socket_tcp_settimeouts, align 4
  %155 = call i32 @lua_pushcfunction(i32* %153, i32 %154)
  %156 = load i32*, i32** %4, align 8
  %157 = call i32 @lua_setfield(i32* %156, i32 -2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  %158 = load i32*, i32** %4, align 8
  %159 = load i32, i32* @ngx_http_lua_socket_tcp_getreusedtimes, align 4
  %160 = call i32 @lua_pushcfunction(i32* %158, i32 %159)
  %161 = load i32*, i32** %4, align 8
  %162 = call i32 @lua_setfield(i32* %161, i32 -2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0))
  %163 = load i32*, i32** %4, align 8
  %164 = load i32, i32* @ngx_http_lua_socket_tcp_setkeepalive, align 4
  %165 = call i32 @lua_pushcfunction(i32* %163, i32 %164)
  %166 = load i32*, i32** %4, align 8
  %167 = call i32 @lua_setfield(i32* %166, i32 -2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0))
  %168 = load i32*, i32** %4, align 8
  %169 = call i32 @lua_pushvalue(i32* %168, i32 -1)
  %170 = load i32*, i32** %4, align 8
  %171 = call i32 @lua_setfield(i32* %170, i32 -2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  %172 = load i32*, i32** %4, align 8
  %173 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %174 = call i32 @lua_rawset(i32* %172, i32 %173)
  %175 = load i32*, i32** %4, align 8
  %176 = load i32, i32* @upstream_udata_metatable_key, align 4
  %177 = call i32 @ngx_http_lua_lightudata_mask(i32 %176)
  %178 = call i32 @lua_pushlightuserdata(i32* %175, i32 %177)
  %179 = load i32*, i32** %4, align 8
  %180 = call i32 @lua_createtable(i32* %179, i32 0, i32 1)
  %181 = load i32*, i32** %4, align 8
  %182 = load i32, i32* @ngx_http_lua_socket_tcp_upstream_destroy, align 4
  %183 = call i32 @lua_pushcfunction(i32* %181, i32 %182)
  %184 = load i32*, i32** %4, align 8
  %185 = call i32 @lua_setfield(i32* %184, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0))
  %186 = load i32*, i32** %4, align 8
  %187 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %188 = call i32 @lua_rawset(i32* %186, i32 %187)
  %189 = load i32*, i32** %4, align 8
  %190 = load i32, i32* @downstream_udata_metatable_key, align 4
  %191 = call i32 @ngx_http_lua_lightudata_mask(i32 %190)
  %192 = call i32 @lua_pushlightuserdata(i32* %189, i32 %191)
  %193 = load i32*, i32** %4, align 8
  %194 = call i32 @lua_createtable(i32* %193, i32 0, i32 1)
  %195 = load i32*, i32** %4, align 8
  %196 = load i32, i32* @ngx_http_lua_socket_downstream_destroy, align 4
  %197 = call i32 @lua_pushcfunction(i32* %195, i32 %196)
  %198 = load i32*, i32** %4, align 8
  %199 = call i32 @lua_setfield(i32* %198, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0))
  %200 = load i32*, i32** %4, align 8
  %201 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %202 = call i32 @lua_rawset(i32* %200, i32 %201)
  %203 = load i32*, i32** %4, align 8
  %204 = load i32, i32* @pool_udata_metatable_key, align 4
  %205 = call i32 @ngx_http_lua_lightudata_mask(i32 %204)
  %206 = call i32 @lua_pushlightuserdata(i32* %203, i32 %205)
  %207 = load i32*, i32** %4, align 8
  %208 = call i32 @lua_createtable(i32* %207, i32 0, i32 1)
  %209 = load i32*, i32** %4, align 8
  %210 = load i32, i32* @ngx_http_lua_socket_shutdown_pool, align 4
  %211 = call i32 @lua_pushcfunction(i32* %209, i32 %210)
  %212 = load i32*, i32** %4, align 8
  %213 = call i32 @lua_setfield(i32* %212, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0))
  %214 = load i32*, i32** %4, align 8
  %215 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %216 = call i32 @lua_rawset(i32* %214, i32 %215)
  %217 = load i32*, i32** %4, align 8
  %218 = load i32, i32* @pattern_udata_metatable_key, align 4
  %219 = call i32 @ngx_http_lua_lightudata_mask(i32 %218)
  %220 = call i32 @lua_pushlightuserdata(i32* %217, i32 %219)
  %221 = load i32*, i32** %4, align 8
  %222 = call i32 @lua_createtable(i32* %221, i32 0, i32 1)
  %223 = load i32*, i32** %4, align 8
  %224 = load i32, i32* @ngx_http_lua_socket_cleanup_compiled_pattern, align 4
  %225 = call i32 @lua_pushcfunction(i32* %223, i32 %224)
  %226 = load i32*, i32** %4, align 8
  %227 = call i32 @lua_setfield(i32* %226, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0))
  %228 = load i32*, i32** %4, align 8
  %229 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %230 = call i32 @lua_rawset(i32* %228, i32 %229)
  ret void
}

declare dso_local i32 @lua_createtable(i32*, i32, i32) #1

declare dso_local i32 @lua_pushcfunction(i32*, i32) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @lua_setfield(i32*, i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @luaL_loadbuffer(i32*, i8*, i32, i8*) #1

declare dso_local i32 @ngx_log_error(i32, i32*, i32, i8*, i64) #1

declare dso_local i32 @lua_pushlightuserdata(i32*, i32) #1

declare dso_local i32 @ngx_http_lua_lightudata_mask(i32) #1

declare dso_local i32 @lua_rawset(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
