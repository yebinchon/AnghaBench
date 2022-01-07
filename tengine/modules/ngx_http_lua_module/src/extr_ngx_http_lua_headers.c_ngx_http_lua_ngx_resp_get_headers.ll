; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_headers.c_ngx_http_lua_ngx_resp_get_headers.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_headers.c_ngx_http_lua_ngx_resp_get_headers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, %struct.TYPE_19__*, %struct.TYPE_20__* }
%struct.TYPE_19__ = type { i64, %struct.TYPE_18__, %struct.TYPE_17__ }
%struct.TYPE_18__ = type { i64, i64 }
%struct.TYPE_17__ = type { i64, i64 }
%struct.TYPE_21__ = type { %struct.TYPE_16__*, %struct.TYPE_15__, i64, i64 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i64, i64, %struct.TYPE_14__, i32*, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { %struct.TYPE_20__ }
%struct.TYPE_13__ = type { i64, i64 }

@NGX_HTTP_LUA_MAX_HEADERS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"no request object found\00", align 1
@ngx_http_lua_module = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"no ctx found\00", align 1
@headers_metatable_key = common dso_local global i32 0, align 4
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"content-type\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"content-length\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"connection\00", align 1
@NGX_HTTP_SWITCHING_PROTOCOLS = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [8 x i8] c"upgrade\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"keep-alive\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"close\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"transfer-encoding\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"chunked\00", align 1
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [44 x i8] c"lua exceeding response header limit %d > %d\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"stack top: %d\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"lua response header: \22%V: %V\22\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"truncated\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ngx_http_lua_ngx_resp_get_headers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_lua_ngx_resp_get_headers(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* null, i32** %8, align 8
  store i64 0, i64* %9, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @lua_gettop(i32* %17)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp sge i32 %19, 1
  br i1 %20, label %21, label %37

21:                                               ; preds = %1
  %22 = load i32*, i32** %3, align 8
  %23 = call i64 @lua_isnil(i32* %22, i32 1)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* @NGX_HTTP_LUA_MAX_HEADERS, align 4
  store i32 %26, i32* %12, align 4
  br label %30

27:                                               ; preds = %21
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @luaL_checkinteger(i32* %28, i32 1)
  store i32 %29, i32* %12, align 4
  br label %30

30:                                               ; preds = %27, %25
  %31 = load i32, i32* %11, align 4
  %32 = icmp sge i32 %31, 2
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @lua_toboolean(i32* %34, i32 2)
  store i32 %35, i32* %13, align 4
  br label %36

36:                                               ; preds = %33, %30
  br label %39

37:                                               ; preds = %1
  %38 = load i32, i32* @NGX_HTTP_LUA_MAX_HEADERS, align 4
  store i32 %38, i32* %12, align 4
  br label %39

39:                                               ; preds = %37, %36
  %40 = load i32*, i32** %3, align 8
  %41 = call %struct.TYPE_21__* @ngx_http_lua_get_req(i32* %40)
  store %struct.TYPE_21__* %41, %struct.TYPE_21__** %6, align 8
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %43 = icmp eq %struct.TYPE_21__* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32*, i32** %3, align 8
  %46 = call i32 @luaL_error(i32* %45, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 %46, i32* %2, align 4
  br label %371

47:                                               ; preds = %39
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %49 = load i32, i32* @ngx_http_lua_module, align 4
  %50 = call i32* @ngx_http_get_module_ctx(%struct.TYPE_21__* %48, i32 %49)
  store i32* %50, i32** %7, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load i32*, i32** %3, align 8
  %55 = call i32 @luaL_error(i32* %54, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32 %55, i32* %2, align 4
  br label %371

56:                                               ; preds = %47
  %57 = load i32*, i32** %3, align 8
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %59 = call i32 @ngx_http_lua_check_fake_request(i32* %57, %struct.TYPE_21__* %58)
  %60 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 0
  store %struct.TYPE_20__* %63, %struct.TYPE_20__** %4, align 8
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  store i32 %66, i32* %14, align 4
  br label %67

67:                                               ; preds = %72, %56
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %68, i32 0, i32 2
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %69, align 8
  %71 = icmp ne %struct.TYPE_20__* %70, null
  br i1 %71, label %72, label %81

72:                                               ; preds = %67
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %73, i32 0, i32 2
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %74, align 8
  store %struct.TYPE_20__* %75, %struct.TYPE_20__** %4, align 8
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %14, align 4
  %80 = add nsw i32 %79, %78
  store i32 %80, i32* %14, align 4
  br label %67

81:                                               ; preds = %67
  %82 = load i32*, i32** %3, align 8
  %83 = load i32, i32* %14, align 4
  %84 = add nsw i32 %83, 2
  %85 = call i32 @lua_createtable(i32* %82, i32 0, i32 %84)
  %86 = load i32, i32* %13, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %98, label %88

88:                                               ; preds = %81
  %89 = load i32*, i32** %3, align 8
  %90 = load i32, i32* @headers_metatable_key, align 4
  %91 = call i32 @ngx_http_lua_lightudata_mask(i32 %90)
  %92 = call i32 @lua_pushlightuserdata(i32* %89, i32 %91)
  %93 = load i32*, i32** %3, align 8
  %94 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %95 = call i32 @lua_rawget(i32* %93, i32 %94)
  %96 = load i32*, i32** %3, align 8
  %97 = call i32 @lua_setmetatable(i32* %96, i32 -2)
  br label %98

98:                                               ; preds = %88, %81
  %99 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 4
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %125

105:                                              ; preds = %98
  %106 = load i32, i32* %16, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %16, align 4
  %108 = load i32*, i32** %3, align 8
  %109 = call i32 @lua_pushliteral(i32* %108, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %110 = load i32*, i32** %3, align 8
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 4
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = inttoptr i64 %115 to i8*
  %117 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 4
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = call i32 @lua_pushlstring(i32* %110, i8* %116, i64 %121)
  %123 = load i32*, i32** %3, align 8
  %124 = call i32 @lua_rawset(i32* %123, i32 -3)
  br label %125

125:                                              ; preds = %105, %98
  %126 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 3
  %129 = load i32*, i32** %128, align 8
  %130 = icmp eq i32* %129, null
  br i1 %130, label %131, label %151

131:                                              ; preds = %125
  %132 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = icmp sge i64 %135, 0
  br i1 %136, label %137, label %151

137:                                              ; preds = %131
  %138 = load i32, i32* %16, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %16, align 4
  %140 = load i32*, i32** %3, align 8
  %141 = call i32 @lua_pushliteral(i32* %140, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %142 = load i32*, i32** %3, align 8
  %143 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = trunc i64 %146 to i32
  %148 = call i32 @lua_pushfstring(i32* %142, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %147)
  %149 = load i32*, i32** %3, align 8
  %150 = call i32 @lua_rawset(i32* %149, i32 -3)
  br label %151

151:                                              ; preds = %137, %131, %125
  %152 = load i32, i32* %16, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %16, align 4
  %154 = load i32*, i32** %3, align 8
  %155 = call i32 @lua_pushliteral(i32* %154, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %156 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @NGX_HTTP_SWITCHING_PROTOCOLS, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %165

162:                                              ; preds = %151
  %163 = load i32*, i32** %3, align 8
  %164 = call i32 @lua_pushliteral(i32* %163, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  br label %177

165:                                              ; preds = %151
  %166 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %166, i32 0, i32 3
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %165
  %171 = load i32*, i32** %3, align 8
  %172 = call i32 @lua_pushliteral(i32* %171, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  br label %176

173:                                              ; preds = %165
  %174 = load i32*, i32** %3, align 8
  %175 = call i32 @lua_pushliteral(i32* %174, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  br label %176

176:                                              ; preds = %173, %170
  br label %177

177:                                              ; preds = %176, %162
  %178 = load i32*, i32** %3, align 8
  %179 = call i32 @lua_rawset(i32* %178, i32 -3)
  %180 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %180, i32 0, i32 2
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %193

184:                                              ; preds = %177
  %185 = load i32, i32* %16, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %16, align 4
  %187 = load i32*, i32** %3, align 8
  %188 = call i32 @lua_pushliteral(i32* %187, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0))
  %189 = load i32*, i32** %3, align 8
  %190 = call i32 @lua_pushliteral(i32* %189, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  %191 = load i32*, i32** %3, align 8
  %192 = call i32 @lua_rawset(i32* %191, i32 -3)
  br label %193

193:                                              ; preds = %184, %177
  %194 = load i32, i32* %12, align 4
  %195 = icmp sgt i32 %194, 0
  br i1 %195, label %196, label %217

196:                                              ; preds = %193
  %197 = load i32, i32* %14, align 4
  %198 = load i32, i32* %16, align 4
  %199 = add nsw i32 %197, %198
  %200 = load i32, i32* %12, align 4
  %201 = icmp sgt i32 %199, %200
  br i1 %201, label %202, label %217

202:                                              ; preds = %196
  store i32 1, i32* %15, align 4
  %203 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %204 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %205 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %204, i32 0, i32 0
  %206 = load %struct.TYPE_16__*, %struct.TYPE_16__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* %14, align 4
  %210 = load i32, i32* %16, align 4
  %211 = add nsw i32 %209, %210
  %212 = load i32, i32* %12, align 4
  %213 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_debug2(i32 %203, i32 %208, i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.11, i64 0, i64 0), i32 %211, i32 %212)
  %214 = load i32, i32* %12, align 4
  %215 = load i32, i32* %16, align 4
  %216 = sub nsw i32 %214, %215
  store i32 %216, i32* %14, align 4
  br label %217

217:                                              ; preds = %202, %196, %193
  %218 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %219 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %218, i32 0, i32 1
  %220 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %219, i32 0, i32 2
  %221 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %220, i32 0, i32 0
  store %struct.TYPE_20__* %221, %struct.TYPE_20__** %4, align 8
  %222 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %222, i32 0, i32 1
  %224 = load %struct.TYPE_19__*, %struct.TYPE_19__** %223, align 8
  store %struct.TYPE_19__* %224, %struct.TYPE_19__** %5, align 8
  store i64 0, i64* %10, align 8
  br label %225

225:                                              ; preds = %361, %217
  %226 = load i32*, i32** %3, align 8
  %227 = call i32 @lua_gettop(i32* %226)
  %228 = call i32 @dd(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i32 %227)
  %229 = load i64, i64* %10, align 8
  %230 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %231 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = sext i32 %232 to i64
  %234 = icmp uge i64 %229, %233
  br i1 %234, label %235, label %248

235:                                              ; preds = %225
  %236 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %237 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %236, i32 0, i32 2
  %238 = load %struct.TYPE_20__*, %struct.TYPE_20__** %237, align 8
  %239 = icmp eq %struct.TYPE_20__* %238, null
  br i1 %239, label %240, label %241

240:                                              ; preds = %235
  br label %364

241:                                              ; preds = %235
  %242 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %243 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %242, i32 0, i32 2
  %244 = load %struct.TYPE_20__*, %struct.TYPE_20__** %243, align 8
  store %struct.TYPE_20__* %244, %struct.TYPE_20__** %4, align 8
  %245 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %246 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %245, i32 0, i32 1
  %247 = load %struct.TYPE_19__*, %struct.TYPE_19__** %246, align 8
  store %struct.TYPE_19__* %247, %struct.TYPE_19__** %5, align 8
  store i64 0, i64* %10, align 8
  br label %248

248:                                              ; preds = %241, %225
  %249 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %250 = load i64, i64* %10, align 8
  %251 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %249, i64 %250
  %252 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %251, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = icmp eq i64 %253, 0
  br i1 %254, label %255, label %256

255:                                              ; preds = %248
  br label %361

256:                                              ; preds = %248
  %257 = load i32, i32* %13, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %275

259:                                              ; preds = %256
  %260 = load i32*, i32** %3, align 8
  %261 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %262 = load i64, i64* %10, align 8
  %263 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %261, i64 %262
  %264 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %263, i32 0, i32 2
  %265 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %264, i32 0, i32 1
  %266 = load i64, i64* %265, align 8
  %267 = inttoptr i64 %266 to i8*
  %268 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %269 = load i64, i64* %10, align 8
  %270 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %268, i64 %269
  %271 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %270, i32 0, i32 2
  %272 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %271, i32 0, i32 0
  %273 = load i64, i64* %272, align 8
  %274 = call i32 @lua_pushlstring(i32* %260, i8* %267, i64 %273)
  br label %323

275:                                              ; preds = %256
  %276 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %277 = load i64, i64* %10, align 8
  %278 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %276, i64 %277
  %279 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %278, i32 0, i32 2
  %280 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %279, i32 0, i32 0
  %281 = load i64, i64* %280, align 8
  %282 = load i64, i64* %9, align 8
  %283 = icmp ugt i64 %281, %282
  br i1 %283, label %284, label %297

284:                                              ; preds = %275
  %285 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %286 = load i64, i64* %10, align 8
  %287 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %285, i64 %286
  %288 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %287, i32 0, i32 2
  %289 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %288, i32 0, i32 0
  %290 = load i64, i64* %289, align 8
  %291 = mul i64 %290, 2
  store i64 %291, i64* %9, align 8
  %292 = load i32*, i32** %3, align 8
  %293 = load i64, i64* %9, align 8
  %294 = call i32* @lua_newuserdata(i32* %292, i64 %293)
  store i32* %294, i32** %8, align 8
  %295 = load i32*, i32** %3, align 8
  %296 = call i32 @lua_insert(i32* %295, i32 1)
  br label %297

297:                                              ; preds = %284, %275
  %298 = load i32*, i32** %8, align 8
  %299 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %300 = load i64, i64* %10, align 8
  %301 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %299, i64 %300
  %302 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %301, i32 0, i32 2
  %303 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %302, i32 0, i32 1
  %304 = load i64, i64* %303, align 8
  %305 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %306 = load i64, i64* %10, align 8
  %307 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %305, i64 %306
  %308 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %307, i32 0, i32 2
  %309 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %308, i32 0, i32 0
  %310 = load i64, i64* %309, align 8
  %311 = trunc i64 %310 to i32
  %312 = call i32 @ngx_strlow(i32* %298, i64 %304, i32 %311)
  %313 = load i32*, i32** %3, align 8
  %314 = load i32*, i32** %8, align 8
  %315 = bitcast i32* %314 to i8*
  %316 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %317 = load i64, i64* %10, align 8
  %318 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %316, i64 %317
  %319 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %318, i32 0, i32 2
  %320 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %319, i32 0, i32 0
  %321 = load i64, i64* %320, align 8
  %322 = call i32 @lua_pushlstring(i32* %313, i8* %315, i64 %321)
  br label %323

323:                                              ; preds = %297, %259
  %324 = load i32*, i32** %3, align 8
  %325 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %326 = load i64, i64* %10, align 8
  %327 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %325, i64 %326
  %328 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %327, i32 0, i32 1
  %329 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %328, i32 0, i32 1
  %330 = load i64, i64* %329, align 8
  %331 = inttoptr i64 %330 to i8*
  %332 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %333 = load i64, i64* %10, align 8
  %334 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %332, i64 %333
  %335 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %334, i32 0, i32 1
  %336 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %335, i32 0, i32 0
  %337 = load i64, i64* %336, align 8
  %338 = call i32 @lua_pushlstring(i32* %324, i8* %331, i64 %337)
  %339 = load i32*, i32** %3, align 8
  %340 = call i32 @ngx_http_lua_set_multi_value_table(i32* %339, i32 -3)
  %341 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %342 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %343 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %342, i32 0, i32 0
  %344 = load %struct.TYPE_16__*, %struct.TYPE_16__** %343, align 8
  %345 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %344, i32 0, i32 0
  %346 = load i32, i32* %345, align 4
  %347 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %348 = load i64, i64* %10, align 8
  %349 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %347, i64 %348
  %350 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %349, i32 0, i32 2
  %351 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %352 = load i64, i64* %10, align 8
  %353 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %351, i64 %352
  %354 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %353, i32 0, i32 1
  %355 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_debug2(i32 %341, i32 %346, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i64 0, i64 0), %struct.TYPE_17__* %350, %struct.TYPE_18__* %354)
  %356 = load i32, i32* %14, align 4
  %357 = add nsw i32 %356, -1
  store i32 %357, i32* %14, align 4
  %358 = icmp sle i32 %357, 0
  br i1 %358, label %359, label %360

359:                                              ; preds = %323
  br label %364

360:                                              ; preds = %323
  br label %361

361:                                              ; preds = %360, %255
  %362 = load i64, i64* %10, align 8
  %363 = add i64 %362, 1
  store i64 %363, i64* %10, align 8
  br label %225

364:                                              ; preds = %359, %240
  %365 = load i32, i32* %15, align 4
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %370

367:                                              ; preds = %364
  %368 = load i32*, i32** %3, align 8
  %369 = call i32 @lua_pushliteral(i32* %368, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0))
  store i32 2, i32* %2, align 4
  br label %371

370:                                              ; preds = %364
  store i32 1, i32* %2, align 4
  br label %371

371:                                              ; preds = %370, %367, %53, %44
  %372 = load i32, i32* %2, align 4
  ret i32 %372
}

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i64 @lua_isnil(i32*, i32) #1

declare dso_local i32 @luaL_checkinteger(i32*, i32) #1

declare dso_local i32 @lua_toboolean(i32*, i32) #1

declare dso_local %struct.TYPE_21__* @ngx_http_lua_get_req(i32*) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i32* @ngx_http_get_module_ctx(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @ngx_http_lua_check_fake_request(i32*, %struct.TYPE_21__*) #1

declare dso_local i32 @lua_createtable(i32*, i32, i32) #1

declare dso_local i32 @lua_pushlightuserdata(i32*, i32) #1

declare dso_local i32 @ngx_http_lua_lightudata_mask(i32) #1

declare dso_local i32 @lua_rawget(i32*, i32) #1

declare dso_local i32 @lua_setmetatable(i32*, i32) #1

declare dso_local i32 @lua_pushliteral(i32*, i8*) #1

declare dso_local i32 @lua_pushlstring(i32*, i8*, i64) #1

declare dso_local i32 @lua_rawset(i32*, i32) #1

declare dso_local i32 @lua_pushfstring(i32*, i8*, i32) #1

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, ...) #1

declare dso_local i32 @dd(i8*, i32) #1

declare dso_local i32* @lua_newuserdata(i32*, i64) #1

declare dso_local i32 @lua_insert(i32*, i32) #1

declare dso_local i32 @ngx_strlow(i32*, i64, i32) #1

declare dso_local i32 @ngx_http_lua_set_multi_value_table(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
