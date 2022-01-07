; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_socket_tcp.c_ngx_http_lua_socket_tcp_receive.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_socket_tcp.c_ngx_http_lua_socket_tcp_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_22__ = type { i64, i64, i8*, i32, %struct.TYPE_21__*, i64, i64, %struct.TYPE_18__, i64 }
%struct.TYPE_18__ = type { i32* }
%struct.TYPE_20__ = type { i8*, i32 }
%struct.TYPE_23__ = type { i64 }

@.str = private unnamed_addr constant [62 x i8] c"expecting 1 or 2 arguments (including the object), but got %d\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"no request found\00", align 1
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"lua tcp socket calling receive() method\00", align 1
@LUA_TTABLE = common dso_local global i32 0, align 4
@SOCKET_CTX_INDEX = common dso_local global i32 0, align 4
@ngx_http_lua_module = common dso_local global i32 0, align 4
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [69 x i8] c"attempt to receive data on a closed socket: u:%p, c:%p, ft:%d eof:%d\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"closed\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"bad request\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"lua tcp socket read timeout: %M\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"bad pattern argument: %s\00", align 1
@ngx_http_lua_socket_read_line = common dso_local global i8* null, align 8
@ngx_http_lua_socket_read_all = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [21 x i8] c"bad pattern argument\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ngx_http_lua_socket_read_chunk = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ngx_http_lua_socket_tcp_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_lua_socket_tcp_receive(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_20__, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_23__*, align 8
  store i32* %0, i32** %3, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @lua_gettop(i32* %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 1
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 2
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load i32*, i32** %3, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 (i32*, i8*, ...) @luaL_error(i32* %20, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %21)
  store i32 %22, i32* %2, align 4
  br label %243

23:                                               ; preds = %16, %1
  %24 = load i32*, i32** %3, align 8
  %25 = call %struct.TYPE_21__* @ngx_http_lua_get_req(i32* %24)
  store %struct.TYPE_21__* %25, %struct.TYPE_21__** %4, align 8
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %27 = icmp eq %struct.TYPE_21__* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 (i32*, i8*, ...) @luaL_error(i32* %29, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i32 %30, i32* %2, align 4
  br label %243

31:                                               ; preds = %23
  %32 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @ngx_log_debug0(i32 %32, i32 %37, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %39 = load i32*, i32** %3, align 8
  %40 = load i32, i32* @LUA_TTABLE, align 4
  %41 = call i32 @luaL_checktype(i32* %39, i32 1, i32 %40)
  %42 = load i32*, i32** %3, align 8
  %43 = load i32, i32* @SOCKET_CTX_INDEX, align 4
  %44 = call i32 @lua_rawgeti(i32* %42, i32 1, i32 %43)
  %45 = load i32*, i32** %3, align 8
  %46 = call %struct.TYPE_22__* @lua_touserdata(i32* %45, i32 -1)
  store %struct.TYPE_22__* %46, %struct.TYPE_22__** %5, align 8
  %47 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %48 = icmp eq %struct.TYPE_22__* %47, null
  br i1 %48, label %60, label %49

49:                                               ; preds = %31
  %50 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %50, i32 0, i32 7
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %60, label %55

55:                                               ; preds = %49
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %56, i32 0, i32 8
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %112

60:                                               ; preds = %55, %49, %31
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %62 = load i32, i32* @ngx_http_lua_module, align 4
  %63 = call %struct.TYPE_23__* @ngx_http_get_module_loc_conf(%struct.TYPE_21__* %61, i32 %62)
  store %struct.TYPE_23__* %63, %struct.TYPE_23__** %11, align 8
  %64 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %107

68:                                               ; preds = %60
  %69 = load i32, i32* @NGX_LOG_ERR, align 4
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %76 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %77 = icmp ne %struct.TYPE_22__* %76, null
  br i1 %77, label %78, label %83

78:                                               ; preds = %68
  %79 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %79, i32 0, i32 7
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  br label %84

83:                                               ; preds = %68
  br label %84

84:                                               ; preds = %83, %78
  %85 = phi i32* [ %82, %78 ], [ null, %83 ]
  %86 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %87 = icmp ne %struct.TYPE_22__* %86, null
  br i1 %87, label %88, label %93

88:                                               ; preds = %84
  %89 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %89, i32 0, i32 6
  %91 = load i64, i64* %90, align 8
  %92 = trunc i64 %91 to i32
  br label %94

93:                                               ; preds = %84
  br label %94

94:                                               ; preds = %93, %88
  %95 = phi i32 [ %92, %88 ], [ 0, %93 ]
  %96 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %97 = icmp ne %struct.TYPE_22__* %96, null
  br i1 %97, label %98, label %103

98:                                               ; preds = %94
  %99 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %99, i32 0, i32 5
  %101 = load i64, i64* %100, align 8
  %102 = trunc i64 %101 to i32
  br label %104

103:                                              ; preds = %94
  br label %104

104:                                              ; preds = %103, %98
  %105 = phi i32 [ %102, %98 ], [ 0, %103 ]
  %106 = call i32 @ngx_log_error(i32 %69, i32 %74, i32 0, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_22__* %75, i32* %85, i32 %95, i32 %105)
  br label %107

107:                                              ; preds = %104, %60
  %108 = load i32*, i32** %3, align 8
  %109 = call i32 @lua_pushnil(i32* %108)
  %110 = load i32*, i32** %3, align 8
  %111 = call i32 @lua_pushliteral(i32* %110, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  store i32 2, i32* %2, align 4
  br label %243

112:                                              ; preds = %55
  %113 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %113, i32 0, i32 4
  %115 = load %struct.TYPE_21__*, %struct.TYPE_21__** %114, align 8
  %116 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %117 = icmp ne %struct.TYPE_21__* %115, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %112
  %119 = load i32*, i32** %3, align 8
  %120 = call i32 (i32*, i8*, ...) @luaL_error(i32* %119, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  store i32 %120, i32* %2, align 4
  br label %243

121:                                              ; preds = %112
  %122 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %123 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %124 = load i32*, i32** %3, align 8
  %125 = call i32 @ngx_http_lua_socket_check_busy_connecting(%struct.TYPE_21__* %122, %struct.TYPE_22__* %123, i32* %124)
  %126 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %127 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %128 = load i32*, i32** %3, align 8
  %129 = call i32 @ngx_http_lua_socket_check_busy_reading(%struct.TYPE_21__* %126, %struct.TYPE_22__* %127, i32* %128)
  %130 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %131 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_19__*, %struct.TYPE_19__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @ngx_log_debug1(i32 %130, i32 %135, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 %138)
  %140 = load i32, i32* %6, align 4
  %141 = icmp sgt i32 %140, 1
  br i1 %141, label %142, label %230

142:                                              ; preds = %121
  %143 = load i32*, i32** %3, align 8
  %144 = call i64 @lua_isnumber(i32* %143, i32 2)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %142
  store i32 129, i32* %10, align 4
  br label %150

147:                                              ; preds = %142
  %148 = load i32*, i32** %3, align 8
  %149 = call i32 @lua_type(i32* %148, i32 2)
  store i32 %149, i32* %10, align 4
  br label %150

150:                                              ; preds = %147, %146
  %151 = load i32, i32* %10, align 4
  switch i32 %151, label %226 [
    i32 128, label %152
    i32 129, label %199
  ]

152:                                              ; preds = %150
  %153 = load i32*, i32** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 1
  %155 = call i64 @luaL_checklstring(i32* %153, i32 2, i32* %154)
  %156 = inttoptr i64 %155 to i8*
  %157 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 0
  store i8* %156, i8** %157, align 8
  %158 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = icmp ne i32 %159, 2
  br i1 %160, label %168, label %161

161:                                              ; preds = %152
  %162 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 0
  %163 = load i8*, i8** %162, align 8
  %164 = getelementptr inbounds i8, i8* %163, i64 0
  %165 = load i8, i8* %164, align 1
  %166 = sext i8 %165 to i32
  %167 = icmp ne i32 %166, 42
  br i1 %167, label %168, label %177

168:                                              ; preds = %161, %152
  %169 = load i32*, i32** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 0
  %171 = load i8*, i8** %170, align 8
  %172 = call i64 @lua_pushfstring(i32* %169, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i8* %171)
  %173 = inttoptr i64 %172 to i8*
  store i8* %173, i8** %9, align 8
  %174 = load i32*, i32** %3, align 8
  %175 = load i8*, i8** %9, align 8
  %176 = call i32 @luaL_argerror(i32* %174, i32 2, i8* %175)
  store i32 %176, i32* %2, align 4
  br label %243

177:                                              ; preds = %161
  %178 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 0
  %179 = load i8*, i8** %178, align 8
  %180 = getelementptr inbounds i8, i8* %179, i64 1
  %181 = load i8, i8* %180, align 1
  %182 = sext i8 %181 to i32
  switch i32 %182, label %191 [
    i32 108, label %183
    i32 97, label %187
  ]

183:                                              ; preds = %177
  %184 = load i8*, i8** @ngx_http_lua_socket_read_line, align 8
  %185 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %185, i32 0, i32 2
  store i8* %184, i8** %186, align 8
  br label %194

187:                                              ; preds = %177
  %188 = load i8*, i8** @ngx_http_lua_socket_read_all, align 8
  %189 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %189, i32 0, i32 2
  store i8* %188, i8** %190, align 8
  br label %194

191:                                              ; preds = %177
  %192 = load i32*, i32** %3, align 8
  %193 = call i32 @luaL_argerror(i32* %192, i32 2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  store i32 %193, i32* %2, align 4
  br label %243

194:                                              ; preds = %187, %183
  %195 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %195, i32 0, i32 0
  store i64 0, i64* %196, align 8
  %197 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %197, i32 0, i32 1
  store i64 0, i64* %198, align 8
  br label %229

199:                                              ; preds = %150
  %200 = load i32*, i32** %3, align 8
  %201 = call i32 @lua_tointeger(i32* %200, i32 2)
  store i32 %201, i32* %8, align 4
  %202 = load i32, i32* %8, align 4
  %203 = icmp slt i32 %202, 0
  br i1 %203, label %204, label %207

204:                                              ; preds = %199
  %205 = load i32*, i32** %3, align 8
  %206 = call i32 @luaL_argerror(i32* %205, i32 2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  store i32 %206, i32* %2, align 4
  br label %243

207:                                              ; preds = %199
  %208 = load i32, i32* %8, align 4
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %213

210:                                              ; preds = %207
  %211 = load i32*, i32** %3, align 8
  %212 = call i32 @lua_pushliteral(i32* %211, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %243

213:                                              ; preds = %207
  %214 = load i8*, i8** @ngx_http_lua_socket_read_chunk, align 8
  %215 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %216 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %215, i32 0, i32 2
  store i8* %214, i8** %216, align 8
  %217 = load i32, i32* %8, align 4
  %218 = sext i32 %217 to i64
  %219 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %220 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %219, i32 0, i32 0
  store i64 %218, i64* %220, align 8
  %221 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %222 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %225 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %224, i32 0, i32 1
  store i64 %223, i64* %225, align 8
  br label %229

226:                                              ; preds = %150
  %227 = load i32*, i32** %3, align 8
  %228 = call i32 @luaL_argerror(i32* %227, i32 2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  store i32 %228, i32* %2, align 4
  br label %243

229:                                              ; preds = %213, %194
  br label %238

230:                                              ; preds = %121
  %231 = load i8*, i8** @ngx_http_lua_socket_read_line, align 8
  %232 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %233 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %232, i32 0, i32 2
  store i8* %231, i8** %233, align 8
  %234 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %235 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %234, i32 0, i32 0
  store i64 0, i64* %235, align 8
  %236 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %237 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %236, i32 0, i32 1
  store i64 0, i64* %237, align 8
  br label %238

238:                                              ; preds = %230, %229
  %239 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %240 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %241 = load i32*, i32** %3, align 8
  %242 = call i32 @ngx_http_lua_socket_tcp_receive_helper(%struct.TYPE_21__* %239, %struct.TYPE_22__* %240, i32* %241)
  store i32 %242, i32* %2, align 4
  br label %243

243:                                              ; preds = %238, %226, %210, %204, %191, %168, %118, %107, %28, %19
  %244 = load i32, i32* %2, align 4
  ret i32 %244
}

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @luaL_error(i32*, i8*, ...) #1

declare dso_local %struct.TYPE_21__* @ngx_http_lua_get_req(i32*) #1

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i32 @luaL_checktype(i32*, i32, i32) #1

declare dso_local i32 @lua_rawgeti(i32*, i32, i32) #1

declare dso_local %struct.TYPE_22__* @lua_touserdata(i32*, i32) #1

declare dso_local %struct.TYPE_23__* @ngx_http_get_module_loc_conf(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, %struct.TYPE_22__*, i32*, i32, i32) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i32 @lua_pushliteral(i32*, i8*) #1

declare dso_local i32 @ngx_http_lua_socket_check_busy_connecting(%struct.TYPE_21__*, %struct.TYPE_22__*, i32*) #1

declare dso_local i32 @ngx_http_lua_socket_check_busy_reading(%struct.TYPE_21__*, %struct.TYPE_22__*, i32*) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i32) #1

declare dso_local i64 @lua_isnumber(i32*, i32) #1

declare dso_local i32 @lua_type(i32*, i32) #1

declare dso_local i64 @luaL_checklstring(i32*, i32, i32*) #1

declare dso_local i64 @lua_pushfstring(i32*, i8*, i8*) #1

declare dso_local i32 @luaL_argerror(i32*, i32, i8*) #1

declare dso_local i32 @lua_tointeger(i32*, i32) #1

declare dso_local i32 @ngx_http_lua_socket_tcp_receive_helper(%struct.TYPE_21__*, %struct.TYPE_22__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
