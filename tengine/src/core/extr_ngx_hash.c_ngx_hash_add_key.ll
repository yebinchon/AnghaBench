; ModuleID = '/home/carl/AnghaBench/tengine/src/core/extr_ngx_hash.c_ngx_hash_add_key.c'
source_filename = "/home/carl/AnghaBench/tengine/src/core/extr_ngx_hash.c_ngx_hash_add_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_12__*, %struct.TYPE_12__, %struct.TYPE_12__*, %struct.TYPE_12__, %struct.TYPE_12__*, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i8* }
%struct.TYPE_11__ = type { i8*, i64, %struct.TYPE_9__ }

@NGX_HASH_WILDCARD_KEY = common dso_local global i32 0, align 4
@NGX_DECLINED = common dso_local global i64 0, align 8
@NGX_HASH_READONLY_KEY = common dso_local global i32 0, align 4
@NGX_BUSY = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ngx_hash_add_key(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_12__*, align 8
  %19 = alloca %struct.TYPE_12__*, align 8
  %20 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %17, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @NGX_HASH_WILDCARD_KEY, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %159

28:                                               ; preds = %4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %13, align 4
  br label %29

29:                                               ; preds = %88, %28
  %30 = load i32, i32* %13, align 4
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %91

35:                                               ; preds = %29
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = load i32, i32* %13, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 42
  br i1 %44, label %45, label %52

45:                                               ; preds = %35
  %46 = load i32, i32* %15, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %15, align 4
  %48 = icmp sgt i32 %47, 1
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i64, i64* @NGX_DECLINED, align 8
  store i64 %50, i64* %5, align 8
  br label %707

51:                                               ; preds = %45
  br label %52

52:                                               ; preds = %51, %35
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = load i32, i32* %13, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 46
  br i1 %61, label %62, label %75

62:                                               ; preds = %52
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = load i32, i32* %13, align 4
  %67 = add nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %65, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 46
  br i1 %72, label %73, label %75

73:                                               ; preds = %62
  %74 = load i64, i64* @NGX_DECLINED, align 8
  store i64 %74, i64* %5, align 8
  br label %707

75:                                               ; preds = %62, %52
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 1
  %78 = load i8*, i8** %77, align 8
  %79 = load i32, i32* %13, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %78, i64 %80
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %75
  %86 = load i64, i64* @NGX_DECLINED, align 8
  store i64 %86, i64* %5, align 8
  br label %707

87:                                               ; preds = %75
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %13, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %13, align 4
  br label %29

91:                                               ; preds = %29
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp sgt i32 %94, 1
  br i1 %95, label %96, label %105

96:                                               ; preds = %91
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 1
  %99 = load i8*, i8** %98, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 0
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp eq i32 %102, 46
  br i1 %103, label %104, label %105

104:                                              ; preds = %96
  store i32 1, i32* %16, align 4
  br label %315

105:                                              ; preds = %96, %91
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp sgt i32 %108, 2
  br i1 %109, label %110, label %153

110:                                              ; preds = %105
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 1
  %113 = load i8*, i8** %112, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 0
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp eq i32 %116, 42
  br i1 %117, label %118, label %127

118:                                              ; preds = %110
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 1
  %121 = load i8*, i8** %120, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 1
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp eq i32 %124, 46
  br i1 %125, label %126, label %127

126:                                              ; preds = %118
  store i32 2, i32* %16, align 4
  br label %315

127:                                              ; preds = %118, %110
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 1
  %130 = load i8*, i8** %129, align 8
  %131 = load i32, i32* %13, align 4
  %132 = sub nsw i32 %131, 2
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8, i8* %130, i64 %133
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp eq i32 %136, 46
  br i1 %137, label %138, label %152

138:                                              ; preds = %127
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 1
  %141 = load i8*, i8** %140, align 8
  %142 = load i32, i32* %13, align 4
  %143 = sub nsw i32 %142, 1
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8, i8* %141, i64 %144
  %146 = load i8, i8* %145, align 1
  %147 = sext i8 %146 to i32
  %148 = icmp eq i32 %147, 42
  br i1 %148, label %149, label %152

149:                                              ; preds = %138
  store i32 0, i32* %16, align 4
  %150 = load i32, i32* %17, align 4
  %151 = sub nsw i32 %150, 2
  store i32 %151, i32* %17, align 4
  br label %315

152:                                              ; preds = %138, %127
  br label %153

153:                                              ; preds = %152, %105
  %154 = load i32, i32* %15, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %153
  %157 = load i64, i64* @NGX_DECLINED, align 8
  store i64 %157, i64* %5, align 8
  br label %707

158:                                              ; preds = %153
  br label %159

159:                                              ; preds = %158, %4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %160

160:                                              ; preds = %194, %159
  %161 = load i32, i32* %13, align 4
  %162 = load i32, i32* %17, align 4
  %163 = icmp slt i32 %161, %162
  br i1 %163, label %164, label %197

164:                                              ; preds = %160
  %165 = load i32, i32* %9, align 4
  %166 = load i32, i32* @NGX_HASH_READONLY_KEY, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %184, label %169

169:                                              ; preds = %164
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 1
  %172 = load i8*, i8** %171, align 8
  %173 = load i32, i32* %13, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i8, i8* %172, i64 %174
  %176 = load i8, i8* %175, align 1
  %177 = call signext i8 @ngx_tolower(i8 signext %176)
  %178 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 1
  %180 = load i8*, i8** %179, align 8
  %181 = load i32, i32* %13, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i8, i8* %180, i64 %182
  store i8 %177, i8* %183, align 1
  br label %184

184:                                              ; preds = %169, %164
  %185 = load i32, i32* %14, align 4
  %186 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 1
  %188 = load i8*, i8** %187, align 8
  %189 = load i32, i32* %13, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i8, i8* %188, i64 %190
  %192 = load i8, i8* %191, align 1
  %193 = call i32 @ngx_hash(i32 %185, i8 signext %192)
  store i32 %193, i32* %14, align 4
  br label %194

194:                                              ; preds = %184
  %195 = load i32, i32* %13, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %13, align 4
  br label %160

197:                                              ; preds = %160
  %198 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = load i32, i32* %14, align 4
  %202 = srem i32 %201, %200
  store i32 %202, i32* %14, align 4
  %203 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i32 0, i32 6
  %205 = load %struct.TYPE_12__*, %struct.TYPE_12__** %204, align 8
  %206 = load i32, i32* %14, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %205, i64 %207
  %209 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %208, i32 0, i32 1
  %210 = load %struct.TYPE_9__*, %struct.TYPE_9__** %209, align 8
  store %struct.TYPE_9__* %210, %struct.TYPE_9__** %12, align 8
  %211 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %212 = icmp ne %struct.TYPE_9__* %211, null
  br i1 %212, label %213, label %256

213:                                              ; preds = %197
  store i32 0, i32* %13, align 4
  br label %214

214:                                              ; preds = %252, %213
  %215 = load i32, i32* %13, align 4
  %216 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %216, i32 0, i32 6
  %218 = load %struct.TYPE_12__*, %struct.TYPE_12__** %217, align 8
  %219 = load i32, i32* %14, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %218, i64 %220
  %222 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = icmp slt i32 %215, %223
  br i1 %224, label %225, label %255

225:                                              ; preds = %214
  %226 = load i32, i32* %17, align 4
  %227 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %228 = load i32, i32* %13, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %227, i64 %229
  %231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = icmp ne i32 %226, %232
  br i1 %233, label %234, label %235

234:                                              ; preds = %225
  br label %252

235:                                              ; preds = %225
  %236 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %237 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %236, i32 0, i32 1
  %238 = load i8*, i8** %237, align 8
  %239 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %240 = load i32, i32* %13, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %239, i64 %241
  %243 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %242, i32 0, i32 1
  %244 = load i8*, i8** %243, align 8
  %245 = load i32, i32* %17, align 4
  %246 = sext i32 %245 to i64
  %247 = call i64 @ngx_strncmp(i8* %238, i8* %244, i64 %246)
  %248 = icmp eq i64 %247, 0
  br i1 %248, label %249, label %251

249:                                              ; preds = %235
  %250 = load i64, i64* @NGX_BUSY, align 8
  store i64 %250, i64* %5, align 8
  br label %707

251:                                              ; preds = %235
  br label %252

252:                                              ; preds = %251, %234
  %253 = load i32, i32* %13, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %13, align 4
  br label %214

255:                                              ; preds = %214
  br label %272

256:                                              ; preds = %197
  %257 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %258 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %257, i32 0, i32 6
  %259 = load %struct.TYPE_12__*, %struct.TYPE_12__** %258, align 8
  %260 = load i32, i32* %14, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %259, i64 %261
  %263 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %264 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = call i64 @ngx_array_init(%struct.TYPE_12__* %262, i32 %265, i32 4, i32 16)
  %267 = load i64, i64* @NGX_OK, align 8
  %268 = icmp ne i64 %266, %267
  br i1 %268, label %269, label %271

269:                                              ; preds = %256
  %270 = load i64, i64* @NGX_ERROR, align 8
  store i64 %270, i64* %5, align 8
  br label %707

271:                                              ; preds = %256
  br label %272

272:                                              ; preds = %271, %255
  %273 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %274 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %273, i32 0, i32 6
  %275 = load %struct.TYPE_12__*, %struct.TYPE_12__** %274, align 8
  %276 = load i32, i32* %14, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %275, i64 %277
  %279 = call i8* @ngx_array_push(%struct.TYPE_12__* %278)
  %280 = bitcast i8* %279 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %280, %struct.TYPE_9__** %12, align 8
  %281 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %282 = icmp eq %struct.TYPE_9__* %281, null
  br i1 %282, label %283, label %285

283:                                              ; preds = %272
  %284 = load i64, i64* @NGX_ERROR, align 8
  store i64 %284, i64* %5, align 8
  br label %707

285:                                              ; preds = %272
  %286 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %287 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %288 = bitcast %struct.TYPE_9__* %286 to i8*
  %289 = bitcast %struct.TYPE_9__* %287 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %288, i8* align 8 %289, i64 16, i1 false)
  %290 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %291 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %290, i32 0, i32 7
  %292 = call i8* @ngx_array_push(%struct.TYPE_12__* %291)
  %293 = bitcast i8* %292 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %293, %struct.TYPE_11__** %20, align 8
  %294 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %295 = icmp eq %struct.TYPE_11__* %294, null
  br i1 %295, label %296, label %298

