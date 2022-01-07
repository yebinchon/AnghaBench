; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_module.c_ngx_http_lua_init.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_module.c_ngx_http_lua_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i32*, i32 }
%struct.TYPE_21__ = type { i32, i32* }
%struct.TYPE_19__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_21__ }
%struct.TYPE_18__ = type { i64, i64, i64, i64 (i32, %struct.TYPE_18__*, i32*)*, i32*, i32, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_18__* }

@.str = private unnamed_addr constant [5 x i8] c"host\00", align 1
@ngx_process = common dso_local global i64 0, align 8
@NGX_PROCESS_SIGNALLER = common dso_local global i64 0, align 8
@ngx_test_config = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8
@ngx_http_lua_module = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i64 0, align 8
@ngx_http_lua_prev_cycle = common dso_local global i32* null, align 8
@ngx_cycle = common dso_local global i32* null, align 8
@NGX_CONF_UNSET = common dso_local global i64 0, align 8
@ngx_http_core_module = common dso_local global i32 0, align 4
@NGX_HTTP_REWRITE_PHASE = common dso_local global i64 0, align 8
@ngx_http_lua_rewrite_handler = common dso_local global i32 0, align 4
@NGX_HTTP_ACCESS_PHASE = common dso_local global i64 0, align 8
@ngx_http_lua_access_handler = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"requires log: %d\00", align 1
@NGX_HTTP_LOG_PHASE = common dso_local global i64 0, align 8
@ngx_http_lua_log_handler = common dso_local global i32 0, align 4
@ngx_http_lua_sema_mm_cleanup = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"initializing lua vm\00", align 1
@NGX_LOG_ALERT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [289 x i8] c"detected a LuaJIT version which is not OpenResty's; many optimizations will be disabled and performance will be compromised (see https://github.com/openresty/luajit2 for OpenResty's LuaJIT or, even better, consider using the OpenResty releases from https://openresty.org/en/download.html)\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"content-length\00", align 1
@ngx_http_lua_content_length_hash = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [9 x i8] c"location\00", align 1
@ngx_http_lua_location_hash = common dso_local global i8* null, align 8
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [28 x i8] c"failed to initialize Lua VM\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"Lua VM initialized!\00", align 1
@ngx_http_lua_ngx_raw_header_cleanup = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_20__*)* @ngx_http_lua_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_lua_init(%struct.TYPE_20__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  %13 = call i32 @ngx_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %13, i32* %12, align 4
  %14 = load i64, i64* @ngx_process, align 8
  %15 = load i64, i64* @NGX_PROCESS_SIGNALLER, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i64, i64* @ngx_test_config, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17, %1
  %21 = load i64, i64* @NGX_OK, align 8
  store i64 %21, i64* %2, align 8
  br label %298

22:                                               ; preds = %17
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %24 = load i32, i32* @ngx_http_lua_module, align 4
  %25 = call i8* @ngx_http_conf_get_module_main_conf(%struct.TYPE_20__* %23, i32 %24)
  %26 = bitcast i8* %25 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %26, %struct.TYPE_18__** %10, align 8
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %28 = call i64 @ngx_http_get_variable_index(%struct.TYPE_20__* %27, i32* %12)
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @NGX_ERROR, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %22
  %37 = load i64, i64* @NGX_ERROR, align 8
  store i64 %37, i64* %2, align 8
  br label %298

38:                                               ; preds = %22
  %39 = load i32*, i32** @ngx_http_lua_prev_cycle, align 8
  %40 = load i32*, i32** @ngx_cycle, align 8
  %41 = icmp ne i32* %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i32*, i32** @ngx_cycle, align 8
  store i32* %43, i32** @ngx_http_lua_prev_cycle, align 8
  store i32 0, i32* %4, align 4
  br label %45

44:                                               ; preds = %38
  store i32 1, i32* %4, align 4
  br label %45

45:                                               ; preds = %44, %42
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %45
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 11
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %48, %45
  %54 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %55 = call i64 @ngx_http_lua_capture_filter_init(%struct.TYPE_20__* %54)
  store i64 %55, i64* %5, align 8
  %56 = load i64, i64* %5, align 8
  %57 = load i64, i64* @NGX_OK, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = load i64, i64* %5, align 8
  store i64 %60, i64* %2, align 8
  br label %298

61:                                               ; preds = %53
  br label %62

62:                                               ; preds = %61, %48
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @NGX_CONF_UNSET, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 1
  store i64 0, i64* %70, align 8
  br label %71

71:                                               ; preds = %68, %62
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @NGX_CONF_UNSET, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %71
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 2
  store i64 0, i64* %79, align 8
  br label %80

80:                                               ; preds = %77, %71
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %82 = load i32, i32* @ngx_http_core_module, align 4
  %83 = call i8* @ngx_http_conf_get_module_main_conf(%struct.TYPE_20__* %81, i32 %82)
  %84 = bitcast i8* %83 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %84, %struct.TYPE_19__** %9, align 8
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 10
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %104

89:                                               ; preds = %80
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %91, align 8
  %93 = load i64, i64* @NGX_HTTP_REWRITE_PHASE, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 0
  %96 = call i32* @ngx_array_push(%struct.TYPE_21__* %95)
  store i32* %96, i32** %7, align 8
  %97 = load i32*, i32** %7, align 8
  %98 = icmp eq i32* %97, null
  br i1 %98, label %99, label %101

99:                                               ; preds = %89
  %100 = load i64, i64* @NGX_ERROR, align 8
  store i64 %100, i64* %2, align 8
  br label %298

101:                                              ; preds = %89
  %102 = load i32, i32* @ngx_http_lua_rewrite_handler, align 4
  %103 = load i32*, i32** %7, align 8
  store i32 %102, i32* %103, align 4
  br label %104

104:                                              ; preds = %101, %80
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 9
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %124

109:                                              ; preds = %104
  %110 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %111, align 8
  %113 = load i64, i64* @NGX_HTTP_ACCESS_PHASE, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 0
  %116 = call i32* @ngx_array_push(%struct.TYPE_21__* %115)
  store i32* %116, i32** %7, align 8
  %117 = load i32*, i32** %7, align 8
  %118 = icmp eq i32* %117, null
  br i1 %118, label %119, label %121

119:                                              ; preds = %109
  %120 = load i64, i64* @NGX_ERROR, align 8
  store i64 %120, i64* %2, align 8
  br label %298

121:                                              ; preds = %109
  %122 = load i32, i32* @ngx_http_lua_access_handler, align 4
  %123 = load i32*, i32** %7, align 8
  store i32 %122, i32* %123, align 4
  br label %124

124:                                              ; preds = %121, %104
  %125 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %125, i32 0, i32 8
  %127 = load i64, i64* %126, align 8
  %128 = trunc i64 %127 to i32
  %129 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %128)
  %130 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i32 0, i32 8
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %170

