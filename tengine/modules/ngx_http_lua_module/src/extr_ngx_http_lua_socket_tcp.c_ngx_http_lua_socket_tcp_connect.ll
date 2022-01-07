; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_socket_tcp.c_ngx_http_lua_socket_tcp_connect.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_socket_tcp.c_ngx_http_lua_socket_tcp_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_30__ = type { i64, i8*, i8*, i8* }
%struct.TYPE_27__ = type { i32, i32, i64 }
%struct.TYPE_26__ = type { i32, i32* }
%struct.TYPE_29__ = type { i32*, %struct.TYPE_30__*, i8*, i8*, i8*, %struct.TYPE_27__, %struct.TYPE_28__*, i64, i64 }

@.str = private unnamed_addr constant [87 x i8] c"ngx.socket connect: expecting 2, 3, or 4 arguments (including the object), but seen %d\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"no request found\00", align 1
@ngx_http_lua_module = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"no ctx found\00", align 1
@NGX_HTTP_LUA_CONTEXT_REWRITE = common dso_local global i32 0, align 4
@NGX_HTTP_LUA_CONTEXT_ACCESS = common dso_local global i32 0, align 4
@NGX_HTTP_LUA_CONTEXT_CONTENT = common dso_local global i32 0, align 4
@NGX_HTTP_LUA_CONTEXT_TIMER = common dso_local global i32 0, align 4
@NGX_HTTP_LUA_CONTEXT_SSL_CERT = common dso_local global i32 0, align 4
@NGX_HTTP_LUA_CONTEXT_SSL_SESS_FETCH = common dso_local global i32 0, align 4
@LUA_TTABLE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [10 x i8] c"pool_size\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"bad \22pool_size\22 option value: %i\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"bad \22pool_size\22 option type: %s\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"backlog\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"bad \22backlog\22 option value: %i\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"pool\00", align 1
@SOCKET_KEY_INDEX = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [27 x i8] c"bad \22pool\22 option type: %s\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"bad port number: %d\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"socket key: %s\00", align 1
@SOCKET_CTX_INDEX = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [12 x i8] c"bad request\00", align 1
@.str.14 = private unnamed_addr constant [39 x i8] c"attempt to re-connect a request socket\00", align 1
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [47 x i8] c"lua tcp socket reconnect without shutting down\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"lua reuse socket upstream ctx\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"no memory\00", align 1
@upstream_udata_metatable_key = common dso_local global i32 0, align 4
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@NGX_ERROR_ERR = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [28 x i8] c"lua peer connection log: %p\00", align 1
@SOCKET_CONNECT_TIMEOUT_INDEX = common dso_local global i32 0, align 4
@SOCKET_SEND_TIMEOUT_INDEX = common dso_local global i32 0, align 4
@SOCKET_READ_TIMEOUT_INDEX = common dso_local global i32 0, align 4
@socket_pool_key = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ngx_http_lua_socket_tcp_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_lua_socket_tcp_connect(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_28__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_30__*, align 8
  %11 = alloca %struct.TYPE_27__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_26__, align 8
  %20 = alloca i8*, align 8
  %21 = alloca %struct.TYPE_29__*, align 8
  %22 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @lua_gettop(i32* %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 2
  br i1 %26, label %27, label %37

27:                                               ; preds = %1
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 3
  br i1 %29, label %30, label %37

30:                                               ; preds = %27
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 4
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load i32*, i32** %3, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 (i32*, i8*, ...) @luaL_error(i32* %34, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str, i64 0, i64 0), i32 %35)
  store i32 %36, i32* %2, align 4
  br label %485

37:                                               ; preds = %30, %27, %1
  %38 = load i32*, i32** %3, align 8
  %39 = call %struct.TYPE_28__* @ngx_http_lua_get_req(i32* %38)
  store %struct.TYPE_28__* %39, %struct.TYPE_28__** %4, align 8
  %40 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %41 = icmp eq %struct.TYPE_28__* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32*, i32** %3, align 8
  %44 = call i32 (i32*, i8*, ...) @luaL_error(i32* %43, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i32 %44, i32* %2, align 4
  br label %485

45:                                               ; preds = %37
  %46 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %47 = load i32, i32* @ngx_http_lua_module, align 4
  %48 = call i32* @ngx_http_get_module_ctx(%struct.TYPE_28__* %46, i32 %47)
  store i32* %48, i32** %5, align 8
  %49 = load i32*, i32** %5, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load i32*, i32** %3, align 8
  %53 = call i32 (i32*, i8*, ...) @luaL_error(i32* %52, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  store i32 %53, i32* %2, align 4
  br label %485

54:                                               ; preds = %45
  %55 = load i32*, i32** %3, align 8
  %56 = load i32*, i32** %5, align 8
  %57 = load i32, i32* @NGX_HTTP_LUA_CONTEXT_REWRITE, align 4
  %58 = load i32, i32* @NGX_HTTP_LUA_CONTEXT_ACCESS, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @NGX_HTTP_LUA_CONTEXT_CONTENT, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @NGX_HTTP_LUA_CONTEXT_TIMER, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @NGX_HTTP_LUA_CONTEXT_SSL_CERT, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @NGX_HTTP_LUA_CONTEXT_SSL_SESS_FETCH, align 4
  %67 = or i32 %65, %66
  %68 = call i32 @ngx_http_lua_check_context(i32* %55, i32* %56, i32 %67)
  %69 = load i32*, i32** %3, align 8
  %70 = load i64, i64* @LUA_TTABLE, align 8
  %71 = call i32 @luaL_checktype(i32* %69, i32 1, i64 %70)
  %72 = load i32*, i32** %3, align 8
  %73 = call i64 @luaL_checklstring(i32* %72, i32 2, i64* %9)
  %74 = inttoptr i64 %73 to i32*
  store i32* %74, i32** %8, align 8
  store i64 -1, i64* %17, align 8
  store i32 2, i32* %16, align 4
  store i64 0, i64* %18, align 8
  store i32 0, i32* %15, align 4
  %75 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %76 = load i32, i32* @ngx_http_lua_module, align 4
  %77 = call %struct.TYPE_30__* @ngx_http_get_module_loc_conf(%struct.TYPE_28__* %75, i32 %76)
  store %struct.TYPE_30__* %77, %struct.TYPE_30__** %10, align 8
  %78 = load i32*, i32** %3, align 8
  %79 = load i32, i32* %7, align 4
  %80 = call i64 @lua_type(i32* %78, i32 %79)
  %81 = load i64, i64* @LUA_TTABLE, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %186

83:                                               ; preds = %54
  %84 = load i32*, i32** %3, align 8
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @lua_getfield(i32* %84, i32 %85, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %87 = load i32*, i32** %3, align 8
  %88 = call i64 @lua_isnumber(i32* %87, i32 -1)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %105

90:                                               ; preds = %83
  %91 = load i32*, i32** %3, align 8
  %92 = call i64 @lua_tointeger(i32* %91, i32 -1)
  store i64 %92, i64* %18, align 8
  %93 = load i64, i64* %18, align 8
  %94 = icmp sle i64 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %90
  %96 = load i32*, i32** %3, align 8
  %97 = load i64, i64* %18, align 8
  %98 = trunc i64 %97 to i32
  %99 = call i8* @lua_pushfstring(i32* %96, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %98)
  store i8* %99, i8** %20, align 8
  %100 = load i32*, i32** %3, align 8
  %101 = load i32, i32* %7, align 4
  %102 = load i8*, i8** %20, align 8
  %103 = call i32 @luaL_argerror(i32* %100, i32 %101, i8* %102)
  store i32 %103, i32* %2, align 4
  br label %485

104:                                              ; preds = %90
  br label %121

105:                                              ; preds = %83
  %106 = load i32*, i32** %3, align 8
  %107 = call i32 @lua_isnil(i32* %106, i32 -1)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %120, label %109

109:                                              ; preds = %105
  %110 = load i32*, i32** %3, align 8
  %111 = load i32*, i32** %3, align 8
  %112 = load i32*, i32** %3, align 8
  %113 = call i64 @lua_type(i32* %112, i32 -1)
  %114 = call i32 @lua_typename(i32* %111, i64 %113)
  %115 = call i8* @lua_pushfstring(i32* %110, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %114)
  store i8* %115, i8** %20, align 8
  %116 = load i32*, i32** %3, align 8
  %117 = load i32, i32* %7, align 4
  %118 = load i8*, i8** %20, align 8
  %119 = call i32 @luaL_argerror(i32* %116, i32 %117, i8* %118)
  store i32 %119, i32* %2, align 4
  br label %485

120:                                              ; preds = %105
  br label %121

121:                                              ; preds = %120, %104
  %122 = load i32*, i32** %3, align 8
  %123 = call i32 @lua_pop(i32* %122, i32 1)
  %124 = load i32*, i32** %3, align 8
  %125 = load i32, i32* %7, align 4
  %126 = call i32 @lua_getfield(i32* %124, i32 %125, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %127 = load i32*, i32** %3, align 8
  %128 = call i64 @lua_isnumber(i32* %127, i32 -1)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %152

130:                                              ; preds = %121
  %131 = load i32*, i32** %3, align 8
  %132 = call i64 @lua_tointeger(i32* %131, i32 -1)
  store i64 %132, i64* %17, align 8
  %133 = load i64, i64* %17, align 8
  %134 = icmp slt i64 %133, 0
  br i1 %134, label %135, label %144

135:                                              ; preds = %130
  %136 = load i32*, i32** %3, align 8
  %137 = load i64, i64* %17, align 8
  %138 = trunc i64 %137 to i32
  %139 = call i8* @lua_pushfstring(i32* %136, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i32 %138)
  store i8* %139, i8** %20, align 8
  %140 = load i32*, i32** %3, align 8
  %141 = load i32, i32* %7, align 4
  %142 = load i8*, i8** %20, align 8
  %143 = call i32 @luaL_argerror(i32* %140, i32 %141, i8* %142)
  store i32 %143, i32* %2, align 4
  br label %485

144:                                              ; preds = %130
  %145 = load i64, i64* %18, align 8
  %146 = icmp eq i64 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %144
  %148 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %149 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  store i64 %150, i64* %18, align 8
  br label %151

151:                                              ; preds = %147, %144
  br label %152

152:                                              ; preds = %151, %121
  %153 = load i32*, i32** %3, align 8
  %154 = call i32 @lua_pop(i32* %153, i32 1)
  %155 = load i32*, i32** %3, align 8
  %156 = load i32, i32* %7, align 4
  %157 = call i32 @lua_getfield(i32* %155, i32 %156, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %158 = load i32*, i32** %3, align 8
  %159 = call i64 @lua_type(i32* %158, i32 -1)
  switch i64 %159, label %174 [
    i64 129, label %160
    i64 128, label %163
    i64 130, label %171
  ]

160:                                              ; preds = %152
  %161 = load i32*, i32** %3, align 8
  %162 = call i32 @lua_tostring(i32* %161, i32 -1)
  br label %163

163:                                              ; preds = %152, %160
  store i32 1, i32* %15, align 4
  %164 = load i32*, i32** %3, align 8
  %165 = call i32 @lua_pushvalue(i32* %164, i32 -1)
  %166 = load i32*, i32** %3, align 8
  %167 = load i32, i32* @SOCKET_KEY_INDEX, align 4
  %168 = call i32 @lua_rawseti(i32* %166, i32 1, i32 %167)
  %169 = load i32, i32* %7, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %16, align 4
  br label %183

171:                                              ; preds = %152
  %172 = load i32*, i32** %3, align 8
  %173 = call i32 @lua_pop(i32* %172, i32 2)
  br label %183

174:                                              ; preds = %152
  %175 = load i32*, i32** %3, align 8
  %176 = load i32*, i32** %3, align 8
  %177 = call i32 @luaL_typename(i32* %176, i32 -1)
  %178 = call i8* @lua_pushfstring(i32* %175, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i32 %177)
  store i8* %178, i8** %20, align 8
  %179 = load i32*, i32** %3, align 8
  %180 = load i32, i32* %7, align 4
  %181 = load i8*, i8** %20, align 8
  %182 = call i32 @luaL_argerror(i32* %179, i32 %180, i8* %181)
  br label %183

183:                                              ; preds = %174, %171, %163
  %184 = load i32, i32* %7, align 4
  %185 = add nsw i32 %184, -1
  store i32 %185, i32* %7, align 4
  br label %186

186:                                              ; preds = %183, %54
  %187 = load i32, i32* %7, align 4
  %188 = icmp eq i32 %187, 4
  br i1 %188, label %189, label %194

189:                                              ; preds = %186
  %190 = load i32*, i32** %3, align 8
  %191 = call i32 @lua_pop(i32* %190, i32 1)
  %192 = load i32, i32* %7, align 4
  %193 = add nsw i32 %192, -1
  store i32 %193, i32* %7, align 4
  br label %194

194:                                              ; preds = %189, %186
  %195 = load i32, i32* %7, align 4
  %196 = icmp eq i32 %195, 3
  br i1 %196, label %197, label %225

197:                                              ; preds = %194
  %198 = load i32*, i32** %3, align 8
  %199 = call i32 @luaL_checkinteger(i32* %198, i32 3)
  store i32 %199, i32* %6, align 4
  %200 = load i32, i32* %6, align 4
  %201 = icmp slt i32 %200, 0
  br i1 %201, label %205, label %202

202:                                              ; preds = %197
  %203 = load i32, i32* %6, align 4
  %204 = icmp sgt i32 %203, 65535
  br i1 %204, label %205, label %211

205:                                              ; preds = %202, %197
  %206 = load i32*, i32** %3, align 8
  %207 = call i32 @lua_pushnil(i32* %206)
  %208 = load i32*, i32** %3, align 8
  %209 = load i32, i32* %6, align 4
  %210 = call i8* @lua_pushfstring(i32* %208, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i32 %209)
  store i32 2, i32* %2, align 4
  br label %485

211:                                              ; preds = %202
  %212 = load i32, i32* %15, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %221, label %214

214:                                              ; preds = %211
  %215 = load i32*, i32** %3, align 8
  %216 = call i32 @lua_pushliteral(i32* %215, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  %217 = load i32*, i32** %3, align 8
  %218 = call i32 @lua_insert(i32* %217, i32 3)
  %219 = load i32*, i32** %3, align 8
  %220 = call i32 @lua_concat(i32* %219, i32 3)
  br label %221

221:                                              ; preds = %214, %211
  %222 = load i32*, i32** %3, align 8
  %223 = call i32 @lua_tostring(i32* %222, i32 -1)
  %224 = call i32 @dd(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i32 %223)
  br label %226

225:                                              ; preds = %194
  store i32 0, i32* %6, align 4
  br label %226

226:                                              ; preds = %225, %221
  %227 = load i32, i32* %15, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %235, label %229

229:                                              ; preds = %226
  %230 = load i32*, i32** %3, align 8
  %231 = call i32 @lua_pushvalue(i32* %230, i32 2)
  %232 = load i32*, i32** %3, align 8
  %233 = load i32, i32* @SOCKET_KEY_INDEX, align 4
  %234 = call i32 @lua_rawseti(i32* %232, i32 1, i32 %233)
  br label %235

235:                                              ; preds = %229, %226
  %236 = load i32*, i32** %3, align 8
  %237 = load i32, i32* @SOCKET_CTX_INDEX, align 4
  %238 = call i32 @lua_rawgeti(i32* %236, i32 1, i32 %237)
  %239 = load i32*, i32** %3, align 8
  %240 = call i8* @lua_touserdata(i32* %239, i32 -1)
  %241 = bitcast i8* %240 to %struct.TYPE_29__*
  store %struct.TYPE_29__* %241, %struct.TYPE_29__** %21, align 8
  %242 = load i32*, i32** %3, align 8
  %243 = call i32 @lua_pop(i32* %242, i32 1)
  %244 = load %struct.TYPE_29__*, %struct.TYPE_29__** %21, align 8
  %245 = icmp ne %struct.TYPE_29__* %244, null
  br i1 %245, label %246, label %310

246:                                              ; preds = %235
  %247 = load %struct.TYPE_29__*, %struct.TYPE_29__** %21, align 8
  %248 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %247, i32 0, i32 6
  %249 = load %struct.TYPE_28__*, %struct.TYPE_28__** %248, align 8
  %250 = icmp ne %struct.TYPE_28__* %249, null
  br i1 %250, label %251, label %260

251:                                              ; preds = %246
  %252 = load %struct.TYPE_29__*, %struct.TYPE_29__** %21, align 8
  %253 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %252, i32 0, i32 6
  %254 = load %struct.TYPE_28__*, %struct.TYPE_28__** %253, align 8
  %255 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %256 = icmp ne %struct.TYPE_28__* %254, %255
  br i1 %256, label %257, label %260

257:                                              ; preds = %251
  %258 = load i32*, i32** %3, align 8
  %259 = call i32 (i32*, i8*, ...) @luaL_error(i32* %258, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0))
  store i32 %259, i32* %2, align 4
  br label %485

260:                                              ; preds = %251, %246
  %261 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %262 = load %struct.TYPE_29__*, %struct.TYPE_29__** %21, align 8
  %263 = load i32*, i32** %3, align 8
  %264 = call i32 @ngx_http_lua_socket_check_busy_connecting(%struct.TYPE_28__* %261, %struct.TYPE_29__* %262, i32* %263)
  %265 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %266 = load %struct.TYPE_29__*, %struct.TYPE_29__** %21, align 8
  %267 = load i32*, i32** %3, align 8
  %268 = call i32 @ngx_http_lua_socket_check_busy_reading(%struct.TYPE_28__* %265, %struct.TYPE_29__* %266, i32* %267)
  %269 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %270 = load %struct.TYPE_29__*, %struct.TYPE_29__** %21, align 8
  %271 = load i32*, i32** %3, align 8
  %272 = call i32 @ngx_http_lua_socket_check_busy_writing(%struct.TYPE_28__* %269, %struct.TYPE_29__* %270, i32* %271)
  %273 = load %struct.TYPE_29__*, %struct.TYPE_29__** %21, align 8
  %274 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %273, i32 0, i32 8
  %275 = load i64, i64* %274, align 8
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %282, label %277

277:                                              ; preds = %260
  %278 = load %struct.TYPE_29__*, %struct.TYPE_29__** %21, align 8
  %279 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %278, i32 0, i32 7
  %280 = load i64, i64* %279, align 8
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %282, label %285

282:                                              ; preds = %277, %260
  %283 = load i32*, i32** %3, align 8
  %284 = call i32 (i32*, i8*, ...) @luaL_error(i32* %283, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.14, i64 0, i64 0))
  store i32 %284, i32* %2, align 4
  br label %485

285:                                              ; preds = %277
  %286 = load %struct.TYPE_29__*, %struct.TYPE_29__** %21, align 8
  %287 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %286, i32 0, i32 5
  %288 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %287, i32 0, i32 2
  %289 = load i64, i64* %288, align 8
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %291, label %302

291:                                              ; preds = %285
  %292 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %293 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %294 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %293, i32 0, i32 0
  %295 = load %struct.TYPE_25__*, %struct.TYPE_25__** %294, align 8
  %296 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 4
  %298 = call i32 @ngx_log_debug0(i32 %292, i32 %297, i32 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.15, i64 0, i64 0))
  %299 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %300 = load %struct.TYPE_29__*, %struct.TYPE_29__** %21, align 8
  %301 = call i32 @ngx_http_lua_socket_tcp_finalize(%struct.TYPE_28__* %299, %struct.TYPE_29__* %300)
  br label %302

302:                                              ; preds = %291, %285
  %303 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %304 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %305 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %304, i32 0, i32 0
  %306 = load %struct.TYPE_25__*, %struct.TYPE_25__** %305, align 8
  %307 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 4
  %309 = call i32 @ngx_log_debug0(i32 %303, i32 %308, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.16, i64 0, i64 0))
  br label %331

310:                                              ; preds = %235
  %311 = load i32*, i32** %3, align 8
  %312 = call %struct.TYPE_29__* @lua_newuserdata(i32* %311, i32 80)
  store %struct.TYPE_29__* %312, %struct.TYPE_29__** %21, align 8
  %313 = load %struct.TYPE_29__*, %struct.TYPE_29__** %21, align 8
  %314 = icmp eq %struct.TYPE_29__* %313, null
  br i1 %314, label %315, label %318

315:                                              ; preds = %310
  %316 = load i32*, i32** %3, align 8
  %317 = call i32 (i32*, i8*, ...) @luaL_error(i32* %316, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0))
  store i32 %317, i32* %2, align 4
  br label %485

318:                                              ; preds = %310
  %319 = load i32*, i32** %3, align 8
  %320 = load i32, i32* @upstream_udata_metatable_key, align 4
  %321 = call i32 @ngx_http_lua_lightudata_mask(i32 %320)
  %322 = call i32 @lua_pushlightuserdata(i32* %319, i32 %321)
  %323 = load i32*, i32** %3, align 8
  %324 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %325 = call i32 @lua_rawget(i32* %323, i32 %324)
  %326 = load i32*, i32** %3, align 8
  %327 = call i32 @lua_setmetatable(i32* %326, i32 -2)
  %328 = load i32*, i32** %3, align 8
  %329 = load i32, i32* @SOCKET_CTX_INDEX, align 4
  %330 = call i32 @lua_rawseti(i32* %328, i32 1, i32 %329)
  br label %331

331:                                              ; preds = %318, %302
  %332 = load %struct.TYPE_29__*, %struct.TYPE_29__** %21, align 8
  %333 = call i32 @ngx_memzero(%struct.TYPE_29__* %332, i32 80)
  %334 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %335 = load %struct.TYPE_29__*, %struct.TYPE_29__** %21, align 8
  %336 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %335, i32 0, i32 6
  store %struct.TYPE_28__* %334, %struct.TYPE_28__** %336, align 8
  %337 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %338 = load %struct.TYPE_29__*, %struct.TYPE_29__** %21, align 8
  %339 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %338, i32 0, i32 1
  store %struct.TYPE_30__* %337, %struct.TYPE_30__** %339, align 8
  %340 = load %struct.TYPE_29__*, %struct.TYPE_29__** %21, align 8
  %341 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %340, i32 0, i32 5
  store %struct.TYPE_27__* %341, %struct.TYPE_27__** %11, align 8
  %342 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %343 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %342, i32 0, i32 0
  %344 = load %struct.TYPE_25__*, %struct.TYPE_25__** %343, align 8
  %345 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %344, i32 0, i32 0
  %346 = load i32, i32* %345, align 4
  %347 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %348 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %347, i32 0, i32 0
  store i32 %346, i32* %348, align 8
  %349 = load i32, i32* @NGX_ERROR_ERR, align 4
  %350 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %351 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %350, i32 0, i32 1
  store i32 %349, i32* %351, align 4
  %352 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %353 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 8
  %355 = call i32 @dd(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i64 0, i64 0), i32 %354)
  %356 = load i32*, i32** %3, align 8
  %357 = load i32, i32* @SOCKET_CONNECT_TIMEOUT_INDEX, align 4
  %358 = call i32 @lua_rawgeti(i32* %356, i32 1, i32 %357)
  %359 = load i32*, i32** %3, align 8
  %360 = load i32, i32* @SOCKET_SEND_TIMEOUT_INDEX, align 4
  %361 = call i32 @lua_rawgeti(i32* %359, i32 1, i32 %360)
  %362 = load i32*, i32** %3, align 8
  %363 = load i32, i32* @SOCKET_READ_TIMEOUT_INDEX, align 4
  %364 = call i32 @lua_rawgeti(i32* %362, i32 1, i32 %363)
  %365 = load i32*, i32** %3, align 8
  %366 = call i64 @lua_tointeger(i32* %365, i32 -1)
  %367 = trunc i64 %366 to i32
  store i32 %367, i32* %14, align 4
  %368 = load i32*, i32** %3, align 8
  %369 = call i64 @lua_tointeger(i32* %368, i32 -2)
  %370 = trunc i64 %369 to i32
  store i32 %370, i32* %13, align 4
  %371 = load i32*, i32** %3, align 8
  %372 = call i64 @lua_tointeger(i32* %371, i32 -3)
  %373 = trunc i64 %372 to i32
  store i32 %373, i32* %12, align 4
  %374 = load i32*, i32** %3, align 8
  %375 = call i32 @lua_pop(i32* %374, i32 3)
  %376 = load i32, i32* %12, align 4
  %377 = icmp sgt i32 %376, 0
  br i1 %377, label %378, label %384

378:                                              ; preds = %331
  %379 = load i32, i32* %12, align 4
  %380 = sext i32 %379 to i64
  %381 = inttoptr i64 %380 to i8*
  %382 = load %struct.TYPE_29__*, %struct.TYPE_29__** %21, align 8
  %383 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %382, i32 0, i32 4
  store i8* %381, i8** %383, align 8
  br label %392

384:                                              ; preds = %331
  %385 = load %struct.TYPE_29__*, %struct.TYPE_29__** %21, align 8
  %386 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %385, i32 0, i32 1
  %387 = load %struct.TYPE_30__*, %struct.TYPE_30__** %386, align 8
  %388 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %387, i32 0, i32 3
  %389 = load i8*, i8** %388, align 8
  %390 = load %struct.TYPE_29__*, %struct.TYPE_29__** %21, align 8
  %391 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %390, i32 0, i32 4
  store i8* %389, i8** %391, align 8
  br label %392

392:                                              ; preds = %384, %378
  %393 = load i32, i32* %13, align 4
  %394 = icmp sgt i32 %393, 0
  br i1 %394, label %395, label %401

395:                                              ; preds = %392
  %396 = load i32, i32* %13, align 4
  %397 = sext i32 %396 to i64
  %398 = inttoptr i64 %397 to i8*
  %399 = load %struct.TYPE_29__*, %struct.TYPE_29__** %21, align 8
  %400 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %399, i32 0, i32 3
  store i8* %398, i8** %400, align 8
  br label %409

401:                                              ; preds = %392
  %402 = load %struct.TYPE_29__*, %struct.TYPE_29__** %21, align 8
  %403 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %402, i32 0, i32 1
  %404 = load %struct.TYPE_30__*, %struct.TYPE_30__** %403, align 8
  %405 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %404, i32 0, i32 2
  %406 = load i8*, i8** %405, align 8
  %407 = load %struct.TYPE_29__*, %struct.TYPE_29__** %21, align 8
  %408 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %407, i32 0, i32 3
  store i8* %406, i8** %408, align 8
  br label %409

409:                                              ; preds = %401, %395
  %410 = load i32, i32* %14, align 4
  %411 = icmp sgt i32 %410, 0
  br i1 %411, label %412, label %418

412:                                              ; preds = %409
  %413 = load i32, i32* %14, align 4
  %414 = sext i32 %413 to i64
  %415 = inttoptr i64 %414 to i8*
  %416 = load %struct.TYPE_29__*, %struct.TYPE_29__** %21, align 8
  %417 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %416, i32 0, i32 2
  store i8* %415, i8** %417, align 8
  br label %426

418:                                              ; preds = %409
  %419 = load %struct.TYPE_29__*, %struct.TYPE_29__** %21, align 8
  %420 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %419, i32 0, i32 1
  %421 = load %struct.TYPE_30__*, %struct.TYPE_30__** %420, align 8
  %422 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %421, i32 0, i32 1
  %423 = load i8*, i8** %422, align 8
  %424 = load %struct.TYPE_29__*, %struct.TYPE_29__** %21, align 8
  %425 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %424, i32 0, i32 2
  store i8* %423, i8** %425, align 8
  br label %426

426:                                              ; preds = %418, %412
  %427 = load i32*, i32** %3, align 8
  %428 = load i32, i32* @socket_pool_key, align 4
  %429 = call i32 @ngx_http_lua_lightudata_mask(i32 %428)
  %430 = call i32 @lua_pushlightuserdata(i32* %427, i32 %429)
  %431 = load i32*, i32** %3, align 8
  %432 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %433 = call i32 @lua_rawget(i32* %431, i32 %432)
  %434 = load i32*, i32** %3, align 8
  %435 = load i32, i32* %16, align 4
  %436 = call i32 @lua_pushvalue(i32* %434, i32 %435)
  %437 = load i32*, i32** %3, align 8
  %438 = call i32 @lua_rawget(i32* %437, i32 -2)
  %439 = load i32*, i32** %3, align 8
  %440 = call i8* @lua_touserdata(i32* %439, i32 -1)
  %441 = bitcast i8* %440 to i32*
  store i32* %441, i32** %22, align 8
  %442 = load i32*, i32** %3, align 8
  %443 = call i32 @lua_pop(i32* %442, i32 1)
  %444 = load i32*, i32** %22, align 8
  %445 = icmp ne i32* %444, null
  br i1 %445, label %446, label %450

446:                                              ; preds = %426
  %447 = load i32*, i32** %22, align 8
  %448 = load %struct.TYPE_29__*, %struct.TYPE_29__** %21, align 8
  %449 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %448, i32 0, i32 0
  store i32* %447, i32** %449, align 8
  br label %476

450:                                              ; preds = %426
  %451 = load i64, i64* %18, align 8
  %452 = icmp sgt i64 %451, 0
  br i1 %452, label %453, label %475

453:                                              ; preds = %450
  %454 = load i32*, i32** %3, align 8
  %455 = load i32, i32* %16, align 4
  %456 = call i32 @lua_pushvalue(i32* %454, i32 %455)
  %457 = load i32*, i32** %3, align 8
  %458 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %19, i32 0, i32 0
  %459 = call i64 @lua_tolstring(i32* %457, i32 -1, i32* %458)
  %460 = inttoptr i64 %459 to i32*
  %461 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %19, i32 0, i32 1
  store i32* %460, i32** %461, align 8
  %462 = load i32*, i32** %3, align 8
  %463 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %464 = load i64, i64* %18, align 8
  %465 = load i64, i64* %17, align 8
  %466 = bitcast %struct.TYPE_26__* %19 to { i32, i32* }*
  %467 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %466, i32 0, i32 0
  %468 = load i32, i32* %467, align 8
  %469 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %466, i32 0, i32 1
  %470 = load i32*, i32** %469, align 8
  %471 = call i32 @ngx_http_lua_socket_tcp_create_socket_pool(i32* %462, %struct.TYPE_28__* %463, i32 %468, i32* %470, i64 %464, i64 %465, i32** %22)
  %472 = load i32*, i32** %22, align 8
  %473 = load %struct.TYPE_29__*, %struct.TYPE_29__** %21, align 8
  %474 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %473, i32 0, i32 0
  store i32* %472, i32** %474, align 8
  br label %475

475:                                              ; preds = %453, %450
  br label %476

476:                                              ; preds = %475, %446
  %477 = load i32*, i32** %3, align 8
  %478 = load %struct.TYPE_29__*, %struct.TYPE_29__** %21, align 8
  %479 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %480 = load i32*, i32** %5, align 8
  %481 = load i32*, i32** %8, align 8
  %482 = load i64, i64* %9, align 8
  %483 = load i32, i32* %6, align 4
  %484 = call i32 @ngx_http_lua_socket_tcp_connect_helper(i32* %477, %struct.TYPE_29__* %478, %struct.TYPE_28__* %479, i32* %480, i32* %481, i64 %482, i32 %483, i32 0)
  store i32 %484, i32* %2, align 4
  br label %485

485:                                              ; preds = %476, %315, %282, %257, %205, %135, %109, %95, %51, %42, %33
  %486 = load i32, i32* %2, align 4
  ret i32 %486
}

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @luaL_error(i32*, i8*, ...) #1

