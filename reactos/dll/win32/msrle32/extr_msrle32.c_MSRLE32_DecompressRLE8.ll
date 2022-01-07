; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msrle32/extr_msrle32.c_MSRLE32_DecompressRLE8.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msrle32/extr_msrle32.c_MSRLE32_DecompressRLE8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64* }
%struct.TYPE_6__ = type { i64, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@BI_RGB = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"aborted absolute: (%d=%d/%d+%d) > %d\0A\00", align 1
@ICERR_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"aborted coded: (%d=%d/%d+%d) > %d\0A\00", align 1
@ICERR_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, %struct.TYPE_6__*, i64*, i64*)* @MSRLE32_DecompressRLE8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MSRLE32_DecompressRLE8(%struct.TYPE_7__* %0, %struct.TYPE_6__* %1, i64* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  store i32 0, i32* %12, align 4
  %22 = load i32, i32* @FALSE, align 4
  store i32 %22, i32* %13, align 4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %24 = icmp ne %struct.TYPE_7__* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %28 = icmp ne %struct.TYPE_6__* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %4
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @BI_RGB, align 8
  %34 = icmp eq i64 %32, %33
  br label %35

35:                                               ; preds = %29, %4
  %36 = phi i1 [ false, %4 ], [ %34, %29 ]
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load i64*, i64** %8, align 8
  %40 = icmp ne i64* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load i64*, i64** %9, align 8
  %43 = icmp ne i64* %42, null
  br label %44

44:                                               ; preds = %41, %35
  %45 = phi i1 [ false, %35 ], [ %43, %41 ]
  %46 = zext i1 %45 to i32
  %47 = call i32 @assert(i32 %46)
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = add nsw i32 %50, 1
  %52 = sdiv i32 %51, 8
  store i32 %52, i32* %10, align 4
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %54 = bitcast %struct.TYPE_6__* %53 to { i64, i64 }*
  %55 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %54, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @DIBWIDTHBYTES(i64 %56, i64 %58)
  store i32 %59, i32* %11, align 4
  br label %60

60:                                               ; preds = %393, %44
  %61 = load i64*, i64** %8, align 8
  %62 = getelementptr inbounds i64, i64* %61, i32 1
  store i64* %62, i64** %8, align 8
  %63 = load i64, i64* %61, align 8
  store i64 %63, i64* %14, align 8
  %64 = load i64*, i64** %8, align 8
  %65 = getelementptr inbounds i64, i64* %64, i32 1
  store i64* %65, i64** %8, align 8
  %66 = load i64, i64* %64, align 8
  store i64 %66, i64* %15, align 8
  %67 = load i64, i64* %14, align 8
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %247

69:                                               ; preds = %60
  %70 = load i64, i64* %15, align 8
  switch i64 %70, label %110 [
    i64 0, label %71
    i64 1, label %76
    i64 2, label %78
  ]

71:                                               ; preds = %69
  store i32 0, i32* %12, align 4
  %72 = load i32, i32* %11, align 4
  %73 = load i64*, i64** %9, align 8
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds i64, i64* %73, i64 %74
  store i64* %75, i64** %9, align 8
  br label %246

76:                                               ; preds = %69
  %77 = load i32, i32* @TRUE, align 4
  store i32 %77, i32* %13, align 4
  br label %246

78:                                               ; preds = %69
  %79 = load i64*, i64** %8, align 8
  %80 = getelementptr inbounds i64, i64* %79, i32 1
  store i64* %80, i64** %8, align 8
  %81 = load i64, i64* %79, align 8
  %82 = load i32, i32* %10, align 4
  %83 = sext i32 %82 to i64
  %84 = mul nsw i64 %81, %83
  %85 = load i32, i32* %12, align 4
  %86 = sext i32 %85 to i64
  %87 = add nsw i64 %86, %84
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %12, align 4
  %89 = load i64*, i64** %8, align 8
  %90 = getelementptr inbounds i64, i64* %89, i32 1
  store i64* %90, i64** %8, align 8
  %91 = load i64, i64* %89, align 8
  %92 = load i32, i32* %11, align 4
  %93 = sext i32 %92 to i64
  %94 = mul nsw i64 %91, %93
  %95 = load i64*, i64** %9, align 8
  %96 = getelementptr inbounds i64, i64* %95, i64 %94
  store i64* %96, i64** %9, align 8
  %97 = load i32, i32* %12, align 4
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %10, align 4
  %102 = mul nsw i32 %100, %101
  %103 = icmp sge i32 %97, %102
  br i1 %103, label %104, label %109

104:                                              ; preds = %78
  store i32 0, i32* %12, align 4
  %105 = load i32, i32* %11, align 4
  %106 = load i64*, i64** %9, align 8
  %107 = sext i32 %105 to i64
  %108 = getelementptr inbounds i64, i64* %106, i64 %107
  store i64* %108, i64** %9, align 8
  br label %109

109:                                              ; preds = %104, %78
  br label %246

110:                                              ; preds = %69
  %111 = load i32, i32* %12, align 4
  %112 = load i32, i32* %10, align 4
  %113 = sdiv i32 %111, %112
  %114 = sext i32 %113 to i64
  %115 = load i64, i64* %15, align 8
  %116 = add nsw i64 %114, %115
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = sext i32 %119 to i64
  %121 = icmp sgt i64 %116, %120
  br i1 %121, label %122, label %138

122:                                              ; preds = %110
  %123 = load i32, i32* %12, align 4
  %124 = load i32, i32* %10, align 4
  %125 = sdiv i32 %123, %124
  %126 = sext i32 %125 to i64
  %127 = load i64, i64* %15, align 8
  %128 = add nsw i64 %126, %127
  %129 = trunc i64 %128 to i32
  %130 = load i32, i32* %12, align 4
  %131 = load i32, i32* %10, align 4
  %132 = load i64, i64* %15, align 8
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @WARN(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %129, i32 %130, i32 %131, i64 %132, i32 %135)
  %137 = load i32, i32* @ICERR_ERROR, align 4
  store i32 %137, i32* %5, align 4
  br label %399

138:                                              ; preds = %110
  %139 = load i64, i64* %15, align 8
  %140 = and i64 %139, 1
  %141 = trunc i64 %140 to i32
  store i32 %141, i32* %16, align 4
  %142 = load i64, i64* %15, align 8
  store i64 %142, i64* %14, align 8
  br label %143

143:                                              ; preds = %235, %138
  %144 = load i64, i64* %14, align 8
  %145 = add nsw i64 %144, -1
  store i64 %145, i64* %14, align 8
  %146 = icmp ne i64 %144, 0
  br i1 %146, label %147, label %239

147:                                              ; preds = %143
  %148 = load i64*, i64** %8, align 8
  %149 = getelementptr inbounds i64, i64* %148, i32 1
  store i64* %149, i64** %8, align 8
  %150 = load i64, i64* %148, align 8
  store i64 %150, i64* %15, align 8
  %151 = load i32, i32* %10, align 4
  %152 = icmp eq i32 %151, 1
  br i1 %152, label %153, label %164

153:                                              ; preds = %147
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 0
  %156 = load i64*, i64** %155, align 8
  %157 = load i64, i64* %15, align 8
  %158 = getelementptr inbounds i64, i64* %156, i64 %157
  %159 = load i64, i64* %158, align 8
  %160 = load i64*, i64** %9, align 8
  %161 = load i32, i32* %12, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i64, i64* %160, i64 %162
  store i64 %159, i64* %163, align 8
  br label %235

164:                                              ; preds = %147
  %165 = load i32, i32* %10, align 4
  %166 = icmp eq i32 %165, 2
  br i1 %166, label %167, label %194

167:                                              ; preds = %164
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 0
  %170 = load i64*, i64** %169, align 8
  %171 = load i64, i64* %15, align 8
  %172 = mul nsw i64 %171, 2
  %173 = add nsw i64 %172, 0
  %174 = getelementptr inbounds i64, i64* %170, i64 %173
  %175 = load i64, i64* %174, align 8
  %176 = load i64*, i64** %9, align 8
  %177 = load i32, i32* %12, align 4
  %178 = add nsw i32 %177, 0
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i64, i64* %176, i64 %179
  store i64 %175, i64* %180, align 8
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 0
  %183 = load i64*, i64** %182, align 8
  %184 = load i64, i64* %15, align 8
  %185 = mul nsw i64 %184, 2
  %186 = add nsw i64 %185, 1
  %187 = getelementptr inbounds i64, i64* %183, i64 %186
  %188 = load i64, i64* %187, align 8
  %189 = load i64*, i64** %9, align 8
  %190 = load i32, i32* %12, align 4
  %191 = add nsw i32 %190, 1
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i64, i64* %189, i64 %192
  store i64 %188, i64* %193, align 8
  br label %234

194:                                              ; preds = %164
  %195 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i32 0, i32 0
  %197 = load i64*, i64** %196, align 8
  %198 = load i64, i64* %15, align 8
  %199 = mul nsw i64 %198, 4
  %200 = add nsw i64 %199, 0
  %201 = getelementptr inbounds i64, i64* %197, i64 %200
  %202 = load i64, i64* %201, align 8
  %203 = load i64*, i64** %9, align 8
  %204 = load i32, i32* %12, align 4
  %205 = add nsw i32 %204, 0
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i64, i64* %203, i64 %206
  store i64 %202, i64* %207, align 8
  %208 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %208, i32 0, i32 0
  %210 = load i64*, i64** %209, align 8
  %211 = load i64, i64* %15, align 8
  %212 = mul nsw i64 %211, 4
  %213 = add nsw i64 %212, 1
  %214 = getelementptr inbounds i64, i64* %210, i64 %213
  %215 = load i64, i64* %214, align 8
  %216 = load i64*, i64** %9, align 8
  %217 = load i32, i32* %12, align 4
  %218 = add nsw i32 %217, 1
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i64, i64* %216, i64 %219
  store i64 %215, i64* %220, align 8
  %221 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %222 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %221, i32 0, i32 0
  %223 = load i64*, i64** %222, align 8
  %224 = load i64, i64* %15, align 8
  %225 = mul nsw i64 %224, 4
  %226 = add nsw i64 %225, 2
  %227 = getelementptr inbounds i64, i64* %223, i64 %226
  %228 = load i64, i64* %227, align 8
  %229 = load i64*, i64** %9, align 8
  %230 = load i32, i32* %12, align 4
  %231 = add nsw i32 %230, 2
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i64, i64* %229, i64 %232
  store i64 %228, i64* %233, align 8
  br label %234

234:                                              ; preds = %194, %167
  br label %235

235:                                              ; preds = %234, %153
  %236 = load i32, i32* %10, align 4
  %237 = load i32, i32* %12, align 4
  %238 = add nsw i32 %237, %236
  store i32 %238, i32* %12, align 4
  br label %143

239:                                              ; preds = %143
  %240 = load i32, i32* %16, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %245

242:                                              ; preds = %239
  %243 = load i64*, i64** %8, align 8
  %244 = getelementptr inbounds i64, i64* %243, i32 1
  store i64* %244, i64** %8, align 8
  br label %245

245:                                              ; preds = %242, %239
  br label %246

246:                                              ; preds = %245, %109, %76, %71
  br label %392

247:                                              ; preds = %60
  %248 = load i32, i32* %12, align 4
  %249 = load i32, i32* %10, align 4
  %250 = sdiv i32 %248, %249
  %251 = sext i32 %250 to i64
  %252 = load i64, i64* %14, align 8
  %253 = add nsw i64 %251, %252
  %254 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %255 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %254, i32 0, i32 2
  %256 = load i32, i32* %255, align 4
  %257 = sext i32 %256 to i64
  %258 = icmp sgt i64 %253, %257
  br i1 %258, label %259, label %275

259:                                              ; preds = %247
  %260 = load i32, i32* %12, align 4
  %261 = load i32, i32* %10, align 4
  %262 = sdiv i32 %260, %261
  %263 = sext i32 %262 to i64
  %264 = load i64, i64* %15, align 8
  %265 = add nsw i64 %263, %264
  %266 = trunc i64 %265 to i32
  %267 = load i32, i32* %12, align 4
  %268 = load i32, i32* %10, align 4
  %269 = load i64, i64* %15, align 8
  %270 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %271 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %270, i32 0, i32 2
  %272 = load i32, i32* %271, align 4
  %273 = call i32 @WARN(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %266, i32 %267, i32 %268, i64 %269, i32 %272)
  %274 = load i32, i32* @ICERR_ERROR, align 4
  store i32 %274, i32* %5, align 4
  br label %399

275:                                              ; preds = %247
  %276 = load i32, i32* %10, align 4
  %277 = icmp eq i32 %276, 1
  br i1 %277, label %278, label %297

278:                                              ; preds = %275
  %279 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %280 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %279, i32 0, i32 0
  %281 = load i64*, i64** %280, align 8
  %282 = load i64, i64* %15, align 8
  %283 = getelementptr inbounds i64, i64* %281, i64 %282
  %284 = load i64, i64* %283, align 8
  store i64 %284, i64* %15, align 8
  br label %285

285:                                              ; preds = %289, %278
  %286 = load i64, i64* %14, align 8
  %287 = add nsw i64 %286, -1
  store i64 %287, i64* %14, align 8
  %288 = icmp ne i64 %286, 0
  br i1 %288, label %289, label %296

289:                                              ; preds = %285
  %290 = load i64, i64* %15, align 8
  %291 = load i64*, i64** %9, align 8
  %292 = load i32, i32* %12, align 4
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* %12, align 4
  %294 = sext i32 %292 to i64
  %295 = getelementptr inbounds i64, i64* %291, i64 %294
  store i64 %290, i64* %295, align 8
  br label %285

296:                                              ; preds = %285
  br label %391

297:                                              ; preds = %275
  %298 = load i32, i32* %10, align 4
  %299 = icmp eq i32 %298, 2
  br i1 %299, label %300, label %338

300:                                              ; preds = %297
  %301 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %302 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %301, i32 0, i32 0
  %303 = load i64*, i64** %302, align 8
  %304 = load i64, i64* %15, align 8
  %305 = mul nsw i64 %304, 2
  %306 = add nsw i64 %305, 0
  %307 = getelementptr inbounds i64, i64* %303, i64 %306
  %308 = load i64, i64* %307, align 8
  store i64 %308, i64* %17, align 8
  %309 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %310 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %309, i32 0, i32 0
  %311 = load i64*, i64** %310, align 8
  %312 = load i64, i64* %15, align 8
  %313 = mul nsw i64 %312, 2
  %314 = add nsw i64 %313, 1
  %315 = getelementptr inbounds i64, i64* %311, i64 %314
  %316 = load i64, i64* %315, align 8
  store i64 %316, i64* %18, align 8
  br label %317

317:                                              ; preds = %321, %300
  %318 = load i64, i64* %14, align 8
  %319 = add nsw i64 %318, -1
  store i64 %319, i64* %14, align 8
  %320 = icmp ne i64 %318, 0
  br i1 %320, label %321, label %337

321:                                              ; preds = %317
  %322 = load i64, i64* %17, align 8
  %323 = load i64*, i64** %9, align 8
  %324 = load i32, i32* %12, align 4
  %325 = add nsw i32 %324, 0
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds i64, i64* %323, i64 %326
  store i64 %322, i64* %327, align 8
  %328 = load i64, i64* %18, align 8
  %329 = load i64*, i64** %9, align 8
  %330 = load i32, i32* %12, align 4
  %331 = add nsw i32 %330, 1
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds i64, i64* %329, i64 %332
  store i64 %328, i64* %333, align 8
  %334 = load i32, i32* %10, align 4
  %335 = load i32, i32* %12, align 4
  %336 = add nsw i32 %335, %334
  store i32 %336, i32* %12, align 4
  br label %317

337:                                              ; preds = %317
  br label %390

338:                                              ; preds = %297
  %339 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %340 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %339, i32 0, i32 0
  %341 = load i64*, i64** %340, align 8
  %342 = load i64, i64* %15, align 8
  %343 = mul nsw i64 %342, 4
  %344 = add nsw i64 %343, 2
  %345 = getelementptr inbounds i64, i64* %341, i64 %344
  %346 = load i64, i64* %345, align 8
  store i64 %346, i64* %19, align 8
  %347 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %348 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %347, i32 0, i32 0
  %349 = load i64*, i64** %348, align 8
  %350 = load i64, i64* %15, align 8
  %351 = mul nsw i64 %350, 4
  %352 = add nsw i64 %351, 1
  %353 = getelementptr inbounds i64, i64* %349, i64 %352
  %354 = load i64, i64* %353, align 8
  store i64 %354, i64* %20, align 8
  %355 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %356 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %355, i32 0, i32 0
  %357 = load i64*, i64** %356, align 8
  %358 = load i64, i64* %15, align 8
  %359 = mul nsw i64 %358, 4
  %360 = add nsw i64 %359, 0
  %361 = getelementptr inbounds i64, i64* %357, i64 %360
  %362 = load i64, i64* %361, align 8
  store i64 %362, i64* %21, align 8
  br label %363

363:                                              ; preds = %367, %338
  %364 = load i64, i64* %14, align 8
  %365 = add nsw i64 %364, -1
  store i64 %365, i64* %14, align 8
  %366 = icmp ne i64 %364, 0
  br i1 %366, label %367, label %389

367:                                              ; preds = %363
  %368 = load i64, i64* %21, align 8
  %369 = load i64*, i64** %9, align 8
  %370 = load i32, i32* %12, align 4
  %371 = add nsw i32 %370, 0
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds i64, i64* %369, i64 %372
  store i64 %368, i64* %373, align 8
  %374 = load i64, i64* %20, align 8
  %375 = load i64*, i64** %9, align 8
  %376 = load i32, i32* %12, align 4
  %377 = add nsw i32 %376, 1
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds i64, i64* %375, i64 %378
  store i64 %374, i64* %379, align 8
  %380 = load i64, i64* %19, align 8
  %381 = load i64*, i64** %9, align 8
  %382 = load i32, i32* %12, align 4
  %383 = add nsw i32 %382, 2
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds i64, i64* %381, i64 %384
  store i64 %380, i64* %385, align 8
  %386 = load i32, i32* %10, align 4
  %387 = load i32, i32* %12, align 4
  %388 = add nsw i32 %387, %386
  store i32 %388, i32* %12, align 4
  br label %363

389:                                              ; preds = %363
  br label %390

390:                                              ; preds = %389, %337
  br label %391

391:                                              ; preds = %390, %296
  br label %392

392:                                              ; preds = %391, %246
  br label %393

393:                                              ; preds = %392
  %394 = load i32, i32* %13, align 4
  %395 = icmp ne i32 %394, 0
  %396 = xor i1 %395, true
  br i1 %396, label %60, label %397

397:                                              ; preds = %393
  %398 = load i32, i32* @ICERR_OK, align 4
  store i32 %398, i32* %5, align 4
  br label %399

399:                                              ; preds = %397, %259, %122
  %400 = load i32, i32* %5, align 4
  ret i32 %400
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @DIBWIDTHBYTES(i64, i64) #1

declare dso_local i32 @WARN(i8*, i32, i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
