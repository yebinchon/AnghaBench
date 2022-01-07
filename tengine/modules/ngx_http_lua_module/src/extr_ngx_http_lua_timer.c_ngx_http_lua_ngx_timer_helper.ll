; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_timer.c_ngx_http_lua_ngx_timer_helper.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_timer.c_ngx_http_lua_ngx_timer_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i32, i32** }
%struct.TYPE_24__ = type { i32, %struct.TYPE_33__*, i32 }
%struct.TYPE_33__ = type { i32, i32*, i32*, %struct.TYPE_29__*, %struct.TYPE_28__, i32*, %struct.TYPE_34__*, i32, i32, i32, i64, i64 }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_28__ = type { i32*, i64 }
%struct.TYPE_34__ = type { i64, i64, %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i32, %struct.TYPE_34__*, %struct.TYPE_30__*, i64 }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_32__ = type { %struct.TYPE_31__*, i32, i32, i32 }
%struct.TYPE_31__ = type { %struct.TYPE_25__, i32*, i32 }
%struct.TYPE_25__ = type { i64, i32 }
%struct.TYPE_35__ = type { %struct.TYPE_29__* }

@.str = private unnamed_addr constant [42 x i8] c"expecting at least 2 arguments but got %d\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"delay cannot be zero\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Lua function expected\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"no request\00", align 1
@ngx_http_lua_module = common dso_local global i32 0, align 4
@ngx_exiting = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [16 x i8] c"process exiting\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"too many pending timers\00", align 1
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@ngx_cycle = common dso_local global %struct.TYPE_27__* null, align 8
@.str.6 = private unnamed_addr constant [37 x i8] c"lua creating fake watcher connection\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"no memory\00", align 1
@ngx_http_lua_abort_pending_timers = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [8 x i8] c"__index\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"stack top: %d\00", align 1
@coroutines_key = common dso_local global i32 0, align 4
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@ngx_http_lua_timer_handler = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [36 x i8] c"created timer (co: %p delay: %M ms)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @ngx_http_lua_ngx_timer_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_lua_ngx_timer_helper(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_24__*, align 8
  %13 = alloca %struct.TYPE_32__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_35__*, align 8
  %16 = alloca %struct.TYPE_33__*, align 8
  %17 = alloca %struct.TYPE_34__*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %12, align 8
  store i32* null, i32** %14, align 8
  store %struct.TYPE_33__* null, %struct.TYPE_33__** %16, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @lua_gettop(i32* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 2
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load i32*, i32** %4, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 (i32*, i8*, ...) @luaL_error(i32* %23, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %24)
  store i32 %25, i32* %3, align 4
  br label %445

26:                                               ; preds = %2
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @luaL_checknumber(i32* %27, i32 1)
  %29 = mul nsw i32 %28, 1000
  %30 = sext i32 %29 to i64
  store i64 %30, i64* %11, align 8
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %26
  %34 = load i64, i64* %11, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i32*, i32** %4, align 8
  %38 = call i32 (i32*, i8*, ...) @luaL_error(i32* %37, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store i32 %38, i32* %3, align 4
  br label %445

39:                                               ; preds = %33, %26
  %40 = load i32*, i32** %4, align 8
  %41 = load i32*, i32** %4, align 8
  %42 = call i64 @lua_isfunction(i32* %41, i32 2)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load i32*, i32** %4, align 8
  %46 = call i32 @lua_iscfunction(i32* %45, i32 2)
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  br label %49

49:                                               ; preds = %44, %39
  %50 = phi i1 [ false, %39 ], [ %48, %44 ]
  %51 = zext i1 %50 to i32
  %52 = call i32 @luaL_argcheck(i32* %40, i32 %51, i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %53 = load i32*, i32** %4, align 8
  %54 = call %struct.TYPE_32__* @ngx_http_lua_get_req(i32* %53)
  store %struct.TYPE_32__* %54, %struct.TYPE_32__** %13, align 8
  %55 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %56 = icmp eq %struct.TYPE_32__* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %49
  %58 = load i32*, i32** %4, align 8
  %59 = call i32 (i32*, i8*, ...) @luaL_error(i32* %58, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  store i32 %59, i32* %3, align 4
  br label %445

60:                                               ; preds = %49
  %61 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %62 = load i32, i32* @ngx_http_lua_module, align 4
  %63 = call %struct.TYPE_35__* @ngx_http_get_module_ctx(%struct.TYPE_32__* %61, i32 %62)
  store %struct.TYPE_35__* %63, %struct.TYPE_35__** %15, align 8
  %64 = load i64, i64* @ngx_exiting, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %60
  %67 = load i64, i64* %11, align 8
  %68 = icmp sgt i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %66
  %70 = load i32*, i32** %4, align 8
  %71 = call i32 @lua_pushnil(i32* %70)
  %72 = load i32*, i32** %4, align 8
  %73 = call i32 @lua_pushliteral(i32* %72, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  store i32 2, i32* %3, align 4
  br label %445

74:                                               ; preds = %66, %60
  %75 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %76 = load i32, i32* @ngx_http_lua_module, align 4
  %77 = call %struct.TYPE_34__* @ngx_http_get_module_main_conf(%struct.TYPE_32__* %75, i32 %76)
  store %struct.TYPE_34__* %77, %struct.TYPE_34__** %17, align 8
  %78 = load %struct.TYPE_34__*, %struct.TYPE_34__** %17, align 8
  %79 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.TYPE_34__*, %struct.TYPE_34__** %17, align 8
  %82 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp sge i64 %80, %83
  br i1 %84, label %85, label %90

85:                                               ; preds = %74
  %86 = load i32*, i32** %4, align 8
  %87 = call i32 @lua_pushnil(i32* %86)
  %88 = load i32*, i32** %4, align 8
  %89 = call i32 @lua_pushliteral(i32* %88, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  store i32 2, i32* %3, align 4
  br label %445

90:                                               ; preds = %74
  %91 = load %struct.TYPE_34__*, %struct.TYPE_34__** %17, align 8
  %92 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %91, i32 0, i32 2
  %93 = load %struct.TYPE_26__*, %struct.TYPE_26__** %92, align 8
  %94 = icmp eq %struct.TYPE_26__* %93, null
  br i1 %94, label %95, label %157

95:                                               ; preds = %90
  %96 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %97 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ngx_cycle, align 8
  %98 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @ngx_log_debug0(i32 %96, i32 %99, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  %101 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ngx_cycle, align 8
  %102 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %101, i32 0, i32 1
  %103 = load i32**, i32*** %102, align 8
  %104 = icmp ne i32** %103, null
  br i1 %104, label %105, label %111

105:                                              ; preds = %95
  %106 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ngx_cycle, align 8
  %107 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %106, i32 0, i32 1
  %108 = load i32**, i32*** %107, align 8
  %109 = getelementptr inbounds i32*, i32** %108, i64 0
  %110 = load i32*, i32** %109, align 8
  store i32* %110, i32** %14, align 8
  br label %111

111:                                              ; preds = %105, %95
  %112 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ngx_cycle, align 8
  %113 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call %struct.TYPE_26__* @ngx_get_connection(i32 0, i32 %114)
  %116 = load %struct.TYPE_34__*, %struct.TYPE_34__** %17, align 8
  %117 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %116, i32 0, i32 2
  store %struct.TYPE_26__* %115, %struct.TYPE_26__** %117, align 8
  %118 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ngx_cycle, align 8
  %119 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %118, i32 0, i32 1
  %120 = load i32**, i32*** %119, align 8
  %121 = icmp ne i32** %120, null
  br i1 %121, label %122, label %128

122:                                              ; preds = %111
  %123 = load i32*, i32** %14, align 8
  %124 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ngx_cycle, align 8
  %125 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %124, i32 0, i32 1
  %126 = load i32**, i32*** %125, align 8
  %127 = getelementptr inbounds i32*, i32** %126, i64 0
  store i32* %123, i32** %127, align 8
  br label %128

128:                                              ; preds = %122, %111
  %129 = load %struct.TYPE_34__*, %struct.TYPE_34__** %17, align 8
  %130 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %129, i32 0, i32 2
  %131 = load %struct.TYPE_26__*, %struct.TYPE_26__** %130, align 8
  %132 = icmp eq %struct.TYPE_26__* %131, null
  br i1 %132, label %133, label %136

133:                                              ; preds = %128
  %134 = load i32*, i32** %4, align 8
  %135 = call i32 (i32*, i8*, ...) @luaL_error(i32* %134, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  store i32 %135, i32* %3, align 4
  br label %445

136:                                              ; preds = %128
  %137 = load %struct.TYPE_34__*, %struct.TYPE_34__** %17, align 8
  %138 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %137, i32 0, i32 2
  %139 = load %struct.TYPE_26__*, %struct.TYPE_26__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %139, i32 0, i32 3
  store i64 -2, i64* %140, align 8
  %141 = load %struct.TYPE_34__*, %struct.TYPE_34__** %17, align 8
  %142 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %141, i32 0, i32 2
  %143 = load %struct.TYPE_26__*, %struct.TYPE_26__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %143, i32 0, i32 0
  store i32 1, i32* %144, align 8
  %145 = load i32, i32* @ngx_http_lua_abort_pending_timers, align 4
  %146 = load %struct.TYPE_34__*, %struct.TYPE_34__** %17, align 8
  %147 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %146, i32 0, i32 2
  %148 = load %struct.TYPE_26__*, %struct.TYPE_26__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %148, i32 0, i32 2
  %150 = load %struct.TYPE_30__*, %struct.TYPE_30__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %150, i32 0, i32 0
  store i32 %145, i32* %151, align 4
  %152 = load %struct.TYPE_34__*, %struct.TYPE_34__** %17, align 8
  %153 = load %struct.TYPE_34__*, %struct.TYPE_34__** %17, align 8
  %154 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %153, i32 0, i32 2
  %155 = load %struct.TYPE_26__*, %struct.TYPE_26__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %155, i32 0, i32 1
  store %struct.TYPE_34__* %152, %struct.TYPE_34__** %156, align 8
  br label %157

157:                                              ; preds = %136, %90
  %158 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %159 = load %struct.TYPE_35__*, %struct.TYPE_35__** %15, align 8
  %160 = call i32* @ngx_http_lua_get_lua_vm(%struct.TYPE_32__* %158, %struct.TYPE_35__* %159)
  store i32* %160, i32** %9, align 8
  %161 = load i32*, i32** %9, align 8
  %162 = call i32* @lua_newthread(i32* %161)
  store i32* %162, i32** %10, align 8
  %163 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %164 = load i32*, i32** %4, align 8
  %165 = load i32*, i32** %10, align 8
  %166 = call i32 @ngx_http_lua_probe_user_coroutine_create(%struct.TYPE_32__* %163, i32* %164, i32* %165)
  %167 = load i32*, i32** %10, align 8
  %168 = call i32 @lua_createtable(i32* %167, i32 0, i32 0)
  %169 = load i32*, i32** %10, align 8
  %170 = call i32 @lua_createtable(i32* %169, i32 0, i32 1)
  %171 = load i32*, i32** %10, align 8
  %172 = call i32 @ngx_http_lua_get_globals_table(i32* %171)
  %173 = load i32*, i32** %10, align 8
  %174 = call i32 @lua_setfield(i32* %173, i32 -2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  %175 = load i32*, i32** %10, align 8
  %176 = call i32 @lua_setmetatable(i32* %175, i32 -2)
  %177 = load i32*, i32** %10, align 8
  %178 = call i32 @ngx_http_lua_set_globals_table(i32* %177)
  %179 = load i32*, i32** %4, align 8
  %180 = call i32 @lua_gettop(i32* %179)
  %181 = call i32 @dd(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i32 %180)
  %182 = load i32*, i32** %9, align 8
  %183 = load i32*, i32** %4, align 8
  %184 = call i32 @lua_xmove(i32* %182, i32* %183, i32 1)
  %185 = load i32*, i32** %4, align 8
  %186 = call i32 @lua_pushvalue(i32* %185, i32 2)
  %187 = load i32*, i32** %4, align 8
  %188 = load i32*, i32** %10, align 8
  %189 = call i32 @lua_xmove(i32* %187, i32* %188, i32 1)
  %190 = load i32*, i32** %10, align 8
  %191 = call i32 @ngx_http_lua_get_globals_table(i32* %190)
  %192 = load i32*, i32** %10, align 8
  %193 = call i32 @lua_setfenv(i32* %192, i32 -2)
  %194 = load i32*, i32** %4, align 8
  %195 = load i32, i32* @coroutines_key, align 4
  %196 = call i32 @ngx_http_lua_lightudata_mask(i32 %195)
  %197 = call i32 @lua_pushlightuserdata(i32* %194, i32 %196)
  %198 = load i32*, i32** %4, align 8
  %199 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %200 = call i32 @lua_rawget(i32* %198, i32 %199)
  %201 = load i32*, i32** %4, align 8
  %202 = call i32 @lua_pushvalue(i32* %201, i32 -2)
  %203 = load i32*, i32** %4, align 8
  %204 = call i32 @luaL_ref(i32* %203, i32 -2)
  store i32 %204, i32* %7, align 4
  %205 = load i32*, i32** %4, align 8
  %206 = call i32 @lua_pop(i32* %205, i32 1)
  %207 = load i32, i32* %6, align 4
  %208 = icmp sgt i32 %207, 2
  br i1 %208, label %209, label %217

209:                                              ; preds = %157
  %210 = load i32*, i32** %4, align 8
  %211 = call i32 @lua_pop(i32* %210, i32 1)
  %212 = load i32*, i32** %4, align 8
  %213 = load i32*, i32** %10, align 8
  %214 = load i32, i32* %6, align 4
  %215 = sub nsw i32 %214, 2
  %216 = call i32 @lua_xmove(i32* %212, i32* %213, i32 %215)
  br label %217

217:                                              ; preds = %209, %157
  %218 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %219 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %218, i32 0, i32 0
  %220 = load %struct.TYPE_31__*, %struct.TYPE_31__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 8
  %223 = call i32* @ngx_alloc(i32 120, i32 %222)
  store i32* %223, i32** %8, align 8
  %224 = load i32*, i32** %8, align 8
  %225 = icmp eq i32* %224, null
  br i1 %225, label %226, label %227

226:                                              ; preds = %217
  br label %413

227:                                              ; preds = %217
  %228 = load i32*, i32** %8, align 8
  %229 = bitcast i32* %228 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %229, %struct.TYPE_24__** %12, align 8
  %230 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %231 = call i32 @ngx_memzero(%struct.TYPE_24__* %230, i32 24)
  %232 = load i32*, i32** %8, align 8
  %233 = getelementptr inbounds i32, i32* %232, i64 24
  store i32* %233, i32** %8, align 8
  %234 = load i32*, i32** %8, align 8
  %235 = bitcast i32* %234 to %struct.TYPE_33__*
  store %struct.TYPE_33__* %235, %struct.TYPE_33__** %16, align 8
  %236 = load i32, i32* %5, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %240

238:                                              ; preds = %227
  %239 = load i64, i64* %11, align 8
  br label %241

240:                                              ; preds = %227
  br label %241

241:                                              ; preds = %240, %238
  %242 = phi i64 [ %239, %238 ], [ 0, %240 ]
  %243 = load %struct.TYPE_33__*, %struct.TYPE_33__** %16, align 8
  %244 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %243, i32 0, i32 11
  store i64 %242, i64* %244, align 8
  %245 = load %struct.TYPE_33__*, %struct.TYPE_33__** %16, align 8
  %246 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %245, i32 0, i32 10
  store i64 0, i64* %246, align 8
  %247 = load i32, i32* %7, align 4
  %248 = load %struct.TYPE_33__*, %struct.TYPE_33__** %16, align 8
  %249 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %248, i32 0, i32 0
  store i32 %247, i32* %249, align 8
  %250 = load i32*, i32** %10, align 8
  %251 = load %struct.TYPE_33__*, %struct.TYPE_33__** %16, align 8
  %252 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %251, i32 0, i32 2
  store i32* %250, i32** %252, align 8
  %253 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %254 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %253, i32 0, i32 3
  %255 = load i32, i32* %254, align 8
  %256 = load %struct.TYPE_33__*, %struct.TYPE_33__** %16, align 8
  %257 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %256, i32 0, i32 9
  store i32 %255, i32* %257, align 8
  %258 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %259 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %258, i32 0, i32 2
  %260 = load i32, i32* %259, align 4
  %261 = load %struct.TYPE_33__*, %struct.TYPE_33__** %16, align 8
  %262 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %261, i32 0, i32 8
  store i32 %260, i32* %262, align 4
  %263 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %264 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 8
  %266 = load %struct.TYPE_33__*, %struct.TYPE_33__** %16, align 8
  %267 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %266, i32 0, i32 7
  store i32 %265, i32* %267, align 8
  %268 = load %struct.TYPE_34__*, %struct.TYPE_34__** %17, align 8
  %269 = load %struct.TYPE_33__*, %struct.TYPE_33__** %16, align 8
  %270 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %269, i32 0, i32 6
  store %struct.TYPE_34__* %268, %struct.TYPE_34__** %270, align 8
  %271 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ngx_cycle, align 8
  %272 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = call i32* @ngx_create_pool(i32 128, i32 %273)
  %275 = load %struct.TYPE_33__*, %struct.TYPE_33__** %16, align 8
  %276 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %275, i32 0, i32 1
  store i32* %274, i32** %276, align 8
  %277 = load %struct.TYPE_33__*, %struct.TYPE_33__** %16, align 8
  %278 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %277, i32 0, i32 1
  %279 = load i32*, i32** %278, align 8
  %280 = icmp eq i32* %279, null
  br i1 %280, label %281, label %282

281:                                              ; preds = %241
  br label %413

282:                                              ; preds = %241
  %283 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %284 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %283, i32 0, i32 0
  %285 = load %struct.TYPE_31__*, %struct.TYPE_31__** %284, align 8
  %286 = icmp ne %struct.TYPE_31__* %285, null
  br i1 %286, label %287, label %295

287:                                              ; preds = %282
  %288 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %289 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %288, i32 0, i32 0
  %290 = load %struct.TYPE_31__*, %struct.TYPE_31__** %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %290, i32 0, i32 1
  %292 = load i32*, i32** %291, align 8
  %293 = load %struct.TYPE_33__*, %struct.TYPE_33__** %16, align 8
  %294 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %293, i32 0, i32 5
  store i32* %292, i32** %294, align 8
  br label %298

295:                                              ; preds = %282
  %296 = load %struct.TYPE_33__*, %struct.TYPE_33__** %16, align 8
  %297 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %296, i32 0, i32 5
  store i32* null, i32** %297, align 8
  br label %298

298:                                              ; preds = %295, %287
  %299 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %300 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %299, i32 0, i32 0
  %301 = load %struct.TYPE_31__*, %struct.TYPE_31__** %300, align 8
  %302 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %301, i32 0, i32 0
  %303 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %302, i32 0, i32 0
  %304 = load i64, i64* %303, align 8
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %306, label %353

306:                                              ; preds = %298
  %307 = load %struct.TYPE_33__*, %struct.TYPE_33__** %16, align 8
  %308 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %307, i32 0, i32 1
  %309 = load i32*, i32** %308, align 8
  %310 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %311 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %310, i32 0, i32 0
  %312 = load %struct.TYPE_31__*, %struct.TYPE_31__** %311, align 8
  %313 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %312, i32 0, i32 0
  %314 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %313, i32 0, i32 0
  %315 = load i64, i64* %314, align 8
  %316 = call i32* @ngx_palloc(i32* %309, i64 %315)
  %317 = load %struct.TYPE_33__*, %struct.TYPE_33__** %16, align 8
  %318 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %317, i32 0, i32 4
  %319 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %318, i32 0, i32 0
  store i32* %316, i32** %319, align 8
  %320 = load %struct.TYPE_33__*, %struct.TYPE_33__** %16, align 8
  %321 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %320, i32 0, i32 4
  %322 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %321, i32 0, i32 0
  %323 = load i32*, i32** %322, align 8
  %324 = icmp eq i32* %323, null
  br i1 %324, label %325, label %326

325:                                              ; preds = %306
  br label %413

326:                                              ; preds = %306
  %327 = load %struct.TYPE_33__*, %struct.TYPE_33__** %16, align 8
  %328 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %327, i32 0, i32 4
  %329 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %328, i32 0, i32 0
  %330 = load i32*, i32** %329, align 8
  %331 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %332 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %331, i32 0, i32 0
  %333 = load %struct.TYPE_31__*, %struct.TYPE_31__** %332, align 8
  %334 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %333, i32 0, i32 0
  %335 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %334, i32 0, i32 1
  %336 = load i32, i32* %335, align 8
  %337 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %338 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %337, i32 0, i32 0
  %339 = load %struct.TYPE_31__*, %struct.TYPE_31__** %338, align 8
  %340 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %339, i32 0, i32 0
  %341 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %340, i32 0, i32 0
  %342 = load i64, i64* %341, align 8
  %343 = call i32 @ngx_memcpy(i32* %330, i32 %336, i64 %342)
  %344 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %345 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %344, i32 0, i32 0
  %346 = load %struct.TYPE_31__*, %struct.TYPE_31__** %345, align 8
  %347 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %346, i32 0, i32 0
  %348 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %347, i32 0, i32 0
  %349 = load i64, i64* %348, align 8
  %350 = load %struct.TYPE_33__*, %struct.TYPE_33__** %16, align 8
  %351 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %350, i32 0, i32 4
  %352 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %351, i32 0, i32 1
  store i64 %349, i64* %352, align 8
  br label %360

353:                                              ; preds = %298
  %354 = load %struct.TYPE_33__*, %struct.TYPE_33__** %16, align 8
  %355 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %354, i32 0, i32 4
  %356 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %355, i32 0, i32 1
  store i64 0, i64* %356, align 8
  %357 = load %struct.TYPE_33__*, %struct.TYPE_33__** %16, align 8
  %358 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %357, i32 0, i32 4
  %359 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %358, i32 0, i32 0
  store i32* null, i32** %359, align 8
  br label %360

360:                                              ; preds = %353, %326
  %361 = load %struct.TYPE_35__*, %struct.TYPE_35__** %15, align 8
  %362 = icmp ne %struct.TYPE_35__* %361, null
  br i1 %362, label %363, label %380

363:                                              ; preds = %360
  %364 = load %struct.TYPE_35__*, %struct.TYPE_35__** %15, align 8
  %365 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %364, i32 0, i32 0
  %366 = load %struct.TYPE_29__*, %struct.TYPE_29__** %365, align 8
  %367 = icmp ne %struct.TYPE_29__* %366, null
  br i1 %367, label %368, label %380

368:                                              ; preds = %363
  %369 = load %struct.TYPE_35__*, %struct.TYPE_35__** %15, align 8
  %370 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %369, i32 0, i32 0
  %371 = load %struct.TYPE_29__*, %struct.TYPE_29__** %370, align 8
  %372 = load %struct.TYPE_33__*, %struct.TYPE_33__** %16, align 8
  %373 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %372, i32 0, i32 3
  store %struct.TYPE_29__* %371, %struct.TYPE_29__** %373, align 8
  %374 = load %struct.TYPE_33__*, %struct.TYPE_33__** %16, align 8
  %375 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %374, i32 0, i32 3
  %376 = load %struct.TYPE_29__*, %struct.TYPE_29__** %375, align 8
  %377 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %376, i32 0, i32 0
  %378 = load i32, i32* %377, align 4
  %379 = add nsw i32 %378, 1
  store i32 %379, i32* %377, align 4
  br label %383

380:                                              ; preds = %363, %360
  %381 = load %struct.TYPE_33__*, %struct.TYPE_33__** %16, align 8
  %382 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %381, i32 0, i32 3
  store %struct.TYPE_29__* null, %struct.TYPE_29__** %382, align 8
  br label %383

383:                                              ; preds = %380, %368
  %384 = load i32, i32* @ngx_http_lua_timer_handler, align 4
  %385 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %386 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %385, i32 0, i32 2
  store i32 %384, i32* %386, align 8
  %387 = load %struct.TYPE_33__*, %struct.TYPE_33__** %16, align 8
  %388 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %389 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %388, i32 0, i32 1
  store %struct.TYPE_33__* %387, %struct.TYPE_33__** %389, align 8
  %390 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ngx_cycle, align 8
  %391 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %390, i32 0, i32 0
  %392 = load i32, i32* %391, align 8
  %393 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %394 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %393, i32 0, i32 0
  store i32 %392, i32* %394, align 8
  %395 = load %struct.TYPE_34__*, %struct.TYPE_34__** %17, align 8
  %396 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %395, i32 0, i32 0
  %397 = load i64, i64* %396, align 8
  %398 = add nsw i64 %397, 1
  store i64 %398, i64* %396, align 8
  %399 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %400 = load i64, i64* %11, align 8
  %401 = call i32 @ngx_add_timer(%struct.TYPE_24__* %399, i64 %400)
  %402 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %403 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ngx_cycle, align 8
  %404 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %403, i32 0, i32 0
  %405 = load i32, i32* %404, align 8
  %406 = load %struct.TYPE_33__*, %struct.TYPE_33__** %16, align 8
  %407 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %406, i32 0, i32 2
  %408 = load i32*, i32** %407, align 8
  %409 = load i64, i64* %11, align 8
  %410 = call i32 @ngx_log_debug2(i32 %402, i32 %405, i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0), i32* %408, i64 %409)
  %411 = load i32*, i32** %4, align 8
  %412 = call i32 @lua_pushinteger(i32* %411, i32 1)
  store i32 1, i32* %3, align 4
  br label %445

413:                                              ; preds = %325, %281, %226
  %414 = load %struct.TYPE_33__*, %struct.TYPE_33__** %16, align 8
  %415 = icmp ne %struct.TYPE_33__* %414, null
  br i1 %415, label %416, label %426

416:                                              ; preds = %413
  %417 = load %struct.TYPE_33__*, %struct.TYPE_33__** %16, align 8
  %418 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %417, i32 0, i32 1
  %419 = load i32*, i32** %418, align 8
  %420 = icmp ne i32* %419, null
  br i1 %420, label %421, label %426

421:                                              ; preds = %416
  %422 = load %struct.TYPE_33__*, %struct.TYPE_33__** %16, align 8
  %423 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %422, i32 0, i32 1
  %424 = load i32*, i32** %423, align 8
  %425 = call i32 @ngx_destroy_pool(i32* %424)
  br label %426

426:                                              ; preds = %421, %416, %413
  %427 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %428 = icmp ne %struct.TYPE_24__* %427, null
  br i1 %428, label %429, label %432

429:                                              ; preds = %426
  %430 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %431 = call i32 @ngx_free(%struct.TYPE_24__* %430)
  br label %432

432:                                              ; preds = %429, %426
  %433 = load i32*, i32** %4, align 8
  %434 = load i32, i32* @coroutines_key, align 4
  %435 = call i32 @ngx_http_lua_lightudata_mask(i32 %434)
  %436 = call i32 @lua_pushlightuserdata(i32* %433, i32 %435)
  %437 = load i32*, i32** %4, align 8
  %438 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %439 = call i32 @lua_rawget(i32* %437, i32 %438)
  %440 = load i32*, i32** %4, align 8
  %441 = load i32, i32* %7, align 4
  %442 = call i32 @luaL_unref(i32* %440, i32 -1, i32 %441)
  %443 = load i32*, i32** %4, align 8
  %444 = call i32 (i32*, i8*, ...) @luaL_error(i32* %443, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  store i32 %444, i32* %3, align 4
  br label %445

445:                                              ; preds = %432, %383, %133, %85, %69, %57, %36, %22
  %446 = load i32, i32* %3, align 4
  ret i32 %446
}

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @luaL_error(i32*, i8*, ...) #1

declare dso_local i32 @luaL_checknumber(i32*, i32) #1

declare dso_local i32 @luaL_argcheck(i32*, i32, i32, i8*) #1

declare dso_local i64 @lua_isfunction(i32*, i32) #1

declare dso_local i32 @lua_iscfunction(i32*, i32) #1

declare dso_local %struct.TYPE_32__* @ngx_http_lua_get_req(i32*) #1

declare dso_local %struct.TYPE_35__* @ngx_http_get_module_ctx(%struct.TYPE_32__*, i32) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i32 @lua_pushliteral(i32*, i8*) #1

declare dso_local %struct.TYPE_34__* @ngx_http_get_module_main_conf(%struct.TYPE_32__*, i32) #1

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local %struct.TYPE_26__* @ngx_get_connection(i32, i32) #1

declare dso_local i32* @ngx_http_lua_get_lua_vm(%struct.TYPE_32__*, %struct.TYPE_35__*) #1

declare dso_local i32* @lua_newthread(i32*) #1

declare dso_local i32 @ngx_http_lua_probe_user_coroutine_create(%struct.TYPE_32__*, i32*, i32*) #1

declare dso_local i32 @lua_createtable(i32*, i32, i32) #1

declare dso_local i32 @ngx_http_lua_get_globals_table(i32*) #1

declare dso_local i32 @lua_setfield(i32*, i32, i8*) #1

declare dso_local i32 @lua_setmetatable(i32*, i32) #1

declare dso_local i32 @ngx_http_lua_set_globals_table(i32*) #1

declare dso_local i32 @dd(i8*, i32) #1

declare dso_local i32 @lua_xmove(i32*, i32*, i32) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @lua_setfenv(i32*, i32) #1

declare dso_local i32 @lua_pushlightuserdata(i32*, i32) #1

declare dso_local i32 @ngx_http_lua_lightudata_mask(i32) #1

declare dso_local i32 @lua_rawget(i32*, i32) #1

declare dso_local i32 @luaL_ref(i32*, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32* @ngx_alloc(i32, i32) #1

declare dso_local i32 @ngx_memzero(%struct.TYPE_24__*, i32) #1

declare dso_local i32* @ngx_create_pool(i32, i32) #1

declare dso_local i32* @ngx_palloc(i32*, i64) #1

declare dso_local i32 @ngx_memcpy(i32*, i32, i64) #1

declare dso_local i32 @ngx_add_timer(%struct.TYPE_24__*, i64) #1

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, i32*, i64) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

declare dso_local i32 @ngx_destroy_pool(i32*) #1

declare dso_local i32 @ngx_free(%struct.TYPE_24__*) #1

declare dso_local i32 @luaL_unref(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