declare dso_local %struct.TYPE_28__* @ngx_http_lua_get_req(i32*) #1

declare dso_local i32* @ngx_http_get_module_ctx(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @ngx_http_lua_check_context(i32*, i32*, i32) #1

declare dso_local i32 @luaL_checktype(i32*, i32, i64) #1

declare dso_local i64 @luaL_checklstring(i32*, i32, i64*) #1

declare dso_local %struct.TYPE_30__* @ngx_http_get_module_loc_conf(%struct.TYPE_28__*, i32) #1

declare dso_local i64 @lua_type(i32*, i32) #1

declare dso_local i32 @lua_getfield(i32*, i32, i8*) #1

declare dso_local i64 @lua_isnumber(i32*, i32) #1

declare dso_local i64 @lua_tointeger(i32*, i32) #1

declare dso_local i8* @lua_pushfstring(i32*, i8*, i32) #1

declare dso_local i32 @luaL_argerror(i32*, i32, i8*) #1

declare dso_local i32 @lua_isnil(i32*, i32) #1

declare dso_local i32 @lua_typename(i32*, i64) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32 @lua_tostring(i32*, i32) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @lua_rawseti(i32*, i32, i32) #1

declare dso_local i32 @luaL_typename(i32*, i32) #1

declare dso_local i32 @luaL_checkinteger(i32*, i32) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i32 @lua_pushliteral(i32*, i8*) #1

declare dso_local i32 @lua_insert(i32*, i32) #1

declare dso_local i32 @lua_concat(i32*, i32) #1

declare dso_local i32 @dd(i8*, i32) #1

declare dso_local i32 @lua_rawgeti(i32*, i32, i32) #1

declare dso_local i8* @lua_touserdata(i32*, i32) #1

declare dso_local i32 @ngx_http_lua_socket_check_busy_connecting(%struct.TYPE_28__*, %struct.TYPE_29__*, i32*) #1

declare dso_local i32 @ngx_http_lua_socket_check_busy_reading(%struct.TYPE_28__*, %struct.TYPE_29__*, i32*) #1

declare dso_local i32 @ngx_http_lua_socket_check_busy_writing(%struct.TYPE_28__*, %struct.TYPE_29__*, i32*) #1

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i32 @ngx_http_lua_socket_tcp_finalize(%struct.TYPE_28__*, %struct.TYPE_29__*) #1

declare dso_local %struct.TYPE_29__* @lua_newuserdata(i32*, i32) #1

declare dso_local i32 @lua_pushlightuserdata(i32*, i32) #1

declare dso_local i32 @ngx_http_lua_lightudata_mask(i32) #1

declare dso_local i32 @lua_rawget(i32*, i32) #1

declare dso_local i32 @lua_setmetatable(i32*, i32) #1

declare dso_local i32 @ngx_memzero(%struct.TYPE_29__*, i32) #1

declare dso_local i64 @lua_tolstring(i32*, i32, i32*) #1

declare dso_local i32 @ngx_http_lua_socket_tcp_create_socket_pool(i32*, %struct.TYPE_28__*, i32, i32*, i64, i64, i32**) #1

declare dso_local i32 @ngx_http_lua_socket_tcp_connect_helper(i32*, %struct.TYPE_29__*, %struct.TYPE_28__*, i32*, i32*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
