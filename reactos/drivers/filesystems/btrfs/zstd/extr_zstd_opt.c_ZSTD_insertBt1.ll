; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/zstd/extr_zstd_opt.c_ZSTD_insertBt1.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/zstd/extr_zstd_opt.c_ZSTD_insertBt1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32*, %struct.TYPE_5__, %struct.TYPE_7__ }
%struct.TYPE_5__ = type { i64*, i64*, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"ZSTD_insertBt1 (%u)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i64*, i64*, i32, i32)* @ZSTD_insertBt1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ZSTD_insertBt1(%struct.TYPE_6__* %0, i64* %1, i64* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64*, align 8
  %23 = alloca i64*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i64*, align 8
  %26 = alloca i64*, align 8
  %27 = alloca i64*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i64, align 8
  %37 = alloca i32, align 4
  %38 = alloca i32*, align 8
  %39 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store i64* %1, i64** %8, align 8
  store i64* %2, i64** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 3
  store %struct.TYPE_7__* %41, %struct.TYPE_7__** %12, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  store i32* %44, i32** %13, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %14, align 4
  %48 = load i64*, i64** %8, align 8
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* %10, align 4
  %51 = call i64 @ZSTD_hashPtr(i64* %48, i32 %49, i32 %50)
  store i64 %51, i64* %15, align 8
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  store i32* %54, i32** %16, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = sub nsw i32 %57, 1
  store i32 %58, i32* %17, align 4
  %59 = load i32, i32* %17, align 4
  %60 = shl i32 1, %59
  %61 = sub nsw i32 %60, 1
  store i32 %61, i32* %18, align 4
  %62 = load i32*, i32** %13, align 8
  %63 = load i64, i64* %15, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %19, align 4
  store i64 0, i64* %20, align 8
  store i64 0, i64* %21, align 8
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i64*, i64** %68, align 8
  store i64* %69, i64** %22, align 8
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  %73 = load i64*, i64** %72, align 8
  store i64* %73, i64** %23, align 8
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  store i32 %77, i32* %24, align 4
  %78 = load i64*, i64** %23, align 8
  %79 = load i32, i32* %24, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i64, i64* %78, i64 %80
  store i64* %81, i64** %25, align 8
  %82 = load i64*, i64** %22, align 8
  %83 = load i32, i32* %24, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i64, i64* %82, i64 %84
  store i64* %85, i64** %26, align 8
  %86 = load i64*, i64** %8, align 8
  %87 = load i64*, i64** %22, align 8
  %88 = ptrtoint i64* %86 to i64
  %89 = ptrtoint i64* %87 to i64
  %90 = sub i64 %88, %89
  %91 = sdiv exact i64 %90, 8
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %28, align 4
  %93 = load i32, i32* %18, align 4
  %94 = load i32, i32* %28, align 4
  %95 = icmp sge i32 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %5
  br label %101

97:                                               ; preds = %5
  %98 = load i32, i32* %28, align 4
  %99 = load i32, i32* %18, align 4
  %100 = sub nsw i32 %98, %99
  br label %101

101:                                              ; preds = %97, %96
  %102 = phi i32 [ 0, %96 ], [ %100, %97 ]
  store i32 %102, i32* %29, align 4
  %103 = load i32*, i32** %16, align 8
  %104 = load i32, i32* %28, align 4
  %105 = load i32, i32* %18, align 4
  %106 = and i32 %104, %105
  %107 = mul nsw i32 2, %106
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %103, i64 %108
  store i32* %109, i32** %30, align 8
  %110 = load i32*, i32** %30, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 1
  store i32* %111, i32** %31, align 8
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  store i32 %115, i32* %33, align 4
  %116 = load i32, i32* %33, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %101
  %119 = load i32, i32* %33, align 4
  br label %121

120:                                              ; preds = %101
  br label %121

121:                                              ; preds = %120, %118
  %122 = phi i32 [ %119, %118 ], [ 1, %120 ]
  store i32 %122, i32* %34, align 4
  %123 = load i32, i32* %28, align 4
  %124 = add nsw i32 %123, 8
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %35, align 4
  store i64 8, i64* %36, align 8
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = shl i32 1, %128
  store i32 %129, i32* %37, align 4
  %130 = load i32, i32* %28, align 4
  %131 = call i32 @DEBUGLOG(i32 8, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %130)
  %132 = load i64*, i64** %8, align 8
  %133 = load i64*, i64** %9, align 8
  %134 = getelementptr inbounds i64, i64* %133, i64 -8
  %135 = icmp ule i64* %132, %134
  %136 = zext i1 %135 to i32
  %137 = call i32 @assert(i32 %136)
  %138 = load i32, i32* %28, align 4
  %139 = load i32*, i32** %13, align 8
  %140 = load i64, i64* %15, align 8
  %141 = getelementptr inbounds i32, i32* %139, i64 %140
  store i32 %138, i32* %141, align 4
  br label %142

142:                                              ; preds = %297, %121
  %143 = load i32, i32* %37, align 4
  %144 = add nsw i32 %143, -1
  store i32 %144, i32* %37, align 4
  %145 = icmp ne i32 %143, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %142
  %147 = load i32, i32* %19, align 4
  %148 = load i32, i32* %34, align 4
  %149 = icmp sge i32 %147, %148
  br label %150

150:                                              ; preds = %146, %142
  %151 = phi i1 [ false, %142 ], [ %149, %146 ]
  br i1 %151, label %152, label %298

152:                                              ; preds = %150
  %153 = load i32*, i32** %16, align 8
  %154 = load i32, i32* %19, align 4
  %155 = load i32, i32* %18, align 4
  %156 = and i32 %154, %155
  %157 = mul nsw i32 2, %156
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %153, i64 %158
  store i32* %159, i32** %38, align 8
  %160 = load i64, i64* %20, align 8
  %161 = trunc i64 %160 to i32
  %162 = load i64, i64* %21, align 8
  %163 = trunc i64 %162 to i32
  %164 = call i32 @MIN(i32 %161, i32 %163)
  %165 = sext i32 %164 to i64
  store i64 %165, i64* %39, align 8
  %166 = load i32, i32* %19, align 4
  %167 = load i32, i32* %28, align 4
  %168 = icmp slt i32 %166, %167
  %169 = zext i1 %168 to i32
  %170 = call i32 @assert(i32 %169)
  %171 = load i32, i32* %11, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %181

173:                                              ; preds = %152
  %174 = load i32, i32* %19, align 4
  %175 = sext i32 %174 to i64
  %176 = load i64, i64* %39, align 8
  %177 = add i64 %175, %176
  %178 = load i32, i32* %24, align 4
  %179 = sext i32 %178 to i64
  %180 = icmp uge i64 %177, %179
  br i1 %180, label %181, label %205

181:                                              ; preds = %173, %152
  %182 = load i32, i32* %19, align 4
  %183 = sext i32 %182 to i64
  %184 = load i64, i64* %39, align 8
  %185 = add i64 %183, %184
  %186 = load i32, i32* %24, align 4
  %187 = sext i32 %186 to i64
  %188 = icmp uge i64 %185, %187
  %189 = zext i1 %188 to i32
  %190 = call i32 @assert(i32 %189)
  %191 = load i64*, i64** %22, align 8
  %192 = load i32, i32* %19, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i64, i64* %191, i64 %193
  store i64* %194, i64** %27, align 8
  %195 = load i64*, i64** %8, align 8
  %196 = load i64, i64* %39, align 8
  %197 = getelementptr inbounds i64, i64* %195, i64 %196
  %198 = load i64*, i64** %27, align 8
  %199 = load i64, i64* %39, align 8
  %200 = getelementptr inbounds i64, i64* %198, i64 %199
  %201 = load i64*, i64** %9, align 8
  %202 = call i64 @ZSTD_count(i64* %197, i64* %200, i64* %201)
  %203 = load i64, i64* %39, align 8
  %204 = add i64 %203, %202
  store i64 %204, i64* %39, align 8
  br label %235

205:                                              ; preds = %173
  %206 = load i64*, i64** %23, align 8
  %207 = load i32, i32* %19, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i64, i64* %206, i64 %208
  store i64* %209, i64** %27, align 8
  %210 = load i64*, i64** %8, align 8
  %211 = load i64, i64* %39, align 8
  %212 = getelementptr inbounds i64, i64* %210, i64 %211
  %213 = load i64*, i64** %27, align 8
  %214 = load i64, i64* %39, align 8
  %215 = getelementptr inbounds i64, i64* %213, i64 %214
  %216 = load i64*, i64** %9, align 8
  %217 = load i64*, i64** %25, align 8
  %218 = load i64*, i64** %26, align 8
  %219 = call i64 @ZSTD_count_2segments(i64* %212, i64* %215, i64* %216, i64* %217, i64* %218)
  %220 = load i64, i64* %39, align 8
  %221 = add i64 %220, %219
  store i64 %221, i64* %39, align 8
  %222 = load i32, i32* %19, align 4
  %223 = sext i32 %222 to i64
  %224 = load i64, i64* %39, align 8
  %225 = add i64 %223, %224
  %226 = load i32, i32* %24, align 4
  %227 = sext i32 %226 to i64
  %228 = icmp uge i64 %225, %227
  br i1 %228, label %229, label %234

229:                                              ; preds = %205
  %230 = load i64*, i64** %22, align 8
  %231 = load i32, i32* %19, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i64, i64* %230, i64 %232
  store i64* %233, i64** %27, align 8
  br label %234

234:                                              ; preds = %229, %205
  br label %235

235:                                              ; preds = %234, %181
  %236 = load i64, i64* %39, align 8
  %237 = load i64, i64* %36, align 8
  %238 = icmp ugt i64 %236, %237
  br i1 %238, label %239, label %253

239:                                              ; preds = %235
  %240 = load i64, i64* %39, align 8
  store i64 %240, i64* %36, align 8
  %241 = load i64, i64* %39, align 8
  %242 = load i32, i32* %35, align 4
  %243 = load i32, i32* %19, align 4
  %244 = sub nsw i32 %242, %243
  %245 = sext i32 %244 to i64
  %246 = icmp ugt i64 %241, %245
  br i1 %246, label %247, label %252

247:                                              ; preds = %239
  %248 = load i32, i32* %19, align 4
  %249 = load i64, i64* %39, align 8
  %250 = trunc i64 %249 to i32
  %251 = add nsw i32 %248, %250
  store i32 %251, i32* %35, align 4
  br label %252

252:                                              ; preds = %247, %239
  br label %253

253:                                              ; preds = %252, %235
  %254 = load i64*, i64** %8, align 8
  %255 = load i64, i64* %39, align 8
  %256 = getelementptr inbounds i64, i64* %254, i64 %255
  %257 = load i64*, i64** %9, align 8
  %258 = icmp eq i64* %256, %257
  br i1 %258, label %259, label %260

259:                                              ; preds = %253
  br label %298

260:                                              ; preds = %253
  %261 = load i64*, i64** %27, align 8
  %262 = load i64, i64* %39, align 8
  %263 = getelementptr inbounds i64, i64* %261, i64 %262
  %264 = load i64, i64* %263, align 8
  %265 = load i64*, i64** %8, align 8
  %266 = load i64, i64* %39, align 8
  %267 = getelementptr inbounds i64, i64* %265, i64 %266
  %268 = load i64, i64* %267, align 8
  %269 = icmp slt i64 %264, %268
  br i1 %269, label %270, label %284

270:                                              ; preds = %260
  %271 = load i32, i32* %19, align 4
  %272 = load i32*, i32** %30, align 8
  store i32 %271, i32* %272, align 4
  %273 = load i64, i64* %39, align 8
  store i64 %273, i64* %20, align 8
  %274 = load i32, i32* %19, align 4
  %275 = load i32, i32* %29, align 4
  %276 = icmp sle i32 %274, %275
  br i1 %276, label %277, label %278

277:                                              ; preds = %270
  store i32* %32, i32** %30, align 8
  br label %298

278:                                              ; preds = %270
  %279 = load i32*, i32** %38, align 8
  %280 = getelementptr inbounds i32, i32* %279, i64 1
  store i32* %280, i32** %30, align 8
  %281 = load i32*, i32** %38, align 8
  %282 = getelementptr inbounds i32, i32* %281, i64 1
  %283 = load i32, i32* %282, align 4
  store i32 %283, i32* %19, align 4
  br label %297

284:                                              ; preds = %260
  %285 = load i32, i32* %19, align 4
  %286 = load i32*, i32** %31, align 8
  store i32 %285, i32* %286, align 4
  %287 = load i64, i64* %39, align 8
  store i64 %287, i64* %21, align 8
  %288 = load i32, i32* %19, align 4
  %289 = load i32, i32* %29, align 4
  %290 = icmp sle i32 %288, %289
  br i1 %290, label %291, label %292

291:                                              ; preds = %284
  store i32* %32, i32** %31, align 8
  br label %298

292:                                              ; preds = %284
  %293 = load i32*, i32** %38, align 8
  store i32* %293, i32** %31, align 8
  %294 = load i32*, i32** %38, align 8
  %295 = getelementptr inbounds i32, i32* %294, i64 0
  %296 = load i32, i32* %295, align 4
  store i32 %296, i32* %19, align 4
  br label %297

297:                                              ; preds = %292, %278
  br label %142

298:                                              ; preds = %291, %277, %259, %150
  %299 = load i32*, i32** %31, align 8
  store i32 0, i32* %299, align 4
  %300 = load i32*, i32** %30, align 8
  store i32 0, i32* %300, align 4
  %301 = load i64, i64* %36, align 8
  %302 = icmp ugt i64 %301, 384
  br i1 %302, label %303, label %308

303:                                              ; preds = %298
  %304 = load i64, i64* %36, align 8
  %305 = sub i64 %304, 384
  %306 = trunc i64 %305 to i32
  %307 = call i32 @MIN(i32 192, i32 %306)
  store i32 %307, i32* %6, align 4
  br label %319

308:                                              ; preds = %298
  %309 = load i32, i32* %35, align 4
  %310 = load i32, i32* %28, align 4
  %311 = add nsw i32 %310, 8
  %312 = icmp sgt i32 %309, %311
  %313 = zext i1 %312 to i32
  %314 = call i32 @assert(i32 %313)
  %315 = load i32, i32* %35, align 4
  %316 = load i32, i32* %28, align 4
  %317 = add nsw i32 %316, 8
  %318 = sub nsw i32 %315, %317
  store i32 %318, i32* %6, align 4
  br label %319

319:                                              ; preds = %308, %303
  %320 = load i32, i32* %6, align 4
  ret i32 %320
}

declare dso_local i64 @ZSTD_hashPtr(i64*, i32, i32) #1

declare dso_local i32 @DEBUGLOG(i32, i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i64 @ZSTD_count(i64*, i64*, i64*) #1

declare dso_local i64 @ZSTD_count_2segments(i64*, i64*, i64*, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
