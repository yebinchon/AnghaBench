; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-appearance.c_pdf_write_line_cap_appearance.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-appearance.c_pdf_write_line_cap_appearance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { float, float, float, float }

@Square = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"%g %g %g %g re\0A\00", align 1
@Circle = common dso_local global i32 0, align 4
@CIRCLE_MAGIC = common dso_local global float 0.000000e+00, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"%g %g m\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"%g %g %g %g %g %g c\0A\00", align 1
@Diamond = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"%g %g l\0A\00", align 1
@OpenArrow = common dso_local global i32 0, align 4
@ClosedArrow = common dso_local global i32 0, align 4
@Butt = common dso_local global i32 0, align 4
@ROpenArrow = common dso_local global i32 0, align 4
@RClosedArrow = common dso_local global i32 0, align 4
@Slash = common dso_local global i32 0, align 4
@FZ_PI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, float, float, float, float, float, i32, i32, i32*)* @pdf_write_line_cap_appearance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pdf_write_line_cap_appearance(i32* %0, i32* %1, i32* %2, float %3, float %4, float %5, float %6, float %7, i32 %8, i32 %9, i32* %10) #0 {
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca float, align 4
  %24 = alloca float, align 4
  %25 = alloca float, align 4
  %26 = alloca float, align 4
  %27 = alloca float, align 4
  %28 = alloca %struct.TYPE_5__, align 4
  %29 = alloca %struct.TYPE_5__, align 4
  %30 = alloca float, align 4
  %31 = alloca float, align 4
  %32 = alloca %struct.TYPE_5__, align 4
  %33 = alloca %struct.TYPE_5__, align 4
  %34 = alloca %struct.TYPE_5__, align 4
  %35 = alloca %struct.TYPE_5__, align 4
  %36 = alloca %struct.TYPE_5__, align 4
  %37 = alloca %struct.TYPE_5__, align 4
  %38 = alloca %struct.TYPE_5__, align 4
  store i32* %0, i32** %12, align 8
  store i32* %1, i32** %13, align 8
  store i32* %2, i32** %14, align 8
  store float %3, float* %15, align 4
  store float %4, float* %16, align 4
  store float %5, float* %17, align 4
  store float %6, float* %18, align 4
  store float %7, float* %19, align 4
  store i32 %8, i32* %20, align 4
  store i32 %9, i32* %21, align 4
  store i32* %10, i32** %22, align 8
  %39 = load i32*, i32** %22, align 8
  %40 = load i32, i32* @Square, align 4
  %41 = call i32* @PDF_NAME(i32 %40)
  %42 = icmp eq i32* %39, %41
  br i1 %42, label %43, label %72

43:                                               ; preds = %11
  %44 = load float, float* %19, align 4
  %45 = fmul float %44, 2.500000e+00
  %46 = call float @fz_max(i32 2, float %45)
  store float %46, float* %23, align 4
  %47 = load i32*, i32** %12, align 8
  %48 = load i32*, i32** %13, align 8
  %49 = load float, float* %15, align 4
  %50 = load float, float* %23, align 4
  %51 = fsub float %49, %50
  %52 = load float, float* %16, align 4
  %53 = load float, float* %23, align 4
  %54 = fsub float %52, %53
  %55 = load float, float* %23, align 4
  %56 = fmul float %55, 2.000000e+00
  %57 = fpext float %56 to double
  %58 = load float, float* %23, align 4
  %59 = fmul float %58, 2.000000e+00
  %60 = fpext float %59 to double
  %61 = call i32 (i32*, i32*, i8*, float, float, ...) @fz_append_printf(i32* %47, i32* %48, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), float %51, float %54, double %57, double %60)
  %62 = load i32*, i32** %12, align 8
  %63 = load i32*, i32** %13, align 8
  %64 = load i32, i32* %20, align 4
  %65 = load i32, i32* %21, align 4
  %66 = call i32 @maybe_stroke_and_fill(i32* %62, i32* %63, i32 %64, i32 %65)
  %67 = load i32*, i32** %14, align 8
  %68 = load float, float* %15, align 4
  %69 = load float, float* %16, align 4
  %70 = load float, float* %23, align 4
  %71 = call i32 @include_cap(i32* %67, float %68, float %69, float %70)
  br label %509

