; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-op-run.c_pdf_show_pattern.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-op-run.c_pdf_show_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i8*, i32*, i32, i32 }
%struct.TYPE_19__ = type { i32, i32, %struct.TYPE_21__*, i32 }
%struct.TYPE_20__ = type { i32, float, float, i32, i32, i32, %struct.TYPE_18__, i32, i64 }
%struct.TYPE_18__ = type { float, float }
%struct.TYPE_22__ = type { float, float, float, float }

@PDF_FILL = common dso_local global i32 0, align 4
@PDF_STROKE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_21__* (i32*, %struct.TYPE_19__*, %struct.TYPE_20__*, i32, <2 x float>, <2 x float>, i32)* @pdf_show_pattern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_21__* @pdf_show_pattern(i32* %0, %struct.TYPE_19__* %1, %struct.TYPE_20__* %2, i32 %3, <2 x float> %4, <2 x float> %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_22__, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca %struct.TYPE_20__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_21__*, align 8
  %15 = alloca %struct.TYPE_21__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca float, align 4
  %25 = alloca float, align 4
  %26 = alloca float, align 4
  %27 = alloca float, align 4
  %28 = alloca %struct.TYPE_22__, align 4
  %29 = alloca i32, align 4
  %30 = alloca %struct.TYPE_22__, align 4
  %31 = alloca float, align 4
  %32 = alloca float, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = bitcast %struct.TYPE_22__* %8 to { <2 x float>, <2 x float> }*
  %36 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %35, i32 0, i32 0
  store <2 x float> %4, <2 x float>* %36, align 4
  %37 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %35, i32 0, i32 1
  store <2 x float> %5, <2 x float>* %37, align 4
  store i32* %0, i32** %9, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %10, align 8
  store %struct.TYPE_20__* %2, %struct.TYPE_20__** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %6, i32* %13, align 4
  %38 = load i32*, i32** %9, align 8
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %40 = call i32 @pdf_gsave(i32* %38, %struct.TYPE_19__* %39)
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_21__*, %struct.TYPE_21__** %42, align 8
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %43, i64 %47
  store %struct.TYPE_21__* %48, %struct.TYPE_21__** %14, align 8
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** %50, align 8
  %52 = load i32, i32* %12, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %51, i64 %53
  store %struct.TYPE_21__* %54, %struct.TYPE_21__** %15, align 8
  %55 = load i32*, i32** %9, align 8
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %58 = call i32 @pdf_copy_pattern_gstate(i32* %55, %struct.TYPE_21__* %56, %struct.TYPE_21__* %57)
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %59, i32 0, i32 8
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %108

63:                                               ; preds = %7
  %64 = load i32*, i32** %9, align 8
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %66 = load i32, i32* @PDF_FILL, align 4
  %67 = call i32 @pdf_unset_pattern(i32* %64, %struct.TYPE_19__* %65, i32 %66)
  %68 = load i32*, i32** %9, align 8
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %70 = load i32, i32* @PDF_STROKE, align 4
  %71 = call i32 @pdf_unset_pattern(i32* %68, %struct.TYPE_19__* %69, i32 %70)
  %72 = load i32, i32* %13, align 4
  %73 = load i32, i32* @PDF_FILL, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %89

75:                                               ; preds = %63
  %76 = load i32*, i32** %9, align 8
  %77 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %78 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %77, i32 0, i32 2
  %79 = call i32 @pdf_drop_material(i32* %76, i32* %78)
  %80 = load i32*, i32** %9, align 8
  %81 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %82 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %81, i32 0, i32 3
  %83 = call i32 @pdf_keep_material(i32* %80, i32* %82)
  %84 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %85 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %88 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 8
  br label %89

89:                                               ; preds = %75, %63
  %90 = load i32, i32* %13, align 4
  %91 = load i32, i32* @PDF_STROKE, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %107

93:                                               ; preds = %89
  %94 = load i32*, i32** %9, align 8
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %96 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %95, i32 0, i32 3
  %97 = call i32 @pdf_drop_material(i32* %94, i32* %96)
  %98 = load i32*, i32** %9, align 8
  %99 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %100 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %99, i32 0, i32 2
  %101 = call i32 @pdf_keep_material(i32* %98, i32* %100)
  %102 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %103 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 3
  store i32 %104, i32* %106, align 4
  br label %107

107:                                              ; preds = %93, %89
  store i32 0, i32* %29, align 4
  br label %116

108:                                              ; preds = %7
  %109 = load i32*, i32** %9, align 8
  %110 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %111 = load i32, i32* %13, align 4
  %112 = call i32 @pdf_unset_pattern(i32* %109, %struct.TYPE_19__* %110, i32 %111)
  %113 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %114 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  store i32 %115, i32* %29, align 4
  br label %116

116:                                              ; preds = %108, %107
  %117 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %118 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = icmp ne i32* %119, null
  br i1 %120, label %121, label %129

121:                                              ; preds = %116
  %122 = load i32*, i32** %9, align 8
  %123 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %124 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %123, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = call i32 @pdf_drop_obj(i32* %122, i32* %125)
  %127 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %128 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %127, i32 0, i32 1
  store i32* null, i32** %128, align 8
  br label %129

129:                                              ; preds = %121, %116
  %130 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %131 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %130, i32 0, i32 7
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %134 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %133, i32 0, i32 0
  %135 = load i8*, i8** %134, align 8
  %136 = call i8* @fz_concat(i32 %132, i8* %135)
  store i8* %136, i8** %17, align 8
  %137 = load i8*, i8** %17, align 8
  %138 = call i8* @fz_invert_matrix(i8* %137)
  store i8* %138, i8** %18, align 8
  %139 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %140 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  store i32 %141, i32* %16, align 4
  %142 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = sub nsw i32 %144, 1
  %146 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %147 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %146, i32 0, i32 1
  store i32 %145, i32* %147, align 4
  %148 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %149 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %148, i32 0, i32 2
  %150 = load %struct.TYPE_21__*, %struct.TYPE_21__** %149, align 8
  %151 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %152 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %150, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %155, i32 0, i32 0
  %157 = load i8*, i8** %156, align 8
  store i8* %157, i8** %19, align 8
  %158 = load i8*, i8** %17, align 8
  %159 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %160 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %159, i32 0, i32 2
  %161 = load %struct.TYPE_21__*, %struct.TYPE_21__** %160, align 8
  %162 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %163 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %161, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %166, i32 0, i32 0
  store i8* %158, i8** %167, align 8
  %168 = load i8*, i8** %18, align 8
  %169 = bitcast %struct.TYPE_22__* %8 to { <2 x float>, <2 x float> }*
  %170 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %169, i32 0, i32 0
  %171 = load <2 x float>, <2 x float>* %170, align 4
  %172 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %169, i32 0, i32 1
  %173 = load <2 x float>, <2 x float>* %172, align 4
  %174 = call { <2 x float>, <2 x float> } @fz_transform_rect(<2 x float> %171, <2 x float> %173, i8* %168)
  %175 = bitcast %struct.TYPE_22__* %30 to { <2 x float>, <2 x float> }*
  %176 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %175, i32 0, i32 0
  %177 = extractvalue { <2 x float>, <2 x float> } %174, 0
  store <2 x float> %177, <2 x float>* %176, align 4
  %178 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %175, i32 0, i32 1
  %179 = extractvalue { <2 x float>, <2 x float> } %174, 1
  store <2 x float> %179, <2 x float>* %178, align 4
  %180 = bitcast %struct.TYPE_22__* %28 to i8*
  %181 = bitcast %struct.TYPE_22__* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %180, i8* align 4 %181, i64 16, i1 false)
  %182 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %28, i32 0, i32 0
  %183 = load float, float* %182, align 4
  %184 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %185 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %184, i32 0, i32 6
  %186 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %185, i32 0, i32 0
  %187 = load float, float* %186, align 8
  %188 = fsub float %183, %187
  %189 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %190 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %189, i32 0, i32 1
  %191 = load float, float* %190, align 4
  %192 = fdiv float %188, %191
  store float %192, float* %24, align 4
  %193 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %28, i32 0, i32 1
  %194 = load float, float* %193, align 4
  %195 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %196 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %195, i32 0, i32 6
  %197 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %196, i32 0, i32 1
  %198 = load float, float* %197, align 4
  %199 = fsub float %194, %198
  %200 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %201 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %200, i32 0, i32 2
  %202 = load float, float* %201, align 8
  %203 = fdiv float %199, %202
  store float %203, float* %25, align 4
  %204 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %28, i32 0, i32 2
  %205 = load float, float* %204, align 4
  %206 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %207 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %206, i32 0, i32 6
  %208 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %207, i32 0, i32 0
  %209 = load float, float* %208, align 8
  %210 = fsub float %205, %209
  %211 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %212 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %211, i32 0, i32 1
  %213 = load float, float* %212, align 4
  %214 = fdiv float %210, %213
  store float %214, float* %26, align 4
  %215 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %28, i32 0, i32 3
  %216 = load float, float* %215, align 4
  %217 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %218 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %217, i32 0, i32 6
  %219 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %218, i32 0, i32 1
  %220 = load float, float* %219, align 4
  %221 = fsub float %216, %220
  %222 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %223 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %222, i32 0, i32 2
  %224 = load float, float* %223, align 8
  %225 = fdiv float %221, %224
  store float %225, float* %27, align 4
  %226 = load float, float* %24, align 4
  %227 = load float, float* %26, align 4
  %228 = fcmp ogt float %226, %227
  br i1 %228, label %229, label %233

