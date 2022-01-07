; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmscnvrt.c_BlackPreservingKPlaneIntents.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmscnvrt.c_BlackPreservingKPlaneIntents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { double, i32*, i32*, i32*, i32*, i32*, i64 }

@cmsSigCmykData = common dso_local global i64 0, align 8
@cmsSigOutputClass = common dso_local global i64 0, align 8
@INTENT_RELATIVE_COLORIMETRIC = common dso_local global i32 0, align 4
@TYPE_Lab_DBL = common dso_local global i32 0, align 4
@cmsFLAGS_NOCACHE = common dso_local global i32 0, align 4
@cmsFLAGS_NOOPTIMIZE = common dso_local global i32 0, align 4
@cmsAT_BEGIN = common dso_local global i32 0, align 4
@BlackPreservingSampler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i32, i32*, i32*, i32*, i32*, i32)* @BlackPreservingKPlaneIntents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @BlackPreservingKPlaneIntents(i32 %0, i32 %1, i32* %2, i32* %3, i32* %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_3__, align 8
  %17 = alloca i32*, align 8
  %18 = alloca [256 x i32], align 16
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32* null, i32** %17, align 8
  %23 = load i32, i32* %10, align 4
  %24 = icmp slt i32 %23, 1
  br i1 %24, label %28, label %25

25:                                               ; preds = %7
  %26 = load i32, i32* %10, align 4
  %27 = icmp sgt i32 %26, 255
  br i1 %27, label %28, label %29

28:                                               ; preds = %25, %7
  store i32* null, i32** %8, align 8
  br label %283

29:                                               ; preds = %25
  store i32 0, i32* %20, align 4
  br label %30

30:                                               ; preds = %44, %29
  %31 = load i32, i32* %20, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %47

34:                                               ; preds = %30
  %35 = load i32*, i32** %11, align 8
  %36 = load i32, i32* %20, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @TranslateNonICCIntents(i32 %39)
  %41 = load i32, i32* %20, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [256 x i32], [256 x i32]* %18, i64 0, i64 %42
  store i32 %40, i32* %43, align 4
  br label %44

44:                                               ; preds = %34
  %45 = load i32, i32* %20, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %20, align 4
  br label %30

47:                                               ; preds = %30
  %48 = load i32, i32* %9, align 4
  %49 = load i32*, i32** %12, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @cmsGetColorSpace(i32 %48, i32 %51)
  %53 = load i64, i64* @cmsSigCmykData, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %77, label %55

55:                                               ; preds = %47
  %56 = load i32, i32* %9, align 4
  %57 = load i32*, i32** %12, align 8
  %58 = load i32, i32* %10, align 4
  %59 = sub nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @cmsGetColorSpace(i32 %56, i32 %62)
  %64 = load i64, i64* @cmsSigCmykData, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %86, label %66

66:                                               ; preds = %55
  %67 = load i32, i32* %9, align 4
  %68 = load i32*, i32** %12, align 8
  %69 = load i32, i32* %10, align 4
  %70 = sub nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %68, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @cmsGetDeviceClass(i32 %67, i32 %73)
  %75 = load i64, i64* @cmsSigOutputClass, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %86, label %77

77:                                               ; preds = %66, %47
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %10, align 4
  %80 = getelementptr inbounds [256 x i32], [256 x i32]* %18, i64 0, i64 0
  %81 = load i32*, i32** %12, align 8
  %82 = load i32*, i32** %13, align 8
  %83 = load i32*, i32** %14, align 8
  %84 = load i32, i32* %15, align 4
  %85 = call i32* @DefaultICCintents(i32 %78, i32 %79, i32* %80, i32* %81, i32* %82, i32* %83, i32 %84)
  store i32* %85, i32** %8, align 8
  br label %283

86:                                               ; preds = %66, %55
  %87 = load i32, i32* %9, align 4
  %88 = call i32* @cmsPipelineAlloc(i32 %87, i32 4, i32 4)
  store i32* %88, i32** %17, align 8
  %89 = load i32*, i32** %17, align 8
  %90 = icmp eq i32* %89, null
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  store i32* null, i32** %8, align 8
  br label %283

92:                                               ; preds = %86
  %93 = call i32 @memset(%struct.TYPE_3__* %16, i32 0, i32 56)
  %94 = load i32, i32* %9, align 4
  %95 = load i32*, i32** %12, align 8
  %96 = load i32, i32* %10, align 4
  %97 = sub nsw i32 %96, 1
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %95, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @INTENT_RELATIVE_COLORIMETRIC, align 4
  %102 = call i32* @_cmsReadInputLUT(i32 %94, i32 %100, i32 %101)
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  store i32* %102, i32** %103, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  %106 = icmp eq i32* %105, null
  br i1 %106, label %107, label %108

107:                                              ; preds = %92
  br label %236

108:                                              ; preds = %92
  %109 = load i32, i32* %9, align 4
  %110 = load i32*, i32** %12, align 8
  %111 = load i32, i32* %10, align 4
  %112 = sub nsw i32 %111, 1
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %110, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = call double @cmsDetectTAC(i32 %109, i32 %115)
  %117 = fdiv double %116, 1.000000e+02
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store double %117, double* %118, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %120 = load double, double* %119, align 8
  %121 = fcmp ole double %120, 0.000000e+00
  br i1 %121, label %122, label %123

122:                                              ; preds = %108
  br label %236

123:                                              ; preds = %108
  %124 = load i32, i32* %9, align 4
  %125 = load i32, i32* %10, align 4
  %126 = getelementptr inbounds [256 x i32], [256 x i32]* %18, i64 0, i64 0
  %127 = load i32*, i32** %12, align 8
  %128 = load i32*, i32** %13, align 8
  %129 = load i32*, i32** %14, align 8
  %130 = load i32, i32* %15, align 4
  %131 = call i32* @DefaultICCintents(i32 %124, i32 %125, i32* %126, i32* %127, i32* %128, i32* %129, i32 %130)
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 5
  store i32* %131, i32** %132, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 5
  %134 = load i32*, i32** %133, align 8
  %135 = icmp eq i32* %134, null
  br i1 %135, label %136, label %137

136:                                              ; preds = %123
  br label %236

137:                                              ; preds = %123
  %138 = load i32, i32* %9, align 4
  %139 = load i32, i32* %10, align 4
  %140 = getelementptr inbounds [256 x i32], [256 x i32]* %18, i64 0, i64 0
  %141 = load i32*, i32** %12, align 8
  %142 = load i32*, i32** %13, align 8
  %143 = load i32*, i32** %14, align 8
  %144 = load i32, i32* %15, align 4
  %145 = call i32* @_cmsBuildKToneCurve(i32 %138, i32 4096, i32 %139, i32* %140, i32* %141, i32* %142, i32* %143, i32 %144)
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 2
  store i32* %145, i32** %146, align 8
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 2
  %148 = load i32*, i32** %147, align 8
  %149 = icmp eq i32* %148, null
  br i1 %149, label %150, label %151

150:                                              ; preds = %137
  br label %236

151:                                              ; preds = %137
  %152 = load i32, i32* %9, align 4
  %153 = call i32 @cmsCreateLab4Profile(i32 %152, i32* null)
  store i32 %153, i32* %22, align 4
  %154 = load i32, i32* %9, align 4
  %155 = load i32*, i32** %12, align 8
  %156 = load i32, i32* %10, align 4
  %157 = sub nsw i32 %156, 1
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %155, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @CHANNELS_SH(i32 4)
  %162 = call i32 @BYTES_SH(i32 2)
  %163 = or i32 %161, %162
  %164 = load i32, i32* %22, align 4
  %165 = load i32, i32* @TYPE_Lab_DBL, align 4
  %166 = load i32, i32* @INTENT_RELATIVE_COLORIMETRIC, align 4
  %167 = load i32, i32* @cmsFLAGS_NOCACHE, align 4
  %168 = load i32, i32* @cmsFLAGS_NOOPTIMIZE, align 4
  %169 = or i32 %167, %168
  %170 = call i8* @cmsCreateTransform(i32 %154, i32 %160, i32 %163, i32 %164, i32 %165, i32 %166, i32 %169)
  %171 = bitcast i8* %170 to i32*
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 3
  store i32* %171, i32** %172, align 8
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 3
  %174 = load i32*, i32** %173, align 8
  %175 = icmp eq i32* %174, null
  br i1 %175, label %176, label %177

176:                                              ; preds = %151
  br label %236

177:                                              ; preds = %151
  %178 = load i32, i32* %9, align 4
  %179 = load i32*, i32** %12, align 8
  %180 = load i32, i32* %10, align 4
  %181 = sub nsw i32 %180, 1
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %179, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @FLOAT_SH(i32 1)
  %186 = call i32 @CHANNELS_SH(i32 4)
  %187 = or i32 %185, %186
  %188 = call i32 @BYTES_SH(i32 4)
  %189 = or i32 %187, %188
  %190 = load i32, i32* %22, align 4
  %191 = call i32 @FLOAT_SH(i32 1)
  %192 = call i32 @CHANNELS_SH(i32 3)
  %193 = or i32 %191, %192
  %194 = call i32 @BYTES_SH(i32 4)
  %195 = or i32 %193, %194
  %196 = load i32, i32* @INTENT_RELATIVE_COLORIMETRIC, align 4
  %197 = load i32, i32* @cmsFLAGS_NOCACHE, align 4
  %198 = load i32, i32* @cmsFLAGS_NOOPTIMIZE, align 4
  %199 = or i32 %197, %198
  %200 = call i8* @cmsCreateTransform(i32 %178, i32 %184, i32 %189, i32 %190, i32 %195, i32 %196, i32 %199)
  %201 = bitcast i8* %200 to i32*
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 4
  store i32* %201, i32** %202, align 8
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 4
  %204 = load i32*, i32** %203, align 8
  %205 = icmp eq i32* %204, null
  br i1 %205, label %206, label %207

206:                                              ; preds = %177
  br label %236

207:                                              ; preds = %177
  %208 = load i32, i32* %9, align 4
  %209 = load i32, i32* %22, align 4
  %210 = call i32 @cmsCloseProfile(i32 %208, i32 %209)
  %211 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 6
  store i64 0, i64* %211, align 8
  %212 = load i32, i32* %9, align 4
  %213 = load i64, i64* @cmsSigCmykData, align 8
  %214 = load i32, i32* %15, align 4
  %215 = call i32 @_cmsReasonableGridpointsByColorspace(i32 %212, i64 %213, i32 %214)
  store i32 %215, i32* %21, align 4
  %216 = load i32, i32* %9, align 4
  %217 = load i32, i32* %21, align 4
  %218 = call i32* @cmsStageAllocCLut16bit(i32 %216, i32 %217, i32 4, i32 4, i32* null)
  store i32* %218, i32** %19, align 8
  %219 = load i32*, i32** %19, align 8
  %220 = icmp eq i32* %219, null
  br i1 %220, label %221, label %222

221:                                              ; preds = %207
  br label %236

222:                                              ; preds = %207
  %223 = load i32, i32* %9, align 4
  %224 = load i32*, i32** %17, align 8
  %225 = load i32, i32* @cmsAT_BEGIN, align 4
  %226 = load i32*, i32** %19, align 8
  %227 = call i32 @cmsPipelineInsertStage(i32 %223, i32* %224, i32 %225, i32* %226)
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %230, label %229

229:                                              ; preds = %222
  br label %236

230:                                              ; preds = %222
  %231 = load i32, i32* %9, align 4
  %232 = load i32*, i32** %19, align 8
  %233 = load i32, i32* @BlackPreservingSampler, align 4
  %234 = bitcast %struct.TYPE_3__* %16 to i8*
  %235 = call i32 @cmsStageSampleCLut16bit(i32 %231, i32* %232, i32 %233, i8* %234, i32 0)
  br label %236

236:                                              ; preds = %230, %229, %221, %206, %176, %150, %136, %122, %107
  %237 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 5
  %238 = load i32*, i32** %237, align 8
  %239 = icmp ne i32* %238, null
  br i1 %239, label %240, label %245

240:                                              ; preds = %236
  %241 = load i32, i32* %9, align 4
  %242 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 5
  %243 = load i32*, i32** %242, align 8
  %244 = call i32 @cmsPipelineFree(i32 %241, i32* %243)
  br label %245

245:                                              ; preds = %240, %236
  %246 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 4
  %247 = load i32*, i32** %246, align 8
  %248 = icmp ne i32* %247, null
  br i1 %248, label %249, label %254

249:                                              ; preds = %245
  %250 = load i32, i32* %9, align 4
  %251 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 4
  %252 = load i32*, i32** %251, align 8
  %253 = call i32 @cmsDeleteTransform(i32 %250, i32* %252)
  br label %254

254:                                              ; preds = %249, %245
  %255 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 3
  %256 = load i32*, i32** %255, align 8
  %257 = icmp ne i32* %256, null
  br i1 %257, label %258, label %263

258:                                              ; preds = %254
  %259 = load i32, i32* %9, align 4
  %260 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 3
  %261 = load i32*, i32** %260, align 8
  %262 = call i32 @cmsDeleteTransform(i32 %259, i32* %261)
  br label %263

263:                                              ; preds = %258, %254
  %264 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 2
  %265 = load i32*, i32** %264, align 8
  %266 = icmp ne i32* %265, null
  br i1 %266, label %267, label %272

267:                                              ; preds = %263
  %268 = load i32, i32* %9, align 4
  %269 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 2
  %270 = load i32*, i32** %269, align 8
  %271 = call i32 @cmsFreeToneCurve(i32 %268, i32* %270)
  br label %272

272:                                              ; preds = %267, %263
  %273 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %274 = load i32*, i32** %273, align 8
  %275 = icmp ne i32* %274, null
  br i1 %275, label %276, label %281

276:                                              ; preds = %272
  %277 = load i32, i32* %9, align 4
  %278 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %279 = load i32*, i32** %278, align 8
  %280 = call i32 @cmsPipelineFree(i32 %277, i32* %279)
  br label %281

281:                                              ; preds = %276, %272
  %282 = load i32*, i32** %17, align 8
  store i32* %282, i32** %8, align 8
  br label %283

283:                                              ; preds = %281, %91, %77, %28
  %284 = load i32*, i32** %8, align 8
  ret i32* %284
}

