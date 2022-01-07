; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_sorted.c_btreeCursorRestore.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_sorted.c_btreeCursorRestore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, i32, i8*, i32, %struct.TYPE_15__, %struct.TYPE_16__*, i32, i32, %struct.TYPE_13__* }
%struct.TYPE_15__ = type { i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i32* }
%struct.TYPE_13__ = type { i32, i64 }
%struct.TYPE_14__ = type { i64, i32 }

@LSM_OK = common dso_local global i32 0, align 4
@SEGMENT_BTREE_FLAG = common dso_local global i32 0, align 4
@LSM_SEPARATOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, i32 (i8*, i32, i8*, i32)*, %struct.TYPE_14__*)* @btreeCursorRestore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btreeCursorRestore(%struct.TYPE_17__* %0, i32 (i8*, i32, i8*, i32)* %1, %struct.TYPE_14__* %2) #0 {
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i32 (i8*, i32, i8*, i32)*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca i32**, align 8
  %14 = alloca %struct.TYPE_15__, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i8*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i64, align 8
  %33 = alloca i32, align 4
  %34 = alloca %struct.TYPE_16__*, align 8
  %35 = alloca i32*, align 8
  %36 = alloca i32, align 4
  %37 = alloca i64, align 8
  %38 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store i32 (i8*, i32, i8*, i32)* %1, i32 (i8*, i32, i8*, i32)** %5, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %6, align 8
  %39 = load i32, i32* @LSM_OK, align 4
  store i32 %39, i32* %7, align 4
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %381

44:                                               ; preds = %3
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 8
  %47 = load i32, i32* %46, align 4
  %48 = call i32* @lsmFsEnv(i32 %47)
  store i32* %48, i32** %8, align 8
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 9
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %50, align 8
  store %struct.TYPE_13__* %51, %struct.TYPE_13__** %12, align 8
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %10, align 8
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = and i32 %57, 255
  store i32 %58, i32* %11, align 4
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = ashr i32 %61, 8
  %63 = sub nsw i32 %62, 1
  store i32 %63, i32* %9, align 4
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 6
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %65, align 8
  %67 = icmp eq %struct.TYPE_16__* %66, null
  %68 = zext i1 %67 to i32
  %69 = call i32 @assert(i32 %68)
  %70 = load i32*, i32** %8, align 8
  %71 = load i32, i32* %11, align 4
  %72 = sext i32 %71 to i64
  %73 = mul i64 16, %72
  %74 = trunc i64 %73 to i32
  %75 = call i64 @lsmMallocZeroRc(i32* %70, i32 %74, i32* %7)
  %76 = inttoptr i64 %75 to %struct.TYPE_16__*
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 6
  store %struct.TYPE_16__* %76, %struct.TYPE_16__** %78, align 8
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* @LSM_OK, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %116

82:                                               ; preds = %44
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 6
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %84, align 8
  %86 = load i32, i32* %11, align 4
  %87 = sub nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 1
  store i32** %90, i32*** %13, align 8
  %91 = load i32, i32* %11, align 4
  %92 = sub nsw i32 %91, 1
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  %95 = load i32, i32* %11, align 4
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  %98 = load i32, i32* %9, align 4
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 6
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %100, align 8
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 0
  store i32 %98, i32* %107, align 8
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 8
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %112 = load i64, i64* %10, align 8
  %113 = trunc i64 %112 to i32
  %114 = load i32**, i32*** %13, align 8
  %115 = call i32 @lsmFsDbPageGet(i32 %110, %struct.TYPE_13__* %111, i32 %113, i32** %114)
  store i32 %115, i32* %7, align 4
  br label %116

116:                                              ; preds = %82, %44
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* @LSM_OK, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %285

120:                                              ; preds = %116
  %121 = load i32, i32* %11, align 4
  %122 = icmp sgt i32 %121, 1
  br i1 %122, label %123, label %285

123:                                              ; preds = %120
  %124 = bitcast %struct.TYPE_15__* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %124, i8 0, i64 12, i1 false)
  store i32 0, i32* %18, align 4
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = trunc i64 %127 to i32
  store i32 %128, i32* %19, align 4
  %129 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %129, i32 0, i32 6
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %130, align 8
  %132 = load i32, i32* %11, align 4
  %133 = sub nsw i32 %132, 1
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i32 0, i32 1
  %137 = load i32*, i32** %136, align 8
  store i32* %137, i32** %20, align 8
  %138 = load i32*, i32** %20, align 8
  %139 = call i64 @pageObjGetNRec(i32* %138)
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %123
  %142 = load i32, i32* %9, align 4
  %143 = icmp eq i32 %142, -1
  %144 = zext i1 %143 to i32
  %145 = call i32 @assert(i32 %144)
  store i32 1000, i32* %17, align 4
  store i8* null, i8** %15, align 8
  store i32 0, i32* %16, align 4
  br label %152