229:                                              ; preds = %129
  %230 = load float, float* %24, align 4
  store float %230, float* %31, align 4
  %231 = load float, float* %26, align 4
  store float %231, float* %24, align 4
  %232 = load float, float* %31, align 4
  store float %232, float* %26, align 4
  br label %233

233:                                              ; preds = %229, %129
  %234 = load float, float* %25, align 4
  %235 = load float, float* %27, align 4
  %236 = fcmp ogt float %234, %235
  br i1 %236, label %237, label %241

237:                                              ; preds = %233
  %238 = load float, float* %25, align 4
  store float %238, float* %32, align 4
  %239 = load float, float* %27, align 4
  store float %239, float* %25, align 4
  %240 = load float, float* %32, align 4
  store float %240, float* %27, align 4
  br label %241

241:                                              ; preds = %237, %233
  %242 = load float, float* %24, align 4
  %243 = fadd float %242, 0x3F50624DE0000000
  %244 = call i32 @floorf(float %243)
  store i32 %244, i32* %20, align 4
  %245 = load float, float* %25, align 4
  %246 = fadd float %245, 0x3F50624DE0000000
  %247 = call i32 @floorf(float %246)
  store i32 %247, i32* %21, align 4
  %248 = load float, float* %26, align 4
  %249 = fsub float %248, 0x3F50624DE0000000
  %250 = call i32 @ceilf(float %249)
  store i32 %250, i32* %22, align 4
  %251 = load float, float* %27, align 4
  %252 = fsub float %251, 0x3F50624DE0000000
  %253 = call i32 @ceilf(float %252)
  store i32 %253, i32* %23, align 4
  %254 = load float, float* %26, align 4
  %255 = load float, float* %24, align 4
  %256 = fcmp ogt float %254, %255
  br i1 %256, label %257, label %264

