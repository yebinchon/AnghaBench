; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_util.c_sqlite3AtoF.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_util.c_sqlite3AtoF.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SQLITE_UTF8 = common dso_local global i32 0, align 4
@SQLITE_UTF16LE = common dso_local global i32 0, align 4
@SQLITE_UTF16BE = common dso_local global i32 0, align 4
@LARGEST_INT64 = common dso_local global i32 0, align 4
@INFINITY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3AtoF(i8* %0, double* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca double*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca double, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store double* %1, double** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %24 = load i8*, i8** %6, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  store i8* %27, i8** %11, align 8
  store i32 1, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 1, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 1, i32* %17, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @SQLITE_UTF8, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %39, label %31

31:                                               ; preds = %4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @SQLITE_UTF16LE, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @SQLITE_UTF16BE, align 4
  %38 = icmp eq i32 %36, %37
  br label %39

39:                                               ; preds = %35, %31, %4
  %40 = phi i1 [ true, %31 ], [ true, %4 ], [ %38, %35 ]
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  %43 = load double*, double** %7, align 8
  store double 0.000000e+00, double* %43, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @SQLITE_UTF8, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  store i32 1, i32* %10, align 4
  br label %93

48:                                               ; preds = %39
  store i32 2, i32* %10, align 4
  %49 = load i32, i32* @SQLITE_UTF16LE, align 4
  %50 = icmp eq i32 %49, 2
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i32, i32* @SQLITE_UTF16BE, align 4
  %53 = icmp eq i32 %52, 3
  br label %54

54:                                               ; preds = %51, %48
  %55 = phi i1 [ false, %48 ], [ %53, %51 ]
  %56 = zext i1 %55 to i32
  %57 = call i32 @assert(i32 %56)
  %58 = load i32, i32* %9, align 4
  %59 = sub nsw i32 3, %58
  store i32 %59, i32* %21, align 4
  br label %60

60:                                               ; preds = %75, %54
  %61 = load i32, i32* %21, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %72

64:                                               ; preds = %60
  %65 = load i8*, i8** %6, align 8
  %66 = load i32, i32* %21, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 0
  br label %72

72:                                               ; preds = %64, %60
  %73 = phi i1 [ false, %60 ], [ %71, %64 ]
  br i1 %73, label %74, label %78

74:                                               ; preds = %72
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %21, align 4
  %77 = add nsw i32 %76, 2
  store i32 %77, i32* %21, align 4
  br label %60

78:                                               ; preds = %72
  %79 = load i32, i32* %21, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp slt i32 %79, %80
  %82 = zext i1 %81 to i32
  store i32 %82, i32* %20, align 4
  %83 = load i8*, i8** %6, align 8
  %84 = load i32, i32* %21, align 4
  %85 = xor i32 %84, 1
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %83, i64 %86
  store i8* %87, i8** %11, align 8
  %88 = load i32, i32* %9, align 4
  %89 = and i32 %88, 1
  %90 = load i8*, i8** %6, align 8
  %91 = sext i32 %89 to i64
  %92 = getelementptr inbounds i8, i8* %90, i64 %91
  store i8* %92, i8** %6, align 8
  br label %93

93:                                               ; preds = %78, %47
  br label %94

94:                                               ; preds = %105, %93
  %95 = load i8*, i8** %6, align 8
  %96 = load i8*, i8** %11, align 8
  %97 = icmp ult i8* %95, %96
  br i1 %97, label %98, label %103

98:                                               ; preds = %94
  %99 = load i8*, i8** %6, align 8
  %100 = load i8, i8* %99, align 1
  %101 = call i64 @sqlite3Isspace(i8 signext %100)
  %102 = icmp ne i64 %101, 0
  br label %103

103:                                              ; preds = %98, %94
  %104 = phi i1 [ false, %94 ], [ %102, %98 ]
  br i1 %104, label %105, label %110

105:                                              ; preds = %103
  %106 = load i32, i32* %10, align 4
  %107 = load i8*, i8** %6, align 8
  %108 = sext i32 %106 to i64
  %109 = getelementptr inbounds i8, i8* %107, i64 %108
  store i8* %109, i8** %6, align 8
  br label %94

110:                                              ; preds = %103
  %111 = load i8*, i8** %6, align 8
  %112 = load i8*, i8** %11, align 8
  %113 = icmp uge i8* %111, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %110
  store i32 0, i32* %5, align 4
  br label %475

115:                                              ; preds = %110
  %116 = load i8*, i8** %6, align 8
  %117 = load i8, i8* %116, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp eq i32 %118, 45
  br i1 %119, label %120, label %125

120:                                              ; preds = %115
  store i32 -1, i32* %12, align 4
  %121 = load i32, i32* %10, align 4
  %122 = load i8*, i8** %6, align 8
  %123 = sext i32 %121 to i64
  %124 = getelementptr inbounds i8, i8* %122, i64 %123
  store i8* %124, i8** %6, align 8
  br label %136

125:                                              ; preds = %115
  %126 = load i8*, i8** %6, align 8
  %127 = load i8, i8* %126, align 1
  %128 = sext i8 %127 to i32
  %129 = icmp eq i32 %128, 43
  br i1 %129, label %130, label %135

130:                                              ; preds = %125
  %131 = load i32, i32* %10, align 4
  %132 = load i8*, i8** %6, align 8
  %133 = sext i32 %131 to i64
  %134 = getelementptr inbounds i8, i8* %132, i64 %133
  store i8* %134, i8** %6, align 8
  br label %135

135:                                              ; preds = %130, %125
  br label %136

136:                                              ; preds = %135, %120
  br label %137

137:                                              ; preds = %154, %136
  %138 = load i8*, i8** %6, align 8
  %139 = load i8*, i8** %11, align 8
  %140 = icmp ult i8* %138, %139
  br i1 %140, label %141, label %152

141:                                              ; preds = %137
  %142 = load i8*, i8** %6, align 8
  %143 = load i8, i8* %142, align 1
  %144 = call i64 @sqlite3Isdigit(i8 signext %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %141
  %147 = load i32, i32* %13, align 4
  %148 = load i32, i32* @LARGEST_INT64, align 4
  %149 = sub nsw i32 %148, 9
  %150 = sdiv i32 %149, 10
  %151 = icmp slt i32 %147, %150
  br label %152

152:                                              ; preds = %146, %141, %137
  %153 = phi i1 [ false, %141 ], [ false, %137 ], [ %151, %146 ]
  br i1 %153, label %154, label %168

154:                                              ; preds = %152
  %155 = load i32, i32* %13, align 4
  %156 = mul nsw i32 %155, 10
  %157 = load i8*, i8** %6, align 8
  %158 = load i8, i8* %157, align 1
  %159 = sext i8 %158 to i32
  %160 = sub nsw i32 %159, 48
  %161 = add nsw i32 %156, %160
  store i32 %161, i32* %13, align 4
  %162 = load i32, i32* %10, align 4
  %163 = load i8*, i8** %6, align 8
  %164 = sext i32 %162 to i64
  %165 = getelementptr inbounds i8, i8* %163, i64 %164
  store i8* %165, i8** %6, align 8
  %166 = load i32, i32* %19, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %19, align 4
  br label %137

168:                                              ; preds = %152
  br label %169

169:                                              ; preds = %180, %168
  %170 = load i8*, i8** %6, align 8
  %171 = load i8*, i8** %11, align 8
  %172 = icmp ult i8* %170, %171
  br i1 %172, label %173, label %178

173:                                              ; preds = %169
  %174 = load i8*, i8** %6, align 8
  %175 = load i8, i8* %174, align 1
  %176 = call i64 @sqlite3Isdigit(i8 signext %175)
  %177 = icmp ne i64 %176, 0
  br label %178

178:                                              ; preds = %173, %169
  %179 = phi i1 [ false, %169 ], [ %177, %173 ]
  br i1 %179, label %180, label %189

180:                                              ; preds = %178
  %181 = load i32, i32* %10, align 4
  %182 = load i8*, i8** %6, align 8
  %183 = sext i32 %181 to i64
  %184 = getelementptr inbounds i8, i8* %182, i64 %183
  store i8* %184, i8** %6, align 8
  %185 = load i32, i32* %19, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %19, align 4
  %187 = load i32, i32* %14, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %14, align 4
  br label %169

189:                                              ; preds = %178
  %190 = load i8*, i8** %6, align 8
  %191 = load i8*, i8** %11, align 8
  %192 = icmp uge i8* %190, %191
  br i1 %192, label %193, label %194

193:                                              ; preds = %189
  br label %333

194:                                              ; preds = %189
  %195 = load i8*, i8** %6, align 8
  %196 = load i8, i8* %195, align 1
  %197 = sext i8 %196 to i32
  %198 = icmp eq i32 %197, 46
  br i1 %198, label %199, label %239

199:                                              ; preds = %194
  %200 = load i32, i32* %10, align 4
  %201 = load i8*, i8** %6, align 8
  %202 = sext i32 %200 to i64
  %203 = getelementptr inbounds i8, i8* %201, i64 %202
  store i8* %203, i8** %6, align 8
  br label %204

204:                                              ; preds = %231, %199
  %205 = load i8*, i8** %6, align 8
  %206 = load i8*, i8** %11, align 8
  %207 = icmp ult i8* %205, %206
  br i1 %207, label %208, label %213

208:                                              ; preds = %204
  %209 = load i8*, i8** %6, align 8
  %210 = load i8, i8* %209, align 1
  %211 = call i64 @sqlite3Isdigit(i8 signext %210)
  %212 = icmp ne i64 %211, 0
  br label %213

213:                                              ; preds = %208, %204
  %214 = phi i1 [ false, %204 ], [ %212, %208 ]
  br i1 %214, label %215, label %238

215:                                              ; preds = %213
  %216 = load i32, i32* %13, align 4
  %217 = load i32, i32* @LARGEST_INT64, align 4
  %218 = sub nsw i32 %217, 9
  %219 = sdiv i32 %218, 10
  %220 = icmp slt i32 %216, %219
  br i1 %220, label %221, label %231

221:                                              ; preds = %215
  %222 = load i32, i32* %13, align 4
  %223 = mul nsw i32 %222, 10
  %224 = load i8*, i8** %6, align 8
  %225 = load i8, i8* %224, align 1
  %226 = sext i8 %225 to i32
  %227 = sub nsw i32 %226, 48
  %228 = add nsw i32 %223, %227
  store i32 %228, i32* %13, align 4
  %229 = load i32, i32* %14, align 4
  %230 = add nsw i32 %229, -1
  store i32 %230, i32* %14, align 4
  br label %231

231:                                              ; preds = %221, %215
  %232 = load i32, i32* %10, align 4
  %233 = load i8*, i8** %6, align 8
  %234 = sext i32 %232 to i64
  %235 = getelementptr inbounds i8, i8* %233, i64 %234
  store i8* %235, i8** %6, align 8
  %236 = load i32, i32* %19, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %19, align 4
  br label %204

238:                                              ; preds = %213
  br label %239

239:                                              ; preds = %238, %194
  %240 = load i8*, i8** %6, align 8
  %241 = load i8*, i8** %11, align 8
  %242 = icmp uge i8* %240, %241
  br i1 %242, label %243, label %244

243:                                              ; preds = %239
  br label %333

244:                                              ; preds = %239
  %245 = load i8*, i8** %6, align 8
  %246 = load i8, i8* %245, align 1
  %247 = sext i8 %246 to i32
  %248 = icmp eq i32 %247, 101
  br i1 %248, label %254, label %249

249:                                              ; preds = %244
  %250 = load i8*, i8** %6, align 8
  %251 = load i8, i8* %250, align 1
  %252 = sext i8 %251 to i32
  %253 = icmp eq i32 %252, 69
  br i1 %253, label %254, label %315

254:                                              ; preds = %249, %244
  %255 = load i32, i32* %10, align 4
  %256 = load i8*, i8** %6, align 8
  %257 = sext i32 %255 to i64
  %258 = getelementptr inbounds i8, i8* %256, i64 %257
  store i8* %258, i8** %6, align 8
  store i32 0, i32* %17, align 4
  %259 = load i8*, i8** %6, align 8
  %260 = load i8*, i8** %11, align 8
  %261 = icmp uge i8* %259, %260
  br i1 %261, label %262, label %263

262:                                              ; preds = %254
  br label %333

263:                                              ; preds = %254
  %264 = load i8*, i8** %6, align 8
  %265 = load i8, i8* %264, align 1
  %266 = sext i8 %265 to i32
  %267 = icmp eq i32 %266, 45
  br i1 %267, label %268, label %273

268:                                              ; preds = %263
  store i32 -1, i32* %15, align 4
  %269 = load i32, i32* %10, align 4
  %270 = load i8*, i8** %6, align 8
  %271 = sext i32 %269 to i64
  %272 = getelementptr inbounds i8, i8* %270, i64 %271
  store i8* %272, i8** %6, align 8
  br label %284

273:                                              ; preds = %263
  %274 = load i8*, i8** %6, align 8
  %275 = load i8, i8* %274, align 1
  %276 = sext i8 %275 to i32
  %277 = icmp eq i32 %276, 43
  br i1 %277, label %278, label %283

278:                                              ; preds = %273
  %279 = load i32, i32* %10, align 4
  %280 = load i8*, i8** %6, align 8
  %281 = sext i32 %279 to i64
  %282 = getelementptr inbounds i8, i8* %280, i64 %281
  store i8* %282, i8** %6, align 8
  br label %283

283:                                              ; preds = %278, %273
  br label %284

284:                                              ; preds = %283, %268
  br label %285

285:                                              ; preds = %308, %284
  %286 = load i8*, i8** %6, align 8
  %287 = load i8*, i8** %11, align 8
  %288 = icmp ult i8* %286, %287
  br i1 %288, label %289, label %294

289:                                              ; preds = %285
  %290 = load i8*, i8** %6, align 8
  %291 = load i8, i8* %290, align 1
  %292 = call i64 @sqlite3Isdigit(i8 signext %291)
  %293 = icmp ne i64 %292, 0
  br label %294

294:                                              ; preds = %289, %285
  %295 = phi i1 [ false, %285 ], [ %293, %289 ]
  br i1 %295, label %296, label %314

296:                                              ; preds = %294
  %297 = load i32, i32* %16, align 4
  %298 = icmp slt i32 %297, 10000
  br i1 %298, label %299, label %307

299:                                              ; preds = %296
  %300 = load i32, i32* %16, align 4
  %301 = mul nsw i32 %300, 10
  %302 = load i8*, i8** %6, align 8
  %303 = load i8, i8* %302, align 1
  %304 = sext i8 %303 to i32
  %305 = sub nsw i32 %304, 48
  %306 = add nsw i32 %301, %305
  br label %308

307:                                              ; preds = %296
  br label %308

308:                                              ; preds = %307, %299
  %309 = phi i32 [ %306, %299 ], [ 10000, %307 ]
  store i32 %309, i32* %16, align 4
  %310 = load i32, i32* %10, align 4
  %311 = load i8*, i8** %6, align 8
  %312 = sext i32 %310 to i64
  %313 = getelementptr inbounds i8, i8* %311, i64 %312
  store i8* %313, i8** %6, align 8
  store i32 1, i32* %17, align 4
  br label %285

314:                                              ; preds = %294
  br label %315

315:                                              ; preds = %314, %249
  br label %316

316:                                              ; preds = %327, %315
  %317 = load i8*, i8** %6, align 8
  %318 = load i8*, i8** %11, align 8
  %319 = icmp ult i8* %317, %318
  br i1 %319, label %320, label %325

320:                                              ; preds = %316
  %321 = load i8*, i8** %6, align 8
  %322 = load i8, i8* %321, align 1
  %323 = call i64 @sqlite3Isspace(i8 signext %322)
  %324 = icmp ne i64 %323, 0
  br label %325

325:                                              ; preds = %320, %316
  %326 = phi i1 [ false, %316 ], [ %324, %320 ]
  br i1 %326, label %327, label %332

327:                                              ; preds = %325
  %328 = load i32, i32* %10, align 4
  %329 = load i8*, i8** %6, align 8
  %330 = sext i32 %328 to i64
  %331 = getelementptr inbounds i8, i8* %329, i64 %330
  store i8* %331, i8** %6, align 8
  br label %316

332:                                              ; preds = %325
  br label %333

333:                                              ; preds = %332, %262, %243, %193
  %334 = load i32, i32* %16, align 4
  %335 = load i32, i32* %15, align 4
  %336 = mul nsw i32 %334, %335
  %337 = load i32, i32* %14, align 4
  %338 = add nsw i32 %336, %337
  store i32 %338, i32* %16, align 4
  %339 = load i32, i32* %16, align 4
  %340 = icmp slt i32 %339, 0
  br i1 %340, label %341, label %344

341:                                              ; preds = %333
  store i32 -1, i32* %15, align 4
  %342 = load i32, i32* %16, align 4
  %343 = mul nsw i32 %342, -1
  store i32 %343, i32* %16, align 4
  br label %345

344:                                              ; preds = %333
  store i32 1, i32* %15, align 4
  br label %345

345:                                              ; preds = %344, %341
  %346 = load i32, i32* %13, align 4
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %348, label %353

348:                                              ; preds = %345
  %349 = load i32, i32* %12, align 4
  %350 = icmp slt i32 %349, 0
  %351 = zext i1 %350 to i64
  %352 = select i1 %350, double -0.000000e+00, double 0.000000e+00
  store double %352, double* %18, align 8
  br label %457

353:                                              ; preds = %345
  br label %354

354:                                              ; preds = %377, %353
  %355 = load i32, i32* %16, align 4
  %356 = icmp sgt i32 %355, 0
  br i1 %356, label %357, label %380

357:                                              ; preds = %354
  %358 = load i32, i32* %15, align 4
  %359 = icmp sgt i32 %358, 0
  br i1 %359, label %360, label %369

360:                                              ; preds = %357
  %361 = load i32, i32* %13, align 4
  %362 = load i32, i32* @LARGEST_INT64, align 4
  %363 = sdiv i32 %362, 10
  %364 = icmp sge i32 %361, %363
  br i1 %364, label %365, label %366

365:                                              ; preds = %360
  br label %380

366:                                              ; preds = %360
  %367 = load i32, i32* %13, align 4
  %368 = mul nsw i32 %367, 10
  store i32 %368, i32* %13, align 4
  br label %377

369:                                              ; preds = %357
  %370 = load i32, i32* %13, align 4
  %371 = srem i32 %370, 10
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %373, label %374

373:                                              ; preds = %369
  br label %380

374:                                              ; preds = %369
  %375 = load i32, i32* %13, align 4
  %376 = sdiv i32 %375, 10
  store i32 %376, i32* %13, align 4
  br label %377

377:                                              ; preds = %374, %366
  %378 = load i32, i32* %16, align 4
  %379 = add nsw i32 %378, -1
  store i32 %379, i32* %16, align 4
  br label %354

380:                                              ; preds = %373, %365, %354
  %381 = load i32, i32* %12, align 4
  %382 = icmp slt i32 %381, 0
  br i1 %382, label %383, label %386

383:                                              ; preds = %380
  %384 = load i32, i32* %13, align 4
  %385 = sub nsw i32 0, %384
  br label %388

386:                                              ; preds = %380
  %387 = load i32, i32* %13, align 4
  br label %388

388:                                              ; preds = %386, %383
  %389 = phi i32 [ %385, %383 ], [ %387, %386 ]
  store i32 %389, i32* %13, align 4
  %390 = load i32, i32* %16, align 4
  %391 = icmp eq i32 %390, 0
  br i1 %391, label %392, label %395

392:                                              ; preds = %388
  %393 = load i32, i32* %13, align 4
  %394 = sitofp i32 %393 to double
  store double %394, double* %18, align 8
  br label %456

395:                                              ; preds = %388
  %396 = load i32, i32* %16, align 4
  %397 = icmp sgt i32 %396, 307
  br i1 %397, label %398, label %439

398:                                              ; preds = %395
  %399 = load i32, i32* %16, align 4
  %400 = icmp slt i32 %399, 342
  br i1 %400, label %401, label %422

401:                                              ; preds = %398
  %402 = load i32, i32* %16, align 4
  %403 = sub nsw i32 %402, 308
  %404 = call i32 @sqlite3Pow10(i32 %403)
  store i32 %404, i32* %22, align 4
  %405 = load i32, i32* %15, align 4
  %406 = icmp slt i32 %405, 0
  br i1 %406, label %407, label %414

407:                                              ; preds = %401
  %408 = load i32, i32* %13, align 4
  %409 = load i32, i32* %22, align 4
  %410 = sdiv i32 %408, %409
  %411 = sitofp i32 %410 to double
  store double %411, double* %18, align 8
  %412 = load double, double* %18, align 8
  %413 = fdiv double %412, 1.000000e+308
  store double %413, double* %18, align 8
  br label %421

414:                                              ; preds = %401
  %415 = load i32, i32* %13, align 4
  %416 = load i32, i32* %22, align 4
  %417 = mul nsw i32 %415, %416
  %418 = sitofp i32 %417 to double
  store double %418, double* %18, align 8
  %419 = load double, double* %18, align 8
  %420 = fmul double %419, 1.000000e+308
  store double %420, double* %18, align 8
  br label %421

421:                                              ; preds = %414, %407
  br label %438

422:                                              ; preds = %398
  %423 = load i32, i32* %16, align 4
  %424 = icmp sge i32 %423, 342
  %425 = zext i1 %424 to i32
  %426 = call i32 @assert(i32 %425)
  %427 = load i32, i32* %15, align 4
  %428 = icmp slt i32 %427, 0
  br i1 %428, label %429, label %433

429:                                              ; preds = %422
  %430 = load i32, i32* %13, align 4
  %431 = sitofp i32 %430 to double
  %432 = fmul double 0.000000e+00, %431
  store double %432, double* %18, align 8
  br label %437

433:                                              ; preds = %422
  %434 = load i32, i32* %13, align 4
  %435 = sitofp i32 %434 to double
  %436 = fmul double 0x7FF0000000000000, %435
  store double %436, double* %18, align 8
  br label %437

437:                                              ; preds = %433, %429
  br label %438

438:                                              ; preds = %437, %421
  br label %455

439:                                              ; preds = %395
  %440 = load i32, i32* %16, align 4
  %441 = call i32 @sqlite3Pow10(i32 %440)
  store i32 %441, i32* %23, align 4
  %442 = load i32, i32* %15, align 4
  %443 = icmp slt i32 %442, 0
  br i1 %443, label %444, label %449

444:                                              ; preds = %439
  %445 = load i32, i32* %13, align 4
  %446 = load i32, i32* %23, align 4
  %447 = sdiv i32 %445, %446
  %448 = sitofp i32 %447 to double
  store double %448, double* %18, align 8
  br label %454

449:                                              ; preds = %439
  %450 = load i32, i32* %13, align 4
  %451 = load i32, i32* %23, align 4
  %452 = mul nsw i32 %450, %451
  %453 = sitofp i32 %452 to double
  store double %453, double* %18, align 8
  br label %454

454:                                              ; preds = %449, %444
  br label %455

455:                                              ; preds = %454, %438
  br label %456

456:                                              ; preds = %455, %392
  br label %457

457:                                              ; preds = %456, %348
  %458 = load double, double* %18, align 8
  %459 = load double*, double** %7, align 8
  store double %458, double* %459, align 8
  %460 = load i8*, i8** %6, align 8
  %461 = load i8*, i8** %11, align 8
  %462 = icmp eq i8* %460, %461
  br i1 %462, label %463, label %472

463:                                              ; preds = %457
  %464 = load i32, i32* %19, align 4
  %465 = icmp sgt i32 %464, 0
  br i1 %465, label %466, label %472

466:                                              ; preds = %463
  %467 = load i32, i32* %17, align 4
  %468 = icmp ne i32 %467, 0
  br i1 %468, label %469, label %472

469:                                              ; preds = %466
  %470 = load i32, i32* %20, align 4
  %471 = icmp eq i32 %470, 0
  br label %472

472:                                              ; preds = %469, %466, %463, %457
  %473 = phi i1 [ false, %466 ], [ false, %463 ], [ false, %457 ], [ %471, %469 ]
  %474 = zext i1 %473 to i32
  store i32 %474, i32* %5, align 4
  br label %475

475:                                              ; preds = %472, %114
  %476 = load i32, i32* %5, align 4
  ret i32 %476
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @sqlite3Isspace(i8 signext) #1

declare dso_local i64 @sqlite3Isdigit(i8 signext) #1

declare dso_local i32 @sqlite3Pow10(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
