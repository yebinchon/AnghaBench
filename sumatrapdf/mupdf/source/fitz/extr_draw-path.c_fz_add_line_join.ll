; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-path.c_fz_add_line_join.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-path.c_fz_add_line_join.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { float, float, i32 }

@FLT_EPSILON = common dso_local global float 0.000000e+00, align 4
@.str = private unnamed_addr constant [18 x i8] c"Invalid line join\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_5__*, float, float, float, float, float, float, i32)* @fz_add_line_join to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fz_add_line_join(i32* %0, %struct.TYPE_5__* %1, float %2, float %3, float %4, float %5, float %6, float %7, i32 %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca i32, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca i32, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca float, align 4
  %25 = alloca float, align 4
  %26 = alloca float, align 4
  %27 = alloca float, align 4
  %28 = alloca float, align 4
  %29 = alloca float, align 4
  %30 = alloca float, align 4
  %31 = alloca float, align 4
  %32 = alloca float, align 4
  %33 = alloca float, align 4
  %34 = alloca float, align 4
  %35 = alloca i32, align 4
  %36 = alloca float, align 4
  %37 = alloca float, align 4
  %38 = alloca float, align 4
  %39 = alloca float, align 4
  %40 = alloca float, align 4
  %41 = alloca float, align 4
  store i32* %0, i32** %10, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %11, align 8
  store float %2, float* %12, align 4
  store float %3, float* %13, align 4
  store float %4, float* %14, align 4
  store float %5, float* %15, align 4
  store float %6, float* %16, align 4
  store float %7, float* %17, align 4
  store i32 %8, i32* %18, align 4
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load float, float* %43, align 4
  store float %44, float* %19, align 4
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load float, float* %46, align 4
  store float %47, float* %20, align 4
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %21, align 4
  store i32 0, i32* %35, align 4
  %51 = load float, float* %14, align 4
  %52 = load float, float* %12, align 4
  %53 = fsub float %51, %52
  store float %53, float* %22, align 4
  %54 = load float, float* %15, align 4
  %55 = load float, float* %13, align 4
  %56 = fsub float %54, %55
  store float %56, float* %23, align 4
  %57 = load float, float* %16, align 4
  %58 = load float, float* %14, align 4
  %59 = fsub float %57, %58
  store float %59, float* %24, align 4
  %60 = load float, float* %17, align 4
  %61 = load float, float* %15, align 4
  %62 = fsub float %60, %61
  store float %62, float* %25, align 4
  %63 = load float, float* %24, align 4
  %64 = load float, float* %23, align 4
  %65 = fmul float %63, %64
  %66 = load float, float* %22, align 4
  %67 = load float, float* %25, align 4
  %68 = fmul float %66, %67
  %69 = fsub float %65, %68
  store float %69, float* %34, align 4
  %70 = load float, float* %34, align 4
  %71 = fcmp olt float %70, 0.000000e+00
  br i1 %71, label %72, label %89

72:                                               ; preds = %9
  %73 = load float, float* %24, align 4
  store float %73, float* %36, align 4
  %74 = load float, float* %22, align 4
  %75 = fneg float %74
  store float %75, float* %24, align 4
  %76 = load float, float* %36, align 4
  %77 = fneg float %76
  store float %77, float* %22, align 4
  %78 = load float, float* %25, align 4
  store float %78, float* %36, align 4
  %79 = load float, float* %23, align 4
  %80 = fneg float %79
  store float %80, float* %25, align 4
  %81 = load float, float* %36, align 4
  %82 = fneg float %81
  store float %82, float* %23, align 4
  %83 = load float, float* %34, align 4
  %84 = fneg float %83
  store float %84, float* %34, align 4
  %85 = load i32, i32* %35, align 4
  %86 = icmp ne i32 %85, 0
  %87 = xor i1 %86, true
  %88 = zext i1 %87 to i32
  store i32 %88, i32* %35, align 4
  br label %89

