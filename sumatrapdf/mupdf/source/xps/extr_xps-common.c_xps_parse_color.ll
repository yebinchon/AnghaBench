; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/xps/extr_xps-common.c_xps_parse_color.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/xps/extr_xps-common.c_xps_parse_color.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"sc#%g,%g,%g\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"sc#%g,%g,%g,%g\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"ContextColor \00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"cannot find icc profile uri in '%s'\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"cannot find component values in '%s'\00", align 1
@FZ_MAX_COLORS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [46 x i8] c"ignoring %d color components (max %d allowed)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xps_parse_color(i32* %0, i32* %1, i8* %2, i8* %3, i32** %4, float* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca float*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [1024 x i8], align 16
  %17 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32** %4, i32*** %11, align 8
  store float* %5, float** %12, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = call i32* @fz_device_rgb(i32* %18)
  %20 = load i32**, i32*** %11, align 8
  store i32* %19, i32** %20, align 8
  %21 = load float*, float** %12, align 8
  %22 = getelementptr inbounds float, float* %21, i64 0
  store float 1.000000e+00, float* %22, align 4
  %23 = load float*, float** %12, align 8
  %24 = getelementptr inbounds float, float* %23, i64 1
  store float 0.000000e+00, float* %24, align 4
  %25 = load float*, float** %12, align 8
  %26 = getelementptr inbounds float, float* %25, i64 2
  store float 0.000000e+00, float* %26, align 4
  %27 = load float*, float** %12, align 8
  %28 = getelementptr inbounds float, float* %27, i64 3
  store float 0.000000e+00, float* %28, align 4
  %29 = load i8*, i8** %10, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 35
  br i1 %33, label %34, label %150

34:                                               ; preds = %6
  %35 = load i8*, i8** %10, align 8
  %36 = call i32 @strlen(i8* %35)
  %37 = icmp eq i32 %36, 9
  br i1 %37, label %38, label %91

38:                                               ; preds = %34
  %39 = load i8*, i8** %10, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  %41 = load i8, i8* %40, align 1
  %42 = call i32 @unhex(i8 signext %41)
  %43 = mul nsw i32 %42, 16
  %44 = load i8*, i8** %10, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 2
  %46 = load i8, i8* %45, align 1
  %47 = call i32 @unhex(i8 signext %46)
  %48 = add nsw i32 %43, %47
  %49 = sitofp i32 %48 to float
  %50 = load float*, float** %12, align 8
  %51 = getelementptr inbounds float, float* %50, i64 0
  store float %49, float* %51, align 4
  %52 = load i8*, i8** %10, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 3
  %54 = load i8, i8* %53, align 1
  %55 = call i32 @unhex(i8 signext %54)
  %56 = mul nsw i32 %55, 16
  %57 = load i8*, i8** %10, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 4
  %59 = load i8, i8* %58, align 1
  %60 = call i32 @unhex(i8 signext %59)
  %61 = add nsw i32 %56, %60
  %62 = sitofp i32 %61 to float
  %63 = load float*, float** %12, align 8
  %64 = getelementptr inbounds float, float* %63, i64 1
  store float %62, float* %64, align 4
  %65 = load i8*, i8** %10, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 5
  %67 = load i8, i8* %66, align 1
  %68 = call i32 @unhex(i8 signext %67)
  %69 = mul nsw i32 %68, 16
  %70 = load i8*, i8** %10, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 6
  %72 = load i8, i8* %71, align 1
  %73 = call i32 @unhex(i8 signext %72)
  %74 = add nsw i32 %69, %73
  %75 = sitofp i32 %74 to float
  %76 = load float*, float** %12, align 8
  %77 = getelementptr inbounds float, float* %76, i64 2
  store float %75, float* %77, align 4
  %78 = load i8*, i8** %10, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 7
  %80 = load i8, i8* %79, align 1
  %81 = call i32 @unhex(i8 signext %80)
  %82 = mul nsw i32 %81, 16
  %83 = load i8*, i8** %10, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 8
  %85 = load i8, i8* %84, align 1
  %86 = call i32 @unhex(i8 signext %85)
  %87 = add nsw i32 %82, %86
  %88 = sitofp i32 %87 to float
  %89 = load float*, float** %12, align 8
  %90 = getelementptr inbounds float, float* %89, i64 3
  store float %88, float* %90, align 4
  br label %133

