; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_pixmap.c_fz_subsample_pixmap.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_pixmap.c_fz_subsample_pixmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i8*, i32 }

@INT_MAX = common dso_local global i32 0, align 4
@FZ_ERROR_MEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"pixmap too large\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fz_subsample_pixmap(i32* %0, %struct.TYPE_3__* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store i32 %2, i32* %6, align 4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %36 = icmp ne %struct.TYPE_3__* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %3
  br label %450

38:                                               ; preds = %3
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = mul nsw i32 %44, %47
  %49 = icmp sge i32 %41, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @assert(i32 %50)
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 3
  %54 = load i8*, i8** %53, align 8
  store i8* %54, i8** %19, align 8
  store i8* %54, i8** %18, align 8
  %55 = load i32, i32* %6, align 4
  %56 = shl i32 1, %55
  store i32 %56, i32* %17, align 4
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %9, align 4
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  store i32 %62, i32* %10, align 4
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  store i32 %65, i32* %16, align 4
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %17, align 4
  %68 = add nsw i32 %66, %67
  %69 = sub nsw i32 %68, 1
  %70 = load i32, i32* %6, align 4
  %71 = ashr i32 %69, %70
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %17, align 4
  %74 = add nsw i32 %72, %73
  %75 = sub nsw i32 %74, 1
  %76 = load i32, i32* %6, align 4
  %77 = ashr i32 %75, %76
  store i32 %77, i32* %8, align 4
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  store i32 %80, i32* %11, align 4
  %81 = load i32, i32* %17, align 4
  %82 = load i32, i32* %11, align 4
  %83 = mul nsw i32 %81, %82
  %84 = load i32, i32* %16, align 4
  %85 = sub nsw i32 %83, %84
  store i32 %85, i32* %14, align 4
  %86 = load i32, i32* %17, align 4
  %87 = load i32, i32* %16, align 4
  %88 = mul nsw i32 %86, %87
  %89 = sub nsw i32 %88, 1
  store i32 %89, i32* %15, align 4
  %90 = load i32, i32* %17, align 4
  %91 = sub nsw i32 %90, 1
  %92 = load i32, i32* %16, align 4
  %93 = mul nsw i32 %91, %92
  store i32 %93, i32* %12, align 4
  %94 = load i32, i32* %17, align 4
  %95 = sub nsw i32 %94, 1
  %96 = load i32, i32* %11, align 4
  %97 = mul nsw i32 %95, %96
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = add nsw i32 %97, %100
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* %16, align 4
  %104 = mul nsw i32 %102, %103
  %105 = sub nsw i32 %101, %104
  store i32 %105, i32* %13, align 4
  %106 = load i32, i32* %6, align 4
  %107 = mul nsw i32 %106, 2
  store i32 %107, i32* %6, align 4
  %108 = load i32, i32* %10, align 4
  %109 = load i32, i32* %17, align 4
  %110 = sub nsw i32 %108, %109
  store i32 %110, i32* %21, align 4
  br label %111

111:                                              ; preds = %261, %38
  %112 = load i32, i32* %21, align 4
  %113 = icmp sge i32 %112, 0
  br i1 %113, label %114, label %265

114:                                              ; preds = %111
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* %17, align 4
  %117 = sub nsw i32 %115, %116
  store i32 %117, i32* %20, align 4
  br label %118

118:                                              ; preds = %178, %114
  %119 = load i32, i32* %20, align 4
  %120 = icmp sge i32 %119, 0
  br i1 %120, label %121, label %182

121:                                              ; preds = %118
  %122 = load i32, i32* %16, align 4
  store i32 %122, i32* %24, align 4
  br label %123

123:                                              ; preds = %170, %121
  %124 = load i32, i32* %24, align 4
  %125 = icmp sgt i32 %124, 0
  br i1 %125, label %126, label %173

126:                                              ; preds = %123
  store i32 0, i32* %25, align 4
  %127 = load i32, i32* %17, align 4
  store i32 %127, i32* %22, align 4
  br label %128

