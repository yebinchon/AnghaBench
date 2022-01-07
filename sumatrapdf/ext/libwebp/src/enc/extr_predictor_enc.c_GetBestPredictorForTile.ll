; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_predictor_enc.c_GetBestPredictorForTile.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_predictor_enc.c_GetBestPredictorForTile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_DIFF_COST = common dso_local global float 0.000000e+00, align 4
@MAX_TRANSFORM_BITS = common dso_local global i32 0, align 4
@kSpatialPredictorBias = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, [256 x i32]*, i32*, i32*, i32, i32, i32, i32*)* @GetBestPredictorForTile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GetBestPredictorForTile(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, [256 x i32]* %5, i32* %6, i32* %7, i32 %8, i32 %9, i32 %10, i32* %11) #0 {
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [256 x i32]*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32*, align 8
  %37 = alloca i32*, align 8
  %38 = alloca i32*, align 8
  %39 = alloca float, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca [4 x [256 x i32]], align 16
  %43 = alloca [4 x [256 x i32]], align 16
  %44 = alloca [256 x i32]*, align 8
  %45 = alloca [256 x i32]*, align 8
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i8*, align 8
  %49 = alloca i64, align 8
  %50 = alloca float, align 4
  %51 = alloca i32, align 4
  %52 = alloca i32, align 4
  %53 = alloca i32, align 4
  %54 = alloca i32*, align 8
  %55 = alloca [256 x i32]*, align 8
  store i32 %0, i32* %13, align 4
  store i32 %1, i32* %14, align 4
  store i32 %2, i32* %15, align 4
  store i32 %3, i32* %16, align 4
  store i32 %4, i32* %17, align 4
  store [256 x i32]* %5, [256 x i32]** %18, align 8
  store i32* %6, i32** %19, align 8
  store i32* %7, i32** %20, align 8
  store i32 %8, i32* %21, align 4
  store i32 %9, i32* %22, align 4
  store i32 %10, i32* %23, align 4
  store i32* %11, i32** %24, align 8
  store i32 14, i32* %25, align 4
  %56 = load i32, i32* %15, align 4
  %57 = load i32, i32* %17, align 4
  %58 = shl i32 %56, %57
  store i32 %58, i32* %26, align 4
  %59 = load i32, i32* %16, align 4
  %60 = load i32, i32* %17, align 4
  %61 = shl i32 %59, %60
  store i32 %61, i32* %27, align 4
  %62 = load i32, i32* %17, align 4
  %63 = shl i32 1, %62
  store i32 %63, i32* %28, align 4
  %64 = load i32, i32* %28, align 4
  %65 = load i32, i32* %14, align 4
  %66 = load i32, i32* %27, align 4
  %67 = sub nsw i32 %65, %66
  %68 = call i32 @GetMin(i32 %64, i32 %67)
  store i32 %68, i32* %29, align 4
  %69 = load i32, i32* %28, align 4
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* %26, align 4
  %72 = sub nsw i32 %70, %71
  %73 = call i32 @GetMin(i32 %69, i32 %72)
  store i32 %73, i32* %30, align 4
  %74 = load i32, i32* %26, align 4
  %75 = icmp sgt i32 %74, 0
  %76 = zext i1 %75 to i32
  store i32 %76, i32* %31, align 4
  %77 = load i32, i32* %26, align 4
  %78 = load i32, i32* %31, align 4
  %79 = sub nsw i32 %77, %78
  store i32 %79, i32* %32, align 4
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* %17, align 4
  %82 = call i32 @VP8LSubSampleSize(i32 %80, i32 %81)
  store i32 %82, i32* %33, align 4
  %83 = load i32, i32* %15, align 4
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %98

85:                                               ; preds = %12
  %86 = load i32*, i32** %24, align 8
  %87 = load i32, i32* %16, align 4
  %88 = load i32, i32* %33, align 4
  %89 = mul nsw i32 %87, %88
  %90 = load i32, i32* %15, align 4
  %91 = add nsw i32 %89, %90
  %92 = sub nsw i32 %91, 1
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %86, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = ashr i32 %95, 8
  %97 = and i32 %96, 255
  br label %99

98:                                               ; preds = %12
  br label %99