296:                                              ; preds = %285
  %297 = load i64, i64* @NGX_ERROR, align 8
  store i64 %297, i64* %5, align 8
  br label %707

298:                                              ; preds = %285
  %299 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %300 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %299, i32 0, i32 2
  %301 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %302 = bitcast %struct.TYPE_9__* %300 to i8*
  %303 = bitcast %struct.TYPE_9__* %301 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %302, i8* align 8 %303, i64 16, i1 false)
  %304 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %305 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %304, i32 0, i32 1
  %306 = load i8*, i8** %305, align 8
  %307 = load i32, i32* %17, align 4
  %308 = call i64 @ngx_hash_key(i8* %306, i32 %307)
  %309 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %310 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %309, i32 0, i32 1
  store i64 %308, i64* %310, align 8
  %311 = load i8*, i8** %8, align 8
  %312 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %313 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %312, i32 0, i32 0
  store i8* %311, i8** %313, align 8
  %314 = load i64, i64* @NGX_OK, align 8
  store i64 %314, i64* %5, align 8
  br label %707

315:                                              ; preds = %149, %126, %104
  %316 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %317 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %316, i32 0, i32 1
  %318 = load i8*, i8** %317, align 8
  %319 = load i32, i32* %16, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds i8, i8* %318, i64 %320
  %322 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %323 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %322, i32 0, i32 1
  %324 = load i8*, i8** %323, align 8
  %325 = load i32, i32* %16, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds i8, i8* %324, i64 %326
  %328 = load i32, i32* %17, align 4
  %329 = load i32, i32* %16, align 4
  %330 = sub nsw i32 %328, %329
  %331 = call i32 @ngx_hash_strlow(i8* %321, i8* %327, i32 %330)
  store i32 %331, i32* %14, align 4
  %332 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %333 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 8
  %335 = load i32, i32* %14, align 4
  %336 = srem i32 %335, %334
  store i32 %336, i32* %14, align 4
  %337 = load i32, i32* %16, align 4
  %338 = icmp eq i32 %337, 1
  br i1 %338, label %339, label %460

