; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/tools/extr_pdfposter.c_decimatepages.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/tools/extr_pdfposter.c_decimatepages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { float, float, float, float }

@Root = common dso_local global i32 0, align 4
@Pages = common dso_local global i32 0, align 4
@Type = common dso_local global i32 0, align 4
@x_factor = common dso_local global i32 0, align 4
@y_factor = common dso_local global i32 0, align 4
@Rotate = common dso_local global i32 0, align 4
@MediaBox = common dso_local global i32 0, align 4
@CropBox = common dso_local global i32 0, align 4
@Parent = common dso_local global i32 0, align 4
@BleedBox = common dso_local global i32 0, align 4
@TrimBox = common dso_local global i32 0, align 4
@ArtBox = common dso_local global i32 0, align 4
@Count = common dso_local global i32 0, align 4
@Kids = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @decimatepages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decimatepages(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_9__, align 4
  %13 = alloca %struct.TYPE_9__, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_9__, align 4
  %23 = alloca %struct.TYPE_9__, align 4
  %24 = alloca %struct.TYPE_9__, align 4
  %25 = alloca %struct.TYPE_9__, align 4
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca %struct.TYPE_9__, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %30 = load i32*, i32** %3, align 8
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @pdf_count_pages(i32* %30, i32* %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32*, i32** %3, align 8
  %34 = load i32*, i32** %3, align 8
  %35 = load i32*, i32** %4, align 8
  %36 = call i32* @pdf_trailer(i32* %34, i32* %35)
  %37 = load i32, i32* @Root, align 4
  %38 = call i32 @PDF_NAME(i32 %37)
  %39 = call i32* @pdf_dict_get(i32* %33, i32* %36, i32 %38)
  store i32* %39, i32** %5, align 8
  %40 = load i32*, i32** %3, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = load i32, i32* @Pages, align 4
  %43 = call i32 @PDF_NAME(i32 %42)
  %44 = call i32* @pdf_dict_get(i32* %40, i32* %41, i32 %43)
  store i32* %44, i32** %7, align 8
  %45 = load i32*, i32** %3, align 8
  %46 = load i32*, i32** %4, align 8
  %47 = call i32* @pdf_new_dict(i32* %45, i32* %46, i32 2)
  store i32* %47, i32** %6, align 8
  %48 = load i32*, i32** %3, align 8
  %49 = load i32*, i32** %6, align 8
  %50 = load i32, i32* @Type, align 4
  %51 = call i32 @PDF_NAME(i32 %50)
  %52 = load i32*, i32** %3, align 8
  %53 = load i32*, i32** %5, align 8
  %54 = load i32, i32* @Type, align 4
  %55 = call i32 @PDF_NAME(i32 %54)
  %56 = call i32* @pdf_dict_get(i32* %52, i32* %53, i32 %55)
  %57 = call i32 @pdf_dict_put(i32* %48, i32* %49, i32 %51, i32* %56)
  %58 = load i32*, i32** %3, align 8
  %59 = load i32*, i32** %6, align 8
  %60 = load i32, i32* @Pages, align 4
  %61 = call i32 @PDF_NAME(i32 %60)
  %62 = load i32*, i32** %3, align 8
  %63 = load i32*, i32** %5, align 8
  %64 = load i32, i32* @Pages, align 4
  %65 = call i32 @PDF_NAME(i32 %64)
  %66 = call i32* @pdf_dict_get(i32* %62, i32* %63, i32 %65)
  %67 = call i32 @pdf_dict_put(i32* %58, i32* %59, i32 %61, i32* %66)
  %68 = load i32*, i32** %3, align 8
  %69 = load i32*, i32** %4, align 8
  %70 = load i32*, i32** %3, align 8
  %71 = load i32*, i32** %5, align 8
  %72 = call i32 @pdf_to_num(i32* %70, i32* %71)
  %73 = load i32*, i32** %6, align 8
  %74 = call i32 @pdf_update_object(i32* %68, i32* %69, i32 %72, i32* %73)
  %75 = load i32*, i32** %3, align 8
  %76 = load i32*, i32** %6, align 8
  %77 = call i32 @pdf_drop_obj(i32* %75, i32* %76)
  %78 = load i32*, i32** %3, align 8
  %79 = load i32*, i32** %4, align 8
  %80 = call i32* @pdf_new_array(i32* %78, i32* %79, i32 1)
  store i32* %80, i32** %8, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %81

81:                                               ; preds = %402, %2
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* %9, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %405

85:                                               ; preds = %81
  %86 = load i32*, i32** %3, align 8
  %87 = load i32*, i32** %4, align 8
  %88 = load i32, i32* %10, align 4
  %89 = call i32* @pdf_lookup_page_obj(i32* %86, i32* %87, i32 %88)
  store i32* %89, i32** %15, align 8
  %90 = load i32, i32* @x_factor, align 4
  store i32 %90, i32* %16, align 4
  %91 = load i32, i32* @y_factor, align 4
  store i32 %91, i32* %17, align 4
  %92 = load i32*, i32** %3, align 8
  %93 = load i32*, i32** %3, align 8
  %94 = load i32*, i32** %15, align 8
  %95 = load i32, i32* @Rotate, align 4
  %96 = call i32 @PDF_NAME(i32 %95)
  %97 = call i32 @pdf_dict_get_inheritable(i32* %93, i32* %94, i32 %96)
  %98 = call i32 @pdf_to_int(i32* %92, i32 %97)
  store i32 %98, i32* %14, align 4
  %99 = load i32*, i32** %3, align 8
  %100 = load i32*, i32** %3, align 8
  %101 = load i32*, i32** %15, align 8
  %102 = load i32, i32* @MediaBox, align 4
  %103 = call i32 @PDF_NAME(i32 %102)
  %104 = call i32 @pdf_dict_get_inheritable(i32* %100, i32* %101, i32 %103)
  %105 = call { <2 x float>, <2 x float> } @pdf_to_rect(i32* %99, i32 %104)
  %106 = bitcast %struct.TYPE_9__* %22 to { <2 x float>, <2 x float> }*
  %107 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %106, i32 0, i32 0
  %108 = extractvalue { <2 x float>, <2 x float> } %105, 0
  store <2 x float> %108, <2 x float>* %107, align 4
  %109 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %106, i32 0, i32 1
  %110 = extractvalue { <2 x float>, <2 x float> } %105, 1
  store <2 x float> %110, <2 x float>* %109, align 4
  %111 = bitcast %struct.TYPE_9__* %12 to i8*
  %112 = bitcast %struct.TYPE_9__* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %111, i8* align 4 %112, i64 16, i1 false)
  %113 = load i32*, i32** %3, align 8
  %114 = load i32*, i32** %3, align 8
  %115 = load i32*, i32** %15, align 8
  %116 = load i32, i32* @CropBox, align 4
  %117 = call i32 @PDF_NAME(i32 %116)
  %118 = call i32 @pdf_dict_get_inheritable(i32* %114, i32* %115, i32 %117)
  %119 = call { <2 x float>, <2 x float> } @pdf_to_rect(i32* %113, i32 %118)
  %120 = bitcast %struct.TYPE_9__* %23 to { <2 x float>, <2 x float> }*
  %121 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %120, i32 0, i32 0
  %122 = extractvalue { <2 x float>, <2 x float> } %119, 0
  store <2 x float> %122, <2 x float>* %121, align 4
  %123 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %120, i32 0, i32 1
  %124 = extractvalue { <2 x float>, <2 x float> } %119, 1
  store <2 x float> %124, <2 x float>* %123, align 4
  %125 = bitcast %struct.TYPE_9__* %13 to i8*
  %126 = bitcast %struct.TYPE_9__* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %125, i8* align 4 %126, i64 16, i1 false)
  %127 = bitcast %struct.TYPE_9__* %12 to { <2 x float>, <2 x float> }*
  %128 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %127, i32 0, i32 0
  %129 = load <2 x float>, <2 x float>* %128, align 4
  %130 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %127, i32 0, i32 1
  %131 = load <2 x float>, <2 x float>* %130, align 4
  %132 = call i64 @fz_is_empty_rect(<2 x float> %129, <2 x float> %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %143

134:                                              ; preds = %85
  %135 = call { <2 x float>, <2 x float> } @fz_make_rect(i32 0, i32 0, i32 612, i32 792)
  %136 = bitcast %struct.TYPE_9__* %24 to { <2 x float>, <2 x float> }*
  %137 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %136, i32 0, i32 0
  %138 = extractvalue { <2 x float>, <2 x float> } %135, 0
  store <2 x float> %138, <2 x float>* %137, align 4
  %139 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %136, i32 0, i32 1
  %140 = extractvalue { <2 x float>, <2 x float> } %135, 1
  store <2 x float> %140, <2 x float>* %139, align 4
  %141 = bitcast %struct.TYPE_9__* %12 to i8*
  %142 = bitcast %struct.TYPE_9__* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %141, i8* align 4 %142, i64 16, i1 false)
  br label %143

