; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/opengl/extr_vout_helper.c_BuildSphere.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/opengl/extr_vout_helper.c_BuildSphere.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VLC_ENOMEM = common dso_local global i32 0, align 4
@M_PI = common dso_local global i64 0, align 8
@SPHERE_RADIUS = common dso_local global float 0.000000e+00, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, float**, float**, i32*, i32**, i32*, float*, float*, float*, float*)* @BuildSphere to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @BuildSphere(i32 %0, float** %1, float** %2, i32* %3, i32** %4, i32* %5, float* %6, float* %7, float* %8, float* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca float**, align 8
  %14 = alloca float**, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32**, align 8
  %17 = alloca i32*, align 8
  %18 = alloca float*, align 8
  %19 = alloca float*, align 8
  %20 = alloca float*, align 8
  %21 = alloca float*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca float, align 4
  %26 = alloca float, align 4
  %27 = alloca float, align 4
  %28 = alloca i32, align 4
  %29 = alloca float, align 4
  %30 = alloca float, align 4
  %31 = alloca float, align 4
  %32 = alloca float, align 4
  %33 = alloca float, align 4
  %34 = alloca float, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca float, align 4
  %39 = alloca float, align 4
  %40 = alloca float, align 4
  %41 = alloca float, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  store i32 %0, i32* %12, align 4
  store float** %1, float*** %13, align 8
  store float** %2, float*** %14, align 8
  store i32* %3, i32** %15, align 8
  store i32** %4, i32*** %16, align 8
  store i32* %5, i32** %17, align 8
  store float* %6, float** %18, align 8
  store float* %7, float** %19, align 8
  store float* %8, float** %20, align 8
  store float* %9, float** %21, align 8
  store i32 128, i32* %22, align 4
  store i32 128, i32* %23, align 4
  %47 = load i32, i32* %22, align 4
  %48 = add i32 %47, 1
  %49 = load i32, i32* %23, align 4
  %50 = add i32 %49, 1
  %51 = mul i32 %48, %50
  %52 = load i32*, i32** %15, align 8
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* %22, align 4
  %54 = load i32, i32* %23, align 4
  %55 = mul i32 %53, %54
  %56 = mul i32 %55, 3
  %57 = mul i32 %56, 2
  %58 = load i32*, i32** %17, align 8
  store i32 %57, i32* %58, align 4
  %59 = load i32*, i32** %15, align 8
  %60 = load i32, i32* %59, align 4
  %61 = mul i32 %60, 3
  %62 = call i8* @vlc_alloc(i32 %61, i32 4)
  %63 = bitcast i8* %62 to float*
  %64 = load float**, float*** %13, align 8
  store float* %63, float** %64, align 8
  %65 = load float**, float*** %13, align 8
  %66 = load float*, float** %65, align 8
  %67 = icmp eq float* %66, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %10
  %69 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %69, i32* %11, align 4
  br label %337

70:                                               ; preds = %10
  %71 = load i32, i32* %12, align 4
  %72 = load i32*, i32** %15, align 8
  %73 = load i32, i32* %72, align 4
  %74 = mul i32 %71, %73
  %75 = mul i32 %74, 2
  %76 = call i8* @vlc_alloc(i32 %75, i32 4)
  %77 = bitcast i8* %76 to float*
  %78 = load float**, float*** %14, align 8
  store float* %77, float** %78, align 8
  %79 = load float**, float*** %14, align 8
  %80 = load float*, float** %79, align 8
  %81 = icmp eq float* %80, null
  br i1 %81, label %82, label %87

82:                                               ; preds = %70
  %83 = load float**, float*** %13, align 8
  %84 = load float*, float** %83, align 8
  %85 = call i32 @free(float* %84)
  %86 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %86, i32* %11, align 4
  br label %337

87:                                               ; preds = %70
  %88 = load i32*, i32** %17, align 8
  %89 = load i32, i32* %88, align 4
  %90 = call i8* @vlc_alloc(i32 %89, i32 4)
  %91 = bitcast i8* %90 to i32*
  %92 = load i32**, i32*** %16, align 8
  store i32* %91, i32** %92, align 8
  %93 = load i32**, i32*** %16, align 8
  %94 = load i32*, i32** %93, align 8
  %95 = icmp eq i32* %94, null
  br i1 %95, label %96, label %104

96:                                               ; preds = %87
  %97 = load float**, float*** %14, align 8
  %98 = load float*, float** %97, align 8
  %99 = call i32 @free(float* %98)
  %100 = load float**, float*** %13, align 8
  %101 = load float*, float** %100, align 8
  %102 = call i32 @free(float* %101)
  %103 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %103, i32* %11, align 4
  br label %337

104:                                              ; preds = %87
  store i32 0, i32* %24, align 4
  br label %105

105:                                              ; preds = %253, %104
  %106 = load i32, i32* %24, align 4
  %107 = load i32, i32* %22, align 4
  %108 = icmp ule i32 %106, %107
  br i1 %108, label %109, label %256

109:                                              ; preds = %105
  %110 = load i32, i32* %24, align 4
  %111 = uitofp i32 %110 to float
  %112 = load i64, i64* @M_PI, align 8
  %113 = sitofp i64 %112 to float
  %114 = fmul float %111, %113
  %115 = load i32, i32* %22, align 4
  %116 = uitofp i32 %115 to float
  %117 = fdiv float %114, %116
  store float %117, float* %25, align 4
  %118 = load float, float* %25, align 4
  %119 = call i32 @sincosf(float %118, float* %26, float* %27)
  store i32 0, i32* %28, align 4
  br label %120

120:                                              ; preds = %249, %109
  %121 = load i32, i32* %28, align 4
  %122 = load i32, i32* %23, align 4
  %123 = icmp ule i32 %121, %122
  br i1 %123, label %124, label %252

124:                                              ; preds = %120
  %125 = load i32, i32* %28, align 4
  %126 = mul i32 %125, 2
  %127 = uitofp i32 %126 to float
  %128 = load i64, i64* @M_PI, align 8
  %129 = sitofp i64 %128 to float
  %130 = fmul float %127, %129
  %131 = load i32, i32* %23, align 4
  %132 = uitofp i32 %131 to float
  %133 = fdiv float %130, %132
  store float %133, float* %29, align 4
  %134 = load float, float* %29, align 4
  %135 = call i32 @sincosf(float %134, float* %30, float* %31)
  %136 = load float, float* %31, align 4
  %137 = load float, float* %26, align 4
  %138 = fmul float %136, %137
  store float %138, float* %32, align 4
  %139 = load float, float* %27, align 4
  store float %139, float* %33, align 4
  %140 = load float, float* %30, align 4
  %141 = load float, float* %26, align 4
  %142 = fmul float %140, %141
  store float %142, float* %34, align 4
  %143 = load i32, i32* %24, align 4
  %144 = load i32, i32* %23, align 4
  %145 = add i32 %144, 1
  %146 = mul i32 %143, %145
  %147 = load i32, i32* %28, align 4
  %148 = add i32 %146, %147
  %149 = mul i32 %148, 3
  store i32 %149, i32* %35, align 4
  %150 = load float, float* @SPHERE_RADIUS, align 4
  %151 = load float, float* %32, align 4
  %152 = fmul float %150, %151
  %153 = load float**, float*** %13, align 8
  %154 = load float*, float** %153, align 8
  %155 = load i32, i32* %35, align 4
  %156 = zext i32 %155 to i64
  %157 = getelementptr inbounds float, float* %154, i64 %156
  store float %152, float* %157, align 4
  %158 = load float, float* @SPHERE_RADIUS, align 4
  %159 = load float, float* %33, align 4
  %160 = fmul float %158, %159
  %161 = load float**, float*** %13, align 8
  %162 = load float*, float** %161, align 8
  %163 = load i32, i32* %35, align 4
  %164 = add i32 %163, 1
  %165 = zext i32 %164 to i64
  %166 = getelementptr inbounds float, float* %162, i64 %165
  store float %160, float* %166, align 4
  %167 = load float, float* @SPHERE_RADIUS, align 4
  %168 = load float, float* %34, align 4
  %169 = fmul float %167, %168
  %170 = load float**, float*** %13, align 8
  %171 = load float*, float** %170, align 8
  %172 = load i32, i32* %35, align 4
  %173 = add i32 %172, 2
  %174 = zext i32 %173 to i64
  %175 = getelementptr inbounds float, float* %171, i64 %174
  store float %169, float* %175, align 4
  store i32 0, i32* %36, align 4
  br label %176

176:                                              ; preds = %245, %124
  %177 = load i32, i32* %36, align 4
  %178 = load i32, i32* %12, align 4
  %179 = icmp ult i32 %177, %178
  br i1 %179, label %180, label %248

180:                                              ; preds = %176
  %181 = load i32, i32* %36, align 4
  %182 = load i32, i32* %22, align 4
  %183 = add i32 %182, 1
  %184 = mul i32 %181, %183
  %185 = load i32, i32* %23, align 4
  %186 = add i32 %185, 1
  %187 = mul i32 %184, %186
  %188 = load i32, i32* %24, align 4
  %189 = load i32, i32* %23, align 4
  %190 = add i32 %189, 1
  %191 = mul i32 %188, %190
  %192 = add i32 %187, %191
  %193 = load i32, i32* %28, align 4
  %194 = add i32 %192, %193
  %195 = mul i32 %194, 2
  store i32 %195, i32* %37, align 4
  %196 = load float*, float** %20, align 8
  %197 = load i32, i32* %36, align 4
  %198 = zext i32 %197 to i64
  %199 = getelementptr inbounds float, float* %196, i64 %198
  %200 = load float, float* %199, align 4
  %201 = load float*, float** %18, align 8
  %202 = load i32, i32* %36, align 4
  %203 = zext i32 %202 to i64
  %204 = getelementptr inbounds float, float* %201, i64 %203
  %205 = load float, float* %204, align 4
  %206 = fsub float %200, %205
  store float %206, float* %38, align 4
  %207 = load float*, float** %21, align 8
  %208 = load i32, i32* %36, align 4
  %209 = zext i32 %208 to i64
  %210 = getelementptr inbounds float, float* %207, i64 %209
  %211 = load float, float* %210, align 4
  %212 = load float*, float** %19, align 8
  %213 = load i32, i32* %36, align 4
  %214 = zext i32 %213 to i64
  %215 = getelementptr inbounds float, float* %212, i64 %214
  %216 = load float, float* %215, align 4
  %217 = fsub float %211, %216
  store float %217, float* %39, align 4
  %218 = load i32, i32* %28, align 4
  %219 = uitofp i32 %218 to float
  %220 = load i32, i32* %23, align 4
  %221 = uitofp i32 %220 to float
  %222 = fdiv float %219, %221
  %223 = load float, float* %38, align 4
  %224 = fmul float %222, %223
  store float %224, float* %40, align 4
  %225 = load i32, i32* %24, align 4
  %226 = uitofp i32 %225 to float
  %227 = load i32, i32* %22, align 4
  %228 = uitofp i32 %227 to float
  %229 = fdiv float %226, %228
  %230 = load float, float* %39, align 4
  %231 = fmul float %229, %230
  store float %231, float* %41, align 4
  %232 = load float, float* %40, align 4
  %233 = load float**, float*** %14, align 8
  %234 = load float*, float** %233, align 8
  %235 = load i32, i32* %37, align 4
  %236 = zext i32 %235 to i64
  %237 = getelementptr inbounds float, float* %234, i64 %236
  store float %232, float* %237, align 4
  %238 = load float, float* %41, align 4
  %239 = load float**, float*** %14, align 8
  %240 = load float*, float** %239, align 8
  %241 = load i32, i32* %37, align 4
  %242 = add i32 %241, 1
  %243 = zext i32 %242 to i64
  %244 = getelementptr inbounds float, float* %240, i64 %243
  store float %238, float* %244, align 4
  br label %245

245:                                              ; preds = %180
  %246 = load i32, i32* %36, align 4
  %247 = add i32 %246, 1
  store i32 %247, i32* %36, align 4
  br label %176

248:                                              ; preds = %176
  br label %249

249:                                              ; preds = %248
  %250 = load i32, i32* %28, align 4
  %251 = add i32 %250, 1
  store i32 %251, i32* %28, align 4
  br label %120

252:                                              ; preds = %120
  br label %253

253:                                              ; preds = %252
  %254 = load i32, i32* %24, align 4
  %255 = add i32 %254, 1
  store i32 %255, i32* %24, align 4
  br label %105

256:                                              ; preds = %105
  store i32 0, i32* %42, align 4
  br label %257

257:                                              ; preds = %332, %256
  %258 = load i32, i32* %42, align 4
  %259 = load i32, i32* %22, align 4
  %260 = icmp ult i32 %258, %259
  br i1 %260, label %261, label %335

261:                                              ; preds = %257
  store i32 0, i32* %43, align 4
  br label %262

262:                                              ; preds = %328, %261
  %263 = load i32, i32* %43, align 4
  %264 = load i32, i32* %23, align 4
  %265 = icmp ult i32 %263, %264
  br i1 %265, label %266, label %331

266:                                              ; preds = %262
  %267 = load i32, i32* %42, align 4
  %268 = load i32, i32* %23, align 4
  %269 = add i32 %268, 1
  %270 = mul i32 %267, %269
  %271 = load i32, i32* %43, align 4
  %272 = add i32 %270, %271
  store i32 %272, i32* %44, align 4
  %273 = load i32, i32* %44, align 4
  %274 = load i32, i32* %23, align 4
  %275 = add i32 %273, %274
  %276 = add i32 %275, 1
  store i32 %276, i32* %45, align 4
  %277 = load i32, i32* %42, align 4
  %278 = load i32, i32* %22, align 4
  %279 = mul i32 %277, %278
  %280 = load i32, i32* %43, align 4
  %281 = add i32 %279, %280
  %282 = mul i32 %281, 3
  %283 = mul i32 %282, 2
  store i32 %283, i32* %46, align 4
  %284 = load i32, i32* %44, align 4
  %285 = load i32**, i32*** %16, align 8
  %286 = load i32*, i32** %285, align 8
  %287 = load i32, i32* %46, align 4
  %288 = zext i32 %287 to i64
  %289 = getelementptr inbounds i32, i32* %286, i64 %288
  store i32 %284, i32* %289, align 4
  %290 = load i32, i32* %45, align 4
  %291 = load i32**, i32*** %16, align 8
  %292 = load i32*, i32** %291, align 8
  %293 = load i32, i32* %46, align 4
  %294 = add i32 %293, 1
  %295 = zext i32 %294 to i64
  %296 = getelementptr inbounds i32, i32* %292, i64 %295
  store i32 %290, i32* %296, align 4
  %297 = load i32, i32* %44, align 4
  %298 = add i32 %297, 1
  %299 = load i32**, i32*** %16, align 8
  %300 = load i32*, i32** %299, align 8
  %301 = load i32, i32* %46, align 4
  %302 = add i32 %301, 2
  %303 = zext i32 %302 to i64
  %304 = getelementptr inbounds i32, i32* %300, i64 %303
  store i32 %298, i32* %304, align 4
  %305 = load i32, i32* %45, align 4
  %306 = load i32**, i32*** %16, align 8
  %307 = load i32*, i32** %306, align 8
  %308 = load i32, i32* %46, align 4
  %309 = add i32 %308, 3
  %310 = zext i32 %309 to i64
  %311 = getelementptr inbounds i32, i32* %307, i64 %310
  store i32 %305, i32* %311, align 4
  %312 = load i32, i32* %45, align 4
  %313 = add i32 %312, 1
  %314 = load i32**, i32*** %16, align 8
  %315 = load i32*, i32** %314, align 8
  %316 = load i32, i32* %46, align 4
  %317 = add i32 %316, 4
  %318 = zext i32 %317 to i64
  %319 = getelementptr inbounds i32, i32* %315, i64 %318
  store i32 %313, i32* %319, align 4
  %320 = load i32, i32* %44, align 4
  %321 = add i32 %320, 1
  %322 = load i32**, i32*** %16, align 8
  %323 = load i32*, i32** %322, align 8
  %324 = load i32, i32* %46, align 4
  %325 = add i32 %324, 5
  %326 = zext i32 %325 to i64
  %327 = getelementptr inbounds i32, i32* %323, i64 %326
  store i32 %321, i32* %327, align 4
  br label %328

328:                                              ; preds = %266
  %329 = load i32, i32* %43, align 4
  %330 = add i32 %329, 1
  store i32 %330, i32* %43, align 4
  br label %262

331:                                              ; preds = %262
  br label %332

332:                                              ; preds = %331
  %333 = load i32, i32* %42, align 4
  %334 = add i32 %333, 1
  store i32 %334, i32* %42, align 4
  br label %257

335:                                              ; preds = %257
  %336 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %336, i32* %11, align 4
  br label %337

337:                                              ; preds = %335, %96, %82, %68
  %338 = load i32, i32* %11, align 4
  ret i32 %338
}

declare dso_local i8* @vlc_alloc(i32, i32) #1

declare dso_local i32 @free(float*) #1

declare dso_local i32 @sincosf(float, float*, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