146:                                              ; preds = %123
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %148 = load i32*, i32** %20, align 8
  %149 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %149, i32 0, i32 5
  %151 = call i32 @pageGetBtreeKey(%struct.TYPE_13__* %147, i32* %148, i32 0, i64* %21, i32* %17, i8** %15, i32* %16, %struct.TYPE_15__* %150)
  store i32 %151, i32* %7, align 4
  br label %152

152:                                              ; preds = %146, %141
  br label %153

153:                                              ; preds = %281, %152
  %154 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i32 0, i32 8
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %158 = load i32, i32* %19, align 4
  %159 = call i32 @lsmFsDbPageGet(i32 %156, %struct.TYPE_13__* %157, i32 %158, i32** %22)
  store i32 %159, i32* %7, align 4
  %160 = load i32, i32* %7, align 4
  %161 = load i32, i32* @LSM_OK, align 4
  %162 = icmp eq i32 %160, %161
  br i1 %162, label %166, label %163

163:                                              ; preds = %153
  %164 = load i32*, i32** %22, align 8
  %165 = icmp eq i32* %164, null
  br label %166

166:                                              ; preds = %163, %153
  %167 = phi i1 [ true, %153 ], [ %165, %163 ]
  %168 = zext i1 %167 to i32
  %169 = call i32 @assert(i32 %168)
  %170 = load i32, i32* %7, align 4
  %171 = load i32, i32* @LSM_OK, align 4
  %172 = icmp eq i32 %170, %171
  br i1 %172, label %173, label %271

173:                                              ; preds = %166
  %174 = load i32*, i32** %22, align 8
  %175 = call i32* @fsPageData(i32* %174, i32* %24)
  store i32* %175, i32** %23, align 8
  %176 = load i32*, i32** %23, align 8
  %177 = load i32, i32* %24, align 4
  %178 = call i32 @pageGetFlags(i32* %176, i32 %177)
  %179 = load i32, i32* @SEGMENT_BTREE_FLAG, align 4
  %180 = and i32 %178, %179
  %181 = call i32 @assert(i32 %180)
  %182 = load i32*, i32** %23, align 8
  %183 = load i32, i32* %24, align 4
  %184 = call i64 @pageGetPtr(i32* %182, i32 %183)
  %185 = trunc i64 %184 to i32
  store i32 %185, i32* %19, align 4
  %186 = load i32*, i32** %23, align 8
  %187 = load i32, i32* %24, align 4
  %188 = call i32 @pageGetNRec(i32* %186, i32 %187)
  store i32 %188, i32* %27, align 4
  %189 = load i32, i32* %27, align 4
  %190 = sub nsw i32 %189, 1
  store i32 %190, i32* %26, align 4
  store i32 0, i32* %25, align 4
  br label %191

191:                                              ; preds = %232, %173
  %192 = load i32, i32* %26, align 4
  %193 = load i32, i32* %25, align 4
  %194 = icmp sge i32 %192, %193
  br i1 %194, label %195, label %233

195:                                              ; preds = %191
  %196 = load i32, i32* %25, align 4
  %197 = load i32, i32* %26, align 4
  %198 = add nsw i32 %196, %197
  %199 = sdiv i32 %198, 2
  store i32 %199, i32* %28, align 4
  %200 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %201 = load i32*, i32** %22, align 8
  %202 = load i32, i32* %28, align 4
  %203 = call i32 @pageGetBtreeKey(%struct.TYPE_13__* %200, i32* %201, i32 %202, i64* %32, i32* %31, i8** %29, i32* %30, %struct.TYPE_15__* %14)
  store i32 %203, i32* %7, align 4
  %204 = load i32, i32* %7, align 4
  %205 = load i32, i32* @LSM_OK, align 4
  %206 = icmp ne i32 %204, %205
  br i1 %206, label %207, label %208

207:                                              ; preds = %195
  br label %233

208:                                              ; preds = %195
  %209 = load i32 (i8*, i32, i8*, i32)*, i32 (i8*, i32, i8*, i32)** %5, align 8
  %210 = load i32, i32* %17, align 4
  %211 = load i8*, i8** %15, align 8
  %212 = load i32, i32* %16, align 4
  %213 = load i32, i32* %31, align 4
  %214 = load i8*, i8** %29, align 8
  %215 = load i32, i32* %30, align 4
  %216 = call i32 @sortedKeyCompare(i32 (i8*, i32, i8*, i32)* %209, i32 %210, i8* %211, i32 %212, i32 %213, i8* %214, i32 %215)
  store i32 %216, i32* %33, align 4
  %217 = load i32, i32* %33, align 4
  %218 = icmp ne i32 %217, 0
  %219 = zext i1 %218 to i32
  %220 = call i32 @assert(i32 %219)
  %221 = load i32, i32* %33, align 4
  %222 = icmp slt i32 %221, 0
  br i1 %222, label %223, label %229

