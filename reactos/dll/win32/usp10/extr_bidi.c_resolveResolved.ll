; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_bidi.c_resolveResolved.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_bidi.c_resolveResolved.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@B = common dso_local global i64 0, align 8
@S = common dso_local global i64 0, align 8
@WS = common dso_local global i64 0, align 8
@FSI = common dso_local global i64 0, align 8
@LRI = common dso_local global i64 0, align 8
@RLI = common dso_local global i64 0, align 8
@PDI = common dso_local global i64 0, align 8
@LRE = common dso_local global i64 0, align 8
@RLE = common dso_local global i64 0, align 8
@LRO = common dso_local global i64 0, align 8
@RLO = common dso_local global i64 0, align 8
@PDF = common dso_local global i64 0, align 8
@BN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64*, i64*, i32, i32)* @resolveResolved to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @resolveResolved(i32 %0, i64* %1, i64* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i64* %1, i64** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* %9, align 4
  store i32 %14, i32* %11, align 4
  br label %15

15:                                               ; preds = %421, %5
  %16 = load i32, i32* %11, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp sle i32 %16, %17
  br i1 %18, label %19, label %424

19:                                               ; preds = %15
  %20 = load i64*, i64** %7, align 8
  %21 = load i32, i32* %11, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %20, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @B, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %35, label %27

27:                                               ; preds = %19
  %28 = load i64*, i64** %7, align 8
  %29 = load i32, i32* %11, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @S, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %153

35:                                               ; preds = %27, %19
  %36 = load i32, i32* %11, align 4
  %37 = sub nsw i32 %36, 1
  store i32 %37, i32* %12, align 4
  br label %38

38:                                               ; preds = %138, %35
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp sgt i32 %39, %40
  br i1 %41, label %42, label %136

42:                                               ; preds = %38
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp sge i32 %43, %44
  br i1 %45, label %46, label %136

46:                                               ; preds = %42
  %47 = load i64*, i64** %7, align 8
  %48 = load i32, i32* %12, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %47, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @WS, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %134, label %54

54:                                               ; preds = %46
  %55 = load i64*, i64** %7, align 8
  %56 = load i32, i32* %12, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %55, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @FSI, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %134, label %62

62:                                               ; preds = %54
  %63 = load i64*, i64** %7, align 8
  %64 = load i32, i32* %12, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %63, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @LRI, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %134, label %70

70:                                               ; preds = %62
  %71 = load i64*, i64** %7, align 8
  %72 = load i32, i32* %12, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i64, i64* %71, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @RLI, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %134, label %78

78:                                               ; preds = %70
  %79 = load i64*, i64** %7, align 8
  %80 = load i32, i32* %12, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %79, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @PDI, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %134, label %86

86:                                               ; preds = %78
  %87 = load i64*, i64** %7, align 8
  %88 = load i32, i32* %12, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i64, i64* %87, i64 %89
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @LRE, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %134, label %94

94:                                               ; preds = %86
  %95 = load i64*, i64** %7, align 8
  %96 = load i32, i32* %12, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i64, i64* %95, i64 %97
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @RLE, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %134, label %102

102:                                              ; preds = %94
  %103 = load i64*, i64** %7, align 8
  %104 = load i32, i32* %12, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i64, i64* %103, i64 %105
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @LRO, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %134, label %110

110:                                              ; preds = %102
  %111 = load i64*, i64** %7, align 8
  %112 = load i32, i32* %12, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i64, i64* %111, i64 %113
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @RLO, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %134, label %118

118:                                              ; preds = %110
  %119 = load i64*, i64** %7, align 8
  %120 = load i32, i32* %12, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i64, i64* %119, i64 %121
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @PDF, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %134, label %126

126:                                              ; preds = %118
  %127 = load i64*, i64** %7, align 8
  %128 = load i32, i32* %12, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i64, i64* %127, i64 %129
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @BN, align 8
  %133 = icmp eq i64 %131, %132
  br label %134

134:                                              ; preds = %126, %118, %110, %102, %94, %86, %78, %70, %62, %54, %46
  %135 = phi i1 [ true, %118 ], [ true, %110 ], [ true, %102 ], [ true, %94 ], [ true, %86 ], [ true, %78 ], [ true, %70 ], [ true, %62 ], [ true, %54 ], [ true, %46 ], [ %133, %126 ]
  br label %136

136:                                              ; preds = %134, %42, %38
  %137 = phi i1 [ false, %42 ], [ false, %38 ], [ %135, %134 ]
  br i1 %137, label %138, label %146

138:                                              ; preds = %136
  %139 = load i32, i32* %6, align 4
  %140 = zext i32 %139 to i64
  %141 = load i64*, i64** %8, align 8
  %142 = load i32, i32* %12, align 4
  %143 = add nsw i32 %142, -1
  store i32 %143, i32* %12, align 4
  %144 = sext i32 %142 to i64
  %145 = getelementptr inbounds i64, i64* %141, i64 %144
  store i64 %140, i64* %145, align 8
  br label %38

146:                                              ; preds = %136
  %147 = load i32, i32* %6, align 4
  %148 = zext i32 %147 to i64
  %149 = load i64*, i64** %8, align 8
  %150 = load i32, i32* %11, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i64, i64* %149, i64 %151
  store i64 %148, i64* %152, align 8
  br label %221

153:                                              ; preds = %27
  %154 = load i64*, i64** %7, align 8
  %155 = load i32, i32* %11, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i64, i64* %154, i64 %156
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @LRE, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %201, label %161

161:                                              ; preds = %153
  %162 = load i64*, i64** %7, align 8
  %163 = load i32, i32* %11, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i64, i64* %162, i64 %164
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @RLE, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %201, label %169

169:                                              ; preds = %161
  %170 = load i64*, i64** %7, align 8
  %171 = load i32, i32* %11, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i64, i64* %170, i64 %172
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @LRO, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %201, label %177

177:                                              ; preds = %169
  %178 = load i64*, i64** %7, align 8
  %179 = load i32, i32* %11, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i64, i64* %178, i64 %180
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @RLO, align 8
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %201, label %185

185:                                              ; preds = %177
  %186 = load i64*, i64** %7, align 8
  %187 = load i32, i32* %11, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i64, i64* %186, i64 %188
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @PDF, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %201, label %193

193:                                              ; preds = %185
  %194 = load i64*, i64** %7, align 8
  %195 = load i32, i32* %11, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i64, i64* %194, i64 %196
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* @BN, align 8
  %200 = icmp eq i64 %198, %199
  br i1 %200, label %201, label %220

201:                                              ; preds = %193, %185, %177, %169, %161, %153
  %202 = load i32, i32* %11, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %211

204:                                              ; preds = %201
  %205 = load i64*, i64** %8, align 8
  %206 = load i32, i32* %11, align 4
  %207 = sub nsw i32 %206, 1
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i64, i64* %205, i64 %208
  %210 = load i64, i64* %209, align 8
  br label %214

211:                                              ; preds = %201
  %212 = load i32, i32* %6, align 4
  %213 = zext i32 %212 to i64
  br label %214

214:                                              ; preds = %211, %204
  %215 = phi i64 [ %210, %204 ], [ %213, %211 ]
  %216 = load i64*, i64** %8, align 8
  %217 = load i32, i32* %11, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i64, i64* %216, i64 %218
  store i64 %215, i64* %219, align 8
  br label %220

220:                                              ; preds = %214, %193
  br label %221

221:                                              ; preds = %220, %146
  %222 = load i32, i32* %11, align 4
  %223 = load i32, i32* %10, align 4
  %224 = icmp eq i32 %222, %223
  br i1 %224, label %225, label %420

225:                                              ; preds = %221
  %226 = load i64*, i64** %7, align 8
  %227 = load i32, i32* %11, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i64, i64* %226, i64 %228
  %230 = load i64, i64* %229, align 8
  %231 = load i64, i64* @WS, align 8
  %232 = icmp eq i64 %230, %231
  br i1 %232, label %313, label %233

233:                                              ; preds = %225
  %234 = load i64*, i64** %7, align 8
  %235 = load i32, i32* %11, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i64, i64* %234, i64 %236
  %238 = load i64, i64* %237, align 8
  %239 = load i64, i64* @FSI, align 8
  %240 = icmp eq i64 %238, %239
  br i1 %240, label %313, label %241

241:                                              ; preds = %233
  %242 = load i64*, i64** %7, align 8
  %243 = load i32, i32* %11, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i64, i64* %242, i64 %244
  %246 = load i64, i64* %245, align 8
  %247 = load i64, i64* @LRI, align 8
  %248 = icmp eq i64 %246, %247
  br i1 %248, label %313, label %249

249:                                              ; preds = %241
  %250 = load i64*, i64** %7, align 8
  %251 = load i32, i32* %11, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i64, i64* %250, i64 %252
  %254 = load i64, i64* %253, align 8
  %255 = load i64, i64* @RLI, align 8
  %256 = icmp eq i64 %254, %255
  br i1 %256, label %313, label %257

257:                                              ; preds = %249
  %258 = load i64*, i64** %7, align 8
  %259 = load i32, i32* %11, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i64, i64* %258, i64 %260
  %262 = load i64, i64* %261, align 8
  %263 = load i64, i64* @PDI, align 8
  %264 = icmp eq i64 %262, %263
  br i1 %264, label %313, label %265

265:                                              ; preds = %257
  %266 = load i64*, i64** %7, align 8
  %267 = load i32, i32* %11, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i64, i64* %266, i64 %268
  %270 = load i64, i64* %269, align 8
  %271 = load i64, i64* @LRE, align 8
  %272 = icmp eq i64 %270, %271
  br i1 %272, label %313, label %273

273:                                              ; preds = %265
  %274 = load i64*, i64** %7, align 8
  %275 = load i32, i32* %11, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i64, i64* %274, i64 %276
  %278 = load i64, i64* %277, align 8
  %279 = load i64, i64* @RLE, align 8
  %280 = icmp eq i64 %278, %279
  br i1 %280, label %313, label %281

281:                                              ; preds = %273
  %282 = load i64*, i64** %7, align 8
  %283 = load i32, i32* %11, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i64, i64* %282, i64 %284
  %286 = load i64, i64* %285, align 8
  %287 = load i64, i64* @LRO, align 8
  %288 = icmp eq i64 %286, %287
  br i1 %288, label %313, label %289

289:                                              ; preds = %281
  %290 = load i64*, i64** %7, align 8
  %291 = load i32, i32* %11, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i64, i64* %290, i64 %292
  %294 = load i64, i64* %293, align 8
  %295 = load i64, i64* @RLO, align 8
  %296 = icmp eq i64 %294, %295
  br i1 %296, label %313, label %297

297:                                              ; preds = %289
  %298 = load i64*, i64** %7, align 8
  %299 = load i32, i32* %11, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i64, i64* %298, i64 %300
  %302 = load i64, i64* %301, align 8
  %303 = load i64, i64* @PDF, align 8
  %304 = icmp eq i64 %302, %303
  br i1 %304, label %313, label %305

305:                                              ; preds = %297
  %306 = load i64*, i64** %7, align 8
  %307 = load i32, i32* %11, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds i64, i64* %306, i64 %308
  %310 = load i64, i64* %309, align 8
  %311 = load i64, i64* @BN, align 8
  %312 = icmp eq i64 %310, %311
  br i1 %312, label %313, label %420

313:                                              ; preds = %305, %297, %289, %281, %273, %265, %257, %249, %241, %233, %225
  %314 = load i32, i32* %11, align 4
  store i32 %314, i32* %13, align 4
  br label %315

315:                                              ; preds = %411, %313
  %316 = load i32, i32* %13, align 4
  %317 = load i32, i32* %9, align 4
  %318 = icmp sge i32 %316, %317
  br i1 %318, label %319, label %409

319:                                              ; preds = %315
  %320 = load i64*, i64** %7, align 8
  %321 = load i32, i32* %13, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds i64, i64* %320, i64 %322
  %324 = load i64, i64* %323, align 8
  %325 = load i64, i64* @WS, align 8
  %326 = icmp eq i64 %324, %325
  br i1 %326, label %407, label %327

327:                                              ; preds = %319
  %328 = load i64*, i64** %7, align 8
  %329 = load i32, i32* %13, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds i64, i64* %328, i64 %330
  %332 = load i64, i64* %331, align 8
  %333 = load i64, i64* @FSI, align 8
  %334 = icmp eq i64 %332, %333
  br i1 %334, label %407, label %335

335:                                              ; preds = %327
  %336 = load i64*, i64** %7, align 8
  %337 = load i32, i32* %13, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds i64, i64* %336, i64 %338
  %340 = load i64, i64* %339, align 8
  %341 = load i64, i64* @LRI, align 8
  %342 = icmp eq i64 %340, %341
  br i1 %342, label %407, label %343

343:                                              ; preds = %335
  %344 = load i64*, i64** %7, align 8
  %345 = load i32, i32* %13, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds i64, i64* %344, i64 %346
  %348 = load i64, i64* %347, align 8
  %349 = load i64, i64* @RLI, align 8
  %350 = icmp eq i64 %348, %349
  br i1 %350, label %407, label %351

351:                                              ; preds = %343
  %352 = load i64*, i64** %7, align 8
  %353 = load i32, i32* %13, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds i64, i64* %352, i64 %354
  %356 = load i64, i64* %355, align 8
  %357 = load i64, i64* @PDI, align 8
  %358 = icmp eq i64 %356, %357
  br i1 %358, label %407, label %359

359:                                              ; preds = %351
  %360 = load i64*, i64** %7, align 8
  %361 = load i32, i32* %13, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds i64, i64* %360, i64 %362
  %364 = load i64, i64* %363, align 8
  %365 = load i64, i64* @LRE, align 8
  %366 = icmp eq i64 %364, %365
  br i1 %366, label %407, label %367

367:                                              ; preds = %359
  %368 = load i64*, i64** %7, align 8
  %369 = load i32, i32* %13, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds i64, i64* %368, i64 %370
  %372 = load i64, i64* %371, align 8
  %373 = load i64, i64* @RLE, align 8
  %374 = icmp eq i64 %372, %373
  br i1 %374, label %407, label %375

375:                                              ; preds = %367
  %376 = load i64*, i64** %7, align 8
  %377 = load i32, i32* %13, align 4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds i64, i64* %376, i64 %378
  %380 = load i64, i64* %379, align 8
  %381 = load i64, i64* @LRO, align 8
  %382 = icmp eq i64 %380, %381
  br i1 %382, label %407, label %383

383:                                              ; preds = %375
  %384 = load i64*, i64** %7, align 8
  %385 = load i32, i32* %13, align 4
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds i64, i64* %384, i64 %386
  %388 = load i64, i64* %387, align 8
  %389 = load i64, i64* @RLO, align 8
  %390 = icmp eq i64 %388, %389
  br i1 %390, label %407, label %391

391:                                              ; preds = %383
  %392 = load i64*, i64** %7, align 8
  %393 = load i32, i32* %13, align 4
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds i64, i64* %392, i64 %394
  %396 = load i64, i64* %395, align 8
  %397 = load i64, i64* @PDF, align 8
  %398 = icmp eq i64 %396, %397
  br i1 %398, label %407, label %399

399:                                              ; preds = %391
  %400 = load i64*, i64** %7, align 8
  %401 = load i32, i32* %13, align 4
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds i64, i64* %400, i64 %402
  %404 = load i64, i64* %403, align 8
  %405 = load i64, i64* @BN, align 8
  %406 = icmp eq i64 %404, %405
  br label %407

407:                                              ; preds = %399, %391, %383, %375, %367, %359, %351, %343, %335, %327, %319
  %408 = phi i1 [ true, %391 ], [ true, %383 ], [ true, %375 ], [ true, %367 ], [ true, %359 ], [ true, %351 ], [ true, %343 ], [ true, %335 ], [ true, %327 ], [ true, %319 ], [ %406, %399 ]
  br label %409

409:                                              ; preds = %407, %315
  %410 = phi i1 [ false, %315 ], [ %408, %407 ]
  br i1 %410, label %411, label %419

411:                                              ; preds = %409
  %412 = load i32, i32* %6, align 4
  %413 = zext i32 %412 to i64
  %414 = load i64*, i64** %8, align 8
  %415 = load i32, i32* %13, align 4
  %416 = add nsw i32 %415, -1
  store i32 %416, i32* %13, align 4
  %417 = sext i32 %415 to i64
  %418 = getelementptr inbounds i64, i64* %414, i64 %417
  store i64 %413, i64* %418, align 8
  br label %315

419:                                              ; preds = %409
  br label %420

420:                                              ; preds = %419, %305, %221
  br label %421

421:                                              ; preds = %420
  %422 = load i32, i32* %11, align 4
  %423 = add nsw i32 %422, 1
  store i32 %423, i32* %11, align 4
  br label %15

424:                                              ; preds = %15
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
