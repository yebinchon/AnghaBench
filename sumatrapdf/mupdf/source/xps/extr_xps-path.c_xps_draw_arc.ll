; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/xps/extr_xps-path.c_xps_draw_arc.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/xps/extr_xps-path.c_xps_draw_arc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { float, float }

@FZ_PI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, float, float, float, i32, i32, float, float)* @xps_draw_arc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xps_draw_arc(i32* %0, i32* %1, i32* %2, float %3, float %4, float %5, i32 %6, i32 %7, float %8, float %9) #0 {
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_7__, align 4
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
  %41 = alloca float, align 4
  %42 = alloca float, align 4
  %43 = alloca %struct.TYPE_7__, align 4
  %44 = alloca %struct.TYPE_7__, align 4
  %45 = alloca %struct.TYPE_7__, align 4
  %46 = alloca %struct.TYPE_7__, align 4
  %47 = alloca %struct.TYPE_7__, align 4
  %48 = alloca %struct.TYPE_7__, align 4
  %49 = alloca %struct.TYPE_7__, align 4
  store i32* %0, i32** %11, align 8
  store i32* %1, i32** %12, align 8
  store i32* %2, i32** %13, align 8
  store float %3, float* %14, align 4
  store float %4, float* %15, align 4
  store float %5, float* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store float %8, float* %19, align 4
  store float %9, float* %20, align 4
  %50 = load i32*, i32** %11, align 8
  %51 = load i32*, i32** %13, align 8
  %52 = call <2 x float> @fz_currentpoint(i32* %50, i32* %51)
  %53 = bitcast %struct.TYPE_7__* %43 to <2 x float>*
  store <2 x float> %52, <2 x float>* %53, align 4
  %54 = bitcast %struct.TYPE_7__* %24 to i8*
  %55 = bitcast %struct.TYPE_7__* %43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %54, i8* align 4 %55, i64 8, i1 false)
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %57 = load float, float* %56, align 4
  store float %57, float* %27, align 4
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %59 = load float, float* %58, align 4
  store float %59, float* %28, align 4
  %60 = load float, float* %19, align 4
  store float %60, float* %29, align 4
  %61 = load float, float* %20, align 4
  store float %61, float* %30, align 4
  %62 = load float, float* %14, align 4
  store float %62, float* %25, align 4
  %63 = load float, float* %15, align 4
  store float %63, float* %26, align 4
  %64 = load i32, i32* %18, align 4
  %65 = load i32, i32* %17, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %10
  store float 1.000000e+00, float* %40, align 4
  br label %69

68:                                               ; preds = %10
  store float -1.000000e+00, float* %40, align 4
  br label %69

69:                                               ; preds = %68, %67
  %70 = load float, float* %16, align 4
  %71 = call i32 @fz_rotate(float %70)
  store i32 %71, i32* %21, align 4
  %72 = load float, float* %16, align 4
  %73 = fneg float %72
  %74 = call i32 @fz_rotate(float %73)
  store i32 %74, i32* %22, align 4
  %75 = load float, float* %25, align 4
  %76 = call float @llvm.fabs.f32(float %75)
  store float %76, float* %25, align 4
  %77 = load float, float* %26, align 4
  %78 = call float @llvm.fabs.f32(float %77)
  store float %78, float* %26, align 4
  %79 = load float, float* %25, align 4
  %80 = fcmp olt float %79, 0x3F50624DE0000000
  br i1 %80, label %92, label %81

81:                                               ; preds = %69
  %82 = load float, float* %26, align 4
  %83 = fcmp olt float %82, 0x3F50624DE0000000
  br i1 %83, label %92, label %84

84:                                               ; preds = %81
  %85 = load float, float* %27, align 4
  %86 = load float, float* %29, align 4
  %87 = fcmp oeq float %85, %86
  br i1 %87, label %88, label %98

88:                                               ; preds = %84
  %89 = load float, float* %28, align 4
  %90 = load float, float* %30, align 4
  %91 = fcmp oeq float %89, %90
  br i1 %91, label %92, label %98

