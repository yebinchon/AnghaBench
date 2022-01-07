; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_frame_enc.c_VP8EncTokenLoop.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_frame_enc.c_VP8EncTokenLoop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, i32, i32, i64, i32, i32, i64, i64, i32, i64, i32, %struct.TYPE_23__, %struct.TYPE_20__, %struct.TYPE_19__* }
%struct.TYPE_23__ = type { i64, i64 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_24__ = type { double, i64, i32, i32, i32, i32 }
%struct.TYPE_21__ = type { i32, i64 }

@MIN_COUNT = common dso_local global i32 0, align 4
@RD_OPT_BASIC = common dso_local global i64 0, align 8
@DQ_LIMIT = common dso_local global i64 0, align 8
@VP8_ENC_ERROR_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@HEADER_SIZE_ESTIMATE = common dso_local global i64 0, align 8
@PARTITION0_SIZE_LIMIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @VP8EncTokenLoop(%struct.TYPE_22__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_24__, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_21__, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %3, align 8
  %19 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = mul nsw i32 %21, %24
  %26 = ashr i32 %25, 3
  store i32 %26, i32* %4, align 4
  %27 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %27, i32 0, i32 13
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %5, align 4
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %6, align 4
  %35 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %35, i32 0, i32 11
  store %struct.TYPE_23__* %36, %struct.TYPE_23__** %8, align 8
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %9, align 8
  %40 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = mul nsw i32 %42, %45
  %47 = mul nsw i32 %46, 384
  store i32 %47, i32* %10, align 4
  %48 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %49 = call i32 @InitPassStats(%struct.TYPE_22__* %48, %struct.TYPE_24__* %11)
  %50 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %51 = call i32 @PreLoopInitialize(%struct.TYPE_22__* %50)
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %12, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %304

55:                                               ; preds = %1
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @MIN_COUNT, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load i32, i32* @MIN_COUNT, align 4
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %59, %55
  %62 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = icmp eq i32 %64, 1
  %66 = zext i1 %65 to i32
  %67 = call i32 @assert(i32 %66)
  %68 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @assert(i32 %70)
  %72 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %74, 0
  %76 = zext i1 %75 to i32
  %77 = call i32 @assert(i32 %76)
  %78 = load i64, i64* %9, align 8
  %79 = load i64, i64* @RD_OPT_BASIC, align 8
  %80 = icmp sge i64 %78, %79
  %81 = zext i1 %80 to i32
  %82 = call i32 @assert(i32 %81)
  %83 = load i32, i32* %5, align 4
  %84 = icmp sgt i32 %83, 0
  %85 = zext i1 %84 to i32
  %86 = call i32 @assert(i32 %85)
  br label %87

87:                                               ; preds = %260, %250, %61
  %88 = load i32, i32* %12, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %87
  %91 = load i32, i32* %5, align 4
  %92 = add nsw i32 %91, -1
  store i32 %92, i32* %5, align 4
  %93 = icmp sgt i32 %91, 0
  br label %94

94:                                               ; preds = %90, %87
  %95 = phi i1 [ false, %87 ], [ %93, %90 ]
  br i1 %95, label %96, label %261

96:                                               ; preds = %94
  %97 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %11, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = call i64 @fabs(i32 %98)
  %100 = load i64, i64* @DQ_LIMIT, align 8
  %101 = icmp sle i64 %99, %100
  br i1 %101, label %110, label %102

102:                                              ; preds = %96
  %103 = load i32, i32* %5, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %110, label %105

105:                                              ; preds = %102
  %106 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %106, i32 0, i32 6
  %108 = load i64, i64* %107, align 8
  %109 = icmp eq i64 %108, 0
  br label %110

110:                                              ; preds = %105, %102, %96
  %111 = phi i1 [ true, %102 ], [ true, %96 ], [ %109, %105 ]
  %112 = zext i1 %111 to i32
  store i32 %112, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %113 = load i32, i32* %4, align 4
  store i32 %113, i32* %16, align 4
  %114 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %115 = call i32 @VP8IteratorInit(%struct.TYPE_22__* %114, i32* %7)
  %116 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %11, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @SetLoopParams(%struct.TYPE_22__* %116, i32 %118)
  %120 = load i32, i32* %13, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %110
  %123 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %124 = call i32 @ResetTokenStats(%struct.TYPE_22__* %123)
  %125 = call i32 @VP8InitFilter(i32* %7)
  br label %126

126:                                              ; preds = %122, %110
  %127 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %127, i32 0, i32 10
  %129 = call i32 @VP8TBufferClear(i32* %128)
  br label %130

130:                                              ; preds = %181, %126
  %131 = call i32 @VP8IteratorImport(i32* %7, i32* null)
  %132 = load i32, i32* %16, align 4
  %133 = add nsw i32 %132, -1
  store i32 %133, i32* %16, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %130
  %136 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %137 = call i32 @FinalizeTokenProbas(%struct.TYPE_23__* %136)
  %138 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %139 = call i32 @VP8CalculateLevelCosts(%struct.TYPE_23__* %138)
  %140 = load i32, i32* %4, align 4
  store i32 %140, i32* %16, align 4
  br label %141

141:                                              ; preds = %135, %130
  %142 = load i64, i64* %9, align 8
  %143 = call i32 @VP8Decimate(i32* %7, %struct.TYPE_21__* %17, i64 %142)
  %144 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %144, i32 0, i32 10
  %146 = call i32 @RecordTokens(i32* %7, %struct.TYPE_21__* %17, i32* %145)
  store i32 %146, i32* %12, align 4
  %147 = load i32, i32* %12, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %155, label %149

149:                                              ; preds = %141
  %150 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %150, i32 0, i32 8
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @VP8_ENC_ERROR_OUT_OF_MEMORY, align 4
  %154 = call i32 @WebPEncodingSetError(i32 %152, i32 %153)
  br label %183

155:                                              ; preds = %141
  %156 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* %14, align 4
  %159 = add nsw i32 %158, %157
  store i32 %159, i32* %14, align 4
  %160 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = load i32, i32* %15, align 4
  %163 = sext i32 %162 to i64
  %164 = add nsw i64 %163, %161
  %165 = trunc i64 %164 to i32
  store i32 %165, i32* %15, align 4
  %166 = load i32, i32* %13, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %173

168:                                              ; preds = %155
  %169 = call i32 @StoreSideInfo(i32* %7)
  %170 = call i32 @VP8StoreFilterStats(i32* %7)
  %171 = call i32 @VP8IteratorExport(i32* %7)
  %172 = call i32 @VP8IteratorProgress(i32* %7, i32 20)
  store i32 %172, i32* %12, align 4
  br label %173

173:                                              ; preds = %168, %155
  %174 = call i32 @VP8IteratorSaveBoundary(i32* %7)
  br label %175

175:                                              ; preds = %173
  %176 = load i32, i32* %12, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %175
  %179 = call i64 @VP8IteratorNext(i32* %7)
  %180 = icmp ne i64 %179, 0
  br label %181

181:                                              ; preds = %178, %175
  %182 = phi i1 [ false, %175 ], [ %180, %178 ]
  br i1 %182, label %130, label %183

183:                                              ; preds = %181, %149
  %184 = load i32, i32* %12, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %187, label %186

186:                                              ; preds = %183
  br label %261

187:                                              ; preds = %183
  %188 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %189 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %188, i32 0, i32 12
  %190 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* %14, align 4
  %193 = add nsw i32 %192, %191
  store i32 %193, i32* %14, align 4
  %194 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %11, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %225

197:                                              ; preds = %187
  %198 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %199 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %198, i32 0, i32 11
  %200 = call i32 @FinalizeTokenProbas(%struct.TYPE_23__* %199)
  store i32 %200, i32* %18, align 4
  %201 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %202 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %201, i32 0, i32 10
  %203 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %204 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %203, i32 0, i32 1
  %205 = load i64, i64* %204, align 8
  %206 = inttoptr i64 %205 to i32*
  %207 = call i64 @VP8EstimateTokenSize(i32* %202, i32* %206)
  %208 = load i32, i32* %18, align 4
  %209 = sext i32 %208 to i64
  %210 = add nsw i64 %209, %207
  %211 = trunc i64 %210 to i32
  store i32 %211, i32* %18, align 4
  %212 = load i32, i32* %18, align 4
  %213 = load i32, i32* %14, align 4
  %214 = add nsw i32 %212, %213
  %215 = add nsw i32 %214, 1024
  %216 = ashr i32 %215, 11
  store i32 %216, i32* %18, align 4
  %217 = load i64, i64* @HEADER_SIZE_ESTIMATE, align 8
  %218 = load i32, i32* %18, align 4
  %219 = sext i32 %218 to i64
  %220 = add nsw i64 %219, %217
  %221 = trunc i64 %220 to i32
  store i32 %221, i32* %18, align 4
  %222 = load i32, i32* %18, align 4
  %223 = sitofp i32 %222 to double
  %224 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %11, i32 0, i32 0
  store double %223, double* %224, align 8
  br label %230

225:                                              ; preds = %187
  %226 = load i32, i32* %15, align 4
  %227 = load i32, i32* %10, align 4
  %228 = call double @GetPSNR(i32 %226, i32 %227)
  %229 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %11, i32 0, i32 0
  store double %228, double* %229, align 8
  br label %230

230:                                              ; preds = %225, %197
  %231 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %232 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %231, i32 0, i32 6
  %233 = load i64, i64* %232, align 8
  %234 = icmp sgt i64 %233, 0
  br i1 %234, label %235, label %251

235:                                              ; preds = %230
  %236 = load i32, i32* %14, align 4
  %237 = load i32, i32* @PARTITION0_SIZE_LIMIT, align 4
  %238 = icmp sgt i32 %236, %237
  br i1 %238, label %239, label %251

239:                                              ; preds = %235
  %240 = load i32, i32* %5, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %5, align 4
  %242 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %243 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %242, i32 0, i32 6
  %244 = load i64, i64* %243, align 8
  %245 = ashr i64 %244, 1
  store i64 %245, i64* %243, align 8
  %246 = load i32, i32* %13, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %250

248:                                              ; preds = %239
  %249 = call i32 @ResetSideInfo(i32* %7)
  br label %250

250:                                              ; preds = %248, %239
  br label %87

251:                                              ; preds = %235, %230
  %252 = load i32, i32* %13, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %255

254:                                              ; preds = %251
  br label %261

255:                                              ; preds = %251
  %256 = load i32, i32* %6, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %260

258:                                              ; preds = %255
  %259 = call i32 @ComputeNextQ(%struct.TYPE_24__* %11)
  br label %260

260:                                              ; preds = %258, %255
  br label %87

261:                                              ; preds = %254, %186, %94
  %262 = load i32, i32* %12, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %284

264:                                              ; preds = %261
  %265 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %11, i32 0, i32 1
  %266 = load i64, i64* %265, align 8
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %272, label %268

268:                                              ; preds = %264
  %269 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %270 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %269, i32 0, i32 11
  %271 = call i32 @FinalizeTokenProbas(%struct.TYPE_23__* %270)
  br label %272

272:                                              ; preds = %268, %264
  %273 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %274 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %273, i32 0, i32 10
  %275 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %276 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %275, i32 0, i32 9
  %277 = load i64, i64* %276, align 8
  %278 = add nsw i64 %277, 0
  %279 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %280 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %279, i32 0, i32 1
  %281 = load i64, i64* %280, align 8
  %282 = inttoptr i64 %281 to i32*
  %283 = call i32 @VP8EmitTokens(i32* %274, i64 %278, i32* %282, i32 1)
  store i32 %283, i32* %12, align 4
  br label %284

284:                                              ; preds = %272, %261
  %285 = load i32, i32* %12, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %299

287:                                              ; preds = %284
  %288 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %289 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %288, i32 0, i32 8
  %290 = load i32, i32* %289, align 8
  %291 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %292 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %291, i32 0, i32 7
  %293 = load i64, i64* %292, align 8
  %294 = add nsw i64 %293, 20
  %295 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %296 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %295, i32 0, i32 7
  %297 = call i64 @WebPReportProgress(i32 %290, i64 %294, i64* %296)
  %298 = icmp ne i64 %297, 0
  br label %299

299:                                              ; preds = %287, %284
  %300 = phi i1 [ false, %284 ], [ %298, %287 ]
  %301 = zext i1 %300 to i32
  store i32 %301, i32* %12, align 4
  %302 = load i32, i32* %12, align 4
  %303 = call i32 @PostLoopFinalize(i32* %7, i32 %302)
  store i32 %303, i32* %2, align 4
  br label %304

304:                                              ; preds = %299, %54
  %305 = load i32, i32* %2, align 4
  ret i32 %305
}

declare dso_local i32 @InitPassStats(%struct.TYPE_22__*, %struct.TYPE_24__*) #1

declare dso_local i32 @PreLoopInitialize(%struct.TYPE_22__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @fabs(i32) #1

declare dso_local i32 @VP8IteratorInit(%struct.TYPE_22__*, i32*) #1

declare dso_local i32 @SetLoopParams(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @ResetTokenStats(%struct.TYPE_22__*) #1

declare dso_local i32 @VP8InitFilter(i32*) #1

declare dso_local i32 @VP8TBufferClear(i32*) #1

declare dso_local i32 @VP8IteratorImport(i32*, i32*) #1

declare dso_local i32 @FinalizeTokenProbas(%struct.TYPE_23__*) #1

declare dso_local i32 @VP8CalculateLevelCosts(%struct.TYPE_23__*) #1

declare dso_local i32 @VP8Decimate(i32*, %struct.TYPE_21__*, i64) #1

declare dso_local i32 @RecordTokens(i32*, %struct.TYPE_21__*, i32*) #1

declare dso_local i32 @WebPEncodingSetError(i32, i32) #1

declare dso_local i32 @StoreSideInfo(i32*) #1

declare dso_local i32 @VP8StoreFilterStats(i32*) #1

declare dso_local i32 @VP8IteratorExport(i32*) #1

declare dso_local i32 @VP8IteratorProgress(i32*, i32) #1

declare dso_local i32 @VP8IteratorSaveBoundary(i32*) #1

declare dso_local i64 @VP8IteratorNext(i32*) #1

declare dso_local i64 @VP8EstimateTokenSize(i32*, i32*) #1

declare dso_local double @GetPSNR(i32, i32) #1

declare dso_local i32 @ResetSideInfo(i32*) #1

declare dso_local i32 @ComputeNextQ(%struct.TYPE_24__*) #1

declare dso_local i32 @VP8EmitTokens(i32*, i64, i32*, i32) #1

declare dso_local i64 @WebPReportProgress(i32, i64, i64*) #1

declare dso_local i32 @PostLoopFinalize(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