128:                                              ; preds = %155, %126
  %129 = load i32, i32* %22, align 4
  %130 = icmp sgt i32 %129, 0
  br i1 %130, label %131, label %158

131:                                              ; preds = %128
  %132 = load i32, i32* %17, align 4
  store i32 %132, i32* %23, align 4
  br label %133

133:                                              ; preds = %146, %131
  %134 = load i32, i32* %23, align 4
  %135 = icmp sgt i32 %134, 0
  br i1 %135, label %136, label %149

136:                                              ; preds = %133
  %137 = load i8*, i8** %18, align 8
  %138 = load i8, i8* %137, align 1
  %139 = zext i8 %138 to i32
  %140 = load i32, i32* %25, align 4
  %141 = add nsw i32 %140, %139
  store i32 %141, i32* %25, align 4
  %142 = load i32, i32* %11, align 4
  %143 = load i8*, i8** %18, align 8
  %144 = sext i32 %142 to i64
  %145 = getelementptr inbounds i8, i8* %143, i64 %144
  store i8* %145, i8** %18, align 8
  br label %146

146:                                              ; preds = %136
  %147 = load i32, i32* %23, align 4
  %148 = add nsw i32 %147, -1
  store i32 %148, i32* %23, align 4
  br label %133

149:                                              ; preds = %133
  %150 = load i32, i32* %14, align 4
  %151 = load i8*, i8** %18, align 8
  %152 = sext i32 %150 to i64
  %153 = sub i64 0, %152
  %154 = getelementptr inbounds i8, i8* %151, i64 %153
  store i8* %154, i8** %18, align 8
  br label %155

155:                                              ; preds = %149
  %156 = load i32, i32* %22, align 4
  %157 = add nsw i32 %156, -1
  store i32 %157, i32* %22, align 4
  br label %128

158:                                              ; preds = %128
  %159 = load i32, i32* %25, align 4
  %160 = load i32, i32* %6, align 4
  %161 = ashr i32 %159, %160
  %162 = trunc i32 %161 to i8
  %163 = load i8*, i8** %19, align 8
  %164 = getelementptr inbounds i8, i8* %163, i32 1
  store i8* %164, i8** %19, align 8
  store i8 %162, i8* %163, align 1
  %165 = load i32, i32* %15, align 4
  %166 = load i8*, i8** %18, align 8
  %167 = sext i32 %165 to i64
  %168 = sub i64 0, %167
  %169 = getelementptr inbounds i8, i8* %166, i64 %168
  store i8* %169, i8** %18, align 8
  br label %170

170:                                              ; preds = %158
  %171 = load i32, i32* %24, align 4
  %172 = add nsw i32 %171, -1
  store i32 %172, i32* %24, align 4
  br label %123

173:                                              ; preds = %123
  %174 = load i32, i32* %12, align 4
  %175 = load i8*, i8** %18, align 8
  %176 = sext i32 %174 to i64
  %177 = getelementptr inbounds i8, i8* %175, i64 %176
  store i8* %177, i8** %18, align 8
  br label %178

178:                                              ; preds = %173
  %179 = load i32, i32* %17, align 4
  %180 = load i32, i32* %20, align 4
  %181 = sub nsw i32 %180, %179
  store i32 %181, i32* %20, align 4
  br label %118

182:                                              ; preds = %118
  %183 = load i32, i32* %17, align 4
  %184 = load i32, i32* %20, align 4
  %185 = add nsw i32 %184, %183
  store i32 %185, i32* %20, align 4
  %186 = load i32, i32* %20, align 4
  %187 = icmp sgt i32 %186, 0
  br i1 %187, label %188, label %256

