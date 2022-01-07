; ModuleID = '/home/carl/AnghaBench/zstd/contrib/linux-kernel/lib/zstd/extr_compress.c_ZSTD_insertBtAndFindBestMatch.c'
source_filename = "/home/carl/AnghaBench/zstd/contrib/linux-kernel/lib/zstd/extr_compress.c_ZSTD_insertBtAndFindBestMatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, i32*, i64*, i64*, i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@ZSTD_REP_MOVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_7__*, i64*, i64*, i64*, i32, i32, i32)* @ZSTD_insertBtAndFindBestMatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ZSTD_insertBtAndFindBestMatch(%struct.TYPE_7__* %0, i64* %1, i64* %2, i64* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64*, align 8
  %25 = alloca i64*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i64*, align 8
  %28 = alloca i64*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32*, align 8
  %33 = alloca i32*, align 8
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i64, align 8
  %37 = alloca i32*, align 8
  %38 = alloca i64, align 8
  %39 = alloca i64*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %8, align 8
  store i64* %1, i64** %9, align 8
  store i64* %2, i64** %10, align 8
  store i64* %3, i64** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  store i32* %42, i32** %15, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 7
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %16, align 4
  %48 = load i64*, i64** %9, align 8
  %49 = load i32, i32* %16, align 4
  %50 = load i32, i32* %13, align 4
  %51 = call i64 @ZSTD_hashPtr(i64* %48, i32 %49, i32 %50)
  store i64 %51, i64* %17, align 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  store i32* %54, i32** %18, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 7
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = sub nsw i32 %59, 1
  store i32 %60, i32* %19, align 4
  %61 = load i32, i32* %19, align 4
  %62 = shl i32 1, %61
  %63 = sub nsw i32 %62, 1
  store i32 %63, i32* %20, align 4
  %64 = load i32*, i32** %15, align 8
  %65 = load i64, i64* %17, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %21, align 4
  store i64 0, i64* %22, align 8
  store i64 0, i64* %23, align 8
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 2
  %70 = load i64*, i64** %69, align 8
  store i64* %70, i64** %24, align 8
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 3
  %73 = load i64*, i64** %72, align 8
  store i64* %73, i64** %25, align 8
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 8
  store i32 %76, i32* %26, align 4
  %77 = load i64*, i64** %25, align 8
  %78 = load i32, i32* %26, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i64, i64* %77, i64 %79
  store i64* %80, i64** %27, align 8
  %81 = load i64*, i64** %24, align 8
  %82 = load i32, i32* %26, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %81, i64 %83
  store i64* %84, i64** %28, align 8
  %85 = load i64*, i64** %9, align 8
  %86 = load i64*, i64** %24, align 8
  %87 = ptrtoint i64* %85 to i64
  %88 = ptrtoint i64* %86 to i64
  %89 = sub i64 %87, %88
  %90 = sdiv exact i64 %89, 8
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %29, align 4
  %92 = load i32, i32* %20, align 4
  %93 = load i32, i32* %29, align 4
  %94 = icmp sge i32 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %7
  br label %100

96:                                               ; preds = %7
  %97 = load i32, i32* %29, align 4
  %98 = load i32, i32* %20, align 4
  %99 = sub nsw i32 %97, %98
  br label %100

100:                                              ; preds = %96, %95
  %101 = phi i32 [ 0, %95 ], [ %99, %96 ]
  store i32 %101, i32* %30, align 4
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 5
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %31, align 4
  %105 = load i32*, i32** %18, align 8
  %106 = load i32, i32* %29, align 4
  %107 = load i32, i32* %20, align 4
  %108 = and i32 %106, %107
  %109 = mul nsw i32 2, %108
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %105, i64 %110
  store i32* %111, i32** %32, align 8
  %112 = load i32*, i32** %18, align 8
  %113 = load i32, i32* %29, align 4
  %114 = load i32, i32* %20, align 4
  %115 = and i32 %113, %114
  %116 = mul nsw i32 2, %115
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %112, i64 %117
  %119 = getelementptr inbounds i32, i32* %118, i64 1
  store i32* %119, i32** %33, align 8
  %120 = load i32, i32* %29, align 4
  %121 = add nsw i32 %120, 8
  store i32 %121, i32* %34, align 4
  store i64 0, i64* %36, align 8
  %122 = load i32, i32* %29, align 4
  %123 = load i32*, i32** %15, align 8
  %124 = load i64, i64* %17, align 8
  %125 = getelementptr inbounds i32, i32* %123, i64 %124
  store i32 %122, i32* %125, align 4
  br label %126