89:                                               ; preds = %72, %9
  %90 = load float, float* %22, align 4
  %91 = load float, float* %23, align 4
  %92 = load float, float* %20, align 4
  %93 = call i64 @find_normal_vectors(float %90, float %91, float %92, float* %26, float* %27)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %89
  store i32 131, i32* %21, align 4
  br label %96

96:                                               ; preds = %95, %89
  %97 = load float, float* %24, align 4
  %98 = load float, float* %25, align 4
  %99 = load float, float* %20, align 4
  %100 = call i64 @find_normal_vectors(float %97, float %98, float %99, float* %28, float* %29)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %96
  store i32 131, i32* %21, align 4
  br label %103

103:                                              ; preds = %102, %96
  %104 = load float, float* %26, align 4
  %105 = load float, float* %28, align 4
  %106 = fadd float %104, %105
  %107 = fmul float %106, 5.000000e-01
  store float %107, float* %30, align 4
  %108 = load float, float* %27, align 4
  %109 = load float, float* %29, align 4
  %110 = fadd float %108, %109
  %111 = fmul float %110, 5.000000e-01
  store float %111, float* %31, align 4
  %112 = load float, float* %30, align 4
  %113 = load float, float* %30, align 4
  %114 = fmul float %112, %113
  %115 = load float, float* %31, align 4
  %116 = load float, float* %31, align 4
  %117 = fmul float %115, %116
  %118 = fadd float %114, %117
  store float %118, float* %32, align 4
  %119 = load float, float* %34, align 4
  %120 = load float, float* %34, align 4
  %121 = fmul float %119, %120
  %122 = load float, float* @FLT_EPSILON, align 4
  %123 = fcmp olt float %121, %122
  br i1 %123, label %124, label %134

124:                                              ; preds = %103
  %125 = load float, float* %22, align 4
  %126 = load float, float* %24, align 4
  %127 = fmul float %125, %126
  %128 = load float, float* %23, align 4
  %129 = load float, float* %25, align 4
  %130 = fmul float %128, %129
  %131 = fadd float %127, %130
  %132 = fcmp oge float %131, 0.000000e+00
  br i1 %132, label %133, label %134

133:                                              ; preds = %124
  store i32 131, i32* %21, align 4
  br label %134

134:                                              ; preds = %133, %124, %103
  %135 = load i32, i32* %21, align 4
  %136 = icmp eq i32 %135, 129
  br i1 %136, label %137, label %154

137:                                              ; preds = %134
  %138 = load float, float* %34, align 4
  %139 = fcmp oeq float %138, 0.000000e+00
  br i1 %139, label %140, label %141

140:                                              ; preds = %137
  store i32 131, i32* %21, align 4
  br label %153

141:                                              ; preds = %137
  %142 = load float, float* %32, align 4
  %143 = load float, float* %19, align 4
  %144 = fmul float %142, %143
  %145 = load float, float* %19, align 4
  %146 = fmul float %144, %145
  %147 = load float, float* %20, align 4
  %148 = load float, float* %20, align 4
  %149 = fmul float %147, %148
  %150 = fcmp oge float %146, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %141
  store i32 130, i32* %21, align 4
  br label %152

152:                                              ; preds = %151, %141
  br label %153

153:                                              ; preds = %152, %140
  br label %170

154:                                              ; preds = %134
  %155 = load i32, i32* %21, align 4
  %156 = icmp eq i32 %155, 130
  br i1 %156, label %157, label %169

157:                                              ; preds = %154
  %158 = load float, float* %32, align 4
  %159 = load float, float* %19, align 4
  %160 = fmul float %158, %159
  %161 = load float, float* %19, align 4
  %162 = fmul float %160, %161
  %163 = load float, float* %20, align 4
  %164 = load float, float* %20, align 4
  %165 = fmul float %163, %164
  %166 = fcmp olt float %162, %165
  br i1 %166, label %167, label %168