92:                                               ; preds = %88, %81, %69
  %93 = load i32*, i32** %11, align 8
  %94 = load i32*, i32** %13, align 8
  %95 = load float, float* %29, align 4
  %96 = load float, float* %30, align 4
  %97 = call i32 @fz_lineto(i32* %93, i32* %94, float %95, float %96)
  br label %337

98:                                               ; preds = %88, %84
  %99 = load float, float* %27, align 4
  %100 = load float, float* %29, align 4
  %101 = fsub float %99, %100
  %102 = fdiv float %101, 2.000000e+00
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  store float %102, float* %103, align 4
  %104 = load float, float* %28, align 4
  %105 = load float, float* %30, align 4
  %106 = fsub float %104, %105
  %107 = fdiv float %106, 2.000000e+00
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  store float %107, float* %108, align 4
  %109 = load i32, i32* %22, align 4
  %110 = bitcast %struct.TYPE_7__* %24 to <2 x float>*
  %111 = load <2 x float>, <2 x float>* %110, align 4
  %112 = call <2 x float> @fz_transform_vector(<2 x float> %111, i32 %109)
  %113 = bitcast %struct.TYPE_7__* %44 to <2 x float>*
  store <2 x float> %112, <2 x float>* %113, align 4
  %114 = bitcast %struct.TYPE_7__* %24 to i8*
  %115 = bitcast %struct.TYPE_7__* %44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %114, i8* align 4 %115, i64 8, i1 false)
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %117 = load float, float* %116, align 4
  store float %117, float* %31, align 4
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %119 = load float, float* %118, align 4
  store float %119, float* %32, align 4
  %120 = load float, float* %31, align 4
  %121 = load float, float* %31, align 4
  %122 = fmul float %120, %121
  %123 = load float, float* %25, align 4
  %124 = load float, float* %25, align 4
  %125 = fmul float %123, %124
  %126 = fdiv float %122, %125
  %127 = load float, float* %32, align 4
  %128 = load float, float* %32, align 4
  %129 = fmul float %127, %128
  %130 = load float, float* %26, align 4
  %131 = load float, float* %26, align 4
  %132 = fmul float %130, %131
  %133 = fdiv float %129, %132
  %134 = fadd float %126, %133
  store float %134, float* %37, align 4
  %135 = load float, float* %37, align 4
  %136 = fcmp ogt float %135, 1.000000e+00
  br i1 %136, label %137, label %146

137:                                              ; preds = %98
  %138 = load float, float* %25, align 4
  %139 = load float, float* %37, align 4
  %140 = call float @sqrtf(float %139) #5
  %141 = fmul float %138, %140
  store float %141, float* %25, align 4
  %142 = load float, float* %26, align 4
  %143 = load float, float* %37, align 4
  %144 = call float @sqrtf(float %143) #5
  %145 = fmul float %142, %144
  store float %145, float* %26, align 4
  br label %146

146:                                              ; preds = %137, %98
  %147 = load float, float* %25, align 4
  %148 = load float, float* %25, align 4
  %149 = fmul float %147, %148
  %150 = load float, float* %26, align 4
  %151 = fmul float %149, %150
  %152 = load float, float* %26, align 4
  %153 = fmul float %151, %152
  %154 = load float, float* %25, align 4
  %155 = load float, float* %25, align 4
  %156 = fmul float %154, %155
  %157 = load float, float* %32, align 4
  %158 = fmul float %156, %157
  %159 = load float, float* %32, align 4
  %160 = fmul float %158, %159
  %161 = fsub float %153, %160
  %162 = load float, float* %26, align 4
  %163 = load float, float* %26, align 4
  %164 = fmul float %162, %163
  %165 = load float, float* %31, align 4
  %166 = fmul float %164, %165
  %167 = load float, float* %31, align 4
  %168 = fmul float %166, %167
  %169 = fsub float %161, %168
  store float %169, float* %37, align 4
  %170 = load float, float* %25, align 4
  %171 = load float, float* %25, align 4
  %172 = fmul float %170, %171
  %173 = load float, float* %32, align 4
  %174 = fmul float %172, %173
  %175 = load float, float* %32, align 4
  %176 = fmul float %174, %175
  %177 = load float, float* %26, align 4
  %178 = load float, float* %26, align 4
  %179 = fmul float %177, %178
  %180 = load float, float* %31, align 4
  %181 = fmul float %179, %180
  %182 = load float, float* %31, align 4
  %183 = fmul float %181, %182
  %184 = fadd float %176, %183
  store float %184, float* %38, align 4
  %185 = load float, float* %37, align 4
  %186 = load float, float* %38, align 4
  %187 = fdiv float %185, %186
  store float %187, float* %39, align 4
  %188 = load float, float* %39, align 4
  %189 = fcmp olt float %188, 0.000000e+00
  br i1 %189, label %190, label %191

