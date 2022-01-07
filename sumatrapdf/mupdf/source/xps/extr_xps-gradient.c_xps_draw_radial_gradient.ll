; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/xps/extr_xps-gradient.c_xps_draw_radial_gradient.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/xps/extr_xps-gradient.c_xps_draw_radial_gradient.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stop = type { i32 }
%struct.TYPE_5__ = type { float, float, float, float }

@.str = private unnamed_addr constant [7 x i8] c"Center\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"GradientOrigin\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"RadiusX\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"RadiusY\00", align 1
@FLT_EPSILON = common dso_local global i64 0, align 8
@SPREAD_REPEAT = common dso_local global i32 0, align 4
@SPREAD_REFLECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, <2 x float>, <2 x float>, %struct.stop*, i32, i32*, i32)* @xps_draw_radial_gradient to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xps_draw_radial_gradient(i32* %0, i32* %1, i32 %2, <2 x float> %3, <2 x float> %4, %struct.stop* %5, i32 %6, i32* %7, i32 %8) #0 {
  %10 = alloca %struct.TYPE_5__, align 4
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
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca float, align 4
  %25 = alloca float, align 4
  %26 = alloca float, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i8*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i8*, align 8
  %33 = alloca i8*, align 8
  %34 = alloca %struct.TYPE_5__, align 4
  %35 = bitcast %struct.TYPE_5__* %10 to { <2 x float>, <2 x float> }*
  %36 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %35, i32 0, i32 0
  store <2 x float> %3, <2 x float>* %36, align 4
  %37 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %35, i32 0, i32 1
  store <2 x float> %4, <2 x float>* %37, align 4
  store i32* %0, i32** %11, align 8
  store i32* %1, i32** %12, align 8
  store i32 %2, i32* %13, align 4
  store %struct.stop* %5, %struct.stop** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32* %7, i32** %16, align 8
  store i32 %8, i32* %17, align 4
  store float 1.000000e+00, float* %24, align 4
  store float 1.000000e+00, float* %25, align 4
  store i32 1, i32* %28, align 4
  %38 = load i32*, i32** %16, align 8
  %39 = call i8* @fz_xml_att(i32* %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i8* %39, i8** %30, align 8
  %40 = load i32*, i32** %16, align 8
  %41 = call i8* @fz_xml_att(i32* %40, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store i8* %41, i8** %31, align 8
  %42 = load i32*, i32** %16, align 8
  %43 = call i8* @fz_xml_att(i32* %42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store i8* %43, i8** %32, align 8
  %44 = load i32*, i32** %16, align 8
  %45 = call i8* @fz_xml_att(i32* %44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  store i8* %45, i8** %33, align 8
  store float 0.000000e+00, float* %19, align 4
  store float 0.000000e+00, float* %18, align 4
  store float 1.000000e+00, float* %22, align 4
  store float 1.000000e+00, float* %21, align 4
  store float 1.000000e+00, float* %24, align 4
  store float 1.000000e+00, float* %25, align 4
  %46 = load i8*, i8** %31, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %9
  %49 = load i32*, i32** %11, align 8
  %50 = load i32*, i32** %12, align 8
  %51 = load i8*, i8** %31, align 8
  %52 = call i32 @xps_parse_point(i32* %49, i32* %50, i8* %51, float* %18, float* %19)
  br label %53

53:                                               ; preds = %48, %9
  %54 = load i8*, i8** %30, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load i32*, i32** %11, align 8
  %58 = load i32*, i32** %12, align 8
  %59 = load i8*, i8** %30, align 8
  %60 = call i32 @xps_parse_point(i32* %57, i32* %58, i8* %59, float* %21, float* %22)
  br label %61

61:                                               ; preds = %56, %53
  %62 = load i8*, i8** %32, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i8*, i8** %32, align 8
  %66 = call float @fz_atof(i8* %65)
  store float %66, float* %24, align 4
  br label %67

67:                                               ; preds = %64, %61
  %68 = load i8*, i8** %33, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load i8*, i8** %33, align 8
  %72 = call float @fz_atof(i8* %71)
  store float %72, float* %25, align 4
  br label %73

73:                                               ; preds = %70, %67
  %74 = load float, float* %24, align 4
  %75 = call float @fz_max(float 0x3F847AE140000000, float %74)
  store float %75, float* %24, align 4
  %76 = load float, float* %25, align 4
  %77 = call float @fz_max(float 0x3F847AE140000000, float %76)
  store float %77, float* %25, align 4
  %78 = load float, float* %24, align 4
  %79 = call i64 @fz_abs(float %78)
  %80 = load i64, i64* @FLT_EPSILON, align 8
  %81 = icmp sgt i64 %79, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %73
  %83 = load i32, i32* %13, align 4
  %84 = load float, float* %25, align 4
  %85 = load float, float* %24, align 4
  %86 = fdiv float %84, %85
  %87 = call i32 @fz_pre_scale(i32 %83, i32 1, float %86)
  store i32 %87, i32* %13, align 4
  br label %88

88:                                               ; preds = %82, %73
  %89 = load float, float* %25, align 4
  %90 = fcmp une float %89, 0.000000e+00
  br i1 %90, label %91, label %101

91:                                               ; preds = %88
  %92 = load float, float* %24, align 4
  %93 = load float, float* %25, align 4
  %94 = fdiv float %92, %93
  store float %94, float* %26, align 4
  %95 = load float, float* %19, align 4
  %96 = load float, float* %26, align 4
  %97 = fmul float %95, %96
  store float %97, float* %19, align 4
  %98 = load float, float* %22, align 4
  %99 = load float, float* %26, align 4
  %100 = fmul float %98, %99
  store float %100, float* %22, align 4
  br label %101

101:                                              ; preds = %91, %88
  store float 0.000000e+00, float* %20, align 4
  %102 = load float, float* %24, align 4
  store float %102, float* %23, align 4
  %103 = load i32, i32* %13, align 4
  %104 = call i32 @fz_invert_matrix(i32 %103)
  store i32 %104, i32* %29, align 4
  %105 = load i32, i32* %29, align 4
  %106 = bitcast %struct.TYPE_5__* %10 to { <2 x float>, <2 x float> }*
  %107 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %106, i32 0, i32 0
  %108 = load <2 x float>, <2 x float>* %107, align 4
  %109 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %106, i32 0, i32 1
  %110 = load <2 x float>, <2 x float>* %109, align 4
  %111 = call { <2 x float>, <2 x float> } @fz_transform_rect(<2 x float> %108, <2 x float> %110, i32 %105)
  %112 = bitcast %struct.TYPE_5__* %34 to { <2 x float>, <2 x float> }*
  %113 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %112, i32 0, i32 0
  %114 = extractvalue { <2 x float>, <2 x float> } %111, 0
  store <2 x float> %114, <2 x float>* %113, align 4
  %115 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %112, i32 0, i32 1
  %116 = extractvalue { <2 x float>, <2 x float> } %111, 1
  store <2 x float> %116, <2 x float>* %115, align 4
  %117 = bitcast %struct.TYPE_5__* %10 to i8*
  %118 = bitcast %struct.TYPE_5__* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %117, i8* align 4 %118, i64 16, i1 false)
  %119 = load i32, i32* %28, align 4
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %121 = load float, float* %120, align 4
  %122 = load float, float* %18, align 4
  %123 = fsub float %121, %122
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %125 = load float, float* %124, align 4
  %126 = load float, float* %19, align 4
  %127 = fsub float %125, %126
  %128 = call float @hypotf(float %123, float %127) #4
  %129 = load float, float* %24, align 4
  %130 = fdiv float %128, %129
  %131 = call i32 @ceilf(float %130)
  %132 = call i32 @fz_maxi(i32 %119, i32 %131)
  store i32 %132, i32* %28, align 4
  %133 = load i32, i32* %28, align 4
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 2
  %135 = load float, float* %134, align 4
  %136 = load float, float* %18, align 4
  %137 = fsub float %135, %136
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %139 = load float, float* %138, align 4
  %140 = load float, float* %19, align 4
  %141 = fsub float %139, %140
  %142 = call float @hypotf(float %137, float %141) #4
  %143 = load float, float* %24, align 4
  %144 = fdiv float %142, %143
  %145 = call i32 @ceilf(float %144)
  %146 = call i32 @fz_maxi(i32 %133, i32 %145)
  store i32 %146, i32* %28, align 4
  %147 = load i32, i32* %28, align 4
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %149 = load float, float* %148, align 4
  %150 = load float, float* %18, align 4
  %151 = fsub float %149, %150
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 3
  %153 = load float, float* %152, align 4
  %154 = load float, float* %19, align 4
  %155 = fsub float %153, %154
  %156 = call float @hypotf(float %151, float %155) #4
  %157 = load float, float* %24, align 4
  %158 = fdiv float %156, %157
  %159 = call i32 @ceilf(float %158)
  %160 = call i32 @fz_maxi(i32 %147, i32 %159)
  store i32 %160, i32* %28, align 4
  %161 = load i32, i32* %28, align 4
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 2
  %163 = load float, float* %162, align 4
  %164 = load float, float* %18, align 4
  %165 = fsub float %163, %164
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 3
  %167 = load float, float* %166, align 4
  %168 = load float, float* %19, align 4
  %169 = fsub float %167, %168
  %170 = call float @hypotf(float %165, float %169) #4
  %171 = load float, float* %24, align 4
  %172 = fdiv float %170, %171
  %173 = call i32 @ceilf(float %172)
  %174 = call i32 @fz_maxi(i32 %161, i32 %173)
  store i32 %174, i32* %28, align 4
  %175 = load i32, i32* %17, align 4
  %176 = load i32, i32* @SPREAD_REPEAT, align 4
  %177 = icmp eq i32 %175, %176
  br i1 %177, label %178, label %211

178:                                              ; preds = %101
  %179 = load i32, i32* %28, align 4
  %180 = sub nsw i32 %179, 1
  store i32 %180, i32* %27, align 4
  br label %181

181:                                              ; preds = %207, %178
  %182 = load i32, i32* %27, align 4
  %183 = icmp sge i32 %182, 0
  br i1 %183, label %184, label %210

184:                                              ; preds = %181
  %185 = load i32*, i32** %11, align 8
  %186 = load i32*, i32** %12, align 8
  %187 = load i32, i32* %13, align 4
  %188 = load %struct.stop*, %struct.stop** %14, align 8
  %189 = load i32, i32* %15, align 4
  %190 = load float, float* %18, align 4
  %191 = load float, float* %19, align 4
  %192 = load float, float* %20, align 4
  %193 = load i32, i32* %27, align 4
  %194 = sitofp i32 %193 to float
  %195 = load float, float* %24, align 4
  %196 = fmul float %194, %195
  %197 = fadd float %192, %196
  %198 = load float, float* %21, align 4
  %199 = load float, float* %22, align 4
  %200 = load float, float* %23, align 4
  %201 = load i32, i32* %27, align 4
  %202 = sitofp i32 %201 to float
  %203 = load float, float* %24, align 4
  %204 = fmul float %202, %203
  %205 = fadd float %200, %204
  %206 = call i32 @xps_draw_one_radial_gradient(i32* %185, i32* %186, i32 %187, %struct.stop* %188, i32 %189, i32 0, float %190, float %191, float %197, float %198, float %199, float %205)
  br label %207

207:                                              ; preds = %184
  %208 = load i32, i32* %27, align 4
  %209 = add nsw i32 %208, -1
  store i32 %209, i32* %27, align 4
  br label %181

210:                                              ; preds = %181
  br label %292

211:                                              ; preds = %101
  %212 = load i32, i32* %17, align 4
  %213 = load i32, i32* @SPREAD_REFLECT, align 4
  %214 = icmp eq i32 %212, %213
  br i1 %214, label %215, label %278

215:                                              ; preds = %211
  %216 = load i32, i32* %28, align 4
  %217 = srem i32 %216, 2
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %222

219:                                              ; preds = %215
  %220 = load i32, i32* %28, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %28, align 4
  br label %222

222:                                              ; preds = %219, %215
  %223 = load i32, i32* %28, align 4
  %224 = sub nsw i32 %223, 2
  store i32 %224, i32* %27, align 4
  br label %225

225:                                              ; preds = %274, %222
  %226 = load i32, i32* %27, align 4
  %227 = icmp sge i32 %226, 0
  br i1 %227, label %228, label %277

228:                                              ; preds = %225
  %229 = load i32*, i32** %11, align 8
  %230 = load i32*, i32** %12, align 8
  %231 = load i32, i32* %13, align 4
  %232 = load %struct.stop*, %struct.stop** %14, align 8
  %233 = load i32, i32* %15, align 4
  %234 = load float, float* %18, align 4
  %235 = load float, float* %19, align 4
  %236 = load float, float* %20, align 4
  %237 = load i32, i32* %27, align 4
  %238 = sitofp i32 %237 to float
  %239 = load float, float* %24, align 4
  %240 = fmul float %238, %239
  %241 = fadd float %236, %240
  %242 = load float, float* %21, align 4
  %243 = load float, float* %22, align 4
  %244 = load float, float* %23, align 4
  %245 = load i32, i32* %27, align 4
  %246 = sitofp i32 %245 to float
  %247 = load float, float* %24, align 4
  %248 = fmul float %246, %247
  %249 = fadd float %244, %248
  %250 = call i32 @xps_draw_one_radial_gradient(i32* %229, i32* %230, i32 %231, %struct.stop* %232, i32 %233, i32 0, float %234, float %235, float %241, float %242, float %243, float %249)
  %251 = load i32*, i32** %11, align 8
  %252 = load i32*, i32** %12, align 8
  %253 = load i32, i32* %13, align 4
  %254 = load %struct.stop*, %struct.stop** %14, align 8
  %255 = load i32, i32* %15, align 4
  %256 = load float, float* %18, align 4
  %257 = load float, float* %19, align 4
  %258 = load float, float* %20, align 4
  %259 = load i32, i32* %27, align 4
  %260 = add nsw i32 %259, 2
  %261 = sitofp i32 %260 to float
  %262 = load float, float* %24, align 4
  %263 = fmul float %261, %262
  %264 = fadd float %258, %263
  %265 = load float, float* %21, align 4
  %266 = load float, float* %22, align 4
  %267 = load float, float* %23, align 4
  %268 = load i32, i32* %27, align 4
  %269 = sitofp i32 %268 to float
  %270 = load float, float* %24, align 4
  %271 = fmul float %269, %270
  %272 = fadd float %267, %271
  %273 = call i32 @xps_draw_one_radial_gradient(i32* %251, i32* %252, i32 %253, %struct.stop* %254, i32 %255, i32 0, float %256, float %257, float %264, float %265, float %266, float %272)
  br label %274

274:                                              ; preds = %228
  %275 = load i32, i32* %27, align 4
  %276 = sub nsw i32 %275, 2
  store i32 %276, i32* %27, align 4
  br label %225

277:                                              ; preds = %225
  br label %291

278:                                              ; preds = %211
  %279 = load i32*, i32** %11, align 8
  %280 = load i32*, i32** %12, align 8
  %281 = load i32, i32* %13, align 4
  %282 = load %struct.stop*, %struct.stop** %14, align 8
  %283 = load i32, i32* %15, align 4
  %284 = load float, float* %18, align 4
  %285 = load float, float* %19, align 4
  %286 = load float, float* %20, align 4
  %287 = load float, float* %21, align 4
  %288 = load float, float* %22, align 4
  %289 = load float, float* %23, align 4
  %290 = call i32 @xps_draw_one_radial_gradient(i32* %279, i32* %280, i32 %281, %struct.stop* %282, i32 %283, i32 1, float %284, float %285, float %286, float %287, float %288, float %289)
  br label %291

291:                                              ; preds = %278, %277
  br label %292

292:                                              ; preds = %291, %210
  ret void
}

declare dso_local i8* @fz_xml_att(i32*, i8*) #1

declare dso_local i32 @xps_parse_point(i32*, i32*, i8*, float*, float*) #1

declare dso_local float @fz_atof(i8*) #1

declare dso_local float @fz_max(float, float) #1

declare dso_local i64 @fz_abs(float) #1

declare dso_local i32 @fz_pre_scale(i32, i32, float) #1

declare dso_local i32 @fz_invert_matrix(i32) #1

declare dso_local { <2 x float>, <2 x float> } @fz_transform_rect(<2 x float>, <2 x float>, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @fz_maxi(i32, i32) #1

declare dso_local i32 @ceilf(float) #1

; Function Attrs: nounwind
declare dso_local float @hypotf(float, float) #3

declare dso_local i32 @xps_draw_one_radial_gradient(i32*, i32*, i32, %struct.stop*, i32, i32, float, float, float, float, float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="64" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
