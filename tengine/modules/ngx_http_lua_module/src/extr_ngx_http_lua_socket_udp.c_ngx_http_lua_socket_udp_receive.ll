; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_socket_udp.c_ngx_http_lua_socket_udp_receive.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_socket_udp.c_ngx_http_lua_socket_udp_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_23__ = type { i32, i64, i64, i32 (%struct.TYPE_22__*, %struct.TYPE_23__*, i32*)*, %struct.TYPE_26__*, i32, i64, %struct.TYPE_22__*, %struct.TYPE_20__ }
%struct.TYPE_26__ = type { %struct.TYPE_23__*, i32 }
%struct.TYPE_20__ = type { i32* }
%struct.TYPE_25__ = type { i64, %struct.TYPE_26__* }
%struct.TYPE_24__ = type { i64 }

@.str = private unnamed_addr constant [62 x i8] c"expecting 1 or 2 arguments (including the object), but got %d\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"no request found\00", align 1
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"lua udp socket calling receive() method\00", align 1
@LUA_TTABLE = common dso_local global i32 0, align 4
@SOCKET_CTX_INDEX = common dso_local global i32 0, align 4
@ngx_http_lua_module = common dso_local global i32 0, align 4
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [55 x i8] c"attempt to receive data on a closed socket: u:%p, c:%p\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"closed\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"bad request\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"socket busy\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"lua udp socket read timeout: %M\00", align 1
@UDP_MAX_DATAGRAM_SIZE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [40 x i8] c"lua udp socket receive buffer size: %uz\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [16 x i8] c"read failed: %d\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"udp receive retval returned: %d\00", align 1
@NGX_OK = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [44 x i8] c"lua udp socket receive done in a single run\00", align 1
@ngx_http_lua_socket_udp_read_handler = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [21 x i8] c"no request ctx found\00", align 1
@ngx_http_lua_udp_socket_cleanup = common dso_local global i32 0, align 4
@ngx_http_lua_content_wev_handler = common dso_local global i32 0, align 4
@ngx_http_core_run_phases = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ngx_http_lua_socket_udp_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_lua_socket_udp_receive(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_25__*, align 8
  %8 = alloca %struct.TYPE_26__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_24__*, align 8
  store i32* %0, i32** %3, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @lua_gettop(i32* %12)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp ne i32 %14, 1
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 2
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load i32*, i32** %3, align 8
  %21 = load i32, i32* %10, align 4
  %22 = call i32 (i32*, i8*, ...) @luaL_error(i32* %20, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %21)
  store i32 %22, i32* %2, align 4
  br label %230

23:                                               ; preds = %16, %1
  %24 = load i32*, i32** %3, align 8
  %25 = call %struct.TYPE_22__* @ngx_http_lua_get_req(i32* %24)
  store %struct.TYPE_22__* %25, %struct.TYPE_22__** %4, align 8
  %26 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %27 = icmp eq %struct.TYPE_22__* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 (i32*, i8*, ...) @luaL_error(i32* %29, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i32 %30, i32* %2, align 4
  br label %230

31:                                               ; preds = %23
  %32 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %33 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @ngx_log_debug0(i32 %32, i32 %37, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %39 = load i32*, i32** %3, align 8
  %40 = load i32, i32* @LUA_TTABLE, align 4
  %41 = call i32 @luaL_checktype(i32* %39, i32 1, i32 %40)
  %42 = load i32*, i32** %3, align 8
  %43 = load i32, i32* @SOCKET_CTX_INDEX, align 4
  %44 = call i32 @lua_rawgeti(i32* %42, i32 1, i32 %43)
  %45 = load i32*, i32** %3, align 8
  %46 = call %struct.TYPE_23__* @lua_touserdata(i32* %45, i32 -1)
  store %struct.TYPE_23__* %46, %struct.TYPE_23__** %5, align 8
  %47 = load i32*, i32** %3, align 8
  %48 = call i32 @lua_pop(i32* %47, i32 1)
  %49 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %50 = icmp eq %struct.TYPE_23__* %49, null
  br i1 %50, label %57, label %51

51:                                               ; preds = %31
  %52 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %52, i32 0, i32 8
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %89

57:                                               ; preds = %51, %31
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %59 = load i32, i32* @ngx_http_lua_module, align 4
  %60 = call %struct.TYPE_24__* @ngx_http_get_module_loc_conf(%struct.TYPE_22__* %58, i32 %59)
  store %struct.TYPE_24__* %60, %struct.TYPE_24__** %11, align 8
  %61 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %84

65:                                               ; preds = %57
  %66 = load i32, i32* @NGX_LOG_ERR, align 4
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %73 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %74 = icmp ne %struct.TYPE_23__* %73, null
  br i1 %74, label %75, label %80

75:                                               ; preds = %65
  %76 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %76, i32 0, i32 8
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  br label %81

80:                                               ; preds = %65
  br label %81

81:                                               ; preds = %80, %75
  %82 = phi i32* [ %79, %75 ], [ null, %80 ]
  %83 = call i32 @ngx_log_error(i32 %66, i32 %71, i32 0, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_23__* %72, i32* %82)
  br label %84

84:                                               ; preds = %81, %57
  %85 = load i32*, i32** %3, align 8
  %86 = call i32 @lua_pushnil(i32* %85)
  %87 = load i32*, i32** %3, align 8
  %88 = call i32 @lua_pushliteral(i32* %87, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  store i32 2, i32* %2, align 4
  br label %230

89:                                               ; preds = %51
  %90 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %90, i32 0, i32 7
  %92 = load %struct.TYPE_22__*, %struct.TYPE_22__** %91, align 8
  %93 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %94 = icmp ne %struct.TYPE_22__* %92, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %89
  %96 = load i32*, i32** %3, align 8
  %97 = call i32 (i32*, i8*, ...) @luaL_error(i32* %96, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  store i32 %97, i32* %2, align 4
  br label %230

98:                                               ; preds = %89
  %99 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %99, i32 0, i32 6
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %98
  %104 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %104, i32 0, i32 6
  store i64 0, i64* %105, align 8
  br label %106

106:                                              ; preds = %103, %98
  %107 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %106
  %112 = load i32*, i32** %3, align 8
  %113 = call i32 @lua_pushnil(i32* %112)
  %114 = load i32*, i32** %3, align 8
  %115 = call i32 @lua_pushliteral(i32* %114, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  store i32 2, i32* %2, align 4
  br label %230

116:                                              ; preds = %106
  %117 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %118 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %118, i32 0, i32 1
  %120 = load %struct.TYPE_21__*, %struct.TYPE_21__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = call i32 @ngx_log_debug1(i32 %117, i32 %122, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i64 %125)
  %127 = load i32*, i32** %3, align 8
  %128 = load i32, i32* @UDP_MAX_DATAGRAM_SIZE, align 4
  %129 = call i64 @luaL_optnumber(i32* %127, i32 2, i32 %128)
  store i64 %129, i64* %9, align 8
  %130 = load i64, i64* %9, align 8
  %131 = load i32, i32* @UDP_MAX_DATAGRAM_SIZE, align 4
  %132 = call i64 @ngx_min(i64 %130, i32 %131)
  store i64 %132, i64* %9, align 8
  %133 = load i64, i64* %9, align 8
  %134 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %134, i32 0, i32 2
  store i64 %133, i64* %135, align 8
  %136 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %137 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_21__*, %struct.TYPE_21__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = call i32 @ngx_log_debug1(i32 %136, i32 %141, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0), i64 %144)
  %146 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %147 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %148 = call i64 @ngx_http_lua_socket_udp_read(%struct.TYPE_22__* %146, %struct.TYPE_23__* %147)
  store i64 %148, i64* %6, align 8
  %149 = load i64, i64* %6, align 8
  %150 = load i64, i64* @NGX_ERROR, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %168

152:                                              ; preds = %116
  %153 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %153, i32 0, i32 6
  %155 = load i64, i64* %154, align 8
  %156 = trunc i64 %155 to i32
  %157 = call i32 @dd(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i32 %156)
  %158 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %159 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %160 = load i32*, i32** %3, align 8
  %161 = call i32 @ngx_http_lua_socket_udp_receive_retval_handler(%struct.TYPE_22__* %158, %struct.TYPE_23__* %159, i32* %160)
  %162 = sext i32 %161 to i64
  store i64 %162, i64* %6, align 8
  %163 = load i64, i64* %6, align 8
  %164 = trunc i64 %163 to i32
  %165 = call i32 @dd(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0), i32 %164)
  %166 = load i64, i64* %6, align 8
  %167 = trunc i64 %166 to i32
  store i32 %167, i32* %2, align 4
  br label %230

168:                                              ; preds = %116
  %169 = load i64, i64* %6, align 8
  %170 = load i64, i64* @NGX_OK, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %172, label %184

172:                                              ; preds = %168
  %173 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %174 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %174, i32 0, i32 1
  %176 = load %struct.TYPE_21__*, %struct.TYPE_21__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @ngx_log_debug0(i32 %173, i32 %178, i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.11, i64 0, i64 0))
  %180 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %181 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %182 = load i32*, i32** %3, align 8
  %183 = call i32 @ngx_http_lua_socket_udp_receive_retval_handler(%struct.TYPE_22__* %180, %struct.TYPE_23__* %181, i32* %182)
  store i32 %183, i32* %2, align 4
  br label %230

184:                                              ; preds = %168
  %185 = load i32, i32* @ngx_http_lua_socket_udp_read_handler, align 4
  %186 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %186, i32 0, i32 5
  store i32 %185, i32* %187, align 8
  %188 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %189 = load i32, i32* @ngx_http_lua_module, align 4
  %190 = call %struct.TYPE_25__* @ngx_http_get_module_ctx(%struct.TYPE_22__* %188, i32 %189)
  store %struct.TYPE_25__* %190, %struct.TYPE_25__** %7, align 8
  %191 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %192 = icmp eq %struct.TYPE_25__* %191, null
  br i1 %192, label %193, label %196

193:                                              ; preds = %184
  %194 = load i32*, i32** %3, align 8
  %195 = call i32 (i32*, i8*, ...) @luaL_error(i32* %194, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0))
  store i32 %195, i32* %2, align 4
  br label %230

196:                                              ; preds = %184
  %197 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %198 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %197, i32 0, i32 1
  %199 = load %struct.TYPE_26__*, %struct.TYPE_26__** %198, align 8
  store %struct.TYPE_26__* %199, %struct.TYPE_26__** %8, align 8
  %200 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %201 = call i32 @ngx_http_lua_cleanup_pending_operation(%struct.TYPE_26__* %200)
  %202 = load i32, i32* @ngx_http_lua_udp_socket_cleanup, align 4
  %203 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %204 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %203, i32 0, i32 1
  store i32 %202, i32* %204, align 8
  %205 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %206 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %207 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %206, i32 0, i32 0
  store %struct.TYPE_23__* %205, %struct.TYPE_23__** %207, align 8
  %208 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %209 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %216

212:                                              ; preds = %196
  %213 = load i32, i32* @ngx_http_lua_content_wev_handler, align 4
  %214 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %215 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %214, i32 0, i32 0
  store i32 %213, i32* %215, align 8
  br label %220

216:                                              ; preds = %196
  %217 = load i32, i32* @ngx_http_core_run_phases, align 4
  %218 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %219 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %218, i32 0, i32 0
  store i32 %217, i32* %219, align 8
  br label %220

220:                                              ; preds = %216, %212
  %221 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %222 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %222, i32 0, i32 4
  store %struct.TYPE_26__* %221, %struct.TYPE_26__** %223, align 8
  %224 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %225 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %224, i32 0, i32 0
  store i32 1, i32* %225, align 8
  %226 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %227 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %226, i32 0, i32 3
  store i32 (%struct.TYPE_22__*, %struct.TYPE_23__*, i32*)* @ngx_http_lua_socket_udp_receive_retval_handler, i32 (%struct.TYPE_22__*, %struct.TYPE_23__*, i32*)** %227, align 8
  %228 = load i32*, i32** %3, align 8
  %229 = call i32 @lua_yield(i32* %228, i32 0)
  store i32 %229, i32* %2, align 4
  br label %230

230:                                              ; preds = %220, %193, %172, %152, %111, %95, %84, %28, %19
  %231 = load i32, i32* %2, align 4
  ret i32 %231
}

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @luaL_error(i32*, i8*, ...) #1

declare dso_local %struct.TYPE_22__* @ngx_http_lua_get_req(i32*) #1

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i32 @luaL_checktype(i32*, i32, i32) #1

declare dso_local i32 @lua_rawgeti(i32*, i32, i32) #1

declare dso_local %struct.TYPE_23__* @lua_touserdata(i32*, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local %struct.TYPE_24__* @ngx_http_get_module_loc_conf(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, %struct.TYPE_23__*, i32*) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i32 @lua_pushliteral(i32*, i8*) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i64) #1

declare dso_local i64 @luaL_optnumber(i32*, i32, i32) #1

declare dso_local i64 @ngx_min(i64, i32) #1

declare dso_local i64 @ngx_http_lua_socket_udp_read(%struct.TYPE_22__*, %struct.TYPE_23__*) #1

declare dso_local i32 @dd(i8*, i32) #1

declare dso_local i32 @ngx_http_lua_socket_udp_receive_retval_handler(%struct.TYPE_22__*, %struct.TYPE_23__*, i32*) #1

declare dso_local %struct.TYPE_25__* @ngx_http_get_module_ctx(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @ngx_http_lua_cleanup_pending_operation(%struct.TYPE_26__*) #1

declare dso_local i32 @lua_yield(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