99:                                               ; preds = %98, %85
  %100 = phi i32 [ %97, %85 ], [ 255, %98 ]
  store i32 %100, i32* %34, align 4
  %101 = load i32, i32* %16, align 4
  %102 = icmp sgt i32 %101, 0
  br i1 %102, label %103, label %116

103:                                              ; preds = %99
  %104 = load i32*, i32** %24, align 8
  %105 = load i32, i32* %16, align 4
  %106 = sub nsw i32 %105, 1
  %107 = load i32, i32* %33, align 4
  %108 = mul nsw i32 %106, %107
  %109 = load i32, i32* %15, align 4
  %110 = add nsw i32 %108, %109
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %104, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = ashr i32 %113, 8
  %115 = and i32 %114, 255
  br label %117

116:                                              ; preds = %99
  br label %117

117:                                              ; preds = %116, %103
  %118 = phi i32 [ %115, %103 ], [ 255, %116 ]
  store i32 %118, i32* %35, align 4
  %119 = load i32*, i32** %19, align 8
  store i32* %119, i32** %36, align 8
  %120 = load i32*, i32** %36, align 8
  %121 = load i32, i32* %13, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = getelementptr inbounds i32, i32* %123, i64 1
  store i32* %124, i32** %37, align 8
  %125 = load i32*, i32** %37, align 8
  %126 = load i32, i32* %13, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = getelementptr inbounds i32, i32* %128, i64 1
  store i32* %129, i32** %38, align 8
  %130 = load float, float* @MAX_DIFF_COST, align 4
  store float %130, float* %39, align 4
  store i32 0, i32* %40, align 4
  %131 = getelementptr inbounds [4 x [256 x i32]], [4 x [256 x i32]]* %42, i64 0, i64 0
  store [256 x i32]* %131, [256 x i32]** %44, align 8
  %132 = getelementptr inbounds [4 x [256 x i32]], [4 x [256 x i32]]* %43, i64 0, i64 0
  store [256 x i32]* %132, [256 x i32]** %45, align 8
  %133 = load i32, i32* @MAX_TRANSFORM_BITS, align 4
  %134 = shl i32 1, %133
  %135 = zext i32 %134 to i64
  %136 = call i8* @llvm.stacksave()
  store i8* %136, i8** %48, align 8
  %137 = alloca i32, i64 %135, align 16
  store i64 %135, i64* %49, align 8
  %138 = load i32, i32* %17, align 4
  %139 = load i32, i32* @MAX_TRANSFORM_BITS, align 4
  %140 = icmp sle i32 %138, %139
  %141 = zext i1 %140 to i32
  %142 = call i32 @assert(i32 %141)
  %143 = load i32, i32* %30, align 4
  %144 = load i32, i32* @MAX_TRANSFORM_BITS, align 4
  %145 = shl i32 1, %144
  %146 = icmp sle i32 %143, %145
  %147 = zext i1 %146 to i32
  %148 = call i32 @assert(i32 %147)
  store i32 0, i32* %41, align 4
  br label %149

149:                                              ; preds = %287, %117
  %150 = load i32, i32* %41, align 4
  %151 = icmp slt i32 %150, 14
  br i1 %151, label %152, label %290

152:                                              ; preds = %149
  %153 = load [256 x i32]*, [256 x i32]** %44, align 8
  %154 = bitcast [256 x i32]* %153 to i32**
  %155 = call i32 @memset(i32** %154, i32 0, i32 4096)
  %156 = load i32, i32* %27, align 4
  %157 = icmp sgt i32 %156, 0
  br i1 %157, label %158, label %181

158:                                              ; preds = %152
  %159 = load i32*, i32** %37, align 8
  %160 = load i32, i32* %32, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = load i32*, i32** %20, align 8
  %164 = load i32, i32* %27, align 4
  %165 = sub nsw i32 %164, 1
  %166 = load i32, i32* %13, align 4
  %167 = mul nsw i32 %165, %166
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %163, i64 %168
  %170 = load i32, i32* %32, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  %173 = load i32, i32* %30, align 4
  %174 = load i32, i32* %31, align 4
  %175 = add nsw i32 %173, %174
  %176 = add nsw i32 %175, 1
  %177 = sext i32 %176 to i64
  %178 = mul i64 4, %177
  %179 = trunc i64 %178 to i32
  %180 = call i32 @memcpy(i32* %162, i32* %172, i32 %179)
  br label %181