126:                                              ; preds = %306, %100
  %127 = load i32, i32* %12, align 4
  %128 = add nsw i32 %127, -1
  store i32 %128, i32* %12, align 4
  %129 = icmp ne i32 %127, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %126
  %131 = load i32, i32* %21, align 4
  %132 = load i32, i32* %31, align 4
  %133 = icmp sgt i32 %131, %132
  br label %134

134:                                              ; preds = %130, %126
  %135 = phi i1 [ false, %126 ], [ %133, %130 ]
  br i1 %135, label %136, label %307

136:                                              ; preds = %134
  %137 = load i32*, i32** %18, align 8
  %138 = load i32, i32* %21, align 4
  %139 = load i32, i32* %20, align 4
  %140 = and i32 %138, %139
  %141 = mul nsw i32 2, %140
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %137, i64 %142
  store i32* %143, i32** %37, align 8
  %144 = load i64, i64* %22, align 8
  %145 = load i64, i64* %23, align 8
  %146 = call i64 @MIN(i64 %144, i64 %145)
  store i64 %146, i64* %38, align 8
  %147 = load i32, i32* %14, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %157

149:                                              ; preds = %136
  %150 = load i32, i32* %21, align 4
  %151 = sext i32 %150 to i64
  %152 = load i64, i64* %38, align 8
  %153 = add i64 %151, %152
  %154 = load i32, i32* %26, align 4
  %155 = sext i32 %154 to i64
  %156 = icmp uge i64 %153, %155
  br i1 %156, label %157, label %186

157:                                              ; preds = %149, %136
  %158 = load i64*, i64** %24, align 8
  %159 = load i32, i32* %21, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i64, i64* %158, i64 %160
  store i64* %161, i64** %39, align 8
  %162 = load i64*, i64** %39, align 8
  %163 = load i64, i64* %38, align 8
  %164 = getelementptr inbounds i64, i64* %162, i64 %163
  %165 = load i64, i64* %164, align 8
  %166 = load i64*, i64** %9, align 8
  %167 = load i64, i64* %38, align 8
  %168 = getelementptr inbounds i64, i64* %166, i64 %167
  %169 = load i64, i64* %168, align 8
  %170 = icmp eq i64 %165, %169
  br i1 %170, label %171, label %185

171:                                              ; preds = %157
  %172 = load i64*, i64** %9, align 8
  %173 = load i64, i64* %38, align 8
  %174 = getelementptr inbounds i64, i64* %172, i64 %173
  %175 = getelementptr inbounds i64, i64* %174, i64 1
  %176 = load i64*, i64** %39, align 8
  %177 = load i64, i64* %38, align 8
  %178 = getelementptr inbounds i64, i64* %176, i64 %177
  %179 = getelementptr inbounds i64, i64* %178, i64 1
  %180 = load i64*, i64** %10, align 8
  %181 = call i64 @ZSTD_count(i64* %175, i64* %179, i64* %180)
  %182 = add nsw i64 %181, 1
  %183 = load i64, i64* %38, align 8
  %184 = add i64 %183, %182
  store i64 %184, i64* %38, align 8
  br label %185

185:                                              ; preds = %171, %157
  br label %216

