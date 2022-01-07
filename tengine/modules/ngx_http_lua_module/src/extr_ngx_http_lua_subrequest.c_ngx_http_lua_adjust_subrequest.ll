; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_subrequest.c_ngx_http_lua_adjust_subrequest.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_subrequest.c_ngx_http_lua_adjust_subrequest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32*, i32, %struct.TYPE_17__*, i32, %struct.TYPE_20__*, %struct.TYPE_16__, i32, %struct.TYPE_19__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_20__ = type { i64, i64 }
%struct.TYPE_21__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }

@NGX_OK = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@ngx_http_lua_get_method = common dso_local global i32 0, align 4
@ngx_http_lua_post_method = common dso_local global i32 0, align 4
@ngx_http_lua_put_method = common dso_local global i32 0, align 4
@ngx_http_lua_head_method = common dso_local global i32 0, align 4
@ngx_http_lua_delete_method = common dso_local global i32 0, align 4
@ngx_http_lua_options_method = common dso_local global i32 0, align 4
@ngx_http_lua_mkcol_method = common dso_local global i32 0, align 4
@ngx_http_lua_copy_method = common dso_local global i32 0, align 4
@ngx_http_lua_move_method = common dso_local global i32 0, align 4
@ngx_http_lua_propfind_method = common dso_local global i32 0, align 4
@ngx_http_lua_proppatch_method = common dso_local global i32 0, align 4
@ngx_http_lua_lock_method = common dso_local global i32 0, align 4
@ngx_http_lua_unlock_method = common dso_local global i32 0, align 4
@ngx_http_lua_patch_method = common dso_local global i32 0, align 4
@ngx_http_lua_trace_method = common dso_local global i32 0, align 4
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"unsupported HTTP method: %u\00", align 1
@NGX_HTTP_LUA_SHARE_ALL_VARS = common dso_local global i32 0, align 4
@ngx_http_core_module = common dso_local global i32 0, align 4
@NGX_HTTP_LUA_COPY_ALL_VARS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_19__*, i32, i32, %struct.TYPE_20__*, i32, i32*)* @ngx_http_lua_adjust_subrequest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_lua_adjust_subrequest(%struct.TYPE_19__* %0, i32 %1, i32 %2, %struct.TYPE_20__* %3, i32 %4, i32* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_20__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_19__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_21__*, align 8
  %17 = alloca i64, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store %struct.TYPE_20__* %3, %struct.TYPE_20__** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 8
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  store %struct.TYPE_19__* %20, %struct.TYPE_19__** %14, align 8
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 7
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 7
  store i32 %23, i32* %25, align 8
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %27 = icmp ne %struct.TYPE_20__* %26, null
  br i1 %27, label %28, label %52

28:                                               ; preds = %6
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 5
  store %struct.TYPE_20__* %29, %struct.TYPE_20__** %31, align 8
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %28
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @ngx_buf_size(i64 %40)
  br label %43

42:                                               ; preds = %28
  br label %43

43:                                               ; preds = %42, %37
  %44 = phi i32 [ %41, %37 ], [ 0, %42 ]
  %45 = call i64 @ngx_http_lua_set_content_length_header(%struct.TYPE_19__* %32, i32 %44)
  store i64 %45, i64* %15, align 8
  %46 = load i64, i64* %15, align 8
  %47 = load i64, i64* @NGX_OK, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i64, i64* @NGX_ERROR, align 8
  store i64 %50, i64* %7, align 8
  br label %246

51:                                               ; preds = %43
  br label %109

52:                                               ; preds = %6
  %53 = load i32, i32* %10, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %78, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 130
  br i1 %57, label %58, label %78

58:                                               ; preds = %55
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 133
  br i1 %60, label %61, label %78

61:                                               ; preds = %58
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %62, i32 0, i32 6
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp sgt i64 %65, 0
  br i1 %66, label %67, label %78

67:                                               ; preds = %61
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %69 = call i64 @ngx_http_lua_set_content_length_header(%struct.TYPE_19__* %68, i32 0)
  store i64 %69, i64* %15, align 8
  %70 = load i64, i64* %15, align 8
  %71 = load i64, i64* @NGX_OK, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = load i64, i64* @NGX_ERROR, align 8
  store i64 %74, i64* %7, align 8
  br label %246

75:                                               ; preds = %67
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 5
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %77, align 8
  br label %108

78:                                               ; preds = %61, %58, %55, %52
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %81 = call i64 @ngx_http_lua_copy_request_headers(%struct.TYPE_19__* %79, %struct.TYPE_19__* %80)
  %82 = load i64, i64* @NGX_OK, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %78
  %85 = load i64, i64* @NGX_ERROR, align 8
  store i64 %85, i64* %7, align 8
  br label %246

86:                                               ; preds = %78
  %87 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %87, i32 0, i32 5
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %88, align 8
  %90 = icmp ne %struct.TYPE_20__* %89, null
  br i1 %90, label %91, label %107

91:                                               ; preds = %86
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 5
  %94 = load %struct.TYPE_20__*, %struct.TYPE_20__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %106

98:                                               ; preds = %91
  %99 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %100 = call i64 @ngx_http_lua_copy_in_file_request_body(%struct.TYPE_19__* %99)
  %101 = load i64, i64* @NGX_OK, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %98
  %104 = load i64, i64* @NGX_ERROR, align 8
  store i64 %104, i64* %7, align 8
  br label %246

105:                                              ; preds = %98
  br label %106

106:                                              ; preds = %105, %91
  br label %107

107:                                              ; preds = %106, %86
  br label %108

108:                                              ; preds = %107, %75
  br label %109

109:                                              ; preds = %108, %51
  %110 = load i32, i32* %9, align 4
  %111 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 8
  %113 = load i32, i32* %9, align 4
  switch i32 %113, label %174 [
    i32 140, label %114
    i32 133, label %118
    i32 130, label %122
    i32 139, label %126
    i32 141, label %130
    i32 135, label %134
    i32 137, label %138
    i32 142, label %142
    i32 136, label %146
    i32 132, label %150
    i32 131, label %154
    i32 138, label %158
    i32 128, label %162
    i32 134, label %166
    i32 129, label %170
  ]

114:                                              ; preds = %109
  %115 = load i32, i32* @ngx_http_lua_get_method, align 4
  %116 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %116, i32 0, i32 4
  store i32 %115, i32* %117, align 8
  br label %184

118:                                              ; preds = %109
  %119 = load i32, i32* @ngx_http_lua_post_method, align 4
  %120 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %120, i32 0, i32 4
  store i32 %119, i32* %121, align 8
  br label %184

122:                                              ; preds = %109
  %123 = load i32, i32* @ngx_http_lua_put_method, align 4
  %124 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %124, i32 0, i32 4
  store i32 %123, i32* %125, align 8
  br label %184

126:                                              ; preds = %109
  %127 = load i32, i32* @ngx_http_lua_head_method, align 4
  %128 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %128, i32 0, i32 4
  store i32 %127, i32* %129, align 8
  br label %184

130:                                              ; preds = %109
  %131 = load i32, i32* @ngx_http_lua_delete_method, align 4
  %132 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %132, i32 0, i32 4
  store i32 %131, i32* %133, align 8
  br label %184

134:                                              ; preds = %109
  %135 = load i32, i32* @ngx_http_lua_options_method, align 4
  %136 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %136, i32 0, i32 4
  store i32 %135, i32* %137, align 8
  br label %184

138:                                              ; preds = %109
  %139 = load i32, i32* @ngx_http_lua_mkcol_method, align 4
  %140 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %140, i32 0, i32 4
  store i32 %139, i32* %141, align 8
  br label %184

142:                                              ; preds = %109
  %143 = load i32, i32* @ngx_http_lua_copy_method, align 4
  %144 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %144, i32 0, i32 4
  store i32 %143, i32* %145, align 8
  br label %184

146:                                              ; preds = %109
  %147 = load i32, i32* @ngx_http_lua_move_method, align 4
  %148 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %148, i32 0, i32 4
  store i32 %147, i32* %149, align 8
  br label %184

150:                                              ; preds = %109
  %151 = load i32, i32* @ngx_http_lua_propfind_method, align 4
  %152 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %152, i32 0, i32 4
  store i32 %151, i32* %153, align 8
  br label %184

154:                                              ; preds = %109
  %155 = load i32, i32* @ngx_http_lua_proppatch_method, align 4
  %156 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %156, i32 0, i32 4
  store i32 %155, i32* %157, align 8
  br label %184

158:                                              ; preds = %109
  %159 = load i32, i32* @ngx_http_lua_lock_method, align 4
  %160 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %160, i32 0, i32 4
  store i32 %159, i32* %161, align 8
  br label %184

162:                                              ; preds = %109
  %163 = load i32, i32* @ngx_http_lua_unlock_method, align 4
  %164 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %164, i32 0, i32 4
  store i32 %163, i32* %165, align 8
  br label %184

166:                                              ; preds = %109
  %167 = load i32, i32* @ngx_http_lua_patch_method, align 4
  %168 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %169 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %168, i32 0, i32 4
  store i32 %167, i32* %169, align 8
  br label %184

170:                                              ; preds = %109
  %171 = load i32, i32* @ngx_http_lua_trace_method, align 4
  %172 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %173 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %172, i32 0, i32 4
  store i32 %171, i32* %173, align 8
  br label %184

174:                                              ; preds = %109
  %175 = load i32, i32* @NGX_LOG_ERR, align 4
  %176 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %177 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %176, i32 0, i32 3
  %178 = load %struct.TYPE_17__*, %struct.TYPE_17__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* %9, align 4
  %182 = call i32 @ngx_log_error(i32 %175, i32 %180, i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %181)
  %183 = load i64, i64* @NGX_ERROR, align 8
  store i64 %183, i64* %7, align 8
  br label %246

184:                                              ; preds = %170, %166, %162, %158, %154, %150, %146, %142, %138, %134, %130, %126, %122, %118, %114
  %185 = load i32, i32* %12, align 4
  %186 = load i32, i32* @NGX_HTTP_LUA_SHARE_ALL_VARS, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %242, label %189

189:                                              ; preds = %184
  %190 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %191 = load i32, i32* @ngx_http_core_module, align 4
  %192 = call %struct.TYPE_21__* @ngx_http_get_module_main_conf(%struct.TYPE_19__* %190, i32 %191)
  store %struct.TYPE_21__* %192, %struct.TYPE_21__** %16, align 8
  %193 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %194 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = sext i32 %196 to i64
  %198 = mul i64 %197, 4
  store i64 %198, i64* %17, align 8
  %199 = load i32, i32* %12, align 4
  %200 = load i32, i32* @NGX_HTTP_LUA_COPY_ALL_VARS, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %226

203:                                              ; preds = %189
  %204 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %205 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 8
  %207 = load i64, i64* %17, align 8
  %208 = call i32* @ngx_palloc(i32 %206, i64 %207)
  %209 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %210 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %209, i32 0, i32 1
  store i32* %208, i32** %210, align 8
  %211 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %212 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %211, i32 0, i32 1
  %213 = load i32*, i32** %212, align 8
  %214 = icmp eq i32* %213, null
  br i1 %214, label %215, label %217

215:                                              ; preds = %203
  %216 = load i64, i64* @NGX_ERROR, align 8
  store i64 %216, i64* %7, align 8
  br label %246

217:                                              ; preds = %203
  %218 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %219 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %218, i32 0, i32 1
  %220 = load i32*, i32** %219, align 8
  %221 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %222 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %221, i32 0, i32 1
  %223 = load i32*, i32** %222, align 8
  %224 = load i64, i64* %17, align 8
  %225 = call i32 @ngx_memcpy(i32* %220, i32* %223, i64 %224)
  br label %241

226:                                              ; preds = %189
  %227 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %228 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 8
  %230 = load i64, i64* %17, align 8
  %231 = call i32* @ngx_pcalloc(i32 %229, i64 %230)
  %232 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %233 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %232, i32 0, i32 1
  store i32* %231, i32** %233, align 8
  %234 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %235 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %234, i32 0, i32 1
  %236 = load i32*, i32** %235, align 8
  %237 = icmp eq i32* %236, null
  br i1 %237, label %238, label %240

238:                                              ; preds = %226
  %239 = load i64, i64* @NGX_ERROR, align 8
  store i64 %239, i64* %7, align 8
  br label %246

240:                                              ; preds = %226
  br label %241

241:                                              ; preds = %240, %217
  br label %242

242:                                              ; preds = %241, %184
  %243 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %244 = load i32*, i32** %13, align 8
  %245 = call i64 @ngx_http_lua_subrequest_add_extra_vars(%struct.TYPE_19__* %243, i32* %244)
  store i64 %245, i64* %7, align 8
  br label %246

246:                                              ; preds = %242, %238, %215, %174, %103, %84, %73, %49
  %247 = load i64, i64* %7, align 8
  ret i64 %247
}

declare dso_local i64 @ngx_http_lua_set_content_length_header(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @ngx_buf_size(i64) #1

declare dso_local i64 @ngx_http_lua_copy_request_headers(%struct.TYPE_19__*, %struct.TYPE_19__*) #1

declare dso_local i64 @ngx_http_lua_copy_in_file_request_body(%struct.TYPE_19__*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i32) #1

declare dso_local %struct.TYPE_21__* @ngx_http_get_module_main_conf(%struct.TYPE_19__*, i32) #1

declare dso_local i32* @ngx_palloc(i32, i64) #1

declare dso_local i32 @ngx_memcpy(i32*, i32*, i64) #1

declare dso_local i32* @ngx_pcalloc(i32, i64) #1

declare dso_local i64 @ngx_http_lua_subrequest_add_extra_vars(%struct.TYPE_19__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
