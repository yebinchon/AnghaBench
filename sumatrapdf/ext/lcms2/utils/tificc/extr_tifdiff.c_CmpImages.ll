; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/tificc/extr_tifdiff.c_CmpImages.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/tificc/extr_tifdiff.c_CmpImages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TIFFTAG_PHOTOMETRIC = common dso_local global i32 0, align 4
@TIFFTAG_IMAGEWIDTH = common dso_local global i32 0, align 4
@TIFFTAG_IMAGELENGTH = common dso_local global i32 0, align 4
@TIFFTAG_SAMPLESPERPIXEL = common dso_local global i32 0, align 4
@Channels = common dso_local global i32 0, align 4
@TIFFTAG_COMPRESSION = common dso_local global i32 0, align 4
@COMPRESSION_NONE = common dso_local global i32 0, align 4
@TIFFTAG_PLANARCONFIG = common dso_local global i32 0, align 4
@PLANARCONFIG_CONTIG = common dso_local global i32 0, align 4
@TIFFTAG_BITSPERSAMPLE = common dso_local global i32 0, align 4
@ColorantStat = common dso_local global i32* null, align 8
@EuclideanStat = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Unsupported channels: %d\00", align 1
@ColorimetricStat = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*)* @CmpImages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CmpImages(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i64* null, i64** %9, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store double 0.000000e+00, double* %15, align 8
  store i32 0, i32* %23, align 4
  store i64 0, i64* %24, align 8
  store i64 0, i64* %25, align 8
  store i64 0, i64* %26, align 8
  store i64 0, i64* %27, align 8
  %36 = load i32*, i32** %4, align 8
  %37 = load i32, i32* @TIFFTAG_PHOTOMETRIC, align 4
  %38 = call i32 @TIFFGetField(i32* %36, i32 %37, i32* %14)
  %39 = load i32*, i32** %4, align 8
  %40 = load i32, i32* @TIFFTAG_IMAGEWIDTH, align 4
  %41 = call i32 @TIFFGetField(i32* %39, i32 %40, i32* %12)
  %42 = load i32*, i32** %4, align 8
  %43 = load i32, i32* @TIFFTAG_IMAGELENGTH, align 4
  %44 = call i32 @TIFFGetField(i32* %42, i32 %43, i32* %13)
  %45 = load i32*, i32** %4, align 8
  %46 = load i32, i32* @TIFFTAG_SAMPLESPERPIXEL, align 4
  %47 = call i32 @TIFFGetField(i32* %45, i32 %46, i32* @Channels)
  %48 = load i32*, i32** %4, align 8
  %49 = call i32 @OpenEmbedded(i32* %48, i64* %24, i64* %26)
  store i32 %49, i32* %28, align 4
  %50 = load i32*, i32** %5, align 8
  %51 = call i32 @OpenEmbedded(i32* %50, i64* %25, i64* %27)
  store i32 %51, i32* %29, align 4
  %52 = load i32*, i32** %4, align 8
  %53 = call i32 @TIFFScanlineSize(i32* %52)
  %54 = call i64 @_TIFFmalloc(i32 %53)
  %55 = inttoptr i64 %54 to i64*
  store i64* %55, i64** %7, align 8
  %56 = load i32*, i32** %5, align 8
  %57 = call i32 @TIFFScanlineSize(i32* %56)
  %58 = call i64 @_TIFFmalloc(i32 %57)
  %59 = inttoptr i64 %58 to i64*
  store i64* %59, i64** %8, align 8
  %60 = load i32*, i32** %6, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %92

62:                                               ; preds = %3
  %63 = load i32*, i32** %6, align 8
  %64 = load i32, i32* @TIFFTAG_PHOTOMETRIC, align 4
  %65 = call i32 @TIFFSetField(i32* %63, i32 %64, i32 131)
  %66 = load i32*, i32** %6, align 8
  %67 = load i32, i32* @TIFFTAG_COMPRESSION, align 4
  %68 = load i32, i32* @COMPRESSION_NONE, align 4
  %69 = call i32 @TIFFSetField(i32* %66, i32 %67, i32 %68)
  %70 = load i32*, i32** %6, align 8
  %71 = load i32, i32* @TIFFTAG_PLANARCONFIG, align 4
  %72 = load i32, i32* @PLANARCONFIG_CONTIG, align 4
  %73 = call i32 @TIFFSetField(i32* %70, i32 %71, i32 %72)
  %74 = load i32*, i32** %6, align 8
  %75 = load i32, i32* @TIFFTAG_IMAGEWIDTH, align 4
  %76 = load i32, i32* %12, align 4
  %77 = call i32 @TIFFSetField(i32* %74, i32 %75, i32 %76)
  %78 = load i32*, i32** %6, align 8
  %79 = load i32, i32* @TIFFTAG_IMAGELENGTH, align 4
  %80 = load i32, i32* %13, align 4
  %81 = call i32 @TIFFSetField(i32* %78, i32 %79, i32 %80)
  %82 = load i32*, i32** %6, align 8
  %83 = load i32, i32* @TIFFTAG_SAMPLESPERPIXEL, align 4
  %84 = call i32 @TIFFSetField(i32* %82, i32 %83, i32 1)
  %85 = load i32*, i32** %6, align 8
  %86 = load i32, i32* @TIFFTAG_BITSPERSAMPLE, align 4
  %87 = call i32 @TIFFSetField(i32* %85, i32 %86, i32 8)
  %88 = load i32*, i32** %6, align 8
  %89 = call i32 @TIFFScanlineSize(i32* %88)
  %90 = call i64 @_TIFFmalloc(i32 %89)
  %91 = inttoptr i64 %90 to i64*
  store i64* %91, i64** %9, align 8
  br label %92

92:                                               ; preds = %62, %3
  store i32 0, i32* %10, align 4
  br label %93

93:                                               ; preds = %366, %92
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* %13, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %369

97:                                               ; preds = %93
  %98 = load i32*, i32** %4, align 8
  %99 = load i64*, i64** %7, align 8
  %100 = load i32, i32* %10, align 4
  %101 = call i64 @TIFFReadScanline(i32* %98, i64* %99, i32 %100, i32 0)
  %102 = icmp slt i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %97
  br label %370

104:                                              ; preds = %97
  %105 = load i32*, i32** %5, align 8
  %106 = load i64*, i64** %8, align 8
  %107 = load i32, i32* %10, align 4
  %108 = call i64 @TIFFReadScanline(i32* %105, i64* %106, i32 %107, i32 0)
  %109 = icmp slt i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %104
  br label %370

111:                                              ; preds = %104
  store i32 0, i32* %11, align 4
  br label %112

112:                                              ; preds = %351, %111
  %113 = load i32, i32* %11, align 4
  %114 = load i32, i32* %12, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %354

116:                                              ; preds = %112
  %117 = load i32, i32* %14, align 4
  switch i32 %117, label %306 [
    i32 130, label %118
    i32 131, label %118
    i32 129, label %137
    i32 128, label %211
  ]

118:                                              ; preds = %116, %116
  %119 = load i64*, i64** %8, align 8
  %120 = load i32, i32* %11, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i64, i64* %119, i64 %121
  %123 = load i64, i64* %122, align 8
  %124 = load i64*, i64** %7, align 8
  %125 = load i32, i32* %11, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i64, i64* %124, i64 %126
  %128 = load i64, i64* %127, align 8
  %129 = sub nsw i64 %123, %128
  %130 = call double @fabs(i64 %129)
  store double %130, double* %15, align 8
  %131 = load i32*, i32** @ColorantStat, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 0
  %133 = load double, double* %15, align 8
  %134 = call i32 @AddOnePixel(i32* %132, double %133)
  %135 = load double, double* %15, align 8
  %136 = call i32 @AddOnePixel(i32* @EuclideanStat, double %135)
  br label %309

137:                                              ; preds = %116
  %138 = load i32, i32* %11, align 4
  %139 = mul nsw i32 3, %138
  store i32 %139, i32* %30, align 4
  %140 = load i64*, i64** %8, align 8
  %141 = load i32, i32* %30, align 4
  %142 = add nsw i32 %141, 0
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i64, i64* %140, i64 %143
  %145 = load i64, i64* %144, align 8
  %146 = load i64*, i64** %7, align 8
  %147 = load i32, i32* %30, align 4
  %148 = add nsw i32 %147, 0
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i64, i64* %146, i64 %149
  %151 = load i64, i64* %150, align 8
  %152 = sub nsw i64 %145, %151
  %153 = call double @fabs(i64 %152)
  store double %153, double* %16, align 8
  %154 = load i64*, i64** %8, align 8
  %155 = load i32, i32* %30, align 4
  %156 = add nsw i32 %155, 1
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i64, i64* %154, i64 %157
  %159 = load i64, i64* %158, align 8
  %160 = load i64*, i64** %7, align 8
  %161 = load i32, i32* %30, align 4
  %162 = add nsw i32 %161, 1
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i64, i64* %160, i64 %163
  %165 = load i64, i64* %164, align 8
  %166 = sub nsw i64 %159, %165
  %167 = call double @fabs(i64 %166)
  store double %167, double* %17, align 8
  %168 = load i64*, i64** %8, align 8
  %169 = load i32, i32* %30, align 4
  %170 = add nsw i32 %169, 2
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i64, i64* %168, i64 %171
  %173 = load i64, i64* %172, align 8
  %174 = load i64*, i64** %7, align 8
  %175 = load i32, i32* %30, align 4
  %176 = add nsw i32 %175, 2
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i64, i64* %174, i64 %177
  %179 = load i64, i64* %178, align 8
  %180 = sub nsw i64 %173, %179
  %181 = call double @fabs(i64 %180)
  store double %181, double* %18, align 8
  %182 = load double, double* %16, align 8
  %183 = load double, double* %16, align 8
  %184 = fmul double %182, %183
  %185 = load double, double* %17, align 8
  %186 = load double, double* %17, align 8
  %187 = fmul double %185, %186
  %188 = fadd double %184, %187
  %189 = load double, double* %18, align 8
  %190 = load double, double* %18, align 8
  %191 = fmul double %189, %190
  %192 = fadd double %188, %191
  %193 = call i32 @sqrt(double %192)
  %194 = call i32 @sqrt(double 3.000000e+00)
  %195 = sdiv i32 %193, %194
  %196 = sitofp i32 %195 to double
  store double %196, double* %15, align 8
  %197 = load i32*, i32** @ColorantStat, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 0
  %199 = load double, double* %16, align 8
  %200 = call i32 @AddOnePixel(i32* %198, double %199)
  %201 = load i32*, i32** @ColorantStat, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 1
  %203 = load double, double* %17, align 8
  %204 = call i32 @AddOnePixel(i32* %202, double %203)
  %205 = load i32*, i32** @ColorantStat, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 2
  %207 = load double, double* %18, align 8
  %208 = call i32 @AddOnePixel(i32* %206, double %207)
  %209 = load double, double* %15, align 8
  %210 = call i32 @AddOnePixel(i32* @EuclideanStat, double %209)
  br label %309

211:                                              ; preds = %116
  %212 = load i32, i32* %11, align 4
  %213 = mul nsw i32 4, %212
  store i32 %213, i32* %31, align 4
  %214 = load i64*, i64** %8, align 8
  %215 = load i32, i32* %31, align 4
  %216 = add nsw i32 %215, 0
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i64, i64* %214, i64 %217
  %219 = load i64, i64* %218, align 8
  %220 = load i64*, i64** %7, align 8
  %221 = load i32, i32* %31, align 4
  %222 = add nsw i32 %221, 0
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i64, i64* %220, i64 %223
  %225 = load i64, i64* %224, align 8
  %226 = sub nsw i64 %219, %225
  %227 = call double @fabs(i64 %226)
  store double %227, double* %19, align 8
  %228 = load i64*, i64** %8, align 8
  %229 = load i32, i32* %31, align 4
  %230 = add nsw i32 %229, 1
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i64, i64* %228, i64 %231
  %233 = load i64, i64* %232, align 8
  %234 = load i64*, i64** %7, align 8
  %235 = load i32, i32* %31, align 4
  %236 = add nsw i32 %235, 1
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i64, i64* %234, i64 %237
  %239 = load i64, i64* %238, align 8
  %240 = sub nsw i64 %233, %239
  %241 = call double @fabs(i64 %240)
  store double %241, double* %20, align 8
  %242 = load i64*, i64** %8, align 8
  %243 = load i32, i32* %31, align 4
  %244 = add nsw i32 %243, 2
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i64, i64* %242, i64 %245
  %247 = load i64, i64* %246, align 8
  %248 = load i64*, i64** %7, align 8
  %249 = load i32, i32* %31, align 4
  %250 = add nsw i32 %249, 2
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i64, i64* %248, i64 %251
  %253 = load i64, i64* %252, align 8
  %254 = sub nsw i64 %247, %253
  %255 = call double @fabs(i64 %254)
  store double %255, double* %21, align 8
  %256 = load i64*, i64** %8, align 8
  %257 = load i32, i32* %31, align 4
  %258 = add nsw i32 %257, 3
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i64, i64* %256, i64 %259
  %261 = load i64, i64* %260, align 8
  %262 = load i64*, i64** %7, align 8
  %263 = load i32, i32* %31, align 4
  %264 = add nsw i32 %263, 3
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i64, i64* %262, i64 %265
  %267 = load i64, i64* %266, align 8
  %268 = sub nsw i64 %261, %267
  %269 = call double @fabs(i64 %268)
  store double %269, double* %22, align 8
  %270 = load double, double* %19, align 8
  %271 = load double, double* %19, align 8
  %272 = fmul double %270, %271
  %273 = load double, double* %20, align 8
  %274 = load double, double* %20, align 8
  %275 = fmul double %273, %274
  %276 = fadd double %272, %275
  %277 = load double, double* %21, align 8
  %278 = load double, double* %21, align 8
  %279 = fmul double %277, %278
  %280 = fadd double %276, %279
  %281 = load double, double* %22, align 8
  %282 = load double, double* %22, align 8
  %283 = fmul double %281, %282
  %284 = fadd double %280, %283
  %285 = call i32 @sqrt(double %284)
  %286 = sitofp i32 %285 to double
  %287 = fdiv double %286, 2.000000e+00
  store double %287, double* %15, align 8
  %288 = load i32*, i32** @ColorantStat, align 8
  %289 = getelementptr inbounds i32, i32* %288, i64 0
  %290 = load double, double* %19, align 8
  %291 = call i32 @AddOnePixel(i32* %289, double %290)
  %292 = load i32*, i32** @ColorantStat, align 8
  %293 = getelementptr inbounds i32, i32* %292, i64 1
  %294 = load double, double* %20, align 8
  %295 = call i32 @AddOnePixel(i32* %293, double %294)
  %296 = load i32*, i32** @ColorantStat, align 8
  %297 = getelementptr inbounds i32, i32* %296, i64 2
  %298 = load double, double* %21, align 8
  %299 = call i32 @AddOnePixel(i32* %297, double %298)
  %300 = load i32*, i32** @ColorantStat, align 8
  %301 = getelementptr inbounds i32, i32* %300, i64 3
  %302 = load double, double* %22, align 8
  %303 = call i32 @AddOnePixel(i32* %301, double %302)
  %304 = load double, double* %15, align 8
  %305 = call i32 @AddOnePixel(i32* @EuclideanStat, double %304)
  br label %309

306:                                              ; preds = %116
  %307 = load i32, i32* @Channels, align 4
  %308 = call i32 @FatalError(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %307)
  br label %309

309:                                              ; preds = %306, %211, %137, %118
  %310 = load i64, i64* %26, align 8
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %312, label %339

312:                                              ; preds = %309
  %313 = load i64, i64* %27, align 8
  %314 = icmp ne i64 %313, 0
  br i1 %314, label %315, label %339

315:                                              ; preds = %312
  %316 = load i32, i32* %11, align 4
  %317 = load i32, i32* %28, align 4
  %318 = call i32 @PixelSize(i32 %317)
  %319 = mul nsw i32 %316, %318
  %320 = sext i32 %319 to i64
  store i64 %320, i64* %34, align 8
  %321 = load i32, i32* %11, align 4
  %322 = load i32, i32* %29, align 4
  %323 = call i32 @PixelSize(i32 %322)
  %324 = mul nsw i32 %321, %323
  %325 = sext i32 %324 to i64
  store i64 %325, i64* %35, align 8
  %326 = load i64, i64* %26, align 8
  %327 = load i64*, i64** %7, align 8
  %328 = load i64, i64* %34, align 8
  %329 = getelementptr inbounds i64, i64* %327, i64 %328
  %330 = call i32 @cmsDoTransform(i32* null, i64 %326, i64* %329, i32* %32, i32 1)
  %331 = load i64, i64* %27, align 8
  %332 = load i64*, i64** %8, align 8
  %333 = load i64, i64* %35, align 8
  %334 = getelementptr inbounds i64, i64* %332, i64 %333
  %335 = call i32 @cmsDoTransform(i32* null, i64 %331, i64* %334, i32* %33, i32 1)
  %336 = call double @cmsDeltaE(i32* null, i32* %32, i32* %33)
  store double %336, double* %15, align 8
  %337 = load double, double* %15, align 8
  %338 = call i32 @AddOnePixel(i32* @ColorimetricStat, double %337)
  br label %339

339:                                              ; preds = %315, %312, %309
  %340 = load i32*, i32** %6, align 8
  %341 = icmp ne i32* %340, null
  br i1 %341, label %342, label %350

342:                                              ; preds = %339
  %343 = load double, double* %15, align 8
  %344 = fadd double %343, 5.000000e-01
  %345 = call i64 @floor(double %344)
  %346 = load i64*, i64** %9, align 8
  %347 = load i32, i32* %11, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds i64, i64* %346, i64 %348
  store i64 %345, i64* %349, align 8
  br label %350

350:                                              ; preds = %342, %339
  br label %351

351:                                              ; preds = %350
  %352 = load i32, i32* %11, align 4
  %353 = add nsw i32 %352, 1
  store i32 %353, i32* %11, align 4
  br label %112

354:                                              ; preds = %112
  %355 = load i32*, i32** %6, align 8
  %356 = icmp ne i32* %355, null
  br i1 %356, label %357, label %365

357:                                              ; preds = %354
  %358 = load i32*, i32** %6, align 8
  %359 = load i64*, i64** %9, align 8
  %360 = load i32, i32* %10, align 4
  %361 = call i64 @TIFFWriteScanline(i32* %358, i64* %359, i32 %360, i32 0)
  %362 = icmp slt i64 %361, 0
  br i1 %362, label %363, label %364

363:                                              ; preds = %357
  br label %370

364:                                              ; preds = %357
  br label %365

365:                                              ; preds = %364, %354
  br label %366

366:                                              ; preds = %365
  %367 = load i32, i32* %10, align 4
  %368 = add nsw i32 %367, 1
  store i32 %368, i32* %10, align 4
  br label %93

369:                                              ; preds = %93
  store i32 1, i32* %23, align 4
  br label %370

370:                                              ; preds = %369, %363, %110, %103
  %371 = load i64, i64* %24, align 8
  %372 = icmp ne i64 %371, 0
  br i1 %372, label %373, label %376

373:                                              ; preds = %370
  %374 = load i64, i64* %24, align 8
  %375 = call i32 @cmsCloseProfile(i32* null, i64 %374)
  br label %376

376:                                              ; preds = %373, %370
  %377 = load i64, i64* %25, align 8
  %378 = icmp ne i64 %377, 0
  br i1 %378, label %379, label %382

379:                                              ; preds = %376
  %380 = load i64, i64* %25, align 8
  %381 = call i32 @cmsCloseProfile(i32* null, i64 %380)
  br label %382

382:                                              ; preds = %379, %376
  %383 = load i64, i64* %26, align 8
  %384 = icmp ne i64 %383, 0
  br i1 %384, label %385, label %388

385:                                              ; preds = %382
  %386 = load i64, i64* %26, align 8
  %387 = call i32 @cmsDeleteTransform(i32* null, i64 %386)
  br label %388

388:                                              ; preds = %385, %382
  %389 = load i64, i64* %27, align 8
  %390 = icmp ne i64 %389, 0
  br i1 %390, label %391, label %394

391:                                              ; preds = %388
  %392 = load i64, i64* %27, align 8
  %393 = call i32 @cmsDeleteTransform(i32* null, i64 %392)
  br label %394

394:                                              ; preds = %391, %388
  %395 = load i64*, i64** %7, align 8
  %396 = call i32 @_TIFFfree(i64* %395)
  %397 = load i64*, i64** %8, align 8
  %398 = call i32 @_TIFFfree(i64* %397)
  %399 = load i32*, i32** %6, align 8
  %400 = icmp ne i32* %399, null
  br i1 %400, label %401, label %410

401:                                              ; preds = %394
  %402 = load i32*, i32** %6, align 8
  %403 = call i32 @TIFFWriteDirectory(i32* %402)
  %404 = load i64*, i64** %9, align 8
  %405 = icmp ne i64* %404, null
  br i1 %405, label %406, label %409

406:                                              ; preds = %401
  %407 = load i64*, i64** %9, align 8
  %408 = call i32 @_TIFFfree(i64* %407)
  br label %409

409:                                              ; preds = %406, %401
  br label %410

410:                                              ; preds = %409, %394
  %411 = load i32, i32* %23, align 4
  ret i32 %411
}