143:                                              ; preds = %134, %85
  %144 = bitcast %struct.TYPE_9__* %13 to { <2 x float>, <2 x float> }*
  %145 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %144, i32 0, i32 0
  %146 = load <2 x float>, <2 x float>* %145, align 4
  %147 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %144, i32 0, i32 1
  %148 = load <2 x float>, <2 x float>* %147, align 4
  %149 = call i64 @fz_is_empty_rect(<2 x float> %146, <2 x float> %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %170, label %151

151:                                              ; preds = %143
  %152 = bitcast %struct.TYPE_9__* %12 to { <2 x float>, <2 x float> }*
  %153 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %152, i32 0, i32 0
  %154 = load <2 x float>, <2 x float>* %153, align 4
  %155 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %152, i32 0, i32 1
  %156 = load <2 x float>, <2 x float>* %155, align 4
  %157 = bitcast %struct.TYPE_9__* %13 to { <2 x float>, <2 x float> }*
  %158 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %157, i32 0, i32 0
  %159 = load <2 x float>, <2 x float>* %158, align 4
  %160 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %157, i32 0, i32 1
  %161 = load <2 x float>, <2 x float>* %160, align 4
  %162 = call { <2 x float>, <2 x float> } @fz_intersect_rect(<2 x float> %154, <2 x float> %156, <2 x float> %159, <2 x float> %161)
  %163 = bitcast %struct.TYPE_9__* %25 to { <2 x float>, <2 x float> }*
  %164 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %163, i32 0, i32 0
  %165 = extractvalue { <2 x float>, <2 x float> } %162, 0
  store <2 x float> %165, <2 x float>* %164, align 4
  %166 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %163, i32 0, i32 1
  %167 = extractvalue { <2 x float>, <2 x float> } %162, 1
  store <2 x float> %167, <2 x float>* %166, align 4
  %168 = bitcast %struct.TYPE_9__* %12 to i8*
  %169 = bitcast %struct.TYPE_9__* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %168, i8* align 4 %169, i64 16, i1 false)
  br label %170

