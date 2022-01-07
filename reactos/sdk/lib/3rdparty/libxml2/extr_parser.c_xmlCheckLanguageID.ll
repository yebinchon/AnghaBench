; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlCheckLanguageID.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlCheckLanguageID.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlCheckLanguageID(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  store i8* %6, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %551

10:                                               ; preds = %1
  %11 = load i8*, i8** %4, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 0
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 105
  br i1 %15, label %16, label %22

16:                                               ; preds = %10
  %17 = load i8*, i8** %4, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 1
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 45
  br i1 %21, label %58, label %22

22:                                               ; preds = %16, %10
  %23 = load i8*, i8** %4, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 73
  br i1 %27, label %28, label %34

28:                                               ; preds = %22
  %29 = load i8*, i8** %4, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 1
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 45
  br i1 %33, label %58, label %34

34:                                               ; preds = %28, %22
  %35 = load i8*, i8** %4, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 0
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 120
  br i1 %39, label %40, label %46

40:                                               ; preds = %34
  %41 = load i8*, i8** %4, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 1
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 45
  br i1 %45, label %58, label %46

46:                                               ; preds = %40, %34
  %47 = load i8*, i8** %4, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 0
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 88
  br i1 %51, label %52, label %99

52:                                               ; preds = %46
  %53 = load i8*, i8** %4, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 1
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 45
  br i1 %57, label %58, label %99

58:                                               ; preds = %52, %40, %28, %16
  %59 = load i8*, i8** %4, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 2
  store i8* %60, i8** %4, align 8
  br label %61

61:                                               ; preds = %89, %58
  %62 = load i8*, i8** %4, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 0
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp sge i32 %65, 65
  br i1 %66, label %67, label %73

67:                                               ; preds = %61
  %68 = load i8*, i8** %4, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 0
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp sle i32 %71, 90
  br i1 %72, label %87, label %73

73:                                               ; preds = %67, %61
  %74 = load i8*, i8** %4, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 0
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp sge i32 %77, 97
  br i1 %78, label %79, label %85

79:                                               ; preds = %73
  %80 = load i8*, i8** %4, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 0
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp sle i32 %83, 122
  br label %85

85:                                               ; preds = %79, %73
  %86 = phi i1 [ false, %73 ], [ %84, %79 ]
  br label %87

87:                                               ; preds = %85, %67
  %88 = phi i1 [ true, %67 ], [ %86, %85 ]
  br i1 %88, label %89, label %92

89:                                               ; preds = %87
  %90 = load i8*, i8** %4, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** %4, align 8
  br label %61

92:                                               ; preds = %87
  %93 = load i8*, i8** %4, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 0
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp eq i32 %96, 0
  %98 = zext i1 %97 to i32
  store i32 %98, i32* %2, align 4
  br label %551

99:                                               ; preds = %52, %46
  %100 = load i8*, i8** %4, align 8
  store i8* %100, i8** %5, align 8
  br label %101

101:                                              ; preds = %129, %99
  %102 = load i8*, i8** %5, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 0
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp sge i32 %105, 65
  br i1 %106, label %107, label %113

107:                                              ; preds = %101
  %108 = load i8*, i8** %5, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 0
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp sle i32 %111, 90
  br i1 %112, label %127, label %113

113:                                              ; preds = %107, %101
  %114 = load i8*, i8** %5, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 0
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp sge i32 %117, 97
  br i1 %118, label %119, label %125

119:                                              ; preds = %113
  %120 = load i8*, i8** %5, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 0
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp sle i32 %123, 122
  br label %125

125:                                              ; preds = %119, %113
  %126 = phi i1 [ false, %113 ], [ %124, %119 ]
  br label %127

127:                                              ; preds = %125, %107
  %128 = phi i1 [ true, %107 ], [ %126, %125 ]
  br i1 %128, label %129, label %132

129:                                              ; preds = %127
  %130 = load i8*, i8** %5, align 8
  %131 = getelementptr inbounds i8, i8* %130, i32 1
  store i8* %131, i8** %5, align 8
  br label %101

132:                                              ; preds = %127
  %133 = load i8*, i8** %5, align 8
  %134 = load i8*, i8** %4, align 8
  %135 = ptrtoint i8* %133 to i64
  %136 = ptrtoint i8* %134 to i64
  %137 = sub i64 %135, %136
  %138 = icmp sge i64 %137, 4
  br i1 %138, label %139, label %154

139:                                              ; preds = %132
  %140 = load i8*, i8** %5, align 8
  %141 = load i8*, i8** %4, align 8
  %142 = ptrtoint i8* %140 to i64
  %143 = ptrtoint i8* %141 to i64
  %144 = sub i64 %142, %143
  %145 = icmp sgt i64 %144, 8
  br i1 %145, label %152, label %146

146:                                              ; preds = %139
  %147 = load i8*, i8** %5, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 0
  %149 = load i8, i8* %148, align 1
  %150 = sext i8 %149 to i32
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %146, %139
  store i32 0, i32* %2, align 4
  br label %551

153:                                              ; preds = %146
  store i32 1, i32* %2, align 4
  br label %551

154:                                              ; preds = %132
  %155 = load i8*, i8** %5, align 8
  %156 = load i8*, i8** %4, align 8
  %157 = ptrtoint i8* %155 to i64
  %158 = ptrtoint i8* %156 to i64
  %159 = sub i64 %157, %158
  %160 = icmp slt i64 %159, 2
  br i1 %160, label %161, label %162

161:                                              ; preds = %154
  store i32 0, i32* %2, align 4
  br label %551

162:                                              ; preds = %154
  %163 = load i8*, i8** %5, align 8
  %164 = getelementptr inbounds i8, i8* %163, i64 0
  %165 = load i8, i8* %164, align 1
  %166 = sext i8 %165 to i32
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %162
  store i32 1, i32* %2, align 4
  br label %551

169:                                              ; preds = %162
  %170 = load i8*, i8** %5, align 8
  %171 = getelementptr inbounds i8, i8* %170, i64 0
  %172 = load i8, i8* %171, align 1
  %173 = sext i8 %172 to i32
  %174 = icmp ne i32 %173, 45
  br i1 %174, label %175, label %176

175:                                              ; preds = %169
  store i32 0, i32* %2, align 4
  br label %551

176:                                              ; preds = %169
  %177 = load i8*, i8** %5, align 8
  %178 = getelementptr inbounds i8, i8* %177, i32 1
  store i8* %178, i8** %5, align 8
  %179 = load i8*, i8** %5, align 8
  store i8* %179, i8** %4, align 8
  %180 = load i8*, i8** %5, align 8
  %181 = getelementptr inbounds i8, i8* %180, i64 0
  %182 = load i8, i8* %181, align 1
  %183 = sext i8 %182 to i32
  %184 = icmp sge i32 %183, 48
  br i1 %184, label %185, label %192

185:                                              ; preds = %176
  %186 = load i8*, i8** %5, align 8
  %187 = getelementptr inbounds i8, i8* %186, i64 0
  %188 = load i8, i8* %187, align 1
  %189 = sext i8 %188 to i32
  %190 = icmp sle i32 %189, 57
  br i1 %190, label %191, label %192

191:                                              ; preds = %185
  br label %523

192:                                              ; preds = %185, %176
  br label %193

193:                                              ; preds = %221, %192
  %194 = load i8*, i8** %5, align 8
  %195 = getelementptr inbounds i8, i8* %194, i64 0
  %196 = load i8, i8* %195, align 1
  %197 = sext i8 %196 to i32
  %198 = icmp sge i32 %197, 65
  br i1 %198, label %199, label %205

199:                                              ; preds = %193
  %200 = load i8*, i8** %5, align 8
  %201 = getelementptr inbounds i8, i8* %200, i64 0
  %202 = load i8, i8* %201, align 1
  %203 = sext i8 %202 to i32
  %204 = icmp sle i32 %203, 90
  br i1 %204, label %219, label %205

205:                                              ; preds = %199, %193
  %206 = load i8*, i8** %5, align 8
  %207 = getelementptr inbounds i8, i8* %206, i64 0
  %208 = load i8, i8* %207, align 1
  %209 = sext i8 %208 to i32
  %210 = icmp sge i32 %209, 97
  br i1 %210, label %211, label %217

211:                                              ; preds = %205
  %212 = load i8*, i8** %5, align 8
  %213 = getelementptr inbounds i8, i8* %212, i64 0
  %214 = load i8, i8* %213, align 1
  %215 = sext i8 %214 to i32
  %216 = icmp sle i32 %215, 122
  br label %217

217:                                              ; preds = %211, %205
  %218 = phi i1 [ false, %205 ], [ %216, %211 ]
  br label %219

219:                                              ; preds = %217, %199
  %220 = phi i1 [ true, %199 ], [ %218, %217 ]
  br i1 %220, label %221, label %224

221:                                              ; preds = %219
  %222 = load i8*, i8** %5, align 8
  %223 = getelementptr inbounds i8, i8* %222, i32 1
  store i8* %223, i8** %5, align 8
  br label %193

224:                                              ; preds = %219
  %225 = load i8*, i8** %5, align 8
  %226 = load i8*, i8** %4, align 8
  %227 = ptrtoint i8* %225 to i64
  %228 = ptrtoint i8* %226 to i64
  %229 = sub i64 %227, %228
  %230 = icmp eq i64 %229, 4
  br i1 %230, label %231, label %232

231:                                              ; preds = %224
  br label %357

232:                                              ; preds = %224
  %233 = load i8*, i8** %5, align 8
  %234 = load i8*, i8** %4, align 8
  %235 = ptrtoint i8* %233 to i64
  %236 = ptrtoint i8* %234 to i64
  %237 = sub i64 %235, %236
  %238 = icmp eq i64 %237, 2
  br i1 %238, label %239, label %240

239:                                              ; preds = %232
  br label %443

240:                                              ; preds = %232
  %241 = load i8*, i8** %5, align 8
  %242 = load i8*, i8** %4, align 8
  %243 = ptrtoint i8* %241 to i64
  %244 = ptrtoint i8* %242 to i64
  %245 = sub i64 %243, %244
  %246 = icmp sge i64 %245, 5
  br i1 %246, label %247, label %255

247:                                              ; preds = %240
  %248 = load i8*, i8** %5, align 8
  %249 = load i8*, i8** %4, align 8
  %250 = ptrtoint i8* %248 to i64
  %251 = ptrtoint i8* %249 to i64
  %252 = sub i64 %250, %251
  %253 = icmp sle i64 %252, 8
  br i1 %253, label %254, label %255

254:                                              ; preds = %247
  br label %508

255:                                              ; preds = %247, %240
  %256 = load i8*, i8** %5, align 8
  %257 = load i8*, i8** %4, align 8
  %258 = ptrtoint i8* %256 to i64
  %259 = ptrtoint i8* %257 to i64
  %260 = sub i64 %258, %259
  %261 = icmp ne i64 %260, 3
  br i1 %261, label %262, label %263

262:                                              ; preds = %255
  store i32 0, i32* %2, align 4
  br label %551

263:                                              ; preds = %255
  %264 = load i8*, i8** %5, align 8
  %265 = getelementptr inbounds i8, i8* %264, i64 0
  %266 = load i8, i8* %265, align 1
  %267 = sext i8 %266 to i32
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %269, label %270

269:                                              ; preds = %263
  store i32 1, i32* %2, align 4
  br label %551

270:                                              ; preds = %263
  %271 = load i8*, i8** %5, align 8
  %272 = getelementptr inbounds i8, i8* %271, i64 0
  %273 = load i8, i8* %272, align 1
  %274 = sext i8 %273 to i32
  %275 = icmp ne i32 %274, 45
  br i1 %275, label %276, label %277

276:                                              ; preds = %270
  store i32 0, i32* %2, align 4
  br label %551

277:                                              ; preds = %270
  %278 = load i8*, i8** %5, align 8
  %279 = getelementptr inbounds i8, i8* %278, i32 1
  store i8* %279, i8** %5, align 8
  %280 = load i8*, i8** %5, align 8
  store i8* %280, i8** %4, align 8
  %281 = load i8*, i8** %5, align 8
  %282 = getelementptr inbounds i8, i8* %281, i64 0
  %283 = load i8, i8* %282, align 1
  %284 = sext i8 %283 to i32
  %285 = icmp sge i32 %284, 48
  br i1 %285, label %286, label %293

286:                                              ; preds = %277
  %287 = load i8*, i8** %5, align 8
  %288 = getelementptr inbounds i8, i8* %287, i64 0
  %289 = load i8, i8* %288, align 1
  %290 = sext i8 %289 to i32
  %291 = icmp sle i32 %290, 57
  br i1 %291, label %292, label %293

292:                                              ; preds = %286
  br label %523

293:                                              ; preds = %286, %277
  br label %294

294:                                              ; preds = %322, %293
  %295 = load i8*, i8** %5, align 8
  %296 = getelementptr inbounds i8, i8* %295, i64 0
  %297 = load i8, i8* %296, align 1
  %298 = sext i8 %297 to i32
  %299 = icmp sge i32 %298, 65
  br i1 %299, label %300, label %306

300:                                              ; preds = %294
  %301 = load i8*, i8** %5, align 8
  %302 = getelementptr inbounds i8, i8* %301, i64 0
  %303 = load i8, i8* %302, align 1
  %304 = sext i8 %303 to i32
  %305 = icmp sle i32 %304, 90
  br i1 %305, label %320, label %306

306:                                              ; preds = %300, %294
  %307 = load i8*, i8** %5, align 8
  %308 = getelementptr inbounds i8, i8* %307, i64 0
  %309 = load i8, i8* %308, align 1
  %310 = sext i8 %309 to i32
  %311 = icmp sge i32 %310, 97
  br i1 %311, label %312, label %318

312:                                              ; preds = %306
  %313 = load i8*, i8** %5, align 8
  %314 = getelementptr inbounds i8, i8* %313, i64 0
  %315 = load i8, i8* %314, align 1
  %316 = sext i8 %315 to i32
  %317 = icmp sle i32 %316, 122
  br label %318

318:                                              ; preds = %312, %306
  %319 = phi i1 [ false, %306 ], [ %317, %312 ]
  br label %320

320:                                              ; preds = %318, %300
  %321 = phi i1 [ true, %300 ], [ %319, %318 ]
  br i1 %321, label %322, label %325

322:                                              ; preds = %320
  %323 = load i8*, i8** %5, align 8
  %324 = getelementptr inbounds i8, i8* %323, i32 1
  store i8* %324, i8** %5, align 8
  br label %294

325:                                              ; preds = %320
  %326 = load i8*, i8** %5, align 8
  %327 = load i8*, i8** %4, align 8
  %328 = ptrtoint i8* %326 to i64
  %329 = ptrtoint i8* %327 to i64
  %330 = sub i64 %328, %329
  %331 = icmp eq i64 %330, 2
  br i1 %331, label %332, label %333

332:                                              ; preds = %325
  br label %443

333:                                              ; preds = %325
  %334 = load i8*, i8** %5, align 8
  %335 = load i8*, i8** %4, align 8
  %336 = ptrtoint i8* %334 to i64
  %337 = ptrtoint i8* %335 to i64
  %338 = sub i64 %336, %337
  %339 = icmp sge i64 %338, 5
  br i1 %339, label %340, label %348

340:                                              ; preds = %333
  %341 = load i8*, i8** %5, align 8
  %342 = load i8*, i8** %4, align 8
  %343 = ptrtoint i8* %341 to i64
  %344 = ptrtoint i8* %342 to i64
  %345 = sub i64 %343, %344
  %346 = icmp sle i64 %345, 8
  br i1 %346, label %347, label %348

347:                                              ; preds = %340
  br label %508

348:                                              ; preds = %340, %333
  %349 = load i8*, i8** %5, align 8
  %350 = load i8*, i8** %4, align 8
  %351 = ptrtoint i8* %349 to i64
  %352 = ptrtoint i8* %350 to i64
  %353 = sub i64 %351, %352
  %354 = icmp ne i64 %353, 4
  br i1 %354, label %355, label %356

355:                                              ; preds = %348
  store i32 0, i32* %2, align 4
  br label %551

356:                                              ; preds = %348
  br label %357

357:                                              ; preds = %356, %231
  %358 = load i8*, i8** %5, align 8
  %359 = getelementptr inbounds i8, i8* %358, i64 0
  %360 = load i8, i8* %359, align 1
  %361 = sext i8 %360 to i32
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %363, label %364

363:                                              ; preds = %357
  store i32 1, i32* %2, align 4
  br label %551

364:                                              ; preds = %357
  %365 = load i8*, i8** %5, align 8
  %366 = getelementptr inbounds i8, i8* %365, i64 0
  %367 = load i8, i8* %366, align 1
  %368 = sext i8 %367 to i32
  %369 = icmp ne i32 %368, 45
  br i1 %369, label %370, label %371

370:                                              ; preds = %364
  store i32 0, i32* %2, align 4
  br label %551

371:                                              ; preds = %364
  %372 = load i8*, i8** %5, align 8
  %373 = getelementptr inbounds i8, i8* %372, i32 1
  store i8* %373, i8** %5, align 8
  %374 = load i8*, i8** %5, align 8
  store i8* %374, i8** %4, align 8
  %375 = load i8*, i8** %5, align 8
  %376 = getelementptr inbounds i8, i8* %375, i64 0
  %377 = load i8, i8* %376, align 1
  %378 = sext i8 %377 to i32
  %379 = icmp sge i32 %378, 48
  br i1 %379, label %380, label %387

380:                                              ; preds = %371
  %381 = load i8*, i8** %5, align 8
  %382 = getelementptr inbounds i8, i8* %381, i64 0
  %383 = load i8, i8* %382, align 1
  %384 = sext i8 %383 to i32
  %385 = icmp sle i32 %384, 57
  br i1 %385, label %386, label %387

386:                                              ; preds = %380
  br label %523

387:                                              ; preds = %380, %371
  br label %388

388:                                              ; preds = %416, %387
  %389 = load i8*, i8** %5, align 8
  %390 = getelementptr inbounds i8, i8* %389, i64 0
  %391 = load i8, i8* %390, align 1
  %392 = sext i8 %391 to i32
  %393 = icmp sge i32 %392, 65
  br i1 %393, label %394, label %400

394:                                              ; preds = %388
  %395 = load i8*, i8** %5, align 8
  %396 = getelementptr inbounds i8, i8* %395, i64 0
  %397 = load i8, i8* %396, align 1
  %398 = sext i8 %397 to i32
  %399 = icmp sle i32 %398, 90
  br i1 %399, label %414, label %400

400:                                              ; preds = %394, %388
  %401 = load i8*, i8** %5, align 8
  %402 = getelementptr inbounds i8, i8* %401, i64 0
  %403 = load i8, i8* %402, align 1
  %404 = sext i8 %403 to i32
  %405 = icmp sge i32 %404, 97
  br i1 %405, label %406, label %412

406:                                              ; preds = %400
  %407 = load i8*, i8** %5, align 8
  %408 = getelementptr inbounds i8, i8* %407, i64 0
  %409 = load i8, i8* %408, align 1
  %410 = sext i8 %409 to i32
  %411 = icmp sle i32 %410, 122
  br label %412

412:                                              ; preds = %406, %400
  %413 = phi i1 [ false, %400 ], [ %411, %406 ]
  br label %414

414:                                              ; preds = %412, %394
  %415 = phi i1 [ true, %394 ], [ %413, %412 ]
  br i1 %415, label %416, label %419

416:                                              ; preds = %414
  %417 = load i8*, i8** %5, align 8
  %418 = getelementptr inbounds i8, i8* %417, i32 1
  store i8* %418, i8** %5, align 8
  br label %388

419:                                              ; preds = %414
  %420 = load i8*, i8** %5, align 8
  %421 = load i8*, i8** %4, align 8
  %422 = ptrtoint i8* %420 to i64
  %423 = ptrtoint i8* %421 to i64
  %424 = sub i64 %422, %423
  %425 = icmp sge i64 %424, 5
  br i1 %425, label %426, label %434

426:                                              ; preds = %419
  %427 = load i8*, i8** %5, align 8
  %428 = load i8*, i8** %4, align 8
  %429 = ptrtoint i8* %427 to i64
  %430 = ptrtoint i8* %428 to i64
  %431 = sub i64 %429, %430
  %432 = icmp sle i64 %431, 8
  br i1 %432, label %433, label %434

433:                                              ; preds = %426
  br label %508

434:                                              ; preds = %426, %419
  %435 = load i8*, i8** %5, align 8
  %436 = load i8*, i8** %4, align 8
  %437 = ptrtoint i8* %435 to i64
  %438 = ptrtoint i8* %436 to i64
  %439 = sub i64 %437, %438
  %440 = icmp ne i64 %439, 2
  br i1 %440, label %441, label %442

441:                                              ; preds = %434
  store i32 0, i32* %2, align 4
  br label %551

442:                                              ; preds = %434
  br label %443

443:                                              ; preds = %547, %442, %332, %239
  %444 = load i8*, i8** %5, align 8
  %445 = getelementptr inbounds i8, i8* %444, i64 0
  %446 = load i8, i8* %445, align 1
  %447 = sext i8 %446 to i32
  %448 = icmp eq i32 %447, 0
  br i1 %448, label %449, label %450

449:                                              ; preds = %443
  store i32 1, i32* %2, align 4
  br label %551

450:                                              ; preds = %443
  %451 = load i8*, i8** %5, align 8
  %452 = getelementptr inbounds i8, i8* %451, i64 0
  %453 = load i8, i8* %452, align 1
  %454 = sext i8 %453 to i32
  %455 = icmp ne i32 %454, 45
  br i1 %455, label %456, label %457

456:                                              ; preds = %450
  store i32 0, i32* %2, align 4
  br label %551

457:                                              ; preds = %450
  %458 = load i8*, i8** %5, align 8
  %459 = getelementptr inbounds i8, i8* %458, i32 1
  store i8* %459, i8** %5, align 8
  %460 = load i8*, i8** %5, align 8
  store i8* %460, i8** %4, align 8
  br label %461

461:                                              ; preds = %489, %457
  %462 = load i8*, i8** %5, align 8
  %463 = getelementptr inbounds i8, i8* %462, i64 0
  %464 = load i8, i8* %463, align 1
  %465 = sext i8 %464 to i32
  %466 = icmp sge i32 %465, 65
  br i1 %466, label %467, label %473

467:                                              ; preds = %461
  %468 = load i8*, i8** %5, align 8
  %469 = getelementptr inbounds i8, i8* %468, i64 0
  %470 = load i8, i8* %469, align 1
  %471 = sext i8 %470 to i32
  %472 = icmp sle i32 %471, 90
  br i1 %472, label %487, label %473

473:                                              ; preds = %467, %461
  %474 = load i8*, i8** %5, align 8
  %475 = getelementptr inbounds i8, i8* %474, i64 0
  %476 = load i8, i8* %475, align 1
  %477 = sext i8 %476 to i32
  %478 = icmp sge i32 %477, 97
  br i1 %478, label %479, label %485

479:                                              ; preds = %473
  %480 = load i8*, i8** %5, align 8
  %481 = getelementptr inbounds i8, i8* %480, i64 0
  %482 = load i8, i8* %481, align 1
  %483 = sext i8 %482 to i32
  %484 = icmp sle i32 %483, 122
  br label %485

485:                                              ; preds = %479, %473
  %486 = phi i1 [ false, %473 ], [ %484, %479 ]
  br label %487

487:                                              ; preds = %485, %467
  %488 = phi i1 [ true, %467 ], [ %486, %485 ]
  br i1 %488, label %489, label %492

489:                                              ; preds = %487
  %490 = load i8*, i8** %5, align 8
  %491 = getelementptr inbounds i8, i8* %490, i32 1
  store i8* %491, i8** %5, align 8
  br label %461

492:                                              ; preds = %487
  %493 = load i8*, i8** %5, align 8
  %494 = load i8*, i8** %4, align 8
  %495 = ptrtoint i8* %493 to i64
  %496 = ptrtoint i8* %494 to i64
  %497 = sub i64 %495, %496
  %498 = icmp slt i64 %497, 5
  br i1 %498, label %506, label %499

499:                                              ; preds = %492
  %500 = load i8*, i8** %5, align 8
  %501 = load i8*, i8** %4, align 8
  %502 = ptrtoint i8* %500 to i64
  %503 = ptrtoint i8* %501 to i64
  %504 = sub i64 %502, %503
  %505 = icmp sgt i64 %504, 8
  br i1 %505, label %506, label %507

506:                                              ; preds = %499, %492
  store i32 0, i32* %2, align 4
  br label %551

507:                                              ; preds = %499
  br label %508

508:                                              ; preds = %507, %433, %347, %254
  %509 = load i8*, i8** %5, align 8
  %510 = getelementptr inbounds i8, i8* %509, i64 0
  %511 = load i8, i8* %510, align 1
  %512 = sext i8 %511 to i32
  %513 = icmp eq i32 %512, 0
  br i1 %513, label %514, label %515

514:                                              ; preds = %508
  store i32 1, i32* %2, align 4
  br label %551

515:                                              ; preds = %508
  %516 = load i8*, i8** %5, align 8
  %517 = getelementptr inbounds i8, i8* %516, i64 0
  %518 = load i8, i8* %517, align 1
  %519 = sext i8 %518 to i32
  %520 = icmp ne i32 %519, 45
  br i1 %520, label %521, label %522

521:                                              ; preds = %515
  store i32 0, i32* %2, align 4
  br label %551

522:                                              ; preds = %515
  store i32 1, i32* %2, align 4
  br label %551

523:                                              ; preds = %386, %292, %191
  %524 = load i8*, i8** %5, align 8
  %525 = getelementptr inbounds i8, i8* %524, i64 1
  %526 = load i8, i8* %525, align 1
  %527 = sext i8 %526 to i32
  %528 = icmp sge i32 %527, 48
  br i1 %528, label %529, label %550

529:                                              ; preds = %523
  %530 = load i8*, i8** %5, align 8
  %531 = getelementptr inbounds i8, i8* %530, i64 1
  %532 = load i8, i8* %531, align 1
  %533 = sext i8 %532 to i32
  %534 = icmp sle i32 %533, 57
  br i1 %534, label %535, label %550

535:                                              ; preds = %529
  %536 = load i8*, i8** %5, align 8
  %537 = getelementptr inbounds i8, i8* %536, i64 2
  %538 = load i8, i8* %537, align 1
  %539 = sext i8 %538 to i32
  %540 = icmp sge i32 %539, 48
  br i1 %540, label %541, label %550

541:                                              ; preds = %535
  %542 = load i8*, i8** %5, align 8
  %543 = getelementptr inbounds i8, i8* %542, i64 2
  %544 = load i8, i8* %543, align 1
  %545 = sext i8 %544 to i32
  %546 = icmp sle i32 %545, 57
  br i1 %546, label %547, label %550

547:                                              ; preds = %541
  %548 = load i8*, i8** %5, align 8
  %549 = getelementptr inbounds i8, i8* %548, i64 3
  store i8* %549, i8** %5, align 8
  br label %443

550:                                              ; preds = %541, %535, %529, %523
  store i32 0, i32* %2, align 4
  br label %551

551:                                              ; preds = %550, %522, %521, %514, %506, %456, %449, %441, %370, %363, %355, %276, %269, %262, %175, %168, %161, %153, %152, %92, %9
  %552 = load i32, i32* %2, align 4
  ret i32 %552
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
