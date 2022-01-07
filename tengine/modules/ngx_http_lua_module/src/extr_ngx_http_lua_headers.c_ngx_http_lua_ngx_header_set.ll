; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_headers.c_ngx_http_lua_ngx_header_set.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_headers.c_ngx_http_lua_ngx_header_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, %struct.TYPE_17__*, i64 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_18__ = type { i8*, i64 }
%struct.TYPE_21__ = type { i32, i64 }
%struct.TYPE_20__ = type { i64 }

@.str = private unnamed_addr constant [24 x i8] c"no request object found\00", align 1
@ngx_http_lua_module = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"no ctx\00", align 1
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [68 x i8] c"attempt to set ngx.header.HEADER after sending out response headers\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"key: %.*s, len %d\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"no memory\00", align 1
@LUA_TNIL = common dso_local global i64 0, align 8
@LUA_TTABLE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [28 x i8] c"header value table index %d\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [36 x i8] c"failed to set header %s (error: %d)\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"key: %.*s, value: %.*s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ngx_http_lua_ngx_header_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_lua_ngx_header_set(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_18__, align 8
  %7 = alloca %struct.TYPE_18__, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_21__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_20__*, align 8
  store i32* %0, i32** %3, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = call %struct.TYPE_19__* @ngx_http_lua_get_req(i32* %14)
  store %struct.TYPE_19__* %15, %struct.TYPE_19__** %4, align 8
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %17 = icmp eq %struct.TYPE_19__* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 (i32*, i8*, ...) @luaL_error(i32* %19, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 %20, i32* %2, align 4
  br label %265

21:                                               ; preds = %1
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %23 = load i32, i32* @ngx_http_lua_module, align 4
  %24 = call %struct.TYPE_21__* @ngx_http_get_module_ctx(%struct.TYPE_19__* %22, i32 %23)
  store %struct.TYPE_21__* %24, %struct.TYPE_21__** %10, align 8
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %26 = icmp eq %struct.TYPE_21__* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 (i32*, i8*, ...) @luaL_error(i32* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32 %29, i32* %2, align 4
  br label %265

30:                                               ; preds = %21
  %31 = load i32*, i32** %3, align 8
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %33 = call i32 @ngx_http_lua_check_fake_request(i32* %31, %struct.TYPE_19__* %32)
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %30
  %39 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %38, %30
  %44 = load i32, i32* @NGX_LOG_ERR, align 4
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @ngx_log_error(i32 %44, i32 %49, i32 0, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %265

51:                                               ; preds = %38
  %52 = load i32*, i32** %3, align 8
  %53 = call i64 @luaL_checklstring(i32* %52, i32 2, i64* %9)
  %54 = inttoptr i64 %53 to i8*
  store i8* %54, i8** %5, align 8
  %55 = load i64, i64* %9, align 8
  %56 = trunc i64 %55 to i32
  %57 = load i8*, i8** %5, align 8
  %58 = load i64, i64* %9, align 8
  %59 = trunc i64 %58 to i32
  %60 = call i32 (i8*, i32, ...) @dd(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %56, i8* %57, i32 %59)
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i64, i64* %9, align 8
  %65 = add i64 %64, 1
  %66 = call i8* @ngx_palloc(i32 %63, i64 %65)
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 0
  store i8* %66, i8** %67, align 8
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = icmp eq i8* %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %51
  %72 = load i32*, i32** %3, align 8
  %73 = call i32 (i32*, i8*, ...) @luaL_error(i32* %72, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  store i32 %73, i32* %2, align 4
  br label %265

74:                                               ; preds = %51
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = load i8*, i8** %5, align 8
  %78 = load i64, i64* %9, align 8
  %79 = call i32 @ngx_memcpy(i8* %76, i8* %77, i64 %78)
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = load i64, i64* %9, align 8
  %83 = getelementptr inbounds i8, i8* %81, i64 %82
  store i8 0, i8* %83, align 1
  %84 = load i64, i64* %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 1
  store i64 %84, i64* %85, align 8
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %87 = load i32, i32* @ngx_http_lua_module, align 4
  %88 = call %struct.TYPE_20__* @ngx_http_get_module_loc_conf(%struct.TYPE_19__* %86, i32 %87)
  store %struct.TYPE_20__* %88, %struct.TYPE_20__** %13, align 8
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %90 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %116

93:                                               ; preds = %74
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  store i8* %95, i8** %5, align 8
  store i64 0, i64* %8, align 8
  br label %96

96:                                               ; preds = %112, %93
  %97 = load i64, i64* %8, align 8
  %98 = load i64, i64* %9, align 8
  %99 = icmp ult i64 %97, %98
  br i1 %99, label %100, label %115

100:                                              ; preds = %96
  %101 = load i8*, i8** %5, align 8
  %102 = load i64, i64* %8, align 8
  %103 = getelementptr inbounds i8, i8* %101, i64 %102
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp eq i32 %105, 95
  br i1 %106, label %107, label %111

107:                                              ; preds = %100
  %108 = load i8*, i8** %5, align 8
  %109 = load i64, i64* %8, align 8
  %110 = getelementptr inbounds i8, i8* %108, i64 %109
  store i8 45, i8* %110, align 1
  br label %111

111:                                              ; preds = %107, %100
  br label %112

112:                                              ; preds = %111
  %113 = load i64, i64* %8, align 8
  %114 = add i64 %113, 1
  store i64 %114, i64* %8, align 8
  br label %96

115:                                              ; preds = %96
  br label %116

116:                                              ; preds = %115, %74
  %117 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %117, i32 0, i32 0
  store i32 1, i32* %118, align 8
  %119 = load i32*, i32** %3, align 8
  %120 = call i64 @lua_type(i32* %119, i32 3)
  %121 = load i64, i64* @LUA_TNIL, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %125

123:                                              ; preds = %116
  %124 = call i32 @ngx_str_null(%struct.TYPE_18__* %7)
  br label %229

125:                                              ; preds = %116
  %126 = load i32*, i32** %3, align 8
  %127 = call i64 @lua_type(i32* %126, i32 3)
  %128 = load i64, i64* @LUA_TTABLE, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %204

130:                                              ; preds = %125
  %131 = load i32*, i32** %3, align 8
  %132 = call i64 @lua_objlen(i32* %131, i32 3)
  store i64 %132, i64* %12, align 8
  %133 = load i64, i64* %12, align 8
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %130
  %136 = call i32 @ngx_str_null(%struct.TYPE_18__* %7)
  br label %203

137:                                              ; preds = %130
  store i64 1, i64* %8, align 8
  br label %138

138:                                              ; preds = %199, %137
  %139 = load i64, i64* %8, align 8
  %140 = load i64, i64* %12, align 8
  %141 = icmp ule i64 %139, %140
  br i1 %141, label %142, label %202

142:                                              ; preds = %138
  %143 = load i64, i64* %8, align 8
  %144 = trunc i64 %143 to i32
  %145 = call i32 (i8*, i32, ...) @dd(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %144)
  %146 = load i32*, i32** %3, align 8
  %147 = load i64, i64* %8, align 8
  %148 = call i32 @lua_rawgeti(i32* %146, i32 3, i64 %147)
  %149 = load i32*, i32** %3, align 8
  %150 = call i64 @luaL_checklstring(i32* %149, i32 -1, i64* %9)
  %151 = inttoptr i64 %150 to i8*
  store i8* %151, i8** %5, align 8
  %152 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load i64, i64* %9, align 8
  %156 = call i8* @ngx_palloc(i32 %154, i64 %155)
  %157 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 0
  store i8* %156, i8** %157, align 8
  %158 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 0
  %159 = load i8*, i8** %158, align 8
  %160 = icmp eq i8* %159, null
  br i1 %160, label %161, label %164

161:                                              ; preds = %142
  %162 = load i32*, i32** %3, align 8
  %163 = call i32 (i32*, i8*, ...) @luaL_error(i32* %162, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  store i32 %163, i32* %2, align 4
  br label %265

164:                                              ; preds = %142
  %165 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 0
  %166 = load i8*, i8** %165, align 8
  %167 = load i8*, i8** %5, align 8
  %168 = load i64, i64* %9, align 8
  %169 = call i32 @ngx_memcpy(i8* %166, i8* %167, i64 %168)
  %170 = load i64, i64* %9, align 8
  %171 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 1
  store i64 %170, i64* %171, align 8
  %172 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %173 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %174 = load i64, i64* %8, align 8
  %175 = icmp eq i64 %174, 1
  %176 = zext i1 %175 to i32
  %177 = bitcast %struct.TYPE_18__* %6 to { i8*, i64 }*
  %178 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %177, i32 0, i32 0
  %179 = load i8*, i8** %178, align 8
  %180 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %177, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = bitcast %struct.TYPE_18__* %7 to { i8*, i64 }*
  %183 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %182, i32 0, i32 0
  %184 = load i8*, i8** %183, align 8
  %185 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %182, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = call i64 @ngx_http_lua_set_output_header(%struct.TYPE_19__* %172, %struct.TYPE_21__* %173, i8* %179, i64 %181, i8* %184, i64 %186, i32 %176)
  store i64 %187, i64* %11, align 8
  %188 = load i64, i64* %11, align 8
  %189 = load i64, i64* @NGX_ERROR, align 8
  %190 = icmp eq i64 %188, %189
  br i1 %190, label %191, label %198

191:                                              ; preds = %164
  %192 = load i32*, i32** %3, align 8
  %193 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 0
  %194 = load i8*, i8** %193, align 8
  %195 = load i64, i64* %11, align 8
  %196 = trunc i64 %195 to i32
  %197 = call i32 (i32*, i8*, ...) @luaL_error(i32* %192, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i8* %194, i32 %196)
  store i32 %197, i32* %2, align 4
  br label %265

198:                                              ; preds = %164
  br label %199

199:                                              ; preds = %198
  %200 = load i64, i64* %8, align 8
  %201 = add i64 %200, 1
  store i64 %201, i64* %8, align 8
  br label %138

202:                                              ; preds = %138
  store i32 0, i32* %2, align 4
  br label %265

203:                                              ; preds = %135
  br label %228

204:                                              ; preds = %125
  %205 = load i32*, i32** %3, align 8
  %206 = call i64 @luaL_checklstring(i32* %205, i32 3, i64* %9)
  %207 = inttoptr i64 %206 to i8*
  store i8* %207, i8** %5, align 8
  %208 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = load i64, i64* %9, align 8
  %212 = call i8* @ngx_palloc(i32 %210, i64 %211)
  %213 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 0
  store i8* %212, i8** %213, align 8
  %214 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 0
  %215 = load i8*, i8** %214, align 8
  %216 = icmp eq i8* %215, null
  br i1 %216, label %217, label %220

217:                                              ; preds = %204
  %218 = load i32*, i32** %3, align 8
  %219 = call i32 (i32*, i8*, ...) @luaL_error(i32* %218, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  store i32 %219, i32* %2, align 4
  br label %265

220:                                              ; preds = %204
  %221 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 0
  %222 = load i8*, i8** %221, align 8
  %223 = load i8*, i8** %5, align 8
  %224 = load i64, i64* %9, align 8
  %225 = call i32 @ngx_memcpy(i8* %222, i8* %223, i64 %224)
  %226 = load i64, i64* %9, align 8
  %227 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 1
  store i64 %226, i64* %227, align 8
  br label %228

228:                                              ; preds = %220, %203
  br label %229

229:                                              ; preds = %228, %123
  %230 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 1
  %231 = load i64, i64* %230, align 8
  %232 = trunc i64 %231 to i32
  %233 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 0
  %234 = load i8*, i8** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 1
  %236 = load i64, i64* %235, align 8
  %237 = trunc i64 %236 to i32
  %238 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 0
  %239 = load i8*, i8** %238, align 8
  %240 = call i32 (i8*, i32, ...) @dd(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 %232, i8* %234, i32 %237, i8* %239)
  %241 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %242 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %243 = bitcast %struct.TYPE_18__* %6 to { i8*, i64 }*
  %244 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %243, i32 0, i32 0
  %245 = load i8*, i8** %244, align 8
  %246 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %243, i32 0, i32 1
  %247 = load i64, i64* %246, align 8
  %248 = bitcast %struct.TYPE_18__* %7 to { i8*, i64 }*
  %249 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %248, i32 0, i32 0
  %250 = load i8*, i8** %249, align 8
  %251 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %248, i32 0, i32 1
  %252 = load i64, i64* %251, align 8
  %253 = call i64 @ngx_http_lua_set_output_header(%struct.TYPE_19__* %241, %struct.TYPE_21__* %242, i8* %245, i64 %247, i8* %250, i64 %252, i32 1)
  store i64 %253, i64* %11, align 8
  %254 = load i64, i64* %11, align 8
  %255 = load i64, i64* @NGX_ERROR, align 8
  %256 = icmp eq i64 %254, %255
  br i1 %256, label %257, label %264

257:                                              ; preds = %229
  %258 = load i32*, i32** %3, align 8
  %259 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 0
  %260 = load i8*, i8** %259, align 8
  %261 = load i64, i64* %11, align 8
  %262 = trunc i64 %261 to i32
  %263 = call i32 (i32*, i8*, ...) @luaL_error(i32* %258, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i8* %260, i32 %262)
  store i32 %263, i32* %2, align 4
  br label %265

264:                                              ; preds = %229
  store i32 0, i32* %2, align 4
  br label %265

265:                                              ; preds = %264, %257, %217, %202, %191, %161, %71, %43, %27, %18
  %266 = load i32, i32* %2, align 4
  ret i32 %266
}

declare dso_local %struct.TYPE_19__* @ngx_http_lua_get_req(i32*) #1

declare dso_local i32 @luaL_error(i32*, i8*, ...) #1

declare dso_local %struct.TYPE_21__* @ngx_http_get_module_ctx(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @ngx_http_lua_check_fake_request(i32*, %struct.TYPE_19__*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*) #1

declare dso_local i64 @luaL_checklstring(i32*, i32, i64*) #1

declare dso_local i32 @dd(i8*, i32, ...) #1

declare dso_local i8* @ngx_palloc(i32, i64) #1

declare dso_local i32 @ngx_memcpy(i8*, i8*, i64) #1

declare dso_local %struct.TYPE_20__* @ngx_http_get_module_loc_conf(%struct.TYPE_19__*, i32) #1

declare dso_local i64 @lua_type(i32*, i32) #1

declare dso_local i32 @ngx_str_null(%struct.TYPE_18__*) #1

declare dso_local i64 @lua_objlen(i32*, i32) #1

declare dso_local i32 @lua_rawgeti(i32*, i32, i64) #1

declare dso_local i64 @ngx_http_lua_set_output_header(%struct.TYPE_19__*, %struct.TYPE_21__*, i8*, i64, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