170:                                              ; preds = %151, %143
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %172 = load float, float* %171, align 4
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %174 = load float, float* %173, align 4
  %175 = fsub float %172, %174
  store float %175, float* %18, align 4
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 2
  %177 = load float, float* %176, align 4
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 3
  %179 = load float, float* %178, align 4
  %180 = fsub float %177, %179
  store float %180, float* %19, align 4
  %181 = load i32, i32* %14, align 4
  %182 = icmp eq i32 %181, 90
  br i1 %182, label %186, label %183

183:                                              ; preds = %170
  %184 = load i32, i32* %14, align 4
  %185 = icmp eq i32 %184, 270
  br i1 %185, label %186, label %189

186:                                              ; preds = %183, %170
  %187 = load i32, i32* @y_factor, align 4
  store i32 %187, i32* %16, align 4
  %188 = load i32, i32* @x_factor, align 4
  store i32 %188, i32* %17, align 4
  br label %192

189:                                              ; preds = %183
  %190 = load i32, i32* @x_factor, align 4
  store i32 %190, i32* %16, align 4
  %191 = load i32, i32* @y_factor, align 4
  store i32 %191, i32* %17, align 4
  br label %192

192:                                              ; preds = %189, %186
  %193 = load i32, i32* %16, align 4
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %205

