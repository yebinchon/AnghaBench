; ModuleID = '/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb_wordwrap.c'
source_filename = "/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb_wordwrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stb_wordwrap(i32* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %16 = load i32*, i32** %6, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i32 2147483632, i32* %7, align 4
  br label %22

19:                                               ; preds = %4
  %20 = load i32, i32* %7, align 4
  %21 = mul nsw i32 %20, 2
  store i32 %21, i32* %7, align 4
  br label %22

22:                                               ; preds = %19, %18
  br label %23

23:                                               ; preds = %349, %22
  %24 = load i32, i32* %11, align 4
  store i32 %24, i32* %14, align 4
  br label %25

25:                                               ; preds = %96, %23
  %26 = load i8*, i8** %9, align 8
  %27 = load i32, i32* %11, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = call i64 @isspace(i8 signext %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %99

33:                                               ; preds = %25
  %34 = load i8*, i8** %9, align 8
  %35 = load i32, i32* %11, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 10
  br i1 %40, label %49, label %41

41:                                               ; preds = %33
  %42 = load i8*, i8** %9, align 8
  %43 = load i32, i32* %11, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 13
  br i1 %48, label %49, label %96

49:                                               ; preds = %41, %33
  %50 = load i8*, i8** %9, align 8
  %51 = load i32, i32* %11, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = load i8*, i8** %9, align 8
  %57 = load i32, i32* %11, align 4
  %58 = add nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %56, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = add nsw i32 %55, %62
  %64 = icmp eq i32 %63, 23
  br i1 %64, label %65, label %68

65:                                               ; preds = %49
  %66 = load i32, i32* %11, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %11, align 4
  br label %68

68:                                               ; preds = %65, %49
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp sge i32 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  store i32 -1, i32* %5, align 4
  br label %382

73:                                               ; preds = %68
  %74 = load i32*, i32** %6, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %90

76:                                               ; preds = %73
  %77 = load i32, i32* %12, align 4
  %78 = load i32*, i32** %6, align 8
  %79 = load i32, i32* %10, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  store i32 %77, i32* %81, align 4
  %82 = load i32, i32* %14, align 4
  %83 = load i32, i32* %12, align 4
  %84 = sub nsw i32 %82, %83
  %85 = load i32*, i32** %6, align 8
  %86 = load i32, i32* %10, align 4
  %87 = add nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %85, i64 %88
  store i32 %84, i32* %89, align 4
  br label %90

90:                                               ; preds = %76, %73
  %91 = load i32, i32* %10, align 4
  %92 = add nsw i32 %91, 2
  store i32 %92, i32* %10, align 4
  store i32 0, i32* %13, align 4
  %93 = load i32, i32* %11, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %12, align 4
  %95 = load i32, i32* %12, align 4
  store i32 %95, i32* %14, align 4
  br label %96

96:                                               ; preds = %90, %41
  %97 = load i32, i32* %11, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %11, align 4
  br label %25

99:                                               ; preds = %25
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* %12, align 4
  %102 = load i32, i32* %8, align 4
  %103 = add nsw i32 %101, %102
  %104 = icmp sge i32 %100, %103
  br i1 %104, label %105, label %170

105:                                              ; preds = %99
  %106 = load i32, i32* %13, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %134

108:                                              ; preds = %105
  %109 = load i32, i32* %10, align 4
  %110 = load i32, i32* %7, align 4
  %111 = icmp sge i32 %109, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %108
  store i32 -1, i32* %5, align 4
  br label %382

113:                                              ; preds = %108
  %114 = load i32*, i32** %6, align 8
  %115 = icmp ne i32* %114, null
  br i1 %115, label %116, label %130

116:                                              ; preds = %113
  %117 = load i32, i32* %12, align 4
  %118 = load i32*, i32** %6, align 8
  %119 = load i32, i32* %10, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  store i32 %117, i32* %121, align 4
  %122 = load i32, i32* %14, align 4
  %123 = load i32, i32* %12, align 4
  %124 = sub nsw i32 %122, %123
  %125 = load i32*, i32** %6, align 8
  %126 = load i32, i32* %10, align 4
  %127 = add nsw i32 %126, 1
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %125, i64 %128
  store i32 %124, i32* %129, align 4
  br label %130

130:                                              ; preds = %116, %113
  %131 = load i32, i32* %10, align 4
  %132 = add nsw i32 %131, 2
  store i32 %132, i32* %10, align 4
  %133 = load i32, i32* %11, align 4
  store i32 %133, i32* %14, align 4
  store i32 %133, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %169

134:                                              ; preds = %105
  br label %135

135:                                              ; preds = %161, %134
  %136 = load i32, i32* %11, align 4
  %137 = load i32, i32* %12, align 4
  %138 = load i32, i32* %8, align 4
  %139 = add nsw i32 %137, %138
  %140 = icmp sge i32 %136, %139
  br i1 %140, label %141, label %167

141:                                              ; preds = %135
  %142 = load i32, i32* %10, align 4
  %143 = load i32, i32* %7, align 4
  %144 = icmp sge i32 %142, %143
  br i1 %144, label %145, label %146

145:                                              ; preds = %141
  store i32 -1, i32* %5, align 4
  br label %382

146:                                              ; preds = %141
  %147 = load i32*, i32** %6, align 8
  %148 = icmp ne i32* %147, null
  br i1 %148, label %149, label %161

149:                                              ; preds = %146
  %150 = load i32, i32* %12, align 4
  %151 = load i32*, i32** %6, align 8
  %152 = load i32, i32* %10, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  store i32 %150, i32* %154, align 4
  %155 = load i32, i32* %8, align 4
  %156 = load i32*, i32** %6, align 8
  %157 = load i32, i32* %10, align 4
  %158 = add nsw i32 %157, 1
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %156, i64 %159
  store i32 %155, i32* %160, align 4
  br label %161

161:                                              ; preds = %149, %146
  %162 = load i32, i32* %10, align 4
  %163 = add nsw i32 %162, 2
  store i32 %163, i32* %10, align 4
  %164 = load i32, i32* %8, align 4
  %165 = load i32, i32* %12, align 4
  %166 = add nsw i32 %165, %164
  store i32 %166, i32* %12, align 4
  br label %135

167:                                              ; preds = %135
  %168 = load i32, i32* %12, align 4
  store i32 %168, i32* %14, align 4
  br label %169

169:                                              ; preds = %167, %130
  br label %170

170:                                              ; preds = %169, %99
  %171 = load i8*, i8** %9, align 8
  %172 = load i32, i32* %11, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i8, i8* %171, i64 %173
  %175 = load i8, i8* %174, align 1
  %176 = sext i8 %175 to i32
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %170
  br label %350

179:                                              ; preds = %170
  %180 = load i32, i32* %11, align 4
  store i32 %180, i32* %15, align 4
  br label %181

181:                                              ; preds = %200, %179
  %182 = load i8*, i8** %9, align 8
  %183 = load i32, i32* %11, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i8, i8* %182, i64 %184
  %186 = load i8, i8* %185, align 1
  %187 = sext i8 %186 to i32
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %198

189:                                              ; preds = %181
  %190 = load i8*, i8** %9, align 8
  %191 = load i32, i32* %11, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i8, i8* %190, i64 %192
  %194 = load i8, i8* %193, align 1
  %195 = call i64 @isspace(i8 signext %194)
  %196 = icmp ne i64 %195, 0
  %197 = xor i1 %196, true
  br label %198

198:                                              ; preds = %189, %181
  %199 = phi i1 [ false, %181 ], [ %197, %189 ]
  br i1 %199, label %200, label %203

200:                                              ; preds = %198
  %201 = load i32, i32* %11, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %11, align 4
  br label %181

203:                                              ; preds = %198
  %204 = load i32, i32* %11, align 4
  %205 = load i32, i32* %12, align 4
  %206 = load i32, i32* %8, align 4
  %207 = add nsw i32 %205, %206
  %208 = icmp sgt i32 %204, %207
  br i1 %208, label %209, label %349

209:                                              ; preds = %203
  %210 = load i32, i32* %11, align 4
  %211 = load i32, i32* %14, align 4
  %212 = sub nsw i32 %210, %211
  %213 = load i32, i32* %8, align 4
  %214 = icmp sle i32 %212, %213
  br i1 %214, label %215, label %241

215:                                              ; preds = %209
  %216 = load i32, i32* %10, align 4
  %217 = load i32, i32* %7, align 4
  %218 = icmp sge i32 %216, %217
  br i1 %218, label %219, label %220

219:                                              ; preds = %215
  store i32 -1, i32* %5, align 4
  br label %382

220:                                              ; preds = %215
  %221 = load i32*, i32** %6, align 8
  %222 = icmp ne i32* %221, null
  br i1 %222, label %223, label %237

223:                                              ; preds = %220
  %224 = load i32, i32* %12, align 4
  %225 = load i32*, i32** %6, align 8
  %226 = load i32, i32* %10, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32, i32* %225, i64 %227
  store i32 %224, i32* %228, align 4
  %229 = load i32, i32* %14, align 4
  %230 = load i32, i32* %12, align 4
  %231 = sub nsw i32 %229, %230
  %232 = load i32*, i32** %6, align 8
  %233 = load i32, i32* %10, align 4
  %234 = add nsw i32 %233, 1
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i32, i32* %232, i64 %235
  store i32 %231, i32* %236, align 4
  br label %237

237:                                              ; preds = %223, %220
  %238 = load i32, i32* %10, align 4
  %239 = add nsw i32 %238, 2
  store i32 %239, i32* %10, align 4
  %240 = load i32, i32* %15, align 4
  store i32 %240, i32* %12, align 4
  br label %348

241:                                              ; preds = %209
  %242 = load i32, i32* %15, align 4
  %243 = load i32, i32* %12, align 4
  %244 = sub nsw i32 %242, %243
  %245 = load i32, i32* %11, align 4
  %246 = load i32, i32* %15, align 4
  %247 = sub nsw i32 %245, %246
  %248 = load i32, i32* %8, align 4
  %249 = srem i32 %247, %248
  %250 = add nsw i32 %244, %249
  %251 = load i32, i32* %8, align 4
  %252 = icmp sle i32 %250, %251
  br i1 %252, label %256, label %253

253:                                              ; preds = %241
  %254 = load i32, i32* %13, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %283, label %256

256:                                              ; preds = %253, %241
  %257 = load i32, i32* %10, align 4
  %258 = load i32, i32* %7, align 4
  %259 = icmp sge i32 %257, %258
  br i1 %259, label %260, label %261

260:                                              ; preds = %256
  store i32 -1, i32* %5, align 4
  br label %382

261:                                              ; preds = %256
  %262 = load i32*, i32** %6, align 8
  %263 = icmp ne i32* %262, null
  br i1 %263, label %264, label %276

264:                                              ; preds = %261
  %265 = load i32, i32* %12, align 4
  %266 = load i32*, i32** %6, align 8
  %267 = load i32, i32* %10, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i32, i32* %266, i64 %268
  store i32 %265, i32* %269, align 4
  %270 = load i32, i32* %8, align 4
  %271 = load i32*, i32** %6, align 8
  %272 = load i32, i32* %10, align 4
  %273 = add nsw i32 %272, 1
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i32, i32* %271, i64 %274
  store i32 %270, i32* %275, align 4
  br label %276

276:                                              ; preds = %264, %261
  %277 = load i32, i32* %10, align 4
  %278 = add nsw i32 %277, 2
  store i32 %278, i32* %10, align 4
  %279 = load i32, i32* %8, align 4
  %280 = load i32, i32* %12, align 4
  %281 = add nsw i32 %280, %279
  store i32 %281, i32* %12, align 4
  %282 = load i32, i32* %12, align 4
  store i32 %282, i32* %15, align 4
  br label %314

283:                                              ; preds = %253
  %284 = load i32, i32* %14, align 4
  %285 = load i32, i32* %12, align 4
  %286 = icmp ne i32 %284, %285
  br i1 %286, label %287, label %313

287:                                              ; preds = %283
  %288 = load i32, i32* %10, align 4
  %289 = load i32, i32* %7, align 4
  %290 = icmp sge i32 %288, %289
  br i1 %290, label %291, label %292

291:                                              ; preds = %287
  store i32 -1, i32* %5, align 4
  br label %382

292:                                              ; preds = %287
  %293 = load i32*, i32** %6, align 8
  %294 = icmp ne i32* %293, null
  br i1 %294, label %295, label %309

295:                                              ; preds = %292
  %296 = load i32, i32* %12, align 4
  %297 = load i32*, i32** %6, align 8
  %298 = load i32, i32* %10, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds i32, i32* %297, i64 %299
  store i32 %296, i32* %300, align 4
  %301 = load i32, i32* %14, align 4
  %302 = load i32, i32* %12, align 4
  %303 = sub nsw i32 %301, %302
  %304 = load i32*, i32** %6, align 8
  %305 = load i32, i32* %10, align 4
  %306 = add nsw i32 %305, 1
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds i32, i32* %304, i64 %307
  store i32 %303, i32* %308, align 4
  br label %309

309:                                              ; preds = %295, %292
  %310 = load i32, i32* %10, align 4
  %311 = add nsw i32 %310, 2
  store i32 %311, i32* %10, align 4
  %312 = load i32, i32* %15, align 4
  store i32 %312, i32* %12, align 4
  br label %313

313:                                              ; preds = %309, %283
  br label %314

314:                                              ; preds = %313, %276
  br label %315

315:                                              ; preds = %341, %314
  %316 = load i32, i32* %12, align 4
  %317 = load i32, i32* %8, align 4
  %318 = add nsw i32 %316, %317
  %319 = load i32, i32* %11, align 4
  %320 = icmp sle i32 %318, %319
  br i1 %320, label %321, label %347

321:                                              ; preds = %315
  %322 = load i32, i32* %10, align 4
  %323 = load i32, i32* %7, align 4
  %324 = icmp sge i32 %322, %323
  br i1 %324, label %325, label %326

325:                                              ; preds = %321
  store i32 -1, i32* %5, align 4
  br label %382

326:                                              ; preds = %321
  %327 = load i32*, i32** %6, align 8
  %328 = icmp ne i32* %327, null
  br i1 %328, label %329, label %341

329:                                              ; preds = %326
  %330 = load i32, i32* %12, align 4
  %331 = load i32*, i32** %6, align 8
  %332 = load i32, i32* %10, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds i32, i32* %331, i64 %333
  store i32 %330, i32* %334, align 4
  %335 = load i32, i32* %8, align 4
  %336 = load i32*, i32** %6, align 8
  %337 = load i32, i32* %10, align 4
  %338 = add nsw i32 %337, 1
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds i32, i32* %336, i64 %339
  store i32 %335, i32* %340, align 4
  br label %341

341:                                              ; preds = %329, %326
  %342 = load i32, i32* %10, align 4
  %343 = add nsw i32 %342, 2
  store i32 %343, i32* %10, align 4
  %344 = load i32, i32* %8, align 4
  %345 = load i32, i32* %12, align 4
  %346 = add nsw i32 %345, %344
  store i32 %346, i32* %12, align 4
  br label %315

347:                                              ; preds = %315
  br label %348

348:                                              ; preds = %347, %237
  br label %349

349:                                              ; preds = %348, %203
  store i32 1, i32* %13, align 4
  br label %23

350:                                              ; preds = %178
  %351 = load i32, i32* %12, align 4
  %352 = load i32, i32* %11, align 4
  %353 = icmp slt i32 %351, %352
  br i1 %353, label %354, label %379

354:                                              ; preds = %350
  %355 = load i32, i32* %10, align 4
  %356 = load i32, i32* %7, align 4
  %357 = icmp sge i32 %355, %356
  br i1 %357, label %358, label %359

358:                                              ; preds = %354
  store i32 -1, i32* %5, align 4
  br label %382

359:                                              ; preds = %354
  %360 = load i32*, i32** %6, align 8
  %361 = icmp ne i32* %360, null
  br i1 %361, label %362, label %376

362:                                              ; preds = %359
  %363 = load i32, i32* %12, align 4
  %364 = load i32*, i32** %6, align 8
  %365 = load i32, i32* %10, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds i32, i32* %364, i64 %366
  store i32 %363, i32* %367, align 4
  %368 = load i32, i32* %11, align 4
  %369 = load i32, i32* %12, align 4
  %370 = sub nsw i32 %368, %369
  %371 = load i32*, i32** %6, align 8
  %372 = load i32, i32* %10, align 4
  %373 = add nsw i32 %372, 1
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds i32, i32* %371, i64 %374
  store i32 %370, i32* %375, align 4
  br label %376

376:                                              ; preds = %362, %359
  %377 = load i32, i32* %10, align 4
  %378 = add nsw i32 %377, 2
  store i32 %378, i32* %10, align 4
  br label %379

379:                                              ; preds = %376, %350
  %380 = load i32, i32* %10, align 4
  %381 = ashr i32 %380, 1
  store i32 %381, i32* %5, align 4
  br label %382

382:                                              ; preds = %379, %358, %325, %291, %260, %219, %145, %112, %72
  %383 = load i32, i32* %5, align 4
  ret i32 %383
}

declare dso_local i64 @isspace(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
