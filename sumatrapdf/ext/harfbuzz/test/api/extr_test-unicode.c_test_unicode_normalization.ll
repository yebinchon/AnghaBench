; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/harfbuzz/test/api/extr_test-unicode.c_test_unicode_normalization.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/harfbuzz/test/api/extr_test-unicode.c_test_unicode_normalization.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HB_UNICODE_MAX_DECOMPOSITION_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @test_unicode_normalization to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_unicode_normalization(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %9 = load i64, i64* %2, align 8
  %10 = inttoptr i64 %9 to i32*
  store i32* %10, i32** %3, align 8
  %11 = load i32, i32* @HB_UNICODE_MAX_DECOMPOSITION_LEN, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %7, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %8, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = call i64 @hb_unicode_compose(i32* %15, i32 65, i32 66, i32* %6)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* %6, align 4
  %20 = icmp eq i32 %19, 0
  br label %21

21:                                               ; preds = %18, %1
  %22 = phi i1 [ false, %1 ], [ %20, %18 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @g_assert(i32 %23)
  %25 = load i32*, i32** %3, align 8
  %26 = call i64 @hb_unicode_compose(i32* %25, i32 65, i32 0, i32* %6)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %21
  %29 = load i32, i32* %6, align 4
  %30 = icmp eq i32 %29, 0
  br label %31

31:                                               ; preds = %28, %21
  %32 = phi i1 [ false, %21 ], [ %30, %28 ]
  %33 = zext i1 %32 to i32
  %34 = call i32 @g_assert(i32 %33)
  %35 = load i32*, i32** %3, align 8
  %36 = call i64 @hb_unicode_compose(i32* %35, i32 102, i32 105, i32* %6)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %31
  %39 = load i32, i32* %6, align 4
  %40 = icmp eq i32 %39, 0
  br label %41

41:                                               ; preds = %38, %31
  %42 = phi i1 [ false, %31 ], [ %40, %38 ]
  %43 = zext i1 %42 to i32
  %44 = call i32 @g_assert(i32 %43)
  %45 = load i32*, i32** %3, align 8
  %46 = call i64 @hb_unicode_compose(i32* %45, i32 8491, i32 0, i32* %6)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %41
  %49 = load i32, i32* %6, align 4
  %50 = icmp eq i32 %49, 0
  br label %51

51:                                               ; preds = %48, %41
  %52 = phi i1 [ false, %41 ], [ %50, %48 ]
  %53 = zext i1 %52 to i32
  %54 = call i32 @g_assert(i32 %53)
  %55 = load i32*, i32** %3, align 8
  %56 = call i64 @hb_unicode_compose(i32* %55, i32 197, i32 0, i32* %6)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %51
  %59 = load i32, i32* %6, align 4
  %60 = icmp eq i32 %59, 0
  br label %61

61:                                               ; preds = %58, %51
  %62 = phi i1 [ false, %51 ], [ %60, %58 ]
  %63 = zext i1 %62 to i32
  %64 = call i32 @g_assert(i32 %63)
  %65 = load i32*, i32** %3, align 8
  %66 = call i64 @hb_unicode_compose(i32* %65, i32 8486, i32 0, i32* %6)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %61
  %69 = load i32, i32* %6, align 4
  %70 = icmp eq i32 %69, 0
  br label %71

71:                                               ; preds = %68, %61
  %72 = phi i1 [ false, %61 ], [ %70, %68 ]
  %73 = zext i1 %72 to i32
  %74 = call i32 @g_assert(i32 %73)
  %75 = load i32*, i32** %3, align 8
  %76 = call i64 @hb_unicode_compose(i32* %75, i32 937, i32 0, i32* %6)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %71
  %79 = load i32, i32* %6, align 4
  %80 = icmp eq i32 %79, 0
  br label %81

81:                                               ; preds = %78, %71
  %82 = phi i1 [ false, %71 ], [ %80, %78 ]
  %83 = zext i1 %82 to i32
  %84 = call i32 @g_assert(i32 %83)
  %85 = load i32*, i32** %3, align 8
  %86 = call i64 @hb_unicode_compose(i32* %85, i32 776, i32 769, i32* %6)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %81
  %89 = load i32, i32* %6, align 4
  %90 = icmp eq i32 %89, 0
  br label %91

91:                                               ; preds = %88, %81
  %92 = phi i1 [ false, %81 ], [ %90, %88 ]
  %93 = zext i1 %92 to i32
  %94 = call i32 @g_assert(i32 %93)
  %95 = load i32*, i32** %3, align 8
  %96 = call i64 @hb_unicode_compose(i32* %95, i32 3953, i32 3954, i32* %6)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %91
  %99 = load i32, i32* %6, align 4
  %100 = icmp eq i32 %99, 0
  br label %101

101:                                              ; preds = %98, %91
  %102 = phi i1 [ false, %91 ], [ %100, %98 ]
  %103 = zext i1 %102 to i32
  %104 = call i32 @g_assert(i32 %103)
  %105 = load i32*, i32** %3, align 8
  %106 = call i64 @hb_unicode_compose(i32* %105, i32 65, i32 778, i32* %6)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %101
  %109 = load i32, i32* %6, align 4
  %110 = icmp eq i32 %109, 197
  br label %111

111:                                              ; preds = %108, %101
  %112 = phi i1 [ false, %101 ], [ %110, %108 ]
  %113 = zext i1 %112 to i32
  %114 = call i32 @g_assert(i32 %113)
  %115 = load i32*, i32** %3, align 8
  %116 = call i64 @hb_unicode_compose(i32* %115, i32 111, i32 770, i32* %6)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %111
  %119 = load i32, i32* %6, align 4
  %120 = icmp eq i32 %119, 244
  br label %121

121:                                              ; preds = %118, %111
  %122 = phi i1 [ false, %111 ], [ %120, %118 ]
  %123 = zext i1 %122 to i32
  %124 = call i32 @g_assert(i32 %123)
  %125 = load i32*, i32** %3, align 8
  %126 = call i64 @hb_unicode_compose(i32* %125, i32 7779, i32 775, i32* %6)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %121
  %129 = load i32, i32* %6, align 4
  %130 = icmp eq i32 %129, 7785
  br label %131

131:                                              ; preds = %128, %121
  %132 = phi i1 [ false, %121 ], [ %130, %128 ]
  %133 = zext i1 %132 to i32
  %134 = call i32 @g_assert(i32 %133)
  %135 = load i32*, i32** %3, align 8
  %136 = call i64 @hb_unicode_compose(i32* %135, i32 115, i32 803, i32* %6)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %131
  %139 = load i32, i32* %6, align 4
  %140 = icmp eq i32 %139, 7779
  br label %141

141:                                              ; preds = %138, %131
  %142 = phi i1 [ false, %131 ], [ %140, %138 ]
  %143 = zext i1 %142 to i32
  %144 = call i32 @g_assert(i32 %143)
  %145 = load i32*, i32** %3, align 8
  %146 = call i64 @hb_unicode_compose(i32* %145, i32 100, i32 775, i32* %6)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %141
  %149 = load i32, i32* %6, align 4
  %150 = icmp eq i32 %149, 7691
  br label %151

151:                                              ; preds = %148, %141
  %152 = phi i1 [ false, %141 ], [ %150, %148 ]
  %153 = zext i1 %152 to i32
  %154 = call i32 @g_assert(i32 %153)
  %155 = load i32*, i32** %3, align 8
  %156 = call i64 @hb_unicode_compose(i32* %155, i32 100, i32 803, i32* %6)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %151
  %159 = load i32, i32* %6, align 4
  %160 = icmp eq i32 %159, 7693
  br label %161

161:                                              ; preds = %158, %151
  %162 = phi i1 [ false, %151 ], [ %160, %158 ]
  %163 = zext i1 %162 to i32
  %164 = call i32 @g_assert(i32 %163)
  %165 = load i32*, i32** %3, align 8
  %166 = call i64 @hb_unicode_compose(i32* %165, i32 54476, i32 4534, i32* %6)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %161
  %169 = load i32, i32* %6, align 4
  %170 = icmp eq i32 %169, 54491
  br label %171

171:                                              ; preds = %168, %161
  %172 = phi i1 [ false, %161 ], [ %170, %168 ]
  %173 = zext i1 %172 to i32
  %174 = call i32 @g_assert(i32 %173)
  %175 = load i32*, i32** %3, align 8
  %176 = call i64 @hb_unicode_compose(i32* %175, i32 4369, i32 4465, i32* %6)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %171
  %179 = load i32, i32* %6, align 4
  %180 = icmp eq i32 %179, 54476
  br label %181

181:                                              ; preds = %178, %171
  %182 = phi i1 [ false, %171 ], [ %180, %178 ]
  %183 = zext i1 %182 to i32
  %184 = call i32 @g_assert(i32 %183)
  %185 = load i32*, i32** %3, align 8
  %186 = call i64 @hb_unicode_compose(i32* %185, i32 52768, i32 4536, i32* %6)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %191

188:                                              ; preds = %181
  %189 = load i32, i32* %6, align 4
  %190 = icmp eq i32 %189, 52785
  br label %191

191:                                              ; preds = %188, %181
  %192 = phi i1 [ false, %181 ], [ %190, %188 ]
  %193 = zext i1 %192 to i32
  %194 = call i32 @g_assert(i32 %193)
  %195 = load i32*, i32** %3, align 8
  %196 = call i64 @hb_unicode_compose(i32* %195, i32 4366, i32 4467, i32* %6)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %201

198:                                              ; preds = %191
  %199 = load i32, i32* %6, align 4
  %200 = icmp eq i32 %199, 52768
  br label %201

201:                                              ; preds = %198, %191
  %202 = phi i1 [ false, %191 ], [ %200, %198 ]
  %203 = zext i1 %202 to i32
  %204 = call i32 @g_assert(i32 %203)
  %205 = load i32*, i32** %3, align 8
  %206 = call i64 @hb_unicode_decompose(i32* %205, i32 65, i32* %4, i32* %5)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %214, label %208

208:                                              ; preds = %201
  %209 = load i32, i32* %4, align 4
  %210 = icmp eq i32 %209, 65
  br i1 %210, label %211, label %214

211:                                              ; preds = %208
  %212 = load i32, i32* %5, align 4
  %213 = icmp eq i32 %212, 0
  br label %214

214:                                              ; preds = %211, %208, %201
  %215 = phi i1 [ false, %208 ], [ false, %201 ], [ %213, %211 ]
  %216 = zext i1 %215 to i32
  %217 = call i32 @g_assert(i32 %216)
  %218 = load i32*, i32** %3, align 8
  %219 = call i64 @hb_unicode_decompose(i32* %218, i32 64257, i32* %4, i32* %5)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %227, label %221

221:                                              ; preds = %214
  %222 = load i32, i32* %4, align 4
  %223 = icmp eq i32 %222, 64257
  br i1 %223, label %224, label %227

224:                                              ; preds = %221
  %225 = load i32, i32* %5, align 4
  %226 = icmp eq i32 %225, 0
  br label %227

227:                                              ; preds = %224, %221, %214
  %228 = phi i1 [ false, %221 ], [ false, %214 ], [ %226, %224 ]
  %229 = zext i1 %228 to i32
  %230 = call i32 @g_assert(i32 %229)
  %231 = load i32*, i32** %3, align 8
  %232 = call i64 @hb_unicode_decompose(i32* %231, i32 127471, i32* %4, i32* %5)
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %240, label %234

234:                                              ; preds = %227
  %235 = load i32, i32* %4, align 4
  %236 = icmp eq i32 %235, 127471
  br i1 %236, label %237, label %240

237:                                              ; preds = %234
  %238 = load i32, i32* %5, align 4
  %239 = icmp eq i32 %238, 0
  br label %240

240:                                              ; preds = %237, %234, %227
  %241 = phi i1 [ false, %234 ], [ false, %227 ], [ %239, %237 ]
  %242 = zext i1 %241 to i32
  %243 = call i32 @g_assert(i32 %242)
  %244 = load i32*, i32** %3, align 8
  %245 = call i64 @hb_unicode_decompose(i32* %244, i32 8491, i32* %4, i32* %5)
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %253

247:                                              ; preds = %240
  %248 = load i32, i32* %4, align 4
  %249 = icmp eq i32 %248, 197
  br i1 %249, label %250, label %253

250:                                              ; preds = %247
  %251 = load i32, i32* %5, align 4
  %252 = icmp eq i32 %251, 0
  br label %253

253:                                              ; preds = %250, %247, %240
  %254 = phi i1 [ false, %247 ], [ false, %240 ], [ %252, %250 ]
  %255 = zext i1 %254 to i32
  %256 = call i32 @g_assert(i32 %255)
  %257 = load i32*, i32** %3, align 8
  %258 = call i64 @hb_unicode_decompose(i32* %257, i32 8486, i32* %4, i32* %5)
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %266

260:                                              ; preds = %253
  %261 = load i32, i32* %4, align 4
  %262 = icmp eq i32 %261, 937
  br i1 %262, label %263, label %266

263:                                              ; preds = %260
  %264 = load i32, i32* %5, align 4
  %265 = icmp eq i32 %264, 0
  br label %266

266:                                              ; preds = %263, %260, %253
  %267 = phi i1 [ false, %260 ], [ false, %253 ], [ %265, %263 ]
  %268 = zext i1 %267 to i32
  %269 = call i32 @g_assert(i32 %268)
  %270 = load i32*, i32** %3, align 8
  %271 = call i64 @hb_unicode_decompose(i32* %270, i32 836, i32* %4, i32* %5)
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %273, label %279

273:                                              ; preds = %266
  %274 = load i32, i32* %4, align 4
  %275 = icmp eq i32 %274, 776
  br i1 %275, label %276, label %279

276:                                              ; preds = %273
  %277 = load i32, i32* %5, align 4
  %278 = icmp eq i32 %277, 769
  br label %279

279:                                              ; preds = %276, %273, %266
  %280 = phi i1 [ false, %273 ], [ false, %266 ], [ %278, %276 ]
  %281 = zext i1 %280 to i32
  %282 = call i32 @g_assert(i32 %281)
  %283 = load i32*, i32** %3, align 8
  %284 = call i64 @hb_unicode_decompose(i32* %283, i32 3955, i32* %4, i32* %5)
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %286, label %292

286:                                              ; preds = %279
  %287 = load i32, i32* %4, align 4
  %288 = icmp eq i32 %287, 3953
  br i1 %288, label %289, label %292

289:                                              ; preds = %286
  %290 = load i32, i32* %5, align 4
  %291 = icmp eq i32 %290, 3954
  br label %292

292:                                              ; preds = %289, %286, %279
  %293 = phi i1 [ false, %286 ], [ false, %279 ], [ %291, %289 ]
  %294 = zext i1 %293 to i32
  %295 = call i32 @g_assert(i32 %294)
  %296 = load i32*, i32** %3, align 8
  %297 = call i64 @hb_unicode_decompose(i32* %296, i32 197, i32* %4, i32* %5)
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %305

299:                                              ; preds = %292
  %300 = load i32, i32* %4, align 4
  %301 = icmp eq i32 %300, 65
  br i1 %301, label %302, label %305

302:                                              ; preds = %299
  %303 = load i32, i32* %5, align 4
  %304 = icmp eq i32 %303, 778
  br label %305

305:                                              ; preds = %302, %299, %292
  %306 = phi i1 [ false, %299 ], [ false, %292 ], [ %304, %302 ]
  %307 = zext i1 %306 to i32
  %308 = call i32 @g_assert(i32 %307)
  %309 = load i32*, i32** %3, align 8
  %310 = call i64 @hb_unicode_decompose(i32* %309, i32 244, i32* %4, i32* %5)
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %312, label %318

312:                                              ; preds = %305
  %313 = load i32, i32* %4, align 4
  %314 = icmp eq i32 %313, 111
  br i1 %314, label %315, label %318

315:                                              ; preds = %312
  %316 = load i32, i32* %5, align 4
  %317 = icmp eq i32 %316, 770
  br label %318

318:                                              ; preds = %315, %312, %305
  %319 = phi i1 [ false, %312 ], [ false, %305 ], [ %317, %315 ]
  %320 = zext i1 %319 to i32
  %321 = call i32 @g_assert(i32 %320)
  %322 = load i32*, i32** %3, align 8
  %323 = call i64 @hb_unicode_decompose(i32* %322, i32 7785, i32* %4, i32* %5)
  %324 = icmp ne i64 %323, 0
  br i1 %324, label %325, label %331

325:                                              ; preds = %318
  %326 = load i32, i32* %4, align 4
  %327 = icmp eq i32 %326, 7779
  br i1 %327, label %328, label %331

328:                                              ; preds = %325
  %329 = load i32, i32* %5, align 4
  %330 = icmp eq i32 %329, 775
  br label %331

331:                                              ; preds = %328, %325, %318
  %332 = phi i1 [ false, %325 ], [ false, %318 ], [ %330, %328 ]
  %333 = zext i1 %332 to i32
  %334 = call i32 @g_assert(i32 %333)
  %335 = load i32*, i32** %3, align 8
  %336 = call i64 @hb_unicode_decompose(i32* %335, i32 7779, i32* %4, i32* %5)
  %337 = icmp ne i64 %336, 0
  br i1 %337, label %338, label %344

338:                                              ; preds = %331
  %339 = load i32, i32* %4, align 4
  %340 = icmp eq i32 %339, 115
  br i1 %340, label %341, label %344

341:                                              ; preds = %338
  %342 = load i32, i32* %5, align 4
  %343 = icmp eq i32 %342, 803
  br label %344

344:                                              ; preds = %341, %338, %331
  %345 = phi i1 [ false, %338 ], [ false, %331 ], [ %343, %341 ]
  %346 = zext i1 %345 to i32
  %347 = call i32 @g_assert(i32 %346)
  %348 = load i32*, i32** %3, align 8
  %349 = call i64 @hb_unicode_decompose(i32* %348, i32 7691, i32* %4, i32* %5)
  %350 = icmp ne i64 %349, 0
  br i1 %350, label %351, label %357

351:                                              ; preds = %344
  %352 = load i32, i32* %4, align 4
  %353 = icmp eq i32 %352, 100
  br i1 %353, label %354, label %357

354:                                              ; preds = %351
  %355 = load i32, i32* %5, align 4
  %356 = icmp eq i32 %355, 775
  br label %357

357:                                              ; preds = %354, %351, %344
  %358 = phi i1 [ false, %351 ], [ false, %344 ], [ %356, %354 ]
  %359 = zext i1 %358 to i32
  %360 = call i32 @g_assert(i32 %359)
  %361 = load i32*, i32** %3, align 8
  %362 = call i64 @hb_unicode_decompose(i32* %361, i32 7693, i32* %4, i32* %5)
  %363 = icmp ne i64 %362, 0
  br i1 %363, label %364, label %370

364:                                              ; preds = %357
  %365 = load i32, i32* %4, align 4
  %366 = icmp eq i32 %365, 100
  br i1 %366, label %367, label %370

367:                                              ; preds = %364
  %368 = load i32, i32* %5, align 4
  %369 = icmp eq i32 %368, 803
  br label %370

370:                                              ; preds = %367, %364, %357
  %371 = phi i1 [ false, %364 ], [ false, %357 ], [ %369, %367 ]
  %372 = zext i1 %371 to i32
  %373 = call i32 @g_assert(i32 %372)
  %374 = load i32*, i32** %3, align 8
  %375 = call i64 @hb_unicode_decompose(i32* %374, i32 54491, i32* %4, i32* %5)
  %376 = icmp ne i64 %375, 0
  br i1 %376, label %377, label %383

377:                                              ; preds = %370
  %378 = load i32, i32* %4, align 4
  %379 = icmp eq i32 %378, 54476
  br i1 %379, label %380, label %383

380:                                              ; preds = %377
  %381 = load i32, i32* %5, align 4
  %382 = icmp eq i32 %381, 4534
  br label %383

383:                                              ; preds = %380, %377, %370
  %384 = phi i1 [ false, %377 ], [ false, %370 ], [ %382, %380 ]
  %385 = zext i1 %384 to i32
  %386 = call i32 @g_assert(i32 %385)
  %387 = load i32*, i32** %3, align 8
  %388 = call i64 @hb_unicode_decompose(i32* %387, i32 54476, i32* %4, i32* %5)
  %389 = icmp ne i64 %388, 0
  br i1 %389, label %390, label %396

390:                                              ; preds = %383
  %391 = load i32, i32* %4, align 4
  %392 = icmp eq i32 %391, 4369
  br i1 %392, label %393, label %396

393:                                              ; preds = %390
  %394 = load i32, i32* %5, align 4
  %395 = icmp eq i32 %394, 4465
  br label %396

396:                                              ; preds = %393, %390, %383
  %397 = phi i1 [ false, %390 ], [ false, %383 ], [ %395, %393 ]
  %398 = zext i1 %397 to i32
  %399 = call i32 @g_assert(i32 %398)
  %400 = load i32*, i32** %3, align 8
  %401 = call i64 @hb_unicode_decompose(i32* %400, i32 52785, i32* %4, i32* %5)
  %402 = icmp ne i64 %401, 0
  br i1 %402, label %403, label %409

403:                                              ; preds = %396
  %404 = load i32, i32* %4, align 4
  %405 = icmp eq i32 %404, 52768
  br i1 %405, label %406, label %409

406:                                              ; preds = %403
  %407 = load i32, i32* %5, align 4
  %408 = icmp eq i32 %407, 4536
  br label %409

409:                                              ; preds = %406, %403, %396
  %410 = phi i1 [ false, %403 ], [ false, %396 ], [ %408, %406 ]
  %411 = zext i1 %410 to i32
  %412 = call i32 @g_assert(i32 %411)
  %413 = load i32*, i32** %3, align 8
  %414 = call i64 @hb_unicode_decompose(i32* %413, i32 52768, i32* %4, i32* %5)
  %415 = icmp ne i64 %414, 0
  br i1 %415, label %416, label %422

416:                                              ; preds = %409
  %417 = load i32, i32* %4, align 4
  %418 = icmp eq i32 %417, 4366
  br i1 %418, label %419, label %422

419:                                              ; preds = %416
  %420 = load i32, i32* %5, align 4
  %421 = icmp eq i32 %420, 4467
  br label %422

422:                                              ; preds = %419, %416, %409
  %423 = phi i1 [ false, %416 ], [ false, %409 ], [ %421, %419 ]
  %424 = zext i1 %423 to i32
  %425 = call i32 @g_assert(i32 %424)
  %426 = load i32*, i32** %3, align 8
  %427 = call i32 @hb_unicode_decompose_compatibility(i32* %426, i32 65, i32* %14)
  %428 = icmp eq i32 %427, 0
  %429 = zext i1 %428 to i32
  %430 = call i32 @g_assert(i32 %429)
  %431 = load i32*, i32** %3, align 8
  %432 = call i32 @hb_unicode_decompose_compatibility(i32* %431, i32 128562, i32* %14)
  %433 = icmp eq i32 %432, 0
  %434 = zext i1 %433 to i32
  %435 = call i32 @g_assert(i32 %434)
  %436 = load i32*, i32** %3, align 8
  %437 = call i32 @hb_unicode_decompose_compatibility(i32* %436, i32 181, i32* %14)
  %438 = icmp eq i32 %437, 1
  br i1 %438, label %439, label %443

439:                                              ; preds = %422
  %440 = getelementptr inbounds i32, i32* %14, i64 0
  %441 = load i32, i32* %440, align 16
  %442 = icmp eq i32 %441, 956
  br label %443

443:                                              ; preds = %439, %422
  %444 = phi i1 [ false, %422 ], [ %442, %439 ]
  %445 = zext i1 %444 to i32
  %446 = call i32 @g_assert(i32 %445)
  %447 = load i32*, i32** %3, align 8
  %448 = call i32 @hb_unicode_decompose_compatibility(i32* %447, i32 982, i32* %14)
  %449 = icmp eq i32 %448, 1
  br i1 %449, label %450, label %454

450:                                              ; preds = %443
  %451 = getelementptr inbounds i32, i32* %14, i64 0
  %452 = load i32, i32* %451, align 16
  %453 = icmp eq i32 %452, 960
  br label %454

454:                                              ; preds = %450, %443
  %455 = phi i1 [ false, %443 ], [ %453, %450 ]
  %456 = zext i1 %455 to i32
  %457 = call i32 @g_assert(i32 %456)
  %458 = load i32*, i32** %3, align 8
  %459 = call i32 @hb_unicode_decompose_compatibility(i32* %458, i32 64340, i32* %14)
  %460 = icmp eq i32 %459, 1
  br i1 %460, label %461, label %465

461:                                              ; preds = %454
  %462 = getelementptr inbounds i32, i32* %14, i64 0
  %463 = load i32, i32* %462, align 16
  %464 = icmp eq i32 %463, 1659
  br label %465

465:                                              ; preds = %461, %454
  %466 = phi i1 [ false, %454 ], [ %464, %461 ]
  %467 = zext i1 %466 to i32
  %468 = call i32 @g_assert(i32 %467)
  %469 = load i32, i32* @HB_UNICODE_MAX_DECOMPOSITION_LEN, align 4
  %470 = icmp sle i32 18, %469
  %471 = zext i1 %470 to i32
  %472 = call i32 @g_assert(i32 %471)
  %473 = load i32*, i32** %3, align 8
  %474 = call i32 @hb_unicode_decompose_compatibility(i32* %473, i32 65018, i32* %14)
  %475 = icmp eq i32 %474, 18
  br i1 %475, label %476, label %480

476:                                              ; preds = %465
  %477 = getelementptr inbounds i32, i32* %14, i64 17
  %478 = load i32, i32* %477, align 4
  %479 = icmp eq i32 %478, 1605
  br label %480

480:                                              ; preds = %476, %465
  %481 = phi i1 [ false, %465 ], [ %479, %476 ]
  %482 = zext i1 %481 to i32
  %483 = call i32 @g_assert(i32 %482)
  %484 = load i32*, i32** %3, align 8
  %485 = call i32 @hb_unicode_decompose_compatibility(i32* %484, i32 8194, i32* %14)
  %486 = icmp eq i32 %485, 1
  br i1 %486, label %487, label %491

487:                                              ; preds = %480
  %488 = getelementptr inbounds i32, i32* %14, i64 0
  %489 = load i32, i32* %488, align 16
  %490 = icmp eq i32 %489, 32
  br label %491

491:                                              ; preds = %487, %480
  %492 = phi i1 [ false, %480 ], [ %490, %487 ]
  %493 = zext i1 %492 to i32
  %494 = call i32 @g_assert(i32 %493)
  %495 = load i32*, i32** %3, align 8
  %496 = call i32 @hb_unicode_decompose_compatibility(i32* %495, i32 8195, i32* %14)
  %497 = icmp eq i32 %496, 1
  br i1 %497, label %498, label %502

498:                                              ; preds = %491
  %499 = getelementptr inbounds i32, i32* %14, i64 0
  %500 = load i32, i32* %499, align 16
  %501 = icmp eq i32 %500, 32
  br label %502

502:                                              ; preds = %498, %491
  %503 = phi i1 [ false, %491 ], [ %501, %498 ]
  %504 = zext i1 %503 to i32
  %505 = call i32 @g_assert(i32 %504)
  %506 = load i32*, i32** %3, align 8
  %507 = call i32 @hb_unicode_decompose_compatibility(i32* %506, i32 8196, i32* %14)
  %508 = icmp eq i32 %507, 1
  br i1 %508, label %509, label %513

509:                                              ; preds = %502
  %510 = getelementptr inbounds i32, i32* %14, i64 0
  %511 = load i32, i32* %510, align 16
  %512 = icmp eq i32 %511, 32
  br label %513

513:                                              ; preds = %509, %502
  %514 = phi i1 [ false, %502 ], [ %512, %509 ]
  %515 = zext i1 %514 to i32
  %516 = call i32 @g_assert(i32 %515)
  %517 = load i32*, i32** %3, align 8
  %518 = call i32 @hb_unicode_decompose_compatibility(i32* %517, i32 8197, i32* %14)
  %519 = icmp eq i32 %518, 1
  br i1 %519, label %520, label %524

520:                                              ; preds = %513
  %521 = getelementptr inbounds i32, i32* %14, i64 0
  %522 = load i32, i32* %521, align 16
  %523 = icmp eq i32 %522, 32
  br label %524

524:                                              ; preds = %520, %513
  %525 = phi i1 [ false, %513 ], [ %523, %520 ]
  %526 = zext i1 %525 to i32
  %527 = call i32 @g_assert(i32 %526)
  %528 = load i32*, i32** %3, align 8
  %529 = call i32 @hb_unicode_decompose_compatibility(i32* %528, i32 8198, i32* %14)
  %530 = icmp eq i32 %529, 1
  br i1 %530, label %531, label %535

531:                                              ; preds = %524
  %532 = getelementptr inbounds i32, i32* %14, i64 0
  %533 = load i32, i32* %532, align 16
  %534 = icmp eq i32 %533, 32
  br label %535

535:                                              ; preds = %531, %524
  %536 = phi i1 [ false, %524 ], [ %534, %531 ]
  %537 = zext i1 %536 to i32
  %538 = call i32 @g_assert(i32 %537)
  %539 = load i32*, i32** %3, align 8
  %540 = call i32 @hb_unicode_decompose_compatibility(i32* %539, i32 8200, i32* %14)
  %541 = icmp eq i32 %540, 1
  br i1 %541, label %542, label %546

542:                                              ; preds = %535
  %543 = getelementptr inbounds i32, i32* %14, i64 0
  %544 = load i32, i32* %543, align 16
  %545 = icmp eq i32 %544, 32
  br label %546

546:                                              ; preds = %542, %535
  %547 = phi i1 [ false, %535 ], [ %545, %542 ]
  %548 = zext i1 %547 to i32
  %549 = call i32 @g_assert(i32 %548)
  %550 = load i32*, i32** %3, align 8
  %551 = call i32 @hb_unicode_decompose_compatibility(i32* %550, i32 8201, i32* %14)
  %552 = icmp eq i32 %551, 1
  br i1 %552, label %553, label %557

553:                                              ; preds = %546
  %554 = getelementptr inbounds i32, i32* %14, i64 0
  %555 = load i32, i32* %554, align 16
  %556 = icmp eq i32 %555, 32
  br label %557

557:                                              ; preds = %553, %546
  %558 = phi i1 [ false, %546 ], [ %556, %553 ]
  %559 = zext i1 %558 to i32
  %560 = call i32 @g_assert(i32 %559)
  %561 = load i32*, i32** %3, align 8
  %562 = call i32 @hb_unicode_decompose_compatibility(i32* %561, i32 8202, i32* %14)
  %563 = icmp eq i32 %562, 1
  br i1 %563, label %564, label %568

564:                                              ; preds = %557
  %565 = getelementptr inbounds i32, i32* %14, i64 0
  %566 = load i32, i32* %565, align 16
  %567 = icmp eq i32 %566, 32
  br label %568

568:                                              ; preds = %564, %557
  %569 = phi i1 [ false, %557 ], [ %567, %564 ]
  %570 = zext i1 %569 to i32
  %571 = call i32 @g_assert(i32 %570)
  %572 = load i32*, i32** %3, align 8
  %573 = call i32 @hb_unicode_decompose_compatibility(i32* %572, i32 1415, i32* %14)
  %574 = icmp eq i32 %573, 2
  br i1 %574, label %575, label %583

575:                                              ; preds = %568
  %576 = getelementptr inbounds i32, i32* %14, i64 0
  %577 = load i32, i32* %576, align 16
  %578 = icmp eq i32 %577, 1381
  br i1 %578, label %579, label %583

579:                                              ; preds = %575
  %580 = getelementptr inbounds i32, i32* %14, i64 1
  %581 = load i32, i32* %580, align 4
  %582 = icmp eq i32 %581, 1410
  br label %583

583:                                              ; preds = %579, %575, %568
  %584 = phi i1 [ false, %575 ], [ false, %568 ], [ %582, %579 ]
  %585 = zext i1 %584 to i32
  %586 = call i32 @g_assert(i32 %585)
  %587 = load i32*, i32** %3, align 8
  %588 = call i32 @hb_unicode_decompose_compatibility(i32* %587, i32 8215, i32* %14)
  %589 = icmp eq i32 %588, 2
  br i1 %589, label %590, label %598

590:                                              ; preds = %583
  %591 = getelementptr inbounds i32, i32* %14, i64 0
  %592 = load i32, i32* %591, align 16
  %593 = icmp eq i32 %592, 32
  br i1 %593, label %594, label %598

594:                                              ; preds = %590
  %595 = getelementptr inbounds i32, i32* %14, i64 1
  %596 = load i32, i32* %595, align 4
  %597 = icmp eq i32 %596, 819
  br label %598

598:                                              ; preds = %594, %590, %583
  %599 = phi i1 [ false, %590 ], [ false, %583 ], [ %597, %594 ]
  %600 = zext i1 %599 to i32
  %601 = call i32 @g_assert(i32 %600)
  %602 = load i32*, i32** %3, align 8
  %603 = call i32 @hb_unicode_decompose_compatibility(i32* %602, i32 8229, i32* %14)
  %604 = icmp eq i32 %603, 2
  br i1 %604, label %605, label %613

605:                                              ; preds = %598
  %606 = getelementptr inbounds i32, i32* %14, i64 0
  %607 = load i32, i32* %606, align 16
  %608 = icmp eq i32 %607, 46
  br i1 %608, label %609, label %613

609:                                              ; preds = %605
  %610 = getelementptr inbounds i32, i32* %14, i64 1
  %611 = load i32, i32* %610, align 4
  %612 = icmp eq i32 %611, 46
  br label %613

613:                                              ; preds = %609, %605, %598
  %614 = phi i1 [ false, %605 ], [ false, %598 ], [ %612, %609 ]
  %615 = zext i1 %614 to i32
  %616 = call i32 @g_assert(i32 %615)
  %617 = load i32*, i32** %3, align 8
  %618 = call i32 @hb_unicode_decompose_compatibility(i32* %617, i32 8243, i32* %14)
  %619 = icmp eq i32 %618, 2
  br i1 %619, label %620, label %628

620:                                              ; preds = %613
  %621 = getelementptr inbounds i32, i32* %14, i64 0
  %622 = load i32, i32* %621, align 16
  %623 = icmp eq i32 %622, 8242
  br i1 %623, label %624, label %628

624:                                              ; preds = %620
  %625 = getelementptr inbounds i32, i32* %14, i64 1
  %626 = load i32, i32* %625, align 4
  %627 = icmp eq i32 %626, 8242
  br label %628

628:                                              ; preds = %624, %620, %613
  %629 = phi i1 [ false, %620 ], [ false, %613 ], [ %627, %624 ]
  %630 = zext i1 %629 to i32
  %631 = call i32 @g_assert(i32 %630)
  %632 = load i32*, i32** %3, align 8
  %633 = call i32 @hb_unicode_decompose_compatibility(i32* %632, i32 8230, i32* %14)
  %634 = icmp eq i32 %633, 3
  br i1 %634, label %635, label %647

635:                                              ; preds = %628
  %636 = getelementptr inbounds i32, i32* %14, i64 0
  %637 = load i32, i32* %636, align 16
  %638 = icmp eq i32 %637, 46
  br i1 %638, label %639, label %647

639:                                              ; preds = %635
  %640 = getelementptr inbounds i32, i32* %14, i64 1
  %641 = load i32, i32* %640, align 4
  %642 = icmp eq i32 %641, 46
  br i1 %642, label %643, label %647

643:                                              ; preds = %639
  %644 = getelementptr inbounds i32, i32* %14, i64 2
  %645 = load i32, i32* %644, align 8
  %646 = icmp eq i32 %645, 46
  br label %647

647:                                              ; preds = %643, %639, %635, %628
  %648 = phi i1 [ false, %639 ], [ false, %635 ], [ false, %628 ], [ %646, %643 ]
  %649 = zext i1 %648 to i32
  %650 = call i32 @g_assert(i32 %649)
  %651 = load i32*, i32** %3, align 8
  %652 = call i32 @hb_unicode_decompose_compatibility(i32* %651, i32 8244, i32* %14)
  %653 = icmp eq i32 %652, 3
  br i1 %653, label %654, label %666

654:                                              ; preds = %647
  %655 = getelementptr inbounds i32, i32* %14, i64 0
  %656 = load i32, i32* %655, align 16
  %657 = icmp eq i32 %656, 8242
  br i1 %657, label %658, label %666

658:                                              ; preds = %654
  %659 = getelementptr inbounds i32, i32* %14, i64 1
  %660 = load i32, i32* %659, align 4
  %661 = icmp eq i32 %660, 8242
  br i1 %661, label %662, label %666

662:                                              ; preds = %658
  %663 = getelementptr inbounds i32, i32* %14, i64 2
  %664 = load i32, i32* %663, align 8
  %665 = icmp eq i32 %664, 8242
  br label %666

666:                                              ; preds = %662, %658, %654, %647
  %667 = phi i1 [ false, %658 ], [ false, %654 ], [ false, %647 ], [ %665, %662 ]
  %668 = zext i1 %667 to i32
  %669 = call i32 @g_assert(i32 %668)
  %670 = load i32*, i32** %3, align 8
  %671 = call i32 @hb_unicode_decompose_compatibility(i32* %670, i32 8507, i32* %14)
  %672 = icmp eq i32 %671, 3
  br i1 %672, label %673, label %685

673:                                              ; preds = %666
  %674 = getelementptr inbounds i32, i32* %14, i64 0
  %675 = load i32, i32* %674, align 16
  %676 = icmp eq i32 %675, 70
  br i1 %676, label %677, label %685

677:                                              ; preds = %673
  %678 = getelementptr inbounds i32, i32* %14, i64 1
  %679 = load i32, i32* %678, align 4
  %680 = icmp eq i32 %679, 65
  br i1 %680, label %681, label %685

681:                                              ; preds = %677
  %682 = getelementptr inbounds i32, i32* %14, i64 2
  %683 = load i32, i32* %682, align 8
  %684 = icmp eq i32 %683, 88
  br label %685

685:                                              ; preds = %681, %677, %673, %666
  %686 = phi i1 [ false, %677 ], [ false, %673 ], [ false, %666 ], [ %684, %681 ]
  %687 = zext i1 %686 to i32
  %688 = call i32 @g_assert(i32 %687)
  %689 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %689)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @g_assert(i32) #2

declare dso_local i64 @hb_unicode_compose(i32*, i32, i32, i32*) #2

declare dso_local i64 @hb_unicode_decompose(i32*, i32, i32*, i32*) #2

declare dso_local i32 @hb_unicode_decompose_compatibility(i32*, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
