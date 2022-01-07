; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-clean-file.c_retainpages.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-clean-file.c_retainpages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@Root = common dso_local global i32 0, align 4
@Pages = common dso_local global i32 0, align 4
@Dests = common dso_local global i32 0, align 4
@Outlines = common dso_local global i32 0, align 4
@OCProperties = common dso_local global i32 0, align 4
@Type = common dso_local global i32 0, align 4
@Count = common dso_local global i32 0, align 4
@Kids = common dso_local global i32 0, align 4
@D = common dso_local global i32 0, align 4
@Names = common dso_local global i32 0, align 4
@Annots = common dso_local global i32 0, align 4
@Subtype = common dso_local global i32 0, align 4
@Link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_3__*, i32, i8**)* @retainpages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @retainpages(i32* %0, %struct.TYPE_3__* %1, i32 %2, i8** %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i8*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca i32*, align 8
  %34 = alloca i32*, align 8
  %35 = alloca i32*, align 8
  %36 = alloca i32*, align 8
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8** %3, i8*** %8, align 8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  store i32* %42, i32** %15, align 8
  store i32 0, i32* %16, align 4
  store i32* null, i32** %17, align 8
  %43 = load i32*, i32** %5, align 8
  %44 = load i32*, i32** %5, align 8
  %45 = load i32*, i32** %15, align 8
  %46 = call i32* @pdf_trailer(i32* %44, i32* %45)
  %47 = load i32, i32* @Root, align 4
  %48 = call i32 @PDF_NAME(i32 %47)
  %49 = call i32* @pdf_dict_get(i32* %43, i32* %46, i32 %48)
  store i32* %49, i32** %9, align 8
  %50 = load i32*, i32** %5, align 8
  %51 = load i32*, i32** %9, align 8
  %52 = load i32, i32* @Pages, align 4
  %53 = call i32 @PDF_NAME(i32 %52)
  %54 = call i32* @pdf_dict_get(i32* %50, i32* %51, i32 %53)
  store i32* %54, i32** %11, align 8
  %55 = load i32*, i32** %5, align 8
  %56 = load i32*, i32** %15, align 8
  %57 = load i32, i32* @Dests, align 4
  %58 = call i32 @PDF_NAME(i32 %57)
  %59 = call i32* @pdf_load_name_tree(i32* %55, i32* %56, i32 %58)
  store i32* %59, i32** %14, align 8
  %60 = load i32*, i32** %5, align 8
  %61 = load i32*, i32** %9, align 8
  %62 = load i32, i32* @Outlines, align 4
  %63 = call i32 @PDF_NAME(i32 %62)
  %64 = call i32* @pdf_dict_get(i32* %60, i32* %61, i32 %63)
  store i32* %64, i32** %18, align 8
  %65 = load i32*, i32** %5, align 8
  %66 = load i32*, i32** %9, align 8
  %67 = load i32, i32* @OCProperties, align 4
  %68 = call i32 @PDF_NAME(i32 %67)
  %69 = call i32* @pdf_dict_get(i32* %65, i32* %66, i32 %68)
  store i32* %69, i32** %19, align 8
  %70 = load i32*, i32** %5, align 8
  %71 = load i32*, i32** %15, align 8
  %72 = call i32* @pdf_new_dict(i32* %70, i32* %71, i32 3)
  store i32* %72, i32** %10, align 8
  %73 = load i32*, i32** %5, align 8
  %74 = load i32*, i32** %10, align 8
  %75 = load i32, i32* @Type, align 4
  %76 = call i32 @PDF_NAME(i32 %75)
  %77 = load i32*, i32** %5, align 8
  %78 = load i32*, i32** %9, align 8
  %79 = load i32, i32* @Type, align 4
  %80 = call i32 @PDF_NAME(i32 %79)
  %81 = call i32* @pdf_dict_get(i32* %77, i32* %78, i32 %80)
  %82 = call i32 @pdf_dict_put(i32* %73, i32* %74, i32 %76, i32* %81)
  %83 = load i32*, i32** %5, align 8
  %84 = load i32*, i32** %10, align 8
  %85 = load i32, i32* @Pages, align 4
  %86 = call i32 @PDF_NAME(i32 %85)
  %87 = load i32*, i32** %5, align 8
  %88 = load i32*, i32** %9, align 8
  %89 = load i32, i32* @Pages, align 4
  %90 = call i32 @PDF_NAME(i32 %89)
  %91 = call i32* @pdf_dict_get(i32* %87, i32* %88, i32 %90)
  %92 = call i32 @pdf_dict_put(i32* %83, i32* %84, i32 %86, i32* %91)
  %93 = load i32*, i32** %18, align 8
  %94 = icmp ne i32* %93, null
  br i1 %94, label %95, label %102

95:                                               ; preds = %4
  %96 = load i32*, i32** %5, align 8
  %97 = load i32*, i32** %10, align 8
  %98 = load i32, i32* @Outlines, align 4
  %99 = call i32 @PDF_NAME(i32 %98)
  %100 = load i32*, i32** %18, align 8
  %101 = call i32 @pdf_dict_put(i32* %96, i32* %97, i32 %99, i32* %100)
  br label %102

102:                                              ; preds = %95, %4
  %103 = load i32*, i32** %19, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %105, label %112

105:                                              ; preds = %102
  %106 = load i32*, i32** %5, align 8
  %107 = load i32*, i32** %10, align 8
  %108 = load i32, i32* @OCProperties, align 4
  %109 = call i32 @PDF_NAME(i32 %108)
  %110 = load i32*, i32** %19, align 8
  %111 = call i32 @pdf_dict_put(i32* %106, i32* %107, i32 %109, i32* %110)
  br label %112

112:                                              ; preds = %105, %102
  %113 = load i32*, i32** %5, align 8
  %114 = load i32*, i32** %15, align 8
  %115 = load i32*, i32** %5, align 8
  %116 = load i32*, i32** %9, align 8
  %117 = call i32 @pdf_to_num(i32* %115, i32* %116)
  %118 = load i32*, i32** %10, align 8
  %119 = call i32 @pdf_update_object(i32* %113, i32* %114, i32 %117, i32* %118)
  %120 = load i32*, i32** %5, align 8
  %121 = load i32*, i32** %15, align 8
  %122 = call i32* @pdf_new_array(i32* %120, i32* %121, i32 1)
  store i32* %122, i32** %12, align 8
  br label %123

123:                                              ; preds = %182, %112
  %124 = load i32, i32* %7, align 4
  %125 = load i32, i32* %16, align 4
  %126 = sub nsw i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %185

128:                                              ; preds = %123
  %129 = load i8**, i8*** %8, align 8
  %130 = load i32, i32* %16, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8*, i8** %129, i64 %131
  %133 = load i8*, i8** %132, align 8
  store i8* %133, i8** %26, align 8
  %134 = load i32*, i32** %5, align 8
  %135 = load i32*, i32** %15, align 8
  %136 = call i32 @pdf_count_pages(i32* %134, i32* %135)
  store i32 %136, i32* %20, align 4
  br label %137

137:                                              ; preds = %181, %128
  %138 = load i32*, i32** %5, align 8
  %139 = load i8*, i8** %26, align 8
  %140 = load i32, i32* %20, align 4
  %141 = call i8* @fz_parse_page_range(i32* %138, i8* %139, i32* %24, i32* %25, i32 %140)
  store i8* %141, i8** %26, align 8
  %142 = icmp ne i8* %141, null
  br i1 %142, label %143, label %182

143:                                              ; preds = %137
  %144 = load i32, i32* %24, align 4
  %145 = load i32, i32* %25, align 4
  %146 = icmp slt i32 %144, %145
  br i1 %146, label %147, label %164

147:                                              ; preds = %143
  %148 = load i32, i32* %24, align 4
  store i32 %148, i32* %23, align 4
  br label %149

149:                                              ; preds = %160, %147
  %150 = load i32, i32* %23, align 4
  %151 = load i32, i32* %25, align 4
  %152 = icmp sle i32 %150, %151
  br i1 %152, label %153, label %163

153:                                              ; preds = %149
  %154 = load i32*, i32** %5, align 8
  %155 = load i32*, i32** %15, align 8
  %156 = load i32*, i32** %11, align 8
  %157 = load i32*, i32** %12, align 8
  %158 = load i32, i32* %23, align 4
  %159 = call i32 @retainpage(i32* %154, i32* %155, i32* %156, i32* %157, i32 %158)
  br label %160

160:                                              ; preds = %153
  %161 = load i32, i32* %23, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %23, align 4
  br label %149

163:                                              ; preds = %149
  br label %181

164:                                              ; preds = %143
  %165 = load i32, i32* %24, align 4
  store i32 %165, i32* %23, align 4
  br label %166

166:                                              ; preds = %177, %164
  %167 = load i32, i32* %23, align 4
  %168 = load i32, i32* %25, align 4
  %169 = icmp sge i32 %167, %168
  br i1 %169, label %170, label %180

170:                                              ; preds = %166
  %171 = load i32*, i32** %5, align 8
  %172 = load i32*, i32** %15, align 8
  %173 = load i32*, i32** %11, align 8
  %174 = load i32*, i32** %12, align 8
  %175 = load i32, i32* %23, align 4
  %176 = call i32 @retainpage(i32* %171, i32* %172, i32* %173, i32* %174, i32 %175)
  br label %177

177:                                              ; preds = %170
  %178 = load i32, i32* %23, align 4
  %179 = add nsw i32 %178, -1
  store i32 %179, i32* %23, align 4
  br label %166

180:                                              ; preds = %166
  br label %181

181:                                              ; preds = %180, %163
  br label %137

182:                                              ; preds = %137
  %183 = load i32, i32* %16, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %16, align 4
  br label %123

185:                                              ; preds = %123
  %186 = load i32*, i32** %5, align 8
  %187 = load i32*, i32** %5, align 8
  %188 = load i32*, i32** %12, align 8
  %189 = call i32 @pdf_array_len(i32* %187, i32* %188)
  %190 = call i32* @pdf_new_int(i32* %186, i32 %189)
  store i32* %190, i32** %13, align 8
  %191 = load i32*, i32** %5, align 8
  %192 = load i32*, i32** %11, align 8
  %193 = load i32, i32* @Count, align 4
  %194 = call i32 @PDF_NAME(i32 %193)
  %195 = load i32*, i32** %13, align 8
  %196 = call i32 @pdf_dict_put_drop(i32* %191, i32* %192, i32 %194, i32* %195)
  %197 = load i32*, i32** %5, align 8
  %198 = load i32*, i32** %11, align 8
  %199 = load i32, i32* @Kids, align 4
  %200 = call i32 @PDF_NAME(i32 %199)
  %201 = load i32*, i32** %12, align 8
  %202 = call i32 @pdf_dict_put_drop(i32* %197, i32* %198, i32 %200, i32* %201)
  %203 = load i32*, i32** %5, align 8
  %204 = load i32*, i32** %15, align 8
  %205 = call i32 @pdf_count_pages(i32* %203, i32* %204)
  store i32 %205, i32* %20, align 4
  %206 = load i32*, i32** %5, align 8
  %207 = load i32, i32* %20, align 4
  %208 = call i32* @fz_calloc(i32* %206, i32 %207, i32 4)
  store i32* %208, i32** %22, align 8
  store i32 0, i32* %21, align 4
  br label %209

209:                                              ; preds = %225, %185
  %210 = load i32, i32* %21, align 4
  %211 = load i32, i32* %20, align 4
  %212 = icmp slt i32 %210, %211
  br i1 %212, label %213, label %228

213:                                              ; preds = %209
  %214 = load i32*, i32** %5, align 8
  %215 = load i32*, i32** %15, align 8
  %216 = load i32, i32* %21, align 4
  %217 = call i32* @pdf_lookup_page_obj(i32* %214, i32* %215, i32 %216)
  store i32* %217, i32** %27, align 8
  %218 = load i32*, i32** %5, align 8
  %219 = load i32*, i32** %27, align 8
  %220 = call i32 @pdf_to_num(i32* %218, i32* %219)
  %221 = load i32*, i32** %22, align 8
  %222 = load i32, i32* %21, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %221, i64 %223
  store i32 %220, i32* %224, align 4
  br label %225

225:                                              ; preds = %213
  %226 = load i32, i32* %21, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %21, align 4
  br label %209

228:                                              ; preds = %209
  %229 = load i32*, i32** %14, align 8
  %230 = icmp ne i32* %229, null
  br i1 %230, label %231, label %328

231:                                              ; preds = %228
  %232 = load i32*, i32** %5, align 8
  %233 = load i32*, i32** %15, align 8
  %234 = call i32* @pdf_new_dict(i32* %232, i32* %233, i32 1)
  store i32* %234, i32** %28, align 8
  %235 = load i32*, i32** %5, align 8
  %236 = load i32*, i32** %15, align 8
  %237 = call i32* @pdf_new_dict(i32* %235, i32* %236, i32 1)
  store i32* %237, i32** %29, align 8
  %238 = load i32*, i32** %5, align 8
  %239 = load i32*, i32** %14, align 8
  %240 = call i32 @pdf_dict_len(i32* %238, i32* %239)
  store i32 %240, i32* %30, align 4
  %241 = load i32*, i32** %5, align 8
  %242 = load i32*, i32** %15, align 8
  %243 = call i32* @pdf_new_array(i32* %241, i32* %242, i32 32)
  store i32* %243, i32** %17, align 8
  store i32 0, i32* %21, align 4
  br label %244

244:                                              ; preds = %297, %231
  %245 = load i32, i32* %21, align 4
  %246 = load i32, i32* %30, align 4
  %247 = icmp slt i32 %245, %246
  br i1 %247, label %248, label %300

248:                                              ; preds = %244
  %249 = load i32*, i32** %5, align 8
  %250 = load i32*, i32** %14, align 8
  %251 = load i32, i32* %21, align 4
  %252 = call i32* @pdf_dict_get_key(i32* %249, i32* %250, i32 %251)
  store i32* %252, i32** %31, align 8
  %253 = load i32*, i32** %5, align 8
  %254 = load i32*, i32** %14, align 8
  %255 = load i32, i32* %21, align 4
  %256 = call i32* @pdf_dict_get_val(i32* %253, i32* %254, i32 %255)
  store i32* %256, i32** %32, align 8
  %257 = load i32*, i32** %5, align 8
  %258 = load i32*, i32** %32, align 8
  %259 = load i32, i32* @D, align 4
  %260 = call i32 @PDF_NAME(i32 %259)
  %261 = call i32* @pdf_dict_get(i32* %257, i32* %258, i32 %260)
  store i32* %261, i32** %33, align 8
  %262 = load i32*, i32** %5, align 8
  %263 = load i32*, i32** %33, align 8
  %264 = icmp ne i32* %263, null
  br i1 %264, label %265, label %267

265:                                              ; preds = %248
  %266 = load i32*, i32** %33, align 8
  br label %269

267:                                              ; preds = %248
  %268 = load i32*, i32** %32, align 8
  br label %269

269:                                              ; preds = %267, %265
  %270 = phi i32* [ %266, %265 ], [ %268, %267 ]
  %271 = call i32* @pdf_array_get(i32* %262, i32* %270, i32 0)
  store i32* %271, i32** %33, align 8
  %272 = load i32*, i32** %5, align 8
  %273 = load i32*, i32** %33, align 8
  %274 = load i32*, i32** %22, align 8
  %275 = load i32, i32* %20, align 4
  %276 = call i64 @dest_is_valid_page(i32* %272, i32* %273, i32* %274, i32 %275)
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %296

278:                                              ; preds = %269
  %279 = load i32*, i32** %5, align 8
  %280 = load i32*, i32** %5, align 8
  %281 = load i32*, i32** %31, align 8
  %282 = call i32 @pdf_to_name(i32* %280, i32* %281)
  %283 = load i32*, i32** %5, align 8
  %284 = load i32*, i32** %31, align 8
  %285 = call i32 @pdf_to_name(i32* %283, i32* %284)
  %286 = call i32 @strlen(i32 %285)
  %287 = call i32* @pdf_new_string(i32* %279, i32 %282, i32 %286)
  store i32* %287, i32** %34, align 8
  %288 = load i32*, i32** %5, align 8
  %289 = load i32*, i32** %17, align 8
  %290 = load i32*, i32** %34, align 8
  %291 = call i32 @pdf_array_push_drop(i32* %288, i32* %289, i32* %290)
  %292 = load i32*, i32** %5, align 8
  %293 = load i32*, i32** %17, align 8
  %294 = load i32*, i32** %32, align 8
  %295 = call i32 @pdf_array_push(i32* %292, i32* %293, i32* %294)
  br label %296

296:                                              ; preds = %278, %269
  br label %297

297:                                              ; preds = %296
  %298 = load i32, i32* %21, align 4
  %299 = add nsw i32 %298, 1
  store i32 %299, i32* %21, align 4
  br label %244

300:                                              ; preds = %244
  %301 = load i32*, i32** %5, align 8
  %302 = load i32*, i32** %29, align 8
  %303 = load i32, i32* @Names, align 4
  %304 = call i32 @PDF_NAME(i32 %303)
  %305 = load i32*, i32** %17, align 8
  %306 = call i32 @pdf_dict_put(i32* %301, i32* %302, i32 %304, i32* %305)
  %307 = load i32*, i32** %5, align 8
  %308 = load i32*, i32** %28, align 8
  %309 = load i32, i32* @Dests, align 4
  %310 = call i32 @PDF_NAME(i32 %309)
  %311 = load i32*, i32** %29, align 8
  %312 = call i32 @pdf_dict_put(i32* %307, i32* %308, i32 %310, i32* %311)
  %313 = load i32*, i32** %5, align 8
  %314 = load i32*, i32** %10, align 8
  %315 = load i32, i32* @Names, align 4
  %316 = call i32 @PDF_NAME(i32 %315)
  %317 = load i32*, i32** %28, align 8
  %318 = call i32 @pdf_dict_put(i32* %313, i32* %314, i32 %316, i32* %317)
  %319 = load i32*, i32** %5, align 8
  %320 = load i32*, i32** %28, align 8
  %321 = call i32 @pdf_drop_obj(i32* %319, i32* %320)
  %322 = load i32*, i32** %5, align 8
  %323 = load i32*, i32** %29, align 8
  %324 = call i32 @pdf_drop_obj(i32* %322, i32* %323)
  %325 = load i32*, i32** %5, align 8
  %326 = load i32*, i32** %14, align 8
  %327 = call i32 @pdf_drop_obj(i32* %325, i32* %326)
  br label %328

328:                                              ; preds = %300, %228
  store i32 0, i32* %21, align 4
  br label %329

329:                                              ; preds = %388, %328
  %330 = load i32, i32* %21, align 4
  %331 = load i32, i32* %20, align 4
  %332 = icmp slt i32 %330, %331
  br i1 %332, label %333, label %391

333:                                              ; preds = %329
  %334 = load i32*, i32** %5, align 8
  %335 = load i32*, i32** %15, align 8
  %336 = load i32, i32* %21, align 4
  %337 = call i32* @pdf_lookup_page_obj(i32* %334, i32* %335, i32 %336)
  store i32* %337, i32** %35, align 8
  %338 = load i32*, i32** %5, align 8
  %339 = load i32*, i32** %35, align 8
  %340 = load i32, i32* @Annots, align 4
  %341 = call i32 @PDF_NAME(i32 %340)
  %342 = call i32* @pdf_dict_get(i32* %338, i32* %339, i32 %341)
  store i32* %342, i32** %36, align 8
  %343 = load i32*, i32** %5, align 8
  %344 = load i32*, i32** %36, align 8
  %345 = call i32 @pdf_array_len(i32* %343, i32* %344)
  store i32 %345, i32* %37, align 4
  store i32 0, i32* %38, align 4
  br label %346

346:                                              ; preds = %384, %333
  %347 = load i32, i32* %38, align 4
  %348 = load i32, i32* %37, align 4
  %349 = icmp slt i32 %347, %348
  br i1 %349, label %350, label %387

350:                                              ; preds = %346
  %351 = load i32*, i32** %5, align 8
  %352 = load i32*, i32** %36, align 8
  %353 = load i32, i32* %38, align 4
  %354 = call i32* @pdf_array_get(i32* %351, i32* %352, i32 %353)
  store i32* %354, i32** %39, align 8
  %355 = load i32*, i32** %5, align 8
  %356 = load i32*, i32** %5, align 8
  %357 = load i32*, i32** %39, align 8
  %358 = load i32, i32* @Subtype, align 4
  %359 = call i32 @PDF_NAME(i32 %358)
  %360 = call i32* @pdf_dict_get(i32* %356, i32* %357, i32 %359)
  %361 = load i32, i32* @Link, align 4
  %362 = call i32 @PDF_NAME(i32 %361)
  %363 = call i32 @pdf_name_eq(i32* %355, i32* %360, i32 %362)
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %366, label %365

365:                                              ; preds = %350
  br label %384

366:                                              ; preds = %350
  %367 = load i32*, i32** %5, align 8
  %368 = load i32*, i32** %39, align 8
  %369 = load i32, i32* %20, align 4
  %370 = load i32*, i32** %22, align 8
  %371 = load i32*, i32** %17, align 8
  %372 = call i32 @dest_is_valid(i32* %367, i32* %368, i32 %369, i32* %370, i32* %371)
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %383, label %374

374:                                              ; preds = %366
  %375 = load i32*, i32** %5, align 8
  %376 = load i32*, i32** %36, align 8
  %377 = load i32, i32* %38, align 4
  %378 = call i32 @pdf_array_delete(i32* %375, i32* %376, i32 %377)
  %379 = load i32, i32* %37, align 4
  %380 = add nsw i32 %379, -1
  store i32 %380, i32* %37, align 4
  %381 = load i32, i32* %38, align 4
  %382 = add nsw i32 %381, -1
  store i32 %382, i32* %38, align 4
  br label %383

383:                                              ; preds = %374, %366
  br label %384

384:                                              ; preds = %383, %365
  %385 = load i32, i32* %38, align 4
  %386 = add nsw i32 %385, 1
  store i32 %386, i32* %38, align 4
  br label %346

387:                                              ; preds = %346
  br label %388

388:                                              ; preds = %387
  %389 = load i32, i32* %21, align 4
  %390 = add nsw i32 %389, 1
  store i32 %390, i32* %21, align 4
  br label %329

391:                                              ; preds = %329
  %392 = load i32*, i32** %5, align 8
  %393 = load i32*, i32** %15, align 8
  %394 = load i32*, i32** %18, align 8
  %395 = load i32, i32* %20, align 4
  %396 = load i32*, i32** %22, align 8
  %397 = load i32*, i32** %17, align 8
  %398 = call i64 @strip_outlines(i32* %392, i32* %393, i32* %394, i32 %395, i32* %396, i32* %397)
  %399 = icmp eq i64 %398, 0
  br i1 %399, label %400, label %406

400:                                              ; preds = %391
  %401 = load i32*, i32** %5, align 8
  %402 = load i32*, i32** %10, align 8
  %403 = load i32, i32* @Outlines, align 4
  %404 = call i32 @PDF_NAME(i32 %403)
  %405 = call i32 @pdf_dict_del(i32* %401, i32* %402, i32 %404)
  br label %406

406:                                              ; preds = %400, %391
  %407 = load i32*, i32** %5, align 8
  %408 = load i32*, i32** %22, align 8
  %409 = call i32 @fz_free(i32* %407, i32* %408)
  %410 = load i32*, i32** %5, align 8
  %411 = load i32*, i32** %17, align 8
  %412 = call i32 @pdf_drop_obj(i32* %410, i32* %411)
  %413 = load i32*, i32** %5, align 8
  %414 = load i32*, i32** %10, align 8
  %415 = call i32 @pdf_drop_obj(i32* %413, i32* %414)
  ret void
}

