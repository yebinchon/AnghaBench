; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wdmaud.drv/extr_mixer.c_PerformChannelConversion.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wdmaud.drv/extr_mixer.c_PerformChannelConversion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [56 x i32] [i32 80, i32 101, i32 114, i32 102, i32 111, i32 114, i32 109, i32 67, i32 104, i32 97, i32 110, i32 110, i32 101, i32 108, i32 67, i32 111, i32 110, i32 118, i32 101, i32 114, i32 115, i32 105, i32 111, i32 110, i32 32, i32 79, i32 108, i32 100, i32 67, i32 104, i32 97, i32 110, i32 110, i32 101, i32 108, i32 115, i32 32, i32 37, i32 117, i32 32, i32 78, i32 101, i32 119, i32 67, i32 104, i32 97, i32 110, i32 110, i32 101, i32 108, i32 115, i32 32, i32 37, i32 117, i32 10, i32 0], align 4
@ERROR_NOT_ENOUGH_MEMORY = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PerformChannelConversion(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32** %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32**, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32*, align 8
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32** %5, i32*** %14, align 8
  store i32* %6, i32** %15, align 8
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %13, align 4
  %30 = sdiv i32 %29, 8
  %31 = sdiv i32 %28, %30
  %32 = load i32, i32* %11, align 4
  %33 = sdiv i32 %31, %32
  store i32 %33, i32* %16, align 4
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %12, align 4
  %36 = call i32 @SND_TRACE(i8* bitcast ([56 x i32]* @.str to i8*), i32 %34, i32 %35)
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp sgt i32 %37, %38
  br i1 %39, label %40, label %340

40:                                               ; preds = %7
  %41 = load i32, i32* %13, align 4
  %42 = icmp eq i32 %41, 8
  br i1 %42, label %43, label %114

43:                                               ; preds = %40
  %44 = call i32 (...) @GetProcessHeap()
  %45 = load i32, i32* %16, align 4
  %46 = load i32, i32* %12, align 4
  %47 = mul nsw i32 %45, %46
  %48 = call i32* @HeapAlloc(i32 %44, i32 0, i32 %47)
  store i32* %48, i32** %19, align 8
  %49 = load i32*, i32** %19, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %43
  %52 = load i32, i32* @ERROR_NOT_ENOUGH_MEMORY, align 4
  store i32 %52, i32* %8, align 4
  br label %387

53:                                               ; preds = %43
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %54

54:                                               ; preds = %100, %53
  %55 = load i32, i32* %18, align 4
  %56 = load i32, i32* %16, align 4
  %57 = load i32, i32* %11, align 4
  %58 = mul nsw i32 %56, %57
  %59 = icmp slt i32 %55, %58
  br i1 %59, label %60, label %107

60:                                               ; preds = %54
  store i32 0, i32* %20, align 4
  %61 = load i32*, i32** %19, align 8
  %62 = load i32, i32* %17, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32*, i32** %9, align 8
  %66 = load i32, i32* %18, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  %71 = mul i64 %70, 4
  %72 = trunc i64 %71 to i32
  %73 = call i32 @RtlMoveMemory(i32* %64, i32* %68, i32 %72)
  br label %74

74:                                               ; preds = %92, %60
  %75 = load i32*, i32** %9, align 8
  %76 = load i32, i32* %18, align 4
  %77 = load i32, i32* %20, align 4
  %78 = load i32, i32* %11, align 4
  %79 = srem i32 %77, %78
  %80 = add nsw i32 %76, %79
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %75, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load i32*, i32** %19, align 8
  %85 = load i32, i32* %17, align 4
  %86 = load i32, i32* %11, align 4
  %87 = add nsw i32 %85, %86
  %88 = load i32, i32* %20, align 4
  %89 = add nsw i32 %87, %88
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %84, i64 %90
  store i32 %83, i32* %91, align 4
  br label %92

92:                                               ; preds = %74
  %93 = load i32, i32* %20, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %20, align 4
  %95 = load i32, i32* %12, align 4
  %96 = load i32, i32* %11, align 4
  %97 = sub nsw i32 %95, %96
  %98 = icmp slt i32 %93, %97
  br i1 %98, label %74, label %99

99:                                               ; preds = %92
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %12, align 4
  %102 = load i32, i32* %17, align 4
  %103 = add nsw i32 %102, %101
  store i32 %103, i32* %17, align 4
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* %18, align 4
  %106 = add nsw i32 %105, %104
  store i32 %106, i32* %18, align 4
  br label %54

107:                                              ; preds = %54
  %108 = load i32*, i32** %19, align 8
  %109 = load i32**, i32*** %14, align 8
  store i32* %108, i32** %109, align 8
  %110 = load i32, i32* %16, align 4
  %111 = load i32, i32* %12, align 4
  %112 = mul nsw i32 %110, %111
  %113 = load i32*, i32** %15, align 8
  store i32 %112, i32* %113, align 4
  br label %339

114:                                              ; preds = %40
  %115 = load i32, i32* %13, align 4
  %116 = icmp eq i32 %115, 16
  br i1 %116, label %117, label %188

117:                                              ; preds = %114
  %118 = call i32 (...) @GetProcessHeap()
  %119 = load i32, i32* %16, align 4
  %120 = load i32, i32* %12, align 4
  %121 = mul nsw i32 %119, %120
  %122 = call i32* @HeapAlloc(i32 %118, i32 0, i32 %121)
  store i32* %122, i32** %21, align 8
  %123 = load i32*, i32** %21, align 8
  %124 = icmp ne i32* %123, null
  br i1 %124, label %127, label %125

125:                                              ; preds = %117
  %126 = load i32, i32* @ERROR_NOT_ENOUGH_MEMORY, align 4
  store i32 %126, i32* %8, align 4
  br label %387

127:                                              ; preds = %117
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %128

128:                                              ; preds = %174, %127
  %129 = load i32, i32* %18, align 4
  %130 = load i32, i32* %16, align 4
  %131 = load i32, i32* %11, align 4
  %132 = mul nsw i32 %130, %131
  %133 = icmp slt i32 %129, %132
  br i1 %133, label %134, label %181

134:                                              ; preds = %128
  store i32 0, i32* %22, align 4
  %135 = load i32*, i32** %21, align 8
  %136 = load i32, i32* %17, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = load i32*, i32** %9, align 8
  %140 = load i32, i32* %18, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = load i32, i32* %11, align 4
  %144 = sext i32 %143 to i64
  %145 = mul i64 %144, 4
  %146 = trunc i64 %145 to i32
  %147 = call i32 @RtlMoveMemory(i32* %138, i32* %142, i32 %146)
  br label %148

148:                                              ; preds = %166, %134
  %149 = load i32*, i32** %9, align 8
  %150 = load i32, i32* %18, align 4
  %151 = load i32, i32* %22, align 4
  %152 = load i32, i32* %11, align 4
  %153 = srem i32 %151, %152
  %154 = add nsw i32 %150, %153
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %149, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = load i32*, i32** %21, align 8
  %159 = load i32, i32* %17, align 4
  %160 = load i32, i32* %11, align 4
  %161 = add nsw i32 %159, %160
  %162 = load i32, i32* %22, align 4
  %163 = add nsw i32 %161, %162
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %158, i64 %164
  store i32 %157, i32* %165, align 4
  br label %166

166:                                              ; preds = %148
  %167 = load i32, i32* %22, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %22, align 4
  %169 = load i32, i32* %12, align 4
  %170 = load i32, i32* %11, align 4
  %171 = sub nsw i32 %169, %170
  %172 = icmp slt i32 %167, %171
  br i1 %172, label %148, label %173

173:                                              ; preds = %166
  br label %174

174:                                              ; preds = %173
  %175 = load i32, i32* %12, align 4
  %176 = load i32, i32* %17, align 4
  %177 = add nsw i32 %176, %175
  store i32 %177, i32* %17, align 4
  %178 = load i32, i32* %11, align 4
  %179 = load i32, i32* %18, align 4
  %180 = add nsw i32 %179, %178
  store i32 %180, i32* %18, align 4
  br label %128

181:                                              ; preds = %128
  %182 = load i32*, i32** %21, align 8
  %183 = load i32**, i32*** %14, align 8
  store i32* %182, i32** %183, align 8
  %184 = load i32, i32* %16, align 4
  %185 = load i32, i32* %12, align 4
  %186 = mul nsw i32 %184, %185
  %187 = load i32*, i32** %15, align 8
  store i32 %186, i32* %187, align 4
  br label %338

188:                                              ; preds = %114
  %189 = load i32, i32* %13, align 4
  %190 = icmp eq i32 %189, 24
  br i1 %190, label %191, label %262

191:                                              ; preds = %188
  %192 = call i32 (...) @GetProcessHeap()
  %193 = load i32, i32* %16, align 4
  %194 = load i32, i32* %12, align 4
  %195 = mul nsw i32 %193, %194
  %196 = call i32* @HeapAlloc(i32 %192, i32 0, i32 %195)
  store i32* %196, i32** %23, align 8
  %197 = load i32*, i32** %23, align 8
  %198 = icmp ne i32* %197, null
  br i1 %198, label %201, label %199

199:                                              ; preds = %191
  %200 = load i32, i32* @ERROR_NOT_ENOUGH_MEMORY, align 4
  store i32 %200, i32* %8, align 4
  br label %387

201:                                              ; preds = %191
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %202

202:                                              ; preds = %248, %201
  %203 = load i32, i32* %18, align 4
  %204 = load i32, i32* %16, align 4
  %205 = load i32, i32* %11, align 4
  %206 = mul nsw i32 %204, %205
  %207 = icmp slt i32 %203, %206
  br i1 %207, label %208, label %255

208:                                              ; preds = %202
  store i32 0, i32* %24, align 4
  %209 = load i32*, i32** %23, align 8
  %210 = load i32, i32* %17, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %209, i64 %211
  %213 = load i32*, i32** %9, align 8
  %214 = load i32, i32* %18, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32, i32* %213, i64 %215
  %217 = load i32, i32* %11, align 4
  %218 = mul nsw i32 %217, 3
  %219 = call i32 @RtlMoveMemory(i32* %212, i32* %216, i32 %218)
  br label %220

220:                                              ; preds = %240, %208
  %221 = load i32*, i32** %23, align 8
  %222 = load i32, i32* %17, align 4
  %223 = load i32, i32* %11, align 4
  %224 = add nsw i32 %222, %223
  %225 = load i32, i32* %24, align 4
  %226 = add nsw i32 %224, %225
  %227 = mul nsw i32 %226, 3
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %221, i64 %228
  %230 = load i32*, i32** %9, align 8
  %231 = load i32, i32* %18, align 4
  %232 = load i32, i32* %24, align 4
  %233 = load i32, i32* %11, align 4
  %234 = srem i32 %232, %233
  %235 = add nsw i32 %231, %234
  %236 = mul nsw i32 %235, 3
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32, i32* %230, i64 %237
  %239 = call i32 @RtlMoveMemory(i32* %229, i32* %238, i32 3)
  br label %240

240:                                              ; preds = %220
  %241 = load i32, i32* %24, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %24, align 4
  %243 = load i32, i32* %12, align 4
  %244 = load i32, i32* %11, align 4
  %245 = sub nsw i32 %243, %244
  %246 = icmp slt i32 %241, %245
  br i1 %246, label %220, label %247

247:                                              ; preds = %240
  br label %248

248:                                              ; preds = %247
  %249 = load i32, i32* %12, align 4
  %250 = load i32, i32* %17, align 4
  %251 = add nsw i32 %250, %249
  store i32 %251, i32* %17, align 4
  %252 = load i32, i32* %11, align 4
  %253 = load i32, i32* %18, align 4
  %254 = add nsw i32 %253, %252
  store i32 %254, i32* %18, align 4
  br label %202

255:                                              ; preds = %202
  %256 = load i32*, i32** %23, align 8
  %257 = load i32**, i32*** %14, align 8
  store i32* %256, i32** %257, align 8
  %258 = load i32, i32* %16, align 4
  %259 = load i32, i32* %12, align 4
  %260 = mul nsw i32 %258, %259
  %261 = load i32*, i32** %15, align 8
  store i32 %260, i32* %261, align 4
  br label %337

262:                                              ; preds = %188
  %263 = load i32, i32* %13, align 4
  %264 = icmp eq i32 %263, 32
  br i1 %264, label %265, label %336

265:                                              ; preds = %262
  %266 = call i32 (...) @GetProcessHeap()
  %267 = load i32, i32* %16, align 4
  %268 = load i32, i32* %12, align 4
  %269 = mul nsw i32 %267, %268
  %270 = call i32* @HeapAlloc(i32 %266, i32 0, i32 %269)
  store i32* %270, i32** %25, align 8
  %271 = load i32*, i32** %25, align 8
  %272 = icmp ne i32* %271, null
  br i1 %272, label %275, label %273

273:                                              ; preds = %265
  %274 = load i32, i32* @ERROR_NOT_ENOUGH_MEMORY, align 4
  store i32 %274, i32* %8, align 4
  br label %387

275:                                              ; preds = %265
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %276

276:                                              ; preds = %322, %275
  %277 = load i32, i32* %18, align 4
  %278 = load i32, i32* %16, align 4
  %279 = load i32, i32* %11, align 4
  %280 = mul nsw i32 %278, %279
  %281 = icmp slt i32 %277, %280
  br i1 %281, label %282, label %329

282:                                              ; preds = %276
  store i32 0, i32* %26, align 4
  %283 = load i32*, i32** %25, align 8
  %284 = load i32, i32* %17, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i32, i32* %283, i64 %285
  %287 = load i32*, i32** %9, align 8
  %288 = load i32, i32* %18, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i32, i32* %287, i64 %289
  %291 = load i32, i32* %11, align 4
  %292 = sext i32 %291 to i64
  %293 = mul i64 %292, 4
  %294 = trunc i64 %293 to i32
  %295 = call i32 @RtlMoveMemory(i32* %286, i32* %290, i32 %294)
  br label %296

296:                                              ; preds = %314, %282
  %297 = load i32*, i32** %9, align 8
  %298 = load i32, i32* %18, align 4
  %299 = load i32, i32* %26, align 4
  %300 = load i32, i32* %11, align 4
  %301 = srem i32 %299, %300
  %302 = add nsw i32 %298, %301
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds i32, i32* %297, i64 %303
  %305 = load i32, i32* %304, align 4
  %306 = load i32*, i32** %25, align 8
  %307 = load i32, i32* %17, align 4
  %308 = load i32, i32* %11, align 4
  %309 = add nsw i32 %307, %308
  %310 = load i32, i32* %26, align 4
  %311 = add nsw i32 %309, %310
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i32, i32* %306, i64 %312
  store i32 %305, i32* %313, align 4
  br label %314

314:                                              ; preds = %296
  %315 = load i32, i32* %26, align 4
  %316 = add nsw i32 %315, 1
  store i32 %316, i32* %26, align 4
  %317 = load i32, i32* %12, align 4
  %318 = load i32, i32* %11, align 4
  %319 = sub nsw i32 %317, %318
  %320 = icmp slt i32 %315, %319
  br i1 %320, label %296, label %321

321:                                              ; preds = %314
  br label %322

322:                                              ; preds = %321
  %323 = load i32, i32* %12, align 4
  %324 = load i32, i32* %17, align 4
  %325 = add nsw i32 %324, %323
  store i32 %325, i32* %17, align 4
  %326 = load i32, i32* %11, align 4
  %327 = load i32, i32* %18, align 4
  %328 = add nsw i32 %327, %326
  store i32 %328, i32* %18, align 4
  br label %276

329:                                              ; preds = %276
  %330 = load i32*, i32** %25, align 8
  %331 = load i32**, i32*** %14, align 8
  store i32* %330, i32** %331, align 8
  %332 = load i32, i32* %16, align 4
  %333 = load i32, i32* %12, align 4
  %334 = mul nsw i32 %332, %333
  %335 = load i32*, i32** %15, align 8
  store i32 %334, i32* %335, align 4
  br label %336

336:                                              ; preds = %329, %262
  br label %337

337:                                              ; preds = %336, %255
  br label %338

338:                                              ; preds = %337, %181
  br label %339

339:                                              ; preds = %338, %107
  br label %385

340:                                              ; preds = %7
  %341 = call i32 (...) @GetProcessHeap()
  %342 = load i32, i32* %16, align 4
  %343 = load i32, i32* %12, align 4
  %344 = mul nsw i32 %342, %343
  %345 = call i32* @HeapAlloc(i32 %341, i32 0, i32 %344)
  store i32* %345, i32** %27, align 8
  %346 = load i32*, i32** %27, align 8
  %347 = icmp ne i32* %346, null
  br i1 %347, label %350, label %348

348:                                              ; preds = %340
  %349 = load i32, i32* @ERROR_NOT_ENOUGH_MEMORY, align 4
  store i32 %349, i32* %8, align 4
  br label %387

350:                                              ; preds = %340
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %351

351:                                              ; preds = %371, %350
  %352 = load i32, i32* %18, align 4
  %353 = load i32, i32* %16, align 4
  %354 = load i32, i32* %11, align 4
  %355 = mul nsw i32 %353, %354
  %356 = icmp slt i32 %352, %355
  br i1 %356, label %357, label %378

357:                                              ; preds = %351
  %358 = load i32*, i32** %27, align 8
  %359 = load i32, i32* %17, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds i32, i32* %358, i64 %360
  %362 = load i32*, i32** %9, align 8
  %363 = load i32, i32* %18, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds i32, i32* %362, i64 %364
  %366 = load i32, i32* %12, align 4
  %367 = load i32, i32* %13, align 4
  %368 = sdiv i32 %367, 8
  %369 = mul nsw i32 %366, %368
  %370 = call i32 @RtlMoveMemory(i32* %361, i32* %365, i32 %369)
  br label %371

371:                                              ; preds = %357
  %372 = load i32, i32* %12, align 4
  %373 = load i32, i32* %17, align 4
  %374 = add nsw i32 %373, %372
  store i32 %374, i32* %17, align 4
  %375 = load i32, i32* %11, align 4
  %376 = load i32, i32* %18, align 4
  %377 = add nsw i32 %376, %375
  store i32 %377, i32* %18, align 4
  br label %351

378:                                              ; preds = %351
  %379 = load i32*, i32** %27, align 8
  %380 = load i32**, i32*** %14, align 8
  store i32* %379, i32** %380, align 8
  %381 = load i32, i32* %16, align 4
  %382 = load i32, i32* %12, align 4
  %383 = mul nsw i32 %381, %382
  %384 = load i32*, i32** %15, align 8
  store i32 %383, i32* %384, align 4
  br label %385

385:                                              ; preds = %378, %339
  %386 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %386, i32* %8, align 4
  br label %387

387:                                              ; preds = %385, %348, %273, %199, %125, %51
  %388 = load i32, i32* %8, align 4
  ret i32 %388
}

declare dso_local i32 @SND_TRACE(i8*, i32, i32) #1

declare dso_local i32* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @RtlMoveMemory(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
