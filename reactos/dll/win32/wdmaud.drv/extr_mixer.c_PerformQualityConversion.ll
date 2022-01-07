; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wdmaud.drv/extr_mixer.c_PerformQualityConversion.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wdmaud.drv/extr_mixer.c_PerformQualityConversion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR_NOT_ENOUGH_MEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Not implemented conversion OldWidth %u NewWidth %u\0A\00", align 1
@ERROR_NOT_SUPPORTED = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PerformQualityConversion(i32* %0, i32 %1, i32 %2, i32 %3, i32** %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32*, align 8
  %31 = alloca i32*, align 8
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32** %4, i32*** %12, align 8
  store i32* %5, i32** %13, align 8
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp ne i32 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @ASSERT(i32 %35)
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %10, align 4
  %39 = sdiv i32 %38, 8
  %40 = sdiv i32 %37, %39
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp eq i32 %41, 8
  br i1 %42, label %43, label %87

43:                                               ; preds = %6
  %44 = load i32, i32* %11, align 4
  %45 = icmp eq i32 %44, 16
  br i1 %45, label %46, label %87

46:                                               ; preds = %43
  %47 = call i32 (...) @GetProcessHeap()
  %48 = load i32, i32* %14, align 4
  %49 = sext i32 %48 to i64
  %50 = mul i64 %49, 4
  %51 = trunc i64 %50 to i32
  %52 = call i8* @HeapAlloc(i32 %47, i32 0, i32 %51)
  %53 = bitcast i8* %52 to i32*
  store i32* %53, i32** %17, align 8
  %54 = load i32*, i32** %17, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %46
  %57 = load i32, i32* @ERROR_NOT_ENOUGH_MEMORY, align 4
  store i32 %57, i32* %7, align 4
  br label %341

58:                                               ; preds = %46
  store i32 0, i32* %15, align 4
  br label %59

59:                                               ; preds = %76, %58
  %60 = load i32, i32* %15, align 4
  %61 = load i32, i32* %14, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %79

63:                                               ; preds = %59
  %64 = load i32*, i32** %8, align 8
  %65 = load i32, i32* %15, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %16, align 4
  %69 = load i32, i32* %16, align 4
  %70 = mul nsw i32 %69, 2
  store i32 %70, i32* %16, align 4
  %71 = load i32, i32* %16, align 4
  %72 = load i32*, i32** %17, align 8
  %73 = load i32, i32* %15, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  store i32 %71, i32* %75, align 4
  br label %76

76:                                               ; preds = %63
  %77 = load i32, i32* %15, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %15, align 4
  br label %59

79:                                               ; preds = %59
  %80 = load i32*, i32** %17, align 8
  %81 = load i32**, i32*** %12, align 8
  store i32* %80, i32** %81, align 8
  %82 = load i32, i32* %14, align 4
  %83 = sext i32 %82 to i64
  %84 = mul i64 %83, 4
  %85 = trunc i64 %84 to i32
  %86 = load i32*, i32** %13, align 8
  store i32 %85, i32* %86, align 4
  br label %339

87:                                               ; preds = %43, %6
  %88 = load i32, i32* %10, align 4
  %89 = icmp eq i32 %88, 8
  br i1 %89, label %90, label %134

90:                                               ; preds = %87
  %91 = load i32, i32* %11, align 4
  %92 = icmp eq i32 %91, 32
  br i1 %92, label %93, label %134

93:                                               ; preds = %90
  %94 = call i32 (...) @GetProcessHeap()
  %95 = load i32, i32* %14, align 4
  %96 = sext i32 %95 to i64
  %97 = mul i64 %96, 4
  %98 = trunc i64 %97 to i32
  %99 = call i8* @HeapAlloc(i32 %94, i32 0, i32 %98)
  %100 = bitcast i8* %99 to i32*
  store i32* %100, i32** %19, align 8
  %101 = load i32*, i32** %19, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %105, label %103

103:                                              ; preds = %93
  %104 = load i32, i32* @ERROR_NOT_ENOUGH_MEMORY, align 4
  store i32 %104, i32* %7, align 4
  br label %341

105:                                              ; preds = %93
  store i32 0, i32* %15, align 4
  br label %106

106:                                              ; preds = %123, %105
  %107 = load i32, i32* %15, align 4
  %108 = load i32, i32* %14, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %126

110:                                              ; preds = %106
  %111 = load i32*, i32** %8, align 8
  %112 = load i32, i32* %15, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  store i32 %115, i32* %18, align 4
  %116 = load i32, i32* %18, align 4
  %117 = mul nsw i32 %116, 16777216
  store i32 %117, i32* %18, align 4
  %118 = load i32, i32* %18, align 4
  %119 = load i32*, i32** %19, align 8
  %120 = load i32, i32* %15, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  store i32 %118, i32* %122, align 4
  br label %123

123:                                              ; preds = %110
  %124 = load i32, i32* %15, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %15, align 4
  br label %106

126:                                              ; preds = %106
  %127 = load i32*, i32** %19, align 8
  %128 = load i32**, i32*** %12, align 8
  store i32* %127, i32** %128, align 8
  %129 = load i32, i32* %14, align 4
  %130 = sext i32 %129 to i64
  %131 = mul i64 %130, 4
  %132 = trunc i64 %131 to i32
  %133 = load i32*, i32** %13, align 8
  store i32 %132, i32* %133, align 4
  br label %338

134:                                              ; preds = %90, %87
  %135 = load i32, i32* %10, align 4
  %136 = icmp eq i32 %135, 16
  br i1 %136, label %137, label %182

137:                                              ; preds = %134
  %138 = load i32, i32* %11, align 4
  %139 = icmp eq i32 %138, 32
  br i1 %139, label %140, label %182

140:                                              ; preds = %137
  %141 = load i32*, i32** %8, align 8
  store i32* %141, i32** %21, align 8
  %142 = call i32 (...) @GetProcessHeap()
  %143 = load i32, i32* %14, align 4
  %144 = sext i32 %143 to i64
  %145 = mul i64 %144, 4
  %146 = trunc i64 %145 to i32
  %147 = call i8* @HeapAlloc(i32 %142, i32 0, i32 %146)
  %148 = bitcast i8* %147 to i32*
  store i32* %148, i32** %22, align 8
  %149 = load i32*, i32** %22, align 8
  %150 = icmp ne i32* %149, null
  br i1 %150, label %153, label %151

151:                                              ; preds = %140
  %152 = load i32, i32* @ERROR_NOT_ENOUGH_MEMORY, align 4
  store i32 %152, i32* %7, align 4
  br label %341

153:                                              ; preds = %140
  store i32 0, i32* %15, align 4
  br label %154

154:                                              ; preds = %171, %153
  %155 = load i32, i32* %15, align 4
  %156 = load i32, i32* %14, align 4
  %157 = icmp slt i32 %155, %156
  br i1 %157, label %158, label %174

158:                                              ; preds = %154
  %159 = load i32*, i32** %21, align 8
  %160 = load i32, i32* %15, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = load i32, i32* %162, align 4
  store i32 %163, i32* %20, align 4
  %164 = load i32, i32* %20, align 4
  %165 = mul nsw i32 %164, 65536
  store i32 %165, i32* %20, align 4
  %166 = load i32, i32* %20, align 4
  %167 = load i32*, i32** %22, align 8
  %168 = load i32, i32* %15, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  store i32 %166, i32* %170, align 4
  br label %171

171:                                              ; preds = %158
  %172 = load i32, i32* %15, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %15, align 4
  br label %154

174:                                              ; preds = %154
  %175 = load i32*, i32** %22, align 8
  %176 = load i32**, i32*** %12, align 8
  store i32* %175, i32** %176, align 8
  %177 = load i32, i32* %14, align 4
  %178 = sext i32 %177 to i64
  %179 = mul i64 %178, 4
  %180 = trunc i64 %179 to i32
  %181 = load i32*, i32** %13, align 8
  store i32 %180, i32* %181, align 4
  br label %337

182:                                              ; preds = %137, %134
  %183 = load i32, i32* %10, align 4
  %184 = icmp eq i32 %183, 16
  br i1 %184, label %185, label %231

185:                                              ; preds = %182
  %186 = load i32, i32* %11, align 4
  %187 = icmp eq i32 %186, 8
  br i1 %187, label %188, label %231

188:                                              ; preds = %185
  %189 = load i32*, i32** %8, align 8
  store i32* %189, i32** %24, align 8
  %190 = call i32 (...) @GetProcessHeap()
  %191 = load i32, i32* %14, align 4
  %192 = sext i32 %191 to i64
  %193 = mul i64 %192, 4
  %194 = trunc i64 %193 to i32
  %195 = call i8* @HeapAlloc(i32 %190, i32 0, i32 %194)
  %196 = bitcast i8* %195 to i32*
  store i32* %196, i32** %25, align 8
  %197 = load i32*, i32** %25, align 8
  %198 = icmp ne i32* %197, null
  br i1 %198, label %201, label %199

199:                                              ; preds = %188
  %200 = load i32, i32* @ERROR_NOT_ENOUGH_MEMORY, align 4
  store i32 %200, i32* %7, align 4
  br label %341

201:                                              ; preds = %188
  store i32 0, i32* %15, align 4
  br label %202

202:                                              ; preds = %220, %201
  %203 = load i32, i32* %15, align 4
  %204 = load i32, i32* %14, align 4
  %205 = icmp slt i32 %203, %204
  br i1 %205, label %206, label %223

206:                                              ; preds = %202
  %207 = load i32*, i32** %24, align 8
  %208 = load i32, i32* %15, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %207, i64 %209
  %211 = load i32, i32* %210, align 4
  store i32 %211, i32* %23, align 4
  %212 = load i32, i32* %23, align 4
  %213 = sdiv i32 %212, 256
  store i32 %213, i32* %23, align 4
  %214 = load i32, i32* %23, align 4
  %215 = and i32 %214, 255
  %216 = load i32*, i32** %25, align 8
  %217 = load i32, i32* %15, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %216, i64 %218
  store i32 %215, i32* %219, align 4
  br label %220

220:                                              ; preds = %206
  %221 = load i32, i32* %15, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %15, align 4
  br label %202

223:                                              ; preds = %202
  %224 = load i32*, i32** %25, align 8
  %225 = load i32**, i32*** %12, align 8
  store i32* %224, i32** %225, align 8
  %226 = load i32, i32* %14, align 4
  %227 = sext i32 %226 to i64
  %228 = mul i64 %227, 4
  %229 = trunc i64 %228 to i32
  %230 = load i32*, i32** %13, align 8
  store i32 %229, i32* %230, align 4
  br label %336

231:                                              ; preds = %185, %182
  %232 = load i32, i32* %10, align 4
  %233 = icmp eq i32 %232, 32
  br i1 %233, label %234, label %280

234:                                              ; preds = %231
  %235 = load i32, i32* %11, align 4
  %236 = icmp eq i32 %235, 8
  br i1 %236, label %237, label %280

237:                                              ; preds = %234
  %238 = load i32*, i32** %8, align 8
  store i32* %238, i32** %27, align 8
  %239 = call i32 (...) @GetProcessHeap()
  %240 = load i32, i32* %14, align 4
  %241 = sext i32 %240 to i64
  %242 = mul i64 %241, 4
  %243 = trunc i64 %242 to i32
  %244 = call i8* @HeapAlloc(i32 %239, i32 0, i32 %243)
  %245 = bitcast i8* %244 to i32*
  store i32* %245, i32** %28, align 8
  %246 = load i32*, i32** %28, align 8
  %247 = icmp ne i32* %246, null
  br i1 %247, label %250, label %248

248:                                              ; preds = %237
  %249 = load i32, i32* @ERROR_NOT_ENOUGH_MEMORY, align 4
  store i32 %249, i32* %7, align 4
  br label %341

250:                                              ; preds = %237
  store i32 0, i32* %15, align 4
  br label %251

251:                                              ; preds = %269, %250
  %252 = load i32, i32* %15, align 4
  %253 = load i32, i32* %14, align 4
  %254 = icmp slt i32 %252, %253
  br i1 %254, label %255, label %272

255:                                              ; preds = %251
  %256 = load i32*, i32** %27, align 8
  %257 = load i32, i32* %15, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i32, i32* %256, i64 %258
  %260 = load i32, i32* %259, align 4
  store i32 %260, i32* %26, align 4
  %261 = load i32, i32* %26, align 4
  %262 = sdiv i32 %261, 16777216
  store i32 %262, i32* %26, align 4
  %263 = load i32, i32* %26, align 4
  %264 = and i32 %263, 255
  %265 = load i32*, i32** %28, align 8
  %266 = load i32, i32* %15, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i32, i32* %265, i64 %267
  store i32 %264, i32* %268, align 4
  br label %269

269:                                              ; preds = %255
  %270 = load i32, i32* %15, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %15, align 4
  br label %251

272:                                              ; preds = %251
  %273 = load i32*, i32** %28, align 8
  %274 = load i32**, i32*** %12, align 8
  store i32* %273, i32** %274, align 8
  %275 = load i32, i32* %14, align 4
  %276 = sext i32 %275 to i64
  %277 = mul i64 %276, 4
  %278 = trunc i64 %277 to i32
  %279 = load i32*, i32** %13, align 8
  store i32 %278, i32* %279, align 4
  br label %335

280:                                              ; preds = %234, %231
  %281 = load i32, i32* %10, align 4
  %282 = icmp eq i32 %281, 32
  br i1 %282, label %283, label %329

283:                                              ; preds = %280
  %284 = load i32, i32* %11, align 4
  %285 = icmp eq i32 %284, 16
  br i1 %285, label %286, label %329

286:                                              ; preds = %283
  %287 = load i32*, i32** %8, align 8
  store i32* %287, i32** %30, align 8
  %288 = call i32 (...) @GetProcessHeap()
  %289 = load i32, i32* %14, align 4
  %290 = sext i32 %289 to i64
  %291 = mul i64 %290, 4
  %292 = trunc i64 %291 to i32
  %293 = call i8* @HeapAlloc(i32 %288, i32 0, i32 %292)
  %294 = bitcast i8* %293 to i32*
  store i32* %294, i32** %31, align 8
  %295 = load i32*, i32** %31, align 8
  %296 = icmp ne i32* %295, null
  br i1 %296, label %299, label %297

297:                                              ; preds = %286
  %298 = load i32, i32* @ERROR_NOT_ENOUGH_MEMORY, align 4
  store i32 %298, i32* %7, align 4
  br label %341

299:                                              ; preds = %286
  store i32 0, i32* %15, align 4
  br label %300

300:                                              ; preds = %318, %299
  %301 = load i32, i32* %15, align 4
  %302 = load i32, i32* %14, align 4
  %303 = icmp slt i32 %301, %302
  br i1 %303, label %304, label %321

304:                                              ; preds = %300
  %305 = load i32*, i32** %30, align 8
  %306 = load i32, i32* %15, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds i32, i32* %305, i64 %307
  %309 = load i32, i32* %308, align 4
  store i32 %309, i32* %29, align 4
  %310 = load i32, i32* %29, align 4
  %311 = sdiv i32 %310, 65536
  store i32 %311, i32* %29, align 4
  %312 = load i32, i32* %29, align 4
  %313 = and i32 %312, 65535
  %314 = load i32*, i32** %31, align 8
  %315 = load i32, i32* %15, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds i32, i32* %314, i64 %316
  store i32 %313, i32* %317, align 4
  br label %318

318:                                              ; preds = %304
  %319 = load i32, i32* %15, align 4
  %320 = add nsw i32 %319, 1
  store i32 %320, i32* %15, align 4
  br label %300

321:                                              ; preds = %300
  %322 = load i32*, i32** %31, align 8
  %323 = load i32**, i32*** %12, align 8
  store i32* %322, i32** %323, align 8
  %324 = load i32, i32* %14, align 4
  %325 = sext i32 %324 to i64
  %326 = mul i64 %325, 4
  %327 = trunc i64 %326 to i32
  %328 = load i32*, i32** %13, align 8
  store i32 %327, i32* %328, align 4
  br label %334

329:                                              ; preds = %283, %280
  %330 = load i32, i32* %10, align 4
  %331 = load i32, i32* %11, align 4
  %332 = call i32 @DPRINT1(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %330, i32 %331)
  %333 = load i32, i32* @ERROR_NOT_SUPPORTED, align 4
  store i32 %333, i32* %7, align 4
  br label %341

334:                                              ; preds = %321
  br label %335

335:                                              ; preds = %334, %272
  br label %336

336:                                              ; preds = %335, %223
  br label %337

337:                                              ; preds = %336, %174
  br label %338

338:                                              ; preds = %337, %126
  br label %339

339:                                              ; preds = %338, %79
  %340 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %340, i32* %7, align 4
  br label %341

341:                                              ; preds = %339, %329, %297, %248, %199, %151, %103, %56
  %342 = load i32, i32* %7, align 4
  ret i32 %342
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @DPRINT1(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
