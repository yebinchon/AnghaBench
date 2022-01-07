; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_headers.c_ngx_http_lua_ffi_set_resp_header.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_headers.c_ngx_http_lua_ffi_set_resp_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, %struct.TYPE_17__*, i64 }
%struct.TYPE_17__ = type { i64, i32 }
%struct.TYPE_21__ = type { i8*, i64 }
%struct.TYPE_18__ = type { i8*, i64 }
%struct.TYPE_22__ = type { i32, i64 }
%struct.TYPE_20__ = type { i64 }

@ngx_http_lua_module = common dso_local global i32 0, align 4
@NGX_HTTP_LUA_FFI_NO_REQ_CTX = common dso_local global i32 0, align 4
@NGX_HTTP_LUA_FFI_BAD_CONTEXT = common dso_local global i32 0, align 4
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"attempt to set ngx.header.HEADER after sending out response headers\00", align 1
@NGX_DECLINED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"header value table index %d\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"failed to set header\00", align 1
@NGX_OK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"key: %.*s, value: %.*s\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"no memory\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_http_lua_ffi_set_resp_header(%struct.TYPE_19__* %0, i8* %1, i64 %2, i32 %3, i8* %4, i64 %5, %struct.TYPE_21__* %6, i64 %7, i32 %8, i8** %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_19__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_21__*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8**, align 8
  %22 = alloca i8*, align 8
  %23 = alloca %struct.TYPE_18__, align 8
  %24 = alloca %struct.TYPE_18__, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca %struct.TYPE_22__*, align 8
  %28 = alloca i64, align 8
  %29 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %12, align 8
  store i8* %1, i8** %13, align 8
  store i64 %2, i64* %14, align 8
  store i32 %3, i32* %15, align 4
  store i8* %4, i8** %16, align 8
  store i64 %5, i64* %17, align 8
  store %struct.TYPE_21__* %6, %struct.TYPE_21__** %18, align 8
  store i64 %7, i64* %19, align 8
  store i32 %8, i32* %20, align 4
  store i8** %9, i8*** %21, align 8
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %31 = load i32, i32* @ngx_http_lua_module, align 4
  %32 = call %struct.TYPE_22__* @ngx_http_get_module_ctx(%struct.TYPE_19__* %30, i32 %31)
  store %struct.TYPE_22__* %32, %struct.TYPE_22__** %27, align 8
  %33 = load %struct.TYPE_22__*, %struct.TYPE_22__** %27, align 8
  %34 = icmp eq %struct.TYPE_22__* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %10
  %36 = load i32, i32* @NGX_HTTP_LUA_FFI_NO_REQ_CTX, align 4
  store i32 %36, i32* %11, align 4
  br label %267

37:                                               ; preds = %10
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, -1
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = load i32, i32* @NGX_HTTP_LUA_FFI_BAD_CONTEXT, align 4
  store i32 %45, i32* %11, align 4
  br label %267

46:                                               ; preds = %37
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %46
  %52 = load %struct.TYPE_22__*, %struct.TYPE_22__** %27, align 8
  %53 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %51, %46
  %57 = load i32, i32* @NGX_LOG_ERR, align 4
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @ngx_log_error(i32 %57, i32 %62, i32 0, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0))
  %64 = load i32, i32* @NGX_DECLINED, align 4
  store i32 %64, i32* %11, align 4
  br label %267

65:                                               ; preds = %51
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i64, i64* %14, align 8
  %70 = add i64 %69, 1
  %71 = call i8* @ngx_palloc(i32 %68, i64 %70)
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 0
  store i8* %71, i8** %72, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = icmp eq i8* %74, null
  br i1 %75, label %76, label %77

76:                                               ; preds = %65
  br label %263

77:                                               ; preds = %65
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = load i8*, i8** %13, align 8
  %81 = load i64, i64* %14, align 8
  %82 = call i32 @ngx_memcpy(i8* %79, i8* %80, i64 %81)
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = load i64, i64* %14, align 8
  %86 = getelementptr inbounds i8, i8* %84, i64 %85
  store i8 0, i8* %86, align 1
  %87 = load i64, i64* %14, align 8
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 1
  store i64 %87, i64* %88, align 8
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %90 = load i32, i32* @ngx_http_lua_module, align 4
  %91 = call %struct.TYPE_20__* @ngx_http_get_module_loc_conf(%struct.TYPE_19__* %89, i32 %90)
  store %struct.TYPE_20__* %91, %struct.TYPE_20__** %29, align 8
  %92 = load %struct.TYPE_20__*, %struct.TYPE_20__** %29, align 8
  %93 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %119

96:                                               ; preds = %77
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  store i8* %98, i8** %22, align 8
  store i64 0, i64* %25, align 8
  br label %99