257:                                              ; preds = %241
  %258 = load i32, i32* %22, align 4
  %259 = load i32, i32* %20, align 4
  %260 = icmp eq i32 %258, %259
  br i1 %260, label %261, label %264

261:                                              ; preds = %257
  %262 = load i32, i32* %20, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %22, align 4
  br label %264

264:                                              ; preds = %261, %257, %241
  %265 = load float, float* %27, align 4
  %266 = load float, float* %25, align 4
  %267 = fcmp ogt float %265, %266
  br i1 %267, label %268, label %275

268:                                              ; preds = %264
  %269 = load i32, i32* %23, align 4
  %270 = load i32, i32* %21, align 4
  %271 = icmp eq i32 %269, %270
  br i1 %271, label %272, label %275

272:                                              ; preds = %268
  %273 = load i32, i32* %21, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %23, align 4
  br label %275

275:                                              ; preds = %272, %268, %264
  %276 = load i32, i32* %21, align 4
  store i32 %276, i32* %34, align 4
  br label %277

277:                                              ; preds = %329, %275
  %278 = load i32, i32* %34, align 4
  %279 = load i32, i32* %23, align 4
  %280 = icmp slt i32 %278, %279
  br i1 %280, label %281, label %332

281:                                              ; preds = %277
  %282 = load i32, i32* %20, align 4
  store i32 %282, i32* %33, align 4
  br label %283

