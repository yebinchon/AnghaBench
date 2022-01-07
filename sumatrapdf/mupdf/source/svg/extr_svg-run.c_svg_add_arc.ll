; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/svg/extr_svg-run.c_svg_add_arc.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/svg/extr_svg-run.c_svg_add_arc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { float, float }

@FZ_PI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, float, float, float, i32, i32, float, float)* @svg_add_arc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @svg_add_arc(i32* %0, i32* %1, float %2, float %3, float %4, i32 %5, i32 %6, float %7, float %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_7__, align 4
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
  %35 = alloca float, align 4
  %36 = alloca float, align 4
  %37 = alloca float, align 4
  %38 = alloca float, align 4
  %39 = alloca float, align 4
  %40 = alloca float, align 4
  %41 = alloca %struct.TYPE_7__, align 4
  %42 = alloca %struct.TYPE_7__, align 4
  %43 = alloca %struct.TYPE_7__, align 4
  %44 = alloca %struct.TYPE_7__, align 4
  %45 = alloca %struct.TYPE_7__, align 4
  %46 = alloca %struct.TYPE_7__, align 4
  %47 = alloca %struct.TYPE_7__, align 4
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store float %2, float* %12, align 4
  store float %3, float* %13, align 4
  store float %4, float* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store float %7, float* %17, align 4
  store float %8, float* %18, align 4
  %48 = load i32*, i32** %10, align 8
  %49 = load i32*, i32** %11, align 8
  %50 = call <2 x float> @fz_currentpoint(i32* %48, i32* %49)
  %51 = bitcast %struct.TYPE_7__* %41 to <2 x float>*
  store <2 x float> %50, <2 x float>* %51, align 4
  %52 = bitcast %struct.TYPE_7__* %22 to i8*
  %53 = bitcast %struct.TYPE_7__* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %52, i8* align 4 %53, i64 8, i1 false)
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %55 = load float, float* %54, align 4
  store float %55, float* %25, align 4
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %57 = load float, float* %56, align 4
  store float %57, float* %26, align 4
  %58 = load float, float* %17, align 4
  store float %58, float* %27, align 4
  %59 = load float, float* %18, align 4
  store float %59, float* %28, align 4
  %60 = load float, float* %12, align 4
  store float %60, float* %23, align 4
  %61 = load float, float* %13, align 4
  store float %61, float* %24, align 4
  %62 = load i32, i32* %16, align 4
  %63 = load i32, i32* %15, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %9
  store float 1.000000e+00, float* %38, align 4
  br label %67

66:                                               ; preds = %9
  store float -1.000000e+00, float* %38, align 4
  br label %67

67:                                               ; preds = %66, %65
  %68 = load float, float* %14, align 4
  %69 = call i32 @fz_rotate(float %68)
  store i32 %69, i32* %19, align 4
  %70 = load float, float* %14, align 4
  %71 = fneg float %70
  %72 = call i32 @fz_rotate(float %71)
  store i32 %72, i32* %20, align 4
  %73 = load float, float* %23, align 4
  %74 = call float @llvm.fabs.f32(float %73)
  store float %74, float* %23, align 4
  %75 = load float, float* %24, align 4
  %76 = call float @llvm.fabs.f32(float %75)
  store float %76, float* %24, align 4
  %77 = load float, float* %23, align 4
  %78 = fcmp olt float %77, 0x3F50624DE0000000
  br i1 %78, label %90, label %79

79:                                               ; preds = %67
  %80 = load float, float* %24, align 4
  %81 = fcmp olt float %80, 0x3F50624DE0000000
  br i1 %81, label %90, label %82

82:                                               ; preds = %79
  %83 = load float, float* %25, align 4
  %84 = load float, float* %27, align 4
  %85 = fcmp oeq float %83, %84
  br i1 %85, label %86, label %96

86:                                               ; preds = %82
  %87 = load float, float* %26, align 4
  %88 = load float, float* %28, align 4
  %89 = fcmp oeq float %87, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %86, %79, %67
  %91 = load i32*, i32** %10, align 8
  %92 = load i32*, i32** %11, align 8
  %93 = load float, float* %27, align 4
  %94 = load float, float* %28, align 4
  %95 = call i32 @fz_lineto(i32* %91, i32* %92, float %93, float %94)
  br label %334