declare dso_local i32 @TranslateNonICCIntents(i32) #1

declare dso_local i64 @cmsGetColorSpace(i32, i32) #1

declare dso_local i64 @cmsGetDeviceClass(i32, i32) #1

declare dso_local i32* @DefaultICCintents(i32, i32, i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32* @cmsPipelineAlloc(i32, i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32* @_cmsReadInputLUT(i32, i32, i32) #1

declare dso_local double @cmsDetectTAC(i32, i32) #1

declare dso_local i32* @_cmsBuildKToneCurve(i32, i32, i32, i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @cmsCreateLab4Profile(i32, i32*) #1

declare dso_local i8* @cmsCreateTransform(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @CHANNELS_SH(i32) #1

declare dso_local i32 @BYTES_SH(i32) #1

declare dso_local i32 @FLOAT_SH(i32) #1

declare dso_local i32 @cmsCloseProfile(i32, i32) #1

declare dso_local i32 @_cmsReasonableGridpointsByColorspace(i32, i64, i32) #1

declare dso_local i32* @cmsStageAllocCLut16bit(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @cmsPipelineInsertStage(i32, i32*, i32, i32*) #1

declare dso_local i32 @cmsStageSampleCLut16bit(i32, i32*, i32, i8*, i32) #1

declare dso_local i32 @cmsPipelineFree(i32, i32*) #1

declare dso_local i32 @cmsDeleteTransform(i32, i32*) #1

declare dso_local i32 @cmsFreeToneCurve(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