181:                                              ; preds = %158, %152
  store i32 0, i32* %51, align 4
  br label %182

182:                                              ; preds = %250, %181
  %183 = load i32, i32* %51, align 4
  %184 = load i32, i32* %29, align 4
  %185 = icmp slt i32 %183, %184
  br i1 %185, label %186, label %253

186:                                              ; preds = %182
  %187 = load i32, i32* %27, align 4
  %188 = load i32, i32* %51, align 4
  %189 = add nsw i32 %187, %188
  store i32 %189, i32* %52, align 4
  %190 = load i32*, i32** %36, align 8
  store i32* %190, i32** %54, align 8
  %191 = load i32*, i32** %37, align 8
  store i32* %191, i32** %36, align 8
  %192 = load i32*, i32** %54, align 8
  store i32* %192, i32** %37, align 8
  %193 = load i32*, i32** %37, align 8
  %194 = load i32, i32* %32, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %193, i64 %195
  %197 = load i32*, i32** %20, align 8
  %198 = load i32, i32* %52, align 4
  %199 = load i32, i32* %13, align 4
  %200 = mul nsw i32 %198, %199
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %197, i64 %201
  %203 = load i32, i32* %32, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %202, i64 %204
  %206 = load i32, i32* %30, align 4
  %207 = load i32, i32* %31, align 4
  %208 = add nsw i32 %206, %207
  %209 = load i32, i32* %52, align 4
  %210 = add nsw i32 %209, 1
  %211 = load i32, i32* %14, align 4
  %212 = icmp slt i32 %210, %211
  %213 = zext i1 %212 to i32
  %214 = add nsw i32 %208, %213
  %215 = sext i32 %214 to i64
  %216 = mul i64 4, %215
  %217 = trunc i64 %216 to i32
  %218 = call i32 @memcpy(i32* %196, i32* %205, i32 %217)
  %219 = load i32, i32* %13, align 4
  %220 = load i32, i32* %14, align 4
  %221 = load i32*, i32** %36, align 8
  %222 = load i32*, i32** %37, align 8
  %223 = load i32*, i32** %38, align 8
  %224 = load i32, i32* %41, align 4
  %225 = load i32, i32* %26, align 4
  %226 = load i32, i32* %26, align 4
  %227 = load i32, i32* %30, align 4
  %228 = add nsw i32 %226, %227
  %229 = load i32, i32* %52, align 4
  %230 = load i32, i32* %21, align 4
  %231 = load i32, i32* %22, align 4
  %232 = load i32, i32* %23, align 4
  %233 = call i32 @GetResidual(i32 %219, i32 %220, i32* %221, i32* %222, i32* %223, i32 %224, i32 %225, i32 %228, i32 %229, i32 %230, i32 %231, i32 %232, i32* %137)
  store i32 0, i32* %53, align 4
  br label %234

234:                                              ; preds = %246, %186
  %235 = load i32, i32* %53, align 4
  %236 = load i32, i32* %30, align 4
  %237 = icmp slt i32 %235, %236
  br i1 %237, label %238, label %249

238:                                              ; preds = %234
  %239 = load [256 x i32]*, [256 x i32]** %44, align 8
  %240 = bitcast [256 x i32]* %239 to i32**
  %241 = load i32, i32* %53, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32, i32* %137, i64 %242
  %244 = load i32, i32* %243, align 4
  %245 = call i32 @UpdateHisto(i32** %240, i32 %244)
  br label %246

246:                                              ; preds = %238
  %247 = load i32, i32* %53, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %53, align 4
  br label %234

249:                                              ; preds = %234
  br label %250

250:                                              ; preds = %249
  %251 = load i32, i32* %51, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %51, align 4
  br label %182

253:                                              ; preds = %182
  %254 = load [256 x i32]*, [256 x i32]** %18, align 8
  %255 = bitcast [256 x i32]* %254 to i32**
  %256 = load [256 x i32]*, [256 x i32]** %44, align 8
  %257 = bitcast [256 x i32]* %256 to i32**
  %258 = call float @PredictionCostSpatialHistogram(i32** %255, i32** %257)
  store float %258, float* %50, align 4
  %259 = load i32, i32* %41, align 4
  %260 = load i32, i32* %34, align 4
  %261 = icmp eq i32 %259, %260
  br i1 %261, label %262, label %267