339:                                              ; preds = %315
  %340 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %341 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %340, i32 0, i32 6
  %342 = load %struct.TYPE_12__*, %struct.TYPE_12__** %341, align 8
  %343 = load i32, i32* %14, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %342, i64 %344
  %346 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %345, i32 0, i32 1
  %347 = load %struct.TYPE_9__*, %struct.TYPE_9__** %346, align 8
  store %struct.TYPE_9__* %347, %struct.TYPE_9__** %12, align 8
  %348 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %349 = icmp ne %struct.TYPE_9__* %348, null
  br i1 %349, label %350, label %398

350:                                              ; preds = %339
  %351 = load i32, i32* %17, align 4
  %352 = load i32, i32* %16, align 4
  %353 = sub nsw i32 %351, %352
  %354 = sext i32 %353 to i64
  store i64 %354, i64* %10, align 8
  store i32 0, i32* %13, align 4
  br label %355

355:                                              ; preds = %394, %350
  %356 = load i32, i32* %13, align 4
  %357 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %358 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %357, i32 0, i32 6
  %359 = load %struct.TYPE_12__*, %struct.TYPE_12__** %358, align 8
  %360 = load i32, i32* %14, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %359, i64 %361
  %363 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %362, i32 0, i32 0
  %364 = load i32, i32* %363, align 8
  %365 = icmp slt i32 %356, %364
  br i1 %365, label %366, label %397

