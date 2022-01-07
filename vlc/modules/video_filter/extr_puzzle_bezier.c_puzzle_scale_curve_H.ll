; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_filter/extr_puzzle_bezier.c_puzzle_scale_curve_H.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_filter/extr_puzzle_bezier.c_puzzle_scale_curve_H.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { float, float }

@x = common dso_local global i32 0, align 4
@y = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @puzzle_scale_curve_H(i64 %0, i64 %1, i32 %2, %struct.TYPE_7__* %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_7__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca float, align 4
  %24 = alloca i32, align 4
  %25 = alloca float, align 4
  %26 = alloca i32, align 4
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.TYPE_7__* %3, %struct.TYPE_7__** %10, align 8
  store i64 %4, i64* %11, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %28 = icmp eq %struct.TYPE_7__* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %5
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %6, align 8
  br label %358

30:                                               ; preds = %5
  %31 = load i64, i64* %7, align 8
  %32 = sitofp i64 %31 to float
  %33 = fdiv float %32, 2.000000e+00
  store float %33, float* %12, align 4
  %34 = load i64, i64* %8, align 8
  %35 = sitofp i64 %34 to float
  %36 = fdiv float %35, 2.000000e+00
  %37 = fdiv float %36, 1.000000e+00
  store float %37, float* %13, align 4
  %38 = load i64, i64* %7, align 8
  %39 = sitofp i64 %38 to float
  %40 = fdiv float %39, 2.000000e+00
  store float %40, float* %14, align 4
  store float 0.000000e+00, float* %15, align 4
  store float 1.000000e+00, float* %18, align 4
  %41 = load i32, i32* %9, align 4
  %42 = sub nsw i32 %41, 1
  %43 = mul nsw i32 3, %42
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %19, align 4
  %45 = load i32, i32* %19, align 4
  %46 = sext i32 %45 to i64
  %47 = mul i64 8, %46
  %48 = trunc i64 %47 to i32
  %49 = call %struct.TYPE_7__* @malloc(i32 %48)
  store %struct.TYPE_7__* %49, %struct.TYPE_7__** %20, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %51 = icmp eq %struct.TYPE_7__* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %30
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %6, align 8
  br label %358

53:                                               ; preds = %30
  store i32 1, i32* %21, align 4
  br label %54

54:                                               ; preds = %245, %53
  store i32 1, i32* %21, align 4
  store i32 0, i32* %22, align 4
  br label %55

55:                                               ; preds = %144, %54
  %56 = load i32, i32* %22, align 4
  %57 = load i32, i32* %19, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %147

59:                                               ; preds = %55
  %60 = load i32, i32* %22, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* %22, align 4
  %64 = icmp eq i32 %63, 1
  br i1 %64, label %65, label %81

65:                                               ; preds = %62, %59
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %67 = load i32, i32* %22, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load float, float* %70, align 4
  %72 = load float, float* %12, align 4
  %73 = fmul float %71, %72
  %74 = load float, float* %14, align 4
  %75 = fadd float %73, %74
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %77 = load i32, i32* %22, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  store float %75, float* %80, align 4
  br label %126

81:                                               ; preds = %62
  %82 = load i32, i32* %22, align 4
  %83 = load i32, i32* %19, align 4
  %84 = sub nsw i32 %83, 2
  %85 = icmp eq i32 %82, %84
  br i1 %85, label %91, label %86

86:                                               ; preds = %81
  %87 = load i32, i32* %22, align 4
  %88 = load i32, i32* %19, align 4
  %89 = sub nsw i32 %88, 1
  %90 = icmp eq i32 %87, %89
  br i1 %90, label %91, label %107

91:                                               ; preds = %86, %81
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %93 = load i32, i32* %22, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = load float, float* %96, align 4
  %98 = load float, float* %12, align 4
  %99 = fmul float %97, %98
  %100 = load float, float* %14, align 4
  %101 = fadd float %99, %100
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %103 = load i32, i32* %22, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  store float %101, float* %106, align 4
  br label %125

107:                                              ; preds = %86
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %109 = load i32, i32* %22, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = load float, float* %112, align 4
  %114 = load float, float* %12, align 4
  %115 = fmul float %113, %114
  %116 = load float, float* %18, align 4
  %117 = fmul float %115, %116
  %118 = load float, float* %14, align 4
  %119 = fadd float %117, %118
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %121 = load i32, i32* %22, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  store float %119, float* %124, align 4
  br label %125

125:                                              ; preds = %107, %91
  br label %126

126:                                              ; preds = %125, %65
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %128 = load i32, i32* %22, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 1
  %132 = load float, float* %131, align 4
  %133 = load float, float* %13, align 4
  %134 = fmul float %132, %133
  %135 = load float, float* %18, align 4
  %136 = fmul float %134, %135
  %137 = load float, float* %15, align 4
  %138 = fadd float %136, %137
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %140 = load i32, i32* %22, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 1
  store float %138, float* %143, align 4
  br label %144

144:                                              ; preds = %126
  %145 = load i32, i32* %22, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %22, align 4
  br label %55

147:                                              ; preds = %55
  store float 0.000000e+00, float* %23, align 4
  br label %148

148:                                              ; preds = %224, %147
  %149 = load float, float* %23, align 4
  %150 = load i32, i32* %9, align 4
  %151 = sub nsw i32 %150, 1
  %152 = sitofp i32 %151 to float
  %153 = fcmp ole float %149, %152
  br i1 %153, label %154, label %229

154:                                              ; preds = %148
  %155 = load float, float* %23, align 4
  %156 = call i32 @floor(float %155)
  store i32 %156, i32* %24, align 4
  %157 = load i32, i32* %24, align 4
  %158 = load i32, i32* %9, align 4
  %159 = sub nsw i32 %158, 1
  %160 = icmp eq i32 %157, %159
  br i1 %160, label %161, label %164

161:                                              ; preds = %154
  %162 = load i32, i32* %9, align 4
  %163 = sub nsw i32 %162, 2
  store i32 %163, i32* %24, align 4
  br label %164

164:                                              ; preds = %161, %154
  %165 = load float, float* %23, align 4
  %166 = load i32, i32* %24, align 4
  %167 = sitofp i32 %166 to float
  %168 = fsub float %165, %167
  store float %168, float* %25, align 4
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %170 = load float, float* %25, align 4
  %171 = load i32, i32* %24, align 4
  %172 = load i32, i32* @x, align 4
  %173 = call float @bezier_val(%struct.TYPE_7__* %169, float %170, i32 %171, i32 %172)
  store float %173, float* %16, align 4
  %174 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %175 = load float, float* %25, align 4
  %176 = load i32, i32* %24, align 4
  %177 = load i32, i32* @y, align 4
  %178 = call float @bezier_val(%struct.TYPE_7__* %174, float %175, i32 %176, i32 %177)
  store float %178, float* %17, align 4
  %179 = load float, float* %16, align 4
  %180 = load i64, i64* %7, align 8
  %181 = sitofp i64 %180 to float
  %182 = fdiv float %181, 2.000000e+00
  %183 = fcmp olt float %179, %182
  br i1 %183, label %184, label %202

184:                                              ; preds = %164
  %185 = load float, float* %17, align 4
  %186 = call float @abs(float %185)
  %187 = fpext float %186 to double
  %188 = load float, float* %16, align 4
  %189 = fpext float %188 to double
  %190 = load i64, i64* %8, align 8
  %191 = sitofp i64 %190 to float
  %192 = fpext float %191 to double
  %193 = fmul double 9.000000e-01, %192
  %194 = load i64, i64* %7, align 8
  %195 = sitofp i64 %194 to float
  %196 = fpext float %195 to double
  %197 = fdiv double %193, %196
  %198 = fmul double %189, %197
  %199 = fcmp ogt double %187, %198
  br i1 %199, label %200, label %201

200:                                              ; preds = %184
  store i32 0, i32* %21, align 4
  br label %201

201:                                              ; preds = %200, %184
  br label %223

202:                                              ; preds = %164
  %203 = load float, float* %17, align 4
  %204 = call float @abs(float %203)
  %205 = fpext float %204 to double
  %206 = load i64, i64* %7, align 8
  %207 = sitofp i64 %206 to float
  %208 = load float, float* %16, align 4
  %209 = fsub float %207, %208
  %210 = fpext float %209 to double
  %211 = load i64, i64* %8, align 8
  %212 = sitofp i64 %211 to float
  %213 = fpext float %212 to double
  %214 = fmul double 9.000000e-01, %213
  %215 = load i64, i64* %7, align 8
  %216 = sitofp i64 %215 to float
  %217 = fpext float %216 to double
  %218 = fdiv double %214, %217
  %219 = fmul double %210, %218
  %220 = fcmp ogt double %205, %219
  br i1 %220, label %221, label %222

221:                                              ; preds = %202
  store i32 0, i32* %21, align 4
  br label %222

222:                                              ; preds = %221, %202
  br label %223

223:                                              ; preds = %222, %201
  br label %224

224:                                              ; preds = %223
  %225 = load float, float* %23, align 4
  %226 = fpext float %225 to double
  %227 = fadd double %226, 1.000000e-01
  %228 = fptrunc double %227 to float
  store float %228, float* %23, align 4
  br label %148

229:                                              ; preds = %148
  %230 = load i32, i32* %21, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %237, label %232

232:                                              ; preds = %229
  %233 = load float, float* %18, align 4
  %234 = fpext float %233 to double
  %235 = fmul double %234, 9.000000e-01
  %236 = fptrunc double %235 to float
  store float %236, float* %18, align 4
  br label %237

237:                                              ; preds = %232, %229
  br label %238

238:                                              ; preds = %237
  %239 = load i32, i32* %21, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %245, label %241

241:                                              ; preds = %238
  %242 = load float, float* %18, align 4
  %243 = fpext float %242 to double
  %244 = fcmp ogt double %243, 1.000000e-01
  br label %245

245:                                              ; preds = %241, %238
  %246 = phi i1 [ false, %238 ], [ %244, %241 ]
  br i1 %246, label %54, label %247

247:                                              ; preds = %245
  %248 = load i32, i32* %21, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %253, label %250

250:                                              ; preds = %247
  %251 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %252 = call i32 @free(%struct.TYPE_7__* %251)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %6, align 8
  br label %358

253:                                              ; preds = %247
  %254 = load float, float* %18, align 4
  %255 = fpext float %254 to double
  %256 = load i64, i64* %11, align 8
  %257 = sitofp i64 %256 to float
  %258 = fpext float %257 to double
  %259 = fmul double 5.000000e-01, %258
  %260 = fdiv double %259, 1.000000e+02
  %261 = fadd double 5.000000e-01, %260
  %262 = fmul double %255, %261
  %263 = fptrunc double %262 to float
  store float %263, float* %18, align 4
  store i32 0, i32* %26, align 4
  br label %264

264:                                              ; preds = %353, %253
  %265 = load i32, i32* %26, align 4
  %266 = load i32, i32* %19, align 4
  %267 = icmp slt i32 %265, %266
  br i1 %267, label %268, label %356

268:                                              ; preds = %264
  %269 = load i32, i32* %26, align 4
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %274, label %271

271:                                              ; preds = %268
  %272 = load i32, i32* %26, align 4
  %273 = icmp eq i32 %272, 1
  br i1 %273, label %274, label %290

274:                                              ; preds = %271, %268
  %275 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %276 = load i32, i32* %26, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %275, i64 %277
  %279 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %278, i32 0, i32 0
  %280 = load float, float* %279, align 4
  %281 = load float, float* %12, align 4
  %282 = fmul float %280, %281
  %283 = load float, float* %14, align 4
  %284 = fadd float %282, %283
  %285 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %286 = load i32, i32* %26, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %285, i64 %287
  %289 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %288, i32 0, i32 0
  store float %284, float* %289, align 4
  br label %335

290:                                              ; preds = %271
  %291 = load i32, i32* %26, align 4
  %292 = load i32, i32* %19, align 4
  %293 = sub nsw i32 %292, 2
  %294 = icmp eq i32 %291, %293
  br i1 %294, label %300, label %295

295:                                              ; preds = %290
  %296 = load i32, i32* %26, align 4
  %297 = load i32, i32* %19, align 4
  %298 = sub nsw i32 %297, 1
  %299 = icmp eq i32 %296, %298
  br i1 %299, label %300, label %316

300:                                              ; preds = %295, %290
  %301 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %302 = load i32, i32* %26, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %301, i64 %303
  %305 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %304, i32 0, i32 0
  %306 = load float, float* %305, align 4
  %307 = load float, float* %12, align 4
  %308 = fmul float %306, %307
  %309 = load float, float* %14, align 4
  %310 = fadd float %308, %309
  %311 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %312 = load i32, i32* %26, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %311, i64 %313
  %315 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %314, i32 0, i32 0
  store float %310, float* %315, align 4
  br label %334

316:                                              ; preds = %295
  %317 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %318 = load i32, i32* %26, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %317, i64 %319
  %321 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %320, i32 0, i32 0
  %322 = load float, float* %321, align 4
  %323 = load float, float* %12, align 4
  %324 = fmul float %322, %323
  %325 = load float, float* %18, align 4
  %326 = fmul float %324, %325
  %327 = load float, float* %14, align 4
  %328 = fadd float %326, %327
  %329 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %330 = load i32, i32* %26, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %329, i64 %331
  %333 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %332, i32 0, i32 0
  store float %328, float* %333, align 4
  br label %334

334:                                              ; preds = %316, %300
  br label %335

335:                                              ; preds = %334, %274
  %336 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %337 = load i32, i32* %26, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %336, i64 %338
  %340 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %339, i32 0, i32 1
  %341 = load float, float* %340, align 4
  %342 = load float, float* %13, align 4
  %343 = fmul float %341, %342
  %344 = load float, float* %18, align 4
  %345 = fmul float %343, %344
  %346 = load float, float* %15, align 4
  %347 = fadd float %345, %346
  %348 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %349 = load i32, i32* %26, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %348, i64 %350
  %352 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %351, i32 0, i32 1
  store float %347, float* %352, align 4
  br label %353

353:                                              ; preds = %335
  %354 = load i32, i32* %26, align 4
  %355 = add nsw i32 %354, 1
  store i32 %355, i32* %26, align 4
  br label %264

356:                                              ; preds = %264
  %357 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  store %struct.TYPE_7__* %357, %struct.TYPE_7__** %6, align 8
  br label %358

358:                                              ; preds = %356, %250, %52, %29
  %359 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  ret %struct.TYPE_7__* %359
}

declare dso_local %struct.TYPE_7__* @malloc(i32) #1

declare dso_local i32 @floor(float) #1

declare dso_local float @bezier_val(%struct.TYPE_7__*, float, i32, i32) #1

declare dso_local float @abs(float) #1

declare dso_local i32 @free(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
