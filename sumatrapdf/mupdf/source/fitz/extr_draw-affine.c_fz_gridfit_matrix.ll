; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-affine.c_fz_gridfit_matrix.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-affine.c_fz_gridfit_matrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { float, float, float, float, float, float }

@FLT_EPSILON = common dso_local global i64 0, align 8
@MY_EPSILON = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fz_gridfit_matrix(%struct.TYPE_4__* noalias sret %0, i32 %1, %struct.TYPE_4__* byval(%struct.TYPE_4__) align 8 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  store i32 %1, i32* %4, align 4
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %18 = load float, float* %17, align 8
  %19 = call i64 @fabsf(float %18)
  %20 = load i64, i64* @FLT_EPSILON, align 8
  %21 = icmp slt i64 %19, %20
  br i1 %21, label %22, label %257

22:                                               ; preds = %3
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  %24 = load float, float* %23, align 4
  %25 = call i64 @fabsf(float %24)
  %26 = load i64, i64* @FLT_EPSILON, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %257

28:                                               ; preds = %22
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %52

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 2
  %33 = load float, float* %32, align 8
  %34 = fadd float %33, 5.000000e-01
  %35 = fptosi float %34 to i32
  %36 = sitofp i32 %35 to float
  store float %36, float* %5, align 4
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 2
  %38 = load float, float* %37, align 8
  %39 = load float, float* %5, align 4
  %40 = fsub float %38, %39
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 3
  %42 = load float, float* %41, align 4
  %43 = fadd float %42, %40
  store float %43, float* %41, align 4
  %44 = load float, float* %5, align 4
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 2
  store float %44, float* %45, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 3
  %47 = load float, float* %46, align 4
  %48 = fadd float %47, 5.000000e-01
  %49 = fptosi float %48 to i32
  %50 = sitofp i32 %49 to float
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 3
  store float %50, float* %51, align 4
  br label %142

52:                                               ; preds = %28
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 3
  %54 = load float, float* %53, align 4
  %55 = fcmp ogt float %54, 0.000000e+00
  br i1 %55, label %56, label %96

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 2
  %58 = load float, float* %57, align 8
  %59 = fptosi float %58 to i32
  %60 = sitofp i32 %59 to float
  store float %60, float* %6, align 4
  %61 = load float, float* %6, align 4
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 2
  %63 = load float, float* %62, align 8
  %64 = fsub float %61, %63
  %65 = load float, float* @MY_EPSILON, align 4
  %66 = fcmp ogt float %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %56
  %68 = load float, float* %6, align 4
  %69 = fsub float %68, 1.000000e+00
  store float %69, float* %6, align 4
  br label %70

70:                                               ; preds = %67, %56
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 2
  %72 = load float, float* %71, align 8
  %73 = load float, float* %6, align 4
  %74 = fsub float %72, %73
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 3
  %76 = load float, float* %75, align 4
  %77 = fadd float %76, %74
  store float %77, float* %75, align 4
  %78 = load float, float* %6, align 4
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 2
  store float %78, float* %79, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 3
  %81 = load float, float* %80, align 4
  %82 = fptosi float %81 to i32
  %83 = sitofp i32 %82 to float
  store float %83, float* %6, align 4
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 3
  %85 = load float, float* %84, align 4
  %86 = load float, float* %6, align 4
  %87 = fsub float %85, %86
  %88 = load float, float* @MY_EPSILON, align 4
  %89 = fcmp ogt float %87, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %70
  %91 = load float, float* %6, align 4
  %92 = fadd float %91, 1.000000e+00
  store float %92, float* %6, align 4
  br label %93

93:                                               ; preds = %90, %70
  %94 = load float, float* %6, align 4
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 3
  store float %94, float* %95, align 4
  br label %141

96:                                               ; preds = %52
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 3
  %98 = load float, float* %97, align 4
  %99 = fcmp olt float %98, 0.000000e+00
  br i1 %99, label %100, label %140

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 2
  %102 = load float, float* %101, align 8
  %103 = fptosi float %102 to i32
  %104 = sitofp i32 %103 to float
  store float %104, float* %7, align 4
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 2
  %106 = load float, float* %105, align 8
  %107 = load float, float* %7, align 4
  %108 = fsub float %106, %107
  %109 = load float, float* @MY_EPSILON, align 4
  %110 = fcmp ogt float %108, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %100
  %112 = load float, float* %7, align 4
  %113 = fadd float %112, 1.000000e+00
  store float %113, float* %7, align 4
  br label %114

114:                                              ; preds = %111, %100
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 2
  %116 = load float, float* %115, align 8
  %117 = load float, float* %7, align 4
  %118 = fsub float %116, %117
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 3
  %120 = load float, float* %119, align 4
  %121 = fadd float %120, %118
  store float %121, float* %119, align 4
  %122 = load float, float* %7, align 4
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 2
  store float %122, float* %123, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 3
  %125 = load float, float* %124, align 4
  %126 = fptosi float %125 to i32
  %127 = sitofp i32 %126 to float
  store float %127, float* %7, align 4
  %128 = load float, float* %7, align 4
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 3
  %130 = load float, float* %129, align 4
  %131 = fsub float %128, %130
  %132 = load float, float* @MY_EPSILON, align 4
  %133 = fcmp ogt float %131, %132
  br i1 %133, label %134, label %137

134:                                              ; preds = %114
  %135 = load float, float* %7, align 4
  %136 = fsub float %135, 1.000000e+00
  store float %136, float* %7, align 4
  br label %137

137:                                              ; preds = %134, %114
  %138 = load float, float* %7, align 4
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 3
  store float %138, float* %139, align 4
  br label %140

140:                                              ; preds = %137, %96
  br label %141

141:                                              ; preds = %140, %93
  br label %142

142:                                              ; preds = %141, %31
  %143 = load i32, i32* %4, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %166

145:                                              ; preds = %142
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 4
  %147 = load float, float* %146, align 8
  %148 = fadd float %147, 5.000000e-01
  %149 = fptosi float %148 to i32
  %150 = sitofp i32 %149 to float
  store float %150, float* %8, align 4
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 4
  %152 = load float, float* %151, align 8
  %153 = load float, float* %8, align 4
  %154 = fsub float %152, %153
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 5
  %156 = load float, float* %155, align 4
  %157 = fadd float %156, %154
  store float %157, float* %155, align 4
  %158 = load float, float* %8, align 4
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 4
  store float %158, float* %159, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 5
  %161 = load float, float* %160, align 4
  %162 = fadd float %161, 5.000000e-01
  %163 = fptosi float %162 to i32
  %164 = sitofp i32 %163 to float
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 5
  store float %164, float* %165, align 4
  br label %256

166:                                              ; preds = %142
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 5
  %168 = load float, float* %167, align 4
  %169 = fcmp ogt float %168, 0.000000e+00
  br i1 %169, label %170, label %210

170:                                              ; preds = %166
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 4
  %172 = load float, float* %171, align 8
  %173 = fptosi float %172 to i32
  %174 = sitofp i32 %173 to float
  store float %174, float* %9, align 4
  %175 = load float, float* %9, align 4
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 4
  %177 = load float, float* %176, align 8
  %178 = fsub float %175, %177
  %179 = load float, float* @MY_EPSILON, align 4
  %180 = fcmp ogt float %178, %179
  br i1 %180, label %181, label %184

181:                                              ; preds = %170
  %182 = load float, float* %9, align 4
  %183 = fsub float %182, 1.000000e+00
  store float %183, float* %9, align 4
  br label %184

184:                                              ; preds = %181, %170
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 4
  %186 = load float, float* %185, align 8
  %187 = load float, float* %9, align 4
  %188 = fsub float %186, %187
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 5
  %190 = load float, float* %189, align 4
  %191 = fadd float %190, %188
  store float %191, float* %189, align 4
  %192 = load float, float* %9, align 4
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 4
  store float %192, float* %193, align 8
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 5
  %195 = load float, float* %194, align 4
  %196 = fptosi float %195 to i32
  %197 = sitofp i32 %196 to float
  store float %197, float* %9, align 4
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 5
  %199 = load float, float* %198, align 4
  %200 = load float, float* %9, align 4
  %201 = fsub float %199, %200
  %202 = load float, float* @MY_EPSILON, align 4
  %203 = fcmp ogt float %201, %202
  br i1 %203, label %204, label %207

204:                                              ; preds = %184
  %205 = load float, float* %9, align 4
  %206 = fadd float %205, 1.000000e+00
  store float %206, float* %9, align 4
  br label %207

207:                                              ; preds = %204, %184
  %208 = load float, float* %9, align 4
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 5
  store float %208, float* %209, align 4
  br label %255

210:                                              ; preds = %166
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 5
  %212 = load float, float* %211, align 4
  %213 = fcmp olt float %212, 0.000000e+00
  br i1 %213, label %214, label %254

214:                                              ; preds = %210
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 4
  %216 = load float, float* %215, align 8
  %217 = fptosi float %216 to i32
  %218 = sitofp i32 %217 to float
  store float %218, float* %10, align 4
  %219 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 4
  %220 = load float, float* %219, align 8
  %221 = load float, float* %10, align 4
  %222 = fsub float %220, %221
  %223 = load float, float* @MY_EPSILON, align 4
  %224 = fcmp ogt float %222, %223
  br i1 %224, label %225, label %228

225:                                              ; preds = %214
  %226 = load float, float* %10, align 4
  %227 = fadd float %226, 1.000000e+00
  store float %227, float* %10, align 4
  br label %228

228:                                              ; preds = %225, %214
  %229 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 4
  %230 = load float, float* %229, align 8
  %231 = load float, float* %10, align 4
  %232 = fsub float %230, %231
  %233 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 5
  %234 = load float, float* %233, align 4
  %235 = fadd float %234, %232
  store float %235, float* %233, align 4
  %236 = load float, float* %10, align 4
  %237 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 4
  store float %236, float* %237, align 8
  %238 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 5
  %239 = load float, float* %238, align 4
  %240 = fptosi float %239 to i32
  %241 = sitofp i32 %240 to float
  store float %241, float* %10, align 4
  %242 = load float, float* %10, align 4
  %243 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 5
  %244 = load float, float* %243, align 4
  %245 = fsub float %242, %244
  %246 = load float, float* @MY_EPSILON, align 4
  %247 = fcmp ogt float %245, %246
  br i1 %247, label %248, label %251

248:                                              ; preds = %228
  %249 = load float, float* %10, align 4
  %250 = fsub float %249, 1.000000e+00
  store float %250, float* %10, align 4
  br label %251

251:                                              ; preds = %248, %228
  %252 = load float, float* %10, align 4
  %253 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 5
  store float %252, float* %253, align 4
  br label %254

254:                                              ; preds = %251, %210
  br label %255

255:                                              ; preds = %254, %207
  br label %256

256:                                              ; preds = %255, %145
  br label %499

257:                                              ; preds = %22, %3
  %258 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 3
  %259 = load float, float* %258, align 4
  %260 = call i64 @fabsf(float %259)
  %261 = load i64, i64* @FLT_EPSILON, align 8
  %262 = icmp slt i64 %260, %261
  br i1 %262, label %263, label %498

263:                                              ; preds = %257
  %264 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 5
  %265 = load float, float* %264, align 4
  %266 = call i64 @fabsf(float %265)
  %267 = load i64, i64* @FLT_EPSILON, align 8
  %268 = icmp slt i64 %266, %267
  br i1 %268, label %269, label %498

269:                                              ; preds = %263
  %270 = load i32, i32* %4, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %293

272:                                              ; preds = %269
  %273 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 2
  %274 = load float, float* %273, align 8
  %275 = fadd float %274, 5.000000e-01
  %276 = fptosi float %275 to i32
  %277 = sitofp i32 %276 to float
  store float %277, float* %11, align 4
  %278 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 2
  %279 = load float, float* %278, align 8
  %280 = load float, float* %11, align 4
  %281 = fsub float %279, %280
  %282 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %283 = load float, float* %282, align 8
  %284 = fadd float %283, %281
  store float %284, float* %282, align 8
  %285 = load float, float* %11, align 4
  %286 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 2
  store float %285, float* %286, align 8
  %287 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %288 = load float, float* %287, align 8
  %289 = fadd float %288, 5.000000e-01
  %290 = fptosi float %289 to i32
  %291 = sitofp i32 %290 to float
  %292 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  store float %291, float* %292, align 8
  br label %383

293:                                              ; preds = %269
  %294 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %295 = load float, float* %294, align 8
  %296 = fcmp ogt float %295, 0.000000e+00
  br i1 %296, label %297, label %337

297:                                              ; preds = %293
  %298 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 4
  %299 = load float, float* %298, align 8
  %300 = fptosi float %299 to i32
  %301 = sitofp i32 %300 to float
  store float %301, float* %12, align 4
  %302 = load float, float* %12, align 4
  %303 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 4
  %304 = load float, float* %303, align 8
  %305 = fsub float %302, %304
  %306 = load float, float* @MY_EPSILON, align 4
  %307 = fcmp ogt float %305, %306
  br i1 %307, label %308, label %311

308:                                              ; preds = %297
  %309 = load float, float* %12, align 4
  %310 = fsub float %309, 1.000000e+00
  store float %310, float* %12, align 4
  br label %311

311:                                              ; preds = %308, %297
  %312 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 4
  %313 = load float, float* %312, align 8
  %314 = load float, float* %12, align 4
  %315 = fsub float %313, %314
  %316 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %317 = load float, float* %316, align 8
  %318 = fadd float %317, %315
  store float %318, float* %316, align 8
  %319 = load float, float* %12, align 4
  %320 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 4
  store float %319, float* %320, align 8
  %321 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %322 = load float, float* %321, align 8
  %323 = fptosi float %322 to i32
  %324 = sitofp i32 %323 to float
  store float %324, float* %12, align 4
  %325 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %326 = load float, float* %325, align 8
  %327 = load float, float* %12, align 4
  %328 = fsub float %326, %327
  %329 = load float, float* @MY_EPSILON, align 4
  %330 = fcmp ogt float %328, %329
  br i1 %330, label %331, label %334

331:                                              ; preds = %311
  %332 = load float, float* %12, align 4
  %333 = fadd float %332, 1.000000e+00
  store float %333, float* %12, align 4
  br label %334

334:                                              ; preds = %331, %311
  %335 = load float, float* %12, align 4
  %336 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  store float %335, float* %336, align 8
  br label %382

337:                                              ; preds = %293
  %338 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %339 = load float, float* %338, align 8
  %340 = fcmp olt float %339, 0.000000e+00
  br i1 %340, label %341, label %381

341:                                              ; preds = %337
  %342 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 4
  %343 = load float, float* %342, align 8
  %344 = fptosi float %343 to i32
  %345 = sitofp i32 %344 to float
  store float %345, float* %13, align 4
  %346 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 4
  %347 = load float, float* %346, align 8
  %348 = load float, float* %13, align 4
  %349 = fsub float %347, %348
  %350 = load float, float* @MY_EPSILON, align 4
  %351 = fcmp ogt float %349, %350
  br i1 %351, label %352, label %355

352:                                              ; preds = %341
  %353 = load float, float* %13, align 4
  %354 = fadd float %353, 1.000000e+00
  store float %354, float* %13, align 4
  br label %355

355:                                              ; preds = %352, %341
  %356 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 4
  %357 = load float, float* %356, align 8
  %358 = load float, float* %13, align 4
  %359 = fsub float %357, %358
  %360 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %361 = load float, float* %360, align 8
  %362 = fadd float %361, %359
  store float %362, float* %360, align 8
  %363 = load float, float* %13, align 4
  %364 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 4
  store float %363, float* %364, align 8
  %365 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %366 = load float, float* %365, align 8
  %367 = fptosi float %366 to i32
  %368 = sitofp i32 %367 to float
  store float %368, float* %13, align 4
  %369 = load float, float* %13, align 4
  %370 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %371 = load float, float* %370, align 8
  %372 = fsub float %369, %371
  %373 = load float, float* @MY_EPSILON, align 4
  %374 = fcmp ogt float %372, %373
  br i1 %374, label %375, label %378

375:                                              ; preds = %355
  %376 = load float, float* %13, align 4
  %377 = fsub float %376, 1.000000e+00
  store float %377, float* %13, align 4
  br label %378

378:                                              ; preds = %375, %355
  %379 = load float, float* %13, align 4
  %380 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  store float %379, float* %380, align 8
  br label %381

381:                                              ; preds = %378, %337
  br label %382

382:                                              ; preds = %381, %334
  br label %383

383:                                              ; preds = %382, %272
  %384 = load i32, i32* %4, align 4
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %386, label %407

386:                                              ; preds = %383
  %387 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 4
  %388 = load float, float* %387, align 8
  %389 = fadd float %388, 5.000000e-01
  %390 = fptosi float %389 to i32
  %391 = sitofp i32 %390 to float
  store float %391, float* %14, align 4
  %392 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 4
  %393 = load float, float* %392, align 8
  %394 = load float, float* %14, align 4
  %395 = fsub float %393, %394
  %396 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  %397 = load float, float* %396, align 4
  %398 = fadd float %397, %395
  store float %398, float* %396, align 4
  %399 = load float, float* %14, align 4
  %400 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 4
  store float %399, float* %400, align 8
  %401 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  %402 = load float, float* %401, align 4
  %403 = fadd float %402, 5.000000e-01
  %404 = fptosi float %403 to i32
  %405 = sitofp i32 %404 to float
  %406 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  store float %405, float* %406, align 4
  br label %497

407:                                              ; preds = %383
  %408 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  %409 = load float, float* %408, align 4
  %410 = fcmp ogt float %409, 0.000000e+00
  br i1 %410, label %411, label %451

411:                                              ; preds = %407
  %412 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 2
  %413 = load float, float* %412, align 8
  %414 = fptosi float %413 to i32
  %415 = sitofp i32 %414 to float
  store float %415, float* %15, align 4
  %416 = load float, float* %15, align 4
  %417 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 2
  %418 = load float, float* %417, align 8
  %419 = fsub float %416, %418
  %420 = load float, float* @MY_EPSILON, align 4
  %421 = fcmp ogt float %419, %420
  br i1 %421, label %422, label %425

422:                                              ; preds = %411
  %423 = load float, float* %15, align 4
  %424 = fsub float %423, 1.000000e+00
  store float %424, float* %15, align 4
  br label %425

425:                                              ; preds = %422, %411
  %426 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 2
  %427 = load float, float* %426, align 8
  %428 = load float, float* %15, align 4
  %429 = fsub float %427, %428
  %430 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  %431 = load float, float* %430, align 4
  %432 = fadd float %431, %429
  store float %432, float* %430, align 4
  %433 = load float, float* %15, align 4
  %434 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 2
  store float %433, float* %434, align 8
  %435 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  %436 = load float, float* %435, align 4
  %437 = fptosi float %436 to i32
  %438 = sitofp i32 %437 to float
  store float %438, float* %15, align 4
  %439 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  %440 = load float, float* %439, align 4
  %441 = load float, float* %15, align 4
  %442 = fsub float %440, %441
  %443 = load float, float* @MY_EPSILON, align 4
  %444 = fcmp ogt float %442, %443
  br i1 %444, label %445, label %448

445:                                              ; preds = %425
  %446 = load float, float* %15, align 4
  %447 = fadd float %446, 1.000000e+00
  store float %447, float* %15, align 4
  br label %448

448:                                              ; preds = %445, %425
  %449 = load float, float* %15, align 4
  %450 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  store float %449, float* %450, align 4
  br label %496

451:                                              ; preds = %407
  %452 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  %453 = load float, float* %452, align 4
  %454 = fcmp olt float %453, 0.000000e+00
  br i1 %454, label %455, label %495

455:                                              ; preds = %451
  %456 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 2
  %457 = load float, float* %456, align 8
  %458 = fptosi float %457 to i32
  %459 = sitofp i32 %458 to float
  store float %459, float* %16, align 4
  %460 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 2
  %461 = load float, float* %460, align 8
  %462 = load float, float* %16, align 4
  %463 = fsub float %461, %462
  %464 = load float, float* @MY_EPSILON, align 4
  %465 = fcmp ogt float %463, %464
  br i1 %465, label %466, label %469

466:                                              ; preds = %455
  %467 = load float, float* %16, align 4
  %468 = fadd float %467, 1.000000e+00
  store float %468, float* %16, align 4
  br label %469

469:                                              ; preds = %466, %455
  %470 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 2
  %471 = load float, float* %470, align 8
  %472 = load float, float* %16, align 4
  %473 = fsub float %471, %472
  %474 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  %475 = load float, float* %474, align 4
  %476 = fadd float %475, %473
  store float %476, float* %474, align 4
  %477 = load float, float* %16, align 4
  %478 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 2
  store float %477, float* %478, align 8
  %479 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  %480 = load float, float* %479, align 4
  %481 = fptosi float %480 to i32
  %482 = sitofp i32 %481 to float
  store float %482, float* %16, align 4
  %483 = load float, float* %16, align 4
  %484 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  %485 = load float, float* %484, align 4
  %486 = fsub float %483, %485
  %487 = load float, float* @MY_EPSILON, align 4
  %488 = fcmp ogt float %486, %487
  br i1 %488, label %489, label %492

489:                                              ; preds = %469
  %490 = load float, float* %16, align 4
  %491 = fsub float %490, 1.000000e+00
  store float %491, float* %16, align 4
  br label %492

492:                                              ; preds = %489, %469
  %493 = load float, float* %16, align 4
  %494 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  store float %493, float* %494, align 4
  br label %495

495:                                              ; preds = %492, %451
  br label %496

496:                                              ; preds = %495, %448
  br label %497

497:                                              ; preds = %496, %386
  br label %498

498:                                              ; preds = %497, %263, %257
  br label %499

499:                                              ; preds = %498, %256
  %500 = bitcast %struct.TYPE_4__* %0 to i8*
  %501 = bitcast %struct.TYPE_4__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %500, i8* align 8 %501, i64 24, i1 false)
  ret void
}

declare dso_local i64 @fabsf(float) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