188:                                              ; preds = %182
  %189 = load i32, i32* %20, align 4
  %190 = load i32, i32* %17, align 4
  %191 = mul nsw i32 %189, %190
  store i32 %191, i32* %26, align 4
  %192 = load i32, i32* %20, align 4
  %193 = sub nsw i32 %192, 1
  %194 = load i32, i32* %16, align 4
  %195 = mul nsw i32 %193, %194
  store i32 %195, i32* %27, align 4
  %196 = load i32, i32* %20, align 4
  %197 = load i32, i32* %16, align 4
  %198 = mul nsw i32 %196, %197
  %199 = sub nsw i32 %198, 1
  store i32 %199, i32* %28, align 4
  %200 = load i32, i32* %16, align 4
  store i32 %200, i32* %24, align 4
  br label %201

201:                                              ; preds = %248, %188
  %202 = load i32, i32* %24, align 4
  %203 = icmp sgt i32 %202, 0
  br i1 %203, label %204, label %251

204:                                              ; preds = %201
  store i32 0, i32* %29, align 4
  %205 = load i32, i32* %20, align 4
  store i32 %205, i32* %22, align 4
  br label %206

206:                                              ; preds = %233, %204
  %207 = load i32, i32* %22, align 4
  %208 = icmp sgt i32 %207, 0
  br i1 %208, label %209, label %236

209:                                              ; preds = %206
  %210 = load i32, i32* %17, align 4
  store i32 %210, i32* %23, align 4
  br label %211

211:                                              ; preds = %224, %209
  %212 = load i32, i32* %23, align 4
  %213 = icmp sgt i32 %212, 0
  br i1 %213, label %214, label %227

214:                                              ; preds = %211
  %215 = load i8*, i8** %18, align 8
  %216 = load i8, i8* %215, align 1
  %217 = zext i8 %216 to i32
  %218 = load i32, i32* %29, align 4
  %219 = add nsw i32 %218, %217
  store i32 %219, i32* %29, align 4
  %220 = load i32, i32* %11, align 4
  %221 = load i8*, i8** %18, align 8
  %222 = sext i32 %220 to i64
  %223 = getelementptr inbounds i8, i8* %221, i64 %222
  store i8* %223, i8** %18, align 8
  br label %224

224:                                              ; preds = %214
  %225 = load i32, i32* %23, align 4
  %226 = add nsw i32 %225, -1
  store i32 %226, i32* %23, align 4
  br label %211

227:                                              ; preds = %211
  %228 = load i32, i32* %14, align 4
  %229 = load i8*, i8** %18, align 8
  %230 = sext i32 %228 to i64
  %231 = sub i64 0, %230
  %232 = getelementptr inbounds i8, i8* %229, i64 %231
  store i8* %232, i8** %18, align 8
  br label %233

233:                                              ; preds = %227
  %234 = load i32, i32* %22, align 4
  %235 = add nsw i32 %234, -1
  store i32 %235, i32* %22, align 4
  br label %206

236:                                              ; preds = %206
  %237 = load i32, i32* %29, align 4
  %238 = load i32, i32* %26, align 4
  %239 = sdiv i32 %237, %238
  %240 = trunc i32 %239 to i8
  %241 = load i8*, i8** %19, align 8
  %242 = getelementptr inbounds i8, i8* %241, i32 1
  store i8* %242, i8** %19, align 8
  store i8 %240, i8* %241, align 1
  %243 = load i32, i32* %28, align 4
  %244 = load i8*, i8** %18, align 8
  %245 = sext i32 %243 to i64
  %246 = sub i64 0, %245
  %247 = getelementptr inbounds i8, i8* %244, i64 %246
  store i8* %247, i8** %18, align 8
  br label %248

248:                                              ; preds = %236
  %249 = load i32, i32* %24, align 4
  %250 = add nsw i32 %249, -1
  store i32 %250, i32* %24, align 4
  br label %201

251:                                              ; preds = %201
  %252 = load i32, i32* %27, align 4
  %253 = load i8*, i8** %18, align 8
  %254 = sext i32 %252 to i64
  %255 = getelementptr inbounds i8, i8* %253, i64 %254
  store i8* %255, i8** %18, align 8
  br label %256