366:                                              ; preds = %355
  %367 = load i64, i64* %10, align 8
  %368 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %369 = load i32, i32* %13, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %368, i64 %370
  %372 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %371, i32 0, i32 0
  %373 = load i32, i32* %372, align 8
  %374 = sext i32 %373 to i64
  %375 = icmp ne i64 %367, %374
  br i1 %375, label %376, label %377

376:                                              ; preds = %366
  br label %394

377:                                              ; preds = %366
  %378 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %379 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %378, i32 0, i32 1
  %380 = load i8*, i8** %379, align 8
  %381 = getelementptr inbounds i8, i8* %380, i64 1
  %382 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %383 = load i32, i32* %13, align 4
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %382, i64 %384
  %386 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %385, i32 0, i32 1
  %387 = load i8*, i8** %386, align 8
  %388 = load i64, i64* %10, align 8
  %389 = call i64 @ngx_strncmp(i8* %381, i8* %387, i64 %388)
  %390 = icmp eq i64 %389, 0
  br i1 %390, label %391, label %393

391:                                              ; preds = %377
  %392 = load i64, i64* @NGX_BUSY, align 8
  store i64 %392, i64* %5, align 8
  br label %707

393:                                              ; preds = %377
  br label %394

394:                                              ; preds = %393, %376
  %395 = load i32, i32* %13, align 4
  %396 = add nsw i32 %395, 1
  store i32 %396, i32* %13, align 4
  br label %355

397:                                              ; preds = %355
  br label %414

398:                                              ; preds = %339
  %399 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %400 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %399, i32 0, i32 6
  %401 = load %struct.TYPE_12__*, %struct.TYPE_12__** %400, align 8
  %402 = load i32, i32* %14, align 4
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %401, i64 %403
  %405 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %406 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %405, i32 0, i32 1
  %407 = load i32, i32* %406, align 4
  %408 = call i64 @ngx_array_init(%struct.TYPE_12__* %404, i32 %407, i32 4, i32 16)
  %409 = load i64, i64* @NGX_OK, align 8
  %410 = icmp ne i64 %408, %409
  br i1 %410, label %411, label %413

411:                                              ; preds = %398
  %412 = load i64, i64* @NGX_ERROR, align 8
  store i64 %412, i64* %5, align 8
  br label %707

413:                                              ; preds = %398
  br label %414

414:                                              ; preds = %413, %397
  %415 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %416 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %415, i32 0, i32 6
  %417 = load %struct.TYPE_12__*, %struct.TYPE_12__** %416, align 8
  %418 = load i32, i32* %14, align 4
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %417, i64 %419
  %421 = call i8* @ngx_array_push(%struct.TYPE_12__* %420)
  %422 = bitcast i8* %421 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %422, %struct.TYPE_9__** %12, align 8
  %423 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %424 = icmp eq %struct.TYPE_9__* %423, null
  br i1 %424, label %425, label %427