72:                                               ; preds = %11
  %73 = load i32*, i32** %22, align 8
  %74 = load i32, i32* @Circle, align 4
  %75 = call i32* @PDF_NAME(i32 %74)
  %76 = icmp eq i32* %73, %75
  br i1 %76, label %77, label %193

77:                                               ; preds = %72
  %78 = load float, float* %19, align 4
  %79 = fmul float %78, 2.500000e+00
  %80 = call float @fz_max(i32 2, float %79)
  store float %80, float* %24, align 4
  %81 = load float, float* %24, align 4
  %82 = load float, float* @CIRCLE_MAGIC, align 4
  %83 = fmul float %81, %82
  store float %83, float* %25, align 4
  %84 = load i32*, i32** %12, align 8
  %85 = load i32*, i32** %13, align 8
  %86 = load float, float* %15, align 4
  %87 = load float, float* %16, align 4
  %88 = load float, float* %24, align 4
  %89 = fadd float %87, %88
  %90 = call i32 (i32*, i32*, i8*, float, float, ...) @fz_append_printf(i32* %84, i32* %85, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), float %86, float %89)
  %91 = load i32*, i32** %12, align 8
  %92 = load i32*, i32** %13, align 8
  %93 = load float, float* %15, align 4
  %94 = load float, float* %25, align 4
  %95 = fadd float %93, %94
  %96 = load float, float* %16, align 4
  %97 = load float, float* %24, align 4
  %98 = fadd float %96, %97
  %99 = load float, float* %15, align 4
  %100 = load float, float* %24, align 4
  %101 = fadd float %99, %100
  %102 = fpext float %101 to double
  %103 = load float, float* %16, align 4
  %104 = load float, float* %25, align 4
  %105 = fadd float %103, %104
  %106 = fpext float %105 to double
  %107 = load float, float* %15, align 4
  %108 = load float, float* %24, align 4
  %109 = fadd float %107, %108
  %110 = fpext float %109 to double
  %111 = load float, float* %16, align 4
  %112 = fpext float %111 to double
  %113 = call i32 (i32*, i32*, i8*, float, float, ...) @fz_append_printf(i32* %91, i32* %92, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), float %95, float %98, double %102, double %106, double %110, double %112)
  %114 = load i32*, i32** %12, align 8
  %115 = load i32*, i32** %13, align 8
  %116 = load float, float* %15, align 4
  %117 = load float, float* %24, align 4
  %118 = fadd float %116, %117
  %119 = load float, float* %16, align 4
  %120 = load float, float* %25, align 4
  %121 = fsub float %119, %120
  %122 = load float, float* %15, align 4
  %123 = load float, float* %25, align 4
  %124 = fadd float %122, %123
  %125 = fpext float %124 to double
  %126 = load float, float* %16, align 4
  %127 = load float, float* %24, align 4
  %128 = fsub float %126, %127
  %129 = fpext float %128 to double
  %130 = load float, float* %15, align 4
  %131 = fpext float %130 to double
  %132 = load float, float* %16, align 4
  %133 = load float, float* %24, align 4
  %134 = fsub float %132, %133
  %135 = fpext float %134 to double
  %136 = call i32 (i32*, i32*, i8*, float, float, ...) @fz_append_printf(i32* %114, i32* %115, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), float %118, float %121, double %125, double %129, double %131, double %135)
  %137 = load i32*, i32** %12, align 8
  %138 = load i32*, i32** %13, align 8
  %139 = load float, float* %15, align 4
  %140 = load float, float* %25, align 4
  %141 = fsub float %139, %140
  %142 = load float, float* %16, align 4
  %143 = load float, float* %24, align 4
  %144 = fsub float %142, %143
  %145 = load float, float* %15, align 4
  %146 = load float, float* %24, align 4
  %147 = fsub float %145, %146
  %148 = fpext float %147 to double
  %149 = load float, float* %16, align 4
  %150 = load float, float* %25, align 4
  %151 = fsub float %149, %150
  %152 = fpext float %151 to double
  %153 = load float, float* %15, align 4
  %154 = load float, float* %24, align 4
  %155 = fsub float %153, %154
  %156 = fpext float %155 to double
  %157 = load float, float* %16, align 4
  %158 = fpext float %157 to double
  %159 = call i32 (i32*, i32*, i8*, float, float, ...) @fz_append_printf(i32* %137, i32* %138, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), float %141, float %144, double %148, double %152, double %156, double %158)
  %160 = load i32*, i32** %12, align 8
  %161 = load i32*, i32** %13, align 8
  %162 = load float, float* %15, align 4
  %163 = load float, float* %24, align 4
  %164 = fsub float %162, %163
  %165 = load float, float* %16, align 4
  %166 = load float, float* %25, align 4
  %167 = fadd float %165, %166
  %168 = load float, float* %15, align 4
  %169 = load float, float* %25, align 4
  %170 = fsub float %168, %169
  %171 = fpext float %170 to double
  %172 = load float, float* %16, align 4
  %173 = load float, float* %24, align 4
  %174 = fadd float %172, %173
  %175 = fpext float %174 to double
  %176 = load float, float* %15, align 4
  %177 = fpext float %176 to double
  %178 = load float, float* %16, align 4
  %179 = load float, float* %24, align 4
  %180 = fadd float %178, %179
  %181 = fpext float %180 to double
  %182 = call i32 (i32*, i32*, i8*, float, float, ...) @fz_append_printf(i32* %160, i32* %161, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), float %164, float %167, double %171, double %175, double %177, double %181)
  %183 = load i32*, i32** %12, align 8
  %184 = load i32*, i32** %13, align 8
  %185 = load i32, i32* %20, align 4
  %186 = load i32, i32* %21, align 4
  %187 = call i32 @maybe_stroke_and_fill(i32* %183, i32* %184, i32 %185, i32 %186)
  %188 = load i32*, i32** %14, align 8
  %189 = load float, float* %15, align 4
  %190 = load float, float* %16, align 4
  %191 = load float, float* %24, align 4
  %192 = call i32 @include_cap(i32* %188, float %189, float %190, float %191)
  br label %508