190:                                              ; preds = %146
  store float 0.000000e+00, float* %39, align 4
  br label %191

191:                                              ; preds = %190, %146
  %192 = load float, float* %39, align 4
  %193 = call float @sqrtf(float %192) #5
  store float %193, float* %39, align 4
  %194 = load float, float* %40, align 4
  %195 = load float, float* %39, align 4
  %196 = fmul float %194, %195
  %197 = load float, float* %25, align 4
  %198 = load float, float* %32, align 4
  %199 = fmul float %197, %198
  %200 = fmul float %196, %199
  %201 = load float, float* %26, align 4
  %202 = fdiv float %200, %201
  store float %202, float* %33, align 4
  %203 = load float, float* %40, align 4
  %204 = load float, float* %39, align 4
  %205 = fmul float %203, %204
  %206 = load float, float* %26, align 4
  %207 = load float, float* %31, align 4
  %208 = fmul float %206, %207
  %209 = fneg float %208
  %210 = fmul float %205, %209
  %211 = load float, float* %25, align 4
  %212 = fdiv float %210, %211
  store float %212, float* %34, align 4
  %213 = load float, float* %33, align 4
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  store float %213, float* %214, align 4
  %215 = load float, float* %34, align 4
  %216 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  store float %215, float* %216, align 4
  %217 = load i32, i32* %21, align 4
  %218 = bitcast %struct.TYPE_7__* %24 to <2 x float>*
  %219 = load <2 x float>, <2 x float>* %218, align 4
  %220 = call <2 x float> @fz_transform_vector(<2 x float> %219, i32 %217)
  %221 = bitcast %struct.TYPE_7__* %45 to <2 x float>*
  store <2 x float> %220, <2 x float>* %221, align 4
  %222 = bitcast %struct.TYPE_7__* %24 to i8*
  %223 = bitcast %struct.TYPE_7__* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %222, i8* align 4 %223, i64 8, i1 false)
  %224 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %225 = load float, float* %224, align 4
  %226 = load float, float* %27, align 4
  %227 = load float, float* %29, align 4
  %228 = fadd float %226, %227
  %229 = fdiv float %228, 2.000000e+00
  %230 = fadd float %225, %229
  store float %230, float* %35, align 4
  %231 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %232 = load float, float* %231, align 4
  %233 = load float, float* %28, align 4
  %234 = load float, float* %30, align 4
  %235 = fadd float %233, %234
  %236 = fdiv float %235, 2.000000e+00
  %237 = fadd float %232, %236
  store float %237, float* %36, align 4
  %238 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  store float 1.000000e+00, float* %238, align 4
  %239 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  store float 0.000000e+00, float* %239, align 4
  %240 = load float, float* %31, align 4
  %241 = load float, float* %33, align 4
  %242 = fsub float %240, %241
  %243 = load float, float* %25, align 4
  %244 = fdiv float %242, %243
  %245 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  store float %244, float* %245, align 4
  %246 = load float, float* %32, align 4
  %247 = load float, float* %34, align 4
  %248 = fsub float %246, %247
  %249 = load float, float* %26, align 4
  %250 = fdiv float %248, %249
  %251 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  store float %250, float* %251, align 4
  %252 = load float, float* %31, align 4
  %253 = load float, float* %33, align 4
  %254 = fsub float %252, %253
  %255 = load float, float* %25, align 4
  %256 = fdiv float %254, %255
  %257 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  store float %256, float* %257, align 4
  %258 = load float, float* %32, align 4
  %259 = load float, float* %34, align 4
  %260 = fsub float %258, %259
  %261 = load float, float* %26, align 4
  %262 = fdiv float %260, %261
  %263 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  store float %262, float* %263, align 4
  %264 = load float, float* %31, align 4
  %265 = fneg float %264
  %266 = load float, float* %33, align 4
  %267 = fsub float %265, %266
  %268 = load float, float* %25, align 4
  %269 = fdiv float %267, %268
  %270 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  store float %269, float* %270, align 4
  %271 = load float, float* %32, align 4
  %272 = fneg float %271
  %273 = load float, float* %34, align 4
  %274 = fsub float %272, %273
  %275 = load float, float* %26, align 4
  %276 = fdiv float %274, %275
  %277 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  store float %276, float* %277, align 4
  %278 = bitcast %struct.TYPE_7__* %46 to <2 x float>*
  %279 = load <2 x float>, <2 x float>* %278, align 4
  %280 = bitcast %struct.TYPE_7__* %47 to <2 x float>*
  %281 = load <2 x float>, <2 x float>* %280, align 4
  %282 = call float @angle_between(<2 x float> %279, <2 x float> %281)
  store float %282, float* %41, align 4
  %283 = bitcast %struct.TYPE_7__* %48 to <2 x float>*
  %284 = load <2 x float>, <2 x float>* %283, align 4
  %285 = bitcast %struct.TYPE_7__* %49 to <2 x float>*
  %286 = load <2 x float>, <2 x float>* %285, align 4
  %287 = call float @angle_between(<2 x float> %284, <2 x float> %286)
  store float %287, float* %42, align 4
  %288 = load float, float* %42, align 4
  %289 = fcmp olt float %288, 0.000000e+00
  br i1 %289, label %290, label %300