91:                                               ; preds = %34
  %92 = load float*, float** %12, align 8
  %93 = getelementptr inbounds float, float* %92, i64 0
  store float 2.550000e+02, float* %93, align 4
  %94 = load i8*, i8** %10, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 1
  %96 = load i8, i8* %95, align 1
  %97 = call i32 @unhex(i8 signext %96)
  %98 = mul nsw i32 %97, 16
  %99 = load i8*, i8** %10, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 2
  %101 = load i8, i8* %100, align 1
  %102 = call i32 @unhex(i8 signext %101)
  %103 = add nsw i32 %98, %102
  %104 = sitofp i32 %103 to float
  %105 = load float*, float** %12, align 8
  %106 = getelementptr inbounds float, float* %105, i64 1
  store float %104, float* %106, align 4
  %107 = load i8*, i8** %10, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 3
  %109 = load i8, i8* %108, align 1
  %110 = call i32 @unhex(i8 signext %109)
  %111 = mul nsw i32 %110, 16
  %112 = load i8*, i8** %10, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 4
  %114 = load i8, i8* %113, align 1
  %115 = call i32 @unhex(i8 signext %114)
  %116 = add nsw i32 %111, %115
  %117 = sitofp i32 %116 to float
  %118 = load float*, float** %12, align 8
  %119 = getelementptr inbounds float, float* %118, i64 2
  store float %117, float* %119, align 4
  %120 = load i8*, i8** %10, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 5
  %122 = load i8, i8* %121, align 1
  %123 = call i32 @unhex(i8 signext %122)
  %124 = mul nsw i32 %123, 16
  %125 = load i8*, i8** %10, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 6
  %127 = load i8, i8* %126, align 1
  %128 = call i32 @unhex(i8 signext %127)
  %129 = add nsw i32 %124, %128
  %130 = sitofp i32 %129 to float
  %131 = load float*, float** %12, align 8
  %132 = getelementptr inbounds float, float* %131, i64 3
  store float %130, float* %132, align 4
  br label %133

133:                                              ; preds = %91, %38
  %134 = load float*, float** %12, align 8
  %135 = getelementptr inbounds float, float* %134, i64 0
  %136 = load float, float* %135, align 4
  %137 = fdiv float %136, 2.550000e+02
  store float %137, float* %135, align 4
  %138 = load float*, float** %12, align 8
  %139 = getelementptr inbounds float, float* %138, i64 1
  %140 = load float, float* %139, align 4
  %141 = fdiv float %140, 2.550000e+02
  store float %141, float* %139, align 4
  %142 = load float*, float** %12, align 8
  %143 = getelementptr inbounds float, float* %142, i64 2
  %144 = load float, float* %143, align 4
  %145 = fdiv float %144, 2.550000e+02
  store float %145, float* %143, align 4
  %146 = load float*, float** %12, align 8
  %147 = getelementptr inbounds float, float* %146, i64 3
  %148 = load float, float* %147, align 4
  %149 = fdiv float %148, 2.550000e+02
  store float %149, float* %147, align 4
  br label %320

150:                                              ; preds = %6
  %151 = load i8*, i8** %10, align 8
  %152 = getelementptr inbounds i8, i8* %151, i64 0
  %153 = load i8, i8* %152, align 1
  %154 = sext i8 %153 to i32
  %155 = icmp eq i32 %154, 115
  br i1 %155, label %156, label %214

156:                                              ; preds = %150
  %157 = load i8*, i8** %10, align 8
  %158 = getelementptr inbounds i8, i8* %157, i64 1
  %159 = load i8, i8* %158, align 1
  %160 = sext i8 %159 to i32
  %161 = icmp eq i32 %160, 99
  br i1 %161, label %162, label %214

162:                                              ; preds = %156
  %163 = load i8*, i8** %10, align 8
  %164 = getelementptr inbounds i8, i8* %163, i64 2
  %165 = load i8, i8* %164, align 1
  %166 = sext i8 %165 to i32
  %167 = icmp eq i32 %166, 35
  br i1 %167, label %168, label %214

168:                                              ; preds = %162
  %169 = load i8*, i8** %10, align 8
  %170 = call i32 @count_commas(i8* %169)
  %171 = icmp eq i32 %170, 2
  br i1 %171, label %172, label %181

172:                                              ; preds = %168
  %173 = load i8*, i8** %10, align 8
  %174 = load float*, float** %12, align 8
  %175 = getelementptr inbounds float, float* %174, i64 1
  %176 = load float*, float** %12, align 8
  %177 = getelementptr inbounds float, float* %176, i64 2
  %178 = load float*, float** %12, align 8
  %179 = getelementptr inbounds float, float* %178, i64 3
  %180 = call i32 (i8*, i8*, float*, float*, float*, ...) @sscanf(i8* %173, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), float* %175, float* %177, float* %179)
  br label %181