96:                                               ; preds = %86, %82
  %97 = load float, float* %25, align 4
  %98 = load float, float* %27, align 4
  %99 = fsub float %97, %98
  %100 = fdiv float %99, 2.000000e+00
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  store float %100, float* %101, align 4
  %102 = load float, float* %26, align 4
  %103 = load float, float* %28, align 4
  %104 = fsub float %102, %103
  %105 = fdiv float %104, 2.000000e+00
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  store float %105, float* %106, align 4
  %107 = load i32, i32* %20, align 4
  %108 = bitcast %struct.TYPE_7__* %22 to <2 x float>*
  %109 = load <2 x float>, <2 x float>* %108, align 4
  %110 = call <2 x float> @fz_transform_vector(<2 x float> %109, i32 %107)
  %111 = bitcast %struct.TYPE_7__* %42 to <2 x float>*
  store <2 x float> %110, <2 x float>* %111, align 4
  %112 = bitcast %struct.TYPE_7__* %22 to i8*
  %113 = bitcast %struct.TYPE_7__* %42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %112, i8* align 4 %113, i64 8, i1 false)
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %115 = load float, float* %114, align 4
  store float %115, float* %29, align 4
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %117 = load float, float* %116, align 4
  store float %117, float* %30, align 4
  %118 = load float, float* %29, align 4
  %119 = load float, float* %29, align 4
  %120 = fmul float %118, %119
  %121 = load float, float* %23, align 4
  %122 = load float, float* %23, align 4
  %123 = fmul float %121, %122
  %124 = fdiv float %120, %123
  %125 = load float, float* %30, align 4
  %126 = load float, float* %30, align 4
  %127 = fmul float %125, %126
  %128 = load float, float* %24, align 4
  %129 = load float, float* %24, align 4
  %130 = fmul float %128, %129
  %131 = fdiv float %127, %130
  %132 = fadd float %124, %131
  store float %132, float* %35, align 4
  %133 = load float, float* %35, align 4
  %134 = fcmp ogt float %133, 1.000000e+00
  br i1 %134, label %135, label %144

135:                                              ; preds = %96
  %136 = load float, float* %23, align 4
  %137 = load float, float* %35, align 4
  %138 = call float @sqrtf(float %137) #5
  %139 = fmul float %136, %138
  store float %139, float* %23, align 4
  %140 = load float, float* %24, align 4
  %141 = load float, float* %35, align 4
  %142 = call float @sqrtf(float %141) #5
  %143 = fmul float %140, %142
  store float %143, float* %24, align 4
  br label %144

144:                                              ; preds = %135, %96
  %145 = load float, float* %23, align 4
  %146 = load float, float* %23, align 4
  %147 = fmul float %145, %146
  %148 = load float, float* %24, align 4
  %149 = fmul float %147, %148
  %150 = load float, float* %24, align 4
  %151 = fmul float %149, %150
  %152 = load float, float* %23, align 4
  %153 = load float, float* %23, align 4
  %154 = fmul float %152, %153
  %155 = load float, float* %30, align 4
  %156 = fmul float %154, %155
  %157 = load float, float* %30, align 4
  %158 = fmul float %156, %157
  %159 = fsub float %151, %158
  %160 = load float, float* %24, align 4
  %161 = load float, float* %24, align 4
  %162 = fmul float %160, %161
  %163 = load float, float* %29, align 4
  %164 = fmul float %162, %163
  %165 = load float, float* %29, align 4
  %166 = fmul float %164, %165
  %167 = fsub float %159, %166
  store float %167, float* %35, align 4
  %168 = load float, float* %23, align 4
  %169 = load float, float* %23, align 4
  %170 = fmul float %168, %169
  %171 = load float, float* %30, align 4
  %172 = fmul float %170, %171
  %173 = load float, float* %30, align 4
  %174 = fmul float %172, %173
  %175 = load float, float* %24, align 4
  %176 = load float, float* %24, align 4
  %177 = fmul float %175, %176
  %178 = load float, float* %29, align 4
  %179 = fmul float %177, %178
  %180 = load float, float* %29, align 4
  %181 = fmul float %179, %180
  %182 = fadd float %174, %181
  store float %182, float* %36, align 4
  %183 = load float, float* %35, align 4
  %184 = load float, float* %36, align 4
  %185 = fdiv float %183, %184
  store float %185, float* %37, align 4
  %186 = load float, float* %37, align 4
  %187 = fcmp olt float %186, 0.000000e+00
  br i1 %187, label %188, label %189