256:                                              ; preds = %251, %182
  %257 = load i32, i32* %13, align 4
  %258 = load i8*, i8** %18, align 8
  %259 = sext i32 %257 to i64
  %260 = getelementptr inbounds i8, i8* %258, i64 %259
  store i8* %260, i8** %18, align 8
  br label %261

261:                                              ; preds = %256
  %262 = load i32, i32* %17, align 4
  %263 = load i32, i32* %21, align 4
  %264 = sub nsw i32 %263, %262
  store i32 %264, i32* %21, align 4
  br label %111

265:                                              ; preds = %111
  %266 = load i32, i32* %17, align 4
  %267 = load i32, i32* %21, align 4
  %268 = add nsw i32 %267, %266
  store i32 %268, i32* %21, align 4
  %269 = load i32, i32* %21, align 4
  %270 = icmp sgt i32 %269, 0
  br i1 %270, label %271, label %414

271:                                              ; preds = %265
  %272 = load i32, i32* %21, align 4
  %273 = load i32, i32* %17, align 4
  %274 = mul nsw i32 %272, %273
  store i32 %274, i32* %30, align 4
  %275 = load i32, i32* %11, align 4
  %276 = load i32, i32* %21, align 4
  %277 = mul nsw i32 %275, %276
  %278 = load i32, i32* %16, align 4
  %279 = sub nsw i32 %277, %278
  store i32 %279, i32* %31, align 4
  %280 = load i32, i32* %9, align 4
  %281 = load i32, i32* %17, align 4
  %282 = sub nsw i32 %280, %281
  store i32 %282, i32* %20, align 4
  br label %283

283:                                              ; preds = %343, %271
  %284 = load i32, i32* %20, align 4
  %285 = icmp sge i32 %284, 0
  br i1 %285, label %286, label %347

286:                                              ; preds = %283
  %287 = load i32, i32* %16, align 4
  store i32 %287, i32* %24, align 4
  br label %288

288:                                              ; preds = %335, %286
  %289 = load i32, i32* %24, align 4
  %290 = icmp sgt i32 %289, 0
  br i1 %290, label %291, label %338

291:                                              ; preds = %288
  store i32 0, i32* %32, align 4
  %292 = load i32, i32* %17, align 4
  store i32 %292, i32* %22, align 4
  br label %293

293:                                              ; preds = %320, %291
  %294 = load i32, i32* %22, align 4
  %295 = icmp sgt i32 %294, 0
  br i1 %295, label %296, label %323

296:                                              ; preds = %293
  %297 = load i32, i32* %21, align 4
  store i32 %297, i32* %23, align 4
  br label %298

298:                                              ; preds = %311, %296
  %299 = load i32, i32* %23, align 4
  %300 = icmp sgt i32 %299, 0
  br i1 %300, label %301, label %314

301:                                              ; preds = %298
  %302 = load i8*, i8** %18, align 8
  %303 = load i8, i8* %302, align 1
  %304 = zext i8 %303 to i32
  %305 = load i32, i32* %32, align 4
  %306 = add nsw i32 %305, %304
  store i32 %306, i32* %32, align 4
  %307 = load i32, i32* %11, align 4
  %308 = load i8*, i8** %18, align 8
  %309 = sext i32 %307 to i64
  %310 = getelementptr inbounds i8, i8* %308, i64 %309
  store i8* %310, i8** %18, align 8
  br label %311

311:                                              ; preds = %301
  %312 = load i32, i32* %23, align 4
  %313 = add nsw i32 %312, -1
  store i32 %313, i32* %23, align 4
  br label %298

314:                                              ; preds = %298
  %315 = load i32, i32* %31, align 4
  %316 = load i8*, i8** %18, align 8
  %317 = sext i32 %315 to i64
  %318 = sub i64 0, %317
  %319 = getelementptr inbounds i8, i8* %316, i64 %318
  store i8* %319, i8** %18, align 8
  br label %320

