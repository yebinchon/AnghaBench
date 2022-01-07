; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_totype.c_totypeAtoF.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_totype.c_totypeAtoF.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LARGEST_INT64 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, double*, i32)* @totypeAtoF to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @totypeAtoF(i8* %0, double* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca double*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca double, align 8
  store i8* %0, i8** %5, align 8
  store double* %1, double** %6, align 8
  store i32 %2, i32* %7, align 4
  %19 = load i8*, i8** %5, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  store i8* %22, i8** %8, align 8
  store i32 1, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 1, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 1, i32* %14, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %23 = load double*, double** %6, align 8
  store double 0.000000e+00, double* %23, align 8
  br label %24

24:                                               ; preds = %35, %3
  %25 = load i8*, i8** %5, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = icmp ult i8* %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = load i8*, i8** %5, align 8
  %30 = load i8, i8* %29, align 1
  %31 = call i64 @totypeIsspace(i8 signext %30)
  %32 = icmp ne i64 %31, 0
  br label %33

33:                                               ; preds = %28, %24
  %34 = phi i1 [ false, %24 ], [ %32, %28 ]
  br i1 %34, label %35, label %38

35:                                               ; preds = %33
  %36 = load i8*, i8** %5, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %5, align 8
  br label %24

38:                                               ; preds = %33
  %39 = load i8*, i8** %5, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = icmp uge i8* %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  br label %459

43:                                               ; preds = %38
  %44 = load i8*, i8** %5, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 45
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  store i32 -1, i32* %9, align 4
  %49 = load i8*, i8** %5, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %5, align 8
  br label %60

51:                                               ; preds = %43
  %52 = load i8*, i8** %5, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 43
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load i8*, i8** %5, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %5, align 8
  br label %59

59:                                               ; preds = %56, %51
  br label %60

60:                                               ; preds = %59, %48
  br label %61

61:                                               ; preds = %73, %60
  %62 = load i8*, i8** %5, align 8
  %63 = load i8*, i8** %8, align 8
  %64 = icmp ult i8* %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %61
  %66 = load i8*, i8** %5, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 0
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 48
  br label %71

71:                                               ; preds = %65, %61
  %72 = phi i1 [ false, %61 ], [ %70, %65 ]
  br i1 %72, label %73, label %78

73:                                               ; preds = %71
  %74 = load i8*, i8** %5, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %5, align 8
  %76 = load i32, i32* %16, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %16, align 4
  br label %61

78:                                               ; preds = %71
  br label %79

79:                                               ; preds = %96, %78
  %80 = load i8*, i8** %5, align 8
  %81 = load i8*, i8** %8, align 8
  %82 = icmp ult i8* %80, %81
  br i1 %82, label %83, label %94

83:                                               ; preds = %79
  %84 = load i8*, i8** %5, align 8
  %85 = load i8, i8* %84, align 1
  %86 = call i64 @totypeIsdigit(i8 signext %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %83
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* @LARGEST_INT64, align 4
  %91 = sub nsw i32 %90, 9
  %92 = sdiv i32 %91, 10
  %93 = icmp slt i32 %89, %92
  br label %94

94:                                               ; preds = %88, %83, %79
  %95 = phi i1 [ false, %83 ], [ false, %79 ], [ %93, %88 ]
  br i1 %95, label %96, label %108

96:                                               ; preds = %94
  %97 = load i32, i32* %10, align 4
  %98 = mul nsw i32 %97, 10
  %99 = load i8*, i8** %5, align 8
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = sub nsw i32 %101, 48
  %103 = add nsw i32 %98, %102
  store i32 %103, i32* %10, align 4
  %104 = load i8*, i8** %5, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %5, align 8
  %106 = load i32, i32* %16, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %16, align 4
  br label %79

108:                                              ; preds = %94
  br label %109

109:                                              ; preds = %120, %108
  %110 = load i8*, i8** %5, align 8
  %111 = load i8*, i8** %8, align 8
  %112 = icmp ult i8* %110, %111
  br i1 %112, label %113, label %118

113:                                              ; preds = %109
  %114 = load i8*, i8** %5, align 8
  %115 = load i8, i8* %114, align 1
  %116 = call i64 @totypeIsdigit(i8 signext %115)
  %117 = icmp ne i64 %116, 0
  br label %118

118:                                              ; preds = %113, %109
  %119 = phi i1 [ false, %109 ], [ %117, %113 ]
  br i1 %119, label %120, label %127

120:                                              ; preds = %118
  %121 = load i8*, i8** %5, align 8
  %122 = getelementptr inbounds i8, i8* %121, i32 1
  store i8* %122, i8** %5, align 8
  %123 = load i32, i32* %16, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %16, align 4
  %125 = load i32, i32* %11, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %11, align 4
  br label %109

127:                                              ; preds = %118
  %128 = load i8*, i8** %5, align 8
  %129 = load i8*, i8** %8, align 8
  %130 = icmp uge i8* %128, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %127
  br label %280

132:                                              ; preds = %127
  %133 = load i8*, i8** %5, align 8
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp eq i32 %135, 46
  br i1 %136, label %137, label %189

137:                                              ; preds = %132
  %138 = load i8*, i8** %5, align 8
  %139 = getelementptr inbounds i8, i8* %138, i32 1
  store i8* %139, i8** %5, align 8
  br label %140

140:                                              ; preds = %157, %137
  %141 = load i8*, i8** %5, align 8
  %142 = load i8*, i8** %8, align 8
  %143 = icmp ult i8* %141, %142
  br i1 %143, label %144, label %155

144:                                              ; preds = %140
  %145 = load i8*, i8** %5, align 8
  %146 = load i8, i8* %145, align 1
  %147 = call i64 @totypeIsdigit(i8 signext %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %155

149:                                              ; preds = %144
  %150 = load i32, i32* %10, align 4
  %151 = load i32, i32* @LARGEST_INT64, align 4
  %152 = sub nsw i32 %151, 9
  %153 = sdiv i32 %152, 10
  %154 = icmp slt i32 %150, %153
  br label %155

155:                                              ; preds = %149, %144, %140
  %156 = phi i1 [ false, %144 ], [ false, %140 ], [ %154, %149 ]
  br i1 %156, label %157, label %171

157:                                              ; preds = %155
  %158 = load i32, i32* %10, align 4
  %159 = mul nsw i32 %158, 10
  %160 = load i8*, i8** %5, align 8
  %161 = load i8, i8* %160, align 1
  %162 = sext i8 %161 to i32
  %163 = sub nsw i32 %162, 48
  %164 = add nsw i32 %159, %163
  store i32 %164, i32* %10, align 4
  %165 = load i8*, i8** %5, align 8
  %166 = getelementptr inbounds i8, i8* %165, i32 1
  store i8* %166, i8** %5, align 8
  %167 = load i32, i32* %16, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %16, align 4
  %169 = load i32, i32* %11, align 4
  %170 = add nsw i32 %169, -1
  store i32 %170, i32* %11, align 4
  br label %140

171:                                              ; preds = %155
  br label %172

172:                                              ; preds = %183, %171
  %173 = load i8*, i8** %5, align 8
  %174 = load i8*, i8** %8, align 8
  %175 = icmp ult i8* %173, %174
  br i1 %175, label %176, label %181

176:                                              ; preds = %172
  %177 = load i8*, i8** %5, align 8
  %178 = load i8, i8* %177, align 1
  %179 = call i64 @totypeIsdigit(i8 signext %178)
  %180 = icmp ne i64 %179, 0
  br label %181

181:                                              ; preds = %176, %172
  %182 = phi i1 [ false, %172 ], [ %180, %176 ]
  br i1 %182, label %183, label %188

183:                                              ; preds = %181
  %184 = load i8*, i8** %5, align 8
  %185 = getelementptr inbounds i8, i8* %184, i32 1
  store i8* %185, i8** %5, align 8
  %186 = load i32, i32* %16, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %16, align 4
  br label %172

188:                                              ; preds = %181
  br label %189

189:                                              ; preds = %188, %132
  %190 = load i8*, i8** %5, align 8
  %191 = load i8*, i8** %8, align 8
  %192 = icmp uge i8* %190, %191
  br i1 %192, label %193, label %194

193:                                              ; preds = %189
  br label %280

194:                                              ; preds = %189
  %195 = load i8*, i8** %5, align 8
  %196 = load i8, i8* %195, align 1
  %197 = sext i8 %196 to i32
  %198 = icmp eq i32 %197, 101
  br i1 %198, label %204, label %199

199:                                              ; preds = %194
  %200 = load i8*, i8** %5, align 8
  %201 = load i8, i8* %200, align 1
  %202 = sext i8 %201 to i32
  %203 = icmp eq i32 %202, 69
  br i1 %203, label %204, label %257

204:                                              ; preds = %199, %194
  %205 = load i8*, i8** %5, align 8
  %206 = getelementptr inbounds i8, i8* %205, i32 1
  store i8* %206, i8** %5, align 8
  store i32 0, i32* %14, align 4
  %207 = load i8*, i8** %5, align 8
  %208 = load i8*, i8** %8, align 8
  %209 = icmp uge i8* %207, %208
  br i1 %209, label %210, label %211

210:                                              ; preds = %204
  br label %280

211:                                              ; preds = %204
  %212 = load i8*, i8** %5, align 8
  %213 = load i8, i8* %212, align 1
  %214 = sext i8 %213 to i32
  %215 = icmp eq i32 %214, 45
  br i1 %215, label %216, label %219

216:                                              ; preds = %211
  store i32 -1, i32* %12, align 4
  %217 = load i8*, i8** %5, align 8
  %218 = getelementptr inbounds i8, i8* %217, i32 1
  store i8* %218, i8** %5, align 8
  br label %228

219:                                              ; preds = %211
  %220 = load i8*, i8** %5, align 8
  %221 = load i8, i8* %220, align 1
  %222 = sext i8 %221 to i32
  %223 = icmp eq i32 %222, 43
  br i1 %223, label %224, label %227

224:                                              ; preds = %219
  %225 = load i8*, i8** %5, align 8
  %226 = getelementptr inbounds i8, i8* %225, i32 1
  store i8* %226, i8** %5, align 8
  br label %227

227:                                              ; preds = %224, %219
  br label %228

228:                                              ; preds = %227, %216
  br label %229

229:                                              ; preds = %252, %228
  %230 = load i8*, i8** %5, align 8
  %231 = load i8*, i8** %8, align 8
  %232 = icmp ult i8* %230, %231
  br i1 %232, label %233, label %238

233:                                              ; preds = %229
  %234 = load i8*, i8** %5, align 8
  %235 = load i8, i8* %234, align 1
  %236 = call i64 @totypeIsdigit(i8 signext %235)
  %237 = icmp ne i64 %236, 0
  br label %238

238:                                              ; preds = %233, %229
  %239 = phi i1 [ false, %229 ], [ %237, %233 ]
  br i1 %239, label %240, label %256

240:                                              ; preds = %238
  %241 = load i32, i32* %13, align 4
  %242 = icmp slt i32 %241, 10000
  br i1 %242, label %243, label %251

243:                                              ; preds = %240
  %244 = load i32, i32* %13, align 4
  %245 = mul nsw i32 %244, 10
  %246 = load i8*, i8** %5, align 8
  %247 = load i8, i8* %246, align 1
  %248 = sext i8 %247 to i32
  %249 = sub nsw i32 %248, 48
  %250 = add nsw i32 %245, %249
  br label %252

251:                                              ; preds = %240
  br label %252

252:                                              ; preds = %251, %243
  %253 = phi i32 [ %250, %243 ], [ 10000, %251 ]
  store i32 %253, i32* %13, align 4
  %254 = load i8*, i8** %5, align 8
  %255 = getelementptr inbounds i8, i8* %254, i32 1
  store i8* %255, i8** %5, align 8
  store i32 1, i32* %14, align 4
  br label %229

256:                                              ; preds = %238
  br label %257

257:                                              ; preds = %256, %199
  %258 = load i32, i32* %16, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %279

260:                                              ; preds = %257
  %261 = load i32, i32* %14, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %279

263:                                              ; preds = %260
  br label %264

264:                                              ; preds = %275, %263
  %265 = load i8*, i8** %5, align 8
  %266 = load i8*, i8** %8, align 8
  %267 = icmp ult i8* %265, %266
  br i1 %267, label %268, label %273

268:                                              ; preds = %264
  %269 = load i8*, i8** %5, align 8
  %270 = load i8, i8* %269, align 1
  %271 = call i64 @totypeIsspace(i8 signext %270)
  %272 = icmp ne i64 %271, 0
  br label %273

273:                                              ; preds = %268, %264
  %274 = phi i1 [ false, %264 ], [ %272, %268 ]
  br i1 %274, label %275, label %278

275:                                              ; preds = %273
  %276 = load i8*, i8** %5, align 8
  %277 = getelementptr inbounds i8, i8* %276, i32 1
  store i8* %277, i8** %5, align 8
  br label %264

278:                                              ; preds = %273
  br label %279

279:                                              ; preds = %278, %260, %257
  br label %280

280:                                              ; preds = %279, %210, %193, %131
  %281 = load i32, i32* %13, align 4
  %282 = load i32, i32* %12, align 4
  %283 = mul nsw i32 %281, %282
  %284 = load i32, i32* %11, align 4
  %285 = add nsw i32 %283, %284
  store i32 %285, i32* %13, align 4
  %286 = load i32, i32* %13, align 4
  %287 = icmp slt i32 %286, 0
  br i1 %287, label %288, label %291

288:                                              ; preds = %280
  store i32 -1, i32* %12, align 4
  %289 = load i32, i32* %13, align 4
  %290 = mul nsw i32 %289, -1
  store i32 %290, i32* %13, align 4
  br label %292

291:                                              ; preds = %280
  store i32 1, i32* %12, align 4
  br label %292

292:                                              ; preds = %291, %288
  %293 = load i32, i32* %10, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %305, label %295

295:                                              ; preds = %292
  %296 = load i32, i32* %9, align 4
  %297 = icmp slt i32 %296, 0
  br i1 %297, label %298, label %301

298:                                              ; preds = %295
  %299 = load i32, i32* %16, align 4
  %300 = icmp ne i32 %299, 0
  br label %301

301:                                              ; preds = %298, %295
  %302 = phi i1 [ false, %295 ], [ %300, %298 ]
  %303 = zext i1 %302 to i64
  %304 = select i1 %302, double -0.000000e+00, double 0.000000e+00
  store double %304, double* %15, align 8
  br label %441

305:                                              ; preds = %292
  %306 = load i32, i32* %12, align 4
  %307 = icmp sgt i32 %306, 0
  br i1 %307, label %308, label %325

308:                                              ; preds = %305
  br label %309

309:                                              ; preds = %319, %308
  %310 = load i32, i32* %10, align 4
  %311 = load i32, i32* @LARGEST_INT64, align 4
  %312 = sdiv i32 %311, 10
  %313 = icmp slt i32 %310, %312
  br i1 %313, label %314, label %317

314:                                              ; preds = %309
  %315 = load i32, i32* %13, align 4
  %316 = icmp sgt i32 %315, 0
  br label %317

317:                                              ; preds = %314, %309
  %318 = phi i1 [ false, %309 ], [ %316, %314 ]
  br i1 %318, label %319, label %324

319:                                              ; preds = %317
  %320 = load i32, i32* %13, align 4
  %321 = add nsw i32 %320, -1
  store i32 %321, i32* %13, align 4
  %322 = load i32, i32* %10, align 4
  %323 = mul nsw i32 %322, 10
  store i32 %323, i32* %10, align 4
  br label %309

324:                                              ; preds = %317
  br label %341

325:                                              ; preds = %305
  br label %326

326:                                              ; preds = %335, %325
  %327 = load i32, i32* %10, align 4
  %328 = srem i32 %327, 10
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %333, label %330

330:                                              ; preds = %326
  %331 = load i32, i32* %13, align 4
  %332 = icmp sgt i32 %331, 0
  br label %333

333:                                              ; preds = %330, %326
  %334 = phi i1 [ false, %326 ], [ %332, %330 ]
  br i1 %334, label %335, label %340

335:                                              ; preds = %333
  %336 = load i32, i32* %13, align 4
  %337 = add nsw i32 %336, -1
  store i32 %337, i32* %13, align 4
  %338 = load i32, i32* %10, align 4
  %339 = sdiv i32 %338, 10
  store i32 %339, i32* %10, align 4
  br label %326

340:                                              ; preds = %333
  br label %341

341:                                              ; preds = %340, %324
  %342 = load i32, i32* %9, align 4
  %343 = icmp slt i32 %342, 0
  br i1 %343, label %344, label %347

344:                                              ; preds = %341
  %345 = load i32, i32* %10, align 4
  %346 = sub nsw i32 0, %345
  br label %349

347:                                              ; preds = %341
  %348 = load i32, i32* %10, align 4
  br label %349

349:                                              ; preds = %347, %344
  %350 = phi i32 [ %346, %344 ], [ %348, %347 ]
  store i32 %350, i32* %10, align 4
  %351 = load i32, i32* %13, align 4
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %437

353:                                              ; preds = %349
  store double 1.000000e+00, double* %18, align 8
  %354 = load i32, i32* %13, align 4
  %355 = icmp sgt i32 %354, 307
  br i1 %355, label %356, label %387

356:                                              ; preds = %353
  %357 = load i32, i32* %13, align 4
  %358 = icmp slt i32 %357, 342
  br i1 %358, label %359, label %387

359:                                              ; preds = %356
  br label %360

360:                                              ; preds = %364, %359
  %361 = load i32, i32* %13, align 4
  %362 = srem i32 %361, 308
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %369

364:                                              ; preds = %360
  %365 = load double, double* %18, align 8
  %366 = fmul double %365, 1.000000e+01
  store double %366, double* %18, align 8
  %367 = load i32, i32* %13, align 4
  %368 = sub nsw i32 %367, 1
  store i32 %368, i32* %13, align 4
  br label %360

369:                                              ; preds = %360
  %370 = load i32, i32* %12, align 4
  %371 = icmp slt i32 %370, 0
  br i1 %371, label %372, label %379

372:                                              ; preds = %369
  %373 = load i32, i32* %10, align 4
  %374 = sitofp i32 %373 to double
  %375 = load double, double* %18, align 8
  %376 = fdiv double %374, %375
  store double %376, double* %15, align 8
  %377 = load double, double* %15, align 8
  %378 = fdiv double %377, 1.000000e+308
  store double %378, double* %15, align 8
  br label %386

379:                                              ; preds = %369
  %380 = load i32, i32* %10, align 4
  %381 = sitofp i32 %380 to double
  %382 = load double, double* %18, align 8
  %383 = fmul double %381, %382
  store double %383, double* %15, align 8
  %384 = load double, double* %15, align 8
  %385 = fmul double %384, 1.000000e+308
  store double %385, double* %15, align 8
  br label %386

386:                                              ; preds = %379, %372
  br label %436

387:                                              ; preds = %356, %353
  %388 = load i32, i32* %13, align 4
  %389 = icmp sge i32 %388, 342
  br i1 %389, label %390, label %402

390:                                              ; preds = %387
  %391 = load i32, i32* %12, align 4
  %392 = icmp slt i32 %391, 0
  br i1 %392, label %393, label %397

393:                                              ; preds = %390
  %394 = load i32, i32* %10, align 4
  %395 = sitofp i32 %394 to double
  %396 = fmul double 0.000000e+00, %395
  store double %396, double* %15, align 8
  br label %401

397:                                              ; preds = %390
  %398 = load i32, i32* %10, align 4
  %399 = sitofp i32 %398 to double
  %400 = fmul double 0x7FF0000000000000, %399
  store double %400, double* %15, align 8
  br label %401

401:                                              ; preds = %397, %393
  br label %435

402:                                              ; preds = %387
  br label %403

403:                                              ; preds = %407, %402
  %404 = load i32, i32* %13, align 4
  %405 = srem i32 %404, 22
  %406 = icmp ne i32 %405, 0
  br i1 %406, label %407, label %412

407:                                              ; preds = %403
  %408 = load double, double* %18, align 8
  %409 = fmul double %408, 1.000000e+01
  store double %409, double* %18, align 8
  %410 = load i32, i32* %13, align 4
  %411 = sub nsw i32 %410, 1
  store i32 %411, i32* %13, align 4
  br label %403

412:                                              ; preds = %403
  br label %413

413:                                              ; preds = %416, %412
  %414 = load i32, i32* %13, align 4
  %415 = icmp sgt i32 %414, 0
  br i1 %415, label %416, label %421

416:                                              ; preds = %413
  %417 = load double, double* %18, align 8
  %418 = fmul double %417, 1.000000e+22
  store double %418, double* %18, align 8
  %419 = load i32, i32* %13, align 4
  %420 = sub nsw i32 %419, 22
  store i32 %420, i32* %13, align 4
  br label %413

421:                                              ; preds = %413
  %422 = load i32, i32* %12, align 4
  %423 = icmp slt i32 %422, 0
  br i1 %423, label %424, label %429

424:                                              ; preds = %421
  %425 = load i32, i32* %10, align 4
  %426 = sitofp i32 %425 to double
  %427 = load double, double* %18, align 8
  %428 = fdiv double %426, %427
  store double %428, double* %15, align 8
  br label %434

429:                                              ; preds = %421
  %430 = load i32, i32* %10, align 4
  %431 = sitofp i32 %430 to double
  %432 = load double, double* %18, align 8
  %433 = fmul double %431, %432
  store double %433, double* %15, align 8
  br label %434

434:                                              ; preds = %429, %424
  br label %435

435:                                              ; preds = %434, %401
  br label %436

436:                                              ; preds = %435, %386
  br label %440

437:                                              ; preds = %349
  %438 = load i32, i32* %10, align 4
  %439 = sitofp i32 %438 to double
  store double %439, double* %15, align 8
  br label %440

440:                                              ; preds = %437, %436
  br label %441

441:                                              ; preds = %440, %301
  %442 = load double, double* %15, align 8
  %443 = load double*, double** %6, align 8
  store double %442, double* %443, align 8
  %444 = load i8*, i8** %5, align 8
  %445 = load i8*, i8** %8, align 8
  %446 = icmp uge i8* %444, %445
  br i1 %446, label %447, label %456

447:                                              ; preds = %441
  %448 = load i32, i32* %16, align 4
  %449 = icmp sgt i32 %448, 0
  br i1 %449, label %450, label %456

450:                                              ; preds = %447
  %451 = load i32, i32* %14, align 4
  %452 = icmp ne i32 %451, 0
  br i1 %452, label %453, label %456

453:                                              ; preds = %450
  %454 = load i32, i32* %17, align 4
  %455 = icmp eq i32 %454, 0
  br label %456

456:                                              ; preds = %453, %450, %447, %441
  %457 = phi i1 [ false, %450 ], [ false, %447 ], [ false, %441 ], [ %455, %453 ]
  %458 = zext i1 %457 to i32
  store i32 %458, i32* %4, align 4
  br label %459

459:                                              ; preds = %456, %42
  %460 = load i32, i32* %4, align 4
  ret i32 %460
}

declare dso_local i64 @totypeIsspace(i8 signext) #1

declare dso_local i64 @totypeIsdigit(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