188:                                              ; preds = %144
  store float 0.000000e+00, float* %37, align 4
  br label %189

189:                                              ; preds = %188, %144
  %190 = load float, float* %37, align 4
  %191 = call float @sqrtf(float %190) #5
  store float %191, float* %37, align 4
  %192 = load float, float* %38, align 4
  %193 = load float, float* %37, align 4
  %194 = fmul float %192, %193
  %195 = load float, float* %23, align 4
  %196 = load float, float* %30, align 4
  %197 = fmul float %195, %196
  %198 = fmul float %194, %197
  %199 = load float, float* %24, align 4
  %200 = fdiv float %198, %199
  store float %200, float* %31, align 4
  %201 = load float, float* %38, align 4
  %202 = load float, float* %37, align 4
  %203 = fmul float %201, %202
  %204 = load float, float* %24, align 4
  %205 = load float, float* %29, align 4
  %206 = fmul float %204, %205
  %207 = fneg float %206
  %208 = fmul float %203, %207
  %209 = load float, float* %23, align 4
  %210 = fdiv float %208, %209
  store float %210, float* %32, align 4
  %211 = load float, float* %31, align 4
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  store float %211, float* %212, align 4
  %213 = load float, float* %32, align 4
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  store float %213, float* %214, align 4
  %215 = load i32, i32* %19, align 4
  %216 = bitcast %struct.TYPE_7__* %22 to <2 x float>*
  %217 = load <2 x float>, <2 x float>* %216, align 4
  %218 = call <2 x float> @fz_transform_vector(<2 x float> %217, i32 %215)
  %219 = bitcast %struct.TYPE_7__* %43 to <2 x float>*
  store <2 x float> %218, <2 x float>* %219, align 4
  %220 = bitcast %struct.TYPE_7__* %22 to i8*
  %221 = bitcast %struct.TYPE_7__* %43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %220, i8* align 4 %221, i64 8, i1 false)
  %222 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %223 = load float, float* %222, align 4
  %224 = load float, float* %25, align 4
  %225 = load float, float* %27, align 4
  %226 = fadd float %224, %225
  %227 = fdiv float %226, 2.000000e+00
  %228 = fadd float %223, %227
  store float %228, float* %33, align 4
  %229 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %230 = load float, float* %229, align 4
  %231 = load float, float* %26, align 4
  %232 = load float, float* %28, align 4
  %233 = fadd float %231, %232
  %234 = fdiv float %233, 2.000000e+00
  %235 = fadd float %230, %234
  store float %235, float* %34, align 4
  %236 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  store float 1.000000e+00, float* %236, align 4
  %237 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  store float 0.000000e+00, float* %237, align 4
  %238 = load float, float* %29, align 4
  %239 = load float, float* %31, align 4
  %240 = fsub float %238, %239
  %241 = load float, float* %23, align 4
  %242 = fdiv float %240, %241
  %243 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  store float %242, float* %243, align 4
  %244 = load float, float* %30, align 4
  %245 = load float, float* %32, align 4
  %246 = fsub float %244, %245
  %247 = load float, float* %24, align 4
  %248 = fdiv float %246, %247
  %249 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  store float %248, float* %249, align 4
  %250 = load float, float* %29, align 4
  %251 = load float, float* %31, align 4
  %252 = fsub float %250, %251
  %253 = load float, float* %23, align 4
  %254 = fdiv float %252, %253
  %255 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  store float %254, float* %255, align 4
  %256 = load float, float* %30, align 4
  %257 = load float, float* %32, align 4
  %258 = fsub float %256, %257
  %259 = load float, float* %24, align 4
  %260 = fdiv float %258, %259
  %261 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  store float %260, float* %261, align 4
  %262 = load float, float* %29, align 4
  %263 = fneg float %262
  %264 = load float, float* %31, align 4
  %265 = fsub float %263, %264
  %266 = load float, float* %23, align 4
  %267 = fdiv float %265, %266
  %268 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  store float %267, float* %268, align 4
  %269 = load float, float* %30, align 4
  %270 = fneg float %269
  %271 = load float, float* %32, align 4
  %272 = fsub float %270, %271
  %273 = load float, float* %24, align 4
  %274 = fdiv float %272, %273
  %275 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  store float %274, float* %275, align 4
  %276 = bitcast %struct.TYPE_7__* %44 to <2 x float>*
  %277 = load <2 x float>, <2 x float>* %276, align 4
  %278 = bitcast %struct.TYPE_7__* %45 to <2 x float>*
  %279 = load <2 x float>, <2 x float>* %278, align 4
  %280 = call float @angle_between(<2 x float> %277, <2 x float> %279)
  store float %280, float* %39, align 4
  %281 = bitcast %struct.TYPE_7__* %46 to <2 x float>*
  %282 = load <2 x float>, <2 x float>* %281, align 4
  %283 = bitcast %struct.TYPE_7__* %47 to <2 x float>*
  %284 = load <2 x float>, <2 x float>* %283, align 4
  %285 = call float @angle_between(<2 x float> %282, <2 x float> %284)
  store float %285, float* %40, align 4
  %286 = load float, float* %40, align 4
  %287 = fcmp olt float %286, 0.000000e+00
  br i1 %287, label %288, label %298