186:                                              ; preds = %149
  %187 = load i64*, i64** %25, align 8
  %188 = load i32, i32* %21, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i64, i64* %187, i64 %189
  store i64* %190, i64** %39, align 8
  %191 = load i64*, i64** %9, align 8
  %192 = load i64, i64* %38, align 8
  %193 = getelementptr inbounds i64, i64* %191, i64 %192
  %194 = load i64*, i64** %39, align 8
  %195 = load i64, i64* %38, align 8
  %196 = getelementptr inbounds i64, i64* %194, i64 %195
  %197 = load i64*, i64** %10, align 8
  %198 = load i64*, i64** %27, align 8
  %199 = load i64*, i64** %28, align 8
  %200 = call i64 @ZSTD_count_2segments(i64* %193, i64* %196, i64* %197, i64* %198, i64* %199)
  %201 = load i64, i64* %38, align 8
  %202 = add i64 %201, %200
  store i64 %202, i64* %38, align 8
  %203 = load i32, i32* %21, align 4
  %204 = sext i32 %203 to i64
  %205 = load i64, i64* %38, align 8
  %206 = add i64 %204, %205
  %207 = load i32, i32* %26, align 4
  %208 = sext i32 %207 to i64
  %209 = icmp uge i64 %206, %208
  br i1 %209, label %210, label %215

210:                                              ; preds = %186
  %211 = load i64*, i64** %24, align 8
  %212 = load i32, i32* %21, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i64, i64* %211, i64 %213
  store i64* %214, i64** %39, align 8
  br label %215

215:                                              ; preds = %210, %186
  br label %216

216:                                              ; preds = %215, %185
  %217 = load i64, i64* %38, align 8
  %218 = load i64, i64* %36, align 8
  %219 = icmp ugt i64 %217, %218
  br i1 %219, label %220, label %269

220:                                              ; preds = %216
  %221 = load i64, i64* %38, align 8
  %222 = load i32, i32* %34, align 4
  %223 = load i32, i32* %21, align 4
  %224 = sub nsw i32 %222, %223
  %225 = sext i32 %224 to i64
  %226 = icmp ugt i64 %221, %225
  br i1 %226, label %227, label %232

227:                                              ; preds = %220
  %228 = load i32, i32* %21, align 4
  %229 = load i64, i64* %38, align 8
  %230 = trunc i64 %229 to i32
  %231 = add nsw i32 %228, %230
  store i32 %231, i32* %34, align 4
  br label %232

232:                                              ; preds = %227, %220
  %233 = load i64, i64* %38, align 8
  %234 = load i64, i64* %36, align 8
  %235 = sub i64 %233, %234
  %236 = trunc i64 %235 to i32
  %237 = mul nsw i32 4, %236
  %238 = load i32, i32* %29, align 4
  %239 = load i32, i32* %21, align 4
  %240 = sub nsw i32 %238, %239
  %241 = add nsw i32 %240, 1
  %242 = call i64 @ZSTD_highbit32(i32 %241)
  %243 = load i64*, i64** %11, align 8
  %244 = getelementptr inbounds i64, i64* %243, i64 0
  %245 = load i64, i64* %244, align 8
  %246 = trunc i64 %245 to i32
  %247 = add nsw i32 %246, 1
  %248 = call i64 @ZSTD_highbit32(i32 %247)
  %249 = sub nsw i64 %242, %248
  %250 = trunc i64 %249 to i32
  %251 = icmp sgt i32 %237, %250
  br i1 %251, label %252, label %261

252:                                              ; preds = %232
  %253 = load i64, i64* %38, align 8
  store i64 %253, i64* %36, align 8
  %254 = load i32, i32* @ZSTD_REP_MOVE, align 4
  %255 = load i32, i32* %29, align 4
  %256 = add nsw i32 %254, %255
  %257 = load i32, i32* %21, align 4
  %258 = sub nsw i32 %256, %257
  %259 = sext i32 %258 to i64
  %260 = load i64*, i64** %11, align 8
  store i64 %259, i64* %260, align 8
  br label %261

261:                                              ; preds = %252, %232
  %262 = load i64*, i64** %9, align 8
  %263 = load i64, i64* %38, align 8
  %264 = getelementptr inbounds i64, i64* %262, i64 %263
  %265 = load i64*, i64** %10, align 8
  %266 = icmp eq i64* %264, %265
  br i1 %266, label %267, label %268