425:                                              ; preds = %414
  %426 = load i64, i64* @NGX_ERROR, align 8
  store i64 %426, i64* %5, align 8
  br label %707

427:                                              ; preds = %414
  %428 = load i32, i32* %17, align 4
  %429 = sub nsw i32 %428, 1
  %430 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %431 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %430, i32 0, i32 0
  store i32 %429, i32* %431, align 8
  %432 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %433 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %432, i32 0, i32 1
  %434 = load i32, i32* %433, align 4
  %435 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %436 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %435, i32 0, i32 0
  %437 = load i32, i32* %436, align 8
  %438 = call i8* @ngx_pnalloc(i32 %434, i32 %437)
  %439 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %440 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %439, i32 0, i32 1
  store i8* %438, i8** %440, align 8
  %441 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %442 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %441, i32 0, i32 1
  %443 = load i8*, i8** %442, align 8
  %444 = icmp eq i8* %443, null
  br i1 %444, label %445, label %447

445:                                              ; preds = %427
  %446 = load i64, i64* @NGX_ERROR, align 8
  store i64 %446, i64* %5, align 8
  br label %707

447:                                              ; preds = %427
  %448 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %449 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %448, i32 0, i32 1
  %450 = load i8*, i8** %449, align 8
  %451 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %452 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %451, i32 0, i32 1
  %453 = load i8*, i8** %452, align 8
  %454 = getelementptr inbounds i8, i8* %453, i64 1
  %455 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %456 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %455, i32 0, i32 0
  %457 = load i32, i32* %456, align 8
  %458 = sext i32 %457 to i64
  %459 = call i32 @ngx_memcpy(i8* %450, i8* %454, i64 %458)
  br label %460

460:                                              ; preds = %447, %315
  %461 = load i32, i32* %16, align 4
  %462 = icmp ne i32 %461, 0
  br i1 %462, label %463, label %551

463:                                              ; preds = %460
  %464 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %465 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %464, i32 0, i32 1
  %466 = load i32, i32* %465, align 4
  %467 = load i32, i32* %17, align 4
  %468 = call i8* @ngx_pnalloc(i32 %466, i32 %467)
  store i8* %468, i8** %11, align 8
  %469 = load i8*, i8** %11, align 8
  %470 = icmp eq i8* %469, null
  br i1 %470, label %471, label %473

471:                                              ; preds = %463
  %472 = load i64, i64* @NGX_ERROR, align 8
  store i64 %472, i64* %5, align 8
  br label %707

473:                                              ; preds = %463
  store i64 0, i64* %10, align 8
  store i32 0, i32* %15, align 4
  %474 = load i32, i32* %17, align 4
  %475 = sub nsw i32 %474, 1
  store i32 %475, i32* %13, align 4
  br label %476

476:                                              ; preds = %516, %473
  %477 = load i32, i32* %13, align 4
  %478 = icmp ne i32 %477, 0
  br i1 %478, label %479, label %519

479:                                              ; preds = %476
  %480 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %481 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %480, i32 0, i32 1
  %482 = load i8*, i8** %481, align 8
  %483 = load i32, i32* %13, align 4
  %484 = sext i32 %483 to i64
  %485 = getelementptr inbounds i8, i8* %482, i64 %484
  %486 = load i8, i8* %485, align 1
  %487 = sext i8 %486 to i32
  %488 = icmp eq i32 %487, 46
  br i1 %488, label %489, label %513