134:                                              ; preds = %124
  %135 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %136, align 8
  %138 = load i64, i64* @NGX_HTTP_LOG_PHASE, align 8
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 0
  store %struct.TYPE_21__* %140, %struct.TYPE_21__** %6, align 8
  %141 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %142 = call i32* @ngx_array_push(%struct.TYPE_21__* %141)
  store i32* %142, i32** %7, align 8
  %143 = load i32*, i32** %7, align 8
  %144 = icmp eq i32* %143, null
  br i1 %144, label %145, label %147

145:                                              ; preds = %134
  %146 = load i64, i64* @NGX_ERROR, align 8
  store i64 %146, i64* %2, align 8
  br label %298

147:                                              ; preds = %134
  %148 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = icmp sgt i32 %150, 1
  br i1 %151, label %152, label %167

152:                                              ; preds = %147
  %153 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %153, i32 0, i32 1
  %155 = load i32*, i32** %154, align 8
  store i32* %155, i32** %7, align 8
  %156 = load i32*, i32** %7, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 1
  %158 = load i32*, i32** %7, align 8
  %159 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = sub nsw i32 %161, 1
  %163 = sext i32 %162 to i64
  %164 = mul i64 %163, 4
  %165 = trunc i64 %164 to i32
  %166 = call i32 @ngx_memmove(i32* %157, i32* %158, i32 %165)
  br label %167