267:                                              ; preds = %261
  br label %307

268:                                              ; preds = %261
  br label %269

269:                                              ; preds = %268, %216
  %270 = load i64*, i64** %39, align 8
  %271 = load i64, i64* %38, align 8
  %272 = getelementptr inbounds i64, i64* %270, i64 %271
  %273 = load i64, i64* %272, align 8
  %274 = load i64*, i64** %9, align 8
  %275 = load i64, i64* %38, align 8
  %276 = getelementptr inbounds i64, i64* %274, i64 %275
  %277 = load i64, i64* %276, align 8
  %278 = icmp slt i64 %273, %277
  br i1 %278, label %279, label %293

279:                                              ; preds = %269
  %280 = load i32, i32* %21, align 4
  %281 = load i32*, i32** %32, align 8
  store i32 %280, i32* %281, align 4
  %282 = load i64, i64* %38, align 8
  store i64 %282, i64* %22, align 8
  %283 = load i32, i32* %21, align 4
  %284 = load i32, i32* %30, align 4
  %285 = icmp sle i32 %283, %284
  br i1 %285, label %286, label %287

286:                                              ; preds = %279
  store i32* %35, i32** %32, align 8
  br label %307

287:                                              ; preds = %279
  %288 = load i32*, i32** %37, align 8
  %289 = getelementptr inbounds i32, i32* %288, i64 1
  store i32* %289, i32** %32, align 8
  %290 = load i32*, i32** %37, align 8
  %291 = getelementptr inbounds i32, i32* %290, i64 1
  %292 = load i32, i32* %291, align 4
  store i32 %292, i32* %21, align 4
  br label %306

293:                                              ; preds = %269
  %294 = load i32, i32* %21, align 4
  %295 = load i32*, i32** %33, align 8
  store i32 %294, i32* %295, align 4
  %296 = load i64, i64* %38, align 8
  store i64 %296, i64* %23, align 8
  %297 = load i32, i32* %21, align 4
  %298 = load i32, i32* %30, align 4
  %299 = icmp sle i32 %297, %298
  br i1 %299, label %300, label %301

300:                                              ; preds = %293
  store i32* %35, i32** %33, align 8
  br label %307

301:                                              ; preds = %293
  %302 = load i32*, i32** %37, align 8
  store i32* %302, i32** %33, align 8
  %303 = load i32*, i32** %37, align 8
  %304 = getelementptr inbounds i32, i32* %303, i64 0
  %305 = load i32, i32* %304, align 4
  store i32 %305, i32* %21, align 4
  br label %306

306:                                              ; preds = %301, %287
  br label %126

307:                                              ; preds = %300, %286, %267, %134
  %308 = load i32*, i32** %33, align 8
  store i32 0, i32* %308, align 4
  %309 = load i32*, i32** %32, align 8
  store i32 0, i32* %309, align 4
  %310 = load i32, i32* %34, align 4
  %311 = load i32, i32* %29, align 4
  %312 = add nsw i32 %311, 8
  %313 = icmp sgt i32 %310, %312
  br i1 %313, label %314, label %317

314:                                              ; preds = %307
  %315 = load i32, i32* %34, align 4
  %316 = sub nsw i32 %315, 8
  br label %320

317:                                              ; preds = %307
  %318 = load i32, i32* %29, align 4
  %319 = add nsw i32 %318, 1
  br label %320

320:                                              ; preds = %317, %314
  %321 = phi i32 [ %316, %314 ], [ %319, %317 ]
  %322 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %323 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %322, i32 0, i32 6
  store i32 %321, i32* %323, align 8
  %324 = load i64, i64* %36, align 8
  ret i64 %324
}

declare dso_local i64 @ZSTD_hashPtr(i64*, i32, i32) #1

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i64 @ZSTD_count(i64*, i64*, i64*) #1

declare dso_local i64 @ZSTD_count_2segments(i64*, i64*, i64*, i64*, i64*) #1

declare dso_local i64 @ZSTD_highbit32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