320:                                              ; preds = %314
  %321 = load i32, i32* %22, align 4
  %322 = add nsw i32 %321, -1
  store i32 %322, i32* %22, align 4
  br label %293

323:                                              ; preds = %293
  %324 = load i32, i32* %32, align 4
  %325 = load i32, i32* %30, align 4
  %326 = sdiv i32 %324, %325
  %327 = trunc i32 %326 to i8
  %328 = load i8*, i8** %19, align 8
  %329 = getelementptr inbounds i8, i8* %328, i32 1
  store i8* %329, i8** %19, align 8
  store i8 %327, i8* %328, align 1
  %330 = load i32, i32* %15, align 4
  %331 = load i8*, i8** %18, align 8
  %332 = sext i32 %330 to i64
  %333 = sub i64 0, %332
  %334 = getelementptr inbounds i8, i8* %331, i64 %333
  store i8* %334, i8** %18, align 8
  br label %335

335:                                              ; preds = %323
  %336 = load i32, i32* %24, align 4
  %337 = add nsw i32 %336, -1
  store i32 %337, i32* %24, align 4
  br label %288

338:                                              ; preds = %288
  %339 = load i32, i32* %12, align 4
  %340 = load i8*, i8** %18, align 8
  %341 = sext i32 %339 to i64
  %342 = getelementptr inbounds i8, i8* %340, i64 %341
  store i8* %342, i8** %18, align 8
  br label %343

343:                                              ; preds = %338
  %344 = load i32, i32* %17, align 4
  %345 = load i32, i32* %20, align 4
  %346 = sub nsw i32 %345, %344
  store i32 %346, i32* %20, align 4
  br label %283

347:                                              ; preds = %283
  %348 = load i32, i32* %17, align 4
  %349 = load i32, i32* %20, align 4
  %350 = add nsw i32 %349, %348
  store i32 %350, i32* %20, align 4
  %351 = load i32, i32* %20, align 4
  %352 = icmp sgt i32 %351, 0
  br i1 %352, label %353, label %413

353:                                              ; preds = %347
  %354 = load i32, i32* %20, align 4
  %355 = load i32, i32* %16, align 4
  %356 = mul nsw i32 %354, %355
  %357 = sub nsw i32 %356, 1
  store i32 %357, i32* %33, align 4
  %358 = load i32, i32* %20, align 4
  %359 = load i32, i32* %21, align 4
  %360 = mul nsw i32 %358, %359
  store i32 %360, i32* %30, align 4
  %361 = load i32, i32* %16, align 4
  store i32 %361, i32* %24, align 4
  br label %362

362:                                              ; preds = %409, %353
  %363 = load i32, i32* %24, align 4
  %364 = icmp sgt i32 %363, 0
  br i1 %364, label %365, label %412

365:                                              ; preds = %362
  store i32 0, i32* %34, align 4
  %366 = load i32, i32* %20, align 4
  store i32 %366, i32* %22, align 4
  br label %367

367:                                              ; preds = %394, %365
  %368 = load i32, i32* %22, align 4
  %369 = icmp sgt i32 %368, 0
  br i1 %369, label %370, label %397

370:                                              ; preds = %367
  %371 = load i32, i32* %21, align 4
  store i32 %371, i32* %23, align 4
  br label %372

372:                                              ; preds = %385, %370
  %373 = load i32, i32* %23, align 4
  %374 = icmp sgt i32 %373, 0
  br i1 %374, label %375, label %388

375:                                              ; preds = %372
  %376 = load i8*, i8** %18, align 8
  %377 = load i8, i8* %376, align 1
  %378 = zext i8 %377 to i32
  %379 = load i32, i32* %34, align 4
  %380 = add nsw i32 %379, %378
  store i32 %380, i32* %34, align 4
  %381 = load i32, i32* %11, align 4
  %382 = load i8*, i8** %18, align 8
  %383 = sext i32 %381 to i64
  %384 = getelementptr inbounds i8, i8* %382, i64 %383
  store i8* %384, i8** %18, align 8
  br label %385