283:                                              ; preds = %325, %281
  %284 = load i32, i32* %33, align 4
  %285 = load i32, i32* %22, align 4
  %286 = icmp slt i32 %284, %285
  br i1 %286, label %287, label %328

287:                                              ; preds = %283
  %288 = load i8*, i8** %17, align 8
  %289 = load i32, i32* %33, align 4
  %290 = sitofp i32 %289 to float
  %291 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %292 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %291, i32 0, i32 1
  %293 = load float, float* %292, align 4
  %294 = fmul float %290, %293
  %295 = fptosi float %294 to i32
  %296 = load i32, i32* %34, align 4
  %297 = sitofp i32 %296 to float
  %298 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %299 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %298, i32 0, i32 2
  %300 = load float, float* %299, align 8
  %301 = fmul float %297, %300
  %302 = fptosi float %301 to i32
  %303 = call i8* @fz_pre_translate(i8* %288, i32 %295, i32 %302)
  %304 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %305 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %304, i32 0, i32 0
  store i8* %303, i8** %305, align 8
  %306 = load i32*, i32** %9, align 8
  %307 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %308 = call i32 @pdf_gsave(i32* %306, %struct.TYPE_19__* %307)
  %309 = load i32*, i32** %9, align 8
  %310 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %311 = bitcast %struct.TYPE_19__* %310 to i32*
  %312 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %313 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %312, i32 0, i32 5
  %314 = load i32, i32* %313, align 4
  %315 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %316 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %315, i32 0, i32 4
  %317 = load i32, i32* %316, align 8
  %318 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %319 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %318, i32 0, i32 3
  %320 = load i32, i32* %319, align 4
  %321 = call i32 @pdf_process_contents(i32* %309, i32* %311, i32 %314, i32 %317, i32 %320, i32* null)
  %322 = load i32*, i32** %9, align 8
  %323 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %324 = call i32 @pdf_grestore(i32* %322, %struct.TYPE_19__* %323)
  br label %325

325:                                              ; preds = %287
  %326 = load i32, i32* %33, align 4
  %327 = add nsw i32 %326, 1
  store i32 %327, i32* %33, align 4
  br label %283

328:                                              ; preds = %283
  br label %329

329:                                              ; preds = %328
  %330 = load i32, i32* %34, align 4
  %331 = add nsw i32 %330, 1
  store i32 %331, i32* %34, align 4
  br label %277

332:                                              ; preds = %277
  %333 = load i8*, i8** %19, align 8
  %334 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %335 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %334, i32 0, i32 2
  %336 = load %struct.TYPE_21__*, %struct.TYPE_21__** %335, align 8
  %337 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %338 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %337, i32 0, i32 1
  %339 = load i32, i32* %338, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %336, i64 %340
  %342 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %341, i32 0, i32 0
  store i8* %333, i8** %342, align 8
  %343 = load i32, i32* %16, align 4
  %344 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %345 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %344, i32 0, i32 1
  store i32 %343, i32* %345, align 4
  %346 = load i32*, i32** %9, align 8
  %347 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %348 = call i32 @pdf_grestore(i32* %346, %struct.TYPE_19__* %347)
  %349 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %350 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %349, i32 0, i32 2
  %351 = load %struct.TYPE_21__*, %struct.TYPE_21__** %350, align 8
  %352 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %353 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 8
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %351, i64 %355
  ret %struct.TYPE_21__* %356
}

declare dso_local i32 @pdf_gsave(i32*, %struct.TYPE_19__*) #1

declare dso_local i32 @pdf_copy_pattern_gstate(i32*, %struct.TYPE_21__*, %struct.TYPE_21__*) #1

declare dso_local i32 @pdf_unset_pattern(i32*, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @pdf_drop_material(i32*, i32*) #1

declare dso_local i32 @pdf_keep_material(i32*, i32*) #1

declare dso_local i32 @pdf_drop_obj(i32*, i32*) #1

declare dso_local i8* @fz_concat(i32, i8*) #1

declare dso_local i8* @fz_invert_matrix(i8*) #1

declare dso_local { <2 x float>, <2 x float> } @fz_transform_rect(<2 x float>, <2 x float>, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @floorf(float) #1

declare dso_local i32 @ceilf(float) #1

declare dso_local i8* @fz_pre_translate(i8*, i32, i32) #1

declare dso_local i32 @pdf_process_contents(i32*, i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @pdf_grestore(i32*, %struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="64" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