290:                                              ; preds = %191
  %291 = load i32, i32* %18, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %300, label %293

293:                                              ; preds = %290
  %294 = load i32, i32* @FZ_PI, align 4
  %295 = sdiv i32 %294, 180
  %296 = mul nsw i32 %295, 360
  %297 = sitofp i32 %296 to float
  %298 = load float, float* %42, align 4
  %299 = fadd float %298, %297
  store float %299, float* %42, align 4
  br label %300

300:                                              ; preds = %293, %290, %191
  %301 = load float, float* %42, align 4
  %302 = fcmp ogt float %301, 0.000000e+00
  br i1 %302, label %303, label %313

303:                                              ; preds = %300
  %304 = load i32, i32* %18, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %313

306:                                              ; preds = %303
  %307 = load i32, i32* @FZ_PI, align 4
  %308 = sdiv i32 %307, 180
  %309 = mul nsw i32 %308, 360
  %310 = sitofp i32 %309 to float
  %311 = load float, float* %42, align 4
  %312 = fsub float %311, %310
  store float %312, float* %42, align 4
  br label %313

313:                                              ; preds = %306, %303, %300
  %314 = load float, float* %35, align 4
  %315 = load float, float* %36, align 4
  %316 = call i32 @fz_translate(float %314, float %315)
  %317 = load float, float* %16, align 4
  %318 = call i32 @fz_pre_rotate(i32 %316, float %317)
  %319 = load float, float* %25, align 4
  %320 = load float, float* %26, align 4
  %321 = call i32 @fz_pre_scale(i32 %318, float %319, float %320)
  store i32 %321, i32* %23, align 4
  %322 = load i32*, i32** %11, align 8
  %323 = load i32*, i32** %12, align 8
  %324 = load i32*, i32** %13, align 8
  %325 = load i32, i32* %23, align 4
  %326 = load float, float* %41, align 4
  %327 = load float, float* %41, align 4
  %328 = load float, float* %42, align 4
  %329 = fadd float %327, %328
  %330 = load i32, i32* %18, align 4
  %331 = call i32 @xps_draw_arc_segment(i32* %322, i32* %323, i32* %324, i32 %325, float %326, float %329, i32 %330)
  %332 = load i32*, i32** %11, align 8
  %333 = load i32*, i32** %13, align 8
  %334 = load float, float* %19, align 4
  %335 = load float, float* %20, align 4
  %336 = call i32 @fz_lineto(i32* %332, i32* %333, float %334, float %335)
  br label %337

337:                                              ; preds = %313, %92
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

declare dso_local i32 @xps_draw_arc_segment(i32*, i32*, i32*, i32, float, float, i32) #1

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