181:                                              ; preds = %172, %168
  %182 = load i8*, i8** %10, align 8
  %183 = call i32 @count_commas(i8* %182)
  %184 = icmp eq i32 %183, 3
  br i1 %184, label %185, label %195

185:                                              ; preds = %181
  %186 = load i8*, i8** %10, align 8
  %187 = load float*, float** %12, align 8
  %188 = load float*, float** %12, align 8
  %189 = getelementptr inbounds float, float* %188, i64 1
  %190 = load float*, float** %12, align 8
  %191 = getelementptr inbounds float, float* %190, i64 2
  %192 = load float*, float** %12, align 8
  %193 = getelementptr inbounds float, float* %192, i64 3
  %194 = call i32 (i8*, i8*, float*, float*, float*, ...) @sscanf(i8* %186, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), float* %187, float* %189, float* %191, float* %193)
  br label %195

195:                                              ; preds = %185, %181
  %196 = load float*, float** %12, align 8
  %197 = getelementptr inbounds float, float* %196, i64 1
  %198 = load float, float* %197, align 4
  %199 = call float @sRGB_from_scRGB(float %198)
  %200 = load float*, float** %12, align 8
  %201 = getelementptr inbounds float, float* %200, i64 1
  store float %199, float* %201, align 4
  %202 = load float*, float** %12, align 8
  %203 = getelementptr inbounds float, float* %202, i64 2
  %204 = load float, float* %203, align 4
  %205 = call float @sRGB_from_scRGB(float %204)
  %206 = load float*, float** %12, align 8
  %207 = getelementptr inbounds float, float* %206, i64 2
  store float %205, float* %207, align 4
  %208 = load float*, float** %12, align 8
  %209 = getelementptr inbounds float, float* %208, i64 3
  %210 = load float, float* %209, align 4
  %211 = call float @sRGB_from_scRGB(float %210)
  %212 = load float*, float** %12, align 8
  %213 = getelementptr inbounds float, float* %212, i64 3
  store float %211, float* %213, align 4
  br label %319

