; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/xps/extr_xps-gradient.c_xps_draw_linear_gradient.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/xps/extr_xps-gradient.c_xps_draw_linear_gradient.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stop = type { i32 }
%struct.TYPE_6__ = type { float, float, float, float }
%struct.TYPE_7__ = type { float, float }

@.str = private unnamed_addr constant [11 x i8] c"StartPoint\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"EndPoint\00", align 1
@SPREAD_REPEAT = common dso_local global i32 0, align 4
@SPREAD_REFLECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, <2 x float>, <2 x float>, %struct.stop*, i32, i32*, i32)* @xps_draw_linear_gradient to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xps_draw_linear_gradient(i32* %0, i32* %1, i32 %2, <2 x float> %3, <2 x float> %4, %struct.stop* %5, i32 %6, i32* %7, i32 %8) #0 {
  %10 = alloca %struct.TYPE_6__, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.stop*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca float, align 4
  %26 = alloca float, align 4
  %27 = alloca float, align 4
  %28 = alloca float, align 4
  %29 = alloca float, align 4
  %30 = alloca %struct.TYPE_7__, align 4
  %31 = alloca %struct.TYPE_7__, align 4
  %32 = alloca i32, align 4
  %33 = alloca i8*, align 8
  %34 = alloca i8*, align 8
  %35 = alloca %struct.TYPE_6__, align 4
  %36 = bitcast %struct.TYPE_6__* %10 to { <2 x float>, <2 x float> }*
  %37 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %36, i32 0, i32 0
  store <2 x float> %3, <2 x float>* %37, align 4
  %38 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %36, i32 0, i32 1
  store <2 x float> %4, <2 x float>* %38, align 4
  store i32* %0, i32** %11, align 8
  store i32* %1, i32** %12, align 8
  store i32 %2, i32* %13, align 4
  store %struct.stop* %5, %struct.stop** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32* %7, i32** %16, align 8
  store i32 %8, i32* %17, align 4
  %39 = load i32*, i32** %16, align 8
  %40 = call i8* @fz_xml_att(i32* %39, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i8* %40, i8** %33, align 8
  %41 = load i32*, i32** %16, align 8
  %42 = call i8* @fz_xml_att(i32* %41, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i8* %42, i8** %34, align 8
  store float 0.000000e+00, float* %19, align 4
  store float 0.000000e+00, float* %18, align 4
  store float 1.000000e+00, float* %21, align 4
  store float 1.000000e+00, float* %20, align 4
  %43 = load i8*, i8** %33, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %9
  %46 = load i32*, i32** %11, align 8
  %47 = load i32*, i32** %12, align 8
  %48 = load i8*, i8** %33, align 8
  %49 = call i32 @xps_parse_point(i32* %46, i32* %47, i8* %48, float* %18, float* %19)
  br label %50

50:                                               ; preds = %45, %9
  %51 = load i8*, i8** %34, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = load i32*, i32** %11, align 8
  %55 = load i32*, i32** %12, align 8
  %56 = load i8*, i8** %34, align 8
  %57 = call i32 @xps_parse_point(i32* %54, i32* %55, i8* %56, float* %20, float* %21)
  br label %58

58:                                               ; preds = %53, %50
  %59 = load float, float* %18, align 4
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  store float %59, float* %60, align 4
  %61 = load float, float* %19, align 4
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  store float %61, float* %62, align 4
  %63 = load float, float* %20, align 4
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  store float %63, float* %64, align 4
  %65 = load float, float* %21, align 4
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  store float %65, float* %66, align 4
  %67 = load i32, i32* %13, align 4
  %68 = call i32 @fz_invert_matrix(i32 %67)
  store i32 %68, i32* %32, align 4
  %69 = load i32, i32* %32, align 4
  %70 = bitcast %struct.TYPE_6__* %10 to { <2 x float>, <2 x float> }*
  %71 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %70, i32 0, i32 0
  %72 = load <2 x float>, <2 x float>* %71, align 4
  %73 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %70, i32 0, i32 1
  %74 = load <2 x float>, <2 x float>* %73, align 4
  %75 = call { <2 x float>, <2 x float> } @fz_transform_rect(<2 x float> %72, <2 x float> %74, i32 %69)
  %76 = bitcast %struct.TYPE_6__* %35 to { <2 x float>, <2 x float> }*
  %77 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %76, i32 0, i32 0
  %78 = extractvalue { <2 x float>, <2 x float> } %75, 0
  store <2 x float> %78, <2 x float>* %77, align 4
  %79 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %76, i32 0, i32 1
  %80 = extractvalue { <2 x float>, <2 x float> } %75, 1
  store <2 x float> %80, <2 x float>* %79, align 4
  %81 = bitcast %struct.TYPE_6__* %10 to i8*
  %82 = bitcast %struct.TYPE_6__* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %81, i8* align 4 %82, i64 16, i1 false)
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %84 = load float, float* %83, align 4
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %86 = load float, float* %85, align 4
  %87 = fsub float %84, %86
  store float %87, float* %27, align 4
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  %89 = load float, float* %88, align 4
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %91 = load float, float* %90, align 4
  %92 = fsub float %89, %91
  store float %92, float* %28, align 4
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %94 = load float, float* %93, align 4
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %96 = load float, float* %95, align 4
  %97 = fsub float %94, %96
  %98 = load float, float* %27, align 4
  %99 = fmul float %97, %98
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %101 = load float, float* %100, align 4
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %103 = load float, float* %102, align 4
  %104 = fsub float %101, %103
  %105 = load float, float* %28, align 4
  %106 = fmul float %104, %105
  %107 = fadd float %99, %106
  %108 = load float, float* %27, align 4
  %109 = load float, float* %27, align 4
  %110 = fmul float %108, %109
  %111 = load float, float* %28, align 4
  %112 = load float, float* %28, align 4
  %113 = fmul float %111, %112
  %114 = fadd float %110, %113
  %115 = fdiv float %107, %114
  store float %115, float* %29, align 4
  %116 = load float, float* %29, align 4
  %117 = call i32 @floorf(float %116)
  store i32 %117, i32* %23, align 4
  %118 = load float, float* %29, align 4
  %119 = call i32 @ceilf(float %118)
  store i32 %119, i32* %24, align 4
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 2
  %121 = load float, float* %120, align 4
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %123 = load float, float* %122, align 4
  %124 = fsub float %121, %123
  %125 = load float, float* %27, align 4
  %126 = fmul float %124, %125
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %128 = load float, float* %127, align 4
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %130 = load float, float* %129, align 4
  %131 = fsub float %128, %130
  %132 = load float, float* %28, align 4
  %133 = fmul float %131, %132
  %134 = fadd float %126, %133
  %135 = load float, float* %27, align 4
  %136 = load float, float* %27, align 4
  %137 = fmul float %135, %136
  %138 = load float, float* %28, align 4
  %139 = load float, float* %28, align 4
  %140 = fmul float %138, %139
  %141 = fadd float %137, %140
  %142 = fdiv float %134, %141
  store float %142, float* %29, align 4
  %143 = load i32, i32* %23, align 4
  %144 = load float, float* %29, align 4
  %145 = call i32 @floorf(float %144)
  %146 = call i32 @fz_mini(i32 %143, i32 %145)
  store i32 %146, i32* %23, align 4
  %147 = load i32, i32* %24, align 4
  %148 = load float, float* %29, align 4
  %149 = call i32 @ceilf(float %148)
  %150 = call i32 @fz_maxi(i32 %147, i32 %149)
  store i32 %150, i32* %24, align 4
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %152 = load float, float* %151, align 4
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %154 = load float, float* %153, align 4
  %155 = fsub float %152, %154
  %156 = load float, float* %27, align 4
  %157 = fmul float %155, %156
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 3
  %159 = load float, float* %158, align 4
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %161 = load float, float* %160, align 4
  %162 = fsub float %159, %161
  %163 = load float, float* %28, align 4
  %164 = fmul float %162, %163
  %165 = fadd float %157, %164
  %166 = load float, float* %27, align 4
  %167 = load float, float* %27, align 4
  %168 = fmul float %166, %167
  %169 = load float, float* %28, align 4
  %170 = load float, float* %28, align 4
  %171 = fmul float %169, %170
  %172 = fadd float %168, %171
  %173 = fdiv float %165, %172
  store float %173, float* %29, align 4
  %174 = load i32, i32* %23, align 4
  %175 = load float, float* %29, align 4
  %176 = call i32 @floorf(float %175)
  %177 = call i32 @fz_mini(i32 %174, i32 %176)
  store i32 %177, i32* %23, align 4
  %178 = load i32, i32* %24, align 4
  %179 = load float, float* %29, align 4
  %180 = call i32 @ceilf(float %179)
  %181 = call i32 @fz_maxi(i32 %178, i32 %180)
  store i32 %181, i32* %24, align 4
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 2
  %183 = load float, float* %182, align 4
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %185 = load float, float* %184, align 4
  %186 = fsub float %183, %185
  %187 = load float, float* %27, align 4
  %188 = fmul float %186, %187
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 3
  %190 = load float, float* %189, align 4
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %192 = load float, float* %191, align 4
  %193 = fsub float %190, %192
  %194 = load float, float* %28, align 4
  %195 = fmul float %193, %194
  %196 = fadd float %188, %195
  %197 = load float, float* %27, align 4
  %198 = load float, float* %27, align 4
  %199 = fmul float %197, %198
  %200 = load float, float* %28, align 4
  %201 = load float, float* %28, align 4
  %202 = fmul float %200, %201
  %203 = fadd float %199, %202
  %204 = fdiv float %196, %203
  store float %204, float* %29, align 4
  %205 = load i32, i32* %23, align 4
  %206 = load float, float* %29, align 4
  %207 = call i32 @floorf(float %206)
  %208 = call i32 @fz_mini(i32 %205, i32 %207)
  store i32 %208, i32* %23, align 4
  %209 = load i32, i32* %24, align 4
  %210 = load float, float* %29, align 4
  %211 = call i32 @ceilf(float %210)
  %212 = call i32 @fz_maxi(i32 %209, i32 %211)
  store i32 %212, i32* %24, align 4
  %213 = load float, float* %20, align 4
  %214 = load float, float* %18, align 4
  %215 = fsub float %213, %214
  store float %215, float* %25, align 4
  %216 = load float, float* %21, align 4
  %217 = load float, float* %19, align 4
  %218 = fsub float %216, %217
  store float %218, float* %26, align 4
  %219 = load i32, i32* %17, align 4
  %220 = load i32, i32* @SPREAD_REPEAT, align 4
  %221 = icmp eq i32 %219, %220
  br i1 %221, label %222, label %263

222:                                              ; preds = %58
  %223 = load i32, i32* %23, align 4
  store i32 %223, i32* %22, align 4
  br label %224

224:                                              ; preds = %259, %222
  %225 = load i32, i32* %22, align 4
  %226 = load i32, i32* %24, align 4
  %227 = icmp slt i32 %225, %226
  br i1 %227, label %228, label %262

228:                                              ; preds = %224
  %229 = load i32*, i32** %11, align 8
  %230 = load i32*, i32** %12, align 8
  %231 = load i32, i32* %13, align 4
  %232 = load %struct.stop*, %struct.stop** %14, align 8
  %233 = load i32, i32* %15, align 4
  %234 = load float, float* %18, align 4
  %235 = load i32, i32* %22, align 4
  %236 = sitofp i32 %235 to float
  %237 = load float, float* %25, align 4
  %238 = fmul float %236, %237
  %239 = fadd float %234, %238
  %240 = load float, float* %19, align 4
  %241 = load i32, i32* %22, align 4
  %242 = sitofp i32 %241 to float
  %243 = load float, float* %26, align 4
  %244 = fmul float %242, %243
  %245 = fadd float %240, %244
  %246 = load float, float* %20, align 4
  %247 = load i32, i32* %22, align 4
  %248 = sitofp i32 %247 to float
  %249 = load float, float* %25, align 4
  %250 = fmul float %248, %249
  %251 = fadd float %246, %250
  %252 = load float, float* %21, align 4
  %253 = load i32, i32* %22, align 4
  %254 = sitofp i32 %253 to float
  %255 = load float, float* %26, align 4
  %256 = fmul float %254, %255
  %257 = fadd float %252, %256
  %258 = call i32 @xps_draw_one_linear_gradient(i32* %229, i32* %230, i32 %231, %struct.stop* %232, i32 %233, i32 0, float %239, float %245, float %251, float %257)
  br label %259

259:                                              ; preds = %228
  %260 = load i32, i32* %22, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %22, align 4
  br label %224

262:                                              ; preds = %224
  br label %359

263:                                              ; preds = %58
  %264 = load i32, i32* %17, align 4
  %265 = load i32, i32* @SPREAD_REFLECT, align 4
  %266 = icmp eq i32 %264, %265
  br i1 %266, label %267, label %347

267:                                              ; preds = %263
  %268 = load i32, i32* %23, align 4
  %269 = srem i32 %268, 2
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %274

271:                                              ; preds = %267
  %272 = load i32, i32* %23, align 4
  %273 = add nsw i32 %272, -1
  store i32 %273, i32* %23, align 4
  br label %274

274:                                              ; preds = %271, %267
  %275 = load i32, i32* %23, align 4
  store i32 %275, i32* %22, align 4
  br label %276

276:                                              ; preds = %343, %274
  %277 = load i32, i32* %22, align 4
  %278 = load i32, i32* %24, align 4
  %279 = icmp slt i32 %277, %278
  br i1 %279, label %280, label %346

280:                                              ; preds = %276
  %281 = load i32*, i32** %11, align 8
  %282 = load i32*, i32** %12, align 8
  %283 = load i32, i32* %13, align 4
  %284 = load %struct.stop*, %struct.stop** %14, align 8
  %285 = load i32, i32* %15, align 4
  %286 = load float, float* %18, align 4
  %287 = load i32, i32* %22, align 4
  %288 = sitofp i32 %287 to float
  %289 = load float, float* %25, align 4
  %290 = fmul float %288, %289
  %291 = fadd float %286, %290
  %292 = load float, float* %19, align 4
  %293 = load i32, i32* %22, align 4
  %294 = sitofp i32 %293 to float
  %295 = load float, float* %26, align 4
  %296 = fmul float %294, %295
  %297 = fadd float %292, %296
  %298 = load float, float* %20, align 4
  %299 = load i32, i32* %22, align 4
  %300 = sitofp i32 %299 to float
  %301 = load float, float* %25, align 4
  %302 = fmul float %300, %301
  %303 = fadd float %298, %302
  %304 = load float, float* %21, align 4
  %305 = load i32, i32* %22, align 4
  %306 = sitofp i32 %305 to float
  %307 = load float, float* %26, align 4
  %308 = fmul float %306, %307
  %309 = fadd float %304, %308
  %310 = call i32 @xps_draw_one_linear_gradient(i32* %281, i32* %282, i32 %283, %struct.stop* %284, i32 %285, i32 0, float %291, float %297, float %303, float %309)
  %311 = load i32*, i32** %11, align 8
  %312 = load i32*, i32** %12, align 8
  %313 = load i32, i32* %13, align 4
  %314 = load %struct.stop*, %struct.stop** %14, align 8
  %315 = load i32, i32* %15, align 4
  %316 = load float, float* %18, align 4
  %317 = load i32, i32* %22, align 4
  %318 = add nsw i32 %317, 2
  %319 = sitofp i32 %318 to float
  %320 = load float, float* %25, align 4
  %321 = fmul float %319, %320
  %322 = fadd float %316, %321
  %323 = load float, float* %19, align 4
  %324 = load i32, i32* %22, align 4
  %325 = add nsw i32 %324, 2
  %326 = sitofp i32 %325 to float
  %327 = load float, float* %26, align 4
  %328 = fmul float %326, %327
  %329 = fadd float %323, %328
  %330 = load float, float* %20, align 4
  %331 = load i32, i32* %22, align 4
  %332 = sitofp i32 %331 to float
  %333 = load float, float* %25, align 4
  %334 = fmul float %332, %333
  %335 = fadd float %330, %334
  %336 = load float, float* %21, align 4
  %337 = load i32, i32* %22, align 4
  %338 = sitofp i32 %337 to float
  %339 = load float, float* %26, align 4
  %340 = fmul float %338, %339
  %341 = fadd float %336, %340
  %342 = call i32 @xps_draw_one_linear_gradient(i32* %311, i32* %312, i32 %313, %struct.stop* %314, i32 %315, i32 0, float %322, float %329, float %335, float %341)
  br label %343

343:                                              ; preds = %280
  %344 = load i32, i32* %22, align 4
  %345 = add nsw i32 %344, 2
  store i32 %345, i32* %22, align 4
  br label %276

346:                                              ; preds = %276
  br label %358

347:                                              ; preds = %263
  %348 = load i32*, i32** %11, align 8
  %349 = load i32*, i32** %12, align 8
  %350 = load i32, i32* %13, align 4
  %351 = load %struct.stop*, %struct.stop** %14, align 8
  %352 = load i32, i32* %15, align 4
  %353 = load float, float* %18, align 4
  %354 = load float, float* %19, align 4
  %355 = load float, float* %20, align 4
  %356 = load float, float* %21, align 4
  %357 = call i32 @xps_draw_one_linear_gradient(i32* %348, i32* %349, i32 %350, %struct.stop* %351, i32 %352, i32 1, float %353, float %354, float %355, float %356)
  br label %358

358:                                              ; preds = %347, %346
  br label %359

359:                                              ; preds = %358, %262
  ret void
}

declare dso_local i8* @fz_xml_att(i32*, i8*) #1

declare dso_local i32 @xps_parse_point(i32*, i32*, i8*, float*, float*) #1

declare dso_local i32 @fz_invert_matrix(i32) #1

declare dso_local { <2 x float>, <2 x float> } @fz_transform_rect(<2 x float>, <2 x float>, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @floorf(float) #1

declare dso_local i32 @ceilf(float) #1

declare dso_local i32 @fz_mini(i32, i32) #1

declare dso_local i32 @fz_maxi(i32, i32) #1

declare dso_local i32 @xps_draw_one_linear_gradient(i32*, i32*, i32, %struct.stop*, i32, i32, float, float, float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="64" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
