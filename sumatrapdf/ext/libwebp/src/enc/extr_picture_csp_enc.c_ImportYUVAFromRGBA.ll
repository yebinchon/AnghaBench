; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_picture_csp_enc.c_ImportYUVAFromRGBA.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_picture_csp_enc.c_ImportYUVAFromRGBA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i64, i32 }

@WEBP_YUV420A = common dso_local global i32 0, align 4
@WEBP_YUV420 = common dso_local global i32 0, align 4
@kMinDimensionIterativeConversion = common dso_local global i32 0, align 4
@kAlphaFix = common dso_local global i32 0, align 4
@kGammaFix = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32*, i32, i32, float, i32, %struct.TYPE_5__*)* @ImportYUVAFromRGBA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ImportYUVAFromRGBA(i32* %0, i32* %1, i32* %2, i32* %3, i32 %4, i32 %5, float %6, i32 %7, %struct.TYPE_5__* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca float, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_5__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32*, align 8
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  store i32* %0, i32** %11, align 8
  store i32* %1, i32** %12, align 8
  store i32* %2, i32** %13, align 8
  store i32* %3, i32** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store float %6, float* %17, align 4
  store i32 %7, i32* %18, align 4
  store %struct.TYPE_5__* %8, %struct.TYPE_5__** %19, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %21, align 4
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %22, align 4
  %42 = load i32*, i32** %14, align 8
  %43 = load i32, i32* %21, align 4
  %44 = load i32, i32* %22, align 4
  %45 = load i32, i32* %15, align 4
  %46 = load i32, i32* %16, align 4
  %47 = call i32 @CheckNonOpaque(i32* %42, i32 %43, i32 %44, i32 %45, i32 %46)
  store i32 %47, i32* %23, align 4
  %48 = load i32*, i32** %11, align 8
  %49 = load i32*, i32** %13, align 8
  %50 = icmp ult i32* %48, %49
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %24, align 4
  %52 = load i32, i32* %23, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %9
  %55 = load i32, i32* @WEBP_YUV420A, align 4
  br label %58

56:                                               ; preds = %9
  %57 = load i32, i32* @WEBP_YUV420, align 4
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi i32 [ %55, %54 ], [ %57, %56 ]
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 10
  store i32 %59, i32* %61, align 8
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 9
  store i64 0, i64* %63, align 8
  %64 = load i32, i32* %21, align 4
  %65 = load i32, i32* @kMinDimensionIterativeConversion, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %71, label %67

67:                                               ; preds = %58
  %68 = load i32, i32* %22, align 4
  %69 = load i32, i32* @kMinDimensionIterativeConversion, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %67, %58
  store i32 0, i32* %18, align 4
  br label %72

72:                                               ; preds = %71, %67
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %74 = load i32, i32* %21, align 4
  %75 = load i32, i32* %22, align 4
  %76 = call i32 @WebPPictureAllocYUVA(%struct.TYPE_5__* %73, i32 %74, i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %72
  store i32 0, i32* %10, align 4
  br label %424

79:                                               ; preds = %72
  %80 = load i32, i32* %23, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %79
  %83 = load i32, i32* %15, align 4
  %84 = icmp eq i32 %83, 4
  %85 = zext i1 %84 to i32
  %86 = call i32 @assert(i32 %85)
  br label %87

87:                                               ; preds = %82, %79
  %88 = load i32, i32* %18, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %117

90:                                               ; preds = %87
  %91 = call i32 (...) @InitGammaTablesS()
  %92 = load i32*, i32** %11, align 8
  %93 = load i32*, i32** %12, align 8
  %94 = load i32*, i32** %13, align 8
  %95 = load i32, i32* %15, align 4
  %96 = load i32, i32* %16, align 4
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %98 = call i32 @PreprocessARGB(i32* %92, i32* %93, i32* %94, i32 %95, i32 %96, %struct.TYPE_5__* %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %90
  store i32 0, i32* %10, align 4
  br label %424

101:                                              ; preds = %90
  %102 = load i32, i32* %23, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %116

104:                                              ; preds = %101
  %105 = load i32*, i32** %14, align 8
  %106 = load i32, i32* %16, align 4
  %107 = load i32, i32* %21, align 4
  %108 = load i32, i32* %22, align 4
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 5
  %111 = load i32*, i32** %110, align 8
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @WebPExtractAlpha(i32* %105, i32 %106, i32 %107, i32 %108, i32* %111, i32 %114)
  br label %116

116:                                              ; preds = %104, %101
  br label %423

117:                                              ; preds = %87
  %118 = load i32, i32* %21, align 4
  %119 = add nsw i32 %118, 1
  %120 = ashr i32 %119, 1
  store i32 %120, i32* %25, align 4
  %121 = load i32, i32* %15, align 4
  %122 = icmp eq i32 %121, 3
  %123 = zext i1 %122 to i32
  store i32 %123, i32* %26, align 4
  %124 = load i32, i32* %25, align 4
  %125 = mul nsw i32 4, %124
  %126 = call i64 @WebPSafeMalloc(i32 %125, i32 4)
  %127 = inttoptr i64 %126 to i32*
  store i32* %127, i32** %27, align 8
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 8
  %130 = load i32*, i32** %129, align 8
  store i32* %130, i32** %28, align 8
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 7
  %133 = load i32*, i32** %132, align 8
  store i32* %133, i32** %29, align 8
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 6
  %136 = load i32*, i32** %135, align 8
  store i32* %136, i32** %30, align 8
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 5
  %139 = load i32*, i32** %138, align 8
  store i32* %139, i32** %31, align 8
  store i32* null, i32** %33, align 8
  %140 = load float, float* %17, align 4
  %141 = fpext float %140 to double
  %142 = fcmp ogt double %141, 0.000000e+00
  br i1 %142, label %143, label %146

143:                                              ; preds = %117
  %144 = load float, float* %17, align 4
  %145 = call i32 @VP8InitRandom(i32* %32, float %144)
  store i32* %32, i32** %33, align 8
  store i32 0, i32* %26, align 4
  br label %146

146:                                              ; preds = %143, %117
  %147 = call i32 (...) @WebPInitConvertARGBToYUV()
  %148 = call i32 (...) @InitGammaTables()
  %149 = load i32*, i32** %27, align 8
  %150 = icmp eq i32* %149, null
  br i1 %150, label %151, label %152

151:                                              ; preds = %146
  store i32 0, i32* %10, align 4
  br label %424

152:                                              ; preds = %146
  store i32 0, i32* %20, align 4
  br label %153

153:                                              ; preds = %336, %152
  %154 = load i32, i32* %20, align 4
  %155 = load i32, i32* %22, align 4
  %156 = ashr i32 %155, 1
  %157 = icmp slt i32 %154, %156
  br i1 %157, label %158, label %339

158:                                              ; preds = %153
  %159 = load i32, i32* %23, align 4
  store i32 %159, i32* %34, align 4
  %160 = load i32, i32* %26, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %200

162:                                              ; preds = %158
  %163 = load i32, i32* %24, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %182

165:                                              ; preds = %162
  %166 = load i32*, i32** %11, align 8
  %167 = load i32*, i32** %28, align 8
  %168 = load i32, i32* %21, align 4
  %169 = call i32 @WebPConvertRGB24ToY(i32* %166, i32* %167, i32 %168)
  %170 = load i32*, i32** %11, align 8
  %171 = load i32, i32* %16, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  %174 = load i32*, i32** %28, align 8
  %175 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %174, i64 %178
  %180 = load i32, i32* %21, align 4
  %181 = call i32 @WebPConvertRGB24ToY(i32* %173, i32* %179, i32 %180)
  br label %199

182:                                              ; preds = %162
  %183 = load i32*, i32** %13, align 8
  %184 = load i32*, i32** %28, align 8
  %185 = load i32, i32* %21, align 4
  %186 = call i32 @WebPConvertBGR24ToY(i32* %183, i32* %184, i32 %185)
  %187 = load i32*, i32** %13, align 8
  %188 = load i32, i32* %16, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %187, i64 %189
  %191 = load i32*, i32** %28, align 8
  %192 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %191, i64 %195
  %197 = load i32, i32* %21, align 4
  %198 = call i32 @WebPConvertBGR24ToY(i32* %190, i32* %196, i32 %197)
  br label %199

199:                                              ; preds = %182, %165
  br label %231

200:                                              ; preds = %158
  %201 = load i32*, i32** %11, align 8
  %202 = load i32*, i32** %12, align 8
  %203 = load i32*, i32** %13, align 8
  %204 = load i32, i32* %15, align 4
  %205 = load i32*, i32** %28, align 8
  %206 = load i32, i32* %21, align 4
  %207 = load i32*, i32** %33, align 8
  %208 = call i32 @ConvertRowToY(i32* %201, i32* %202, i32* %203, i32 %204, i32* %205, i32 %206, i32* %207)
  %209 = load i32*, i32** %11, align 8
  %210 = load i32, i32* %16, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %209, i64 %211
  %213 = load i32*, i32** %12, align 8
  %214 = load i32, i32* %16, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32, i32* %213, i64 %215
  %217 = load i32*, i32** %13, align 8
  %218 = load i32, i32* %16, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %217, i64 %219
  %221 = load i32, i32* %15, align 4
  %222 = load i32*, i32** %28, align 8
  %223 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %224 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %222, i64 %226
  %228 = load i32, i32* %21, align 4
  %229 = load i32*, i32** %33, align 8
  %230 = call i32 @ConvertRowToY(i32* %212, i32* %216, i32* %220, i32 %221, i32* %227, i32 %228, i32* %229)
  br label %231

231:                                              ; preds = %200, %199
  %232 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %233 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %232, i32 0, i32 3
  %234 = load i32, i32* %233, align 4
  %235 = mul nsw i32 2, %234
  %236 = load i32*, i32** %28, align 8
  %237 = sext i32 %235 to i64
  %238 = getelementptr inbounds i32, i32* %236, i64 %237
  store i32* %238, i32** %28, align 8
  %239 = load i32, i32* %23, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %262

241:                                              ; preds = %231
  %242 = load i32*, i32** %14, align 8
  %243 = load i32, i32* %16, align 4
  %244 = load i32, i32* %21, align 4
  %245 = load i32*, i32** %31, align 8
  %246 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %247 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %246, i32 0, i32 2
  %248 = load i32, i32* %247, align 8
  %249 = call i32 @WebPExtractAlpha(i32* %242, i32 %243, i32 %244, i32 2, i32* %245, i32 %248)
  %250 = icmp ne i32 %249, 0
  %251 = xor i1 %250, true
  %252 = zext i1 %251 to i32
  %253 = load i32, i32* %34, align 4
  %254 = and i32 %253, %252
  store i32 %254, i32* %34, align 4
  %255 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %256 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %255, i32 0, i32 2
  %257 = load i32, i32* %256, align 8
  %258 = mul nsw i32 2, %257
  %259 = load i32*, i32** %31, align 8
  %260 = sext i32 %258 to i64
  %261 = getelementptr inbounds i32, i32* %259, i64 %260
  store i32* %261, i32** %31, align 8
  br label %262

262:                                              ; preds = %241, %231
  %263 = load i32, i32* %34, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %274, label %265

265:                                              ; preds = %262
  %266 = load i32*, i32** %11, align 8
  %267 = load i32*, i32** %12, align 8
  %268 = load i32*, i32** %13, align 8
  %269 = load i32, i32* %15, align 4
  %270 = load i32, i32* %16, align 4
  %271 = load i32*, i32** %27, align 8
  %272 = load i32, i32* %21, align 4
  %273 = call i32 @AccumulateRGB(i32* %266, i32* %267, i32* %268, i32 %269, i32 %270, i32* %271, i32 %272)
  br label %283

274:                                              ; preds = %262
  %275 = load i32*, i32** %11, align 8
  %276 = load i32*, i32** %12, align 8
  %277 = load i32*, i32** %13, align 8
  %278 = load i32*, i32** %14, align 8
  %279 = load i32, i32* %16, align 4
  %280 = load i32*, i32** %27, align 8
  %281 = load i32, i32* %21, align 4
  %282 = call i32 @AccumulateRGBA(i32* %275, i32* %276, i32* %277, i32* %278, i32 %279, i32* %280, i32 %281)
  br label %283

283:                                              ; preds = %274, %265
  %284 = load i32*, i32** %33, align 8
  %285 = icmp eq i32* %284, null
  br i1 %285, label %286, label %292

286:                                              ; preds = %283
  %287 = load i32*, i32** %27, align 8
  %288 = load i32*, i32** %29, align 8
  %289 = load i32*, i32** %30, align 8
  %290 = load i32, i32* %25, align 4
  %291 = call i32 @WebPConvertRGBA32ToUV(i32* %287, i32* %288, i32* %289, i32 %290)
  br label %299

292:                                              ; preds = %283
  %293 = load i32*, i32** %27, align 8
  %294 = load i32*, i32** %29, align 8
  %295 = load i32*, i32** %30, align 8
  %296 = load i32, i32* %25, align 4
  %297 = load i32*, i32** %33, align 8
  %298 = call i32 @ConvertRowsToUV(i32* %293, i32* %294, i32* %295, i32 %296, i32* %297)
  br label %299

299:                                              ; preds = %292, %286
  %300 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %301 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %300, i32 0, i32 4
  %302 = load i32, i32* %301, align 8
  %303 = load i32*, i32** %29, align 8
  %304 = sext i32 %302 to i64
  %305 = getelementptr inbounds i32, i32* %303, i64 %304
  store i32* %305, i32** %29, align 8
  %306 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %307 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %306, i32 0, i32 4
  %308 = load i32, i32* %307, align 8
  %309 = load i32*, i32** %30, align 8
  %310 = sext i32 %308 to i64
  %311 = getelementptr inbounds i32, i32* %309, i64 %310
  store i32* %311, i32** %30, align 8
  %312 = load i32, i32* %16, align 4
  %313 = mul nsw i32 2, %312
  %314 = load i32*, i32** %11, align 8
  %315 = sext i32 %313 to i64
  %316 = getelementptr inbounds i32, i32* %314, i64 %315
  store i32* %316, i32** %11, align 8
  %317 = load i32, i32* %16, align 4
  %318 = mul nsw i32 2, %317
  %319 = load i32*, i32** %13, align 8
  %320 = sext i32 %318 to i64
  %321 = getelementptr inbounds i32, i32* %319, i64 %320
  store i32* %321, i32** %13, align 8
  %322 = load i32, i32* %16, align 4
  %323 = mul nsw i32 2, %322
  %324 = load i32*, i32** %12, align 8
  %325 = sext i32 %323 to i64
  %326 = getelementptr inbounds i32, i32* %324, i64 %325
  store i32* %326, i32** %12, align 8
  %327 = load i32, i32* %23, align 4
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %335

329:                                              ; preds = %299
  %330 = load i32, i32* %16, align 4
  %331 = mul nsw i32 2, %330
  %332 = load i32*, i32** %14, align 8
  %333 = sext i32 %331 to i64
  %334 = getelementptr inbounds i32, i32* %332, i64 %333
  store i32* %334, i32** %14, align 8
  br label %335

335:                                              ; preds = %329, %299
  br label %336

336:                                              ; preds = %335
  %337 = load i32, i32* %20, align 4
  %338 = add nsw i32 %337, 1
  store i32 %338, i32* %20, align 4
  br label %153

339:                                              ; preds = %153
  %340 = load i32, i32* %22, align 4
  %341 = and i32 %340, 1
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %343, label %420

343:                                              ; preds = %339
  %344 = load i32, i32* %23, align 4
  store i32 %344, i32* %35, align 4
  %345 = load i32, i32* %26, align 4
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %362

347:                                              ; preds = %343
  %348 = load i32*, i32** %11, align 8
  %349 = load i32*, i32** %13, align 8
  %350 = icmp ult i32* %348, %349
  br i1 %350, label %351, label %356

351:                                              ; preds = %347
  %352 = load i32*, i32** %11, align 8
  %353 = load i32*, i32** %28, align 8
  %354 = load i32, i32* %21, align 4
  %355 = call i32 @WebPConvertRGB24ToY(i32* %352, i32* %353, i32 %354)
  br label %361

356:                                              ; preds = %347
  %357 = load i32*, i32** %13, align 8
  %358 = load i32*, i32** %28, align 8
  %359 = load i32, i32* %21, align 4
  %360 = call i32 @WebPConvertBGR24ToY(i32* %357, i32* %358, i32 %359)
  br label %361

361:                                              ; preds = %356, %351
  br label %371

362:                                              ; preds = %343
  %363 = load i32*, i32** %11, align 8
  %364 = load i32*, i32** %12, align 8
  %365 = load i32*, i32** %13, align 8
  %366 = load i32, i32* %15, align 4
  %367 = load i32*, i32** %28, align 8
  %368 = load i32, i32* %21, align 4
  %369 = load i32*, i32** %33, align 8
  %370 = call i32 @ConvertRowToY(i32* %363, i32* %364, i32* %365, i32 %366, i32* %367, i32 %368, i32* %369)
  br label %371

371:                                              ; preds = %362, %361
  %372 = load i32, i32* %35, align 4
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %374, label %384

374:                                              ; preds = %371
  %375 = load i32*, i32** %14, align 8
  %376 = load i32, i32* %21, align 4
  %377 = load i32*, i32** %31, align 8
  %378 = call i32 @WebPExtractAlpha(i32* %375, i32 0, i32 %376, i32 1, i32* %377, i32 0)
  %379 = icmp ne i32 %378, 0
  %380 = xor i1 %379, true
  %381 = zext i1 %380 to i32
  %382 = load i32, i32* %35, align 4
  %383 = and i32 %382, %381
  store i32 %383, i32* %35, align 4
  br label %384

384:                                              ; preds = %374, %371
  %385 = load i32, i32* %35, align 4
  %386 = icmp ne i32 %385, 0
  br i1 %386, label %395, label %387

387:                                              ; preds = %384
  %388 = load i32*, i32** %11, align 8
  %389 = load i32*, i32** %12, align 8
  %390 = load i32*, i32** %13, align 8
  %391 = load i32, i32* %15, align 4
  %392 = load i32*, i32** %27, align 8
  %393 = load i32, i32* %21, align 4
  %394 = call i32 @AccumulateRGB(i32* %388, i32* %389, i32* %390, i32 %391, i32 0, i32* %392, i32 %393)
  br label %403

395:                                              ; preds = %384
  %396 = load i32*, i32** %11, align 8
  %397 = load i32*, i32** %12, align 8
  %398 = load i32*, i32** %13, align 8
  %399 = load i32*, i32** %14, align 8
  %400 = load i32*, i32** %27, align 8
  %401 = load i32, i32* %21, align 4
  %402 = call i32 @AccumulateRGBA(i32* %396, i32* %397, i32* %398, i32* %399, i32 0, i32* %400, i32 %401)
  br label %403

403:                                              ; preds = %395, %387
  %404 = load i32*, i32** %33, align 8
  %405 = icmp eq i32* %404, null
  br i1 %405, label %406, label %412

406:                                              ; preds = %403
  %407 = load i32*, i32** %27, align 8
  %408 = load i32*, i32** %29, align 8
  %409 = load i32*, i32** %30, align 8
  %410 = load i32, i32* %25, align 4
  %411 = call i32 @WebPConvertRGBA32ToUV(i32* %407, i32* %408, i32* %409, i32 %410)
  br label %419

412:                                              ; preds = %403
  %413 = load i32*, i32** %27, align 8
  %414 = load i32*, i32** %29, align 8
  %415 = load i32*, i32** %30, align 8
  %416 = load i32, i32* %25, align 4
  %417 = load i32*, i32** %33, align 8
  %418 = call i32 @ConvertRowsToUV(i32* %413, i32* %414, i32* %415, i32 %416, i32* %417)
  br label %419

419:                                              ; preds = %412, %406
  br label %420

420:                                              ; preds = %419, %339
  %421 = load i32*, i32** %27, align 8
  %422 = call i32 @WebPSafeFree(i32* %421)
  br label %423

423:                                              ; preds = %420, %116
  store i32 1, i32* %10, align 4
  br label %424

424:                                              ; preds = %423, %151, %100, %78
  %425 = load i32, i32* %10, align 4
  ret i32 %425
}

declare dso_local i32 @CheckNonOpaque(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @WebPPictureAllocYUVA(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @InitGammaTablesS(...) #1

declare dso_local i32 @PreprocessARGB(i32*, i32*, i32*, i32, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @WebPExtractAlpha(i32*, i32, i32, i32, i32*, i32) #1

declare dso_local i64 @WebPSafeMalloc(i32, i32) #1

declare dso_local i32 @VP8InitRandom(i32*, float) #1

declare dso_local i32 @WebPInitConvertARGBToYUV(...) #1

declare dso_local i32 @InitGammaTables(...) #1

declare dso_local i32 @WebPConvertRGB24ToY(i32*, i32*, i32) #1

declare dso_local i32 @WebPConvertBGR24ToY(i32*, i32*, i32) #1

declare dso_local i32 @ConvertRowToY(i32*, i32*, i32*, i32, i32*, i32, i32*) #1

declare dso_local i32 @AccumulateRGB(i32*, i32*, i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @AccumulateRGBA(i32*, i32*, i32*, i32*, i32, i32*, i32) #1

declare dso_local i32 @WebPConvertRGBA32ToUV(i32*, i32*, i32*, i32) #1

declare dso_local i32 @ConvertRowsToUV(i32*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @WebPSafeFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