167:                                              ; preds = %152, %147
  %168 = load i32, i32* @ngx_http_lua_log_handler, align 4
  %169 = load i32*, i32** %7, align 8
  store i32 %168, i32* %169, align 4
  br label %170

170:                                              ; preds = %167, %124
  %171 = load i32, i32* %4, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %178, label %173

173:                                              ; preds = %170
  %174 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %175 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %174, i32 0, i32 7
  %176 = load i64, i64* %175, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %186

178:                                              ; preds = %173, %170
  %179 = call i64 (...) @ngx_http_lua_header_filter_init()
  store i64 %179, i64* %5, align 8
  %180 = load i64, i64* %5, align 8
  %181 = load i64, i64* @NGX_OK, align 8
  %182 = icmp ne i64 %180, %181
  br i1 %182, label %183, label %185

183:                                              ; preds = %178
  %184 = load i64, i64* %5, align 8
  store i64 %184, i64* %2, align 8
  br label %298

185:                                              ; preds = %178
  br label %186

186:                                              ; preds = %185, %173
  %187 = load i32, i32* %4, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %194, label %189

189:                                              ; preds = %186
  %190 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %191 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %190, i32 0, i32 6
  %192 = load i64, i64* %191, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %202

194:                                              ; preds = %189, %186
  %195 = call i64 (...) @ngx_http_lua_body_filter_init()
  store i64 %195, i64* %5, align 8
  %196 = load i64, i64* %5, align 8
  %197 = load i64, i64* @NGX_OK, align 8
  %198 = icmp ne i64 %196, %197
  br i1 %198, label %199, label %201

199:                                              ; preds = %194
  %200 = load i64, i64* %5, align 8
  store i64 %200, i64* %2, align 8
  br label %298

201:                                              ; preds = %194
  br label %202

202:                                              ; preds = %201, %189
  %203 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %204 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 8
  %206 = call %struct.TYPE_17__* @ngx_pool_cleanup_add(i32 %205, i32 0)
  store %struct.TYPE_17__* %206, %struct.TYPE_17__** %11, align 8
  %207 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %208 = icmp eq %struct.TYPE_17__* %207, null
  br i1 %208, label %209, label %211

209:                                              ; preds = %202
  %210 = load i64, i64* @NGX_ERROR, align 8
  store i64 %210, i64* %2, align 8
  br label %298

211:                                              ; preds = %202
  %212 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %213 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %214 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %213, i32 0, i32 1
  store %struct.TYPE_18__* %212, %struct.TYPE_18__** %214, align 8
  %215 = load i32, i32* @ngx_http_lua_sema_mm_cleanup, align 4
  %216 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %217 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %216, i32 0, i32 0
  store i32 %215, i32* %217, align 8
  %218 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %219 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %218, i32 0, i32 4
  %220 = load i32*, i32** %219, align 8
  %221 = icmp eq i32* %220, null
  br i1 %221, label %222, label %296

222:                                              ; preds = %211
  %223 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %224 = load i64, i64* @ngx_process, align 8
  %225 = load i64, i64* @NGX_PROCESS_SIGNALLER, align 8
  %226 = icmp ne i64 %224, %225
  br i1 %226, label %227, label %236

227:                                              ; preds = %222
  %228 = load i64, i64* @ngx_test_config, align 8
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %236, label %230

230:                                              ; preds = %227
  %231 = load i32, i32* @NGX_LOG_ALERT, align 4
  %232 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %233 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = call i32 @ngx_log_error(i32 %231, i32 %234, i32 0, i8* getelementptr inbounds ([289 x i8], [289 x i8]* @.str.3, i64 0, i64 0))
  br label %236