195:                                              ; preds = %192
  %196 = load i32, i32* %17, align 4
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %205

198:                                              ; preds = %195
  %199 = load float, float* %18, align 4
  %200 = load float, float* %19, align 4
  %201 = fcmp ogt float %199, %200
  br i1 %201, label %202, label %203

202:                                              ; preds = %198
  store i32 2, i32* %16, align 4
  store i32 1, i32* %17, align 4
  br label %204

203:                                              ; preds = %198
  store i32 1, i32* %16, align 4
  store i32 2, i32* %17, align 4
  br label %204

204:                                              ; preds = %203, %202
  br label %215

205:                                              ; preds = %195, %192
  %206 = load i32, i32* %16, align 4
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %205
  store i32 1, i32* %16, align 4
  br label %214

209:                                              ; preds = %205
  %210 = load i32, i32* %17, align 4
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %213

212:                                              ; preds = %209
  store i32 1, i32* %17, align 4
  br label %213

213:                                              ; preds = %212, %209
  br label %214

214:                                              ; preds = %213, %208
  br label %215

215:                                              ; preds = %214, %204
  %216 = load i32, i32* %17, align 4
  %217 = sub nsw i32 %216, 1
  store i32 %217, i32* %21, align 4
  br label %218

218:                                              ; preds = %398, %215
  %219 = load i32, i32* %21, align 4
  %220 = icmp sge i32 %219, 0
  br i1 %220, label %221, label %401

221:                                              ; preds = %218
  store i32 0, i32* %20, align 4
  br label %222

222:                                              ; preds = %394, %221
  %223 = load i32, i32* %20, align 4
  %224 = load i32, i32* %16, align 4
  %225 = icmp slt i32 %223, %224
  br i1 %225, label %226, label %397

226:                                              ; preds = %222
  %227 = load i32*, i32** %3, align 8
  %228 = load i32*, i32** %3, align 8
  %229 = load i32*, i32** %4, align 8
  %230 = load i32, i32* %10, align 4
  %231 = call i32* @pdf_lookup_page_obj(i32* %228, i32* %229, i32 %230)
  %232 = call i32* @pdf_copy_dict(i32* %227, i32* %231)
  store i32* %232, i32** %26, align 8
  %233 = load i32*, i32** %3, align 8
  %234 = load i32*, i32** %26, align 8
  %235 = call i32 @pdf_flatten_inheritable_page_items(i32* %233, i32* %234)
  %236 = load i32*, i32** %3, align 8
  %237 = load i32*, i32** %4, align 8
  %238 = load i32*, i32** %26, align 8
  %239 = call i32* @pdf_add_object(i32* %236, i32* %237, i32* %238)
  store i32* %239, i32** %27, align 8
  %240 = load i32*, i32** %3, align 8
  %241 = load i32*, i32** %4, align 8
  %242 = call i32* @pdf_new_array(i32* %240, i32* %241, i32 4)
  store i32* %242, i32** %28, align 8
  %243 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %244 = load float, float* %243, align 4
  %245 = load float, float* %18, align 4
  %246 = load i32, i32* %16, align 4
  %247 = sitofp i32 %246 to float
  %248 = fdiv float %245, %247
  %249 = load i32, i32* %20, align 4
  %250 = sitofp i32 %249 to float
  %251 = fmul float %248, %250
  %252 = fadd float %244, %251
  %253 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 1
  store float %252, float* %253, align 4
  %254 = load i32, i32* %20, align 4
  %255 = load i32, i32* %16, align 4
  %256 = sub nsw i32 %255, 1
  %257 = icmp eq i32 %254, %256
  br i1 %257, label %258, label %262