262:                                              ; preds = %253
  %263 = load i64, i64* @kSpatialPredictorBias, align 8
  %264 = sitofp i64 %263 to float
  %265 = load float, float* %50, align 4
  %266 = fsub float %265, %264
  store float %266, float* %50, align 4
  br label %267

267:                                              ; preds = %262, %253
  %268 = load i32, i32* %41, align 4
  %269 = load i32, i32* %35, align 4
  %270 = icmp eq i32 %268, %269
  br i1 %270, label %271, label %276

271:                                              ; preds = %267
  %272 = load i64, i64* @kSpatialPredictorBias, align 8
  %273 = sitofp i64 %272 to float
  %274 = load float, float* %50, align 4
  %275 = fsub float %274, %273
  store float %275, float* %50, align 4
  br label %276

276:                                              ; preds = %271, %267
  %277 = load float, float* %50, align 4
  %278 = load float, float* %39, align 4
  %279 = fcmp olt float %277, %278
  br i1 %279, label %280, label %286

280:                                              ; preds = %276
  %281 = load [256 x i32]*, [256 x i32]** %44, align 8
  store [256 x i32]* %281, [256 x i32]** %55, align 8
  %282 = load [256 x i32]*, [256 x i32]** %45, align 8
  store [256 x i32]* %282, [256 x i32]** %44, align 8
  %283 = load [256 x i32]*, [256 x i32]** %55, align 8
  store [256 x i32]* %283, [256 x i32]** %45, align 8
  %284 = load float, float* %50, align 4
  store float %284, float* %39, align 4
  %285 = load i32, i32* %41, align 4
  store i32 %285, i32* %40, align 4
  br label %286

286:                                              ; preds = %280, %276
  br label %287

287:                                              ; preds = %286
  %288 = load i32, i32* %41, align 4
  %289 = add nsw i32 %288, 1
  store i32 %289, i32* %41, align 4
  br label %149

290:                                              ; preds = %149
  store i32 0, i32* %46, align 4
  br label %291

291:                                              ; preds = %320, %290
  %292 = load i32, i32* %46, align 4
  %293 = icmp slt i32 %292, 4
  br i1 %293, label %294, label %323

294:                                              ; preds = %291
  store i32 0, i32* %47, align 4
  br label %295

295:                                              ; preds = %316, %294
  %296 = load i32, i32* %47, align 4
  %297 = icmp slt i32 %296, 256
  br i1 %297, label %298, label %319

298:                                              ; preds = %295
  %299 = load [256 x i32]*, [256 x i32]** %45, align 8
  %300 = load i32, i32* %46, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds [256 x i32], [256 x i32]* %299, i64 %301
  %303 = load i32, i32* %47, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds [256 x i32], [256 x i32]* %302, i64 0, i64 %304
  %306 = load i32, i32* %305, align 4
  %307 = load [256 x i32]*, [256 x i32]** %18, align 8
  %308 = load i32, i32* %46, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds [256 x i32], [256 x i32]* %307, i64 %309
  %311 = load i32, i32* %47, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds [256 x i32], [256 x i32]* %310, i64 0, i64 %312
  %314 = load i32, i32* %313, align 4
  %315 = add nsw i32 %314, %306
  store i32 %315, i32* %313, align 4
  br label %316

316:                                              ; preds = %298
  %317 = load i32, i32* %47, align 4
  %318 = add nsw i32 %317, 1
  store i32 %318, i32* %47, align 4
  br label %295

319:                                              ; preds = %295
  br label %320

320:                                              ; preds = %319
  %321 = load i32, i32* %46, align 4
  %322 = add nsw i32 %321, 1
  store i32 %322, i32* %46, align 4
  br label %291

323:                                              ; preds = %291
  %324 = load i32, i32* %40, align 4
  %325 = load i8*, i8** %48, align 8
  call void @llvm.stackrestore(i8* %325)
  ret i32 %324
}

declare dso_local i32 @GetMin(i32, i32) #1

declare dso_local i32 @VP8LSubSampleSize(i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memset(i32**, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @GetResidual(i32, i32, i32*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @UpdateHisto(i32**, i32) #1

declare dso_local float @PredictionCostSpatialHistogram(i32**, i32**) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
