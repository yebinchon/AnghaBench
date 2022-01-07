; ModuleID = '/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb_compress_chunk.c'
source_filename = "/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb_compress_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stb__window = common dso_local global i32 0, align 4
@stb__running_adler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32, i32*, i32**, i64)* @stb_compress_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stb_compress_chunk(i32* %0, i32* %1, i32* %2, i32 %3, i32* %4, i32** %5, i64 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32**, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32** %5, i32*** %13, align 8
  store i64 %6, i64* %14, align 8
  %28 = load i32, i32* @stb__window, align 4
  store i32 %28, i32* %15, align 4
  %29 = load i32*, i32** %9, align 8
  %30 = load i32*, i32** %12, align 8
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = sub i64 0, %32
  %34 = getelementptr inbounds i32, i32* %29, i64 %33
  store i32* %34, i32** %17, align 8
  %35 = load i32*, i32** %9, align 8
  store i32* %35, i32** %18, align 8
  br label %36

36:                                               ; preds = %537, %7
  %37 = load i32*, i32** %18, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = icmp ult i32* %37, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %36
  %44 = load i32*, i32** %18, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 12
  %46 = load i32*, i32** %10, align 8
  %47 = icmp ult i32* %45, %46
  br label %48

48:                                               ; preds = %43, %36
  %49 = phi i1 [ false, %36 ], [ %47, %43 ]
  br i1 %49, label %50, label %538

50:                                               ; preds = %48
  store i32 2, i32* %26, align 4
  store i32 0, i32* %27, align 4
  %51 = load i32*, i32** %18, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 65536
  %53 = load i32*, i32** %10, align 8
  %54 = icmp ugt i32* %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %50
  %56 = load i32*, i32** %10, align 8
  %57 = load i32*, i32** %18, align 8
  %58 = ptrtoint i32* %56 to i64
  %59 = ptrtoint i32* %57 to i64
  %60 = sub i64 %58, %59
  %61 = sdiv exact i64 %60, 4
  store i64 %61, i64* %16, align 8
  br label %63

62:                                               ; preds = %50
  store i64 65536, i64* %16, align 8
  br label %63

63:                                               ; preds = %62, %55
  %64 = load i32*, i32** %18, align 8
  %65 = call i64 @stb__hc3(i32* %64, i32 0, i32 1, i32 2)
  store i64 %65, i64* %24, align 8
  %66 = load i64, i64* %24, align 8
  %67 = load i64, i64* %24, align 8
  %68 = lshr i64 %67, 16
  %69 = add i64 %66, %68
  %70 = load i64, i64* %14, align 8
  %71 = and i64 %69, %70
  store i64 %71, i64* %20, align 8
  %72 = load i32**, i32*** %13, align 8
  %73 = load i64, i64* %20, align 8
  %74 = getelementptr inbounds i32*, i32** %72, i64 %73
  %75 = load i32*, i32** %74, align 8
  store i32* %75, i32** %25, align 8
  %76 = load i32*, i32** %25, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %120

78:                                               ; preds = %63
  %79 = load i32*, i32** %25, align 8
  %80 = load i32*, i32** %18, align 8
  %81 = load i64, i64* %16, align 8
  %82 = call i32 (i32*, i32*, i64, ...) bitcast (i32 (...)* @stb_matchlen to i32 (i32*, i32*, i64, ...)*)(i32* %79, i32* %80, i64 %81)
  store i32 %82, i32* %19, align 4
  %83 = load i32, i32* %26, align 4
  %84 = icmp sgt i32 %82, %83
  br i1 %84, label %85, label %119

85:                                               ; preds = %78
  %86 = load i32*, i32** %18, align 8
  %87 = load i32*, i32** %25, align 8
  %88 = ptrtoint i32* %86 to i64
  %89 = ptrtoint i32* %87 to i64
  %90 = sub i64 %88, %89
  %91 = sdiv exact i64 %90, 4
  %92 = trunc i64 %91 to i32
  %93 = load i32, i32* %15, align 4
  %94 = icmp sle i32 %92, %93
  br i1 %94, label %95, label %118

95:                                               ; preds = %85
  %96 = load i32, i32* %19, align 4
  %97 = icmp sgt i32 %96, 9
  br i1 %97, label %109, label %98

98:                                               ; preds = %95
  %99 = load i32, i32* %19, align 4
  %100 = load i32*, i32** %18, align 8
  %101 = load i32*, i32** %25, align 8
  %102 = ptrtoint i32* %100 to i64
  %103 = ptrtoint i32* %101 to i64
  %104 = sub i64 %102, %103
  %105 = sdiv exact i64 %104, 4
  %106 = trunc i64 %105 to i32
  %107 = call i32 (i32, i32, ...) bitcast (i32 (...)* @stb_not_crap to i32 (i32, i32, ...)*)(i32 %99, i32 %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %98, %95
  %110 = load i32, i32* %19, align 4
  store i32 %110, i32* %26, align 4
  %111 = load i32*, i32** %18, align 8
  %112 = load i32*, i32** %25, align 8
  %113 = ptrtoint i32* %111 to i64
  %114 = ptrtoint i32* %112 to i64
  %115 = sub i64 %113, %114
  %116 = sdiv exact i64 %115, 4
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %27, align 4
  br label %118

118:                                              ; preds = %109, %98, %85
  br label %119

119:                                              ; preds = %118, %78
  br label %120

120:                                              ; preds = %119, %63
  %121 = load i32*, i32** %18, align 8
  %122 = load i64, i64* %24, align 8
  %123 = call i64 @stb__hc2(i32* %121, i64 %122, i32 3, i32 4)
  store i64 %123, i64* %24, align 8
  %124 = load i64, i64* %24, align 8
  %125 = load i64, i64* %24, align 8
  %126 = lshr i64 %125, 16
  %127 = add i64 %124, %126
  %128 = load i64, i64* %14, align 8
  %129 = and i64 %127, %128
  store i64 %129, i64* %21, align 8
  %130 = load i32*, i32** %18, align 8
  %131 = load i64, i64* %24, align 8
  %132 = call i64 @stb__hc2(i32* %130, i64 %131, i32 5, i32 6)
  store i64 %132, i64* %24, align 8
  %133 = load i32**, i32*** %13, align 8
  %134 = load i64, i64* %21, align 8
  %135 = getelementptr inbounds i32*, i32** %133, i64 %134
  %136 = load i32*, i32** %135, align 8
  store i32* %136, i32** %25, align 8
  %137 = load i32*, i32** %25, align 8
  %138 = icmp ne i32* %137, null
  br i1 %138, label %139, label %194

139:                                              ; preds = %120
  br i1 true, label %140, label %150

140:                                              ; preds = %139
  %141 = load i32, i32* %27, align 4
  %142 = load i32*, i32** %18, align 8
  %143 = load i32*, i32** %25, align 8
  %144 = ptrtoint i32* %142 to i64
  %145 = ptrtoint i32* %143 to i64
  %146 = sub i64 %144, %145
  %147 = sdiv exact i64 %146, 4
  %148 = trunc i64 %147 to i32
  %149 = icmp ne i32 %141, %148
  br i1 %149, label %151, label %193

150:                                              ; preds = %139
  br i1 true, label %151, label %193

151:                                              ; preds = %150, %140
  %152 = load i32*, i32** %25, align 8
  %153 = load i32*, i32** %18, align 8
  %154 = load i64, i64* %16, align 8
  %155 = call i32 (i32*, i32*, i64, ...) bitcast (i32 (...)* @stb_matchlen to i32 (i32*, i32*, i64, ...)*)(i32* %152, i32* %153, i64 %154)
  store i32 %155, i32* %19, align 4
  %156 = load i32, i32* %26, align 4
  %157 = icmp sgt i32 %155, %156
  br i1 %157, label %158, label %192

158:                                              ; preds = %151
  %159 = load i32*, i32** %18, align 8
  %160 = load i32*, i32** %25, align 8
  %161 = ptrtoint i32* %159 to i64
  %162 = ptrtoint i32* %160 to i64
  %163 = sub i64 %161, %162
  %164 = sdiv exact i64 %163, 4
  %165 = trunc i64 %164 to i32
  %166 = load i32, i32* %15, align 4
  %167 = icmp sle i32 %165, %166
  br i1 %167, label %168, label %191

168:                                              ; preds = %158
  %169 = load i32, i32* %19, align 4
  %170 = icmp sgt i32 %169, 9
  br i1 %170, label %182, label %171

171:                                              ; preds = %168
  %172 = load i32, i32* %19, align 4
  %173 = load i32*, i32** %18, align 8
  %174 = load i32*, i32** %25, align 8
  %175 = ptrtoint i32* %173 to i64
  %176 = ptrtoint i32* %174 to i64
  %177 = sub i64 %175, %176
  %178 = sdiv exact i64 %177, 4
  %179 = trunc i64 %178 to i32
  %180 = call i32 (i32, i32, ...) bitcast (i32 (...)* @stb_not_crap to i32 (i32, i32, ...)*)(i32 %172, i32 %179)
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %191

182:                                              ; preds = %171, %168
  %183 = load i32, i32* %19, align 4
  store i32 %183, i32* %26, align 4
  %184 = load i32*, i32** %18, align 8
  %185 = load i32*, i32** %25, align 8
  %186 = ptrtoint i32* %184 to i64
  %187 = ptrtoint i32* %185 to i64
  %188 = sub i64 %186, %187
  %189 = sdiv exact i64 %188, 4
  %190 = trunc i64 %189 to i32
  store i32 %190, i32* %27, align 4
  br label %191

191:                                              ; preds = %182, %171, %158
  br label %192

192:                                              ; preds = %191, %151
  br label %193

193:                                              ; preds = %192, %150, %140
  br label %194

194:                                              ; preds = %193, %120
  %195 = load i32*, i32** %18, align 8
  %196 = load i64, i64* %24, align 8
  %197 = call i64 @stb__hc2(i32* %195, i64 %196, i32 7, i32 8)
  store i64 %197, i64* %24, align 8
  %198 = load i64, i64* %24, align 8
  %199 = load i64, i64* %24, align 8
  %200 = lshr i64 %199, 16
  %201 = add i64 %198, %200
  %202 = load i64, i64* %14, align 8
  %203 = and i64 %201, %202
  store i64 %203, i64* %22, align 8
  %204 = load i32*, i32** %18, align 8
  %205 = load i64, i64* %24, align 8
  %206 = call i64 @stb__hc2(i32* %204, i64 %205, i32 9, i32 10)
  store i64 %206, i64* %24, align 8
  %207 = load i32**, i32*** %13, align 8
  %208 = load i64, i64* %22, align 8
  %209 = getelementptr inbounds i32*, i32** %207, i64 %208
  %210 = load i32*, i32** %209, align 8
  store i32* %210, i32** %25, align 8
  %211 = load i32*, i32** %25, align 8
  %212 = icmp ne i32* %211, null
  br i1 %212, label %213, label %268

213:                                              ; preds = %194
  br i1 true, label %214, label %224

214:                                              ; preds = %213
  %215 = load i32, i32* %27, align 4
  %216 = load i32*, i32** %18, align 8
  %217 = load i32*, i32** %25, align 8
  %218 = ptrtoint i32* %216 to i64
  %219 = ptrtoint i32* %217 to i64
  %220 = sub i64 %218, %219
  %221 = sdiv exact i64 %220, 4
  %222 = trunc i64 %221 to i32
  %223 = icmp ne i32 %215, %222
  br i1 %223, label %225, label %267

224:                                              ; preds = %213
  br i1 true, label %225, label %267

225:                                              ; preds = %224, %214
  %226 = load i32*, i32** %25, align 8
  %227 = load i32*, i32** %18, align 8
  %228 = load i64, i64* %16, align 8
  %229 = call i32 (i32*, i32*, i64, ...) bitcast (i32 (...)* @stb_matchlen to i32 (i32*, i32*, i64, ...)*)(i32* %226, i32* %227, i64 %228)
  store i32 %229, i32* %19, align 4
  %230 = load i32, i32* %26, align 4
  %231 = icmp sgt i32 %229, %230
  br i1 %231, label %232, label %266

232:                                              ; preds = %225
  %233 = load i32*, i32** %18, align 8
  %234 = load i32*, i32** %25, align 8
  %235 = ptrtoint i32* %233 to i64
  %236 = ptrtoint i32* %234 to i64
  %237 = sub i64 %235, %236
  %238 = sdiv exact i64 %237, 4
  %239 = trunc i64 %238 to i32
  %240 = load i32, i32* %15, align 4
  %241 = icmp sle i32 %239, %240
  br i1 %241, label %242, label %265

242:                                              ; preds = %232
  %243 = load i32, i32* %19, align 4
  %244 = icmp sgt i32 %243, 9
  br i1 %244, label %256, label %245

245:                                              ; preds = %242
  %246 = load i32, i32* %19, align 4
  %247 = load i32*, i32** %18, align 8
  %248 = load i32*, i32** %25, align 8
  %249 = ptrtoint i32* %247 to i64
  %250 = ptrtoint i32* %248 to i64
  %251 = sub i64 %249, %250
  %252 = sdiv exact i64 %251, 4
  %253 = trunc i64 %252 to i32
  %254 = call i32 (i32, i32, ...) bitcast (i32 (...)* @stb_not_crap to i32 (i32, i32, ...)*)(i32 %246, i32 %253)
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %265

256:                                              ; preds = %245, %242
  %257 = load i32, i32* %19, align 4
  store i32 %257, i32* %26, align 4
  %258 = load i32*, i32** %18, align 8
  %259 = load i32*, i32** %25, align 8
  %260 = ptrtoint i32* %258 to i64
  %261 = ptrtoint i32* %259 to i64
  %262 = sub i64 %260, %261
  %263 = sdiv exact i64 %262, 4
  %264 = trunc i64 %263 to i32
  store i32 %264, i32* %27, align 4
  br label %265

265:                                              ; preds = %256, %245, %232
  br label %266

266:                                              ; preds = %265, %225
  br label %267

267:                                              ; preds = %266, %224, %214
  br label %268

268:                                              ; preds = %267, %194
  %269 = load i32*, i32** %18, align 8
  %270 = load i64, i64* %24, align 8
  %271 = call i64 @stb__hc2(i32* %269, i64 %270, i32 11, i32 12)
  store i64 %271, i64* %24, align 8
  %272 = load i64, i64* %24, align 8
  %273 = load i64, i64* %24, align 8
  %274 = lshr i64 %273, 16
  %275 = add i64 %272, %274
  %276 = load i64, i64* %14, align 8
  %277 = and i64 %275, %276
  store i64 %277, i64* %23, align 8
  %278 = load i32**, i32*** %13, align 8
  %279 = load i64, i64* %23, align 8
  %280 = getelementptr inbounds i32*, i32** %278, i64 %279
  %281 = load i32*, i32** %280, align 8
  store i32* %281, i32** %25, align 8
  %282 = load i32*, i32** %25, align 8
  %283 = icmp ne i32* %282, null
  br i1 %283, label %284, label %339

284:                                              ; preds = %268
  br i1 true, label %285, label %295

285:                                              ; preds = %284
  %286 = load i32, i32* %27, align 4
  %287 = load i32*, i32** %18, align 8
  %288 = load i32*, i32** %25, align 8
  %289 = ptrtoint i32* %287 to i64
  %290 = ptrtoint i32* %288 to i64
  %291 = sub i64 %289, %290
  %292 = sdiv exact i64 %291, 4
  %293 = trunc i64 %292 to i32
  %294 = icmp ne i32 %286, %293
  br i1 %294, label %296, label %338

295:                                              ; preds = %284
  br i1 true, label %296, label %338

296:                                              ; preds = %295, %285
  %297 = load i32*, i32** %25, align 8
  %298 = load i32*, i32** %18, align 8
  %299 = load i64, i64* %16, align 8
  %300 = call i32 (i32*, i32*, i64, ...) bitcast (i32 (...)* @stb_matchlen to i32 (i32*, i32*, i64, ...)*)(i32* %297, i32* %298, i64 %299)
  store i32 %300, i32* %19, align 4
  %301 = load i32, i32* %26, align 4
  %302 = icmp sgt i32 %300, %301
  br i1 %302, label %303, label %337

303:                                              ; preds = %296
  %304 = load i32*, i32** %18, align 8
  %305 = load i32*, i32** %25, align 8
  %306 = ptrtoint i32* %304 to i64
  %307 = ptrtoint i32* %305 to i64
  %308 = sub i64 %306, %307
  %309 = sdiv exact i64 %308, 4
  %310 = trunc i64 %309 to i32
  %311 = load i32, i32* %15, align 4
  %312 = icmp sle i32 %310, %311
  br i1 %312, label %313, label %336

313:                                              ; preds = %303
  %314 = load i32, i32* %19, align 4
  %315 = icmp sgt i32 %314, 9
  br i1 %315, label %327, label %316

316:                                              ; preds = %313
  %317 = load i32, i32* %19, align 4
  %318 = load i32*, i32** %18, align 8
  %319 = load i32*, i32** %25, align 8
  %320 = ptrtoint i32* %318 to i64
  %321 = ptrtoint i32* %319 to i64
  %322 = sub i64 %320, %321
  %323 = sdiv exact i64 %322, 4
  %324 = trunc i64 %323 to i32
  %325 = call i32 (i32, i32, ...) bitcast (i32 (...)* @stb_not_crap to i32 (i32, i32, ...)*)(i32 %317, i32 %324)
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %336

327:                                              ; preds = %316, %313
  %328 = load i32, i32* %19, align 4
  store i32 %328, i32* %26, align 4
  %329 = load i32*, i32** %18, align 8
  %330 = load i32*, i32** %25, align 8
  %331 = ptrtoint i32* %329 to i64
  %332 = ptrtoint i32* %330 to i64
  %333 = sub i64 %331, %332
  %334 = sdiv exact i64 %333, 4
  %335 = trunc i64 %334 to i32
  store i32 %335, i32* %27, align 4
  br label %336

336:                                              ; preds = %327, %316, %303
  br label %337

337:                                              ; preds = %336, %296
  br label %338

338:                                              ; preds = %337, %295, %285
  br label %339

339:                                              ; preds = %338, %268
  %340 = load i32*, i32** %18, align 8
  %341 = load i32**, i32*** %13, align 8
  %342 = load i64, i64* %23, align 8
  %343 = getelementptr inbounds i32*, i32** %341, i64 %342
  store i32* %340, i32** %343, align 8
  %344 = load i32**, i32*** %13, align 8
  %345 = load i64, i64* %22, align 8
  %346 = getelementptr inbounds i32*, i32** %344, i64 %345
  store i32* %340, i32** %346, align 8
  %347 = load i32**, i32*** %13, align 8
  %348 = load i64, i64* %21, align 8
  %349 = getelementptr inbounds i32*, i32** %347, i64 %348
  store i32* %340, i32** %349, align 8
  %350 = load i32**, i32*** %13, align 8
  %351 = load i64, i64* %20, align 8
  %352 = getelementptr inbounds i32*, i32** %350, i64 %351
  store i32* %340, i32** %352, align 8
  %353 = load i32, i32* %26, align 4
  %354 = icmp sgt i32 %353, 2
  br i1 %354, label %355, label %360

355:                                              ; preds = %339
  %356 = load i32, i32* %27, align 4
  %357 = icmp sgt i32 %356, 0
  %358 = zext i1 %357 to i32
  %359 = call i32 @assert(i32 %358)
  br label %360

360:                                              ; preds = %355, %339
  %361 = load i32, i32* %26, align 4
  %362 = icmp slt i32 %361, 3
  br i1 %362, label %363, label %366

363:                                              ; preds = %360
  %364 = load i32*, i32** %18, align 8
  %365 = getelementptr inbounds i32, i32* %364, i32 1
  store i32* %365, i32** %18, align 8
  br label %537

366:                                              ; preds = %360
  %367 = load i32, i32* %26, align 4
  %368 = icmp sgt i32 %367, 2
  br i1 %368, label %369, label %396

369:                                              ; preds = %366
  %370 = load i32, i32* %26, align 4
  %371 = icmp sle i32 %370, 128
  br i1 %371, label %372, label %396

372:                                              ; preds = %369
  %373 = load i32, i32* %27, align 4
  %374 = icmp sle i32 %373, 256
  br i1 %374, label %375, label %396

375:                                              ; preds = %372
  %376 = load i32*, i32** %17, align 8
  %377 = load i32*, i32** %18, align 8
  %378 = load i32*, i32** %17, align 8
  %379 = ptrtoint i32* %377 to i64
  %380 = ptrtoint i32* %378 to i64
  %381 = sub i64 %379, %380
  %382 = sdiv exact i64 %381, 4
  %383 = trunc i64 %382 to i32
  %384 = call i32 @outliterals(i32* %376, i32 %383)
  %385 = load i32, i32* %26, align 4
  %386 = load i32*, i32** %18, align 8
  %387 = sext i32 %385 to i64
  %388 = getelementptr inbounds i32, i32* %386, i64 %387
  store i32* %388, i32** %18, align 8
  store i32* %388, i32** %17, align 8
  %389 = load i32, i32* %26, align 4
  %390 = add nsw i32 128, %389
  %391 = sub nsw i32 %390, 1
  %392 = call i32 @stb_out(i32 %391)
  %393 = load i32, i32* %27, align 4
  %394 = sub nsw i32 %393, 1
  %395 = call i32 @stb_out(i32 %394)
  br label %536

396:                                              ; preds = %372, %369, %366
  %397 = load i32, i32* %26, align 4
  %398 = icmp sgt i32 %397, 5
  br i1 %398, label %399, label %426

399:                                              ; preds = %396
  %400 = load i32, i32* %26, align 4
  %401 = icmp sle i32 %400, 256
  br i1 %401, label %402, label %426

402:                                              ; preds = %399
  %403 = load i32, i32* %27, align 4
  %404 = icmp sle i32 %403, 16384
  br i1 %404, label %405, label %426

405:                                              ; preds = %402
  %406 = load i32*, i32** %17, align 8
  %407 = load i32*, i32** %18, align 8
  %408 = load i32*, i32** %17, align 8
  %409 = ptrtoint i32* %407 to i64
  %410 = ptrtoint i32* %408 to i64
  %411 = sub i64 %409, %410
  %412 = sdiv exact i64 %411, 4
  %413 = trunc i64 %412 to i32
  %414 = call i32 @outliterals(i32* %406, i32 %413)
  %415 = load i32, i32* %26, align 4
  %416 = load i32*, i32** %18, align 8
  %417 = sext i32 %415 to i64
  %418 = getelementptr inbounds i32, i32* %416, i64 %417
  store i32* %418, i32** %18, align 8
  store i32* %418, i32** %17, align 8
  %419 = load i32, i32* %27, align 4
  %420 = add nsw i32 16384, %419
  %421 = sub nsw i32 %420, 1
  %422 = call i32 @stb_out2(i32 %421)
  %423 = load i32, i32* %26, align 4
  %424 = sub nsw i32 %423, 1
  %425 = call i32 @stb_out(i32 %424)
  br label %535

426:                                              ; preds = %402, %399, %396
  %427 = load i32, i32* %26, align 4
  %428 = icmp sgt i32 %427, 7
  br i1 %428, label %429, label %456

429:                                              ; preds = %426
  %430 = load i32, i32* %26, align 4
  %431 = icmp sle i32 %430, 256
  br i1 %431, label %432, label %456

432:                                              ; preds = %429
  %433 = load i32, i32* %27, align 4
  %434 = icmp sle i32 %433, 524288
  br i1 %434, label %435, label %456

435:                                              ; preds = %432
  %436 = load i32*, i32** %17, align 8
  %437 = load i32*, i32** %18, align 8
  %438 = load i32*, i32** %17, align 8
  %439 = ptrtoint i32* %437 to i64
  %440 = ptrtoint i32* %438 to i64
  %441 = sub i64 %439, %440
  %442 = sdiv exact i64 %441, 4
  %443 = trunc i64 %442 to i32
  %444 = call i32 @outliterals(i32* %436, i32 %443)
  %445 = load i32, i32* %26, align 4
  %446 = load i32*, i32** %18, align 8
  %447 = sext i32 %445 to i64
  %448 = getelementptr inbounds i32, i32* %446, i64 %447
  store i32* %448, i32** %18, align 8
  store i32* %448, i32** %17, align 8
  %449 = load i32, i32* %27, align 4
  %450 = add nsw i32 1572864, %449
  %451 = sub nsw i32 %450, 1
  %452 = call i32 @stb_out3(i32 %451)
  %453 = load i32, i32* %26, align 4
  %454 = sub nsw i32 %453, 1
  %455 = call i32 @stb_out(i32 %454)
  br label %534

456:                                              ; preds = %432, %429, %426
  %457 = load i32, i32* %26, align 4
  %458 = icmp sgt i32 %457, 8
  br i1 %458, label %459, label %486

459:                                              ; preds = %456
  %460 = load i32, i32* %26, align 4
  %461 = icmp sle i32 %460, 65536
  br i1 %461, label %462, label %486

462:                                              ; preds = %459
  %463 = load i32, i32* %27, align 4
  %464 = icmp sle i32 %463, 524288
  br i1 %464, label %465, label %486

465:                                              ; preds = %462
  %466 = load i32*, i32** %17, align 8
  %467 = load i32*, i32** %18, align 8
  %468 = load i32*, i32** %17, align 8
  %469 = ptrtoint i32* %467 to i64
  %470 = ptrtoint i32* %468 to i64
  %471 = sub i64 %469, %470
  %472 = sdiv exact i64 %471, 4
  %473 = trunc i64 %472 to i32
  %474 = call i32 @outliterals(i32* %466, i32 %473)
  %475 = load i32, i32* %26, align 4
  %476 = load i32*, i32** %18, align 8
  %477 = sext i32 %475 to i64
  %478 = getelementptr inbounds i32, i32* %476, i64 %477
  store i32* %478, i32** %18, align 8
  store i32* %478, i32** %17, align 8
  %479 = load i32, i32* %27, align 4
  %480 = add nsw i32 1048576, %479
  %481 = sub nsw i32 %480, 1
  %482 = call i32 @stb_out3(i32 %481)
  %483 = load i32, i32* %26, align 4
  %484 = sub nsw i32 %483, 1
  %485 = call i32 @stb_out2(i32 %484)
  br label %533

486:                                              ; preds = %462, %459, %456
  %487 = load i32, i32* %26, align 4
  %488 = icmp sgt i32 %487, 9
  br i1 %488, label %489, label %529

489:                                              ; preds = %486
  %490 = load i32, i32* %27, align 4
  %491 = icmp sle i32 %490, 16777216
  br i1 %491, label %492, label %529

492:                                              ; preds = %489
  %493 = load i32, i32* %26, align 4
  %494 = icmp sgt i32 %493, 65536
  br i1 %494, label %495, label %496

495:                                              ; preds = %492
  store i32 65536, i32* %26, align 4
  br label %496

496:                                              ; preds = %495, %492
  %497 = load i32*, i32** %17, align 8
  %498 = load i32*, i32** %18, align 8
  %499 = load i32*, i32** %17, align 8
  %500 = ptrtoint i32* %498 to i64
  %501 = ptrtoint i32* %499 to i64
  %502 = sub i64 %500, %501
  %503 = sdiv exact i64 %502, 4
  %504 = trunc i64 %503 to i32
  %505 = call i32 @outliterals(i32* %497, i32 %504)
  %506 = load i32, i32* %26, align 4
  %507 = load i32*, i32** %18, align 8
  %508 = sext i32 %506 to i64
  %509 = getelementptr inbounds i32, i32* %507, i64 %508
  store i32* %509, i32** %18, align 8
  store i32* %509, i32** %17, align 8
  %510 = load i32, i32* %26, align 4
  %511 = icmp sle i32 %510, 256
  br i1 %511, label %512, label %520

512:                                              ; preds = %496
  %513 = call i32 @stb_out(i32 6)
  %514 = load i32, i32* %27, align 4
  %515 = sub nsw i32 %514, 1
  %516 = call i32 @stb_out3(i32 %515)
  %517 = load i32, i32* %26, align 4
  %518 = sub nsw i32 %517, 1
  %519 = call i32 @stb_out(i32 %518)
  br label %528

520:                                              ; preds = %496
  %521 = call i32 @stb_out(i32 4)
  %522 = load i32, i32* %27, align 4
  %523 = sub nsw i32 %522, 1
  %524 = call i32 @stb_out3(i32 %523)
  %525 = load i32, i32* %26, align 4
  %526 = sub nsw i32 %525, 1
  %527 = call i32 @stb_out2(i32 %526)
  br label %528

528:                                              ; preds = %520, %512
  br label %532

529:                                              ; preds = %489, %486
  %530 = load i32*, i32** %18, align 8
  %531 = getelementptr inbounds i32, i32* %530, i32 1
  store i32* %531, i32** %18, align 8
  br label %532

532:                                              ; preds = %529, %528
  br label %533

533:                                              ; preds = %532, %465
  br label %534

534:                                              ; preds = %533, %435
  br label %535

535:                                              ; preds = %534, %405
  br label %536

536:                                              ; preds = %535, %375
  br label %537

537:                                              ; preds = %536, %363
  br label %36

538:                                              ; preds = %48
  %539 = load i32*, i32** %18, align 8
  %540 = load i32*, i32** %9, align 8
  %541 = ptrtoint i32* %539 to i64
  %542 = ptrtoint i32* %540 to i64
  %543 = sub i64 %541, %542
  %544 = sdiv exact i64 %543, 4
  %545 = load i32, i32* %11, align 4
  %546 = sext i32 %545 to i64
  %547 = icmp slt i64 %544, %546
  br i1 %547, label %548, label %553

548:                                              ; preds = %538
  %549 = load i32*, i32** %9, align 8
  %550 = load i32, i32* %11, align 4
  %551 = sext i32 %550 to i64
  %552 = getelementptr inbounds i32, i32* %549, i64 %551
  store i32* %552, i32** %18, align 8
  br label %553

553:                                              ; preds = %548, %538
  %554 = load i32*, i32** %18, align 8
  %555 = load i32*, i32** %17, align 8
  %556 = ptrtoint i32* %554 to i64
  %557 = ptrtoint i32* %555 to i64
  %558 = sub i64 %556, %557
  %559 = sdiv exact i64 %558, 4
  %560 = trunc i64 %559 to i32
  %561 = load i32*, i32** %12, align 8
  store i32 %560, i32* %561, align 4
  %562 = load i32, i32* @stb__running_adler, align 4
  %563 = load i32*, i32** %9, align 8
  %564 = load i32*, i32** %18, align 8
  %565 = load i32*, i32** %9, align 8
  %566 = ptrtoint i32* %564 to i64
  %567 = ptrtoint i32* %565 to i64
  %568 = sub i64 %566, %567
  %569 = sdiv exact i64 %568, 4
  %570 = trunc i64 %569 to i32
  %571 = call i32 @stb_adler32(i32 %562, i32* %563, i32 %570)
  store i32 %571, i32* @stb__running_adler, align 4
  %572 = load i32*, i32** %18, align 8
  %573 = load i32*, i32** %9, align 8
  %574 = ptrtoint i32* %572 to i64
  %575 = ptrtoint i32* %573 to i64
  %576 = sub i64 %574, %575
  %577 = sdiv exact i64 %576, 4
  %578 = trunc i64 %577 to i32
  ret i32 %578
}

declare dso_local i64 @stb__hc3(i32*, i32, i32, i32) #1

declare dso_local i32 @stb_matchlen(...) #1

declare dso_local i32 @stb_not_crap(...) #1

declare dso_local i64 @stb__hc2(i32*, i64, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @outliterals(i32*, i32) #1

declare dso_local i32 @stb_out(i32) #1

declare dso_local i32 @stb_out2(i32) #1

declare dso_local i32 @stb_out3(i32) #1

declare dso_local i32 @stb_adler32(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