258:                                              ; preds = %226
  %259 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %260 = load float, float* %259, align 4
  %261 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  store float %260, float* %261, align 4
  br label %275

262:                                              ; preds = %226
  %263 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %264 = load float, float* %263, align 4
  %265 = load float, float* %18, align 4
  %266 = load i32, i32* %16, align 4
  %267 = sitofp i32 %266 to float
  %268 = fdiv float %265, %267
  %269 = load i32, i32* %20, align 4
  %270 = add nsw i32 %269, 1
  %271 = sitofp i32 %270 to float
  %272 = fmul float %268, %271
  %273 = fadd float %264, %272
  %274 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  store float %273, float* %274, align 4
  br label %275

275:                                              ; preds = %262, %258
  %276 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 3
  %277 = load float, float* %276, align 4
  %278 = load float, float* %19, align 4
  %279 = load i32, i32* %17, align 4
  %280 = sitofp i32 %279 to float
  %281 = fdiv float %278, %280
  %282 = load i32, i32* %21, align 4
  %283 = sitofp i32 %282 to float
  %284 = fmul float %281, %283
  %285 = fadd float %277, %284
  %286 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 3
  store float %285, float* %286, align 4
  %287 = load i32, i32* %21, align 4
  %288 = load i32, i32* %17, align 4
  %289 = sub nsw i32 %288, 1
  %290 = icmp eq i32 %287, %289
  br i1 %290, label %291, label %295

291:                                              ; preds = %275
  %292 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 2
  %293 = load float, float* %292, align 4
  %294 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 2
  store float %293, float* %294, align 4
  br label %308

295:                                              ; preds = %275
  %296 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 3
  %297 = load float, float* %296, align 4
  %298 = load float, float* %19, align 4
  %299 = load i32, i32* %17, align 4
  %300 = sitofp i32 %299 to float
  %301 = fdiv float %298, %300
  %302 = load i32, i32* %21, align 4
  %303 = add nsw i32 %302, 1
  %304 = sitofp i32 %303 to float
  %305 = fmul float %301, %304
  %306 = fadd float %297, %305
  %307 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 2
  store float %306, float* %307, align 4
  br label %308

