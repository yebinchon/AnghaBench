; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_socket_udp.c_ngx_http_lua_socket_udp_send.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_socket_udp.c_ngx_http_lua_socket_udp_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32, %struct.TYPE_15__, i64, %struct.TYPE_17__* }
%struct.TYPE_15__ = type { i32* }
%struct.TYPE_16__ = type { i64, i32* }
%struct.TYPE_19__ = type { i64 }

@.str = private unnamed_addr constant [57 x i8] c"expecting 2 arguments (including the object), but got %d\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"request object not found\00", align 1
@SOCKET_CTX_INDEX = common dso_local global i32 0, align 4
@ngx_http_lua_module = common dso_local global i32 0, align 4
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"attempt to send data on a closed socket: u:%p, c:%p\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"closed\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"bad request\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"socket busy\00", align 1
@.str.6 = private unnamed_addr constant [62 x i8] c"string, number, boolean, nil, or array table expected, got %s\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"impossible to reach here\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"sending query %.*s\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"ngx_send returns %d (query len %d)\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_AGAIN = common dso_local global i64 0, align 8
@ngx_socket_errno = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [29 x i8] c"not the while query was sent\00", align 1
@NGX_HTTP_LUA_SOCKET_FT_PARTIALWRITE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [9 x i8] c"n == len\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ngx_http_lua_socket_udp_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_lua_socket_udp_send(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_16__, align 8
  %12 = alloca %struct.TYPE_19__*, align 8
  store i32* %0, i32** %3, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @lua_gettop(i32* %13)
  %15 = icmp ne i32 %14, 2
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load i32*, i32** %3, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @lua_gettop(i32* %18)
  %20 = call i32 (i32*, i8*, ...) @luaL_error(i32* %17, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %19)
  store i32 %20, i32* %2, align 4
  br label %255

