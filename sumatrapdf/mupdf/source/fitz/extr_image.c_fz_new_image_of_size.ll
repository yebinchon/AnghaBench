; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_image.c_fz_new_image_of_size.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_image.c_fz_new_image_of_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, float*, i32, float*, i32*, i32, i32, i32*, i32*, i32* }

@.str = private unnamed_addr constant [9 x i8] c"fz_image\00", align 1
@fz_drop_image_imp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @fz_new_image_of_size(i32* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32 %5, i32 %6, i32 %7, i32 %8, float* %9, i32* %10, %struct.TYPE_7__* %11, i64 %12, i32* %13, i32* %14, i32* %15) #0 {
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca float*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca %struct.TYPE_7__*, align 8
  %29 = alloca i64, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca %struct.TYPE_7__*, align 8
  %34 = alloca i32, align 4
  %35 = alloca float, align 4
  store i32* %0, i32** %17, align 8
  store i32 %1, i32* %18, align 4
  store i32 %2, i32* %19, align 4
  store i32 %3, i32* %20, align 4
  store i32* %4, i32** %21, align 8
  store i32 %5, i32* %22, align 4
  store i32 %6, i32* %23, align 4
  store i32 %7, i32* %24, align 4
  store i32 %8, i32* %25, align 4
  store float* %9, float** %26, align 8
  store i32* %10, i32** %27, align 8
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %28, align 8
  store i64 %12, i64* %29, align 8
  store i32* %13, i32** %30, align 8
  store i32* %14, i32** %31, align 8
  store i32* %15, i32** %32, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %37 = icmp eq %struct.TYPE_7__* %36, null
  br i1 %37, label %43, label %38

38:                                               ; preds = %16
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 12
  %41 = load i32*, i32** %40, align 8
  %42 = icmp eq i32* %41, null
  br label %43