167:                                              ; preds = %157
  store i32 131, i32* %21, align 4
  br label %168

168:                                              ; preds = %167, %157
  br label %169

169:                                              ; preds = %168, %154
  br label %170

170:                                              ; preds = %169, %153
  %171 = load i32, i32* %18, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %193

173:                                              ; preds = %170
  %174 = load i32*, i32** %10, align 8
  %175 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %176 = load float, float* %14, align 4
  %177 = load float, float* %28, align 4
  %178 = fadd float %176, %177
  %179 = load float, float* %15, align 4
  %180 = load float, float* %29, align 4
  %181 = fadd float %179, %180
  %182 = load float, float* %14, align 4
  %183 = load float, float* %26, align 4
  %184 = fadd float %182, %183
  %185 = load float, float* %15, align 4
  %186 = load float, float* %27, align 4
  %187 = fadd float %185, %186
  %188 = load i32, i32* %35, align 4
  %189 = icmp ne i32 %188, 0
  %190 = xor i1 %189, true
  %191 = zext i1 %190 to i32
  %192 = call i32 @fz_add_line(i32* %174, %struct.TYPE_5__* %175, float %178, float %181, float %184, float %187, i32 %191)
  br label %243

193:                                              ; preds = %170
  %194 = load i32, i32* %35, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %219

196:                                              ; preds = %193
  %197 = load i32*, i32** %10, align 8
  %198 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %199 = load float, float* %14, align 4
  %200 = load float, float* %28, align 4
  %201 = fadd float %199, %200
  %202 = load float, float* %15, align 4
  %203 = load float, float* %29, align 4
  %204 = fadd float %202, %203
  %205 = load float, float* %14, align 4
  %206 = load float, float* %15, align 4
  %207 = call i32 @fz_add_line(i32* %197, %struct.TYPE_5__* %198, float %201, float %204, float %205, float %206, i32 0)
  %208 = load i32*, i32** %10, align 8
  %209 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %210 = load float, float* %14, align 4
  %211 = load float, float* %15, align 4
  %212 = load float, float* %14, align 4
  %213 = load float, float* %26, align 4
  %214 = fadd float %212, %213
  %215 = load float, float* %15, align 4
  %216 = load float, float* %27, align 4
  %217 = fadd float %215, %216
  %218 = call i32 @fz_add_line(i32* %208, %struct.TYPE_5__* %209, float %210, float %211, float %214, float %217, i32 0)
  br label %242

219:                                              ; preds = %193
  %220 = load i32*, i32** %10, align 8
  %221 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %222 = load float, float* %14, align 4
  %223 = load float, float* %15, align 4
  %224 = load float, float* %14, align 4
  %225 = load float, float* %26, align 4
  %226 = fadd float %224, %225
  %227 = load float, float* %15, align 4
  %228 = load float, float* %27, align 4
  %229 = fadd float %227, %228
  %230 = call i32 @fz_add_line(i32* %220, %struct.TYPE_5__* %221, float %222, float %223, float %226, float %229, i32 1)
  %231 = load i32*, i32** %10, align 8
  %232 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %233 = load float, float* %14, align 4
  %234 = load float, float* %28, align 4
  %235 = fadd float %233, %234
  %236 = load float, float* %15, align 4
  %237 = load float, float* %29, align 4
  %238 = fadd float %236, %237
  %239 = load float, float* %14, align 4
  %240 = load float, float* %15, align 4
  %241 = call i32 @fz_add_line(i32* %231, %struct.TYPE_5__* %232, float %235, float %238, float %239, float %240, i32 1)
  br label %242

242:                                              ; preds = %219, %196
  br label %243

243:                                              ; preds = %242, %173
  %244 = load i32, i32* %21, align 4
  switch i32 %244, label %476 [
    i32 129, label %245
    i32 130, label %367
    i32 131, label %444
    i32 128, label %461
  ]