21:                                               ; preds = %1
  %22 = load i32*, i32** %3, align 8
  %23 = call %struct.TYPE_17__* @ngx_http_lua_get_req(i32* %22)
  store %struct.TYPE_17__* %23, %struct.TYPE_17__** %5, align 8
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %25 = icmp eq %struct.TYPE_17__* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 (i32*, i8*, ...) @luaL_error(i32* %27, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store i32 %28, i32* %2, align 4
  br label %255

29:                                               ; preds = %21
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @luaL_checktype(i32* %30, i32 1, i32 128)
  %32 = load i32*, i32** %3, align 8
  %33 = load i32, i32* @SOCKET_CTX_INDEX, align 4
  %34 = call i32 @lua_rawgeti(i32* %32, i32 1, i32 %33)
  %35 = load i32*, i32** %3, align 8
  %36 = call %struct.TYPE_18__* @lua_touserdata(i32* %35, i32 -1)
  store %struct.TYPE_18__* %36, %struct.TYPE_18__** %8, align 8
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 @lua_pop(i32* %37, i32 1)
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %40 = icmp eq %struct.TYPE_18__* %39, null
  br i1 %40, label %47, label %41

41:                                               ; preds = %29
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %79

47:                                               ; preds = %41, %29
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %49 = load i32, i32* @ngx_http_lua_module, align 4
  %50 = call %struct.TYPE_19__* @ngx_http_get_module_loc_conf(%struct.TYPE_17__* %48, i32 %49)
  store %struct.TYPE_19__* %50, %struct.TYPE_19__** %12, align 8
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %74

55:                                               ; preds = %47
  %56 = load i32, i32* @NGX_LOG_ERR, align 4
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %64 = icmp ne %struct.TYPE_18__* %63, null
  br i1 %64, label %65, label %70

65:                                               ; preds = %55
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  br label %71

70:                                               ; preds = %55
  br label %71

71:                                               ; preds = %70, %65
  %72 = phi i32* [ %69, %65 ], [ null, %70 ]
  %73 = call i32 @ngx_log_error(i32 %56, i32 %61, i32 0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_18__* %62, i32* %72)
  br label %74

74:                                               ; preds = %71, %47
  %75 = load i32*, i32** %3, align 8
  %76 = call i32 @lua_pushnil(i32* %75)
  %77 = load i32*, i32** %3, align 8
  %78 = call i32 @lua_pushliteral(i32* %77, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store i32 2, i32* %2, align 4
  br label %255

79:                                               ; preds = %41
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 4
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %81, align 8
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %84 = icmp ne %struct.TYPE_17__* %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %79
  %86 = load i32*, i32** %3, align 8
  %87 = call i32 (i32*, i8*, ...) @luaL_error(i32* %86, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  store i32 %87, i32* %2, align 4
  br label %255

88:                                               ; preds = %79
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %88
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 0
  store i32 0, i32* %95, align 8
  br label %96

96:                                               ; preds = %93, %88
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %96
  %102 = load i32*, i32** %3, align 8
  %103 = call i32 @lua_pushnil(i32* %102)
  %104 = load i32*, i32** %3, align 8
  %105 = call i32 @lua_pushliteral(i32* %104, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  store i32 2, i32* %2, align 4
  br label %255

106:                                              ; preds = %96
  %107 = load i32*, i32** %3, align 8
  %108 = call i32 @lua_type(i32* %107, i32 2)
  store i32 %108, i32* %9, align 4
  %109 = load i32, i32* %9, align 4
  switch i32 %109, label %124 [
    i32 130, label %110
    i32 129, label %110
    i32 128, label %113
    i32 131, label %116
    i32 132, label %117
  ]

110:                                              ; preds = %106, %106
  %111 = load i32*, i32** %3, align 8
  %112 = call i64 @lua_tolstring(i32* %111, i32 2, i64* %7)
  br label %133

113:                                              ; preds = %106
  %114 = load i32*, i32** %3, align 8
  %115 = call i64 @ngx_http_lua_calc_strlen_in_table(i32* %114, i32 2, i32 2, i32 1)
  store i64 %115, i64* %7, align 8
  br label %133

116:                                              ; preds = %106
  store i64 3, i64* %7, align 8
  br label %133

117:                                              ; preds = %106
  %118 = load i32*, i32** %3, align 8
  %119 = call i32 @lua_toboolean(i32* %118, i32 2)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %117
  store i64 4, i64* %7, align 8
  br label %123

122:                                              ; preds = %117
  store i64 5, i64* %7, align 8
  br label %123

123:                                              ; preds = %122, %121
  br label %133

124:                                              ; preds = %106
  %125 = load i32*, i32** %3, align 8
  %126 = load i32*, i32** %3, align 8
  %127 = load i32, i32* %9, align 4
  %128 = call i32 @lua_typename(i32* %126, i32 %127)
  %129 = call i8* @lua_pushfstring(i32* %125, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i64 0, i64 0), i32 %128)
  store i8* %129, i8** %10, align 8
  %130 = load i32*, i32** %3, align 8
  %131 = load i8*, i8** %10, align 8
  %132 = call i32 @luaL_argerror(i32* %130, i32 2, i8* %131)
  store i32 %132, i32* %2, align 4
  br label %255

133:                                              ; preds = %123, %116, %113, %110
  %134 = load i32*, i32** %3, align 8
  %135 = load i64, i64* %7, align 8
  %136 = call i32* @lua_newuserdata(i32* %134, i64 %135)
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 1
  store i32* %136, i32** %137, align 8
  %138 = load i64, i64* %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  store i64 %138, i64* %139, align 8
  %140 = load i32, i32* %9, align 4
  switch i32 %140, label %191 [
    i32 130, label %141
    i32 129, label %141
    i32 128, label %150
    i32 131, label %155
    i32 132, label %164
  ]

141:                                              ; preds = %133, %133
  %142 = load i32*, i32** %3, align 8
  %143 = call i64 @lua_tolstring(i32* %142, i32 2, i64* %7)
  %144 = inttoptr i64 %143 to i32*
  store i32* %144, i32** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 1
  %146 = load i32*, i32** %145, align 8
  %147 = load i32*, i32** %6, align 8
  %148 = load i64, i64* %7, align 8
  %149 = call i32 @ngx_memcpy(i32* %146, i32* %147, i64 %148)
  br label %194

150:                                              ; preds = %133
  %151 = load i32*, i32** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 1
  %153 = load i32*, i32** %152, align 8
  %154 = call i32 @ngx_http_lua_copy_str_in_table(i32* %151, i32 2, i32* %153)
  br label %194

155:                                              ; preds = %133
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 1
  %157 = load i32*, i32** %156, align 8
  store i32* %157, i32** %6, align 8
  %158 = load i32*, i32** %6, align 8
  %159 = getelementptr inbounds i32, i32* %158, i32 1
  store i32* %159, i32** %6, align 8
  store i32 110, i32* %158, align 4
  %160 = load i32*, i32** %6, align 8
  %161 = getelementptr inbounds i32, i32* %160, i32 1
  store i32* %161, i32** %6, align 8
  store i32 105, i32* %160, align 4
  %162 = load i32*, i32** %6, align 8
  %163 = getelementptr inbounds i32, i32* %162, i32 1
  store i32* %163, i32** %6, align 8
  store i32 108, i32* %162, align 4
  br label %194

164:                                              ; preds = %133
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 1
  %166 = load i32*, i32** %165, align 8
  store i32* %166, i32** %6, align 8
  %167 = load i32*, i32** %3, align 8
  %168 = call i32 @lua_toboolean(i32* %167, i32 2)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %179

170:                                              ; preds = %164
  %171 = load i32*, i32** %6, align 8
  %172 = getelementptr inbounds i32, i32* %171, i32 1
  store i32* %172, i32** %6, align 8
  store i32 116, i32* %171, align 4
  %173 = load i32*, i32** %6, align 8
  %174 = getelementptr inbounds i32, i32* %173, i32 1
  store i32* %174, i32** %6, align 8
  store i32 114, i32* %173, align 4
  %175 = load i32*, i32** %6, align 8
  %176 = getelementptr inbounds i32, i32* %175, i32 1
  store i32* %176, i32** %6, align 8
  store i32 117, i32* %175, align 4
  %177 = load i32*, i32** %6, align 8
  %178 = getelementptr inbounds i32, i32* %177, i32 1
  store i32* %178, i32** %6, align 8
  store i32 101, i32* %177, align 4
  br label %190

179:                                              ; preds = %164
  %180 = load i32*, i32** %6, align 8
  %181 = getelementptr inbounds i32, i32* %180, i32 1
  store i32* %181, i32** %6, align 8
  store i32 102, i32* %180, align 4
  %182 = load i32*, i32** %6, align 8
  %183 = getelementptr inbounds i32, i32* %182, i32 1
  store i32* %183, i32** %6, align 8
  store i32 97, i32* %182, align 4
  %184 = load i32*, i32** %6, align 8
  %185 = getelementptr inbounds i32, i32* %184, i32 1
  store i32* %185, i32** %6, align 8
  store i32 108, i32* %184, align 4
  %186 = load i32*, i32** %6, align 8
  %187 = getelementptr inbounds i32, i32* %186, i32 1
  store i32* %187, i32** %6, align 8
  store i32 115, i32* %186, align 4
  %188 = load i32*, i32** %6, align 8
  %189 = getelementptr inbounds i32, i32* %188, i32 1
  store i32* %189, i32** %6, align 8
  store i32 101, i32* %188, align 4
  br label %190

190:                                              ; preds = %179, %170
  br label %194

191:                                              ; preds = %133
  %192 = load i32*, i32** %3, align 8
  %193 = call i32 (i32*, i8*, ...) @luaL_error(i32* %192, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  store i32 %193, i32* %2, align 4
  br label %255

194:                                              ; preds = %190, %155, %150, %141
  %195 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %196 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %195, i32 0, i32 0
  store i32 0, i32* %196, align 8
  %197 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %198 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %197, i32 0, i32 3
  store i64 0, i64* %198, align 8
  %199 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = trunc i64 %200 to i32
  %202 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 1
  %203 = load i32*, i32** %202, align 8
  %204 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i32 %201, i32* %203)
  %205 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %206 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %205, i32 0, i32 2
  %207 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %206, i32 0, i32 0
  %208 = load i32*, i32** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 1
  %210 = load i32*, i32** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = call i64 @ngx_send(i32* %208, i32* %210, i64 %212)
  store i64 %213, i64* %4, align 8
  %214 = load i64, i64* %4, align 8
  %215 = trunc i64 %214 to i32
  %216 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = trunc i64 %217 to i32
  %219 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0), i32 %215, i32 %218)
  %220 = load i64, i64* %4, align 8
  %221 = load i64, i64* @NGX_ERROR, align 8
  %222 = icmp eq i64 %220, %221
  br i1 %222, label %227, label %223

223:                                              ; preds = %194
  %224 = load i64, i64* %4, align 8
  %225 = load i64, i64* @NGX_AGAIN, align 8
  %226 = icmp eq i64 %224, %225
  br i1 %226, label %227, label %235

227:                                              ; preds = %223, %194
  %228 = load i32, i32* @ngx_socket_errno, align 4
  %229 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %230 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %229, i32 0, i32 1
  store i32 %228, i32* %230, align 4
  %231 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %232 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %233 = load i32*, i32** %3, align 8
  %234 = call i32 @ngx_http_lua_socket_error_retval_handler(%struct.TYPE_17__* %231, %struct.TYPE_18__* %232, i32* %233)
  store i32 %234, i32* %2, align 4
  br label %255

235:                                              ; preds = %223
  %236 = load i64, i64* %4, align 8
  %237 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = icmp ne i64 %236, %238
  br i1 %239, label %240, label %251

240:                                              ; preds = %235
  %241 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0))
  %242 = load i32, i32* @NGX_HTTP_LUA_SOCKET_FT_PARTIALWRITE, align 4
  %243 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %244 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = or i32 %245, %242
  store i32 %246, i32* %244, align 8
  %247 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %248 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %249 = load i32*, i32** %3, align 8
  %250 = call i32 @ngx_http_lua_socket_error_retval_handler(%struct.TYPE_17__* %247, %struct.TYPE_18__* %248, i32* %249)
  store i32 %250, i32* %2, align 4
  br label %255

