; ModuleID = '/home/carl/AnghaBench/wcdb/android/sqlcipher/extr_sqlite3.c_freeSpace.c'
source_filename = "/home/carl/AnghaBench/wcdb/android/sqlcipher/extr_sqlite3.c_freeSpace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i32, i32, i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@CORRUPT_DB = common dso_local global i64 0, align 8
@BTS_FAST_SECURE = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32, i32)* @freeSpace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @freeSpace(%struct.TYPE_6__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %11, align 4
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %7, align 4
  %20 = add nsw i32 %18, %19
  store i32 %20, i32* %14, align 4
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %15, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = icmp ne %struct.TYPE_5__* %26, null
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @sqlite3PagerIswriteable(i32 %32)
  %34 = call i32 @assert(i32 %33)
  %35 = load i64, i64* @CORRUPT_DB, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %48, label %37

37:                                               ; preds = %3
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %41, 6
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %42, %45
  %47 = icmp sge i32 %38, %46
  br label %48

48:                                               ; preds = %37, %3
  %49 = phi i1 [ true, %3 ], [ %47, %37 ]
  %50 = zext i1 %49 to i32
  %51 = call i32 @assert(i32 %50)
  %52 = load i64, i64* @CORRUPT_DB, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %62, label %54

54:                                               ; preds = %48
  %55 = load i32, i32* %14, align 4
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 4
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp sle i32 %55, %60
  br label %62

62:                                               ; preds = %54, %48
  %63 = phi i1 [ true, %48 ], [ %61, %54 ]
  %64 = zext i1 %63 to i32
  %65 = call i32 @assert(i32 %64)
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 4
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @sqlite3_mutex_held(i32 %70)
  %72 = call i32 @assert(i32 %71)
  %73 = load i32, i32* %7, align 4
  %74 = icmp sge i32 %73, 4
  %75 = zext i1 %74 to i32
  %76 = call i32 @assert(i32 %75)
  %77 = load i32, i32* %6, align 4
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 4
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = sub nsw i32 %82, 4
  %84 = icmp sle i32 %77, %83
  %85 = zext i1 %84 to i32
  %86 = call i32 @assert(i32 %85)
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* %10, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %8, align 4
  %92 = load i8*, i8** %15, align 8
  %93 = load i32, i32* %8, align 4
  %94 = add nsw i32 %93, 1
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %92, i64 %95
  %97 = load i8, i8* %96, align 1
  %98 = zext i8 %97 to i32
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %109

100:                                              ; preds = %62
  %101 = load i8*, i8** %15, align 8
  %102 = load i32, i32* %8, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %101, i64 %103
  %105 = load i8, i8* %104, align 1
  %106 = zext i8 %105 to i32
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %100
  store i32 0, i32* %9, align 4
  br label %260

109:                                              ; preds = %100, %62
  br label %110

110:                                              ; preds = %130, %109
  %111 = load i8*, i8** %15, align 8
  %112 = load i32, i32* %8, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %111, i64 %113
  %115 = call i32 @get2byte(i8* %114)
  store i32 %115, i32* %9, align 4
  %116 = load i32, i32* %6, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %132

118:                                              ; preds = %110
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* %8, align 4
  %121 = add nsw i32 %120, 4
  %122 = icmp slt i32 %119, %121
  br i1 %122, label %123, label %130

123:                                              ; preds = %118
  %124 = load i32, i32* %9, align 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %123
  br label %132

127:                                              ; preds = %123
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %129 = call i32 @SQLITE_CORRUPT_PAGE(%struct.TYPE_6__* %128)
  store i32 %129, i32* %4, align 4
  br label %340

130:                                              ; preds = %118
  %131 = load i32, i32* %9, align 4
  store i32 %131, i32* %8, align 4
  br label %110

132:                                              ; preds = %126, %110
  %133 = load i32, i32* %9, align 4
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 4
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = sub nsw i32 %138, 4
  %140 = icmp sgt i32 %133, %139
  br i1 %140, label %141, label %144

141:                                              ; preds = %132
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %143 = call i32 @SQLITE_CORRUPT_PAGE(%struct.TYPE_6__* %142)
  store i32 %143, i32* %4, align 4
  br label %340

144:                                              ; preds = %132
  %145 = load i32, i32* %9, align 4
  %146 = load i32, i32* %8, align 4
  %147 = icmp sgt i32 %145, %146
  br i1 %147, label %151, label %148

148:                                              ; preds = %144
  %149 = load i32, i32* %9, align 4
  %150 = icmp eq i32 %149, 0
  br label %151

151:                                              ; preds = %148, %144
  %152 = phi i1 [ true, %144 ], [ %150, %148 ]
  %153 = zext i1 %152 to i32
  %154 = call i32 @assert(i32 %153)
  %155 = load i32, i32* %9, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %200

157:                                              ; preds = %151
  %158 = load i32, i32* %14, align 4
  %159 = add nsw i32 %158, 3
  %160 = load i32, i32* %9, align 4
  %161 = icmp sge i32 %159, %160
  br i1 %161, label %162, label %200

162:                                              ; preds = %157
  %163 = load i32, i32* %9, align 4
  %164 = load i32, i32* %14, align 4
  %165 = sub nsw i32 %163, %164
  store i32 %165, i32* %11, align 4
  %166 = load i32, i32* %14, align 4
  %167 = load i32, i32* %9, align 4
  %168 = icmp sgt i32 %166, %167
  br i1 %168, label %169, label %172

169:                                              ; preds = %162
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %171 = call i32 @SQLITE_CORRUPT_PAGE(%struct.TYPE_6__* %170)
  store i32 %171, i32* %4, align 4
  br label %340

172:                                              ; preds = %162
  %173 = load i32, i32* %9, align 4
  %174 = load i8*, i8** %15, align 8
  %175 = load i32, i32* %9, align 4
  %176 = add nsw i32 %175, 2
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i8, i8* %174, i64 %177
  %179 = call i32 @get2byte(i8* %178)
  %180 = add nsw i32 %173, %179
  store i32 %180, i32* %14, align 4
  %181 = load i32, i32* %14, align 4
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 4
  %184 = load %struct.TYPE_5__*, %struct.TYPE_5__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = icmp sgt i32 %181, %186
  br i1 %187, label %188, label %191

188:                                              ; preds = %172
  %189 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %190 = call i32 @SQLITE_CORRUPT_PAGE(%struct.TYPE_6__* %189)
  store i32 %190, i32* %4, align 4
  br label %340

191:                                              ; preds = %172
  %192 = load i32, i32* %14, align 4
  %193 = load i32, i32* %6, align 4
  %194 = sub nsw i32 %192, %193
  store i32 %194, i32* %7, align 4
  %195 = load i8*, i8** %15, align 8
  %196 = load i32, i32* %9, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i8, i8* %195, i64 %197
  %199 = call i32 @get2byte(i8* %198)
  store i32 %199, i32* %9, align 4
  br label %200

200:                                              ; preds = %191, %157, %151
  %201 = load i32, i32* %8, align 4
  %202 = load i32, i32* %10, align 4
  %203 = add nsw i32 %202, 1
  %204 = icmp sgt i32 %201, %203
  br i1 %204, label %205, label %236

205:                                              ; preds = %200
  %206 = load i32, i32* %8, align 4
  %207 = load i8*, i8** %15, align 8
  %208 = load i32, i32* %8, align 4
  %209 = add nsw i32 %208, 2
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i8, i8* %207, i64 %210
  %212 = call i32 @get2byte(i8* %211)
  %213 = add nsw i32 %206, %212
  store i32 %213, i32* %16, align 4
  %214 = load i32, i32* %16, align 4
  %215 = add nsw i32 %214, 3
  %216 = load i32, i32* %6, align 4
  %217 = icmp sge i32 %215, %216
  br i1 %217, label %218, label %235

218:                                              ; preds = %205
  %219 = load i32, i32* %16, align 4
  %220 = load i32, i32* %6, align 4
  %221 = icmp sgt i32 %219, %220
  br i1 %221, label %222, label %225

222:                                              ; preds = %218
  %223 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %224 = call i32 @SQLITE_CORRUPT_PAGE(%struct.TYPE_6__* %223)
  store i32 %224, i32* %4, align 4
  br label %340

225:                                              ; preds = %218
  %226 = load i32, i32* %6, align 4
  %227 = load i32, i32* %16, align 4
  %228 = sub nsw i32 %226, %227
  %229 = load i32, i32* %11, align 4
  %230 = add nsw i32 %229, %228
  store i32 %230, i32* %11, align 4
  %231 = load i32, i32* %14, align 4
  %232 = load i32, i32* %8, align 4
  %233 = sub nsw i32 %231, %232
  store i32 %233, i32* %7, align 4
  %234 = load i32, i32* %8, align 4
  store i32 %234, i32* %6, align 4
  br label %235

235:                                              ; preds = %225, %205
  br label %236

236:                                              ; preds = %235, %200
  %237 = load i32, i32* %11, align 4
  %238 = load i8*, i8** %15, align 8
  %239 = load i32, i32* %10, align 4
  %240 = add nsw i32 %239, 7
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i8, i8* %238, i64 %241
  %243 = load i8, i8* %242, align 1
  %244 = zext i8 %243 to i32
  %245 = icmp sgt i32 %237, %244
  br i1 %245, label %246, label %249

246:                                              ; preds = %236
  %247 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %248 = call i32 @SQLITE_CORRUPT_PAGE(%struct.TYPE_6__* %247)
  store i32 %248, i32* %4, align 4
  br label %340

249:                                              ; preds = %236
  %250 = load i32, i32* %11, align 4
  %251 = load i8*, i8** %15, align 8
  %252 = load i32, i32* %10, align 4
  %253 = add nsw i32 %252, 7
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i8, i8* %251, i64 %254
  %256 = load i8, i8* %255, align 1
  %257 = zext i8 %256 to i32
  %258 = sub nsw i32 %257, %250
  %259 = trunc i32 %258 to i8
  store i8 %259, i8* %255, align 1
  br label %260

260:                                              ; preds = %249, %108
  %261 = load i8*, i8** %15, align 8
  %262 = load i32, i32* %10, align 4
  %263 = add nsw i32 %262, 5
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i8, i8* %261, i64 %264
  %266 = call i32 @get2byte(i8* %265)
  store i32 %266, i32* %13, align 4
  %267 = load i32, i32* %6, align 4
  %268 = load i32, i32* %13, align 4
  %269 = icmp sle i32 %267, %268
  br i1 %269, label %270, label %297

270:                                              ; preds = %260
  %271 = load i32, i32* %6, align 4
  %272 = load i32, i32* %13, align 4
  %273 = icmp slt i32 %271, %272
  br i1 %273, label %279, label %274

274:                                              ; preds = %270
  %275 = load i32, i32* %8, align 4
  %276 = load i32, i32* %10, align 4
  %277 = add nsw i32 %276, 1
  %278 = icmp ne i32 %275, %277
  br i1 %278, label %279, label %282

279:                                              ; preds = %274, %270
  %280 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %281 = call i32 @SQLITE_CORRUPT_PAGE(%struct.TYPE_6__* %280)
  store i32 %281, i32* %4, align 4
  br label %340

282:                                              ; preds = %274
  %283 = load i8*, i8** %15, align 8
  %284 = load i32, i32* %10, align 4
  %285 = add nsw i32 %284, 1
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i8, i8* %283, i64 %286
  %288 = load i32, i32* %9, align 4
  %289 = call i32 @put2byte(i8* %287, i32 %288)
  %290 = load i8*, i8** %15, align 8
  %291 = load i32, i32* %10, align 4
  %292 = add nsw i32 %291, 5
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i8, i8* %290, i64 %293
  %295 = load i32, i32* %14, align 4
  %296 = call i32 @put2byte(i8* %294, i32 %295)
  br label %304

297:                                              ; preds = %260
  %298 = load i8*, i8** %15, align 8
  %299 = load i32, i32* %8, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i8, i8* %298, i64 %300
  %302 = load i32, i32* %6, align 4
  %303 = call i32 @put2byte(i8* %301, i32 %302)
  br label %304

304:                                              ; preds = %297, %282
  %305 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %306 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %305, i32 0, i32 4
  %307 = load %struct.TYPE_5__*, %struct.TYPE_5__** %306, align 8
  %308 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %307, i32 0, i32 1
  %309 = load i32, i32* %308, align 4
  %310 = load i32, i32* @BTS_FAST_SECURE, align 4
  %311 = and i32 %309, %310
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %320

313:                                              ; preds = %304
  %314 = load i8*, i8** %15, align 8
  %315 = load i32, i32* %6, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds i8, i8* %314, i64 %316
  %318 = load i32, i32* %7, align 4
  %319 = call i32 @memset(i8* %317, i32 0, i32 %318)
  br label %320

320:                                              ; preds = %313, %304
  %321 = load i8*, i8** %15, align 8
  %322 = load i32, i32* %6, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds i8, i8* %321, i64 %323
  %325 = load i32, i32* %9, align 4
  %326 = call i32 @put2byte(i8* %324, i32 %325)
  %327 = load i8*, i8** %15, align 8
  %328 = load i32, i32* %6, align 4
  %329 = add nsw i32 %328, 2
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds i8, i8* %327, i64 %330
  %332 = load i32, i32* %7, align 4
  %333 = call i32 @put2byte(i8* %331, i32 %332)
  %334 = load i32, i32* %12, align 4
  %335 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %336 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %335, i32 0, i32 3
  %337 = load i32, i32* %336, align 8
  %338 = add nsw i32 %337, %334
  store i32 %338, i32* %336, align 8
  %339 = load i32, i32* @SQLITE_OK, align 4
  store i32 %339, i32* %4, align 4
  br label %340

340:                                              ; preds = %320, %279, %246, %222, %188, %169, %141, %127
  %341 = load i32, i32* %4, align 4
  ret i32 %341
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3PagerIswriteable(i32) #1

declare dso_local i32 @sqlite3_mutex_held(i32) #1

declare dso_local i32 @get2byte(i8*) #1

declare dso_local i32 @SQLITE_CORRUPT_PAGE(%struct.TYPE_6__*) #1

declare dso_local i32 @put2byte(i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