245:                                              ; preds = %243
  %246 = load float, float* %20, align 4
  %247 = load float, float* %20, align 4
  %248 = fmul float %246, %247
  %249 = load float, float* %32, align 4
  %250 = fdiv float %248, %249
  store float %250, float* %33, align 4
  %251 = load float, float* %33, align 4
  %252 = load float, float* %30, align 4
  %253 = fmul float %252, %251
  store float %253, float* %30, align 4
  %254 = load float, float* %33, align 4
  %255 = load float, float* %31, align 4
  %256 = fmul float %255, %254
  store float %256, float* %31, align 4
  %257 = load float, float* %33, align 4
  %258 = load float, float* %20, align 4
  %259 = load float, float* %19, align 4
  %260 = fmul float %258, %259
  %261 = load float, float* %32, align 4
  %262 = call float @sqrtf(float %261) #3
  %263 = fdiv float %260, %262
  %264 = fsub float %257, %263
  %265 = load float, float* %33, align 4
  %266 = fsub float %265, 1.000000e+00
  %267 = fdiv float %264, %266
  store float %267, float* %37, align 4
  %268 = load float, float* %14, align 4
  %269 = load float, float* %30, align 4
  %270 = fsub float %268, %269
  %271 = load float, float* %37, align 4
  %272 = load float, float* %30, align 4
  %273 = load float, float* %26, align 4
  %274 = fsub float %272, %273
  %275 = fmul float %271, %274
  %276 = fadd float %270, %275
  store float %276, float* %38, align 4
  %277 = load float, float* %15, align 4
  %278 = load float, float* %31, align 4
  %279 = fsub float %277, %278
  %280 = load float, float* %37, align 4
  %281 = load float, float* %31, align 4
  %282 = load float, float* %27, align 4
  %283 = fsub float %281, %282
  %284 = fmul float %280, %283
  %285 = fadd float %279, %284
  store float %285, float* %39, align 4
  %286 = load float, float* %14, align 4
  %287 = load float, float* %30, align 4
  %288 = fsub float %286, %287
  %289 = load float, float* %37, align 4
  %290 = load float, float* %30, align 4
  %291 = load float, float* %28, align 4
  %292 = fsub float %290, %291
  %293 = fmul float %289, %292
  %294 = fadd float %288, %293
  store float %294, float* %40, align 4
  %295 = load float, float* %15, align 4
  %296 = load float, float* %31, align 4
  %297 = fsub float %295, %296
  %298 = load float, float* %37, align 4
  %299 = load float, float* %31, align 4
  %300 = load float, float* %29, align 4
  %301 = fsub float %299, %300
  %302 = fmul float %298, %301
  %303 = fadd float %297, %302
  store float %303, float* %41, align 4
  %304 = load i32, i32* %35, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %336

306:                                              ; preds = %245
  %307 = load i32*, i32** %10, align 8
  %308 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %309 = load float, float* %40, align 4
  %310 = load float, float* %41, align 4
  %311 = load float, float* %14, align 4
  %312 = load float, float* %28, align 4
  %313 = fsub float %311, %312
  %314 = load float, float* %15, align 4
  %315 = load float, float* %29, align 4
  %316 = fsub float %314, %315
  %317 = call i32 @fz_add_line(i32* %307, %struct.TYPE_5__* %308, float %309, float %310, float %313, float %316, i32 1)
  %318 = load i32*, i32** %10, align 8
  %319 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %320 = load float, float* %38, align 4
  %321 = load float, float* %39, align 4
  %322 = load float, float* %40, align 4
  %323 = load float, float* %41, align 4
  %324 = call i32 @fz_add_line(i32* %318, %struct.TYPE_5__* %319, float %320, float %321, float %322, float %323, i32 1)
  %325 = load i32*, i32** %10, align 8
  %326 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %327 = load float, float* %14, align 4
  %328 = load float, float* %26, align 4
  %329 = fsub float %327, %328
  %330 = load float, float* %15, align 4
  %331 = load float, float* %27, align 4
  %332 = fsub float %330, %331
  %333 = load float, float* %38, align 4
  %334 = load float, float* %39, align 4
  %335 = call i32 @fz_add_line(i32* %325, %struct.TYPE_5__* %326, float %329, float %332, float %333, float %334, i32 1)
  br label %366