193:                                              ; preds = %72
  %194 = load i32*, i32** %22, align 8
  %195 = load i32, i32* @Diamond, align 4
  %196 = call i32* @PDF_NAME(i32 %195)
  %197 = icmp eq i32* %194, %196
  br i1 %197, label %198, label %240

198:                                              ; preds = %193
  %199 = load float, float* %19, align 4
  %200 = fmul float %199, 2.500000e+00
  %201 = call float @fz_max(i32 2, float %200)
  store float %201, float* %26, align 4
  %202 = load i32*, i32** %12, align 8
  %203 = load i32*, i32** %13, align 8
  %204 = load float, float* %15, align 4
  %205 = load float, float* %16, align 4
  %206 = load float, float* %26, align 4
  %207 = fadd float %205, %206
  %208 = call i32 (i32*, i32*, i8*, float, float, ...) @fz_append_printf(i32* %202, i32* %203, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), float %204, float %207)
  %209 = load i32*, i32** %12, align 8
  %210 = load i32*, i32** %13, align 8
  %211 = load float, float* %15, align 4
  %212 = load float, float* %26, align 4
  %213 = fadd float %211, %212
  %214 = load float, float* %16, align 4
  %215 = call i32 (i32*, i32*, i8*, float, float, ...) @fz_append_printf(i32* %209, i32* %210, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), float %213, float %214)
  %216 = load i32*, i32** %12, align 8
  %217 = load i32*, i32** %13, align 8
  %218 = load float, float* %15, align 4
  %219 = load float, float* %16, align 4
  %220 = load float, float* %26, align 4
  %221 = fsub float %219, %220
  %222 = call i32 (i32*, i32*, i8*, float, float, ...) @fz_append_printf(i32* %216, i32* %217, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), float %218, float %221)
  %223 = load i32*, i32** %12, align 8
  %224 = load i32*, i32** %13, align 8
  %225 = load float, float* %15, align 4
  %226 = load float, float* %26, align 4
  %227 = fsub float %225, %226
  %228 = load float, float* %16, align 4
  %229 = call i32 (i32*, i32*, i8*, float, float, ...) @fz_append_printf(i32* %223, i32* %224, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), float %227, float %228)
  %230 = load i32*, i32** %12, align 8
  %231 = load i32*, i32** %13, align 8
  %232 = load i32, i32* %20, align 4
  %233 = load i32, i32* %21, align 4
  %234 = call i32 @maybe_stroke_and_fill(i32* %230, i32* %231, i32 %232, i32 %233)
  %235 = load i32*, i32** %14, align 8
  %236 = load float, float* %15, align 4
  %237 = load float, float* %16, align 4
  %238 = load float, float* %26, align 4
  %239 = call i32 @include_cap(i32* %235, float %236, float %237, float %238)
  br label %507