288:                                              ; preds = %189
  %289 = load i32, i32* %16, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %298, label %291

291:                                              ; preds = %288
  %292 = load i32, i32* @FZ_PI, align 4
  %293 = sdiv i32 %292, 180
  %294 = mul nsw i32 %293, 360
  %295 = sitofp i32 %294 to float
  %296 = load float, float* %40, align 4
  %297 = fadd float %296, %295
  store float %297, float* %40, align 4
  br label %298

298:                                              ; preds = %291, %288, %189
  %299 = load float, float* %40, align 4
  %300 = fcmp ogt float %299, 0.000000e+00
  br i1 %300, label %301, label %311

301:                                              ; preds = %298
  %302 = load i32, i32* %16, align 4
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %311

304:                                              ; preds = %301
  %305 = load i32, i32* @FZ_PI, align 4
  %306 = sdiv i32 %305, 180
  %307 = mul nsw i32 %306, 360
  %308 = sitofp i32 %307 to float
  %309 = load float, float* %40, align 4
  %310 = fsub float %309, %308
  store float %310, float* %40, align 4
  br label %311

311:                                              ; preds = %304, %301, %298
  %312 = load float, float* %33, align 4
  %313 = load float, float* %34, align 4
  %314 = call i32 @fz_translate(float %312, float %313)
  %315 = load float, float* %14, align 4
  %316 = call i32 @fz_pre_rotate(i32 %314, float %315)
  %317 = load float, float* %23, align 4
  %318 = load float, float* %24, align 4
  %319 = call i32 @fz_pre_scale(i32 %316, float %317, float %318)
  store i32 %319, i32* %21, align 4
  %320 = load i32*, i32** %10, align 8
  %321 = load i32*, i32** %11, align 8
  %322 = load i32, i32* %21, align 4
  %323 = load float, float* %39, align 4
  %324 = load float, float* %39, align 4
  %325 = load float, float* %40, align 4
  %326 = fadd float %324, %325
  %327 = load i32, i32* %16, align 4
  %328 = call i32 @svg_add_arc_segment(i32* %320, i32* %321, i32 %322, float %323, float %326, i32 %327)
  %329 = load i32*, i32** %10, align 8
  %330 = load i32*, i32** %11, align 8
  %331 = load float, float* %17, align 4
  %332 = load float, float* %18, align 4
  %333 = call i32 @fz_lineto(i32* %329, i32* %330, float %331, float %332)
  br label %334

334:                                              ; preds = %311, %90
  ret void
}

declare dso_local <2 x float> @fz_currentpoint(i32*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @fz_rotate(float) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fabs.f32(float) #3

declare dso_local i32 @fz_lineto(i32*, i32*, float, float) #1

declare dso_local <2 x float> @fz_transform_vector(<2 x float>, i32) #1

; Function Attrs: nounwind
declare dso_local float @sqrtf(float) #4

declare dso_local float @angle_between(<2 x float>, <2 x float>) #1

declare dso_local i32 @fz_pre_scale(i32, float, float) #1

declare dso_local i32 @fz_pre_rotate(i32, float) #1

declare dso_local i32 @fz_translate(float, float) #1

declare dso_local i32 @svg_add_arc_segment(i32*, i32*, i32, float, float, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="64" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