336:                                              ; preds = %245
  %337 = load i32*, i32** %10, align 8
  %338 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %339 = load float, float* %14, align 4
  %340 = load float, float* %26, align 4
  %341 = fsub float %339, %340
  %342 = load float, float* %15, align 4
  %343 = load float, float* %27, align 4
  %344 = fsub float %342, %343
  %345 = load float, float* %38, align 4
  %346 = load float, float* %39, align 4
  %347 = call i32 @fz_add_line(i32* %337, %struct.TYPE_5__* %338, float %341, float %344, float %345, float %346, i32 0)
  %348 = load i32*, i32** %10, align 8
  %349 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %350 = load float, float* %38, align 4
  %351 = load float, float* %39, align 4
  %352 = load float, float* %40, align 4
  %353 = load float, float* %41, align 4
  %354 = call i32 @fz_add_line(i32* %348, %struct.TYPE_5__* %349, float %350, float %351, float %352, float %353, i32 0)
  %355 = load i32*, i32** %10, align 8
  %356 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %357 = load float, float* %40, align 4
  %358 = load float, float* %41, align 4
  %359 = load float, float* %14, align 4
  %360 = load float, float* %28, align 4
  %361 = fsub float %359, %360
  %362 = load float, float* %15, align 4
  %363 = load float, float* %29, align 4
  %364 = fsub float %362, %363
  %365 = call i32 @fz_add_line(i32* %355, %struct.TYPE_5__* %356, float %357, float %358, float %361, float %364, i32 0)
  br label %366

366:                                              ; preds = %336, %306
  br label %478

367:                                              ; preds = %243
  %368 = load float, float* %20, align 4
  %369 = load float, float* %20, align 4
  %370 = fmul float %368, %369
  %371 = load float, float* %32, align 4
  %372 = fdiv float %370, %371
  store float %372, float* %33, align 4
  %373 = load float, float* %33, align 4
  %374 = load float, float* %30, align 4
  %375 = fmul float %374, %373
  store float %375, float* %30, align 4
  %376 = load float, float* %33, align 4
  %377 = load float, float* %31, align 4
  %378 = fmul float %377, %376
  store float %378, float* %31, align 4
  %379 = load i32, i32* %35, align 4
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %381, label %412

381:                                              ; preds = %367
  %382 = load i32*, i32** %10, align 8
  %383 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %384 = load float, float* %14, align 4
  %385 = load float, float* %30, align 4
  %386 = fsub float %384, %385
  %387 = load float, float* %15, align 4
  %388 = load float, float* %31, align 4
  %389 = fsub float %387, %388
  %390 = load float, float* %14, align 4
  %391 = load float, float* %28, align 4
  %392 = fsub float %390, %391
  %393 = load float, float* %15, align 4
  %394 = load float, float* %29, align 4
  %395 = fsub float %393, %394
  %396 = call i32 @fz_add_line(i32* %382, %struct.TYPE_5__* %383, float %386, float %389, float %392, float %395, i32 1)
  %397 = load i32*, i32** %10, align 8
  %398 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %399 = load float, float* %14, align 4
  %400 = load float, float* %26, align 4
  %401 = fsub float %399, %400
  %402 = load float, float* %15, align 4
  %403 = load float, float* %27, align 4
  %404 = fsub float %402, %403
  %405 = load float, float* %14, align 4
  %406 = load float, float* %30, align 4
  %407 = fsub float %405, %406
  %408 = load float, float* %15, align 4
  %409 = load float, float* %31, align 4
  %410 = fsub float %408, %409
  %411 = call i32 @fz_add_line(i32* %397, %struct.TYPE_5__* %398, float %401, float %404, float %407, float %410, i32 1)
  br label %443