240:                                              ; preds = %193
  %241 = load i32*, i32** %22, align 8
  %242 = load i32, i32* @OpenArrow, align 4
  %243 = call i32* @PDF_NAME(i32 %242)
  %244 = icmp eq i32* %241, %243
  br i1 %244, label %245, label %259

245:                                              ; preds = %240
  %246 = load i32*, i32** %12, align 8
  %247 = load i32*, i32** %13, align 8
  %248 = load i32*, i32** %14, align 8
  %249 = load float, float* %15, align 4
  %250 = load float, float* %16, align 4
  %251 = load float, float* %17, align 4
  %252 = load float, float* %18, align 4
  %253 = load float, float* %19, align 4
  %254 = call i32 @pdf_write_arrow_appearance(i32* %246, i32* %247, i32* %248, float %249, float %250, float %251, float %252, float %253)
  %255 = load i32*, i32** %12, align 8
  %256 = load i32*, i32** %13, align 8
  %257 = load i32, i32* %20, align 4
  %258 = call i32 @maybe_stroke(i32* %255, i32* %256, i32 %257)
  br label %506

259:                                              ; preds = %240
  %260 = load i32*, i32** %22, align 8
  %261 = load i32, i32* @ClosedArrow, align 4
  %262 = call i32* @PDF_NAME(i32 %261)
  %263 = icmp eq i32* %260, %262
  br i1 %263, label %264, label %279

264:                                              ; preds = %259
  %265 = load i32*, i32** %12, align 8
  %266 = load i32*, i32** %13, align 8
  %267 = load i32*, i32** %14, align 8
  %268 = load float, float* %15, align 4
  %269 = load float, float* %16, align 4
  %270 = load float, float* %17, align 4
  %271 = load float, float* %18, align 4
  %272 = load float, float* %19, align 4
  %273 = call i32 @pdf_write_arrow_appearance(i32* %265, i32* %266, i32* %267, float %268, float %269, float %270, float %271, float %272)
  %274 = load i32*, i32** %12, align 8
  %275 = load i32*, i32** %13, align 8
  %276 = load i32, i32* %20, align 4
  %277 = load i32, i32* %21, align 4
  %278 = call i32 @maybe_stroke_and_fill(i32* %274, i32* %275, i32 %276, i32 %277)
  br label %505

279:                                              ; preds = %259
  %280 = load i32*, i32** %22, align 8
  %281 = load i32, i32* @Butt, align 4
  %282 = call i32* @PDF_NAME(i32 %281)
  %283 = icmp eq i32* %280, %282
  br i1 %283, label %284, label %352