43:                                               ; preds = %38, %16
  %44 = phi i1 [ true, %16 ], [ %42, %38 ]
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  %47 = load i64, i64* %29, align 8
  %48 = icmp uge i64 %47, 104
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert(i32 %49)
  %51 = load i32*, i32** %17, align 8
  %52 = load i64, i64* %29, align 8
  %53 = call i32 @fz_calloc(i32* %51, i32 1, i64 %52)
  %54 = call %struct.TYPE_7__* @Memento_label(i32 %53, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_7__* %54, %struct.TYPE_7__** %33, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %56 = load i32, i32* @fz_drop_image_imp, align 4
  %57 = call i32 @FZ_INIT_KEY_STORABLE(%struct.TYPE_7__* %55, i32 1, i32 %56)
  %58 = load i32*, i32** %32, align 8
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 17
  store i32* %58, i32** %60, align 8
  %61 = load i32*, i32** %30, align 8
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 16
  store i32* %61, i32** %63, align 8
  %64 = load i32*, i32** %31, align 8
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 15
  store i32* %64, i32** %66, align 8
  %67 = load i32, i32* %18, align 4
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load i32, i32* %19, align 4
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* %22, align 4
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 8
  %76 = load i32, i32* %23, align 4
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 3
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* %20, align 4
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 4
  store i32 %79, i32* %81, align 8
  %82 = load i32*, i32** %21, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %84, label %88

84:                                               ; preds = %43
  %85 = load i32*, i32** %17, align 8
  %86 = load i32*, i32** %21, align 8
  %87 = call i32 @fz_colorspace_n(i32* %85, i32* %86)
  br label %89

88:                                               ; preds = %43
  br label %89

89:                                               ; preds = %88, %84
  %90 = phi i32 [ %87, %84 ], [ 1, %88 ]
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 5
  store i32 %90, i32* %92, align 4
  %93 = load i32*, i32** %17, align 8
  %94 = load i32*, i32** %21, align 8
  %95 = call i32 @fz_keep_colorspace(i32* %93, i32* %94)
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 14
  store i32 %95, i32* %97, align 4
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 6
  store i32 1, i32* %99, align 8
  %100 = load i32, i32* %24, align 4
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 7
  store i32 %100, i32* %102, align 4
  %103 = load i32, i32* %25, align 4
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 8
  store i32 %103, i32* %105, align 8
  %106 = load i32*, i32** %27, align 8
  %107 = icmp ne i32* %106, null
  %108 = zext i1 %107 to i32
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 13
  store i32 %108, i32* %110, align 8
  %111 = load i32*, i32** %27, align 8
  %112 = icmp ne i32* %111, null
  br i1 %112, label %113, label %125

113:                                              ; preds = %89
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 9
  %116 = load float*, float** %115, align 8
  %117 = load i32*, i32** %27, align 8
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 5
  %120 = load i32, i32* %119, align 4
  %121 = sext i32 %120 to i64
  %122 = mul i64 4, %121
  %123 = mul i64 %122, 2
  %124 = call i32 (float*, ...) @memcpy(float* %116, i32* %117, i64 %123)
  br label %125

125:                                              ; preds = %113, %89
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 10
  store i32 0, i32* %127, align 8
  %128 = load float*, float** %26, align 8
  %129 = icmp ne float* %128, null
  br i1 %129, label %130, label %142

130:                                              ; preds = %125
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 11
  %133 = load float*, float** %132, align 8
  %134 = load float*, float** %26, align 8
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 5
  %137 = load i32, i32* %136, align 4
  %138 = sext i32 %137 to i64
  %139 = mul i64 4, %138
  %140 = mul i64 %139, 2
  %141 = call i32 (float*, ...) @memcpy(float* %133, float* %134, i64 %140)
  br label %182

142:                                              ; preds = %125
  %143 = load i32*, i32** %17, align 8
  %144 = load i32*, i32** %21, align 8
  %145 = call i64 @fz_colorspace_is_indexed(i32* %143, i32* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %142
  %148 = load i32, i32* %20, align 4
  %149 = shl i32 1, %148
  %150 = sub nsw i32 %149, 1
  br label %152

151:                                              ; preds = %142
  br label %152

152:                                              ; preds = %151, %147
  %153 = phi i32 [ %150, %147 ], [ 1, %151 ]
  %154 = sitofp i32 %153 to float
  store float %154, float* %35, align 4
  store i32 0, i32* %34, align 4
  br label %155

155:                                              ; preds = %178, %152
  %156 = load i32, i32* %34, align 4
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 5
  %159 = load i32, i32* %158, align 4
  %160 = icmp slt i32 %156, %159
  br i1 %160, label %161, label %181

161:                                              ; preds = %155
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 11
  %164 = load float*, float** %163, align 8
  %165 = load i32, i32* %34, align 4
  %166 = mul nsw i32 2, %165
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds float, float* %164, i64 %167
  store float 0.000000e+00, float* %168, align 4
  %169 = load float, float* %35, align 4
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 11
  %172 = load float*, float** %171, align 8
  %173 = load i32, i32* %34, align 4
  %174 = mul nsw i32 2, %173
  %175 = add nsw i32 %174, 1
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds float, float* %172, i64 %176
  store float %169, float* %177, align 4
  br label %178

178:                                              ; preds = %161
  %179 = load i32, i32* %34, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %34, align 4
  br label %155

181:                                              ; preds = %155
  br label %182

182:                                              ; preds = %181, %130
  %183 = load i32*, i32** %17, align 8
  %184 = load i32*, i32** %21, align 8
  %185 = call i64 @fz_colorspace_is_lab_icc(i32* %183, i32* %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %252

187:                                              ; preds = %182
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 11
  %190 = load float*, float** %189, align 8
  %191 = getelementptr inbounds float, float* %190, i64 0
  %192 = load float, float* %191, align 4
  %193 = fdiv float %192, 1.000000e+02
  %194 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i32 0, i32 11
  %196 = load float*, float** %195, align 8
  %197 = getelementptr inbounds float, float* %196, i64 0
  store float %193, float* %197, align 4
  %198 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 11
  %200 = load float*, float** %199, align 8
  %201 = getelementptr inbounds float, float* %200, i64 1
  %202 = load float, float* %201, align 4
  %203 = fdiv float %202, 1.000000e+02
  %204 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i32 0, i32 11
  %206 = load float*, float** %205, align 8
  %207 = getelementptr inbounds float, float* %206, i64 1
  store float %203, float* %207, align 4
  %208 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %209 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %208, i32 0, i32 11
  %210 = load float*, float** %209, align 8
  %211 = getelementptr inbounds float, float* %210, i64 2
  %212 = load float, float* %211, align 4
  %213 = fadd float %212, 1.280000e+02
  %214 = fdiv float %213, 2.550000e+02
  %215 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %216 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %215, i32 0, i32 11
  %217 = load float*, float** %216, align 8
  %218 = getelementptr inbounds float, float* %217, i64 2
  store float %214, float* %218, align 4
  %219 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i32 0, i32 11
  %221 = load float*, float** %220, align 8
  %222 = getelementptr inbounds float, float* %221, i64 3
  %223 = load float, float* %222, align 4
  %224 = fadd float %223, 1.280000e+02
  %225 = fdiv float %224, 2.550000e+02
  %226 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %227 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %226, i32 0, i32 11
  %228 = load float*, float** %227, align 8
  %229 = getelementptr inbounds float, float* %228, i64 3
  store float %225, float* %229, align 4
  %230 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %231 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %230, i32 0, i32 11
  %232 = load float*, float** %231, align 8
  %233 = getelementptr inbounds float, float* %232, i64 4
  %234 = load float, float* %233, align 4
  %235 = fadd float %234, 1.280000e+02
  %236 = fdiv float %235, 2.550000e+02
  %237 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %238 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %237, i32 0, i32 11
  %239 = load float*, float** %238, align 8
  %240 = getelementptr inbounds float, float* %239, i64 4
  store float %236, float* %240, align 4
  %241 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %242 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %241, i32 0, i32 11
  %243 = load float*, float** %242, align 8
  %244 = getelementptr inbounds float, float* %243, i64 5
  %245 = load float, float* %244, align 4
  %246 = fadd float %245, 1.280000e+02
  %247 = fdiv float %246, 2.550000e+02
  %248 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %249 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %248, i32 0, i32 11
  %250 = load float*, float** %249, align 8
  %251 = getelementptr inbounds float, float* %250, i64 5
  store float %247, float* %251, align 4
  br label %252

252:                                              ; preds = %187, %182
  store i32 0, i32* %34, align 4
  br label %253

253:                                              ; preds = %282, %252
  %254 = load i32, i32* %34, align 4
  %255 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %256 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %255, i32 0, i32 5
  %257 = load i32, i32* %256, align 4
  %258 = icmp slt i32 %254, %257
  br i1 %258, label %259, label %285

259:                                              ; preds = %253
  %260 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %261 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %260, i32 0, i32 11
  %262 = load float*, float** %261, align 8
  %263 = load i32, i32* %34, align 4
  %264 = mul nsw i32 %263, 2
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds float, float* %262, i64 %265
  %267 = load float, float* %266, align 4
  %268 = fcmp une float %267, 0.000000e+00
  br i1 %268, label %280, label %269

269:                                              ; preds = %259
  %270 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %271 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %270, i32 0, i32 11
  %272 = load float*, float** %271, align 8
  %273 = load i32, i32* %34, align 4
  %274 = mul nsw i32 %273, 2
  %275 = add nsw i32 %274, 1
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds float, float* %272, i64 %276
  %278 = load float, float* %277, align 4
  %279 = fcmp une float %278, 1.000000e+00
  br i1 %279, label %280, label %281

280:                                              ; preds = %269, %259
  br label %285

281:                                              ; preds = %269
  br label %282

282:                                              ; preds = %281
  %283 = load i32, i32* %34, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %34, align 4
  br label %253

285:                                              ; preds = %280, %253
  %286 = load i32, i32* %34, align 4
  %287 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %288 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %287, i32 0, i32 5
  %289 = load i32, i32* %288, align 4
  %290 = icmp ne i32 %286, %289
  br i1 %290, label %291, label %294

291:                                              ; preds = %285
  %292 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %293 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %292, i32 0, i32 10
  store i32 1, i32* %293, align 8
  br label %294

294:                                              ; preds = %291, %285
  %295 = load i32*, i32** %17, align 8
  %296 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %297 = call i32* @fz_keep_image(i32* %295, %struct.TYPE_7__* %296)
  %298 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %299 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %298, i32 0, i32 12
  store i32* %297, i32** %299, align 8
  %300 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  ret %struct.TYPE_7__* %300
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_7__* @Memento_label(i32, i8*) #1

declare dso_local i32 @fz_calloc(i32*, i32, i64) #1

declare dso_local i32 @FZ_INIT_KEY_STORABLE(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @fz_colorspace_n(i32*, i32*) #1

declare dso_local i32 @fz_keep_colorspace(i32*, i32*) #1

declare dso_local i32 @memcpy(float*, ...) #1

declare dso_local i64 @fz_colorspace_is_indexed(i32*, i32*) #1

declare dso_local i64 @fz_colorspace_is_lab_icc(i32*, i32*) #1

declare dso_local i32* @fz_keep_image(i32*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