declare dso_local i32* @pdf_dict_get(i32*, i32*, i32) #1

declare dso_local i32* @pdf_trailer(i32*, i32*) #1

declare dso_local i32 @PDF_NAME(i32) #1

declare dso_local i32* @pdf_load_name_tree(i32*, i32*, i32) #1

declare dso_local i32* @pdf_new_dict(i32*, i32*, i32) #1

declare dso_local i32 @pdf_dict_put(i32*, i32*, i32, i32*) #1

declare dso_local i32 @pdf_update_object(i32*, i32*, i32, i32*) #1

declare dso_local i32 @pdf_to_num(i32*, i32*) #1

declare dso_local i32* @pdf_new_array(i32*, i32*, i32) #1

declare dso_local i32 @pdf_count_pages(i32*, i32*) #1

declare dso_local i8* @fz_parse_page_range(i32*, i8*, i32*, i32*, i32) #1

declare dso_local i32 @retainpage(i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32* @pdf_new_int(i32*, i32) #1

declare dso_local i32 @pdf_array_len(i32*, i32*) #1

declare dso_local i32 @pdf_dict_put_drop(i32*, i32*, i32, i32*) #1

declare dso_local i32* @fz_calloc(i32*, i32, i32) #1

declare dso_local i32* @pdf_lookup_page_obj(i32*, i32*, i32) #1

declare dso_local i32 @pdf_dict_len(i32*, i32*) #1

declare dso_local i32* @pdf_dict_get_key(i32*, i32*, i32) #1

declare dso_local i32* @pdf_dict_get_val(i32*, i32*, i32) #1

declare dso_local i32* @pdf_array_get(i32*, i32*, i32) #1

declare dso_local i64 @dest_is_valid_page(i32*, i32*, i32*, i32) #1

declare dso_local i32* @pdf_new_string(i32*, i32, i32) #1

declare dso_local i32 @pdf_to_name(i32*, i32*) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @pdf_array_push_drop(i32*, i32*, i32*) #1

declare dso_local i32 @pdf_array_push(i32*, i32*, i32*) #1

declare dso_local i32 @pdf_drop_obj(i32*, i32*) #1

declare dso_local i32 @pdf_name_eq(i32*, i32*, i32) #1

declare dso_local i32 @dest_is_valid(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @pdf_array_delete(i32*, i32*, i32) #1

declare dso_local i64 @strip_outlines(i32*, i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @pdf_dict_del(i32*, i32*, i32) #1

declare dso_local i32 @fz_free(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