284:                                              ; preds = %279
  %285 = load float, float* %19, align 4
  %286 = fmul float %285, 3.000000e+00
  %287 = call float @fz_max(i32 3, float %286)
  store float %287, float* %27, align 4
  %288 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %289 = load float, float* %15, align 4
  %290 = load float, float* %18, align 4
  %291 = load float, float* %27, align 4
  %292 = fmul float %290, %291
  %293 = fsub float %289, %292
  store float %293, float* %288, align 4
  %294 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %295 = load float, float* %16, align 4
  %296 = load float, float* %17, align 4
  %297 = load float, float* %27, align 4
  %298 = fmul float %296, %297
  %299 = fadd float %295, %298
  store float %299, float* %294, align 4
  %300 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 2
  store float 0.000000e+00, float* %300, align 4
  %301 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 3
  store float 0.000000e+00, float* %301, align 4
  %302 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %303 = load float, float* %15, align 4
  %304 = load float, float* %18, align 4
  %305 = load float, float* %27, align 4
  %306 = fmul float %304, %305
  %307 = fadd float %303, %306
  store float %307, float* %302, align 4
  %308 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %309 = load float, float* %16, align 4
  %310 = load float, float* %17, align 4
  %311 = load float, float* %27, align 4
  %312 = fmul float %310, %311
  %313 = fsub float %309, %312
  store float %313, float* %308, align 4
  %314 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 2
  store float 0.000000e+00, float* %314, align 4
  %315 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 3
  store float 0.000000e+00, float* %315, align 4
  %316 = load i32*, i32** %12, align 8
  %317 = load i32*, i32** %13, align 8
  %318 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 2
  %319 = load float, float* %318, align 4
  %320 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 3
  %321 = load float, float* %320, align 4
  %322 = call i32 (i32*, i32*, i8*, float, float, ...) @fz_append_printf(i32* %316, i32* %317, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), float %319, float %321)
  %323 = load i32*, i32** %12, align 8
  %324 = load i32*, i32** %13, align 8
  %325 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 2
  %326 = load float, float* %325, align 4
  %327 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 3
  %328 = load float, float* %327, align 4
  %329 = call i32 (i32*, i32*, i8*, float, float, ...) @fz_append_printf(i32* %323, i32* %324, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), float %326, float %328)
  %330 = load i32*, i32** %12, align 8
  %331 = load i32*, i32** %13, align 8
  %332 = load i32, i32* %20, align 4
  %333 = call i32 @maybe_stroke(i32* %330, i32* %331, i32 %332)
  %334 = load i32*, i32** %14, align 8
  %335 = load i32, i32* %334, align 4
  %336 = bitcast %struct.TYPE_5__* %28 to { <2 x float>, <2 x float> }*
  %337 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %336, i32 0, i32 0
  %338 = load <2 x float>, <2 x float>* %337, align 4
  %339 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %336, i32 0, i32 1
  %340 = load <2 x float>, <2 x float>* %339, align 4
  %341 = call i32 @fz_include_point_in_rect(i32 %335, <2 x float> %338, <2 x float> %340)
  %342 = load i32*, i32** %14, align 8
  store i32 %341, i32* %342, align 4
  %343 = load i32*, i32** %14, align 8
  %344 = load i32, i32* %343, align 4
  %345 = bitcast %struct.TYPE_5__* %29 to { <2 x float>, <2 x float> }*
  %346 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %345, i32 0, i32 0
  %347 = load <2 x float>, <2 x float>* %346, align 4
  %348 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %345, i32 0, i32 1
  %349 = load <2 x float>, <2 x float>* %348, align 4
  %350 = call i32 @fz_include_point_in_rect(i32 %344, <2 x float> %347, <2 x float> %349)
  %351 = load i32*, i32** %14, align 8
  store i32 %350, i32* %351, align 4
  br label %504

352:                                              ; preds = %279
  %353 = load i32*, i32** %22, align 8
  %354 = load i32, i32* @ROpenArrow, align 4
  %355 = call i32* @PDF_NAME(i32 %354)
  %356 = icmp eq i32* %353, %355
  br i1 %356, label %357, label %373

357:                                              ; preds = %352
  %358 = load i32*, i32** %12, align 8
  %359 = load i32*, i32** %13, align 8
  %360 = load i32*, i32** %14, align 8
  %361 = load float, float* %15, align 4
  %362 = load float, float* %16, align 4
  %363 = load float, float* %17, align 4
  %364 = fneg float %363
  %365 = load float, float* %18, align 4
  %366 = fneg float %365
  %367 = load float, float* %19, align 4
  %368 = call i32 @pdf_write_arrow_appearance(i32* %358, i32* %359, i32* %360, float %361, float %362, float %364, float %366, float %367)
  %369 = load i32*, i32** %12, align 8
  %370 = load i32*, i32** %13, align 8
  %371 = load i32, i32* %20, align 4
  %372 = call i32 @maybe_stroke(i32* %369, i32* %370, i32 %371)
  br label %503

373:                                              ; preds = %352
  %374 = load i32*, i32** %22, align 8
  %375 = load i32, i32* @RClosedArrow, align 4
  %376 = call i32* @PDF_NAME(i32 %375)
  %377 = icmp eq i32* %374, %376
  br i1 %377, label %378, label %395

378:                                              ; preds = %373
  %379 = load i32*, i32** %12, align 8
  %380 = load i32*, i32** %13, align 8
  %381 = load i32*, i32** %14, align 8
  %382 = load float, float* %15, align 4
  %383 = load float, float* %16, align 4
  %384 = load float, float* %17, align 4
  %385 = fneg float %384
  %386 = load float, float* %18, align 4
  %387 = fneg float %386
  %388 = load float, float* %19, align 4
  %389 = call i32 @pdf_write_arrow_appearance(i32* %379, i32* %380, i32* %381, float %382, float %383, float %385, float %387, float %388)
  %390 = load i32*, i32** %12, align 8
  %391 = load i32*, i32** %13, align 8
  %392 = load i32, i32* %20, align 4
  %393 = load i32, i32* %21, align 4
  %394 = call i32 @maybe_stroke_and_fill(i32* %390, i32* %391, i32 %392, i32 %393)
  br label %502