489:                                              ; preds = %479
  %490 = load i8*, i8** %11, align 8
  %491 = load i32, i32* %15, align 4
  %492 = sext i32 %491 to i64
  %493 = getelementptr inbounds i8, i8* %490, i64 %492
  %494 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %495 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %494, i32 0, i32 1
  %496 = load i8*, i8** %495, align 8
  %497 = load i32, i32* %13, align 4
  %498 = add nsw i32 %497, 1
  %499 = sext i32 %498 to i64
  %500 = getelementptr inbounds i8, i8* %496, i64 %499
  %501 = load i64, i64* %10, align 8
  %502 = call i32 @ngx_memcpy(i8* %493, i8* %500, i64 %501)
  %503 = load i64, i64* %10, align 8
  %504 = load i32, i32* %15, align 4
  %505 = sext i32 %504 to i64
  %506 = add i64 %505, %503
  %507 = trunc i64 %506 to i32
  store i32 %507, i32* %15, align 4
  %508 = load i8*, i8** %11, align 8
  %509 = load i32, i32* %15, align 4
  %510 = add nsw i32 %509, 1
  store i32 %510, i32* %15, align 4
  %511 = sext i32 %509 to i64
  %512 = getelementptr inbounds i8, i8* %508, i64 %511
  store i8 46, i8* %512, align 1
  store i64 0, i64* %10, align 8
  br label %516

513:                                              ; preds = %479
  %514 = load i64, i64* %10, align 8
  %515 = add i64 %514, 1
  store i64 %515, i64* %10, align 8
  br label %516

516:                                              ; preds = %513, %489
  %517 = load i32, i32* %13, align 4
  %518 = add nsw i32 %517, -1
  store i32 %518, i32* %13, align 4
  br label %476

519:                                              ; preds = %476
  %520 = load i64, i64* %10, align 8
  %521 = icmp ne i64 %520, 0
  br i1 %521, label %522, label %538

522:                                              ; preds = %519
  %523 = load i8*, i8** %11, align 8
  %524 = load i32, i32* %15, align 4
  %525 = sext i32 %524 to i64
  %526 = getelementptr inbounds i8, i8* %523, i64 %525
  %527 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %528 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %527, i32 0, i32 1
  %529 = load i8*, i8** %528, align 8
  %530 = getelementptr inbounds i8, i8* %529, i64 1
  %531 = load i64, i64* %10, align 8
  %532 = call i32 @ngx_memcpy(i8* %526, i8* %530, i64 %531)
  %533 = load i64, i64* %10, align 8
  %534 = load i32, i32* %15, align 4
  %535 = sext i32 %534 to i64
  %536 = add i64 %535, %533
  %537 = trunc i64 %536 to i32
  store i32 %537, i32* %15, align 4
  br label %538

538:                                              ; preds = %522, %519
  %539 = load i8*, i8** %11, align 8
  %540 = load i32, i32* %15, align 4
  %541 = sext i32 %540 to i64
  %542 = getelementptr inbounds i8, i8* %539, i64 %541
  store i8 0, i8* %542, align 1
  %543 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %544 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %543, i32 0, i32 5
  store %struct.TYPE_12__* %544, %struct.TYPE_12__** %19, align 8
  %545 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %546 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %545, i32 0, i32 4
  %547 = load %struct.TYPE_12__*, %struct.TYPE_12__** %546, align 8
  %548 = load i32, i32* %14, align 4
  %549 = sext i32 %548 to i64
  %550 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %547, i64 %549
  store %struct.TYPE_12__* %550, %struct.TYPE_12__** %18, align 8
  br label %578

551:                                              ; preds = %460
  %552 = load i32, i32* %17, align 4
  %553 = add nsw i32 %552, 1
  store i32 %553, i32* %17, align 4
  %554 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %555 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %554, i32 0, i32 1
  %556 = load i32, i32* %555, align 4
  %557 = load i32, i32* %17, align 4
  %558 = call i8* @ngx_pnalloc(i32 %556, i32 %557)
  store i8* %558, i8** %11, align 8
  %559 = load i8*, i8** %11, align 8
  %560 = icmp eq i8* %559, null
  br i1 %560, label %561, label %563

561:                                              ; preds = %551
  %562 = load i64, i64* @NGX_ERROR, align 8
  store i64 %562, i64* %5, align 8
  br label %707