99:                                               ; preds = %115, %96
  %100 = load i64, i64* %25, align 8
  %101 = load i64, i64* %14, align 8
  %102 = icmp ult i64 %100, %101
  br i1 %102, label %103, label %118

103:                                              ; preds = %99
  %104 = load i8*, i8** %22, align 8
  %105 = load i64, i64* %25, align 8
  %106 = getelementptr inbounds i8, i8* %104, i64 %105
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp eq i32 %108, 95
  br i1 %109, label %110, label %114

110:                                              ; preds = %103
  %111 = load i8*, i8** %22, align 8
  %112 = load i64, i64* %25, align 8
  %113 = getelementptr inbounds i8, i8* %111, i64 %112
  store i8 45, i8* %113, align 1
  br label %114

114:                                              ; preds = %110, %103
  br label %115

115:                                              ; preds = %114
  %116 = load i64, i64* %25, align 8
  %117 = add i64 %116, 1
  store i64 %117, i64* %25, align 8
  br label %99

118:                                              ; preds = %99
  br label %119

119:                                              ; preds = %118, %77
  %120 = load %struct.TYPE_22__*, %struct.TYPE_22__** %27, align 8
  %121 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %120, i32 0, i32 0
  store i32 1, i32* %121, align 8
  %122 = load i32, i32* %15, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %119
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 0
  store i8* null, i8** %125, align 8
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 1
  store i64 0, i64* %126, align 8
  br label %229

127:                                              ; preds = %119
  %128 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %129 = icmp ne %struct.TYPE_21__* %128, null
  br i1 %129, label %130, label %208

130:                                              ; preds = %127
  %131 = load i64, i64* %19, align 8
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %130
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 0
  store i8* null, i8** %134, align 8
  %135 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 1
  store i64 0, i64* %135, align 8
  br label %207

136:                                              ; preds = %130
  store i64 0, i64* %25, align 8
  br label %137

137:                                              ; preds = %202, %136
  %138 = load i64, i64* %25, align 8
  %139 = load i64, i64* %19, align 8
  %140 = icmp ult i64 %138, %139
  br i1 %140, label %141, label %205

141:                                              ; preds = %137
  %142 = load i64, i64* %25, align 8
  %143 = trunc i64 %142 to i32
  %144 = call i32 (i8*, i32, ...) @dd(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %143)
  %145 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %146 = load i64, i64* %25, align 8
  %147 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %145, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %147, i32 0, i32 0
  %149 = load i8*, i8** %148, align 8
  store i8* %149, i8** %22, align 8
  %150 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %151 = load i64, i64* %25, align 8
  %152 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %150, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  store i64 %154, i64* %26, align 8
  %155 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %156 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load i64, i64* %26, align 8
  %159 = call i8* @ngx_palloc(i32 %157, i64 %158)
  %160 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 0
  store i8* %159, i8** %160, align 8
  %161 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 0
  %162 = load i8*, i8** %161, align 8
  %163 = icmp eq i8* %162, null
  br i1 %163, label %164, label %165

164:                                              ; preds = %141
  br label %263

165:                                              ; preds = %141
  %166 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 0
  %167 = load i8*, i8** %166, align 8
  %168 = load i8*, i8** %22, align 8
  %169 = load i64, i64* %26, align 8
  %170 = call i32 @ngx_memcpy(i8* %167, i8* %168, i64 %169)
  %171 = load i64, i64* %26, align 8
  %172 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 1
  store i64 %171, i64* %172, align 8
  %173 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %174 = load %struct.TYPE_22__*, %struct.TYPE_22__** %27, align 8
  %175 = load i32, i32* %20, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %165
  %178 = load i64, i64* %25, align 8
  %179 = icmp eq i64 %178, 0
  br label %180

180:                                              ; preds = %177, %165
  %181 = phi i1 [ false, %165 ], [ %179, %177 ]
  %182 = zext i1 %181 to i32
  %183 = bitcast %struct.TYPE_18__* %24 to { i8*, i64 }*
  %184 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %183, i32 0, i32 0
  %185 = load i8*, i8** %184, align 8
  %186 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %183, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = bitcast %struct.TYPE_18__* %23 to { i8*, i64 }*
  %189 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %188, i32 0, i32 0
  %190 = load i8*, i8** %189, align 8
  %191 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %188, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = call i64 @ngx_http_lua_set_output_header(%struct.TYPE_19__* %173, %struct.TYPE_22__* %174, i8* %185, i64 %187, i8* %190, i64 %192, i32 %182)
  store i64 %193, i64* %28, align 8
  %194 = load i64, i64* %28, align 8
  %195 = load i64, i64* @NGX_ERROR, align 8
  %196 = icmp eq i64 %194, %195
  br i1 %196, label %197, label %201