308:                                              ; preds = %295, %291
  %309 = load i32*, i32** %3, align 8
  %310 = load i32*, i32** %28, align 8
  %311 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 1
  %312 = load float, float* %311, align 4
  %313 = call i32 @pdf_array_push_real(i32* %309, i32* %310, float %312)
  %314 = load i32*, i32** %3, align 8
  %315 = load i32*, i32** %28, align 8
  %316 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 3
  %317 = load float, float* %316, align 4
  %318 = call i32 @pdf_array_push_real(i32* %314, i32* %315, float %317)
  %319 = load i32*, i32** %3, align 8
  %320 = load i32*, i32** %28, align 8
  %321 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %322 = load float, float* %321, align 4
  %323 = call i32 @pdf_array_push_real(i32* %319, i32* %320, float %322)
  %324 = load i32*, i32** %3, align 8
  %325 = load i32*, i32** %28, align 8
  %326 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 2
  %327 = load float, float* %326, align 4
  %328 = call i32 @pdf_array_push_real(i32* %324, i32* %325, float %327)
  %329 = load i32*, i32** %3, align 8
  %330 = load i32*, i32** %26, align 8
  %331 = load i32, i32* @Parent, align 4
  %332 = call i32 @PDF_NAME(i32 %331)
  %333 = load i32*, i32** %7, align 8
  %334 = call i32 @pdf_dict_put(i32* %329, i32* %330, i32 %332, i32* %333)
  %335 = load i32*, i32** %3, align 8
  %336 = load i32*, i32** %26, align 8
  %337 = load i32, i32* @MediaBox, align 4
  %338 = call i32 @PDF_NAME(i32 %337)
  %339 = load i32*, i32** %28, align 8
  %340 = call i32 @pdf_dict_put_drop(i32* %335, i32* %336, i32 %338, i32* %339)
  %341 = load i32*, i32** %3, align 8
  %342 = load i32*, i32** %4, align 8
  %343 = load i32*, i32** %26, align 8
  %344 = load i32, i32* @CropBox, align 4
  %345 = call i32 @PDF_NAME(i32 %344)
  %346 = bitcast %struct.TYPE_9__* %29 to { <2 x float>, <2 x float> }*
  %347 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %346, i32 0, i32 0
  %348 = load <2 x float>, <2 x float>* %347, align 4
  %349 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %346, i32 0, i32 1
  %350 = load <2 x float>, <2 x float>* %349, align 4
  %351 = call i32 @intersect_box(i32* %341, i32* %342, i32* %343, i32 %345, <2 x float> %348, <2 x float> %350)
  %352 = load i32*, i32** %3, align 8
  %353 = load i32*, i32** %4, align 8
  %354 = load i32*, i32** %26, align 8
  %355 = load i32, i32* @BleedBox, align 4
  %356 = call i32 @PDF_NAME(i32 %355)
  %357 = bitcast %struct.TYPE_9__* %29 to { <2 x float>, <2 x float> }*
  %358 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %357, i32 0, i32 0
  %359 = load <2 x float>, <2 x float>* %358, align 4
  %360 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %357, i32 0, i32 1
  %361 = load <2 x float>, <2 x float>* %360, align 4
  %362 = call i32 @intersect_box(i32* %352, i32* %353, i32* %354, i32 %356, <2 x float> %359, <2 x float> %361)
  %363 = load i32*, i32** %3, align 8
  %364 = load i32*, i32** %4, align 8
  %365 = load i32*, i32** %26, align 8
  %366 = load i32, i32* @TrimBox, align 4
  %367 = call i32 @PDF_NAME(i32 %366)
  %368 = bitcast %struct.TYPE_9__* %29 to { <2 x float>, <2 x float> }*
  %369 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %368, i32 0, i32 0
  %370 = load <2 x float>, <2 x float>* %369, align 4
  %371 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %368, i32 0, i32 1
  %372 = load <2 x float>, <2 x float>* %371, align 4
  %373 = call i32 @intersect_box(i32* %363, i32* %364, i32* %365, i32 %367, <2 x float> %370, <2 x float> %372)
  %374 = load i32*, i32** %3, align 8
  %375 = load i32*, i32** %4, align 8
  %376 = load i32*, i32** %26, align 8
  %377 = load i32, i32* @ArtBox, align 4
  %378 = call i32 @PDF_NAME(i32 %377)
  %379 = bitcast %struct.TYPE_9__* %29 to { <2 x float>, <2 x float> }*
  %380 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %379, i32 0, i32 0
  %381 = load <2 x float>, <2 x float>* %380, align 4
  %382 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %379, i32 0, i32 1
  %383 = load <2 x float>, <2 x float>* %382, align 4
  %384 = call i32 @intersect_box(i32* %374, i32* %375, i32* %376, i32 %378, <2 x float> %381, <2 x float> %383)
  %385 = load i32*, i32** %3, align 8
  %386 = load i32*, i32** %26, align 8
  %387 = call i32 @pdf_drop_obj(i32* %385, i32* %386)
  %388 = load i32*, i32** %3, align 8
  %389 = load i32*, i32** %8, align 8
  %390 = load i32*, i32** %27, align 8
  %391 = call i32 @pdf_array_push_drop(i32* %388, i32* %389, i32* %390)
  %392 = load i32, i32* %11, align 4
  %393 = add nsw i32 %392, 1
  store i32 %393, i32* %11, align 4
  br label %394

