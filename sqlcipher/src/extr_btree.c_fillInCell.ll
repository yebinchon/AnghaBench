; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_btree.c_fillInCell.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_btree.c_fillInCell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i8*, i32, i32, i32, i32, i32, i32 (%struct.TYPE_15__*, i8*, %struct.TYPE_16__*)*, %struct.TYPE_18__*, i64 }
%struct.TYPE_16__ = type { i8*, i32, i32, i32 }
%struct.TYPE_18__ = type { i64, i32, i64, i32 }
%struct.TYPE_17__ = type { i32, i32, i32, i32*, i32* }

@SQLITE_OK = common dso_local global i32 0, align 4
@PTRMAP_OVERFLOW2 = common dso_local global i32 0, align 4
@PTRMAP_OVERFLOW1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i8*, %struct.TYPE_17__*, i32*)* @fillInCell to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fillInCell(%struct.TYPE_15__* %0, i8* %1, %struct.TYPE_17__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_15__*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca %struct.TYPE_18__*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_15__*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %8, align 8
  store i32* %3, i32** %9, align 8
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 7
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @sqlite3_mutex_held(i32 %30)
  %32 = call i32 @assert(i32 %31)
  %33 = load i8*, i8** %7, align 8
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = icmp ult i8* %33, %36
  br i1 %37, label %56, label %38

38:                                               ; preds = %4
  %39 = load i8*, i8** %7, align 8
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 7
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds i8, i8* %42, i64 %47
  %49 = icmp uge i8* %39, %48
  br i1 %49, label %56, label %50

50:                                               ; preds = %38
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 8
  %54 = call i64 @sqlite3PagerIswriteable(i32 %53)
  %55 = icmp ne i64 %54, 0
  br label %56

56:                                               ; preds = %50, %38, %4
  %57 = phi i1 [ true, %38 ], [ true, %4 ], [ %55, %50 ]
  %58 = zext i1 %57 to i32
  %59 = call i32 @assert(i32 %58)
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  store i32 %62, i32* %22, align 4
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 8
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %107

67:                                               ; preds = %56
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %70, %73
  store i32 %74, i32* %10, align 4
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 4
  %77 = load i32*, i32** %76, align 8
  store i32* %77, i32** %11, align 8
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  store i32 %80, i32* %12, align 4
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @assert(i32 %83)
  %85 = load i8*, i8** %7, align 8
  %86 = load i32, i32* %22, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %85, i64 %87
  %89 = load i32, i32* %10, align 4
  %90 = call i64 @putVarint32(i8* %88, i32 %89)
  %91 = load i32, i32* %22, align 4
  %92 = sext i32 %91 to i64
  %93 = add nsw i64 %92, %90
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %22, align 4
  %95 = load i8*, i8** %7, align 8
  %96 = load i32, i32* %22, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %95, i64 %97
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = call i64 @putVarint(i8* %98, i32 %101)
  %103 = load i32, i32* %22, align 4
  %104 = sext i32 %103 to i64
  %105 = add nsw i64 %104, %102
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %22, align 4
  br label %137

107:                                              ; preds = %56
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = icmp sle i32 %110, 2147483647
  br i1 %111, label %112, label %117

112:                                              ; preds = %107
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 3
  %115 = load i32*, i32** %114, align 8
  %116 = icmp ne i32* %115, null
  br label %117

117:                                              ; preds = %112, %107
  %118 = phi i1 [ false, %107 ], [ %116, %112 ]
  %119 = zext i1 %118 to i32
  %120 = call i32 @assert(i32 %119)
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  store i32 %123, i32* %10, align 4
  store i32 %123, i32* %12, align 4
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i32 0, i32 3
  %126 = load i32*, i32** %125, align 8
  store i32* %126, i32** %11, align 8
  %127 = load i8*, i8** %7, align 8
  %128 = load i32, i32* %22, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8, i8* %127, i64 %129
  %131 = load i32, i32* %10, align 4
  %132 = call i64 @putVarint32(i8* %130, i32 %131)
  %133 = load i32, i32* %22, align 4
  %134 = sext i32 %133 to i64
  %135 = add nsw i64 %134, %132
  %136 = trunc i64 %135 to i32
  store i32 %136, i32* %22, align 4
  br label %137

137:                                              ; preds = %117, %67
  %138 = load i8*, i8** %7, align 8
  %139 = load i32, i32* %22, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8, i8* %138, i64 %140
  store i8* %141, i8** %19, align 8
  %142 = load i32, i32* %10, align 4
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 8
  %146 = icmp sle i32 %142, %145
  br i1 %146, label %147, label %188

147:                                              ; preds = %137
  %148 = load i32, i32* %22, align 4
  %149 = load i32, i32* %10, align 4
  %150 = add nsw i32 %148, %149
  store i32 %150, i32* %13, align 4
  %151 = load i32, i32* %13, align 4
  %152 = icmp eq i32 %151, 3
  %153 = zext i1 %152 to i32
  %154 = call i32 @testcase(i32 %153)
  %155 = load i32, i32* %13, align 4
  %156 = icmp eq i32 %155, 4
  %157 = zext i1 %156 to i32
  %158 = call i32 @testcase(i32 %157)
  %159 = load i32, i32* %13, align 4
  %160 = icmp slt i32 %159, 4
  br i1 %160, label %161, label %162

161:                                              ; preds = %147
  store i32 4, i32* %13, align 4
  br label %162

162:                                              ; preds = %161, %147
  %163 = load i32, i32* %13, align 4
  %164 = load i32*, i32** %9, align 8
  store i32 %163, i32* %164, align 4
  %165 = load i32, i32* %12, align 4
  %166 = load i32, i32* %10, align 4
  %167 = icmp sle i32 %165, %166
  %168 = zext i1 %167 to i32
  %169 = call i32 @assert(i32 %168)
  %170 = load i32, i32* %12, align 4
  %171 = load i32, i32* %10, align 4
  %172 = icmp slt i32 %170, %171
  %173 = zext i1 %172 to i32
  %174 = call i32 @testcase(i32 %173)
  %175 = load i8*, i8** %19, align 8
  %176 = load i32*, i32** %11, align 8
  %177 = load i32, i32* %12, align 4
  %178 = call i32 @memcpy(i8* %175, i32* %176, i32 %177)
  %179 = load i8*, i8** %19, align 8
  %180 = load i32, i32* %12, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i8, i8* %179, i64 %181
  %183 = load i32, i32* %10, align 4
  %184 = load i32, i32* %12, align 4
  %185 = sub nsw i32 %183, %184
  %186 = call i32 @memset(i8* %182, i32 0, i32 %185)
  %187 = load i32, i32* @SQLITE_OK, align 4
  store i32 %187, i32* %5, align 4
  br label %457

188:                                              ; preds = %137
  %189 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %190 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %189, i32 0, i32 4
  %191 = load i32, i32* %190, align 4
  store i32 %191, i32* %15, align 4
  %192 = load i32, i32* %15, align 4
  %193 = load i32, i32* %10, align 4
  %194 = load i32, i32* %15, align 4
  %195 = sub nsw i32 %193, %194
  %196 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %196, i32 0, i32 7
  %198 = load %struct.TYPE_18__*, %struct.TYPE_18__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 8
  %201 = sub nsw i32 %200, 4
  %202 = srem i32 %195, %201
  %203 = add nsw i32 %192, %202
  store i32 %203, i32* %13, align 4
  %204 = load i32, i32* %13, align 4
  %205 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %206 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %205, i32 0, i32 3
  %207 = load i32, i32* %206, align 8
  %208 = icmp eq i32 %204, %207
  %209 = zext i1 %208 to i32
  %210 = call i32 @testcase(i32 %209)
  %211 = load i32, i32* %13, align 4
  %212 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %213 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %212, i32 0, i32 3
  %214 = load i32, i32* %213, align 8
  %215 = add nsw i32 %214, 1
  %216 = icmp eq i32 %211, %215
  %217 = zext i1 %216 to i32
  %218 = call i32 @testcase(i32 %217)
  %219 = load i32, i32* %13, align 4
  %220 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %221 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %220, i32 0, i32 3
  %222 = load i32, i32* %221, align 8
  %223 = icmp sgt i32 %219, %222
  br i1 %223, label %224, label %226

224:                                              ; preds = %188
  %225 = load i32, i32* %15, align 4
  store i32 %225, i32* %13, align 4
  br label %226

226:                                              ; preds = %224, %188
  %227 = load i32, i32* %13, align 4
  store i32 %227, i32* %16, align 4
  %228 = load i32, i32* %13, align 4
  %229 = load i32, i32* %22, align 4
  %230 = add nsw i32 %228, %229
  %231 = add nsw i32 %230, 4
  %232 = load i32*, i32** %9, align 8
  store i32 %231, i32* %232, align 4
  %233 = load i8*, i8** %7, align 8
  %234 = load i32, i32* %22, align 4
  %235 = load i32, i32* %13, align 4
  %236 = add nsw i32 %234, %235
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i8, i8* %233, i64 %237
  store i8* %238, i8** %18, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %17, align 8
  store i64 0, i64* %21, align 8
  %239 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %240 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %239, i32 0, i32 7
  %241 = load %struct.TYPE_18__*, %struct.TYPE_18__** %240, align 8
  store %struct.TYPE_18__* %241, %struct.TYPE_18__** %20, align 8
  br label %242

242:                                              ; preds = %226, %452
  %243 = load i32, i32* %10, align 4
  store i32 %243, i32* %13, align 4
  %244 = load i32, i32* %13, align 4
  %245 = load i32, i32* %16, align 4
  %246 = icmp sgt i32 %244, %245
  br i1 %246, label %247, label %249

247:                                              ; preds = %242
  %248 = load i32, i32* %16, align 4
  store i32 %248, i32* %13, align 4
  br label %249

249:                                              ; preds = %247, %242
  %250 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %251 = icmp eq %struct.TYPE_15__* %250, null
  br i1 %251, label %258, label %252

252:                                              ; preds = %249
  %253 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %254 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %253, i32 0, i32 5
  %255 = load i32, i32* %254, align 8
  %256 = call i64 @sqlite3PagerIswriteable(i32 %255)
  %257 = icmp ne i64 %256, 0
  br label %258

258:                                              ; preds = %252, %249
  %259 = phi i1 [ true, %249 ], [ %257, %252 ]
  %260 = zext i1 %259 to i32
  %261 = call i32 @assert(i32 %260)
  %262 = load i8*, i8** %19, align 8
  %263 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %264 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %263, i32 0, i32 0
  %265 = load i8*, i8** %264, align 8
  %266 = icmp ult i8* %262, %265
  br i1 %266, label %283, label %267

267:                                              ; preds = %258
  %268 = load i8*, i8** %19, align 8
  %269 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %270 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %269, i32 0, i32 0
  %271 = load i8*, i8** %270, align 8
  %272 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %273 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %272, i32 0, i32 0
  %274 = load i64, i64* %273, align 8
  %275 = getelementptr inbounds i8, i8* %271, i64 %274
  %276 = icmp uge i8* %268, %275
  br i1 %276, label %283, label %277

277:                                              ; preds = %267
  %278 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %279 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %278, i32 0, i32 5
  %280 = load i32, i32* %279, align 8
  %281 = call i64 @sqlite3PagerIswriteable(i32 %280)
  %282 = icmp ne i64 %281, 0
  br label %283

283:                                              ; preds = %277, %267, %258
  %284 = phi i1 [ true, %267 ], [ true, %258 ], [ %282, %277 ]
  %285 = zext i1 %284 to i32
  %286 = call i32 @assert(i32 %285)
  %287 = load i32, i32* %12, align 4
  %288 = load i32, i32* %13, align 4
  %289 = icmp sge i32 %287, %288
  br i1 %289, label %290, label %295

290:                                              ; preds = %283
  %291 = load i8*, i8** %19, align 8
  %292 = load i32*, i32** %11, align 8
  %293 = load i32, i32* %13, align 4
  %294 = call i32 @memcpy(i8* %291, i32* %292, i32 %293)
  br label %309

295:                                              ; preds = %283
  %296 = load i32, i32* %12, align 4
  %297 = icmp sgt i32 %296, 0
  br i1 %297, label %298, label %304

298:                                              ; preds = %295
  %299 = load i32, i32* %12, align 4
  store i32 %299, i32* %13, align 4
  %300 = load i8*, i8** %19, align 8
  %301 = load i32*, i32** %11, align 8
  %302 = load i32, i32* %13, align 4
  %303 = call i32 @memcpy(i8* %300, i32* %301, i32 %302)
  br label %308

304:                                              ; preds = %295
  %305 = load i8*, i8** %19, align 8
  %306 = load i32, i32* %13, align 4
  %307 = call i32 @memset(i8* %305, i32 0, i32 %306)
  br label %308

308:                                              ; preds = %304, %298
  br label %309

309:                                              ; preds = %308, %290
  %310 = load i32, i32* %13, align 4
  %311 = load i32, i32* %10, align 4
  %312 = sub nsw i32 %311, %310
  store i32 %312, i32* %10, align 4
  %313 = load i32, i32* %10, align 4
  %314 = icmp sle i32 %313, 0
  br i1 %314, label %315, label %316

315:                                              ; preds = %309
  br label %453

316:                                              ; preds = %309
  %317 = load i32, i32* %13, align 4
  %318 = load i8*, i8** %19, align 8
  %319 = sext i32 %317 to i64
  %320 = getelementptr inbounds i8, i8* %318, i64 %319
  store i8* %320, i8** %19, align 8
  %321 = load i32, i32* %13, align 4
  %322 = load i32*, i32** %11, align 8
  %323 = sext i32 %321 to i64
  %324 = getelementptr inbounds i32, i32* %322, i64 %323
  store i32* %324, i32** %11, align 8
  %325 = load i32, i32* %13, align 4
  %326 = load i32, i32* %12, align 4
  %327 = sub nsw i32 %326, %325
  store i32 %327, i32* %12, align 4
  %328 = load i32, i32* %13, align 4
  %329 = load i32, i32* %16, align 4
  %330 = sub nsw i32 %329, %328
  store i32 %330, i32* %16, align 4
  %331 = load i32, i32* %16, align 4
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %333, label %452

333:                                              ; preds = %316
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %23, align 8
  %334 = load i64, i64* %21, align 8
  store i64 %334, i64* %24, align 8
  %335 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %336 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %335, i32 0, i32 2
  %337 = load i64, i64* %336, align 8
  %338 = icmp ne i64 %337, 0
  br i1 %338, label %339, label %356

339:                                              ; preds = %333
  br label %340

340:                                              ; preds = %353, %339
  %341 = load i64, i64* %21, align 8
  %342 = add nsw i64 %341, 1
  store i64 %342, i64* %21, align 8
  br label %343

343:                                              ; preds = %340
  %344 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %345 = load i64, i64* %21, align 8
  %346 = call i64 @PTRMAP_ISPAGE(%struct.TYPE_18__* %344, i64 %345)
  %347 = icmp ne i64 %346, 0
  br i1 %347, label %353, label %348

348:                                              ; preds = %343
  %349 = load i64, i64* %21, align 8
  %350 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %351 = call i64 @PENDING_BYTE_PAGE(%struct.TYPE_18__* %350)
  %352 = icmp eq i64 %349, %351
  br label %353

353:                                              ; preds = %348, %343
  %354 = phi i1 [ true, %343 ], [ %352, %348 ]
  br i1 %354, label %340, label %355

355:                                              ; preds = %353
  br label %356

356:                                              ; preds = %355, %333
  %357 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %358 = load i64, i64* %21, align 8
  %359 = call i32 @allocateBtreePage(%struct.TYPE_18__* %357, %struct.TYPE_15__** %23, i64* %21, i64 %358, i32 0)
  store i32 %359, i32* %14, align 4
  %360 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %361 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %360, i32 0, i32 2
  %362 = load i64, i64* %361, align 8
  %363 = icmp ne i64 %362, 0
  br i1 %363, label %364, label %388

364:                                              ; preds = %356
  %365 = load i32, i32* %14, align 4
  %366 = load i32, i32* @SQLITE_OK, align 4
  %367 = icmp eq i32 %365, %366
  br i1 %367, label %368, label %388

368:                                              ; preds = %364
  %369 = load i64, i64* %24, align 8
  %370 = icmp ne i64 %369, 0
  br i1 %370, label %371, label %373

371:                                              ; preds = %368
  %372 = load i32, i32* @PTRMAP_OVERFLOW2, align 4
  br label %375

373:                                              ; preds = %368
  %374 = load i32, i32* @PTRMAP_OVERFLOW1, align 4
  br label %375

375:                                              ; preds = %373, %371
  %376 = phi i32 [ %372, %371 ], [ %374, %373 ]
  store i32 %376, i32* %25, align 4
  %377 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %378 = load i64, i64* %21, align 8
  %379 = load i32, i32* %25, align 4
  %380 = load i64, i64* %24, align 8
  %381 = call i32 @ptrmapPut(%struct.TYPE_18__* %377, i64 %378, i32 %379, i64 %380, i32* %14)
  %382 = load i32, i32* %14, align 4
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %384, label %387

384:                                              ; preds = %375
  %385 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %386 = call i32 @releasePage(%struct.TYPE_15__* %385)
  br label %387

387:                                              ; preds = %384, %375
  br label %388

388:                                              ; preds = %387, %364, %356
  %389 = load i32, i32* %14, align 4
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %391, label %395

391:                                              ; preds = %388
  %392 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %393 = call i32 @releasePage(%struct.TYPE_15__* %392)
  %394 = load i32, i32* %14, align 4
  store i32 %394, i32* %5, align 4
  br label %457

395:                                              ; preds = %388
  %396 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %397 = icmp eq %struct.TYPE_15__* %396, null
  br i1 %397, label %404, label %398

398:                                              ; preds = %395
  %399 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %400 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %399, i32 0, i32 5
  %401 = load i32, i32* %400, align 8
  %402 = call i64 @sqlite3PagerIswriteable(i32 %401)
  %403 = icmp ne i64 %402, 0
  br label %404

404:                                              ; preds = %398, %395
  %405 = phi i1 [ true, %395 ], [ %403, %398 ]
  %406 = zext i1 %405 to i32
  %407 = call i32 @assert(i32 %406)
  %408 = load i8*, i8** %18, align 8
  %409 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %410 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %409, i32 0, i32 0
  %411 = load i8*, i8** %410, align 8
  %412 = icmp ult i8* %408, %411
  br i1 %412, label %429, label %413

413:                                              ; preds = %404
  %414 = load i8*, i8** %18, align 8
  %415 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %416 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %415, i32 0, i32 0
  %417 = load i8*, i8** %416, align 8
  %418 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %419 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %418, i32 0, i32 0
  %420 = load i64, i64* %419, align 8
  %421 = getelementptr inbounds i8, i8* %417, i64 %420
  %422 = icmp uge i8* %414, %421
  br i1 %422, label %429, label %423

423:                                              ; preds = %413
  %424 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %425 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %424, i32 0, i32 5
  %426 = load i32, i32* %425, align 8
  %427 = call i64 @sqlite3PagerIswriteable(i32 %426)
  %428 = icmp ne i64 %427, 0
  br label %429

429:                                              ; preds = %423, %413, %404
  %430 = phi i1 [ true, %413 ], [ true, %404 ], [ %428, %423 ]
  %431 = zext i1 %430 to i32
  %432 = call i32 @assert(i32 %431)
  %433 = load i8*, i8** %18, align 8
  %434 = load i64, i64* %21, align 8
  %435 = call i32 @put4byte(i8* %433, i64 %434)
  %436 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %437 = call i32 @releasePage(%struct.TYPE_15__* %436)
  %438 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  store %struct.TYPE_15__* %438, %struct.TYPE_15__** %17, align 8
  %439 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %440 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %439, i32 0, i32 0
  %441 = load i8*, i8** %440, align 8
  store i8* %441, i8** %18, align 8
  %442 = load i8*, i8** %18, align 8
  %443 = call i32 @put4byte(i8* %442, i64 0)
  %444 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %445 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %444, i32 0, i32 0
  %446 = load i8*, i8** %445, align 8
  %447 = getelementptr inbounds i8, i8* %446, i64 4
  store i8* %447, i8** %19, align 8
  %448 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %449 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %448, i32 0, i32 1
  %450 = load i32, i32* %449, align 8
  %451 = sub nsw i32 %450, 4
  store i32 %451, i32* %16, align 4
  br label %452

452:                                              ; preds = %429, %316
  br label %242

453:                                              ; preds = %315
  %454 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %455 = call i32 @releasePage(%struct.TYPE_15__* %454)
  %456 = load i32, i32* @SQLITE_OK, align 4
  store i32 %456, i32* %5, align 4
  br label %457

457:                                              ; preds = %453, %391, %162
  %458 = load i32, i32* %5, align 4
  ret i32 %458
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3_mutex_held(i32) #1

declare dso_local i64 @sqlite3PagerIswriteable(i32) #1

declare dso_local i64 @putVarint32(i8*, i32) #1

declare dso_local i64 @putVarint(i8*, i32) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i64 @PTRMAP_ISPAGE(%struct.TYPE_18__*, i64) #1

declare dso_local i64 @PENDING_BYTE_PAGE(%struct.TYPE_18__*) #1

declare dso_local i32 @allocateBtreePage(%struct.TYPE_18__*, %struct.TYPE_15__**, i64*, i64, i32) #1

declare dso_local i32 @ptrmapPut(%struct.TYPE_18__*, i64, i32, i64, i32*) #1

declare dso_local i32 @releasePage(%struct.TYPE_15__*) #1

declare dso_local i32 @put4byte(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
