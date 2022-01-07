; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmsopt.c_OptimizeByComputingLinearization.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmsopt.c_OptimizeByComputingLinearization.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_43__ = type { i64, i32 }
%struct.TYPE_42__ = type { i64 }
%struct.TYPE_41__ = type { i32* }
%struct.TYPE_45__ = type { i32 }
%struct.TYPE_44__ = type { i64, %struct.TYPE_41__** }

@cmsMAXCHANNELS = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@PT_RGB = common dso_local global i64 0, align 8
@cmsFLAGS_CLUT_PRE_LINEARIZATION = common dso_local global i64 0, align 8
@cmsSigNamedColorElemType = common dso_local global i64 0, align 8
@cmsSigCurveSetElemType = common dso_local global i64 0, align 8
@PRELINEARIZATION_POINTS = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@cmsAT_BEGIN = common dso_local global i32 0, align 4
@cmsAT_END = common dso_local global i32 0, align 4
@XFormSampler16 = common dso_local global i32 0, align 4
@PrelinEval8 = common dso_local global i32 0, align 4
@Prelin8free = common dso_local global i32 0, align 4
@Prelin8dup = common dso_local global i32 0, align 4
@PrelinEval16 = common dso_local global i32 0, align 4
@PrelinOpt16free = common dso_local global i32 0, align 4
@Prelin16dup = common dso_local global i32 0, align 4
@INTENT_ABSOLUTE_COLORIMETRIC = common dso_local global i64 0, align 8
@cmsFLAGS_NOWHITEONWHITEFIXUP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, %struct.TYPE_43__**, i64, i64*, i64*, i64*)* @OptimizeByComputingLinearization to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @OptimizeByComputingLinearization(i32 %0, %struct.TYPE_43__** %1, i64 %2, i64* %3, i64* %4, i64* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_43__**, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca %struct.TYPE_43__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca double, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca %struct.TYPE_43__*, align 8
  %27 = alloca %struct.TYPE_43__*, align 8
  %28 = alloca %struct.TYPE_42__*, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca %struct.TYPE_42__*, align 8
  %32 = alloca %struct.TYPE_42__*, align 8
  %33 = alloca %struct.TYPE_41__**, align 8
  %34 = alloca %struct.TYPE_45__*, align 8
  %35 = alloca i32, align 4
  %36 = alloca %struct.TYPE_42__*, align 8
  %37 = alloca %struct.TYPE_44__*, align 8
  %38 = alloca i32*, align 8
  %39 = alloca i32*, align 8
  store i32 %0, i32* %8, align 4
  store %struct.TYPE_43__** %1, %struct.TYPE_43__*** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64* %3, i64** %11, align 8
  store i64* %4, i64** %12, align 8
  store i64* %5, i64** %13, align 8
  %40 = load i32, i32* @cmsMAXCHANNELS, align 4
  %41 = zext i32 %40 to i64
  %42 = call i8* @llvm.stacksave()
  store i8* %42, i8** %16, align 8
  %43 = alloca %struct.TYPE_41__*, i64 %41, align 16
  store i64 %41, i64* %17, align 8
  %44 = load i32, i32* @cmsMAXCHANNELS, align 4
  %45 = zext i32 %44 to i64
  %46 = alloca %struct.TYPE_41__*, i64 %45, align 16
  store i64 %45, i64* %18, align 8
  %47 = load i32, i32* @cmsMAXCHANNELS, align 4
  %48 = zext i32 %47 to i64
  %49 = alloca double, i64 %48, align 16
  store i64 %48, i64* %22, align 8
  %50 = load i32, i32* @cmsMAXCHANNELS, align 4
  %51 = zext i32 %50 to i64
  %52 = alloca double, i64 %51, align 16
  store i64 %51, i64* %23, align 8
  store %struct.TYPE_43__* null, %struct.TYPE_43__** %26, align 8
  store %struct.TYPE_43__* null, %struct.TYPE_43__** %27, align 8
  %53 = load i64*, i64** %11, align 8
  %54 = load i64, i64* %53, align 8
  %55 = call i64 @_cmsFormatterIsFloat(i64 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %6
  %58 = load i64*, i64** %12, align 8
  %59 = load i64, i64* %58, align 8
  %60 = call i64 @_cmsFormatterIsFloat(i64 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57, %6
  %63 = load i64, i64* @FALSE, align 8
  store i64 %63, i64* %7, align 8
  store i32 1, i32* %35, align 4
  br label %599

64:                                               ; preds = %57
  %65 = load i64*, i64** %11, align 8
  %66 = load i64, i64* %65, align 8
  %67 = call i64 @T_COLORSPACE(i64 %66)
  %68 = load i64, i64* @PT_RGB, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = load i64, i64* @FALSE, align 8
  store i64 %71, i64* %7, align 8
  store i32 1, i32* %35, align 4
  br label %599

72:                                               ; preds = %64
  %73 = load i64*, i64** %11, align 8
  %74 = load i64, i64* %73, align 8
  %75 = call i64 @T_PLANAR(i64 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = load i64, i64* @FALSE, align 8
  store i64 %78, i64* %7, align 8
  store i32 1, i32* %35, align 4
  br label %599

79:                                               ; preds = %72
  %80 = load i64*, i64** %12, align 8
  %81 = load i64, i64* %80, align 8
  %82 = call i64 @T_COLORSPACE(i64 %81)
  %83 = load i64, i64* @PT_RGB, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %79
  %86 = load i64, i64* @FALSE, align 8
  store i64 %86, i64* %7, align 8
  store i32 1, i32* %35, align 4
  br label %599

87:                                               ; preds = %79
  %88 = load i64*, i64** %12, align 8
  %89 = load i64, i64* %88, align 8
  %90 = call i64 @T_PLANAR(i64 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %87
  %93 = load i64, i64* @FALSE, align 8
  store i64 %93, i64* %7, align 8
  store i32 1, i32* %35, align 4
  br label %599

94:                                               ; preds = %87
  %95 = load i64*, i64** %11, align 8
  %96 = load i64, i64* %95, align 8
  %97 = call i64 @_cmsFormatterIs8bit(i64 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %108, label %99

99:                                               ; preds = %94
  %100 = load i64*, i64** %13, align 8
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @cmsFLAGS_CLUT_PRE_LINEARIZATION, align 8
  %103 = and i64 %101, %102
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %107, label %105

105:                                              ; preds = %99
  %106 = load i64, i64* @FALSE, align 8
  store i64 %106, i64* %7, align 8
  store i32 1, i32* %35, align 4
  br label %599

107:                                              ; preds = %99
  br label %108

108:                                              ; preds = %107, %94
  %109 = load %struct.TYPE_43__**, %struct.TYPE_43__*** %9, align 8
  %110 = load %struct.TYPE_43__*, %struct.TYPE_43__** %109, align 8
  store %struct.TYPE_43__* %110, %struct.TYPE_43__** %14, align 8
  %111 = load i32, i32* %8, align 4
  %112 = load %struct.TYPE_43__*, %struct.TYPE_43__** %14, align 8
  %113 = call %struct.TYPE_42__* @cmsPipelineGetPtrToFirstStage(i32 %111, %struct.TYPE_43__* %112)
  store %struct.TYPE_42__* %113, %struct.TYPE_42__** %32, align 8
  br label %114

114:                                              ; preds = %126, %108
  %115 = load %struct.TYPE_42__*, %struct.TYPE_42__** %32, align 8
  %116 = icmp ne %struct.TYPE_42__* %115, null
  br i1 %116, label %117, label %130

117:                                              ; preds = %114
  %118 = load i32, i32* %8, align 4
  %119 = load %struct.TYPE_42__*, %struct.TYPE_42__** %32, align 8
  %120 = call i64 @cmsStageType(i32 %118, %struct.TYPE_42__* %119)
  %121 = load i64, i64* @cmsSigNamedColorElemType, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %125

123:                                              ; preds = %117
  %124 = load i64, i64* @FALSE, align 8
  store i64 %124, i64* %7, align 8
  store i32 1, i32* %35, align 4
  br label %599

125:                                              ; preds = %117
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %8, align 4
  %128 = load %struct.TYPE_42__*, %struct.TYPE_42__** %32, align 8
  %129 = call %struct.TYPE_42__* @cmsStageNext(i32 %127, %struct.TYPE_42__* %128)
  store %struct.TYPE_42__* %129, %struct.TYPE_42__** %32, align 8
  br label %114

130:                                              ; preds = %114
  %131 = load i32, i32* %8, align 4
  %132 = load i64*, i64** %11, align 8
  %133 = load i64, i64* %132, align 8
  %134 = call i64 @T_COLORSPACE(i64 %133)
  %135 = trunc i64 %134 to i32
  %136 = call i64 @_cmsICCcolorSpace(i32 %131, i32 %135)
  store i64 %136, i64* %29, align 8
  %137 = load i32, i32* %8, align 4
  %138 = load i64*, i64** %12, align 8
  %139 = load i64, i64* %138, align 8
  %140 = call i64 @T_COLORSPACE(i64 %139)
  %141 = trunc i64 %140 to i32
  %142 = call i64 @_cmsICCcolorSpace(i32 %137, i32 %141)
  store i64 %142, i64* %30, align 8
  %143 = load i64, i64* %29, align 8
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %148, label %145

145:                                              ; preds = %130
  %146 = load i64, i64* %30, align 8
  %147 = icmp eq i64 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %145, %130
  %149 = load i64, i64* @FALSE, align 8
  store i64 %149, i64* %7, align 8
  store i32 1, i32* %35, align 4
  br label %599

150:                                              ; preds = %145
  %151 = load i32, i32* %8, align 4
  %152 = load i64, i64* %29, align 8
  %153 = load i64*, i64** %13, align 8
  %154 = load i64, i64* %153, align 8
  %155 = call i64 @_cmsReasonableGridpointsByColorspace(i32 %151, i64 %152, i64 %154)
  store i64 %155, i64* %15, align 8
  %156 = mul nuw i64 8, %41
  %157 = trunc i64 %156 to i32
  %158 = call i32 @memset(%struct.TYPE_41__** %43, i32 0, i32 %157)
  %159 = mul nuw i64 8, %45
  %160 = trunc i64 %159 to i32
  %161 = call i32 @memset(%struct.TYPE_41__** %46, i32 0, i32 %160)
  %162 = load i32, i32* %8, align 4
  %163 = load %struct.TYPE_43__*, %struct.TYPE_43__** %14, align 8
  %164 = call %struct.TYPE_42__* @cmsPipelineGetPtrToLastStage(i32 %162, %struct.TYPE_43__* %163)
  store %struct.TYPE_42__* %164, %struct.TYPE_42__** %36, align 8
  %165 = load i32, i32* %8, align 4
  %166 = load %struct.TYPE_42__*, %struct.TYPE_42__** %36, align 8
  %167 = call i64 @cmsStageType(i32 %165, %struct.TYPE_42__* %166)
  %168 = load i64, i64* @cmsSigCurveSetElemType, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %170, label %196

170:                                              ; preds = %150
  %171 = load i32, i32* %8, align 4
  %172 = load %struct.TYPE_42__*, %struct.TYPE_42__** %36, align 8
  %173 = call i64 @cmsStageData(i32 %171, %struct.TYPE_42__* %172)
  %174 = inttoptr i64 %173 to %struct.TYPE_44__*
  store %struct.TYPE_44__* %174, %struct.TYPE_44__** %37, align 8
  store i64 0, i64* %20, align 8
  br label %175

175:                                              ; preds = %192, %170
  %176 = load i64, i64* %20, align 8
  %177 = load %struct.TYPE_44__*, %struct.TYPE_44__** %37, align 8
  %178 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = icmp ult i64 %176, %179
  br i1 %180, label %181, label %195

181:                                              ; preds = %175
  %182 = load %struct.TYPE_44__*, %struct.TYPE_44__** %37, align 8
  %183 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %182, i32 0, i32 1
  %184 = load %struct.TYPE_41__**, %struct.TYPE_41__*** %183, align 8
  %185 = load i64, i64* %20, align 8
  %186 = getelementptr inbounds %struct.TYPE_41__*, %struct.TYPE_41__** %184, i64 %185
  %187 = load %struct.TYPE_41__*, %struct.TYPE_41__** %186, align 8
  %188 = call i64 @IsDegenerated(%struct.TYPE_41__* %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %181
  br label %550

191:                                              ; preds = %181
  br label %192

192:                                              ; preds = %191
  %193 = load i64, i64* %20, align 8
  %194 = add i64 %193, 1
  store i64 %194, i64* %20, align 8
  br label %175

195:                                              ; preds = %175
  br label %196

196:                                              ; preds = %195, %150
  store i64 0, i64* %19, align 8
  br label %197

197:                                              ; preds = %215, %196
  %198 = load i64, i64* %19, align 8
  %199 = load %struct.TYPE_43__*, %struct.TYPE_43__** %14, align 8
  %200 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = icmp ult i64 %198, %201
  br i1 %202, label %203, label %218

203:                                              ; preds = %197
  %204 = load i32, i32* %8, align 4
  %205 = load i64, i64* @PRELINEARIZATION_POINTS, align 8
  %206 = call %struct.TYPE_41__* @cmsBuildTabulatedToneCurve16(i32 %204, i64 %205, i32* null)
  %207 = load i64, i64* %19, align 8
  %208 = getelementptr inbounds %struct.TYPE_41__*, %struct.TYPE_41__** %43, i64 %207
  store %struct.TYPE_41__* %206, %struct.TYPE_41__** %208, align 8
  %209 = load i64, i64* %19, align 8
  %210 = getelementptr inbounds %struct.TYPE_41__*, %struct.TYPE_41__** %43, i64 %209
  %211 = load %struct.TYPE_41__*, %struct.TYPE_41__** %210, align 8
  %212 = icmp eq %struct.TYPE_41__* %211, null
  br i1 %212, label %213, label %214

213:                                              ; preds = %203
  br label %550

214:                                              ; preds = %203
  br label %215

215:                                              ; preds = %214
  %216 = load i64, i64* %19, align 8
  %217 = add i64 %216, 1
  store i64 %217, i64* %19, align 8
  br label %197

218:                                              ; preds = %197
  store i64 0, i64* %20, align 8
  br label %219

219:                                              ; preds = %269, %218
  %220 = load i64, i64* %20, align 8
  %221 = load i64, i64* @PRELINEARIZATION_POINTS, align 8
  %222 = icmp ult i64 %220, %221
  br i1 %222, label %223, label %272

223:                                              ; preds = %219
  %224 = load i64, i64* %20, align 8
  %225 = load i64, i64* @PRELINEARIZATION_POINTS, align 8
  %226 = sub i64 %225, 1
  %227 = udiv i64 %224, %226
  %228 = uitofp i64 %227 to double
  store double %228, double* %21, align 8
  store i64 0, i64* %19, align 8
  br label %229

229:                                              ; preds = %239, %223
  %230 = load i64, i64* %19, align 8
  %231 = load %struct.TYPE_43__*, %struct.TYPE_43__** %14, align 8
  %232 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = icmp ult i64 %230, %233
  br i1 %234, label %235, label %242

235:                                              ; preds = %229
  %236 = load double, double* %21, align 8
  %237 = load i64, i64* %19, align 8
  %238 = getelementptr inbounds double, double* %49, i64 %237
  store double %236, double* %238, align 8
  br label %239

239:                                              ; preds = %235
  %240 = load i64, i64* %19, align 8
  %241 = add i64 %240, 1
  store i64 %241, i64* %19, align 8
  br label %229

242:                                              ; preds = %229
  %243 = load i32, i32* %8, align 4
  %244 = load %struct.TYPE_43__*, %struct.TYPE_43__** %14, align 8
  %245 = call i32 @cmsPipelineEvalFloat(i32 %243, double* %49, double* %52, %struct.TYPE_43__* %244)
  store i64 0, i64* %19, align 8
  br label %246

246:                                              ; preds = %265, %242
  %247 = load i64, i64* %19, align 8
  %248 = load %struct.TYPE_43__*, %struct.TYPE_43__** %14, align 8
  %249 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %248, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = icmp ult i64 %247, %250
  br i1 %251, label %252, label %268

252:                                              ; preds = %246
  %253 = load i64, i64* %19, align 8
  %254 = getelementptr inbounds double, double* %52, i64 %253
  %255 = load double, double* %254, align 8
  %256 = fmul double %255, 6.553500e+04
  %257 = call i32 @_cmsQuickSaturateWord(double %256)
  %258 = load i64, i64* %19, align 8
  %259 = getelementptr inbounds %struct.TYPE_41__*, %struct.TYPE_41__** %43, i64 %258
  %260 = load %struct.TYPE_41__*, %struct.TYPE_41__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %260, i32 0, i32 0
  %262 = load i32*, i32** %261, align 8
  %263 = load i64, i64* %20, align 8
  %264 = getelementptr inbounds i32, i32* %262, i64 %263
  store i32 %257, i32* %264, align 4
  br label %265

265:                                              ; preds = %252
  %266 = load i64, i64* %19, align 8
  %267 = add i64 %266, 1
  store i64 %267, i64* %19, align 8
  br label %246

268:                                              ; preds = %246
  br label %269

269:                                              ; preds = %268
  %270 = load i64, i64* %20, align 8
  %271 = add i64 %270, 1
  store i64 %271, i64* %20, align 8
  br label %219

272:                                              ; preds = %219
  store i64 0, i64* %19, align 8
  br label %273

273:                                              ; preds = %285, %272
  %274 = load i64, i64* %19, align 8
  %275 = load %struct.TYPE_43__*, %struct.TYPE_43__** %14, align 8
  %276 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %275, i32 0, i32 0
  %277 = load i64, i64* %276, align 8
  %278 = icmp ult i64 %274, %277
  br i1 %278, label %279, label %288

279:                                              ; preds = %273
  %280 = load i32, i32* %8, align 4
  %281 = load i64, i64* %19, align 8
  %282 = getelementptr inbounds %struct.TYPE_41__*, %struct.TYPE_41__** %43, i64 %281
  %283 = load %struct.TYPE_41__*, %struct.TYPE_41__** %282, align 8
  %284 = call i32 @SlopeLimiting(i32 %280, %struct.TYPE_41__* %283)
  br label %285

285:                                              ; preds = %279
  %286 = load i64, i64* %19, align 8
  %287 = add i64 %286, 1
  store i64 %287, i64* %19, align 8
  br label %273

288:                                              ; preds = %273
  %289 = load i64, i64* @TRUE, align 8
  store i64 %289, i64* %24, align 8
  %290 = load i64, i64* @TRUE, align 8
  store i64 %290, i64* %25, align 8
  store i64 0, i64* %19, align 8
  br label %291

291:                                              ; preds = %329, %288
  %292 = load i64, i64* %24, align 8
  %293 = icmp ne i64 %292, 0
  br i1 %293, label %294, label %300

294:                                              ; preds = %291
  %295 = load i64, i64* %19, align 8
  %296 = load %struct.TYPE_43__*, %struct.TYPE_43__** %14, align 8
  %297 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %296, i32 0, i32 0
  %298 = load i64, i64* %297, align 8
  %299 = icmp ult i64 %295, %298
  br label %300

300:                                              ; preds = %294, %291
  %301 = phi i1 [ false, %291 ], [ %299, %294 ]
  br i1 %301, label %302, label %332

302:                                              ; preds = %300
  %303 = load i32, i32* %8, align 4
  %304 = load i64, i64* %19, align 8
  %305 = getelementptr inbounds %struct.TYPE_41__*, %struct.TYPE_41__** %43, i64 %304
  %306 = load %struct.TYPE_41__*, %struct.TYPE_41__** %305, align 8
  %307 = call i32 @cmsIsToneCurveLinear(i32 %303, %struct.TYPE_41__* %306)
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %311, label %309

309:                                              ; preds = %302
  %310 = load i64, i64* @FALSE, align 8
  store i64 %310, i64* %25, align 8
  br label %311

311:                                              ; preds = %309, %302
  %312 = load i32, i32* %8, align 4
  %313 = load i64, i64* %19, align 8
  %314 = getelementptr inbounds %struct.TYPE_41__*, %struct.TYPE_41__** %43, i64 %313
  %315 = load %struct.TYPE_41__*, %struct.TYPE_41__** %314, align 8
  %316 = call i32 @cmsIsToneCurveMonotonic(i32 %312, %struct.TYPE_41__* %315)
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %320, label %318

318:                                              ; preds = %311
  %319 = load i64, i64* @FALSE, align 8
  store i64 %319, i64* %24, align 8
  br label %320

320:                                              ; preds = %318, %311
  %321 = load i64, i64* %19, align 8
  %322 = getelementptr inbounds %struct.TYPE_41__*, %struct.TYPE_41__** %43, i64 %321
  %323 = load %struct.TYPE_41__*, %struct.TYPE_41__** %322, align 8
  %324 = call i64 @IsDegenerated(%struct.TYPE_41__* %323)
  %325 = icmp ne i64 %324, 0
  br i1 %325, label %326, label %328

326:                                              ; preds = %320
  %327 = load i64, i64* @FALSE, align 8
  store i64 %327, i64* %24, align 8
  br label %328

328:                                              ; preds = %326, %320
  br label %329

329:                                              ; preds = %328
  %330 = load i64, i64* %19, align 8
  %331 = add i64 %330, 1
  store i64 %331, i64* %19, align 8
  br label %291

332:                                              ; preds = %300
  %333 = load i64, i64* %24, align 8
  %334 = icmp ne i64 %333, 0
  br i1 %334, label %336, label %335

335:                                              ; preds = %332
  br label %550

336:                                              ; preds = %332
  store i64 0, i64* %19, align 8
  br label %337

337:                                              ; preds = %358, %336
  %338 = load i64, i64* %19, align 8
  %339 = load %struct.TYPE_43__*, %struct.TYPE_43__** %14, align 8
  %340 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %339, i32 0, i32 0
  %341 = load i64, i64* %340, align 8
  %342 = icmp ult i64 %338, %341
  br i1 %342, label %343, label %361

343:                                              ; preds = %337
  %344 = load i32, i32* %8, align 4
  %345 = load i64, i64* @PRELINEARIZATION_POINTS, align 8
  %346 = load i64, i64* %19, align 8
  %347 = getelementptr inbounds %struct.TYPE_41__*, %struct.TYPE_41__** %43, i64 %346
  %348 = load %struct.TYPE_41__*, %struct.TYPE_41__** %347, align 8
  %349 = call %struct.TYPE_41__* @cmsReverseToneCurveEx(i32 %344, i64 %345, %struct.TYPE_41__* %348)
  %350 = load i64, i64* %19, align 8
  %351 = getelementptr inbounds %struct.TYPE_41__*, %struct.TYPE_41__** %46, i64 %350
  store %struct.TYPE_41__* %349, %struct.TYPE_41__** %351, align 8
  %352 = load i64, i64* %19, align 8
  %353 = getelementptr inbounds %struct.TYPE_41__*, %struct.TYPE_41__** %46, i64 %352
  %354 = load %struct.TYPE_41__*, %struct.TYPE_41__** %353, align 8
  %355 = icmp eq %struct.TYPE_41__* %354, null
  br i1 %355, label %356, label %357

356:                                              ; preds = %343
  br label %550

357:                                              ; preds = %343
  br label %358

358:                                              ; preds = %357
  %359 = load i64, i64* %19, align 8
  %360 = add i64 %359, 1
  store i64 %360, i64* %19, align 8
  br label %337

361:                                              ; preds = %337
  %362 = load i32, i32* %8, align 4
  %363 = load %struct.TYPE_43__*, %struct.TYPE_43__** %14, align 8
  %364 = call %struct.TYPE_43__* @cmsPipelineDup(i32 %362, %struct.TYPE_43__* %363)
  store %struct.TYPE_43__* %364, %struct.TYPE_43__** %27, align 8
  %365 = load %struct.TYPE_43__*, %struct.TYPE_43__** %27, align 8
  %366 = icmp eq %struct.TYPE_43__* %365, null
  br i1 %366, label %367, label %368

367:                                              ; preds = %361
  br label %550

368:                                              ; preds = %361
  %369 = load i32, i32* %8, align 4
  %370 = load %struct.TYPE_43__*, %struct.TYPE_43__** %27, align 8
  %371 = load i32, i32* @cmsAT_BEGIN, align 4
  %372 = load i32, i32* %8, align 4
  %373 = load %struct.TYPE_43__*, %struct.TYPE_43__** %14, align 8
  %374 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %373, i32 0, i32 0
  %375 = load i64, i64* %374, align 8
  %376 = call %struct.TYPE_42__* @cmsStageAllocToneCurves(i32 %372, i64 %375, %struct.TYPE_41__** %46)
  %377 = call i32 @cmsPipelineInsertStage(i32 %369, %struct.TYPE_43__* %370, i32 %371, %struct.TYPE_42__* %376)
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %380, label %379

379:                                              ; preds = %368
  br label %550

380:                                              ; preds = %368
  %381 = load i32, i32* %8, align 4
  %382 = load %struct.TYPE_43__*, %struct.TYPE_43__** %14, align 8
  %383 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %382, i32 0, i32 0
  %384 = load i64, i64* %383, align 8
  %385 = load %struct.TYPE_43__*, %struct.TYPE_43__** %14, align 8
  %386 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %385, i32 0, i32 1
  %387 = load i32, i32* %386, align 8
  %388 = call %struct.TYPE_43__* @cmsPipelineAlloc(i32 %381, i64 %384, i32 %387)
  store %struct.TYPE_43__* %388, %struct.TYPE_43__** %26, align 8
  %389 = load %struct.TYPE_43__*, %struct.TYPE_43__** %26, align 8
  %390 = icmp eq %struct.TYPE_43__* %389, null
  br i1 %390, label %391, label %392

391:                                              ; preds = %380
  br label %550

392:                                              ; preds = %380
  %393 = load i32, i32* %8, align 4
  %394 = load %struct.TYPE_43__*, %struct.TYPE_43__** %14, align 8
  %395 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %394, i32 0, i32 0
  %396 = load i64, i64* %395, align 8
  %397 = call %struct.TYPE_42__* @cmsStageAllocToneCurves(i32 %393, i64 %396, %struct.TYPE_41__** %43)
  store %struct.TYPE_42__* %397, %struct.TYPE_42__** %31, align 8
  %398 = load i32, i32* %8, align 4
  %399 = load %struct.TYPE_43__*, %struct.TYPE_43__** %26, align 8
  %400 = load i32, i32* @cmsAT_BEGIN, align 4
  %401 = load %struct.TYPE_42__*, %struct.TYPE_42__** %31, align 8
  %402 = call i32 @cmsPipelineInsertStage(i32 %398, %struct.TYPE_43__* %399, i32 %400, %struct.TYPE_42__* %401)
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %405, label %404

404:                                              ; preds = %392
  br label %550

405:                                              ; preds = %392
  %406 = load i32, i32* %8, align 4
  %407 = load i64, i64* %15, align 8
  %408 = load %struct.TYPE_43__*, %struct.TYPE_43__** %14, align 8
  %409 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %408, i32 0, i32 0
  %410 = load i64, i64* %409, align 8
  %411 = load %struct.TYPE_43__*, %struct.TYPE_43__** %14, align 8
  %412 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %411, i32 0, i32 1
  %413 = load i32, i32* %412, align 8
  %414 = call %struct.TYPE_42__* @cmsStageAllocCLut16bit(i32 %406, i64 %407, i64 %410, i32 %413, i32* null)
  store %struct.TYPE_42__* %414, %struct.TYPE_42__** %28, align 8
  %415 = load i32, i32* %8, align 4
  %416 = load %struct.TYPE_43__*, %struct.TYPE_43__** %26, align 8
  %417 = load i32, i32* @cmsAT_END, align 4
  %418 = load %struct.TYPE_42__*, %struct.TYPE_42__** %28, align 8
  %419 = call i32 @cmsPipelineInsertStage(i32 %415, %struct.TYPE_43__* %416, i32 %417, %struct.TYPE_42__* %418)
  %420 = icmp ne i32 %419, 0
  br i1 %420, label %422, label %421

421:                                              ; preds = %405
  br label %550

422:                                              ; preds = %405
  %423 = load i32, i32* %8, align 4
  %424 = load %struct.TYPE_42__*, %struct.TYPE_42__** %28, align 8
  %425 = load i32, i32* @XFormSampler16, align 4
  %426 = load %struct.TYPE_43__*, %struct.TYPE_43__** %27, align 8
  %427 = bitcast %struct.TYPE_43__* %426 to i8*
  %428 = call i32 @cmsStageSampleCLut16bit(i32 %423, %struct.TYPE_42__* %424, i32 %425, i8* %427, i32 0)
  %429 = icmp ne i32 %428, 0
  br i1 %429, label %431, label %430

430:                                              ; preds = %422
  br label %550

431:                                              ; preds = %422
  store i64 0, i64* %19, align 8
  br label %432

432:                                              ; preds = %461, %431
  %433 = load i64, i64* %19, align 8
  %434 = load %struct.TYPE_43__*, %struct.TYPE_43__** %14, align 8
  %435 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %434, i32 0, i32 0
  %436 = load i64, i64* %435, align 8
  %437 = icmp ult i64 %433, %436
  br i1 %437, label %438, label %464

438:                                              ; preds = %432
  %439 = load i64, i64* %19, align 8
  %440 = getelementptr inbounds %struct.TYPE_41__*, %struct.TYPE_41__** %43, i64 %439
  %441 = load %struct.TYPE_41__*, %struct.TYPE_41__** %440, align 8
  %442 = icmp ne %struct.TYPE_41__* %441, null
  br i1 %442, label %443, label %449

443:                                              ; preds = %438
  %444 = load i32, i32* %8, align 4
  %445 = load i64, i64* %19, align 8
  %446 = getelementptr inbounds %struct.TYPE_41__*, %struct.TYPE_41__** %43, i64 %445
  %447 = load %struct.TYPE_41__*, %struct.TYPE_41__** %446, align 8
  %448 = call i32 @cmsFreeToneCurve(i32 %444, %struct.TYPE_41__* %447)
  br label %449

449:                                              ; preds = %443, %438
  %450 = load i64, i64* %19, align 8
  %451 = getelementptr inbounds %struct.TYPE_41__*, %struct.TYPE_41__** %46, i64 %450
  %452 = load %struct.TYPE_41__*, %struct.TYPE_41__** %451, align 8
  %453 = icmp ne %struct.TYPE_41__* %452, null
  br i1 %453, label %454, label %460

454:                                              ; preds = %449
  %455 = load i32, i32* %8, align 4
  %456 = load i64, i64* %19, align 8
  %457 = getelementptr inbounds %struct.TYPE_41__*, %struct.TYPE_41__** %46, i64 %456
  %458 = load %struct.TYPE_41__*, %struct.TYPE_41__** %457, align 8
  %459 = call i32 @cmsFreeToneCurve(i32 %455, %struct.TYPE_41__* %458)
  br label %460

460:                                              ; preds = %454, %449
  br label %461

461:                                              ; preds = %460
  %462 = load i64, i64* %19, align 8
  %463 = add i64 %462, 1
  store i64 %463, i64* %19, align 8
  br label %432

464:                                              ; preds = %432
  %465 = load i32, i32* %8, align 4
  %466 = load %struct.TYPE_43__*, %struct.TYPE_43__** %27, align 8
  %467 = call i32 @cmsPipelineFree(i32 %465, %struct.TYPE_43__* %466)
  %468 = load %struct.TYPE_42__*, %struct.TYPE_42__** %31, align 8
  %469 = call %struct.TYPE_41__** @_cmsStageGetPtrToCurveSet(%struct.TYPE_42__* %468)
  store %struct.TYPE_41__** %469, %struct.TYPE_41__*** %33, align 8
  %470 = load %struct.TYPE_42__*, %struct.TYPE_42__** %28, align 8
  %471 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %470, i32 0, i32 0
  %472 = load i64, i64* %471, align 8
  %473 = inttoptr i64 %472 to %struct.TYPE_45__*
  store %struct.TYPE_45__* %473, %struct.TYPE_45__** %34, align 8
  %474 = load i64*, i64** %11, align 8
  %475 = load i64, i64* %474, align 8
  %476 = call i64 @_cmsFormatterIs8bit(i64 %475)
  %477 = icmp ne i64 %476, 0
  br i1 %477, label %478, label %498

478:                                              ; preds = %464
  %479 = load i32, i32* %8, align 4
  %480 = load %struct.TYPE_45__*, %struct.TYPE_45__** %34, align 8
  %481 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %480, i32 0, i32 0
  %482 = load i32, i32* %481, align 4
  %483 = load %struct.TYPE_41__**, %struct.TYPE_41__*** %33, align 8
  %484 = call i32* @PrelinOpt8alloc(i32 %479, i32 %482, %struct.TYPE_41__** %483)
  store i32* %484, i32** %38, align 8
  %485 = load i32*, i32** %38, align 8
  %486 = icmp eq i32* %485, null
  br i1 %486, label %487, label %489

487:                                              ; preds = %478
  %488 = load i64, i64* @FALSE, align 8
  store i64 %488, i64* %7, align 8
  store i32 1, i32* %35, align 4
  br label %599

489:                                              ; preds = %478
  %490 = load i32, i32* %8, align 4
  %491 = load %struct.TYPE_43__*, %struct.TYPE_43__** %26, align 8
  %492 = load i32, i32* @PrelinEval8, align 4
  %493 = load i32*, i32** %38, align 8
  %494 = bitcast i32* %493 to i8*
  %495 = load i32, i32* @Prelin8free, align 4
  %496 = load i32, i32* @Prelin8dup, align 4
  %497 = call i32 @_cmsPipelineSetOptimizationParameters(i32 %490, %struct.TYPE_43__* %491, i32 %492, i8* %494, i32 %495, i32 %496)
  br label %518

498:                                              ; preds = %464
  %499 = load i32, i32* %8, align 4
  %500 = load %struct.TYPE_45__*, %struct.TYPE_45__** %34, align 8
  %501 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %500, i32 0, i32 0
  %502 = load i32, i32* %501, align 4
  %503 = load %struct.TYPE_41__**, %struct.TYPE_41__*** %33, align 8
  %504 = call i32* @PrelinOpt16alloc(i32 %499, i32 %502, i32 3, %struct.TYPE_41__** %503, i32 3, i32* null)
  store i32* %504, i32** %39, align 8
  %505 = load i32*, i32** %39, align 8
  %506 = icmp eq i32* %505, null
  br i1 %506, label %507, label %509

507:                                              ; preds = %498
  %508 = load i64, i64* @FALSE, align 8
  store i64 %508, i64* %7, align 8
  store i32 1, i32* %35, align 4
  br label %599

509:                                              ; preds = %498
  %510 = load i32, i32* %8, align 4
  %511 = load %struct.TYPE_43__*, %struct.TYPE_43__** %26, align 8
  %512 = load i32, i32* @PrelinEval16, align 4
  %513 = load i32*, i32** %39, align 8
  %514 = bitcast i32* %513 to i8*
  %515 = load i32, i32* @PrelinOpt16free, align 4
  %516 = load i32, i32* @Prelin16dup, align 4
  %517 = call i32 @_cmsPipelineSetOptimizationParameters(i32 %510, %struct.TYPE_43__* %511, i32 %512, i8* %514, i32 %515, i32 %516)
  br label %518

518:                                              ; preds = %509, %489
  %519 = load i64, i64* %10, align 8
  %520 = load i64, i64* @INTENT_ABSOLUTE_COLORIMETRIC, align 8
  %521 = icmp eq i64 %519, %520
  br i1 %521, label %522, label %527

522:                                              ; preds = %518
  %523 = load i64, i64* @cmsFLAGS_NOWHITEONWHITEFIXUP, align 8
  %524 = load i64*, i64** %13, align 8
  %525 = load i64, i64* %524, align 8
  %526 = or i64 %525, %523
  store i64 %526, i64* %524, align 8
  br label %527

527:                                              ; preds = %522, %518
  %528 = load i64*, i64** %13, align 8
  %529 = load i64, i64* %528, align 8
  %530 = load i64, i64* @cmsFLAGS_NOWHITEONWHITEFIXUP, align 8
  %531 = and i64 %529, %530
  %532 = icmp ne i64 %531, 0
  br i1 %532, label %543, label %533

533:                                              ; preds = %527
  %534 = load i32, i32* %8, align 4
  %535 = load %struct.TYPE_43__*, %struct.TYPE_43__** %26, align 8
  %536 = load i64, i64* %29, align 8
  %537 = load i64, i64* %30, align 8
  %538 = call i32 @FixWhiteMisalignment(i32 %534, %struct.TYPE_43__* %535, i64 %536, i64 %537)
  %539 = icmp ne i32 %538, 0
  br i1 %539, label %542, label %540

540:                                              ; preds = %533
  %541 = load i64, i64* @FALSE, align 8
  store i64 %541, i64* %7, align 8
  store i32 1, i32* %35, align 4
  br label %599

542:                                              ; preds = %533
  br label %543

543:                                              ; preds = %542, %527
  %544 = load i32, i32* %8, align 4
  %545 = load %struct.TYPE_43__*, %struct.TYPE_43__** %14, align 8
  %546 = call i32 @cmsPipelineFree(i32 %544, %struct.TYPE_43__* %545)
  %547 = load %struct.TYPE_43__*, %struct.TYPE_43__** %26, align 8
  %548 = load %struct.TYPE_43__**, %struct.TYPE_43__*** %9, align 8
  store %struct.TYPE_43__* %547, %struct.TYPE_43__** %548, align 8
  %549 = load i64, i64* @TRUE, align 8
  store i64 %549, i64* %7, align 8
  store i32 1, i32* %35, align 4
  br label %599

550:                                              ; preds = %430, %421, %404, %391, %379, %367, %356, %335, %213, %190
  store i64 0, i64* %19, align 8
  br label %551

551:                                              ; preds = %580, %550
  %552 = load i64, i64* %19, align 8
  %553 = load %struct.TYPE_43__*, %struct.TYPE_43__** %14, align 8
  %554 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %553, i32 0, i32 0
  %555 = load i64, i64* %554, align 8
  %556 = icmp ult i64 %552, %555
  br i1 %556, label %557, label %583

557:                                              ; preds = %551
  %558 = load i64, i64* %19, align 8
  %559 = getelementptr inbounds %struct.TYPE_41__*, %struct.TYPE_41__** %43, i64 %558
  %560 = load %struct.TYPE_41__*, %struct.TYPE_41__** %559, align 8
  %561 = icmp ne %struct.TYPE_41__* %560, null
  br i1 %561, label %562, label %568

562:                                              ; preds = %557
  %563 = load i32, i32* %8, align 4
  %564 = load i64, i64* %19, align 8
  %565 = getelementptr inbounds %struct.TYPE_41__*, %struct.TYPE_41__** %43, i64 %564
  %566 = load %struct.TYPE_41__*, %struct.TYPE_41__** %565, align 8
  %567 = call i32 @cmsFreeToneCurve(i32 %563, %struct.TYPE_41__* %566)
  br label %568

568:                                              ; preds = %562, %557
  %569 = load i64, i64* %19, align 8
  %570 = getelementptr inbounds %struct.TYPE_41__*, %struct.TYPE_41__** %46, i64 %569
  %571 = load %struct.TYPE_41__*, %struct.TYPE_41__** %570, align 8
  %572 = icmp ne %struct.TYPE_41__* %571, null
  br i1 %572, label %573, label %579

573:                                              ; preds = %568
  %574 = load i32, i32* %8, align 4
  %575 = load i64, i64* %19, align 8
  %576 = getelementptr inbounds %struct.TYPE_41__*, %struct.TYPE_41__** %46, i64 %575
  %577 = load %struct.TYPE_41__*, %struct.TYPE_41__** %576, align 8
  %578 = call i32 @cmsFreeToneCurve(i32 %574, %struct.TYPE_41__* %577)
  br label %579

579:                                              ; preds = %573, %568
  br label %580

580:                                              ; preds = %579
  %581 = load i64, i64* %19, align 8
  %582 = add i64 %581, 1
  store i64 %582, i64* %19, align 8
  br label %551

583:                                              ; preds = %551
  %584 = load %struct.TYPE_43__*, %struct.TYPE_43__** %27, align 8
  %585 = icmp ne %struct.TYPE_43__* %584, null
  br i1 %585, label %586, label %590

586:                                              ; preds = %583
  %587 = load i32, i32* %8, align 4
  %588 = load %struct.TYPE_43__*, %struct.TYPE_43__** %27, align 8
  %589 = call i32 @cmsPipelineFree(i32 %587, %struct.TYPE_43__* %588)
  br label %590

590:                                              ; preds = %586, %583
  %591 = load %struct.TYPE_43__*, %struct.TYPE_43__** %26, align 8
  %592 = icmp ne %struct.TYPE_43__* %591, null
  br i1 %592, label %593, label %597

593:                                              ; preds = %590
  %594 = load i32, i32* %8, align 4
  %595 = load %struct.TYPE_43__*, %struct.TYPE_43__** %26, align 8
  %596 = call i32 @cmsPipelineFree(i32 %594, %struct.TYPE_43__* %595)
  br label %597

597:                                              ; preds = %593, %590
  %598 = load i64, i64* @FALSE, align 8
  store i64 %598, i64* %7, align 8
  store i32 1, i32* %35, align 4
  br label %599

599:                                              ; preds = %597, %543, %540, %507, %487, %148, %123, %105, %92, %85, %77, %70, %62
  %600 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %600)
  %601 = load i64, i64* %7, align 8
  ret i64 %601
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @_cmsFormatterIsFloat(i64) #2

declare dso_local i64 @T_COLORSPACE(i64) #2

declare dso_local i64 @T_PLANAR(i64) #2

declare dso_local i64 @_cmsFormatterIs8bit(i64) #2

declare dso_local %struct.TYPE_42__* @cmsPipelineGetPtrToFirstStage(i32, %struct.TYPE_43__*) #2

declare dso_local i64 @cmsStageType(i32, %struct.TYPE_42__*) #2

declare dso_local %struct.TYPE_42__* @cmsStageNext(i32, %struct.TYPE_42__*) #2

declare dso_local i64 @_cmsICCcolorSpace(i32, i32) #2

declare dso_local i64 @_cmsReasonableGridpointsByColorspace(i32, i64, i64) #2

declare dso_local i32 @memset(%struct.TYPE_41__**, i32, i32) #2

declare dso_local %struct.TYPE_42__* @cmsPipelineGetPtrToLastStage(i32, %struct.TYPE_43__*) #2

declare dso_local i64 @cmsStageData(i32, %struct.TYPE_42__*) #2

declare dso_local i64 @IsDegenerated(%struct.TYPE_41__*) #2

declare dso_local %struct.TYPE_41__* @cmsBuildTabulatedToneCurve16(i32, i64, i32*) #2

declare dso_local i32 @cmsPipelineEvalFloat(i32, double*, double*, %struct.TYPE_43__*) #2

declare dso_local i32 @_cmsQuickSaturateWord(double) #2

declare dso_local i32 @SlopeLimiting(i32, %struct.TYPE_41__*) #2

declare dso_local i32 @cmsIsToneCurveLinear(i32, %struct.TYPE_41__*) #2

declare dso_local i32 @cmsIsToneCurveMonotonic(i32, %struct.TYPE_41__*) #2

declare dso_local %struct.TYPE_41__* @cmsReverseToneCurveEx(i32, i64, %struct.TYPE_41__*) #2

declare dso_local %struct.TYPE_43__* @cmsPipelineDup(i32, %struct.TYPE_43__*) #2

declare dso_local i32 @cmsPipelineInsertStage(i32, %struct.TYPE_43__*, i32, %struct.TYPE_42__*) #2

declare dso_local %struct.TYPE_42__* @cmsStageAllocToneCurves(i32, i64, %struct.TYPE_41__**) #2

declare dso_local %struct.TYPE_43__* @cmsPipelineAlloc(i32, i64, i32) #2

declare dso_local %struct.TYPE_42__* @cmsStageAllocCLut16bit(i32, i64, i64, i32, i32*) #2

declare dso_local i32 @cmsStageSampleCLut16bit(i32, %struct.TYPE_42__*, i32, i8*, i32) #2

declare dso_local i32 @cmsFreeToneCurve(i32, %struct.TYPE_41__*) #2

declare dso_local i32 @cmsPipelineFree(i32, %struct.TYPE_43__*) #2

declare dso_local %struct.TYPE_41__** @_cmsStageGetPtrToCurveSet(%struct.TYPE_42__*) #2

declare dso_local i32* @PrelinOpt8alloc(i32, i32, %struct.TYPE_41__**) #2

declare dso_local i32 @_cmsPipelineSetOptimizationParameters(i32, %struct.TYPE_43__*, i32, i8*, i32, i32) #2

declare dso_local i32* @PrelinOpt16alloc(i32, i32, i32, %struct.TYPE_41__**, i32, i32*) #2

declare dso_local i32 @FixWhiteMisalignment(i32, %struct.TYPE_43__*, i64, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
