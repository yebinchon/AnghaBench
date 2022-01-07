; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/transicc/extr_transicc.c_OpenTransforms.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/transicc/extr_transicc.c_OpenTransforms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cmsFLAGS_NOCACHE = common dso_local global i32 0, align 4
@lIsDeviceLink = common dso_local global i64 0, align 8
@cInProf = common dso_local global i32* null, align 8
@FALSE = common dso_local global i64 0, align 8
@cmsSigNamedColorClass = common dso_local global i64 0, align 8
@OutputColorSpace = common dso_local global i32 0, align 4
@InputColorSpace = common dso_local global i32 0, align 4
@cmsSigColorantTableTag = common dso_local global i32 0, align 4
@InputColorant = common dso_local global i32 0, align 4
@InputRange = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@cmsSigColorantTableOutTag = common dso_local global i32 0, align 4
@OutputColorant = common dso_local global i32 0, align 4
@OutputRange = common dso_local global i32 0, align 4
@cOutProf = common dso_local global i32* null, align 8
@cmsSigLinkClass = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"Use %cl flag for devicelink profiles!\0A\00", align 1
@SW = common dso_local global i32 0, align 4
@cProofing = common dso_local global i32* null, align 8
@cmsFLAGS_SOFTPROOFING = common dso_local global i32 0, align 4
@Verbose = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"Profile:\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Output profile:\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Proofing profile:\0A\00", align 1
@lIsFloat = common dso_local global i64 0, align 8
@TYPE_NAMED_COLOR_INDEX = common dso_local global i32 0, align 4
@InputNamedColor = common dso_local global i64 0, align 8
@PrecalcMode = common dso_local global i32 0, align 4
@cmsFLAGS_NOOPTIMIZE = common dso_local global i32 0, align 4
@cmsFLAGS_HIGHRESPRECALC = common dso_local global i32 0, align 4
@cmsFLAGS_LOWRESPRECALC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"Unknown precalculation mode '%d'\00", align 1
@BlackPointCompensation = common dso_local global i64 0, align 8
@cmsFLAGS_BLACKPOINTCOMPENSATION = common dso_local global i32 0, align 4
@GamutCheck = common dso_local global i64 0, align 8
@cmsMAXCHANNELS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [47 x i8] c"I need proofing profile -p for gamut checking!\00", align 1
@cmsFLAGS_GAMUTCHECK = common dso_local global i32 0, align 4
@Intent = common dso_local global i32 0, align 4
@ProofingIntent = common dso_local global i32 0, align 4
@hTrans = common dso_local global i32* null, align 8
@hTransXYZ = common dso_local global i32* null, align 8
@hTransLab = common dso_local global i32* null, align 8
@TYPE_XYZ_DBL = common dso_local global i32 0, align 4
@TYPE_XYZ_16 = common dso_local global i32 0, align 4
@TYPE_Lab_DBL = common dso_local global i32 0, align 4
@TYPE_Lab_16 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32)* @OpenTransforms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @OpenTransforms(i32 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  %16 = load i32, i32* @cmsFLAGS_NOCACHE, align 4
  store i32 %16, i32* %9, align 4
  %17 = load i64, i64* @lIsDeviceLink, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %85

19:                                               ; preds = %1
  %20 = load i32*, i32** @cInProf, align 8
  %21 = call i32* @OpenStockProfile(i32 0, i32* %20)
  store i32* %21, i32** %4, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i64, i64* @FALSE, align 8
  store i64 %25, i64* %2, align 8
  br label %406

26:                                               ; preds = %19
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  %27 = load i32, i32* %3, align 4
  %28 = load i32*, i32** %4, align 8
  %29 = call i64 @cmsGetDeviceClass(i32 %27, i32* %28)
  %30 = load i64, i64* @cmsSigNamedColorClass, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %26
  %33 = load i32, i32* %3, align 4
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 @cmsGetColorSpace(i32 %33, i32* %34)
  store i32 %35, i32* @OutputColorSpace, align 4
  %36 = load i32, i32* %3, align 4
  %37 = load i32*, i32** %4, align 8
  %38 = call i32 @cmsGetPCS(i32 %36, i32* %37)
  store i32 %38, i32* @InputColorSpace, align 4
  br label %46

39:                                               ; preds = %26
  %40 = load i32, i32* %3, align 4
  %41 = load i32*, i32** %4, align 8
  %42 = call i32 @cmsGetColorSpace(i32 %40, i32* %41)
  store i32 %42, i32* @InputColorSpace, align 4
  %43 = load i32, i32* %3, align 4
  %44 = load i32*, i32** %4, align 8
  %45 = call i32 @cmsGetPCS(i32 %43, i32* %44)
  store i32 %45, i32* @OutputColorSpace, align 4
  br label %46

46:                                               ; preds = %39, %32
  %47 = load i32, i32* %3, align 4
  %48 = load i32*, i32** %4, align 8
  %49 = load i32, i32* @cmsSigColorantTableTag, align 4
  %50 = call i64 @cmsIsTag(i32 %47, i32* %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %46
  %53 = load i32, i32* %3, align 4
  %54 = load i32*, i32** %4, align 8
  %55 = load i32, i32* @cmsSigColorantTableTag, align 4
  %56 = call i32* @cmsReadTag(i32 %53, i32* %54, i32 %55)
  store i32* %56, i32** %10, align 8
  %57 = load i32, i32* %3, align 4
  %58 = load i32*, i32** %10, align 8
  %59 = call i32 @cmsDupNamedColorList(i32 %57, i32* %58)
  store i32 %59, i32* @InputColorant, align 4
  store i32 1, i32* @InputRange, align 4
  br label %65

60:                                               ; preds = %46
  %61 = load i32, i32* %3, align 4
  %62 = load i32, i32* @InputColorSpace, align 4
  %63 = load i64, i64* @TRUE, align 8
  %64 = call i32 @ComponentNames(i32 %61, i32 %62, i64 %63)
  store i32 %64, i32* @InputColorant, align 4
  br label %65

65:                                               ; preds = %60, %52
  %66 = load i32, i32* %3, align 4
  %67 = load i32*, i32** %4, align 8
  %68 = load i32, i32* @cmsSigColorantTableOutTag, align 4
  %69 = call i64 @cmsIsTag(i32 %66, i32* %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %65
  %72 = load i32, i32* %3, align 4
  %73 = load i32*, i32** %4, align 8
  %74 = load i32, i32* @cmsSigColorantTableOutTag, align 4
  %75 = call i32* @cmsReadTag(i32 %72, i32* %73, i32 %74)
  store i32* %75, i32** %10, align 8
  %76 = load i32, i32* %3, align 4
  %77 = load i32*, i32** %10, align 8
  %78 = call i32 @cmsDupNamedColorList(i32 %76, i32* %77)
  store i32 %78, i32* @OutputColorant, align 4
  store i32 1, i32* @OutputRange, align 4
  br label %84

79:                                               ; preds = %65
  %80 = load i32, i32* %3, align 4
  %81 = load i32, i32* @OutputColorSpace, align 4
  %82 = load i64, i64* @FALSE, align 8
  %83 = call i32 @ComponentNames(i32 %80, i32 %81, i64 %82)
  store i32 %83, i32* @OutputColorant, align 4
  br label %84

84:                                               ; preds = %79, %71
  br label %195

85:                                               ; preds = %1
  %86 = load i32*, i32** @cInProf, align 8
  %87 = call i32* @OpenStockProfile(i32 0, i32* %86)
  store i32* %87, i32** %4, align 8
  %88 = load i32*, i32** %4, align 8
  %89 = icmp eq i32* %88, null
  br i1 %89, label %90, label %92

90:                                               ; preds = %85
  %91 = load i64, i64* @FALSE, align 8
  store i64 %91, i64* %2, align 8
  br label %406

92:                                               ; preds = %85
  %93 = load i32*, i32** @cOutProf, align 8
  %94 = call i32* @OpenStockProfile(i32 0, i32* %93)
  store i32* %94, i32** %5, align 8
  %95 = load i32*, i32** %5, align 8
  %96 = icmp eq i32* %95, null
  br i1 %96, label %97, label %99

97:                                               ; preds = %92
  %98 = load i64, i64* @FALSE, align 8
  store i64 %98, i64* %2, align 8
  br label %406

99:                                               ; preds = %92
  store i32* null, i32** %6, align 8
  %100 = load i32, i32* %3, align 4
  %101 = load i32*, i32** %4, align 8
  %102 = call i64 @cmsGetDeviceClass(i32 %100, i32* %101)
  %103 = load i64, i64* @cmsSigLinkClass, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %111, label %105

105:                                              ; preds = %99
  %106 = load i32, i32* %3, align 4
  %107 = load i32*, i32** %5, align 8
  %108 = call i64 @cmsGetDeviceClass(i32 %106, i32* %107)
  %109 = load i64, i64* @cmsSigLinkClass, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %105, %99
  %112 = load i32, i32* @SW, align 4
  %113 = call i32 (i8*, ...) @FatalError(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %112)
  br label %114

114:                                              ; preds = %111, %105
  %115 = load i32, i32* %3, align 4
  %116 = load i32*, i32** %4, align 8
  %117 = call i32 @cmsGetColorSpace(i32 %115, i32* %116)
  store i32 %117, i32* @InputColorSpace, align 4
  %118 = load i32, i32* %3, align 4
  %119 = load i32*, i32** %5, align 8
  %120 = call i32 @cmsGetColorSpace(i32 %118, i32* %119)
  store i32 %120, i32* @OutputColorSpace, align 4
  %121 = load i32, i32* %3, align 4
  %122 = load i32*, i32** %4, align 8
  %123 = load i32, i32* @cmsSigColorantTableTag, align 4
  %124 = call i64 @cmsIsTag(i32 %121, i32* %122, i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %145

126:                                              ; preds = %114
  %127 = load i32, i32* %3, align 4
  %128 = load i32*, i32** %4, align 8
  %129 = load i32, i32* @cmsSigColorantTableTag, align 4
  %130 = call i32* @cmsReadTag(i32 %127, i32* %128, i32 %129)
  store i32* %130, i32** %10, align 8
  %131 = load i32, i32* %3, align 4
  %132 = load i32*, i32** %10, align 8
  %133 = call i32 @cmsDupNamedColorList(i32 %131, i32* %132)
  store i32 %133, i32* @InputColorant, align 4
  %134 = load i32, i32* %3, align 4
  %135 = load i32, i32* @InputColorant, align 4
  %136 = call i32 @cmsNamedColorCount(i32 %134, i32 %135)
  %137 = icmp sle i32 %136, 3
  br i1 %137, label %138, label %141

138:                                              ; preds = %126
  %139 = load i64, i64* @TRUE, align 8
  %140 = call i32 @SetRange(i32 255, i64 %139)
  br label %144

141:                                              ; preds = %126
  %142 = load i64, i64* @TRUE, align 8
  %143 = call i32 @SetRange(i32 1, i64 %142)
  br label %144

144:                                              ; preds = %141, %138
  br label %150

145:                                              ; preds = %114
  %146 = load i32, i32* %3, align 4
  %147 = load i32, i32* @InputColorSpace, align 4
  %148 = load i64, i64* @TRUE, align 8
  %149 = call i32 @ComponentNames(i32 %146, i32 %147, i64 %148)
  store i32 %149, i32* @InputColorant, align 4
  br label %150

150:                                              ; preds = %145, %144
  %151 = load i32, i32* %3, align 4
  %152 = load i32*, i32** %5, align 8
  %153 = load i32, i32* @cmsSigColorantTableTag, align 4
  %154 = call i64 @cmsIsTag(i32 %151, i32* %152, i32 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %175

156:                                              ; preds = %150
  %157 = load i32, i32* %3, align 4
  %158 = load i32*, i32** %5, align 8
  %159 = load i32, i32* @cmsSigColorantTableTag, align 4
  %160 = call i32* @cmsReadTag(i32 %157, i32* %158, i32 %159)
  store i32* %160, i32** %10, align 8
  %161 = load i32, i32* %3, align 4
  %162 = load i32*, i32** %10, align 8
  %163 = call i32 @cmsDupNamedColorList(i32 %161, i32* %162)
  store i32 %163, i32* @OutputColorant, align 4
  %164 = load i32, i32* %3, align 4
  %165 = load i32, i32* @OutputColorant, align 4
  %166 = call i32 @cmsNamedColorCount(i32 %164, i32 %165)
  %167 = icmp sle i32 %166, 3
  br i1 %167, label %168, label %171

168:                                              ; preds = %156
  %169 = load i64, i64* @FALSE, align 8
  %170 = call i32 @SetRange(i32 255, i64 %169)
  br label %174

171:                                              ; preds = %156
  %172 = load i64, i64* @FALSE, align 8
  %173 = call i32 @SetRange(i32 1, i64 %172)
  br label %174

174:                                              ; preds = %171, %168
  br label %180

175:                                              ; preds = %150
  %176 = load i32, i32* %3, align 4
  %177 = load i32, i32* @OutputColorSpace, align 4
  %178 = load i64, i64* @FALSE, align 8
  %179 = call i32 @ComponentNames(i32 %176, i32 %177, i64 %178)
  store i32 %179, i32* @OutputColorant, align 4
  br label %180

180:                                              ; preds = %175, %174
  %181 = load i32*, i32** @cProofing, align 8
  %182 = icmp ne i32* %181, null
  br i1 %182, label %183, label %194

183:                                              ; preds = %180
  %184 = load i32*, i32** @cProofing, align 8
  %185 = call i32* @OpenStockProfile(i32 0, i32* %184)
  store i32* %185, i32** %6, align 8
  %186 = load i32*, i32** %6, align 8
  %187 = icmp eq i32* %186, null
  br i1 %187, label %188, label %190

188:                                              ; preds = %183
  %189 = load i64, i64* @FALSE, align 8
  store i64 %189, i64* %2, align 8
  br label %406

190:                                              ; preds = %183
  %191 = load i32, i32* @cmsFLAGS_SOFTPROOFING, align 4
  %192 = load i32, i32* %9, align 4
  %193 = or i32 %192, %191
  store i32 %193, i32* %9, align 4
  br label %194

194:                                              ; preds = %190, %180
  br label %195

195:                                              ; preds = %194, %84
  %196 = load i32, i32* @Verbose, align 4
  %197 = icmp sgt i32 %196, 2
  br i1 %197, label %198, label %219

198:                                              ; preds = %195
  %199 = call i32 @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %200 = load i32, i32* %3, align 4
  %201 = load i32*, i32** %4, align 8
  %202 = call i32 @PrintProfileInformation(i32 %200, i32* %201)
  %203 = load i32*, i32** %5, align 8
  %204 = icmp ne i32* %203, null
  br i1 %204, label %205, label %210

205:                                              ; preds = %198
  %206 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %207 = load i32, i32* %3, align 4
  %208 = load i32*, i32** %5, align 8
  %209 = call i32 @PrintProfileInformation(i32 %207, i32* %208)
  br label %210

210:                                              ; preds = %205, %198
  %211 = load i32*, i32** %6, align 8
  %212 = icmp ne i32* %211, null
  br i1 %212, label %213, label %218

213:                                              ; preds = %210
  %214 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %215 = load i32, i32* %3, align 4
  %216 = load i32*, i32** %6, align 8
  %217 = call i32 @PrintProfileInformation(i32 %215, i32* %216)
  br label %218

218:                                              ; preds = %213, %210
  br label %219

219:                                              ; preds = %218, %195
  %220 = load i32, i32* %3, align 4
  %221 = load i32*, i32** %4, align 8
  %222 = load i64, i64* @TRUE, align 8
  %223 = call i32 @cmsFormatterForColorspaceOfProfile(i32 %220, i32* %221, i32 0, i64 %222)
  store i32 %223, i32* %7, align 4
  %224 = load i64, i64* @lIsDeviceLink, align 8
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %235

226:                                              ; preds = %219
  %227 = load i32, i32* %3, align 4
  %228 = load i32*, i32** %4, align 8
  %229 = load i64, i64* @lIsFloat, align 8
  %230 = icmp ne i64 %229, 0
  %231 = zext i1 %230 to i64
  %232 = select i1 %230, i32 0, i32 2
  %233 = load i64, i64* @lIsFloat, align 8
  %234 = call i32 @cmsFormatterForPCSOfProfile(i32 %227, i32* %228, i32 %232, i64 %233)
  store i32 %234, i32* %8, align 4
  br label %244

235:                                              ; preds = %219
  %236 = load i32, i32* %3, align 4
  %237 = load i32*, i32** %5, align 8
  %238 = load i64, i64* @lIsFloat, align 8
  %239 = icmp ne i64 %238, 0
  %240 = zext i1 %239 to i64
  %241 = select i1 %239, i32 0, i32 2
  %242 = load i64, i64* @lIsFloat, align 8
  %243 = call i32 @cmsFormatterForColorspaceOfProfile(i32 %236, i32* %237, i32 %241, i64 %242)
  store i32 %243, i32* %8, align 4
  br label %244

244:                                              ; preds = %235, %226
  %245 = load i32, i32* %3, align 4
  %246 = load i32*, i32** %4, align 8
  %247 = call i64 @cmsGetDeviceClass(i32 %245, i32* %246)
  %248 = load i64, i64* @cmsSigNamedColorClass, align 8
  %249 = icmp eq i64 %247, %248
  br i1 %249, label %250, label %253

250:                                              ; preds = %244
  %251 = load i32, i32* @TYPE_NAMED_COLOR_INDEX, align 4
  store i32 %251, i32* %7, align 4
  %252 = load i64, i64* @TRUE, align 8
  store i64 %252, i64* @InputNamedColor, align 8
  br label %253

253:                                              ; preds = %250, %244
  %254 = load i32, i32* @PrecalcMode, align 4
  switch i32 %254, label %268 [
    i32 0, label %255
    i32 2, label %259
    i32 3, label %263
    i32 1, label %267
  ]

255:                                              ; preds = %253
  %256 = load i32, i32* @cmsFLAGS_NOOPTIMIZE, align 4
  %257 = load i32, i32* %9, align 4
  %258 = or i32 %257, %256
  store i32 %258, i32* %9, align 4
  br label %271

259:                                              ; preds = %253
  %260 = load i32, i32* @cmsFLAGS_HIGHRESPRECALC, align 4
  %261 = load i32, i32* %9, align 4
  %262 = or i32 %261, %260
  store i32 %262, i32* %9, align 4
  br label %271

263:                                              ; preds = %253
  %264 = load i32, i32* @cmsFLAGS_LOWRESPRECALC, align 4
  %265 = load i32, i32* %9, align 4
  %266 = or i32 %265, %264
  store i32 %266, i32* %9, align 4
  br label %271

267:                                              ; preds = %253
  br label %271

268:                                              ; preds = %253
  %269 = load i32, i32* @PrecalcMode, align 4
  %270 = call i32 (i8*, ...) @FatalError(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %269)
  br label %271

271:                                              ; preds = %268, %267, %263, %259, %255
  %272 = load i64, i64* @BlackPointCompensation, align 8
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %274, label %278

274:                                              ; preds = %271
  %275 = load i32, i32* @cmsFLAGS_BLACKPOINTCOMPENSATION, align 4
  %276 = load i32, i32* %9, align 4
  %277 = or i32 %276, %275
  store i32 %277, i32* %9, align 4
  br label %278

278:                                              ; preds = %274, %271
  %279 = load i64, i64* @GamutCheck, align 8
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %281, label %309

281:                                              ; preds = %278
  %282 = load i32, i32* @cmsMAXCHANNELS, align 4
  %283 = zext i32 %282 to i64
  %284 = call i8* @llvm.stacksave()
  store i8* %284, i8** %12, align 8
  %285 = alloca i32, i64 %283, align 16
  store i64 %283, i64* %13, align 8
  %286 = load i32*, i32** %6, align 8
  %287 = icmp eq i32* %286, null
  br i1 %287, label %288, label %290

288:                                              ; preds = %281
  %289 = call i32 (i8*, ...) @FatalError(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0))
  br label %290

290:                                              ; preds = %288, %281
  store i32 0, i32* %11, align 4
  br label %291

291:                                              ; preds = %299, %290
  %292 = load i32, i32* %11, align 4
  %293 = load i32, i32* @cmsMAXCHANNELS, align 4
  %294 = icmp slt i32 %292, %293
  br i1 %294, label %295, label %302

295:                                              ; preds = %291
  %296 = load i32, i32* %11, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i32, i32* %285, i64 %297
  store i32 65535, i32* %298, align 4
  br label %299

299:                                              ; preds = %295
  %300 = load i32, i32* %11, align 4
  %301 = add nsw i32 %300, 1
  store i32 %301, i32* %11, align 4
  br label %291

302:                                              ; preds = %291
  %303 = load i32, i32* %3, align 4
  %304 = call i32 @cmsSetAlarmCodes(i32 %303, i32* %285)
  %305 = load i32, i32* @cmsFLAGS_GAMUTCHECK, align 4
  %306 = load i32, i32* %9, align 4
  %307 = or i32 %306, %305
  store i32 %307, i32* %9, align 4
  %308 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %308)
  br label %309

309:                                              ; preds = %302, %278
  %310 = load i32, i32* %3, align 4
  %311 = load i32*, i32** %4, align 8
  %312 = load i32, i32* %7, align 4
  %313 = load i32*, i32** %5, align 8
  %314 = load i32, i32* %8, align 4
  %315 = load i32*, i32** %6, align 8
  %316 = load i32, i32* @Intent, align 4
  %317 = load i32, i32* @ProofingIntent, align 4
  %318 = load i32, i32* %9, align 4
  %319 = call i32* @cmsCreateProofingTransform(i32 %310, i32* %311, i32 %312, i32* %313, i32 %314, i32* %315, i32 %316, i32 %317, i32 %318)
  store i32* %319, i32** @hTrans, align 8
  %320 = load i32*, i32** %6, align 8
  %321 = icmp ne i32* %320, null
  br i1 %321, label %322, label %326

322:                                              ; preds = %309
  %323 = load i32, i32* %3, align 4
  %324 = load i32*, i32** %6, align 8
  %325 = call i32 @cmsCloseProfile(i32 %323, i32* %324)
  br label %326

326:                                              ; preds = %322, %309
  %327 = load i32*, i32** @hTrans, align 8
  %328 = icmp eq i32* %327, null
  br i1 %328, label %329, label %331

329:                                              ; preds = %326
  %330 = load i64, i64* @FALSE, align 8
  store i64 %330, i64* %2, align 8
  br label %406

331:                                              ; preds = %326
  store i32* null, i32** @hTransXYZ, align 8
  store i32* null, i32** @hTransLab, align 8
  %332 = load i32*, i32** %5, align 8
  %333 = icmp ne i32* %332, null
  br i1 %333, label %334, label %390

334:                                              ; preds = %331
  %335 = load i32, i32* @Verbose, align 4
  %336 = icmp sgt i32 %335, 1
  br i1 %336, label %337, label %390

337:                                              ; preds = %334
  %338 = load i32, i32* %3, align 4
  %339 = call i32* @cmsCreateXYZProfile(i32 %338)
  store i32* %339, i32** %14, align 8
  %340 = load i32, i32* %3, align 4
  %341 = call i32* @cmsCreateLab4Profile(i32 %340, i32* null)
  store i32* %341, i32** %15, align 8
  %342 = load i32, i32* %3, align 4
  %343 = load i32*, i32** %4, align 8
  %344 = load i32, i32* %7, align 4
  %345 = load i32*, i32** %14, align 8
  %346 = load i64, i64* @lIsFloat, align 8
  %347 = icmp ne i64 %346, 0
  br i1 %347, label %348, label %350

348:                                              ; preds = %337
  %349 = load i32, i32* @TYPE_XYZ_DBL, align 4
  br label %352

350:                                              ; preds = %337
  %351 = load i32, i32* @TYPE_XYZ_16, align 4
  br label %352

352:                                              ; preds = %350, %348
  %353 = phi i32 [ %349, %348 ], [ %351, %350 ]
  %354 = load i32, i32* @Intent, align 4
  %355 = load i32, i32* @cmsFLAGS_NOCACHE, align 4
  %356 = call i8* @cmsCreateTransform(i32 %342, i32* %343, i32 %344, i32* %345, i32 %353, i32 %354, i32 %355)
  %357 = bitcast i8* %356 to i32*
  store i32* %357, i32** @hTransXYZ, align 8
  %358 = load i32*, i32** @hTransXYZ, align 8
  %359 = icmp eq i32* %358, null
  br i1 %359, label %360, label %362

360:                                              ; preds = %352
  %361 = load i64, i64* @FALSE, align 8
  store i64 %361, i64* %2, align 8
  br label %406

362:                                              ; preds = %352
  %363 = load i32, i32* %3, align 4
  %364 = load i32*, i32** %4, align 8
  %365 = load i32, i32* %7, align 4
  %366 = load i32*, i32** %15, align 8
  %367 = load i64, i64* @lIsFloat, align 8
  %368 = icmp ne i64 %367, 0
  br i1 %368, label %369, label %371

369:                                              ; preds = %362
  %370 = load i32, i32* @TYPE_Lab_DBL, align 4
  br label %373

371:                                              ; preds = %362
  %372 = load i32, i32* @TYPE_Lab_16, align 4
  br label %373

373:                                              ; preds = %371, %369
  %374 = phi i32 [ %370, %369 ], [ %372, %371 ]
  %375 = load i32, i32* @Intent, align 4
  %376 = load i32, i32* @cmsFLAGS_NOCACHE, align 4
  %377 = call i8* @cmsCreateTransform(i32 %363, i32* %364, i32 %365, i32* %366, i32 %374, i32 %375, i32 %376)
  %378 = bitcast i8* %377 to i32*
  store i32* %378, i32** @hTransLab, align 8
  %379 = load i32*, i32** @hTransLab, align 8
  %380 = icmp eq i32* %379, null
  br i1 %380, label %381, label %383

381:                                              ; preds = %373
  %382 = load i64, i64* @FALSE, align 8
  store i64 %382, i64* %2, align 8
  br label %406

383:                                              ; preds = %373
  %384 = load i32, i32* %3, align 4
  %385 = load i32*, i32** %14, align 8
  %386 = call i32 @cmsCloseProfile(i32 %384, i32* %385)
  %387 = load i32, i32* %3, align 4
  %388 = load i32*, i32** %15, align 8
  %389 = call i32 @cmsCloseProfile(i32 %387, i32* %388)
  br label %390

390:                                              ; preds = %383, %334, %331
  %391 = load i32*, i32** %4, align 8
  %392 = icmp ne i32* %391, null
  br i1 %392, label %393, label %397

393:                                              ; preds = %390
  %394 = load i32, i32* %3, align 4
  %395 = load i32*, i32** %4, align 8
  %396 = call i32 @cmsCloseProfile(i32 %394, i32* %395)
  br label %397

397:                                              ; preds = %393, %390
  %398 = load i32*, i32** %5, align 8
  %399 = icmp ne i32* %398, null
  br i1 %399, label %400, label %404

400:                                              ; preds = %397
  %401 = load i32, i32* %3, align 4
  %402 = load i32*, i32** %5, align 8
  %403 = call i32 @cmsCloseProfile(i32 %401, i32* %402)
  br label %404

404:                                              ; preds = %400, %397
  %405 = load i64, i64* @TRUE, align 8
  store i64 %405, i64* %2, align 8
  br label %406

406:                                              ; preds = %404, %381, %360, %329, %188, %97, %90, %24
  %407 = load i64, i64* %2, align 8
  ret i64 %407
}

declare dso_local i32* @OpenStockProfile(i32, i32*) #1

declare dso_local i64 @cmsGetDeviceClass(i32, i32*) #1

declare dso_local i32 @cmsGetColorSpace(i32, i32*) #1

declare dso_local i32 @cmsGetPCS(i32, i32*) #1

declare dso_local i64 @cmsIsTag(i32, i32*, i32) #1

declare dso_local i32* @cmsReadTag(i32, i32*, i32) #1

declare dso_local i32 @cmsDupNamedColorList(i32, i32*) #1

declare dso_local i32 @ComponentNames(i32, i32, i64) #1

declare dso_local i32 @FatalError(i8*, ...) #1

declare dso_local i32 @cmsNamedColorCount(i32, i32) #1

declare dso_local i32 @SetRange(i32, i64) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @PrintProfileInformation(i32, i32*) #1

declare dso_local i32 @cmsFormatterForColorspaceOfProfile(i32, i32*, i32, i64) #1

declare dso_local i32 @cmsFormatterForPCSOfProfile(i32, i32*, i32, i64) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @cmsSetAlarmCodes(i32, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32* @cmsCreateProofingTransform(i32, i32*, i32, i32*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @cmsCloseProfile(i32, i32*) #1

declare dso_local i32* @cmsCreateXYZProfile(i32) #1

declare dso_local i32* @cmsCreateLab4Profile(i32, i32*) #1

declare dso_local i8* @cmsCreateTransform(i32, i32*, i32, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