223:                                              ; preds = %208
  %224 = load i64, i64* %32, align 8
  %225 = trunc i64 %224 to i32
  store i32 %225, i32* %19, align 4
  %226 = load i32, i32* %28, align 4
  store i32 %226, i32* %27, align 4
  %227 = load i32, i32* %28, align 4
  %228 = sub nsw i32 %227, 1
  store i32 %228, i32* %26, align 4
  br label %232

229:                                              ; preds = %208
  %230 = load i32, i32* %28, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %25, align 4
  br label %232

232:                                              ; preds = %229, %223
  br label %191

233:                                              ; preds = %207, %191
  %234 = load i32*, i32** %22, align 8
  %235 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %236 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %235, i32 0, i32 6
  %237 = load %struct.TYPE_16__*, %struct.TYPE_16__** %236, align 8
  %238 = load i32, i32* %18, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %237, i64 %239
  %241 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %240, i32 0, i32 1
  store i32* %234, i32** %241, align 8
  %242 = load i32, i32* %27, align 4
  %243 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %244 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %243, i32 0, i32 6
  %245 = load %struct.TYPE_16__*, %struct.TYPE_16__** %244, align 8
  %246 = load i32, i32* %18, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %245, i64 %247
  %249 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %248, i32 0, i32 0
  store i32 %242, i32* %249, align 8
  %250 = load i32, i32* %18, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %18, align 4
  %252 = load i32, i32* %18, align 4
  %253 = load i32, i32* %11, align 4
  %254 = sub nsw i32 %253, 1
  %255 = icmp ne i32 %252, %254
  br i1 %255, label %267, label %256

256:                                              ; preds = %233
  %257 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %258 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %257, i32 0, i32 8
  %259 = load i32, i32* %258, align 4
  %260 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %261 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = load i32, i32* %19, align 4
  %264 = call i64 @lsmFsRedirectPage(i32 %259, i32 %262, i32 %263)
  %265 = load i64, i64* %10, align 8
  %266 = icmp eq i64 %264, %265
  br label %267

267:                                              ; preds = %256, %233
  %268 = phi i1 [ true, %233 ], [ %266, %256 ]
  %269 = zext i1 %268 to i32
  %270 = call i32 @assert(i32 %269)
  br label %271

271:                                              ; preds = %267, %166
  br label %272

272:                                              ; preds = %271
  %273 = load i32, i32* %7, align 4
  %274 = load i32, i32* @LSM_OK, align 4
  %275 = icmp eq i32 %273, %274
  br i1 %275, label %276, label %281

276:                                              ; preds = %272
  %277 = load i32, i32* %18, align 4
  %278 = load i32, i32* %11, align 4
  %279 = sub nsw i32 %278, 1
  %280 = icmp slt i32 %277, %279
  br label %281

281:                                              ; preds = %276, %272
  %282 = phi i1 [ false, %272 ], [ %280, %276 ]
  br i1 %282, label %153, label %283

283:                                              ; preds = %281
  %284 = call i32 @sortedBlobFree(%struct.TYPE_15__* %14)
  br label %285

285:                                              ; preds = %283, %120, %116
  %286 = load i32, i32* %7, align 4
  %287 = load i32, i32* @LSM_OK, align 4
  %288 = icmp eq i32 %286, %287
  br i1 %288, label %289, label %380

289:                                              ; preds = %285
  %290 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %291 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %290, i32 0, i32 6
  %292 = load %struct.TYPE_16__*, %struct.TYPE_16__** %291, align 8
  %293 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %294 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 8
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %292, i64 %296
  store %struct.TYPE_16__* %297, %struct.TYPE_16__** %34, align 8
  %298 = load %struct.TYPE_16__*, %struct.TYPE_16__** %34, align 8
  %299 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %298, i32 0, i32 1
  %300 = load i32*, i32** %299, align 8
  %301 = call i32* @fsPageData(i32* %300, i32* %36)
  store i32* %301, i32** %35, align 8
  %302 = load i32*, i32** %35, align 8
  %303 = load i32, i32* %36, align 4
  %304 = load %struct.TYPE_16__*, %struct.TYPE_16__** %34, align 8
  %305 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 8
  %307 = add nsw i32 %306, 1
  %308 = sext i32 %307 to i64
  %309 = call i32 @btreeCursorPtr(i32* %302, i32 %303, i64 %308)
  %310 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %311 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %310, i32 0, i32 7
  store i32 %309, i32* %311, align 8
  %312 = load %struct.TYPE_16__*, %struct.TYPE_16__** %34, align 8
  %313 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 8
  %315 = icmp slt i32 %314, 0
  br i1 %315, label %316, label %376