395:                                              ; preds = %373
  %396 = load i32*, i32** %22, align 8
  %397 = load i32, i32* @Slash, align 4
  %398 = call i32* @PDF_NAME(i32 %397)
  %399 = icmp eq i32* %396, %398
  br i1 %399, label %400, label %501

400:                                              ; preds = %395
  %401 = load float, float* %19, align 4
  %402 = fmul float %401, 5.000000e+00
  %403 = call float @fz_max(i32 5, float %402)
  store float %403, float* %30, align 4
  %404 = load float, float* %18, align 4
  %405 = load float, float* %17, align 4
  %406 = call i32 @atan2f(float %404, float %405)
  %407 = load i32, i32* @FZ_PI, align 4
  %408 = mul nsw i32 30, %407
  %409 = sdiv i32 %408, 180
  %410 = sub nsw i32 %406, %409
  %411 = sitofp i32 %410 to float
  store float %411, float* %31, align 4
  %412 = load float, float* %31, align 4
  %413 = load float, float* %30, align 4
  %414 = call { <2 x float>, <2 x float> } @rotate_vector(float %412, i32 0, float %413)
  %415 = bitcast %struct.TYPE_5__* %35 to { <2 x float>, <2 x float> }*
  %416 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %415, i32 0, i32 0
  %417 = extractvalue { <2 x float>, <2 x float> } %414, 0
  store <2 x float> %417, <2 x float>* %416, align 4
  %418 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %415, i32 0, i32 1
  %419 = extractvalue { <2 x float>, <2 x float> } %414, 1
  store <2 x float> %419, <2 x float>* %418, align 4
  %420 = bitcast %struct.TYPE_5__* %34 to i8*
  %421 = bitcast %struct.TYPE_5__* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %420, i8* align 4 %421, i64 16, i1 false)
  %422 = load float, float* %15, align 4
  %423 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 2
  %424 = load float, float* %423, align 4
  %425 = fadd float %422, %424
  %426 = load float, float* %16, align 4
  %427 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 3
  %428 = load float, float* %427, align 4
  %429 = fadd float %426, %428
  %430 = call { <2 x float>, <2 x float> } @fz_make_point(float %425, float %429)
  %431 = bitcast %struct.TYPE_5__* %36 to { <2 x float>, <2 x float> }*
  %432 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %431, i32 0, i32 0
  %433 = extractvalue { <2 x float>, <2 x float> } %430, 0
  store <2 x float> %433, <2 x float>* %432, align 4
  %434 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %431, i32 0, i32 1
  %435 = extractvalue { <2 x float>, <2 x float> } %430, 1
  store <2 x float> %435, <2 x float>* %434, align 4
  %436 = bitcast %struct.TYPE_5__* %32 to i8*
  %437 = bitcast %struct.TYPE_5__* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %436, i8* align 4 %437, i64 16, i1 false)
  %438 = load float, float* %31, align 4
  %439 = load float, float* %30, align 4
  %440 = fneg float %439
  %441 = call { <2 x float>, <2 x float> } @rotate_vector(float %438, i32 0, float %440)
  %442 = bitcast %struct.TYPE_5__* %37 to { <2 x float>, <2 x float> }*
  %443 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %442, i32 0, i32 0
  %444 = extractvalue { <2 x float>, <2 x float> } %441, 0
  store <2 x float> %444, <2 x float>* %443, align 4
  %445 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %442, i32 0, i32 1
  %446 = extractvalue { <2 x float>, <2 x float> } %441, 1
  store <2 x float> %446, <2 x float>* %445, align 4
  %447 = bitcast %struct.TYPE_5__* %34 to i8*
  %448 = bitcast %struct.TYPE_5__* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %447, i8* align 4 %448, i64 16, i1 false)
  %449 = load float, float* %15, align 4
  %450 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 2
  %451 = load float, float* %450, align 4
  %452 = fadd float %449, %451
  %453 = load float, float* %16, align 4
  %454 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 3
  %455 = load float, float* %454, align 4
  %456 = fadd float %453, %455
  %457 = call { <2 x float>, <2 x float> } @fz_make_point(float %452, float %456)
  %458 = bitcast %struct.TYPE_5__* %38 to { <2 x float>, <2 x float> }*
  %459 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %458, i32 0, i32 0
  %460 = extractvalue { <2 x float>, <2 x float> } %457, 0
  store <2 x float> %460, <2 x float>* %459, align 4
  %461 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %458, i32 0, i32 1
  %462 = extractvalue { <2 x float>, <2 x float> } %457, 1
  store <2 x float> %462, <2 x float>* %461, align 4
  %463 = bitcast %struct.TYPE_5__* %33 to i8*
  %464 = bitcast %struct.TYPE_5__* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %463, i8* align 4 %464, i64 16, i1 false)
  %465 = load i32*, i32** %12, align 8
  %466 = load i32*, i32** %13, align 8
  %467 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 2
  %468 = load float, float* %467, align 4
  %469 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 3
  %470 = load float, float* %469, align 4
  %471 = call i32 (i32*, i32*, i8*, float, float, ...) @fz_append_printf(i32* %465, i32* %466, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), float %468, float %470)
  %472 = load i32*, i32** %12, align 8
  %473 = load i32*, i32** %13, align 8
  %474 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 2
  %475 = load float, float* %474, align 4
  %476 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 3
  %477 = load float, float* %476, align 4
  %478 = call i32 (i32*, i32*, i8*, float, float, ...) @fz_append_printf(i32* %472, i32* %473, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), float %475, float %477)
  %479 = load i32*, i32** %12, align 8
  %480 = load i32*, i32** %13, align 8
  %481 = load i32, i32* %20, align 4
  %482 = call i32 @maybe_stroke(i32* %479, i32* %480, i32 %481)
  %483 = load i32*, i32** %14, align 8
  %484 = load i32, i32* %483, align 4
  %485 = bitcast %struct.TYPE_5__* %32 to { <2 x float>, <2 x float> }*
  %486 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %485, i32 0, i32 0
  %487 = load <2 x float>, <2 x float>* %486, align 4
  %488 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %485, i32 0, i32 1
  %489 = load <2 x float>, <2 x float>* %488, align 4
  %490 = call i32 @fz_include_point_in_rect(i32 %484, <2 x float> %487, <2 x float> %489)
  %491 = load i32*, i32** %14, align 8
  store i32 %490, i32* %491, align 4
  %492 = load i32*, i32** %14, align 8
  %493 = load i32, i32* %492, align 4
  %494 = bitcast %struct.TYPE_5__* %33 to { <2 x float>, <2 x float> }*
  %495 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %494, i32 0, i32 0
  %496 = load <2 x float>, <2 x float>* %495, align 4
  %497 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %494, i32 0, i32 1
  %498 = load <2 x float>, <2 x float>* %497, align 4
  %499 = call i32 @fz_include_point_in_rect(i32 %493, <2 x float> %496, <2 x float> %498)
  %500 = load i32*, i32** %14, align 8
  store i32 %499, i32* %500, align 4
  br label %501

