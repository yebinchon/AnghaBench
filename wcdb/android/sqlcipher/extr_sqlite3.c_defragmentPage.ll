; ModuleID = '/home/carl/AnghaBench/wcdb/android/sqlcipher/extr_sqlite3.c_defragmentPage.c'
source_filename = "/home/carl/AnghaBench/wcdb/android/sqlcipher/extr_sqlite3.c_defragmentPage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i8*, i32, i32, i32, i32 (%struct.TYPE_7__*, i8*)*, i8, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32 }

@SQLITE_MAX_PAGE_SIZE = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32)* @defragmentPage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @defragmentPage(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i8*, align 8
  %27 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 7
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @sqlite3PagerIswriteable(i32 %30)
  %32 = call i32 @assert(i32 %31)
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = icmp ne %struct.TYPE_6__* %35, null
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @SQLITE_MAX_PAGE_SIZE, align 4
  %45 = icmp sle i32 %43, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @assert(i32 %46)
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %50, 0
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @sqlite3_mutex_held(i32 %58)
  %60 = call i32 @assert(i32 %59)
  store i8* null, i8** %15, align 8
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  store i8* %63, i8** %14, align 8
  store i8* %63, i8** %16, align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  store i32 %66, i32* %8, align 4
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %11, align 4
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  store i32 %72, i32* %13, align 4
  %73 = load i32, i32* %13, align 4
  %74 = load i8*, i8** %14, align 8
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %75, 3
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %74, i64 %77
  %79 = call i32 @get2byte(i8* %78)
  %80 = icmp eq i32 %73, %79
  %81 = zext i1 %80 to i32
  %82 = call i32 @assert(i32 %81)
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* %13, align 4
  %85 = mul nsw i32 2, %84
  %86 = add nsw i32 %83, %85
  store i32 %86, i32* %17, align 4
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 8
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %10, align 4
  %92 = load i8*, i8** %14, align 8
  %93 = load i32, i32* %8, align 4
  %94 = add nsw i32 %93, 7
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %92, i64 %95
  %97 = load i8, i8* %96, align 1
  %98 = zext i8 %97 to i32
  %99 = load i32, i32* %5, align 4
  %100 = icmp sle i32 %98, %99
  br i1 %100, label %101, label %289

101:                                              ; preds = %2
  %102 = load i8*, i8** %14, align 8
  %103 = load i32, i32* %8, align 4
  %104 = add nsw i32 %103, 1
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %102, i64 %105
  %107 = call i32 @get2byte(i8* %106)
  store i32 %107, i32* %19, align 4
  %108 = load i32, i32* %19, align 4
  %109 = load i32, i32* %10, align 4
  %110 = sub nsw i32 %109, 4
  %111 = icmp sle i32 %108, %110
  %112 = zext i1 %111 to i32
  %113 = call i32 @assert(i32 %112)
  %114 = load i32, i32* %19, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %288

116:                                              ; preds = %101
  %117 = load i8*, i8** %14, align 8
  %118 = load i32, i32* %19, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8, i8* %117, i64 %119
  %121 = call i32 @get2byte(i8* %120)
  store i32 %121, i32* %20, align 4
  %122 = load i32, i32* %20, align 4
  %123 = load i32, i32* %10, align 4
  %124 = sub nsw i32 %123, 4
  %125 = icmp sgt i32 %122, %124
  br i1 %125, label %126, label %129

126:                                              ; preds = %116
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %128 = call i32 @SQLITE_CORRUPT_PAGE(%struct.TYPE_7__* %127)
  store i32 %128, i32* %3, align 4
  br label %506

129:                                              ; preds = %116
  %130 = load i32, i32* %20, align 4
  %131 = icmp eq i32 0, %130
  br i1 %131, label %149, label %132

132:                                              ; preds = %129
  %133 = load i8*, i8** %14, align 8
  %134 = load i32, i32* %20, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8, i8* %133, i64 %135
  %137 = load i8, i8* %136, align 1
  %138 = zext i8 %137 to i32
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %287

140:                                              ; preds = %132
  %141 = load i8*, i8** %14, align 8
  %142 = load i32, i32* %20, align 4
  %143 = add nsw i32 %142, 1
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8, i8* %141, i64 %144
  %146 = load i8, i8* %145, align 1
  %147 = zext i8 %146 to i32
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %287

149:                                              ; preds = %140, %129
  %150 = load i8*, i8** %14, align 8
  %151 = load i32, i32* %11, align 4
  %152 = load i32, i32* %13, align 4
  %153 = mul nsw i32 %152, 2
  %154 = add nsw i32 %151, %153
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i8, i8* %150, i64 %155
  store i8* %156, i8** %21, align 8
  store i32 0, i32* %23, align 4
  %157 = load i8*, i8** %14, align 8
  %158 = load i32, i32* %19, align 4
  %159 = add nsw i32 %158, 2
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i8, i8* %157, i64 %160
  %162 = call i32 @get2byte(i8* %161)
  store i32 %162, i32* %24, align 4
  %163 = load i8*, i8** %14, align 8
  %164 = load i32, i32* %8, align 4
  %165 = add nsw i32 %164, 5
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i8, i8* %163, i64 %166
  %168 = call i32 @get2byte(i8* %167)
  store i32 %168, i32* %25, align 4
  %169 = load i32, i32* %25, align 4
  %170 = load i32, i32* %19, align 4
  %171 = icmp sge i32 %169, %170
  br i1 %171, label %172, label %175

172:                                              ; preds = %149
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %174 = call i32 @SQLITE_CORRUPT_PAGE(%struct.TYPE_7__* %173)
  store i32 %174, i32* %3, align 4
  br label %506

175:                                              ; preds = %149
  %176 = load i32, i32* %20, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %226

178:                                              ; preds = %175
  %179 = load i32, i32* %19, align 4
  %180 = load i32, i32* %24, align 4
  %181 = add nsw i32 %179, %180
  %182 = load i32, i32* %20, align 4
  %183 = icmp sgt i32 %181, %182
  br i1 %183, label %184, label %187

184:                                              ; preds = %178
  %185 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %186 = call i32 @SQLITE_CORRUPT_PAGE(%struct.TYPE_7__* %185)
  store i32 %186, i32* %3, align 4
  br label %506

187:                                              ; preds = %178
  %188 = load i8*, i8** %14, align 8
  %189 = load i32, i32* %20, align 4
  %190 = add nsw i32 %189, 2
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i8, i8* %188, i64 %191
  %193 = call i32 @get2byte(i8* %192)
  store i32 %193, i32* %23, align 4
  %194 = load i32, i32* %20, align 4
  %195 = load i32, i32* %23, align 4
  %196 = add nsw i32 %194, %195
  %197 = load i32, i32* %10, align 4
  %198 = icmp sgt i32 %196, %197
  br i1 %198, label %199, label %202

199:                                              ; preds = %187
  %200 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %201 = call i32 @SQLITE_CORRUPT_PAGE(%struct.TYPE_7__* %200)
  store i32 %201, i32* %3, align 4
  br label %506

202:                                              ; preds = %187
  %203 = load i8*, i8** %14, align 8
  %204 = load i32, i32* %19, align 4
  %205 = load i32, i32* %24, align 4
  %206 = add nsw i32 %204, %205
  %207 = load i32, i32* %23, align 4
  %208 = add nsw i32 %206, %207
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i8, i8* %203, i64 %209
  %211 = load i8*, i8** %14, align 8
  %212 = load i32, i32* %19, align 4
  %213 = load i32, i32* %24, align 4
  %214 = add nsw i32 %212, %213
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i8, i8* %211, i64 %215
  %217 = load i32, i32* %20, align 4
  %218 = load i32, i32* %19, align 4
  %219 = load i32, i32* %24, align 4
  %220 = add nsw i32 %218, %219
  %221 = sub nsw i32 %217, %220
  %222 = call i32 @memmove(i8* %210, i8* %216, i32 %221)
  %223 = load i32, i32* %23, align 4
  %224 = load i32, i32* %24, align 4
  %225 = add nsw i32 %224, %223
  store i32 %225, i32* %24, align 4
  br label %226

226:                                              ; preds = %202, %175
  %227 = load i32, i32* %25, align 4
  %228 = load i32, i32* %24, align 4
  %229 = add nsw i32 %227, %228
  store i32 %229, i32* %12, align 4
  %230 = load i32, i32* %12, align 4
  %231 = load i32, i32* %19, align 4
  %232 = load i32, i32* %25, align 4
  %233 = sub nsw i32 %231, %232
  %234 = add nsw i32 %230, %233
  %235 = load i32, i32* %10, align 4
  %236 = icmp sle i32 %234, %235
  %237 = zext i1 %236 to i32
  %238 = call i32 @assert(i32 %237)
  %239 = load i8*, i8** %14, align 8
  %240 = load i32, i32* %12, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i8, i8* %239, i64 %241
  %243 = load i8*, i8** %14, align 8
  %244 = load i32, i32* %25, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i8, i8* %243, i64 %245
  %247 = load i32, i32* %19, align 4
  %248 = load i32, i32* %25, align 4
  %249 = sub nsw i32 %247, %248
  %250 = call i32 @memmove(i8* %242, i8* %246, i32 %249)
  %251 = load i8*, i8** %14, align 8
  %252 = load i32, i32* %11, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i8, i8* %251, i64 %253
  store i8* %254, i8** %22, align 8
  br label %255

255:                                              ; preds = %283, %226
  %256 = load i8*, i8** %22, align 8
  %257 = load i8*, i8** %21, align 8
  %258 = icmp ult i8* %256, %257
  br i1 %258, label %259, label %286

259:                                              ; preds = %255
  %260 = load i8*, i8** %22, align 8
  %261 = call i32 @get2byte(i8* %260)
  store i32 %261, i32* %7, align 4
  %262 = load i32, i32* %7, align 4
  %263 = load i32, i32* %19, align 4
  %264 = icmp slt i32 %262, %263
  br i1 %264, label %265, label %271

265:                                              ; preds = %259
  %266 = load i8*, i8** %22, align 8
  %267 = load i32, i32* %7, align 4
  %268 = load i32, i32* %24, align 4
  %269 = add nsw i32 %267, %268
  %270 = call i32 @put2byte(i8* %266, i32 %269)
  br label %282

271:                                              ; preds = %259
  %272 = load i32, i32* %7, align 4
  %273 = load i32, i32* %20, align 4
  %274 = icmp slt i32 %272, %273
  br i1 %274, label %275, label %281

275:                                              ; preds = %271
  %276 = load i8*, i8** %22, align 8
  %277 = load i32, i32* %7, align 4
  %278 = load i32, i32* %23, align 4
  %279 = add nsw i32 %277, %278
  %280 = call i32 @put2byte(i8* %276, i32 %279)
  br label %281

281:                                              ; preds = %275, %271
  br label %282

282:                                              ; preds = %281, %265
  br label %283

283:                                              ; preds = %282
  %284 = load i8*, i8** %22, align 8
  %285 = getelementptr inbounds i8, i8* %284, i64 2
  store i8* %285, i8** %22, align 8
  br label %255

286:                                              ; preds = %255
  br label %449

287:                                              ; preds = %140, %132
  br label %288

288:                                              ; preds = %287, %101
  br label %289

289:                                              ; preds = %288, %2
  %290 = load i32, i32* %10, align 4
  store i32 %290, i32* %12, align 4
  %291 = load i32, i32* %10, align 4
  %292 = sub nsw i32 %291, 4
  store i32 %292, i32* %18, align 4
  store i32 0, i32* %6, align 4
  br label %293

293:                                              ; preds = %440, %289
  %294 = load i32, i32* %6, align 4
  %295 = load i32, i32* %13, align 4
  %296 = icmp slt i32 %294, %295
  br i1 %296, label %297, label %443

297:                                              ; preds = %293
  %298 = load i8*, i8** %14, align 8
  %299 = load i32, i32* %11, align 4
  %300 = load i32, i32* %6, align 4
  %301 = mul nsw i32 %300, 2
  %302 = add nsw i32 %299, %301
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds i8, i8* %298, i64 %303
  store i8* %304, i8** %26, align 8
  %305 = load i8*, i8** %26, align 8
  %306 = call i32 @get2byte(i8* %305)
  store i32 %306, i32* %7, align 4
  %307 = load i32, i32* %7, align 4
  %308 = load i32, i32* %17, align 4
  %309 = icmp eq i32 %307, %308
  %310 = zext i1 %309 to i32
  %311 = call i32 @testcase(i32 %310)
  %312 = load i32, i32* %7, align 4
  %313 = load i32, i32* %18, align 4
  %314 = icmp eq i32 %312, %313
  %315 = zext i1 %314 to i32
  %316 = call i32 @testcase(i32 %315)
  %317 = load i32, i32* %7, align 4
  %318 = load i32, i32* %17, align 4
  %319 = icmp slt i32 %317, %318
  br i1 %319, label %324, label %320

320:                                              ; preds = %297
  %321 = load i32, i32* %7, align 4
  %322 = load i32, i32* %18, align 4
  %323 = icmp sgt i32 %321, %322
  br i1 %323, label %324, label %327

324:                                              ; preds = %320, %297
  %325 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %326 = call i32 @SQLITE_CORRUPT_PAGE(%struct.TYPE_7__* %325)
  store i32 %326, i32* %3, align 4
  br label %506

327:                                              ; preds = %320
  %328 = load i32, i32* %7, align 4
  %329 = load i32, i32* %17, align 4
  %330 = icmp sge i32 %328, %329
  br i1 %330, label %331, label %335

331:                                              ; preds = %327
  %332 = load i32, i32* %7, align 4
  %333 = load i32, i32* %18, align 4
  %334 = icmp sle i32 %332, %333
  br label %335

335:                                              ; preds = %331, %327
  %336 = phi i1 [ false, %327 ], [ %334, %331 ]
  %337 = zext i1 %336 to i32
  %338 = call i32 @assert(i32 %337)
  %339 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %340 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %339, i32 0, i32 5
  %341 = load i32 (%struct.TYPE_7__*, i8*)*, i32 (%struct.TYPE_7__*, i8*)** %340, align 8
  %342 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %343 = load i8*, i8** %16, align 8
  %344 = load i32, i32* %7, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds i8, i8* %343, i64 %345
  %347 = call i32 %341(%struct.TYPE_7__* %342, i8* %346)
  store i32 %347, i32* %9, align 4
  %348 = load i32, i32* %9, align 4
  %349 = load i32, i32* %12, align 4
  %350 = sub nsw i32 %349, %348
  store i32 %350, i32* %12, align 4
  %351 = load i32, i32* %12, align 4
  %352 = load i32, i32* %17, align 4
  %353 = icmp slt i32 %351, %352
  br i1 %353, label %360, label %354

354:                                              ; preds = %335
  %355 = load i32, i32* %7, align 4
  %356 = load i32, i32* %9, align 4
  %357 = add nsw i32 %355, %356
  %358 = load i32, i32* %10, align 4
  %359 = icmp sgt i32 %357, %358
  br i1 %359, label %360, label %363

360:                                              ; preds = %354, %335
  %361 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %362 = call i32 @SQLITE_CORRUPT_PAGE(%struct.TYPE_7__* %361)
  store i32 %362, i32* %3, align 4
  br label %506

363:                                              ; preds = %354
  %364 = load i32, i32* %12, align 4
  %365 = load i32, i32* %9, align 4
  %366 = add nsw i32 %364, %365
  %367 = load i32, i32* %10, align 4
  %368 = icmp sle i32 %366, %367
  br i1 %368, label %369, label %373

369:                                              ; preds = %363
  %370 = load i32, i32* %12, align 4
  %371 = load i32, i32* %17, align 4
  %372 = icmp sge i32 %370, %371
  br label %373

373:                                              ; preds = %369, %363
  %374 = phi i1 [ false, %363 ], [ %372, %369 ]
  %375 = zext i1 %374 to i32
  %376 = call i32 @assert(i32 %375)
  %377 = load i32, i32* %12, align 4
  %378 = load i32, i32* %9, align 4
  %379 = add nsw i32 %377, %378
  %380 = load i32, i32* %10, align 4
  %381 = icmp eq i32 %379, %380
  %382 = zext i1 %381 to i32
  %383 = call i32 @testcase(i32 %382)
  %384 = load i32, i32* %7, align 4
  %385 = load i32, i32* %9, align 4
  %386 = add nsw i32 %384, %385
  %387 = load i32, i32* %10, align 4
  %388 = icmp eq i32 %386, %387
  %389 = zext i1 %388 to i32
  %390 = call i32 @testcase(i32 %389)
  %391 = load i8*, i8** %26, align 8
  %392 = load i32, i32* %12, align 4
  %393 = call i32 @put2byte(i8* %391, i32 %392)
  %394 = load i8*, i8** %15, align 8
  %395 = icmp eq i8* %394, null
  br i1 %395, label %396, label %429

396:                                              ; preds = %373
  %397 = load i32, i32* %12, align 4
  %398 = load i32, i32* %7, align 4
  %399 = icmp eq i32 %397, %398
  br i1 %399, label %400, label %401

400:                                              ; preds = %396
  br label %440

401:                                              ; preds = %396
  %402 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %403 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %402, i32 0, i32 8
  %404 = load %struct.TYPE_6__*, %struct.TYPE_6__** %403, align 8
  %405 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %404, i32 0, i32 1
  %406 = load i32, i32* %405, align 4
  %407 = call i8* @sqlite3PagerTempSpace(i32 %406)
  store i8* %407, i8** %15, align 8
  %408 = load i8*, i8** %14, align 8
  %409 = load i32, i32* %8, align 4
  %410 = add nsw i32 %409, 5
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds i8, i8* %408, i64 %411
  %413 = call i32 @get2byte(i8* %412)
  store i32 %413, i32* %27, align 4
  %414 = load i8*, i8** %15, align 8
  %415 = load i32, i32* %27, align 4
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds i8, i8* %414, i64 %416
  %418 = load i8*, i8** %14, align 8
  %419 = load i32, i32* %27, align 4
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds i8, i8* %418, i64 %420
  %422 = load i32, i32* %12, align 4
  %423 = load i32, i32* %9, align 4
  %424 = add nsw i32 %422, %423
  %425 = load i32, i32* %27, align 4
  %426 = sub nsw i32 %424, %425
  %427 = call i32 @memcpy(i8* %417, i8* %421, i32 %426)
  %428 = load i8*, i8** %15, align 8
  store i8* %428, i8** %16, align 8
  br label %429

429:                                              ; preds = %401, %373
  %430 = load i8*, i8** %14, align 8
  %431 = load i32, i32* %12, align 4
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds i8, i8* %430, i64 %432
  %434 = load i8*, i8** %16, align 8
  %435 = load i32, i32* %7, align 4
  %436 = sext i32 %435 to i64
  %437 = getelementptr inbounds i8, i8* %434, i64 %436
  %438 = load i32, i32* %9, align 4
  %439 = call i32 @memcpy(i8* %433, i8* %437, i32 %438)
  br label %440

440:                                              ; preds = %429, %400
  %441 = load i32, i32* %6, align 4
  %442 = add nsw i32 %441, 1
  store i32 %442, i32* %6, align 4
  br label %293

443:                                              ; preds = %293
  %444 = load i8*, i8** %14, align 8
  %445 = load i32, i32* %8, align 4
  %446 = add nsw i32 %445, 7
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds i8, i8* %444, i64 %447
  store i8 0, i8* %448, align 1
  br label %449

449:                                              ; preds = %443, %286
  %450 = load i8*, i8** %14, align 8
  %451 = load i32, i32* %8, align 4
  %452 = add nsw i32 %451, 7
  %453 = sext i32 %452 to i64
  %454 = getelementptr inbounds i8, i8* %450, i64 %453
  %455 = load i8, i8* %454, align 1
  %456 = zext i8 %455 to i32
  %457 = load i32, i32* %12, align 4
  %458 = add nsw i32 %456, %457
  %459 = load i32, i32* %17, align 4
  %460 = sub nsw i32 %458, %459
  %461 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %462 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %461, i32 0, i32 6
  %463 = load i8, i8* %462, align 8
  %464 = zext i8 %463 to i32
  %465 = icmp ne i32 %460, %464
  br i1 %465, label %466, label %469

466:                                              ; preds = %449
  %467 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %468 = call i32 @SQLITE_CORRUPT_PAGE(%struct.TYPE_7__* %467)
  store i32 %468, i32* %3, align 4
  br label %506

469:                                              ; preds = %449
  %470 = load i32, i32* %12, align 4
  %471 = load i32, i32* %17, align 4
  %472 = icmp sge i32 %470, %471
  %473 = zext i1 %472 to i32
  %474 = call i32 @assert(i32 %473)
  %475 = load i8*, i8** %14, align 8
  %476 = load i32, i32* %8, align 4
  %477 = add nsw i32 %476, 5
  %478 = sext i32 %477 to i64
  %479 = getelementptr inbounds i8, i8* %475, i64 %478
  %480 = load i32, i32* %12, align 4
  %481 = call i32 @put2byte(i8* %479, i32 %480)
  %482 = load i8*, i8** %14, align 8
  %483 = load i32, i32* %8, align 4
  %484 = add nsw i32 %483, 1
  %485 = sext i32 %484 to i64
  %486 = getelementptr inbounds i8, i8* %482, i64 %485
  store i8 0, i8* %486, align 1
  %487 = load i8*, i8** %14, align 8
  %488 = load i32, i32* %8, align 4
  %489 = add nsw i32 %488, 2
  %490 = sext i32 %489 to i64
  %491 = getelementptr inbounds i8, i8* %487, i64 %490
  store i8 0, i8* %491, align 1
  %492 = load i8*, i8** %14, align 8
  %493 = load i32, i32* %17, align 4
  %494 = sext i32 %493 to i64
  %495 = getelementptr inbounds i8, i8* %492, i64 %494
  %496 = load i32, i32* %12, align 4
  %497 = load i32, i32* %17, align 4
  %498 = sub nsw i32 %496, %497
  %499 = call i32 @memset(i8* %495, i32 0, i32 %498)
  %500 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %501 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %500, i32 0, i32 7
  %502 = load i32, i32* %501, align 4
  %503 = call i32 @sqlite3PagerIswriteable(i32 %502)
  %504 = call i32 @assert(i32 %503)
  %505 = load i32, i32* @SQLITE_OK, align 4
  store i32 %505, i32* %3, align 4
  br label %506

506:                                              ; preds = %469, %466, %360, %324, %199, %184, %172, %126
  %507 = load i32, i32* %3, align 4
  ret i32 %507
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3PagerIswriteable(i32) #1

declare dso_local i32 @sqlite3_mutex_held(i32) #1

declare dso_local i32 @get2byte(i8*) #1

declare dso_local i32 @SQLITE_CORRUPT_PAGE(%struct.TYPE_7__*) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @put2byte(i8*, i32) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local i8* @sqlite3PagerTempSpace(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