316:                                              ; preds = %289
  %317 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %318 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 8
  %320 = sub nsw i32 %319, 1
  store i32 %320, i32* %38, align 4
  br label %321

321:                                              ; preds = %336, %316
  %322 = load i32, i32* %38, align 4
  %323 = icmp sge i32 %322, 0
  br i1 %323, label %324, label %339

324:                                              ; preds = %321
  %325 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %326 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %325, i32 0, i32 6
  %327 = load %struct.TYPE_16__*, %struct.TYPE_16__** %326, align 8
  %328 = load i32, i32* %38, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %327, i64 %329
  %331 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 8
  %333 = icmp sgt i32 %332, 0
  br i1 %333, label %334, label %335

334:                                              ; preds = %324
  br label %339

335:                                              ; preds = %324
  br label %336

336:                                              ; preds = %335
  %337 = load i32, i32* %38, align 4
  %338 = add nsw i32 %337, -1
  store i32 %338, i32* %38, align 4
  br label %321

339:                                              ; preds = %334, %321
  %340 = load i32, i32* %38, align 4
  %341 = icmp sge i32 %340, 0
  %342 = zext i1 %341 to i32
  %343 = call i32 @assert(i32 %342)
  %344 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %345 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %346 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %345, i32 0, i32 6
  %347 = load %struct.TYPE_16__*, %struct.TYPE_16__** %346, align 8
  %348 = load i32, i32* %38, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %347, i64 %349
  %351 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %350, i32 0, i32 1
  %352 = load i32*, i32** %351, align 8
  %353 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %354 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %353, i32 0, i32 6
  %355 = load %struct.TYPE_16__*, %struct.TYPE_16__** %354, align 8
  %356 = load i32, i32* %38, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %355, i64 %357
  %359 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %358, i32 0, i32 0
  %360 = load i32, i32* %359, align 8
  %361 = sub nsw i32 %360, 1
  %362 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %363 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %362, i32 0, i32 2
  %364 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %365 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %364, i32 0, i32 3
  %366 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %367 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %366, i32 0, i32 4
  %368 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %369 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %368, i32 0, i32 5
  %370 = call i32 @pageGetBtreeKey(%struct.TYPE_13__* %344, i32* %352, i32 %361, i64* %37, i32* %363, i8** %365, i32* %367, %struct.TYPE_15__* %369)
  store i32 %370, i32* %7, align 4
  %371 = load i32, i32* @LSM_SEPARATOR, align 4
  %372 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %373 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %372, i32 0, i32 2
  %374 = load i32, i32* %373, align 8
  %375 = or i32 %374, %371
  store i32 %375, i32* %373, align 8
  br label %379

376:                                              ; preds = %289
  %377 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %378 = call i32 @btreeCursorLoadKey(%struct.TYPE_17__* %377)
  store i32 %378, i32* %7, align 4
  br label %379

379:                                              ; preds = %376, %339
  br label %380

380:                                              ; preds = %379, %285
  br label %381

381:                                              ; preds = %380, %3
  %382 = load i32, i32* %7, align 4
  ret i32 %382
}

declare dso_local i32* @lsmFsEnv(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @lsmMallocZeroRc(i32*, i32, i32*) #1

declare dso_local i32 @lsmFsDbPageGet(i32, %struct.TYPE_13__*, i32, i32**) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @pageObjGetNRec(i32*) #1

declare dso_local i32 @pageGetBtreeKey(%struct.TYPE_13__*, i32*, i32, i64*, i32*, i8**, i32*, %struct.TYPE_15__*) #1

declare dso_local i32* @fsPageData(i32*, i32*) #1

declare dso_local i32 @pageGetFlags(i32*, i32) #1

declare dso_local i64 @pageGetPtr(i32*, i32) #1

declare dso_local i32 @pageGetNRec(i32*, i32) #1

declare dso_local i32 @sortedKeyCompare(i32 (i8*, i32, i8*, i32)*, i32, i8*, i32, i32, i8*, i32) #1

declare dso_local i64 @lsmFsRedirectPage(i32, i32, i32) #1

declare dso_local i32 @sortedBlobFree(%struct.TYPE_15__*) #1

declare dso_local i32 @btreeCursorPtr(i32*, i32, i64) #1

declare dso_local i32 @btreeCursorLoadKey(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