declare dso_local i32 @TIFFGetField(i32*, i32, i32*) #1

declare dso_local i32 @OpenEmbedded(i32*, i64*, i64*) #1

declare dso_local i64 @_TIFFmalloc(i32) #1

declare dso_local i32 @TIFFScanlineSize(i32*) #1

declare dso_local i32 @TIFFSetField(i32*, i32, i32) #1

declare dso_local i64 @TIFFReadScanline(i32*, i64*, i32, i32) #1

declare dso_local double @fabs(i64) #1

declare dso_local i32 @AddOnePixel(i32*, double) #1

declare dso_local i32 @sqrt(double) #1

declare dso_local i32 @FatalError(i8*, i32) #1

declare dso_local i32 @PixelSize(i32) #1

declare dso_local i32 @cmsDoTransform(i32*, i64, i64*, i32*, i32) #1

declare dso_local double @cmsDeltaE(i32*, i32*, i32*) #1

declare dso_local i64 @floor(double) #1

declare dso_local i64 @TIFFWriteScanline(i32*, i64*, i32, i32) #1

declare dso_local i32 @cmsCloseProfile(i32*, i64) #1

declare dso_local i32 @cmsDeleteTransform(i32*, i64) #1

declare dso_local i32 @_TIFFfree(i64*) #1

declare dso_local i32 @TIFFWriteDirectory(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
