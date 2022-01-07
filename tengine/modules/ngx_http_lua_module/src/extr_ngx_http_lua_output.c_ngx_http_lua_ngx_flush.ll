; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_output.c_ngx_http_lua_ngx_flush.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_output.c_ngx_http_lua_ngx_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_21__*, i32, i32, i64, %struct.TYPE_22__* }
%struct.TYPE_21__ = type { i32, i32, %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i64, i64 }
%struct.TYPE_23__ = type { %struct.TYPE_24__*, i64, i32, i32, i32, i64, i64, i64 }
%struct.TYPE_24__ = type { i32, %struct.TYPE_22__*, i32 }
%struct.TYPE_25__ = type { i32, i32 }

@.str = private unnamed_addr constant [50 x i8] c"attempt to pass %d arguments, but accepted 0 or 1\00", align 1
@LUA_TBOOLEAN = common dso_local global i32 0, align 4
@ngx_http_lua_module = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"no request ctx found\00", align 1
@NGX_HTTP_LUA_CONTEXT_REWRITE = common dso_local global i32 0, align 4
@NGX_HTTP_LUA_CONTEXT_ACCESS = common dso_local global i32 0, align 4
@NGX_HTTP_LUA_CONTEXT_CONTENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"raw request socket acquired\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"no co ctx found\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"header only\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"seen eof\00", align 1
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [49 x i8] c"lua http 1.0 buffering makes ngx.flush() a no-op\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"buffering\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"nothing to flush\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"no memory\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"send chain: %d\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_HTTP_SPECIAL_RESPONSE = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [26 x i8] c"nginx output filter error\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"wait:%d, rc:%d, buffered:0x%x\00", align 1
@NGX_HTTP_LOWLEVEL_BUFFERED = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [56 x i8] c"lua flush requires waiting: buffered 0x%uxd, delayed:%d\00", align 1
@ngx_http_lua_content_wev_handler = common dso_local global i32 0, align 4
@ngx_http_core_run_phases = common dso_local global i32 0, align 4
@ngx_http_core_module = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [18 x i8] c"connection broken\00", align 1
@ngx_http_lua_flush_cleanup = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [25 x i8] c"lua flush asynchronously\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ngx_http_lua_ngx_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_lua_ngx_flush(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_26__*, align 8
  %11 = alloca %struct.TYPE_25__*, align 8
  %12 = alloca %struct.TYPE_24__*, align 8
  store i32* %0, i32** %3, align 8
  store i32 0, i32* %9, align 4
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @lua_gettop(i32* %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp sgt i32 %15, 1
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load i32*, i32** %3, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i32 (i32*, i8*, ...) @luaL_error(i32* %18, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %19)
  store i32 %20, i32* %2, align 4
  br label %288

21:                                               ; preds = %1
  %22 = load i32*, i32** %3, align 8
  %23 = call %struct.TYPE_22__* @ngx_http_lua_get_req(i32* %22)
  store %struct.TYPE_22__* %23, %struct.TYPE_22__** %4, align 8
  %24 = load i32, i32* %8, align 4
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %38

26:                                               ; preds = %21
  %27 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %28, i32 0, i32 4
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** %29, align 8
  %31 = icmp eq %struct.TYPE_22__* %27, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %26
  %33 = load i32*, i32** %3, align 8
  %34 = load i32, i32* @LUA_TBOOLEAN, align 4
  %35 = call i32 @luaL_checktype(i32* %33, i32 1, i32 %34)
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 @lua_toboolean(i32* %36, i32 1)
  store i32 %37, i32* %9, align 4
  br label %38

38:                                               ; preds = %32, %26, %21
  %39 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %40 = load i32, i32* @ngx_http_lua_module, align 4
  %41 = call %struct.TYPE_23__* @ngx_http_get_module_ctx(%struct.TYPE_22__* %39, i32 %40)
  store %struct.TYPE_23__* %41, %struct.TYPE_23__** %5, align 8
  %42 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %43 = icmp eq %struct.TYPE_23__* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i32*, i32** %3, align 8
  %46 = call i32 (i32*, i8*, ...) @luaL_error(i32* %45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store i32 %46, i32* %2, align 4
  br label %288

47:                                               ; preds = %38
  %48 = load i32*, i32** %3, align 8
  %49 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %50 = load i32, i32* @NGX_HTTP_LUA_CONTEXT_REWRITE, align 4
  %51 = load i32, i32* @NGX_HTTP_LUA_CONTEXT_ACCESS, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @NGX_HTTP_LUA_CONTEXT_CONTENT, align 4
  %54 = or i32 %52, %53
  %55 = call i32 @ngx_http_lua_check_context(i32* %48, %struct.TYPE_23__* %49, i32 %54)
  %56 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %56, i32 0, i32 7
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %47
  %61 = load i32*, i32** %3, align 8
  %62 = call i32 @lua_pushnil(i32* %61)
  %63 = load i32*, i32** %3, align 8
  %64 = call i32 @lua_pushliteral(i32* %63, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  store i32 2, i32* %2, align 4
  br label %288

65:                                               ; preds = %47
  %66 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_24__*, %struct.TYPE_24__** %67, align 8
  store %struct.TYPE_24__* %68, %struct.TYPE_24__** %12, align 8
  %69 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %70 = icmp eq %struct.TYPE_24__* %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = load i32*, i32** %3, align 8
  %73 = call i32 (i32*, i8*, ...) @luaL_error(i32* %72, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  store i32 %73, i32* %2, align 4
  br label %288

74:                                               ; preds = %65
  %75 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %74
  %80 = load i32*, i32** %3, align 8
  %81 = call i32 @lua_pushnil(i32* %80)
  %82 = load i32*, i32** %3, align 8
  %83 = call i32 @lua_pushliteral(i32* %82, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  store i32 2, i32* %2, align 4
  br label %288

84:                                               ; preds = %74
  %85 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %85, i32 0, i32 6
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %84
  %90 = load i32*, i32** %3, align 8
  %91 = call i32 @lua_pushnil(i32* %90)
  %92 = load i32*, i32** %3, align 8
  %93 = call i32 @lua_pushliteral(i32* %92, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  store i32 2, i32* %2, align 4
  br label %288

94:                                               ; preds = %84
  %95 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %95, i32 0, i32 5
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %111

99:                                               ; preds = %94
  %100 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %101 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_21__*, %struct.TYPE_21__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @ngx_log_debug0(i32 %100, i32 %105, i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0))
  %107 = load i32*, i32** %3, align 8
  %108 = call i32 @lua_pushnil(i32* %107)
  %109 = load i32*, i32** %3, align 8
  %110 = call i32 @lua_pushliteral(i32* %109, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  store i32 2, i32* %2, align 4
  br label %288

111:                                              ; preds = %94
  %112 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %121, label %116

116:                                              ; preds = %111
  %117 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 8
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %129

121:                                              ; preds = %116, %111
  %122 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %134, label %126

126:                                              ; preds = %121
  %127 = load i32, i32* %9, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %134, label %129

129:                                              ; preds = %126, %116
  %130 = load i32*, i32** %3, align 8
  %131 = call i32 @lua_pushnil(i32* %130)
  %132 = load i32*, i32** %3, align 8
  %133 = call i32 @lua_pushliteral(i32* %132, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  store i32 2, i32* %2, align 4
  br label %288

134:                                              ; preds = %126, %121
  %135 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %136 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %137 = call i32* @ngx_http_lua_get_flush_chain(%struct.TYPE_22__* %135, %struct.TYPE_23__* %136)
  store i32* %137, i32** %6, align 8
  %138 = load i32*, i32** %6, align 8
  %139 = icmp eq i32* %138, null
  br i1 %139, label %140, label %143

140:                                              ; preds = %134
  %141 = load i32*, i32** %3, align 8
  %142 = call i32 (i32*, i8*, ...) @luaL_error(i32* %141, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  store i32 %142, i32* %2, align 4
  br label %288

143:                                              ; preds = %134
  %144 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %145 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %146 = load i32*, i32** %6, align 8
  %147 = call i64 @ngx_http_lua_send_chain_link(%struct.TYPE_22__* %144, %struct.TYPE_23__* %145, i32* %146)
  store i64 %147, i64* %7, align 8
  %148 = load i64, i64* %7, align 8
  %149 = trunc i64 %148 to i32
  %150 = call i32 (i8*, i32, ...) @dd(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i32 %149)
  %151 = load i64, i64* %7, align 8
  %152 = load i64, i64* @NGX_ERROR, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %158, label %154

154:                                              ; preds = %143
  %155 = load i64, i64* %7, align 8
  %156 = load i64, i64* @NGX_HTTP_SPECIAL_RESPONSE, align 8
  %157 = icmp sge i64 %155, %156
  br i1 %157, label %158, label %163

158:                                              ; preds = %154, %143
  %159 = load i32*, i32** %3, align 8
  %160 = call i32 @lua_pushnil(i32* %159)
  %161 = load i32*, i32** %3, align 8
  %162 = call i32 @lua_pushliteral(i32* %161, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0))
  store i32 2, i32* %2, align 4
  br label %288

163:                                              ; preds = %154
  %164 = load i32, i32* %9, align 4
  %165 = load i64, i64* %7, align 8
  %166 = trunc i64 %165 to i32
  %167 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %167, i32 0, i32 0
  %169 = load %struct.TYPE_21__*, %struct.TYPE_21__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = call i32 (i8*, i32, ...) @dd(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0), i32 %164, i32 %166, i32 %171)
  %173 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %173, i32 0, i32 0
  %175 = load %struct.TYPE_21__*, %struct.TYPE_21__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %175, i32 0, i32 2
  %177 = load %struct.TYPE_26__*, %struct.TYPE_26__** %176, align 8
  store %struct.TYPE_26__* %177, %struct.TYPE_26__** %10, align 8
  %178 = load i32, i32* %9, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %278

180:                                              ; preds = %163
  %181 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %181, i32 0, i32 0
  %183 = load %struct.TYPE_21__*, %struct.TYPE_21__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* @NGX_HTTP_LOWLEVEL_BUFFERED, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %194, label %189

189:                                              ; preds = %180
  %190 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %191 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %278

194:                                              ; preds = %189, %180
  %195 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %196 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %196, i32 0, i32 0
  %198 = load %struct.TYPE_21__*, %struct.TYPE_21__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %201, i32 0, i32 0
  %203 = load %struct.TYPE_21__*, %struct.TYPE_21__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %207 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = call i32 @ngx_log_debug2(i32 %195, i32 %200, i32 0, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.13, i64 0, i64 0), i32 %205, i64 %208)
  %210 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %211 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %210, i32 0, i32 0
  store i32 1, i32* %211, align 8
  %212 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 8
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %213, align 8
  %216 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %217 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %216, i32 0, i32 1
  %218 = load i64, i64* %217, align 8
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %224

220:                                              ; preds = %194
  %221 = load i32, i32* @ngx_http_lua_content_wev_handler, align 4
  %222 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %222, i32 0, i32 1
  store i32 %221, i32* %223, align 8
  br label %228

224:                                              ; preds = %194
  %225 = load i32, i32* @ngx_http_core_run_phases, align 4
  %226 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %227 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %226, i32 0, i32 1
  store i32 %225, i32* %227, align 8
  br label %228

228:                                              ; preds = %224, %220
  %229 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %230 = load i32, i32* @ngx_http_core_module, align 4
  %231 = call %struct.TYPE_25__* @ngx_http_get_module_loc_conf(%struct.TYPE_22__* %229, i32 %230)
  store %struct.TYPE_25__* %231, %struct.TYPE_25__** %11, align 8
  %232 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %233 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %242, label %236

236:                                              ; preds = %228
  %237 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %238 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %239 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = call i32 @ngx_add_timer(%struct.TYPE_26__* %237, i32 %240)
  br label %242

242:                                              ; preds = %236, %228
  %243 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %244 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %245 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = call i64 @ngx_handle_write_event(%struct.TYPE_26__* %243, i32 %246)
  %248 = load i64, i64* @NGX_OK, align 8
  %249 = icmp ne i64 %247, %248
  br i1 %249, label %250, label %265

250:                                              ; preds = %242
  %251 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %252 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %251, i32 0, i32 1
  %253 = load i64, i64* %252, align 8
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %260

255:                                              ; preds = %250
  %256 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %257 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %256, i32 0, i32 0
  store i64 0, i64* %257, align 8
  %258 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %259 = call i32 @ngx_del_timer(%struct.TYPE_26__* %258)
  br label %260

260:                                              ; preds = %255, %250
  %261 = load i32*, i32** %3, align 8
  %262 = call i32 @lua_pushnil(i32* %261)
  %263 = load i32*, i32** %3, align 8
  %264 = call i32 @lua_pushliteral(i32* %263, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0))
  store i32 2, i32* %2, align 4
  br label %288

265:                                              ; preds = %242
  %266 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %267 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %266, i32 0, i32 0
  %268 = load %struct.TYPE_24__*, %struct.TYPE_24__** %267, align 8
  %269 = call i32 @ngx_http_lua_cleanup_pending_operation(%struct.TYPE_24__* %268)
  %270 = load i32, i32* @ngx_http_lua_flush_cleanup, align 4
  %271 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %272 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %271, i32 0, i32 2
  store i32 %270, i32* %272, align 8
  %273 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %274 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %275 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %274, i32 0, i32 1
  store %struct.TYPE_22__* %273, %struct.TYPE_22__** %275, align 8
  %276 = load i32*, i32** %3, align 8
  %277 = call i32 @lua_yield(i32* %276, i32 0)
  store i32 %277, i32* %2, align 4
  br label %288

278:                                              ; preds = %189, %163
  %279 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %280 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %281 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %280, i32 0, i32 0
  %282 = load %struct.TYPE_21__*, %struct.TYPE_21__** %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 4
  %285 = call i32 @ngx_log_debug0(i32 %279, i32 %284, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0))
  %286 = load i32*, i32** %3, align 8
  %287 = call i32 @lua_pushinteger(i32* %286, i32 1)
  store i32 1, i32* %2, align 4
  br label %288

288:                                              ; preds = %278, %265, %260, %158, %140, %129, %99, %89, %79, %71, %60, %44, %17
  %289 = load i32, i32* %2, align 4
  ret i32 %289
}

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @luaL_error(i32*, i8*, ...) #1

declare dso_local %struct.TYPE_22__* @ngx_http_lua_get_req(i32*) #1

declare dso_local i32 @luaL_checktype(i32*, i32, i32) #1

declare dso_local i32 @lua_toboolean(i32*, i32) #1

declare dso_local %struct.TYPE_23__* @ngx_http_get_module_ctx(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @ngx_http_lua_check_context(i32*, %struct.TYPE_23__*, i32) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i32 @lua_pushliteral(i32*, i8*) #1

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i32* @ngx_http_lua_get_flush_chain(%struct.TYPE_22__*, %struct.TYPE_23__*) #1

declare dso_local i64 @ngx_http_lua_send_chain_link(%struct.TYPE_22__*, %struct.TYPE_23__*, i32*) #1

declare dso_local i32 @dd(i8*, i32, ...) #1

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, i32, i64) #1

declare dso_local %struct.TYPE_25__* @ngx_http_get_module_loc_conf(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @ngx_add_timer(%struct.TYPE_26__*, i32) #1

declare dso_local i64 @ngx_handle_write_event(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @ngx_del_timer(%struct.TYPE_26__*) #1

declare dso_local i32 @ngx_http_lua_cleanup_pending_operation(%struct.TYPE_24__*) #1

declare dso_local i32 @lua_yield(i32*, i32) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
