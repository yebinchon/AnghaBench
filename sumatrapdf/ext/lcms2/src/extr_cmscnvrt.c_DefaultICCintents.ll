; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmscnvrt.c_DefaultICCintents.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmscnvrt.c_DefaultICCintents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cmsSigLabData = common dso_local global i64 0, align 8
@cmsSigLinkClass = common dso_local global i64 0, align 8
@cmsSigAbstractClass = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@cmsSigXYZData = common dso_local global i64 0, align 8
@cmsERROR_COLORSPACE_CHECK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"ColorSpace mismatch\00", align 1
@cmsSigNamedColorClass = common dso_local global i64 0, align 8
@cmsFLAGS_NONEGATIVES = common dso_local global i64 0, align 8
@cmsSigGrayData = common dso_local global i64 0, align 8
@cmsSigRgbData = common dso_local global i64 0, align 8
@cmsSigCmykData = common dso_local global i64 0, align 8
@cmsAT_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i64, i64*, i32*, i32*, i32*, i64)* @DefaultICCintents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @DefaultICCintents(i32 %0, i64 %1, i64* %2, i32* %3, i32* %4, i32* %5, i64 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32*, align 8
  store i32 %0, i32* %9, align 4
  store i64 %1, i64* %10, align 8
  store i64* %2, i64** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i64 %6, i64* %15, align 8
  store i32* null, i32** %16, align 8
  %30 = load i64, i64* @cmsSigLabData, align 8
  store i64 %30, i64* %22, align 8
  %31 = load i64, i64* %10, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %7
  store i32* null, i32** %8, align 8
  br label %289

34:                                               ; preds = %7
  %35 = load i32, i32* %9, align 4
  %36 = call i32* @cmsPipelineAlloc(i32 %35, i32 0, i32 0)
  store i32* %36, i32** %17, align 8
  %37 = load i32*, i32** %17, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  store i32* null, i32** %8, align 8
  br label %289

40:                                               ; preds = %34
  %41 = load i32, i32* %9, align 4
  %42 = load i32*, i32** %12, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @cmsGetColorSpace(i32 %41, i32 %44)
  store i64 %45, i64* %23, align 8
  store i64 0, i64* %25, align 8
  br label %46

46:                                               ; preds = %233, %40
  %47 = load i64, i64* %25, align 8
  %48 = load i64, i64* %10, align 8
  %49 = icmp ult i64 %47, %48
  br i1 %49, label %50, label %236

50:                                               ; preds = %46
  %51 = load i32*, i32** %12, align 8
  %52 = load i64, i64* %25, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %18, align 4
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %18, align 4
  %57 = call i64 @cmsGetDeviceClass(i32 %55, i32 %56)
  store i64 %57, i64* %24, align 8
  %58 = load i64, i64* %24, align 8
  %59 = load i64, i64* @cmsSigLinkClass, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %65, label %61

61:                                               ; preds = %50
  %62 = load i64, i64* %24, align 8
  %63 = load i64, i64* @cmsSigAbstractClass, align 8
  %64 = icmp eq i64 %62, %63
  br label %65

65:                                               ; preds = %61, %50
  %66 = phi i1 [ true, %50 ], [ %64, %61 ]
  %67 = zext i1 %66 to i32
  store i32 %67, i32* %27, align 4
  %68 = load i64, i64* %25, align 8
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %65
  %71 = load i32, i32* %27, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %70
  %74 = load i32, i32* @TRUE, align 4
  store i32 %74, i32* %28, align 4
  br label %86

75:                                               ; preds = %70, %65
  %76 = load i64, i64* %23, align 8
  %77 = load i64, i64* @cmsSigXYZData, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %75
  %80 = load i64, i64* %23, align 8
  %81 = load i64, i64* @cmsSigLabData, align 8
  %82 = icmp ne i64 %80, %81
  br label %83

83:                                               ; preds = %79, %75
  %84 = phi i1 [ false, %75 ], [ %82, %79 ]
  %85 = zext i1 %84 to i32
  store i32 %85, i32* %28, align 4
  br label %86

86:                                               ; preds = %83, %73
  %87 = load i64*, i64** %11, align 8
  %88 = load i64, i64* %25, align 8
  %89 = getelementptr inbounds i64, i64* %87, i64 %88
  %90 = load i64, i64* %89, align 8
  store i64 %90, i64* %26, align 8
  %91 = load i32, i32* %28, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %86
  %94 = load i32, i32* %27, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %93, %86
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* %18, align 4
  %99 = call i64 @cmsGetColorSpace(i32 %97, i32 %98)
  store i64 %99, i64* %21, align 8
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* %18, align 4
  %102 = call i64 @cmsGetPCS(i32 %100, i32 %101)
  store i64 %102, i64* %22, align 8
  br label %110

103:                                              ; preds = %93
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* %18, align 4
  %106 = call i64 @cmsGetPCS(i32 %104, i32 %105)
  store i64 %106, i64* %21, align 8
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* %18, align 4
  %109 = call i64 @cmsGetColorSpace(i32 %107, i32 %108)
  store i64 %109, i64* %22, align 8
  br label %110

110:                                              ; preds = %103, %96
  %111 = load i64, i64* %21, align 8
  %112 = load i64, i64* %23, align 8
  %113 = call i32 @ColorSpaceIsCompatible(i64 %111, i64 %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %119, label %115

115:                                              ; preds = %110
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* @cmsERROR_COLORSPACE_CHECK, align 4
  %118 = call i32 @cmsSignalError(i32 %116, i32 %117, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %274

119:                                              ; preds = %110
  %120 = load i32, i32* %27, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %129, label %122

122:                                              ; preds = %119
  %123 = load i64, i64* %24, align 8
  %124 = load i64, i64* @cmsSigNamedColorClass, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %175

126:                                              ; preds = %122
  %127 = load i64, i64* %10, align 8
  %128 = icmp eq i64 %127, 1
  br i1 %128, label %129, label %175

129:                                              ; preds = %126, %119
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* %18, align 4
  %132 = load i64, i64* %26, align 8
  %133 = call i32* @_cmsReadDevicelinkLUT(i32 %130, i32 %131, i64 %132)
  store i32* %133, i32** %16, align 8
  %134 = load i32*, i32** %16, align 8
  %135 = icmp eq i32* %134, null
  br i1 %135, label %136, label %137

136:                                              ; preds = %129
  br label %274

137:                                              ; preds = %129
  %138 = load i64, i64* %24, align 8
  %139 = load i64, i64* @cmsSigAbstractClass, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %161

141:                                              ; preds = %137
  %142 = load i64, i64* %25, align 8
  %143 = icmp ugt i64 %142, 0
  br i1 %143, label %144, label %161

144:                                              ; preds = %141
  %145 = load i32, i32* %9, align 4
  %146 = load i64, i64* %25, align 8
  %147 = load i32*, i32** %12, align 8
  %148 = load i64, i64* %26, align 8
  %149 = load i32*, i32** %13, align 8
  %150 = load i64, i64* %25, align 8
  %151 = getelementptr inbounds i32, i32* %149, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = load i32*, i32** %14, align 8
  %154 = load i64, i64* %25, align 8
  %155 = getelementptr inbounds i32, i32* %153, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @ComputeConversion(i32 %145, i64 %146, i32* %147, i64 %148, i32 %152, i32 %156, i32* %19, i32* %20)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %160, label %159

159:                                              ; preds = %144
  br label %274

160:                                              ; preds = %144
  br label %166

161:                                              ; preds = %141, %137
  %162 = load i32, i32* %9, align 4
  %163 = call i32 @_cmsMAT3identity(i32 %162, i32* %19)
  %164 = load i32, i32* %9, align 4
  %165 = call i32 @_cmsVEC3init(i32 %164, i32* %20, i32 0, i32 0, i32 0)
  br label %166

166:                                              ; preds = %161, %160
  %167 = load i32, i32* %9, align 4
  %168 = load i32*, i32** %17, align 8
  %169 = load i64, i64* %23, align 8
  %170 = load i64, i64* %21, align 8
  %171 = call i32 @AddConversion(i32 %167, i32* %168, i64 %169, i64 %170, i32* %19, i32* %20)
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %174, label %173

173:                                              ; preds = %166
  br label %274

174:                                              ; preds = %166
  br label %221

175:                                              ; preds = %126, %122
  %176 = load i32, i32* %28, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %187

178:                                              ; preds = %175
  %179 = load i32, i32* %9, align 4
  %180 = load i32, i32* %18, align 4
  %181 = load i64, i64* %26, align 8
  %182 = call i32* @_cmsReadInputLUT(i32 %179, i32 %180, i64 %181)
  store i32* %182, i32** %16, align 8
  %183 = load i32*, i32** %16, align 8
  %184 = icmp eq i32* %183, null
  br i1 %184, label %185, label %186

185:                                              ; preds = %178
  br label %274

186:                                              ; preds = %178
  br label %220

187:                                              ; preds = %175
  %188 = load i32, i32* %9, align 4
  %189 = load i32, i32* %18, align 4
  %190 = load i64, i64* %26, align 8
  %191 = call i32* @_cmsReadOutputLUT(i32 %188, i32 %189, i64 %190)
  store i32* %191, i32** %16, align 8
  %192 = load i32*, i32** %16, align 8
  %193 = icmp eq i32* %192, null
  br i1 %193, label %194, label %195

194:                                              ; preds = %187
  br label %274

195:                                              ; preds = %187
  %196 = load i32, i32* %9, align 4
  %197 = load i64, i64* %25, align 8
  %198 = load i32*, i32** %12, align 8
  %199 = load i64, i64* %26, align 8
  %200 = load i32*, i32** %13, align 8
  %201 = load i64, i64* %25, align 8
  %202 = getelementptr inbounds i32, i32* %200, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = load i32*, i32** %14, align 8
  %205 = load i64, i64* %25, align 8
  %206 = getelementptr inbounds i32, i32* %204, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @ComputeConversion(i32 %196, i64 %197, i32* %198, i64 %199, i32 %203, i32 %207, i32* %19, i32* %20)
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %211, label %210

210:                                              ; preds = %195
  br label %274

211:                                              ; preds = %195
  %212 = load i32, i32* %9, align 4
  %213 = load i32*, i32** %17, align 8
  %214 = load i64, i64* %23, align 8
  %215 = load i64, i64* %21, align 8
  %216 = call i32 @AddConversion(i32 %212, i32* %213, i64 %214, i64 %215, i32* %19, i32* %20)
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %219, label %218

218:                                              ; preds = %211
  br label %274

219:                                              ; preds = %211
  br label %220

220:                                              ; preds = %219, %186
  br label %221

221:                                              ; preds = %220, %174
  %222 = load i32, i32* %9, align 4
  %223 = load i32*, i32** %17, align 8
  %224 = load i32*, i32** %16, align 8
  %225 = call i32 @cmsPipelineCat(i32 %222, i32* %223, i32* %224)
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %228, label %227

227:                                              ; preds = %221
  br label %274

228:                                              ; preds = %221
  %229 = load i32, i32* %9, align 4
  %230 = load i32*, i32** %16, align 8
  %231 = call i32 @cmsPipelineFree(i32 %229, i32* %230)
  store i32* null, i32** %16, align 8
  %232 = load i64, i64* %22, align 8
  store i64 %232, i64* %23, align 8
  br label %233

233:                                              ; preds = %228
  %234 = load i64, i64* %25, align 8
  %235 = add i64 %234, 1
  store i64 %235, i64* %25, align 8
  br label %46

236:                                              ; preds = %46
  %237 = load i64, i64* %15, align 8
  %238 = load i64, i64* @cmsFLAGS_NONEGATIVES, align 8
  %239 = and i64 %237, %238
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %272

241:                                              ; preds = %236
  %242 = load i64, i64* %22, align 8
  %243 = load i64, i64* @cmsSigGrayData, align 8
  %244 = icmp eq i64 %242, %243
  br i1 %244, label %253, label %245

245:                                              ; preds = %241
  %246 = load i64, i64* %22, align 8
  %247 = load i64, i64* @cmsSigRgbData, align 8
  %248 = icmp eq i64 %246, %247
  br i1 %248, label %253, label %249

249:                                              ; preds = %245
  %250 = load i64, i64* %22, align 8
  %251 = load i64, i64* @cmsSigCmykData, align 8
  %252 = icmp eq i64 %250, %251
  br i1 %252, label %253, label %271

253:                                              ; preds = %249, %245, %241
  %254 = load i32, i32* %9, align 4
  %255 = load i32, i32* %9, align 4
  %256 = load i64, i64* %22, align 8
  %257 = call i32 @cmsChannelsOf(i32 %255, i64 %256)
  %258 = call i32* @_cmsStageClipNegatives(i32 %254, i32 %257)
  store i32* %258, i32** %29, align 8
  %259 = load i32*, i32** %29, align 8
  %260 = icmp eq i32* %259, null
  br i1 %260, label %261, label %262

261:                                              ; preds = %253
  br label %274

262:                                              ; preds = %253
  %263 = load i32, i32* %9, align 4
  %264 = load i32*, i32** %17, align 8
  %265 = load i32, i32* @cmsAT_END, align 4
  %266 = load i32*, i32** %29, align 8
  %267 = call i32 @cmsPipelineInsertStage(i32 %263, i32* %264, i32 %265, i32* %266)
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %270, label %269

269:                                              ; preds = %262
  br label %274

270:                                              ; preds = %262
  br label %271

271:                                              ; preds = %270, %249
  br label %272

272:                                              ; preds = %271, %236
  %273 = load i32*, i32** %17, align 8
  store i32* %273, i32** %8, align 8
  br label %289

274:                                              ; preds = %269, %261, %227, %218, %210, %194, %185, %173, %159, %136, %115
  %275 = load i32*, i32** %16, align 8
  %276 = icmp ne i32* %275, null
  br i1 %276, label %277, label %281

277:                                              ; preds = %274
  %278 = load i32, i32* %9, align 4
  %279 = load i32*, i32** %16, align 8
  %280 = call i32 @cmsPipelineFree(i32 %278, i32* %279)
  br label %281

281:                                              ; preds = %277, %274
  %282 = load i32*, i32** %17, align 8
  %283 = icmp ne i32* %282, null
  br i1 %283, label %284, label %288

284:                                              ; preds = %281
  %285 = load i32, i32* %9, align 4
  %286 = load i32*, i32** %17, align 8
  %287 = call i32 @cmsPipelineFree(i32 %285, i32* %286)
  br label %288

288:                                              ; preds = %284, %281
  store i32* null, i32** %8, align 8
  br label %289

289:                                              ; preds = %288, %272, %39, %33
  %290 = load i32*, i32** %8, align 8
  ret i32* %290
}

declare dso_local i32* @cmsPipelineAlloc(i32, i32, i32) #1

declare dso_local i64 @cmsGetColorSpace(i32, i32) #1

declare dso_local i64 @cmsGetDeviceClass(i32, i32) #1

declare dso_local i64 @cmsGetPCS(i32, i32) #1

declare dso_local i32 @ColorSpaceIsCompatible(i64, i64) #1

declare dso_local i32 @cmsSignalError(i32, i32, i8*) #1

declare dso_local i32* @_cmsReadDevicelinkLUT(i32, i32, i64) #1

declare dso_local i32 @ComputeConversion(i32, i64, i32*, i64, i32, i32, i32*, i32*) #1

declare dso_local i32 @_cmsMAT3identity(i32, i32*) #1

declare dso_local i32 @_cmsVEC3init(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @AddConversion(i32, i32*, i64, i64, i32*, i32*) #1

declare dso_local i32* @_cmsReadInputLUT(i32, i32, i64) #1

declare dso_local i32* @_cmsReadOutputLUT(i32, i32, i64) #1

declare dso_local i32 @cmsPipelineCat(i32, i32*, i32*) #1

declare dso_local i32 @cmsPipelineFree(i32, i32*) #1

declare dso_local i32* @_cmsStageClipNegatives(i32, i32) #1

declare dso_local i32 @cmsChannelsOf(i32, i64) #1

declare dso_local i32 @cmsPipelineInsertStage(i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