501:                                              ; preds = %400, %395
  br label %502

502:                                              ; preds = %501, %378
  br label %503

503:                                              ; preds = %502, %357
  br label %504

504:                                              ; preds = %503, %284
  br label %505

505:                                              ; preds = %504, %264
  br label %506

506:                                              ; preds = %505, %245
  br label %507

507:                                              ; preds = %506, %198
  br label %508

508:                                              ; preds = %507, %77
  br label %509

509:                                              ; preds = %508, %43
  ret void
}

declare dso_local i32* @PDF_NAME(i32) #1

declare dso_local float @fz_max(i32, float) #1

declare dso_local i32 @fz_append_printf(i32*, i32*, i8*, float, float, ...) #1

declare dso_local i32 @maybe_stroke_and_fill(i32*, i32*, i32, i32) #1

declare dso_local i32 @include_cap(i32*, float, float, float) #1

declare dso_local i32 @pdf_write_arrow_appearance(i32*, i32*, i32*, float, float, float, float, float) #1

declare dso_local i32 @maybe_stroke(i32*, i32*, i32) #1

declare dso_local i32 @fz_include_point_in_rect(i32, <2 x float>, <2 x float>) #1

declare dso_local i32 @atan2f(float, float) #1

declare dso_local { <2 x float>, <2 x float> } @rotate_vector(float, i32, float) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local { <2 x float>, <2 x float> } @fz_make_point(float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="64" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
