; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_util.c_ngx_http_lua_process_args_option.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_util.c_ngx_http_lua_process_args_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64, i32* }

@.str = private unnamed_addr constant [59 x i8] c"attempt to use a non-string key in the \22args\22 option table\00", align 1
@NGX_ESCAPE_URI_COMPONENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"attempt to use %s as query arg value\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"len 1: %d\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"no memory\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"shortcut: no escape required\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"should not reach here\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"buffer error: %d != %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ngx_http_lua_process_args_option(%struct.TYPE_6__* %0, i32* %1, i32 %2, %struct.TYPE_5__* %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %8, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %4
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @lua_gettop(i32* %22)
  %24 = load i32, i32* %7, align 4
  %25 = add nsw i32 %23, %24
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %7, align 4
  br label %27

27:                                               ; preds = %21, %4
  store i32 0, i32* %16, align 4
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 @lua_pushnil(i32* %28)
  br label %30

30:                                               ; preds = %156, %27
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i64 @lua_next(i32* %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %159

35:                                               ; preds = %30
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @lua_type(i32* %36, i32 -2)
  %38 = icmp ne i32 %37, 129
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i32*, i32** %6, align 8
  %41 = call i32 (i32*, i8*, ...) @luaL_error(i32* %40, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  br label %419

42:                                               ; preds = %35
  %43 = load i32*, i32** %6, align 8
  %44 = call i64 @lua_tolstring(i32* %43, i32 -2, i64* %10)
  %45 = inttoptr i64 %44 to i32*
  store i32* %45, i32** %9, align 8
  %46 = load i32*, i32** %9, align 8
  %47 = load i64, i64* %10, align 8
  %48 = load i32, i32* @NGX_ESCAPE_URI_COMPONENT, align 4
  %49 = call i32 @ngx_http_lua_escape_uri(i32* null, i32* %46, i64 %47, i32 %48)
  %50 = mul nsw i32 2, %49
  %51 = sext i32 %50 to i64
  store i64 %51, i64* %14, align 8
  %52 = load i64, i64* %14, align 8
  %53 = load i64, i64* %15, align 8
  %54 = add i64 %53, %52
  store i64 %54, i64* %15, align 8
  %55 = load i32*, i32** %6, align 8
  %56 = call i32 @lua_type(i32* %55, i32 -1)
  switch i32 %56, label %151 [
    i32 130, label %57
    i32 129, label %57
    i32 131, label %77
    i32 128, label %88
  ]

57:                                               ; preds = %42, %42
  %58 = load i32*, i32** %6, align 8
  %59 = call i64 @lua_tolstring(i32* %58, i32 -1, i64* %12)
  %60 = inttoptr i64 %59 to i32*
  store i32* %60, i32** %11, align 8
  %61 = load i32*, i32** %11, align 8
  %62 = load i64, i64* %12, align 8
  %63 = load i32, i32* @NGX_ESCAPE_URI_COMPONENT, align 4
  %64 = call i32 @ngx_http_lua_escape_uri(i32* null, i32* %61, i64 %62, i32 %63)
  %65 = mul nsw i32 2, %64
  %66 = sext i32 %65 to i64
  %67 = load i64, i64* %15, align 8
  %68 = add i64 %67, %66
  store i64 %68, i64* %15, align 8
  %69 = load i64, i64* %10, align 8
  %70 = load i64, i64* %12, align 8
  %71 = add i64 %69, %70
  %72 = add i64 %71, 1
  %73 = load i64, i64* %13, align 8
  %74 = add i64 %73, %72
  store i64 %74, i64* %13, align 8
  %75 = load i32, i32* %16, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %16, align 4
  br label %156

77:                                               ; preds = %42
  %78 = load i32*, i32** %6, align 8
  %79 = call i32 @lua_toboolean(i32* %78, i32 -1)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %77
  %82 = load i64, i64* %10, align 8
  %83 = load i64, i64* %13, align 8
  %84 = add i64 %83, %82
  store i64 %84, i64* %13, align 8
  %85 = load i32, i32* %16, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %16, align 4
  br label %87

87:                                               ; preds = %81, %77
  br label %156

88:                                               ; preds = %42
  store i32 0, i32* %17, align 4
  %89 = load i32*, i32** %6, align 8
  %90 = call i32 @lua_pushnil(i32* %89)
  br label %91

91:                                               ; preds = %145, %107, %88
  %92 = load i32*, i32** %6, align 8
  %93 = call i64 @lua_next(i32* %92, i32 -2)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %150

95:                                               ; preds = %91
  %96 = load i32*, i32** %6, align 8
  %97 = call i32 @lua_isboolean(i32* %96, i32 -1)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %111

99:                                               ; preds = %95
  %100 = load i32*, i32** %6, align 8
  %101 = call i32 @lua_toboolean(i32* %100, i32 -1)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %99
  %104 = load i64, i64* %10, align 8
  %105 = load i64, i64* %13, align 8
  %106 = add i64 %105, %104
  store i64 %106, i64* %13, align 8
  br label %110

107:                                              ; preds = %99
  %108 = load i32*, i32** %6, align 8
  %109 = call i32 @lua_pop(i32* %108, i32 1)
  br label %91

110:                                              ; preds = %103
  br label %137

111:                                              ; preds = %95
  %112 = load i32*, i32** %6, align 8
  %113 = call i64 @lua_tolstring(i32* %112, i32 -1, i64* %12)
  %114 = inttoptr i64 %113 to i32*
  store i32* %114, i32** %11, align 8
  %115 = load i32*, i32** %11, align 8
  %116 = icmp eq i32* %115, null
  br i1 %116, label %117, label %122

117:                                              ; preds = %111
  %118 = load i32*, i32** %6, align 8
  %119 = load i32*, i32** %6, align 8
  %120 = call i32 @luaL_typename(i32* %119, i32 -1)
  %121 = call i32 (i32*, i8*, ...) @luaL_error(i32* %118, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %120)
  br label %419

122:                                              ; preds = %111
  %123 = load i32*, i32** %11, align 8
  %124 = load i64, i64* %12, align 8
  %125 = load i32, i32* @NGX_ESCAPE_URI_COMPONENT, align 4
  %126 = call i32 @ngx_http_lua_escape_uri(i32* null, i32* %123, i64 %124, i32 %125)
  %127 = mul nsw i32 2, %126
  %128 = sext i32 %127 to i64
  %129 = load i64, i64* %15, align 8
  %130 = add i64 %129, %128
  store i64 %130, i64* %15, align 8
  %131 = load i64, i64* %10, align 8
  %132 = load i64, i64* %12, align 8
  %133 = add i64 %131, %132
  %134 = add i64 %133, 1
  %135 = load i64, i64* %13, align 8
  %136 = add i64 %135, %134
  store i64 %136, i64* %13, align 8
  br label %137

137:                                              ; preds = %122, %110
  %138 = load i32, i32* %17, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %17, align 4
  %140 = icmp sgt i32 %138, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %137
  %142 = load i64, i64* %14, align 8
  %143 = load i64, i64* %15, align 8
  %144 = add i64 %143, %142
  store i64 %144, i64* %15, align 8
  br label %145

145:                                              ; preds = %141, %137
  %146 = load i32, i32* %16, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %16, align 4
  %148 = load i32*, i32** %6, align 8
  %149 = call i32 @lua_pop(i32* %148, i32 1)
  br label %91

150:                                              ; preds = %91
  br label %156

151:                                              ; preds = %42
  %152 = load i32*, i32** %6, align 8
  %153 = load i32*, i32** %6, align 8
  %154 = call i32 @luaL_typename(i32* %153, i32 -1)
  %155 = call i32 (i32*, i8*, ...) @luaL_error(i32* %152, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %154)
  br label %419

156:                                              ; preds = %150, %87, %57
  %157 = load i32*, i32** %6, align 8
  %158 = call i32 @lua_pop(i32* %157, i32 1)
  br label %30

159:                                              ; preds = %30
  %160 = load i64, i64* %15, align 8
  %161 = load i64, i64* %13, align 8
  %162 = add i64 %161, %160
  store i64 %162, i64* %13, align 8
  %163 = load i32, i32* %16, align 4
  %164 = icmp sgt i32 %163, 1
  br i1 %164, label %165, label %172

165:                                              ; preds = %159
  %166 = load i32, i32* %16, align 4
  %167 = sub nsw i32 %166, 1
  %168 = sext i32 %167 to i64
  %169 = mul i64 %168, 1
  %170 = load i64, i64* %13, align 8
  %171 = add i64 %170, %169
  store i64 %171, i64* %13, align 8
  br label %172

172:                                              ; preds = %165, %159
  %173 = load i64, i64* %13, align 8
  %174 = trunc i64 %173 to i32
  %175 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %174)
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %177 = icmp ne %struct.TYPE_6__* %176, null
  br i1 %177, label %178, label %190

178:                                              ; preds = %172
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = load i64, i64* %13, align 8
  %183 = call i32* @ngx_palloc(i32 %181, i64 %182)
  store i32* %183, i32** %18, align 8
  %184 = load i32*, i32** %18, align 8
  %185 = icmp eq i32* %184, null
  br i1 %185, label %186, label %189

186:                                              ; preds = %178
  %187 = load i32*, i32** %6, align 8
  %188 = call i32 (i32*, i8*, ...) @luaL_error(i32* %187, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  br label %419

189:                                              ; preds = %178
  br label %194

190:                                              ; preds = %172
  %191 = load i32*, i32** %6, align 8
  %192 = load i64, i64* %13, align 8
  %193 = call i32* @lua_newuserdata(i32* %191, i64 %192)
  store i32* %193, i32** %18, align 8
  br label %194

194:                                              ; preds = %190, %189
  %195 = load i32*, i32** %18, align 8
  %196 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %196, i32 0, i32 1
  store i32* %195, i32** %197, align 8
  %198 = load i64, i64* %13, align 8
  %199 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i32 0, i32 0
  store i64 %198, i64* %200, align 8
  store i32 0, i32* %17, align 4
  %201 = load i32*, i32** %6, align 8
  %202 = call i32 @lua_pushnil(i32* %201)
  br label %203

203:                                              ; preds = %389, %194
  %204 = load i32*, i32** %6, align 8
  %205 = load i32, i32* %7, align 4
  %206 = call i64 @lua_next(i32* %204, i32 %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %392

208:                                              ; preds = %203
  %209 = load i32*, i32** %6, align 8
  %210 = call i64 @lua_tolstring(i32* %209, i32 -2, i64* %10)
  %211 = inttoptr i64 %210 to i32*
  store i32* %211, i32** %9, align 8
  %212 = load i32*, i32** %6, align 8
  %213 = call i32 @lua_type(i32* %212, i32 -1)
  switch i32 %213, label %386 [
    i32 130, label %214
    i32 129, label %214
    i32 131, label %263
    i32 128, label %296
  ]

214:                                              ; preds = %208, %208
  %215 = load i64, i64* %15, align 8
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %225

217:                                              ; preds = %214
  %218 = load i32*, i32** %18, align 8
  %219 = load i32*, i32** %9, align 8
  %220 = load i64, i64* %10, align 8
  %221 = load i32, i32* @NGX_ESCAPE_URI_COMPONENT, align 4
  %222 = call i32 @ngx_http_lua_escape_uri(i32* %218, i32* %219, i64 %220, i32 %221)
  %223 = sext i32 %222 to i64
  %224 = inttoptr i64 %223 to i32*
  store i32* %224, i32** %18, align 8
  br label %231

225:                                              ; preds = %214
  %226 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %227 = load i32*, i32** %18, align 8
  %228 = load i32*, i32** %9, align 8
  %229 = load i64, i64* %10, align 8
  %230 = call i32* @ngx_copy(i32* %227, i32* %228, i64 %229)
  store i32* %230, i32** %18, align 8
  br label %231

231:                                              ; preds = %225, %217
  %232 = load i32*, i32** %18, align 8
  %233 = getelementptr inbounds i32, i32* %232, i32 1
  store i32* %233, i32** %18, align 8
  store i32 61, i32* %232, align 4
  %234 = load i32*, i32** %6, align 8
  %235 = call i64 @lua_tolstring(i32* %234, i32 -1, i64* %12)
  %236 = inttoptr i64 %235 to i32*
  store i32* %236, i32** %11, align 8
  %237 = load i64, i64* %15, align 8
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %247

239:                                              ; preds = %231
  %240 = load i32*, i32** %18, align 8
  %241 = load i32*, i32** %11, align 8
  %242 = load i64, i64* %12, align 8
  %243 = load i32, i32* @NGX_ESCAPE_URI_COMPONENT, align 4
  %244 = call i32 @ngx_http_lua_escape_uri(i32* %240, i32* %241, i64 %242, i32 %243)
  %245 = sext i32 %244 to i64
  %246 = inttoptr i64 %245 to i32*
  store i32* %246, i32** %18, align 8
  br label %252

247:                                              ; preds = %231
  %248 = load i32*, i32** %18, align 8
  %249 = load i32*, i32** %11, align 8
  %250 = load i64, i64* %12, align 8
  %251 = call i32* @ngx_copy(i32* %248, i32* %249, i64 %250)
  store i32* %251, i32** %18, align 8
  br label %252

252:                                              ; preds = %247, %239
  %253 = load i32, i32* %17, align 4
  %254 = load i32, i32* %16, align 4
  %255 = sub nsw i32 %254, 1
  %256 = icmp ne i32 %253, %255
  br i1 %256, label %257, label %260

257:                                              ; preds = %252
  %258 = load i32*, i32** %18, align 8
  %259 = getelementptr inbounds i32, i32* %258, i32 1
  store i32* %259, i32** %18, align 8
  store i32 38, i32* %258, align 4
  br label %260

260:                                              ; preds = %257, %252
  %261 = load i32, i32* %17, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %17, align 4
  br label %389

263:                                              ; preds = %208
  %264 = load i32*, i32** %6, align 8
  %265 = call i32 @lua_toboolean(i32* %264, i32 -1)
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %295

267:                                              ; preds = %263
  %268 = load i64, i64* %15, align 8
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %278

270:                                              ; preds = %267
  %271 = load i32*, i32** %18, align 8
  %272 = load i32*, i32** %9, align 8
  %273 = load i64, i64* %10, align 8
  %274 = load i32, i32* @NGX_ESCAPE_URI_COMPONENT, align 4
  %275 = call i32 @ngx_http_lua_escape_uri(i32* %271, i32* %272, i64 %273, i32 %274)
  %276 = sext i32 %275 to i64
  %277 = inttoptr i64 %276 to i32*
  store i32* %277, i32** %18, align 8
  br label %284

278:                                              ; preds = %267
  %279 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %280 = load i32*, i32** %18, align 8
  %281 = load i32*, i32** %9, align 8
  %282 = load i64, i64* %10, align 8
  %283 = call i32* @ngx_copy(i32* %280, i32* %281, i64 %282)
  store i32* %283, i32** %18, align 8
  br label %284

284:                                              ; preds = %278, %270
  %285 = load i32, i32* %17, align 4
  %286 = load i32, i32* %16, align 4
  %287 = sub nsw i32 %286, 1
  %288 = icmp ne i32 %285, %287
  br i1 %288, label %289, label %292

289:                                              ; preds = %284
  %290 = load i32*, i32** %18, align 8
  %291 = getelementptr inbounds i32, i32* %290, i32 1
  store i32* %291, i32** %18, align 8
  store i32 38, i32* %290, align 4
  br label %292

292:                                              ; preds = %289, %284
  %293 = load i32, i32* %17, align 4
  %294 = add nsw i32 %293, 1
  store i32 %294, i32* %17, align 4
  br label %295

295:                                              ; preds = %292, %263
  br label %389

296:                                              ; preds = %208
  %297 = load i32*, i32** %6, align 8
  %298 = call i32 @lua_pushnil(i32* %297)
  br label %299

299:                                              ; preds = %380, %329, %296
  %300 = load i32*, i32** %6, align 8
  %301 = call i64 @lua_next(i32* %300, i32 -2)
  %302 = icmp ne i64 %301, 0
  br i1 %302, label %303, label %385

303:                                              ; preds = %299
  %304 = load i32*, i32** %6, align 8
  %305 = call i32 @lua_isboolean(i32* %304, i32 -1)
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %333

307:                                              ; preds = %303
  %308 = load i32*, i32** %6, align 8
  %309 = call i32 @lua_toboolean(i32* %308, i32 -1)
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %329

311:                                              ; preds = %307
  %312 = load i64, i64* %15, align 8
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %314, label %322

314:                                              ; preds = %311
  %315 = load i32*, i32** %18, align 8
  %316 = load i32*, i32** %9, align 8
  %317 = load i64, i64* %10, align 8
  %318 = load i32, i32* @NGX_ESCAPE_URI_COMPONENT, align 4
  %319 = call i32 @ngx_http_lua_escape_uri(i32* %315, i32* %316, i64 %317, i32 %318)
  %320 = sext i32 %319 to i64
  %321 = inttoptr i64 %320 to i32*
  store i32* %321, i32** %18, align 8
  br label %328

322:                                              ; preds = %311
  %323 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %324 = load i32*, i32** %18, align 8
  %325 = load i32*, i32** %9, align 8
  %326 = load i64, i64* %10, align 8
  %327 = call i32* @ngx_copy(i32* %324, i32* %325, i64 %326)
  store i32* %327, i32** %18, align 8
  br label %328

328:                                              ; preds = %322, %314
  br label %332

329:                                              ; preds = %307
  %330 = load i32*, i32** %6, align 8
  %331 = call i32 @lua_pop(i32* %330, i32 1)
  br label %299

332:                                              ; preds = %328
  br label %372

333:                                              ; preds = %303
  %334 = load i64, i64* %15, align 8
  %335 = icmp ne i64 %334, 0
  br i1 %335, label %336, label %344

336:                                              ; preds = %333
  %337 = load i32*, i32** %18, align 8
  %338 = load i32*, i32** %9, align 8
  %339 = load i64, i64* %10, align 8
  %340 = load i32, i32* @NGX_ESCAPE_URI_COMPONENT, align 4
  %341 = call i32 @ngx_http_lua_escape_uri(i32* %337, i32* %338, i64 %339, i32 %340)
  %342 = sext i32 %341 to i64
  %343 = inttoptr i64 %342 to i32*
  store i32* %343, i32** %18, align 8
  br label %350

344:                                              ; preds = %333
  %345 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %346 = load i32*, i32** %18, align 8
  %347 = load i32*, i32** %9, align 8
  %348 = load i64, i64* %10, align 8
  %349 = call i32* @ngx_copy(i32* %346, i32* %347, i64 %348)
  store i32* %349, i32** %18, align 8
  br label %350

350:                                              ; preds = %344, %336
  %351 = load i32*, i32** %18, align 8
  %352 = getelementptr inbounds i32, i32* %351, i32 1
  store i32* %352, i32** %18, align 8
  store i32 61, i32* %351, align 4
  %353 = load i32*, i32** %6, align 8
  %354 = call i64 @lua_tolstring(i32* %353, i32 -1, i64* %12)
  %355 = inttoptr i64 %354 to i32*
  store i32* %355, i32** %11, align 8
  %356 = load i64, i64* %15, align 8
  %357 = icmp ne i64 %356, 0
  br i1 %357, label %358, label %366

358:                                              ; preds = %350
  %359 = load i32*, i32** %18, align 8
  %360 = load i32*, i32** %11, align 8
  %361 = load i64, i64* %12, align 8
  %362 = load i32, i32* @NGX_ESCAPE_URI_COMPONENT, align 4
  %363 = call i32 @ngx_http_lua_escape_uri(i32* %359, i32* %360, i64 %361, i32 %362)
  %364 = sext i32 %363 to i64
  %365 = inttoptr i64 %364 to i32*
  store i32* %365, i32** %18, align 8
  br label %371

366:                                              ; preds = %350
  %367 = load i32*, i32** %18, align 8
  %368 = load i32*, i32** %11, align 8
  %369 = load i64, i64* %12, align 8
  %370 = call i32* @ngx_copy(i32* %367, i32* %368, i64 %369)
  store i32* %370, i32** %18, align 8
  br label %371

371:                                              ; preds = %366, %358
  br label %372

372:                                              ; preds = %371, %332
  %373 = load i32, i32* %17, align 4
  %374 = load i32, i32* %16, align 4
  %375 = sub nsw i32 %374, 1
  %376 = icmp ne i32 %373, %375
  br i1 %376, label %377, label %380

377:                                              ; preds = %372
  %378 = load i32*, i32** %18, align 8
  %379 = getelementptr inbounds i32, i32* %378, i32 1
  store i32* %379, i32** %18, align 8
  store i32 38, i32* %378, align 4
  br label %380

380:                                              ; preds = %377, %372
  %381 = load i32, i32* %17, align 4
  %382 = add nsw i32 %381, 1
  store i32 %382, i32* %17, align 4
  %383 = load i32*, i32** %6, align 8
  %384 = call i32 @lua_pop(i32* %383, i32 1)
  br label %299

385:                                              ; preds = %299
  br label %389

386:                                              ; preds = %208
  %387 = load i32*, i32** %6, align 8
  %388 = call i32 (i32*, i8*, ...) @luaL_error(i32* %387, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %419

389:                                              ; preds = %385, %295, %260
  %390 = load i32*, i32** %6, align 8
  %391 = call i32 @lua_pop(i32* %390, i32 1)
  br label %203

392:                                              ; preds = %203
  %393 = load i32*, i32** %18, align 8
  %394 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %395 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %394, i32 0, i32 1
  %396 = load i32*, i32** %395, align 8
  %397 = ptrtoint i32* %393 to i64
  %398 = ptrtoint i32* %396 to i64
  %399 = sub i64 %397, %398
  %400 = sdiv exact i64 %399, 4
  %401 = load i64, i64* %13, align 8
  %402 = trunc i64 %401 to i32
  %403 = sext i32 %402 to i64
  %404 = icmp ne i64 %400, %403
  br i1 %404, label %405, label %419

405:                                              ; preds = %392
  %406 = load i32*, i32** %6, align 8
  %407 = load i32*, i32** %18, align 8
  %408 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %409 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %408, i32 0, i32 1
  %410 = load i32*, i32** %409, align 8
  %411 = ptrtoint i32* %407 to i64
  %412 = ptrtoint i32* %410 to i64
  %413 = sub i64 %411, %412
  %414 = sdiv exact i64 %413, 4
  %415 = trunc i64 %414 to i32
  %416 = load i64, i64* %13, align 8
  %417 = trunc i64 %416 to i32
  %418 = call i32 (i32*, i8*, ...) @luaL_error(i32* %406, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %415, i32 %417)
  br label %419

419:                                              ; preds = %39, %117, %151, %186, %386, %405, %392
  ret void
}

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i64 @lua_next(i32*, i32) #1

declare dso_local i32 @lua_type(i32*, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*, ...) #1

declare dso_local i64 @lua_tolstring(i32*, i32, i64*) #1

declare dso_local i32 @ngx_http_lua_escape_uri(i32*, i32*, i64, i32) #1

declare dso_local i32 @lua_toboolean(i32*, i32) #1

declare dso_local i32 @lua_isboolean(i32*, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32 @luaL_typename(i32*, i32) #1

declare dso_local i32 @dd(i8*, ...) #1

declare dso_local i32* @ngx_palloc(i32, i64) #1

declare dso_local i32* @lua_newuserdata(i32*, i64) #1

declare dso_local i32* @ngx_copy(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
