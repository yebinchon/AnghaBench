; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_write.c_sqlite3Fts3UpdateMethod.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_write.c_sqlite3Fts3UpdateMethod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i64, i32, i64, i64, i64, i32, i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_NULL = common dso_local global i64 0, align 8
@SQLITE_CONSTRAINT = common dso_local global i32 0, align 4
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@SQLITE_REPLACE = common dso_local global i64 0, align 8
@SQLITE_INTEGER = common dso_local global i64 0, align 8
@FTS_CORRUPT_VTAB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3Fts3UpdateMethod(i32* %0, i32 %1, i32** %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32** %2, i32*** %7, align 8
  store i32* %3, i32** %8, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = bitcast i32* %17 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %18, %struct.TYPE_11__** %9, align 8
  %19 = load i32, i32* @SQLITE_OK, align 4
  store i32 %19, i32* %10, align 4
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %4
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %27, 1
  br label %29

29:                                               ; preds = %24, %4
  %30 = phi i1 [ true, %4 ], [ %28, %24 ]
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load i32, i32* %6, align 4
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %49, label %41

41:                                               ; preds = %29
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 2, %45
  %47 = add nsw i32 %46, 3
  %48 = icmp eq i32 %42, %47
  br label %49

49:                                               ; preds = %41, %29
  %50 = phi i1 [ true, %29 ], [ %48, %41 ]
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert(i32 %51)
  %53 = load i32, i32* %6, align 4
  %54 = icmp sgt i32 %53, 1
  br i1 %54, label %55, label %85

55:                                               ; preds = %49
  %56 = load i32**, i32*** %7, align 8
  %57 = getelementptr inbounds i32*, i32** %56, i64 0
  %58 = load i32*, i32** %57, align 8
  %59 = call i64 @sqlite3_value_type(i32* %58)
  %60 = load i64, i64* @SQLITE_NULL, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %85

62:                                               ; preds = %55
  %63 = load i32**, i32*** %7, align 8
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = add nsw i32 %66, 2
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32*, i32** %63, i64 %68
  %70 = load i32*, i32** %69, align 8
  %71 = call i64 @sqlite3_value_type(i32* %70)
  %72 = load i64, i64* @SQLITE_NULL, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %85

74:                                               ; preds = %62
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %76 = load i32**, i32*** %7, align 8
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = add nsw i32 %79, 2
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32*, i32** %76, i64 %81
  %83 = load i32*, i32** %82, align 8
  %84 = call i32 @fts3SpecialInsert(%struct.TYPE_11__* %75, i32* %83)
  store i32 %84, i32* %10, align 4
  br label %319

85:                                               ; preds = %62, %55, %49
  %86 = load i32, i32* %6, align 4
  %87 = icmp sgt i32 %86, 1
  br i1 %87, label %88, label %102

88:                                               ; preds = %85
  %89 = load i32**, i32*** %7, align 8
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = add nsw i32 2, %92
  %94 = add nsw i32 %93, 2
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32*, i32** %89, i64 %95
  %97 = load i32*, i32** %96, align 8
  %98 = call i32 @sqlite3_value_int(i32* %97)
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %88
  %101 = load i32, i32* @SQLITE_CONSTRAINT, align 4
  store i32 %101, i32* %10, align 4
  br label %319

102:                                              ; preds = %88, %85
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = add nsw i32 %105, 1
  %107 = sext i32 %106 to i64
  %108 = mul i64 4, %107
  %109 = mul i64 %108, 2
  %110 = trunc i64 %109 to i32
  %111 = call i32* @sqlite3_malloc64(i32 %110)
  store i32* %111, i32** %12, align 8
  %112 = load i32*, i32** %12, align 8
  %113 = icmp eq i32* %112, null
  br i1 %113, label %114, label %116

114:                                              ; preds = %102
  %115 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %115, i32* %10, align 4
  br label %319

116:                                              ; preds = %102
  %117 = load i32*, i32** %12, align 8
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = add nsw i32 %120, 1
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %117, i64 %122
  store i32* %123, i32** %11, align 8
  %124 = load i32*, i32** %12, align 8
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = add nsw i32 %127, 1
  %129 = sext i32 %128 to i64
  %130 = mul i64 4, %129
  %131 = mul i64 %130, 2
  %132 = trunc i64 %131 to i32
  %133 = call i32 @memset(i32* %124, i32 0, i32 %132)
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %135 = call i32 @fts3Writelock(%struct.TYPE_11__* %134)
  store i32 %135, i32* %10, align 4
  %136 = load i32, i32* %10, align 4
  %137 = load i32, i32* @SQLITE_OK, align 4
  %138 = icmp ne i32 %136, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %116
  br label %319

140:                                              ; preds = %116
  %141 = load i32, i32* %6, align 4
  %142 = icmp sgt i32 %141, 1
  br i1 %142, label %143, label %204

143:                                              ; preds = %140
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 3
  %146 = load i64, i64* %145, align 8
  %147 = icmp eq i64 %146, 0
  br i1 %147, label %148, label %204

148:                                              ; preds = %143
  %149 = load i32**, i32*** %7, align 8
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = add nsw i32 3, %152
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32*, i32** %149, i64 %154
  %156 = load i32*, i32** %155, align 8
  store i32* %156, i32** %15, align 8
  %157 = load i32*, i32** %15, align 8
  %158 = call i64 @sqlite3_value_type(i32* %157)
  %159 = load i64, i64* @SQLITE_NULL, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %161, label %165

161:                                              ; preds = %148
  %162 = load i32**, i32*** %7, align 8
  %163 = getelementptr inbounds i32*, i32** %162, i64 1
  %164 = load i32*, i32** %163, align 8
  store i32* %164, i32** %15, align 8
  br label %165

165:                                              ; preds = %161, %148
  %166 = load i32*, i32** %15, align 8
  %167 = call i64 @sqlite3_value_type(i32* %166)
  %168 = load i64, i64* @SQLITE_NULL, align 8
  %169 = icmp ne i64 %167, %168
  br i1 %169, label %170, label %203

170:                                              ; preds = %165
  %171 = load i32**, i32*** %7, align 8
  %172 = getelementptr inbounds i32*, i32** %171, i64 0
  %173 = load i32*, i32** %172, align 8
  %174 = call i64 @sqlite3_value_type(i32* %173)
  %175 = load i64, i64* @SQLITE_NULL, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %185, label %177

177:                                              ; preds = %170
  %178 = load i32**, i32*** %7, align 8
  %179 = getelementptr inbounds i32*, i32** %178, i64 0
  %180 = load i32*, i32** %179, align 8
  %181 = call i64 @sqlite3_value_int64(i32* %180)
  %182 = load i32*, i32** %15, align 8
  %183 = call i64 @sqlite3_value_int64(i32* %182)
  %184 = icmp ne i64 %181, %183
  br i1 %184, label %185, label %203

185:                                              ; preds = %177, %170
  %186 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i32 0, i32 7
  %188 = load i32, i32* %187, align 4
  %189 = call i64 @sqlite3_vtab_on_conflict(i32 %188)
  %190 = load i64, i64* @SQLITE_REPLACE, align 8
  %191 = icmp eq i64 %189, %190
  br i1 %191, label %192, label %197

192:                                              ; preds = %185
  %193 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %194 = load i32*, i32** %15, align 8
  %195 = load i32*, i32** %12, align 8
  %196 = call i32 @fts3DeleteByRowid(%struct.TYPE_11__* %193, i32* %194, i32* %13, i32* %195)
  store i32 %196, i32* %10, align 4
  br label %202

197:                                              ; preds = %185
  %198 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %199 = load i32**, i32*** %7, align 8
  %200 = load i32*, i32** %8, align 8
  %201 = call i32 @fts3InsertData(%struct.TYPE_11__* %198, i32** %199, i32* %200)
  store i32 %201, i32* %10, align 4
  store i32 1, i32* %14, align 4
  br label %202

202:                                              ; preds = %197, %192
  br label %203

203:                                              ; preds = %202, %177, %165
  br label %204

204:                                              ; preds = %203, %143, %140
  %205 = load i32, i32* %10, align 4
  %206 = load i32, i32* @SQLITE_OK, align 4
  %207 = icmp ne i32 %205, %206
  br i1 %207, label %208, label %209

208:                                              ; preds = %204
  br label %319

209:                                              ; preds = %204
  %210 = load i32**, i32*** %7, align 8
  %211 = getelementptr inbounds i32*, i32** %210, i64 0
  %212 = load i32*, i32** %211, align 8
  %213 = call i64 @sqlite3_value_type(i32* %212)
  %214 = load i64, i64* @SQLITE_NULL, align 8
  %215 = icmp ne i64 %213, %214
  br i1 %215, label %216, label %231

216:                                              ; preds = %209
  %217 = load i32**, i32*** %7, align 8
  %218 = getelementptr inbounds i32*, i32** %217, i64 0
  %219 = load i32*, i32** %218, align 8
  %220 = call i64 @sqlite3_value_type(i32* %219)
  %221 = load i64, i64* @SQLITE_INTEGER, align 8
  %222 = icmp eq i64 %220, %221
  %223 = zext i1 %222 to i32
  %224 = call i32 @assert(i32 %223)
  %225 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %226 = load i32**, i32*** %7, align 8
  %227 = getelementptr inbounds i32*, i32** %226, i64 0
  %228 = load i32*, i32** %227, align 8
  %229 = load i32*, i32** %12, align 8
  %230 = call i32 @fts3DeleteByRowid(%struct.TYPE_11__* %225, i32* %228, i32* %13, i32* %229)
  store i32 %230, i32* %10, align 4
  br label %231

231:                                              ; preds = %216, %209
  %232 = load i32, i32* %6, align 4
  %233 = icmp sgt i32 %232, 1
  br i1 %233, label %234, label %307

234:                                              ; preds = %231
  %235 = load i32, i32* %10, align 4
  %236 = load i32, i32* @SQLITE_OK, align 4
  %237 = icmp eq i32 %235, %236
  br i1 %237, label %238, label %307

238:                                              ; preds = %234
  %239 = load i32**, i32*** %7, align 8
  %240 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %241 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 8
  %243 = add nsw i32 2, %242
  %244 = add nsw i32 %243, 2
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i32*, i32** %239, i64 %245
  %247 = load i32*, i32** %246, align 8
  %248 = call i32 @sqlite3_value_int(i32* %247)
  store i32 %248, i32* %16, align 4
  %249 = load i32, i32* %14, align 4
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %251, label %267

251:                                              ; preds = %238
  %252 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %253 = load i32**, i32*** %7, align 8
  %254 = load i32*, i32** %8, align 8
  %255 = call i32 @fts3InsertData(%struct.TYPE_11__* %252, i32** %253, i32* %254)
  store i32 %255, i32* %10, align 4
  %256 = load i32, i32* %10, align 4
  %257 = load i32, i32* @SQLITE_CONSTRAINT, align 4
  %258 = icmp eq i32 %256, %257
  br i1 %258, label %259, label %266

259:                                              ; preds = %251
  %260 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %261 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %260, i32 0, i32 3
  %262 = load i64, i64* %261, align 8
  %263 = icmp eq i64 %262, 0
  br i1 %263, label %264, label %266

264:                                              ; preds = %259
  %265 = load i32, i32* @FTS_CORRUPT_VTAB, align 4
  store i32 %265, i32* %10, align 4
  br label %266

266:                                              ; preds = %264, %259, %251
  br label %267

267:                                              ; preds = %266, %238
  %268 = load i32, i32* %10, align 4
  %269 = load i32, i32* @SQLITE_OK, align 4
  %270 = icmp eq i32 %268, %269
  br i1 %270, label %271, label %277

271:                                              ; preds = %267
  %272 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %273 = load i32, i32* %16, align 4
  %274 = load i32*, i32** %8, align 8
  %275 = load i32, i32* %274, align 4
  %276 = call i32 @fts3PendingTermsDocid(%struct.TYPE_11__* %272, i32 0, i32 %273, i32 %275)
  store i32 %276, i32* %10, align 4
  br label %277

277:                                              ; preds = %271, %267
  %278 = load i32, i32* %10, align 4
  %279 = load i32, i32* @SQLITE_OK, align 4
  %280 = icmp eq i32 %278, %279
  br i1 %280, label %281, label %295

281:                                              ; preds = %277
  %282 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %283 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %282, i32 0, i32 6
  %284 = load i32, i32* %283, align 8
  %285 = load i32*, i32** %8, align 8
  %286 = load i32, i32* %285, align 4
  %287 = icmp eq i32 %284, %286
  %288 = zext i1 %287 to i32
  %289 = call i32 @assert(i32 %288)
  %290 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %291 = load i32, i32* %16, align 4
  %292 = load i32**, i32*** %7, align 8
  %293 = load i32*, i32** %11, align 8
  %294 = call i32 @fts3InsertTerms(%struct.TYPE_11__* %290, i32 %291, i32** %292, i32* %293)
  store i32 %294, i32* %10, align 4
  br label %295

295:                                              ; preds = %281, %277
  %296 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %297 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %296, i32 0, i32 5
  %298 = load i64, i64* %297, align 8
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %304

300:                                              ; preds = %295
  %301 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %302 = load i32*, i32** %11, align 8
  %303 = call i32 @fts3InsertDocsize(i32* %10, %struct.TYPE_11__* %301, i32* %302)
  br label %304

304:                                              ; preds = %300, %295
  %305 = load i32, i32* %13, align 4
  %306 = add nsw i32 %305, 1
  store i32 %306, i32* %13, align 4
  br label %307

307:                                              ; preds = %304, %234, %231
  %308 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %309 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %308, i32 0, i32 4
  %310 = load i64, i64* %309, align 8
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %312, label %318

312:                                              ; preds = %307
  %313 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %314 = load i32*, i32** %11, align 8
  %315 = load i32*, i32** %12, align 8
  %316 = load i32, i32* %13, align 4
  %317 = call i32 @fts3UpdateDocTotals(i32* %10, %struct.TYPE_11__* %313, i32* %314, i32* %315, i32 %316)
  br label %318

318:                                              ; preds = %312, %307
  br label %319

319:                                              ; preds = %318, %208, %139, %114, %100, %74
  %320 = load i32*, i32** %12, align 8
  %321 = call i32 @sqlite3_free(i32* %320)
  %322 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %323 = call i32 @sqlite3Fts3SegmentsClose(%struct.TYPE_11__* %322)
  %324 = load i32, i32* %10, align 4
  ret i32 %324
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @sqlite3_value_type(i32*) #1

declare dso_local i32 @fts3SpecialInsert(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @sqlite3_value_int(i32*) #1

declare dso_local i32* @sqlite3_malloc64(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @fts3Writelock(%struct.TYPE_11__*) #1

declare dso_local i64 @sqlite3_value_int64(i32*) #1

declare dso_local i64 @sqlite3_vtab_on_conflict(i32) #1

declare dso_local i32 @fts3DeleteByRowid(%struct.TYPE_11__*, i32*, i32*, i32*) #1

declare dso_local i32 @fts3InsertData(%struct.TYPE_11__*, i32**, i32*) #1

declare dso_local i32 @fts3PendingTermsDocid(%struct.TYPE_11__*, i32, i32, i32) #1

declare dso_local i32 @fts3InsertTerms(%struct.TYPE_11__*, i32, i32**, i32*) #1

declare dso_local i32 @fts3InsertDocsize(i32*, %struct.TYPE_11__*, i32*) #1

declare dso_local i32 @fts3UpdateDocTotals(i32*, %struct.TYPE_11__*, i32*, i32*, i32) #1

declare dso_local i32 @sqlite3_free(i32*) #1

declare dso_local i32 @sqlite3Fts3SegmentsClose(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