412:                                              ; preds = %367
  %413 = load i32*, i32** %10, align 8
  %414 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %415 = load float, float* %14, align 4
  %416 = load float, float* %26, align 4
  %417 = fsub float %415, %416
  %418 = load float, float* %15, align 4
  %419 = load float, float* %27, align 4
  %420 = fsub float %418, %419
  %421 = load float, float* %14, align 4
  %422 = load float, float* %30, align 4
  %423 = fsub float %421, %422
  %424 = load float, float* %15, align 4
  %425 = load float, float* %31, align 4
  %426 = fsub float %424, %425
  %427 = call i32 @fz_add_line(i32* %413, %struct.TYPE_5__* %414, float %417, float %420, float %423, float %426, i32 0)
  %428 = load i32*, i32** %10, align 8
  %429 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %430 = load float, float* %14, align 4
  %431 = load float, float* %30, align 4
  %432 = fsub float %430, %431
  %433 = load float, float* %15, align 4
  %434 = load float, float* %31, align 4
  %435 = fsub float %433, %434
  %436 = load float, float* %14, align 4
  %437 = load float, float* %28, align 4
  %438 = fsub float %436, %437
  %439 = load float, float* %15, align 4
  %440 = load float, float* %29, align 4
  %441 = fsub float %439, %440
  %442 = call i32 @fz_add_line(i32* %428, %struct.TYPE_5__* %429, float %432, float %435, float %438, float %441, i32 0)
  br label %443

443:                                              ; preds = %412, %381
  br label %478

444:                                              ; preds = %243
  %445 = load i32*, i32** %10, align 8
  %446 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %447 = load float, float* %14, align 4
  %448 = load float, float* %26, align 4
  %449 = fsub float %447, %448
  %450 = load float, float* %15, align 4
  %451 = load float, float* %27, align 4
  %452 = fsub float %450, %451
  %453 = load float, float* %14, align 4
  %454 = load float, float* %28, align 4
  %455 = fsub float %453, %454
  %456 = load float, float* %15, align 4
  %457 = load float, float* %29, align 4
  %458 = fsub float %456, %457
  %459 = load i32, i32* %35, align 4
  %460 = call i32 @fz_add_line(i32* %445, %struct.TYPE_5__* %446, float %449, float %452, float %455, float %458, i32 %459)
  br label %478

461:                                              ; preds = %243
  %462 = load i32*, i32** %10, align 8
  %463 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %464 = load float, float* %14, align 4
  %465 = load float, float* %15, align 4
  %466 = load float, float* %26, align 4
  %467 = fneg float %466
  %468 = load float, float* %27, align 4
  %469 = fneg float %468
  %470 = load float, float* %28, align 4
  %471 = fneg float %470
  %472 = load float, float* %29, align 4
  %473 = fneg float %472
  %474 = load i32, i32* %35, align 4
  %475 = call i32 @fz_add_arc(i32* %462, %struct.TYPE_5__* %463, float %464, float %465, float %467, float %469, float %471, float %473, i32 %474)
  br label %478

476:                                              ; preds = %243
  %477 = call i32 @assert(i32 0)
  br label %478

478:                                              ; preds = %476, %461, %444, %443, %366
  ret void
}

declare dso_local i64 @find_normal_vectors(float, float, float, float*, float*) #1

declare dso_local i32 @fz_add_line(i32*, %struct.TYPE_5__*, float, float, float, float, i32) #1

; Function Attrs: nounwind
declare dso_local float @sqrtf(float) #2

declare dso_local i32 @fz_add_arc(i32*, %struct.TYPE_5__*, float, float, float, float, float, float, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