563:                                              ; preds = %551
  %564 = load i8*, i8** %11, align 8
  %565 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %566 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %565, i32 0, i32 1
  %567 = load i8*, i8** %566, align 8
  %568 = load i32, i32* %17, align 4
  %569 = call i32 @ngx_cpystrn(i8* %564, i8* %567, i32 %568)
  %570 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %571 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %570, i32 0, i32 3
  store %struct.TYPE_12__* %571, %struct.TYPE_12__** %19, align 8
  %572 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %573 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %572, i32 0, i32 2
  %574 = load %struct.TYPE_12__*, %struct.TYPE_12__** %573, align 8
  %575 = load i32, i32* %14, align 4
  %576 = sext i32 %575 to i64
  %577 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %574, i64 %576
  store %struct.TYPE_12__* %577, %struct.TYPE_12__** %18, align 8
  br label %578

578:                                              ; preds = %563, %538
  %579 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %580 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %579, i32 0, i32 1
  %581 = load %struct.TYPE_9__*, %struct.TYPE_9__** %580, align 8
  store %struct.TYPE_9__* %581, %struct.TYPE_9__** %12, align 8
  %582 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %583 = icmp ne %struct.TYPE_9__* %582, null
  br i1 %583, label %584, label %629

584:                                              ; preds = %578
  %585 = load i32, i32* %17, align 4
  %586 = load i32, i32* %16, align 4
  %587 = sub nsw i32 %585, %586
  %588 = sext i32 %587 to i64
  store i64 %588, i64* %10, align 8
  store i32 0, i32* %13, align 4
  br label %589

589:                                              ; preds = %625, %584
  %590 = load i32, i32* %13, align 4
  %591 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %592 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %591, i32 0, i32 0
  %593 = load i32, i32* %592, align 8
  %594 = icmp slt i32 %590, %593
  br i1 %594, label %595, label %628

595:                                              ; preds = %589
  %596 = load i64, i64* %10, align 8
  %597 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %598 = load i32, i32* %13, align 4
  %599 = sext i32 %598 to i64
  %600 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %597, i64 %599
  %601 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %600, i32 0, i32 0
  %602 = load i32, i32* %601, align 8
  %603 = sext i32 %602 to i64
  %604 = icmp ne i64 %596, %603
  br i1 %604, label %605, label %606

605:                                              ; preds = %595
  br label %625

606:                                              ; preds = %595
  %607 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %608 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %607, i32 0, i32 1
  %609 = load i8*, i8** %608, align 8
  %610 = load i32, i32* %16, align 4
  %611 = sext i32 %610 to i64
  %612 = getelementptr inbounds i8, i8* %609, i64 %611
  %613 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %614 = load i32, i32* %13, align 4
  %615 = sext i32 %614 to i64
  %616 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %613, i64 %615
  %617 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %616, i32 0, i32 1
  %618 = load i8*, i8** %617, align 8
  %619 = load i64, i64* %10, align 8
  %620 = call i64 @ngx_strncmp(i8* %612, i8* %618, i64 %619)
  %621 = icmp eq i64 %620, 0
  br i1 %621, label %622, label %624

622:                                              ; preds = %606
  %623 = load i64, i64* @NGX_BUSY, align 8
  store i64 %623, i64* %5, align 8
  br label %707

624:                                              ; preds = %606
  br label %625

625:                                              ; preds = %624, %605
  %626 = load i32, i32* %13, align 4
  %627 = add nsw i32 %626, 1
  store i32 %627, i32* %13, align 4
  br label %589

628:                                              ; preds = %589
  br label %640

629:                                              ; preds = %578
  %630 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %631 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %632 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %631, i32 0, i32 1
  %633 = load i32, i32* %632, align 4
  %634 = call i64 @ngx_array_init(%struct.TYPE_12__* %630, i32 %633, i32 4, i32 16)
  %635 = load i64, i64* @NGX_OK, align 8
  %636 = icmp ne i64 %634, %635
  br i1 %636, label %637, label %639

637:                                              ; preds = %629
  %638 = load i64, i64* @NGX_ERROR, align 8
  store i64 %638, i64* %5, align 8
  br label %707

639:                                              ; preds = %629
  br label %640

640:                                              ; preds = %639, %628
  %641 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %642 = call i8* @ngx_array_push(%struct.TYPE_12__* %641)
  %643 = bitcast i8* %642 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %643, %struct.TYPE_9__** %12, align 8
  %644 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %645 = icmp eq %struct.TYPE_9__* %644, null
  br i1 %645, label %646, label %648