385:                                              ; preds = %375
  %386 = load i32, i32* %23, align 4
  %387 = add nsw i32 %386, -1
  store i32 %387, i32* %23, align 4
  br label %372

388:                                              ; preds = %372
  %389 = load i32, i32* %31, align 4
  %390 = load i8*, i8** %18, align 8
  %391 = sext i32 %389 to i64
  %392 = sub i64 0, %391
  %393 = getelementptr inbounds i8, i8* %390, i64 %392
  store i8* %393, i8** %18, align 8
  br label %394

394:                                              ; preds = %388
  %395 = load i32, i32* %22, align 4
  %396 = add nsw i32 %395, -1
  store i32 %396, i32* %22, align 4
  br label %367

397:                                              ; preds = %367
  %398 = load i32, i32* %34, align 4
  %399 = load i32, i32* %30, align 4
  %400 = sdiv i32 %398, %399
  %401 = trunc i32 %400 to i8
  %402 = load i8*, i8** %19, align 8
  %403 = getelementptr inbounds i8, i8* %402, i32 1
  store i8* %403, i8** %19, align 8
  store i8 %401, i8* %402, align 1
  %404 = load i32, i32* %33, align 4
  %405 = load i8*, i8** %18, align 8
  %406 = sext i32 %404 to i64
  %407 = sub i64 0, %406
  %408 = getelementptr inbounds i8, i8* %405, i64 %407
  store i8* %408, i8** %18, align 8
  br label %409

409:                                              ; preds = %397
  %410 = load i32, i32* %24, align 4
  %411 = add nsw i32 %410, -1
  store i32 %411, i32* %24, align 4
  br label %362

412:                                              ; preds = %362
  br label %413

413:                                              ; preds = %412, %347
  br label %414

414:                                              ; preds = %413, %265
  %415 = load i32, i32* %7, align 4
  %416 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %417 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %416, i32 0, i32 1
  store i32 %415, i32* %417, align 4
  %418 = load i32, i32* %8, align 4
  %419 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %420 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %419, i32 0, i32 4
  store i32 %418, i32* %420, align 8
  %421 = load i32, i32* %7, align 4
  %422 = load i32, i32* %16, align 4
  %423 = mul nsw i32 %421, %422
  %424 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %425 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %424, i32 0, i32 0
  store i32 %423, i32* %425, align 8
  %426 = load i32, i32* %8, align 4
  %427 = load i32, i32* @INT_MAX, align 4
  %428 = load i32, i32* %7, align 4
  %429 = load i32, i32* %16, align 4
  %430 = mul nsw i32 %428, %429
  %431 = sdiv i32 %427, %430
  %432 = icmp sgt i32 %426, %431
  br i1 %432, label %433, label %437

433:                                              ; preds = %414
  %434 = load i32*, i32** %4, align 8
  %435 = load i32, i32* @FZ_ERROR_MEMORY, align 4
  %436 = call i32 @fz_throw(i32* %434, i32 %435, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %437

437:                                              ; preds = %433, %414
  %438 = load i32*, i32** %4, align 8
  %439 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %440 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %439, i32 0, i32 3
  %441 = load i8*, i8** %440, align 8
  %442 = load i32, i32* %8, align 4
  %443 = load i32, i32* %7, align 4
  %444 = mul nsw i32 %442, %443
  %445 = load i32, i32* %16, align 4
  %446 = mul nsw i32 %444, %445
  %447 = call i8* @fz_realloc(i32* %438, i8* %441, i32 %446)
  %448 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %449 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %448, i32 0, i32 3
  store i8* %447, i8** %449, align 8
  br label %450

450:                                              ; preds = %437, %37
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fz_throw(i32*, i32, i8*) #1

declare dso_local i8* @fz_realloc(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