197:                                              ; preds = %180
  %198 = load i8**, i8*** %21, align 8
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8** %198, align 8
  %199 = load i64, i64* @NGX_ERROR, align 8
  %200 = trunc i64 %199 to i32
  store i32 %200, i32* %11, align 4
  br label %267

201:                                              ; preds = %180
  br label %202

202:                                              ; preds = %201
  %203 = load i64, i64* %25, align 8
  %204 = add i64 %203, 1
  store i64 %204, i64* %25, align 8
  br label %137

205:                                              ; preds = %137
  %206 = load i32, i32* @NGX_OK, align 4
  store i32 %206, i32* %11, align 4
  br label %267

207:                                              ; preds = %133
  br label %228

208:                                              ; preds = %127
  %209 = load i8*, i8** %16, align 8
  store i8* %209, i8** %22, align 8
  %210 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %211 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = load i64, i64* %17, align 8
  %214 = call i8* @ngx_palloc(i32 %212, i64 %213)
  %215 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 0
  store i8* %214, i8** %215, align 8
  %216 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 0
  %217 = load i8*, i8** %216, align 8
  %218 = icmp eq i8* %217, null
  br i1 %218, label %219, label %220

219:                                              ; preds = %208
  br label %263

220:                                              ; preds = %208
  %221 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 0
  %222 = load i8*, i8** %221, align 8
  %223 = load i8*, i8** %22, align 8
  %224 = load i64, i64* %17, align 8
  %225 = call i32 @ngx_memcpy(i8* %222, i8* %223, i64 %224)
  %226 = load i64, i64* %17, align 8
  %227 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 1
  store i64 %226, i64* %227, align 8
  br label %228

228:                                              ; preds = %220, %207
  br label %229

229:                                              ; preds = %228, %124
  %230 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 1
  %231 = load i64, i64* %230, align 8
  %232 = trunc i64 %231 to i32
  %233 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 0
  %234 = load i8*, i8** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 1
  %236 = load i64, i64* %235, align 8
  %237 = trunc i64 %236 to i32
  %238 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 0
  %239 = load i8*, i8** %238, align 8
  %240 = call i32 (i8*, i32, ...) @dd(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %232, i8* %234, i32 %237, i8* %239)
  %241 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %242 = load %struct.TYPE_22__*, %struct.TYPE_22__** %27, align 8
  %243 = load i32, i32* %20, align 4
  %244 = bitcast %struct.TYPE_18__* %24 to { i8*, i64 }*
  %245 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %244, i32 0, i32 0
  %246 = load i8*, i8** %245, align 8
  %247 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %244, i32 0, i32 1
  %248 = load i64, i64* %247, align 8
  %249 = bitcast %struct.TYPE_18__* %23 to { i8*, i64 }*
  %250 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %249, i32 0, i32 0
  %251 = load i8*, i8** %250, align 8
  %252 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %249, i32 0, i32 1
  %253 = load i64, i64* %252, align 8
  %254 = call i64 @ngx_http_lua_set_output_header(%struct.TYPE_19__* %241, %struct.TYPE_22__* %242, i8* %246, i64 %248, i8* %251, i64 %253, i32 %243)
  store i64 %254, i64* %28, align 8
  %255 = load i64, i64* %28, align 8
  %256 = load i64, i64* @NGX_ERROR, align 8
  %257 = icmp eq i64 %255, %256
  br i1 %257, label %258, label %262

258:                                              ; preds = %229
  %259 = load i8**, i8*** %21, align 8
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8** %259, align 8
  %260 = load i64, i64* @NGX_ERROR, align 8
  %261 = trunc i64 %260 to i32
  store i32 %261, i32* %11, align 4
  br label %267

262:                                              ; preds = %229
  store i32 0, i32* %11, align 4
  br label %267

263:                                              ; preds = %219, %164, %76
  %264 = load i8**, i8*** %21, align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8** %264, align 8
  %265 = load i64, i64* @NGX_ERROR, align 8
  %266 = trunc i64 %265 to i32
  store i32 %266, i32* %11, align 4
  br label %267

267:                                              ; preds = %263, %262, %258, %205, %197, %56, %44, %35
  %268 = load i32, i32* %11, align 4
  ret i32 %268
}

declare dso_local %struct.TYPE_22__* @ngx_http_get_module_ctx(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*) #1

declare dso_local i8* @ngx_palloc(i32, i64) #1

declare dso_local i32 @ngx_memcpy(i8*, i8*, i64) #1

declare dso_local %struct.TYPE_20__* @ngx_http_get_module_loc_conf(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @dd(i8*, i32, ...) #1

declare dso_local i64 @ngx_http_lua_set_output_header(%struct.TYPE_19__*, %struct.TYPE_22__*, i8*, i64, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