214:                                              ; preds = %162, %156, %150
  %215 = load i8*, i8** %10, align 8
  %216 = call i8* @strstr(i8* %215, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %217 = load i8*, i8** %10, align 8
  %218 = icmp eq i8* %216, %217
  br i1 %218, label %219, label %318

219:                                              ; preds = %214
  %220 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %221 = load i8*, i8** %10, align 8
  %222 = call i32 @fz_strlcpy(i8* %220, i8* %221, i32 1024)
  %223 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %224 = call i8* @strchr(i8* %223, i8 signext 32)
  store i8* %224, i8** %17, align 8
  %225 = load i8*, i8** %17, align 8
  %226 = icmp ne i8* %225, null
  br i1 %226, label %231, label %227

227:                                              ; preds = %219
  %228 = load i32*, i32** %7, align 8
  %229 = load i8*, i8** %10, align 8
  %230 = call i32 (i32*, i8*, ...) @fz_warn(i32* %228, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i8* %229)
  br label %320

231:                                              ; preds = %219
  %232 = load i8*, i8** %17, align 8
  %233 = getelementptr inbounds i8, i8* %232, i32 1
  store i8* %233, i8** %17, align 8
  store i8 0, i8* %232, align 1
  %234 = load i8*, i8** %17, align 8
  %235 = call i8* @strchr(i8* %234, i8 signext 32)
  store i8* %235, i8** %13, align 8
  %236 = load i8*, i8** %13, align 8
  %237 = icmp ne i8* %236, null
  br i1 %237, label %242, label %238

238:                                              ; preds = %231
  %239 = load i32*, i32** %7, align 8
  %240 = load i8*, i8** %17, align 8
  %241 = call i32 (i32*, i8*, ...) @fz_warn(i32* %239, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i8* %240)
  br label %320

242:                                              ; preds = %231
  %243 = load i8*, i8** %13, align 8
  %244 = getelementptr inbounds i8, i8* %243, i32 1
  store i8* %244, i8** %13, align 8
  store i8 0, i8* %243, align 1
  %245 = load i8*, i8** %13, align 8
  %246 = call i32 @count_commas(i8* %245)
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %15, align 4
  %248 = load i32, i32* %15, align 4
  %249 = load i32, i32* @FZ_MAX_COLORS, align 4
  %250 = icmp sgt i32 %248, %249
  br i1 %250, label %251, label %259

251:                                              ; preds = %242
  %252 = load i32*, i32** %7, align 8
  %253 = load i32, i32* %15, align 4
  %254 = load i32, i32* @FZ_MAX_COLORS, align 4
  %255 = sub nsw i32 %253, %254
  %256 = load i32, i32* @FZ_MAX_COLORS, align 4
  %257 = call i32 (i32*, i8*, ...) @fz_warn(i32* %252, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i32 %255, i32 %256)
  %258 = load i32, i32* @FZ_MAX_COLORS, align 4
  store i32 %258, i32* %15, align 4
  br label %259

259:                                              ; preds = %251, %242
  store i32 0, i32* %14, align 4
  br label %260

260:                                              ; preds = %287, %259
  %261 = load i32, i32* %14, align 4
  %262 = load i32, i32* %15, align 4
  %263 = icmp slt i32 %261, %262
  br i1 %263, label %264, label %288

264:                                              ; preds = %260
  %265 = load i8*, i8** %13, align 8
  %266 = call float @fz_atof(i8* %265)
  %267 = load float*, float** %12, align 8
  %268 = load i32, i32* %14, align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %14, align 4
  %270 = sext i32 %268 to i64
  %271 = getelementptr inbounds float, float* %267, i64 %270
  store float %266, float* %271, align 4
  %272 = load i8*, i8** %13, align 8
  %273 = call i8* @strchr(i8* %272, i8 signext 44)
  store i8* %273, i8** %13, align 8
  %274 = load i8*, i8** %13, align 8
  %275 = icmp ne i8* %274, null
  br i1 %275, label %277, label %276

276:                                              ; preds = %264
  br label %288

277:                                              ; preds = %264
  %278 = load i8*, i8** %13, align 8
  %279 = getelementptr inbounds i8, i8* %278, i32 1
  store i8* %279, i8** %13, align 8
  %280 = load i8*, i8** %13, align 8
  %281 = load i8, i8* %280, align 1
  %282 = sext i8 %281 to i32
  %283 = icmp eq i32 %282, 32
  br i1 %283, label %284, label %287

284:                                              ; preds = %277
  %285 = load i8*, i8** %13, align 8
  %286 = getelementptr inbounds i8, i8* %285, i32 1
  store i8* %286, i8** %13, align 8
  br label %287

287:                                              ; preds = %284, %277
  br label %260

288:                                              ; preds = %276, %260
  br label %289

289:                                              ; preds = %293, %288
  %290 = load i32, i32* %14, align 4
  %291 = load i32, i32* %15, align 4
  %292 = icmp slt i32 %290, %291
  br i1 %292, label %293, label %299

293:                                              ; preds = %289
  %294 = load float*, float** %12, align 8
  %295 = load i32, i32* %14, align 4
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* %14, align 4
  %297 = sext i32 %295 to i64
  %298 = getelementptr inbounds float, float* %294, i64 %297
  store float 0.000000e+00, float* %298, align 4
  br label %289

299:                                              ; preds = %289
  %300 = load i32, i32* %15, align 4
  switch i32 %300, label %313 [
    i32 2, label %301
    i32 4, label %305
    i32 5, label %309
  ]

301:                                              ; preds = %299
  %302 = load i32*, i32** %7, align 8
  %303 = call i32* @fz_device_gray(i32* %302)
  %304 = load i32**, i32*** %11, align 8
  store i32* %303, i32** %304, align 8
  br label %317

305:                                              ; preds = %299
  %306 = load i32*, i32** %7, align 8
  %307 = call i32* @fz_device_rgb(i32* %306)
  %308 = load i32**, i32*** %11, align 8
  store i32* %307, i32** %308, align 8
  br label %317

309:                                              ; preds = %299
  %310 = load i32*, i32** %7, align 8
  %311 = call i32* @fz_device_cmyk(i32* %310)
  %312 = load i32**, i32*** %11, align 8
  store i32* %311, i32** %312, align 8
  br label %317

313:                                              ; preds = %299
  %314 = load i32*, i32** %7, align 8
  %315 = call i32* @fz_device_gray(i32* %314)
  %316 = load i32**, i32*** %11, align 8
  store i32* %315, i32** %316, align 8
  br label %317

317:                                              ; preds = %313, %309, %305, %301
  br label %318

318:                                              ; preds = %317, %214
  br label %319

319:                                              ; preds = %318, %195
  br label %320

320:                                              ; preds = %227, %238, %319, %133
  ret void
}

declare dso_local i32* @fz_device_rgb(i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @unhex(i8 signext) #1

declare dso_local i32 @count_commas(i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, float*, float*, float*, ...) #1

declare dso_local float @sRGB_from_scRGB(float) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @fz_strlcpy(i8*, i8*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @fz_warn(i32*, i8*, ...) #1

declare dso_local float @fz_atof(i8*) #1

declare dso_local i32* @fz_device_gray(i32*) #1

declare dso_local i32* @fz_device_cmyk(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