251:                                              ; preds = %235
  %252 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  %253 = load i32*, i32** %3, align 8
  %254 = call i32 @lua_pushinteger(i32* %253, i32 1)
  store i32 1, i32* %2, align 4
  br label %255

255:                                              ; preds = %251, %240, %227, %191, %124, %101, %85, %74, %26, %16
  %256 = load i32, i32* %2, align 4
  ret i32 %256
}

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @luaL_error(i32*, i8*, ...) #1

declare dso_local %struct.TYPE_17__* @ngx_http_lua_get_req(i32*) #1

declare dso_local i32 @luaL_checktype(i32*, i32, i32) #1

declare dso_local i32 @lua_rawgeti(i32*, i32, i32) #1

declare dso_local %struct.TYPE_18__* @lua_touserdata(i32*, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local %struct.TYPE_19__* @ngx_http_get_module_loc_conf(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, %struct.TYPE_18__*, i32*) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i32 @lua_pushliteral(i32*, i8*) #1

declare dso_local i32 @lua_type(i32*, i32) #1

declare dso_local i64 @lua_tolstring(i32*, i32, i64*) #1

declare dso_local i64 @ngx_http_lua_calc_strlen_in_table(i32*, i32, i32, i32) #1

declare dso_local i32 @lua_toboolean(i32*, i32) #1

declare dso_local i8* @lua_pushfstring(i32*, i8*, i32) #1

declare dso_local i32 @lua_typename(i32*, i32) #1

declare dso_local i32 @luaL_argerror(i32*, i32, i8*) #1

declare dso_local i32* @lua_newuserdata(i32*, i64) #1

declare dso_local i32 @ngx_memcpy(i32*, i32*, i64) #1

declare dso_local i32 @ngx_http_lua_copy_str_in_table(i32*, i32, i32*) #1

declare dso_local i32 @dd(i8*, ...) #1

declare dso_local i64 @ngx_send(i32*, i32*, i64) #1

declare dso_local i32 @ngx_http_lua_socket_error_retval_handler(%struct.TYPE_17__*, %struct.TYPE_18__*, i32*) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