646:                                              ; preds = %640
  %647 = load i64, i64* @NGX_ERROR, align 8
  store i64 %647, i64* %5, align 8
  br label %707

648:                                              ; preds = %640
  %649 = load i32, i32* %17, align 4
  %650 = load i32, i32* %16, align 4
  %651 = sub nsw i32 %649, %650
  %652 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %653 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %652, i32 0, i32 0
  store i32 %651, i32* %653, align 8
  %654 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %655 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %654, i32 0, i32 1
  %656 = load i32, i32* %655, align 4
  %657 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %658 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %657, i32 0, i32 0
  %659 = load i32, i32* %658, align 8
  %660 = call i8* @ngx_pnalloc(i32 %656, i32 %659)
  %661 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %662 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %661, i32 0, i32 1
  store i8* %660, i8** %662, align 8
  %663 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %664 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %663, i32 0, i32 1
  %665 = load i8*, i8** %664, align 8
  %666 = icmp eq i8* %665, null
  br i1 %666, label %667, label %669

667:                                              ; preds = %648
  %668 = load i64, i64* @NGX_ERROR, align 8
  store i64 %668, i64* %5, align 8
  br label %707

669:                                              ; preds = %648
  %670 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %671 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %670, i32 0, i32 1
  %672 = load i8*, i8** %671, align 8
  %673 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %674 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %673, i32 0, i32 1
  %675 = load i8*, i8** %674, align 8
  %676 = load i32, i32* %16, align 4
  %677 = sext i32 %676 to i64
  %678 = getelementptr inbounds i8, i8* %675, i64 %677
  %679 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %680 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %679, i32 0, i32 0
  %681 = load i32, i32* %680, align 8
  %682 = sext i32 %681 to i64
  %683 = call i32 @ngx_memcpy(i8* %672, i8* %678, i64 %682)
  %684 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %685 = call i8* @ngx_array_push(%struct.TYPE_12__* %684)
  %686 = bitcast i8* %685 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %686, %struct.TYPE_11__** %20, align 8
  %687 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %688 = icmp eq %struct.TYPE_11__* %687, null
  br i1 %688, label %689, label %691

689:                                              ; preds = %669
  %690 = load i64, i64* @NGX_ERROR, align 8
  store i64 %690, i64* %5, align 8
  br label %707

691:                                              ; preds = %669
  %692 = load i32, i32* %17, align 4
  %693 = sub nsw i32 %692, 1
  %694 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %695 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %694, i32 0, i32 2
  %696 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %695, i32 0, i32 0
  store i32 %693, i32* %696, align 8
  %697 = load i8*, i8** %11, align 8
  %698 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %699 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %698, i32 0, i32 2
  %700 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %699, i32 0, i32 1
  store i8* %697, i8** %700, align 8
  %701 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %702 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %701, i32 0, i32 1
  store i64 0, i64* %702, align 8
  %703 = load i8*, i8** %8, align 8
  %704 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %705 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %704, i32 0, i32 0
  store i8* %703, i8** %705, align 8
  %706 = load i64, i64* @NGX_OK, align 8
  store i64 %706, i64* %5, align 8
  br label %707

707:                                              ; preds = %691, %689, %667, %646, %637, %622, %561, %471, %445, %425, %411, %391, %298, %296, %283, %269, %249, %156, %85, %73, %49
  %708 = load i64, i64* %5, align 8
  ret i64 %708
}

declare dso_local signext i8 @ngx_tolower(i8 signext) #1

declare dso_local i32 @ngx_hash(i32, i8 signext) #1

declare dso_local i64 @ngx_strncmp(i8*, i8*, i64) #1

declare dso_local i64 @ngx_array_init(%struct.TYPE_12__*, i32, i32, i32) #1

declare dso_local i8* @ngx_array_push(%struct.TYPE_12__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @ngx_hash_key(i8*, i32) #1

declare dso_local i32 @ngx_hash_strlow(i8*, i8*, i32) #1

declare dso_local i8* @ngx_pnalloc(i32, i32) #1

declare dso_local i32 @ngx_memcpy(i8*, i8*, i64) #1

declare dso_local i32 @ngx_cpystrn(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