394:                                              ; preds = %308
  %395 = load i32, i32* %20, align 4
  %396 = add nsw i32 %395, 1
  store i32 %396, i32* %20, align 4
  br label %222

397:                                              ; preds = %222
  br label %398

398:                                              ; preds = %397
  %399 = load i32, i32* %21, align 4
  %400 = add nsw i32 %399, -1
  store i32 %400, i32* %21, align 4
  br label %218

401:                                              ; preds = %218
  br label %402

402:                                              ; preds = %401
  %403 = load i32, i32* %10, align 4
  %404 = add nsw i32 %403, 1
  store i32 %404, i32* %10, align 4
  br label %81

405:                                              ; preds = %81
  %406 = load i32*, i32** %3, align 8
  %407 = load i32*, i32** %7, align 8
  %408 = load i32, i32* @Count, align 4
  %409 = call i32 @PDF_NAME(i32 %408)
  %410 = load i32, i32* %11, align 4
  %411 = call i32 @pdf_dict_put_int(i32* %406, i32* %407, i32 %409, i32 %410)
  %412 = load i32*, i32** %3, align 8
  %413 = load i32*, i32** %7, align 8
  %414 = load i32, i32* @Kids, align 4
  %415 = call i32 @PDF_NAME(i32 %414)
  %416 = load i32*, i32** %8, align 8
  %417 = call i32 @pdf_dict_put_drop(i32* %412, i32* %413, i32 %415, i32* %416)
  ret void
}

declare dso_local i32 @pdf_count_pages(i32*, i32*) #1

declare dso_local i32* @pdf_dict_get(i32*, i32*, i32) #1

declare dso_local i32* @pdf_trailer(i32*, i32*) #1

declare dso_local i32 @PDF_NAME(i32) #1

declare dso_local i32* @pdf_new_dict(i32*, i32*, i32) #1

declare dso_local i32 @pdf_dict_put(i32*, i32*, i32, i32*) #1

declare dso_local i32 @pdf_update_object(i32*, i32*, i32, i32*) #1

declare dso_local i32 @pdf_to_num(i32*, i32*) #1

declare dso_local i32 @pdf_drop_obj(i32*, i32*) #1

declare dso_local i32* @pdf_new_array(i32*, i32*, i32) #1

declare dso_local i32* @pdf_lookup_page_obj(i32*, i32*, i32) #1

declare dso_local i32 @pdf_to_int(i32*, i32) #1

declare dso_local i32 @pdf_dict_get_inheritable(i32*, i32*, i32) #1

declare dso_local { <2 x float>, <2 x float> } @pdf_to_rect(i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @fz_is_empty_rect(<2 x float>, <2 x float>) #1

declare dso_local { <2 x float>, <2 x float> } @fz_make_rect(i32, i32, i32, i32) #1

declare dso_local { <2 x float>, <2 x float> } @fz_intersect_rect(<2 x float>, <2 x float>, <2 x float>, <2 x float>) #1

declare dso_local i32* @pdf_copy_dict(i32*, i32*) #1

declare dso_local i32 @pdf_flatten_inheritable_page_items(i32*, i32*) #1

declare dso_local i32* @pdf_add_object(i32*, i32*, i32*) #1

declare dso_local i32 @pdf_array_push_real(i32*, i32*, float) #1

declare dso_local i32 @pdf_dict_put_drop(i32*, i32*, i32, i32*) #1

declare dso_local i32 @intersect_box(i32*, i32*, i32*, i32, <2 x float>, <2 x float>) #1

declare dso_local i32 @pdf_array_push_drop(i32*, i32*, i32*) #1

declare dso_local i32 @pdf_dict_put_int(i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="64" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