236:                                              ; preds = %230, %227, %222
  %237 = call i8* @ngx_http_lua_hash_literal(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  store i8* %237, i8** @ngx_http_lua_content_length_hash, align 8
  %238 = call i8* @ngx_http_lua_hash_literal(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  store i8* %238, i8** @ngx_http_lua_location_hash, align 8
  %239 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %240 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %239, i32 0, i32 1
  %241 = load i32*, i32** %240, align 8
  %242 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %243 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %242, i32 0, i32 2
  %244 = load i32, i32* %243, align 8
  %245 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %246 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %247 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = call i32* @ngx_http_lua_init_vm(i32* null, i32* %241, i32 %244, %struct.TYPE_18__* %245, i32 %248, i32* null)
  %250 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %251 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %250, i32 0, i32 4
  store i32* %249, i32** %251, align 8
  %252 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %253 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %252, i32 0, i32 4
  %254 = load i32*, i32** %253, align 8
  %255 = icmp eq i32* %254, null
  br i1 %255, label %256, label %261

256:                                              ; preds = %236
  %257 = load i32, i32* @NGX_LOG_ERR, align 4
  %258 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %259 = call i32 @ngx_conf_log_error(i32 %257, %struct.TYPE_20__* %258, i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  %260 = load i64, i64* @NGX_ERROR, align 8
  store i64 %260, i64* %2, align 8
  br label %298

261:                                              ; preds = %236
  %262 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %263 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %262, i32 0, i32 5
  %264 = load i32, i32* %263, align 8
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %294, label %266

266:                                              ; preds = %261
  %267 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %268 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %267, i32 0, i32 3
  %269 = load i64 (i32, %struct.TYPE_18__*, i32*)*, i64 (i32, %struct.TYPE_18__*, i32*)** %268, align 8
  %270 = icmp ne i64 (i32, %struct.TYPE_18__*, i32*)* %269, null
  br i1 %270, label %271, label %294

271:                                              ; preds = %266
  %272 = load i32*, i32** @ngx_cycle, align 8
  store i32* %272, i32** %8, align 8
  %273 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %274 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %273, i32 0, i32 1
  %275 = load i32*, i32** %274, align 8
  store i32* %275, i32** @ngx_cycle, align 8
  %276 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %277 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %276, i32 0, i32 3
  %278 = load i64 (i32, %struct.TYPE_18__*, i32*)*, i64 (i32, %struct.TYPE_18__*, i32*)** %277, align 8
  %279 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %280 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %283 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %284 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %283, i32 0, i32 4
  %285 = load i32*, i32** %284, align 8
  %286 = call i64 %278(i32 %281, %struct.TYPE_18__* %282, i32* %285)
  store i64 %286, i64* %5, align 8
  %287 = load i32*, i32** %8, align 8
  store i32* %287, i32** @ngx_cycle, align 8
  %288 = load i64, i64* %5, align 8
  %289 = load i64, i64* @NGX_OK, align 8
  %290 = icmp ne i64 %288, %289
  br i1 %290, label %291, label %293

291:                                              ; preds = %271
  %292 = load i64, i64* @NGX_ERROR, align 8
  store i64 %292, i64* %2, align 8
  br label %298

293:                                              ; preds = %271
  br label %294

294:                                              ; preds = %293, %266, %261
  %295 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  br label %296

296:                                              ; preds = %294, %211
  %297 = load i64, i64* @NGX_OK, align 8
  store i64 %297, i64* %2, align 8
  br label %298

298:                                              ; preds = %296, %291, %256, %209, %199, %183, %145, %119, %99, %59, %36, %20
  %299 = load i64, i64* %2, align 8
  ret i64 %299
}

declare dso_local i32 @ngx_string(i8*) #1

declare dso_local i8* @ngx_http_conf_get_module_main_conf(%struct.TYPE_20__*, i32) #1

declare dso_local i64 @ngx_http_get_variable_index(%struct.TYPE_20__*, i32*) #1

declare dso_local i64 @ngx_http_lua_capture_filter_init(%struct.TYPE_20__*) #1

declare dso_local i32* @ngx_array_push(%struct.TYPE_21__*) #1

declare dso_local i32 @dd(i8*, ...) #1

declare dso_local i32 @ngx_memmove(i32*, i32*, i32) #1

declare dso_local i64 @ngx_http_lua_header_filter_init(...) #1

declare dso_local i64 @ngx_http_lua_body_filter_init(...) #1

declare dso_local %struct.TYPE_17__* @ngx_pool_cleanup_add(i32, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*) #1

declare dso_local i8* @ngx_http_lua_hash_literal(i8*) #1

declare dso_local i32* @ngx_http_lua_init_vm(i32*, i32*, i32, %struct.TYPE_18__*, i32, i32*) #1

declare dso_local i32 @ngx_conf_log_error(i32, %struct.TYPE_20__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
