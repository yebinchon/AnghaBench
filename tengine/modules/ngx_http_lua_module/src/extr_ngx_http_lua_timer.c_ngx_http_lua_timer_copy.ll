; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_timer.c_ngx_http_lua_timer_copy.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_timer.c_ngx_http_lua_timer_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32*, i32, i32*, %struct.TYPE_16__*, %struct.TYPE_15__, %struct.TYPE_18__* }
%struct.TYPE_16__ = type { i32, i32* }
%struct.TYPE_15__ = type { i32, %struct.TYPE_17__* }
%struct.TYPE_18__ = type { i32, i32* }
%struct.TYPE_19__ = type { i32, %struct.TYPE_17__*, i32 }

@.str = private unnamed_addr constant [8 x i8] c"__index\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"stack top: %d\00", align 1
@coroutines_key = common dso_local global i32 0, align 4
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@ngx_cycle = common dso_local global %struct.TYPE_14__* null, align 8
@ngx_http_lua_timer_handler = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"created next timer (co: %p delay: %M ms)\00", align 1
@NGX_OK = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*)* @ngx_http_lua_timer_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_lua_timer_copy(%struct.TYPE_17__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca %struct.TYPE_17__*, align 8
  %13 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %11, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %12, align 8
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 3
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %10, align 8
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 6
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  store %struct.TYPE_18__* %19, %struct.TYPE_18__** %13, align 8
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 4
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %23 = icmp ne %struct.TYPE_16__* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %1
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 4
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  br label %34

30:                                               ; preds = %1
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  br label %34

34:                                               ; preds = %30, %24
  %35 = phi i32* [ %29, %24 ], [ %33, %30 ]
  store i32* %35, i32** %8, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = call i32* @lua_newthread(i32* %36)
  store i32* %37, i32** %9, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = call i32 @lua_createtable(i32* %38, i32 0, i32 0)
  %40 = load i32*, i32** %9, align 8
  %41 = call i32 @lua_createtable(i32* %40, i32 0, i32 1)
  %42 = load i32*, i32** %9, align 8
  %43 = call i32 @ngx_http_lua_get_globals_table(i32* %42)
  %44 = load i32*, i32** %9, align 8
  %45 = call i32 @lua_setfield(i32* %44, i32 -2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %46 = load i32*, i32** %9, align 8
  %47 = call i32 @lua_setmetatable(i32* %46, i32 -2)
  %48 = load i32*, i32** %9, align 8
  %49 = call i32 @ngx_http_lua_set_globals_table(i32* %48)
  %50 = load i32*, i32** %10, align 8
  %51 = call i32 @lua_gettop(i32* %50)
  %52 = call i32 @dd(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = load i32*, i32** %8, align 8
  %54 = load i32*, i32** %10, align 8
  %55 = call i32 @lua_xmove(i32* %53, i32* %54, i32 1)
  %56 = load i32*, i32** %10, align 8
  %57 = call i32 @lua_pushvalue(i32* %56, i32 1)
  %58 = load i32*, i32** %10, align 8
  %59 = load i32*, i32** %9, align 8
  %60 = call i32 @lua_xmove(i32* %58, i32* %59, i32 1)
  %61 = load i32*, i32** %9, align 8
  %62 = call i32 @ngx_http_lua_get_globals_table(i32* %61)
  %63 = load i32*, i32** %9, align 8
  %64 = call i32 @lua_setfenv(i32* %63, i32 -2)
  %65 = load i32*, i32** %10, align 8
  %66 = load i32, i32* @coroutines_key, align 4
  %67 = call i32 @ngx_http_lua_lightudata_mask(i32 %66)
  %68 = call i32 @lua_pushlightuserdata(i32* %65, i32 %67)
  %69 = load i32*, i32** %10, align 8
  %70 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %71 = call i32 @lua_rawget(i32* %69, i32 %70)
  %72 = load i32*, i32** %10, align 8
  %73 = call i32 @lua_pushvalue(i32* %72, i32 -2)
  %74 = load i32*, i32** %10, align 8
  %75 = call i32 @luaL_ref(i32* %74, i32 -2)
  store i32 %75, i32* %5, align 4
  %76 = load i32*, i32** %10, align 8
  %77 = call i32 @lua_pop(i32* %76, i32 2)
  %78 = load i32*, i32** %10, align 8
  %79 = call i32 @lua_gettop(i32* %78)
  store i32 %79, i32* %4, align 4
  %80 = load i32, i32* %4, align 4
  %81 = icmp sgt i32 %80, 1
  br i1 %81, label %82, label %100

82:                                               ; preds = %34
  store i32 2, i32* %6, align 4
  br label %83

83:                                               ; preds = %91, %82
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* %4, align 4
  %86 = icmp sle i32 %84, %85
  br i1 %86, label %87, label %94

87:                                               ; preds = %83
  %88 = load i32*, i32** %10, align 8
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @lua_pushvalue(i32* %88, i32 %89)
  br label %91

91:                                               ; preds = %87
  %92 = load i32, i32* %6, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %6, align 4
  br label %83

94:                                               ; preds = %83
  %95 = load i32*, i32** %10, align 8
  %96 = load i32*, i32** %9, align 8
  %97 = load i32, i32* %4, align 4
  %98 = sub nsw i32 %97, 1
  %99 = call i32 @lua_xmove(i32* %95, i32* %96, i32 %98)
  br label %100

100:                                              ; preds = %94, %34
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** @ngx_cycle, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32* @ngx_alloc(i32 88, i32 %103)
  store i32* %104, i32** %7, align 8
  %105 = load i32*, i32** %7, align 8
  %106 = icmp eq i32* %105, null
  br i1 %106, label %107, label %108

107:                                              ; preds = %100
  br label %220

108:                                              ; preds = %100
  %109 = load i32*, i32** %7, align 8
  %110 = bitcast i32* %109 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %110, %struct.TYPE_19__** %11, align 8
  %111 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %112 = call i32 @ngx_memzero(%struct.TYPE_19__* %111, i32 24)
  %113 = load i32*, i32** %7, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 24
  store i32* %114, i32** %7, align 8
  %115 = load i32*, i32** %7, align 8
  %116 = bitcast i32* %115 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %116, %struct.TYPE_17__** %12, align 8
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %119 = call i32 @ngx_memcpy(%struct.TYPE_17__* %117, %struct.TYPE_17__* %118, i32 64)
  %120 = load i32, i32* %5, align 4
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 8
  %123 = load i32*, i32** %9, align 8
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i32 0, i32 3
  store i32* %123, i32** %125, align 8
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** @ngx_cycle, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32* @ngx_create_pool(i32 128, i32 %128)
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 1
  store i32* %129, i32** %131, align 8
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = icmp eq i32* %134, null
  br i1 %135, label %136, label %137

136:                                              ; preds = %108
  br label %220

137:                                              ; preds = %108
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 5
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %175

143:                                              ; preds = %137
  %144 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %144, i32 0, i32 1
  %146 = load i32*, i32** %145, align 8
  %147 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %147, i32 0, i32 5
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = call %struct.TYPE_17__* @ngx_palloc(i32* %146, i32 %150)
  %152 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %153 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %152, i32 0, i32 5
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 1
  store %struct.TYPE_17__* %151, %struct.TYPE_17__** %154, align 8
  %155 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %155, i32 0, i32 5
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 1
  %158 = load %struct.TYPE_17__*, %struct.TYPE_17__** %157, align 8
  %159 = icmp eq %struct.TYPE_17__* %158, null
  br i1 %159, label %160, label %161

160:                                              ; preds = %143
  br label %220

161:                                              ; preds = %143
  %162 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %163 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %162, i32 0, i32 5
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i32 0, i32 1
  %165 = load %struct.TYPE_17__*, %struct.TYPE_17__** %164, align 8
  %166 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %166, i32 0, i32 5
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 1
  %169 = load %struct.TYPE_17__*, %struct.TYPE_17__** %168, align 8
  %170 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %171 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %170, i32 0, i32 5
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @ngx_memcpy(%struct.TYPE_17__* %165, %struct.TYPE_17__* %169, i32 %173)
  br label %175

175:                                              ; preds = %161, %137
  %176 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %177 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %176, i32 0, i32 4
  %178 = load %struct.TYPE_16__*, %struct.TYPE_16__** %177, align 8
  %179 = icmp ne %struct.TYPE_16__* %178, null
  br i1 %179, label %180, label %187

180:                                              ; preds = %175
  %181 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %182 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %181, i32 0, i32 4
  %183 = load %struct.TYPE_16__*, %struct.TYPE_16__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %184, align 8
  br label %187

187:                                              ; preds = %180, %175
  %188 = load i32, i32* @ngx_http_lua_timer_handler, align 4
  %189 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %190 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %189, i32 0, i32 2
  store i32 %188, i32* %190, align 8
  %191 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %192 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %193 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %192, i32 0, i32 1
  store %struct.TYPE_17__* %191, %struct.TYPE_17__** %193, align 8
  %194 = load %struct.TYPE_14__*, %struct.TYPE_14__** @ngx_cycle, align 8
  %195 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %198 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %197, i32 0, i32 0
  store i32 %196, i32* %198, align 8
  %199 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %200 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %200, align 8
  %203 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %204 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %205 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 8
  %207 = call i32 @ngx_add_timer(%struct.TYPE_19__* %203, i32 %206)
  %208 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %209 = load %struct.TYPE_14__*, %struct.TYPE_14__** @ngx_cycle, align 8
  %210 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %213 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %212, i32 0, i32 3
  %214 = load i32*, i32** %213, align 8
  %215 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %216 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 8
  %218 = call i32 @ngx_log_debug2(i32 %208, i32 %211, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32* %214, i32 %217)
  %219 = load i32, i32* @NGX_OK, align 4
  store i32 %219, i32* %2, align 4
  br label %253

220:                                              ; preds = %160, %136, %107
  %221 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %222 = icmp ne %struct.TYPE_17__* %221, null
  br i1 %222, label %223, label %233

223:                                              ; preds = %220
  %224 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %225 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %224, i32 0, i32 1
  %226 = load i32*, i32** %225, align 8
  %227 = icmp ne i32* %226, null
  br i1 %227, label %228, label %233

228:                                              ; preds = %223
  %229 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %230 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %229, i32 0, i32 1
  %231 = load i32*, i32** %230, align 8
  %232 = call i32 @ngx_destroy_pool(i32* %231)
  br label %233

233:                                              ; preds = %228, %223, %220
  %234 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %235 = icmp ne %struct.TYPE_19__* %234, null
  br i1 %235, label %236, label %239

236:                                              ; preds = %233
  %237 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %238 = call i32 @ngx_free(%struct.TYPE_19__* %237)
  br label %239

239:                                              ; preds = %236, %233
  %240 = load i32*, i32** %10, align 8
  %241 = load i32, i32* @coroutines_key, align 4
  %242 = call i32 @ngx_http_lua_lightudata_mask(i32 %241)
  %243 = call i32 @lua_pushlightuserdata(i32* %240, i32 %242)
  %244 = load i32*, i32** %10, align 8
  %245 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %246 = call i32 @lua_rawget(i32* %244, i32 %245)
  %247 = load i32*, i32** %10, align 8
  %248 = load i32, i32* %5, align 4
  %249 = call i32 @luaL_unref(i32* %247, i32 -1, i32 %248)
  %250 = load i32*, i32** %10, align 8
  %251 = call i32 @lua_pop(i32* %250, i32 1)
  %252 = load i32, i32* @NGX_ERROR, align 4
  store i32 %252, i32* %2, align 4
  br label %253

253:                                              ; preds = %239, %187
  %254 = load i32, i32* %2, align 4
  ret i32 %254
}

declare dso_local i32* @lua_newthread(i32*) #1

declare dso_local i32 @lua_createtable(i32*, i32, i32) #1

declare dso_local i32 @ngx_http_lua_get_globals_table(i32*) #1

declare dso_local i32 @lua_setfield(i32*, i32, i8*) #1

declare dso_local i32 @lua_setmetatable(i32*, i32) #1

declare dso_local i32 @ngx_http_lua_set_globals_table(i32*) #1

declare dso_local i32 @dd(i8*, i32) #1

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @lua_xmove(i32*, i32*, i32) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @lua_setfenv(i32*, i32) #1

declare dso_local i32 @lua_pushlightuserdata(i32*, i32) #1

declare dso_local i32 @ngx_http_lua_lightudata_mask(i32) #1

declare dso_local i32 @lua_rawget(i32*, i32) #1

declare dso_local i32 @luaL_ref(i32*, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32* @ngx_alloc(i32, i32) #1

declare dso_local i32 @ngx_memzero(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @ngx_memcpy(%struct.TYPE_17__*, %struct.TYPE_17__*, i32) #1

declare dso_local i32* @ngx_create_pool(i32, i32) #1

declare dso_local %struct.TYPE_17__* @ngx_palloc(i32*, i32) #1

declare dso_local i32 @ngx_add_timer(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, i32*, i32) #1

declare dso_local i32 @ngx_destroy_pool(i32*) #1

declare dso_local i32 @ngx_free(%struct.TYPE_19__*) #1

declare dso_local i32 @luaL_unref(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
