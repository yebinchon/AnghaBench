; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmsgamma.c_DefaultEvalParametricFn.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmsgamma.c_DefaultEvalParametricFn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MATRIX_DET_TOLERANCE = common dso_local global i32 0, align 4
@PLUS_INF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*, i32)* @DefaultEvalParametricFn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DefaultEvalParametricFn(i32 %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @cmsUNUSED_PARAMETER(i32 %13)
  %15 = load i32, i32* %7, align 4
  switch i32 %15, label %731 [
    i32 1, label %16
    i32 -1, label %40
    i32 2, label %75
    i32 -2, label %118
    i32 3, label %160
    i32 -3, label %214
    i32 4, label %264
    i32 -4, label %297
    i32 5, label %369
    i32 -5, label %413
    i32 6, label %482
    i32 -6, label %509
    i32 7, label %545
    i32 -7, label %577
    i32 8, label %626
    i32 -8, label %648
    i32 108, label %694
    i32 -108, label %719
  ]

16:                                               ; preds = %4
  %17 = load i32, i32* %9, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %16
  %20 = load i32*, i32** %8, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = sitofp i32 %22 to double
  %24 = fsub double %23, 1.000000e+00
  %25 = fptosi double %24 to i32
  %26 = call i32 @fabs(i32 %25)
  %27 = load i32, i32* @MATRIX_DET_TOLERANCE, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %19
  %30 = load i32, i32* %9, align 4
  store i32 %30, i32* %11, align 4
  br label %32

31:                                               ; preds = %19
  store i32 0, i32* %11, align 4
  br label %32

32:                                               ; preds = %31, %29
  br label %39

33:                                               ; preds = %16
  %34 = load i32, i32* %9, align 4
  %35 = load i32*, i32** %8, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @pow(i32 %34, i32 %37)
  store i32 %38, i32* %11, align 4
  br label %39

39:                                               ; preds = %33, %32
  br label %732

40:                                               ; preds = %4
  %41 = load i32, i32* %9, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %57

43:                                               ; preds = %40
  %44 = load i32*, i32** %8, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = sitofp i32 %46 to double
  %48 = fsub double %47, 1.000000e+00
  %49 = fptosi double %48 to i32
  %50 = call i32 @fabs(i32 %49)
  %51 = load i32, i32* @MATRIX_DET_TOLERANCE, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %43
  %54 = load i32, i32* %9, align 4
  store i32 %54, i32* %11, align 4
  br label %56

55:                                               ; preds = %43
  store i32 0, i32* %11, align 4
  br label %56

56:                                               ; preds = %55, %53
  br label %74

57:                                               ; preds = %40
  %58 = load i32*, i32** %8, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @fabs(i32 %60)
  %62 = load i32, i32* @MATRIX_DET_TOLERANCE, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %57
  %65 = load i32, i32* @PLUS_INF, align 4
  store i32 %65, i32* %11, align 4
  br label %73

66:                                               ; preds = %57
  %67 = load i32, i32* %9, align 4
  %68 = load i32*, i32** %8, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = sdiv i32 1, %70
  %72 = call i32 @pow(i32 %67, i32 %71)
  store i32 %72, i32* %11, align 4
  br label %73

73:                                               ; preds = %66, %64
  br label %74

74:                                               ; preds = %73, %56
  br label %732

75:                                               ; preds = %4
  %76 = load i32*, i32** %8, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @fabs(i32 %78)
  %80 = load i32, i32* @MATRIX_DET_TOLERANCE, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %75
  store i32 0, i32* %11, align 4
  br label %117

83:                                               ; preds = %75
  %84 = load i32*, i32** %8, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 2
  %86 = load i32, i32* %85, align 4
  %87 = sub nsw i32 0, %86
  %88 = load i32*, i32** %8, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 1
  %90 = load i32, i32* %89, align 4
  %91 = sdiv i32 %87, %90
  store i32 %91, i32* %12, align 4
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* %12, align 4
  %94 = icmp sge i32 %92, %93
  br i1 %94, label %95, label %115

95:                                               ; preds = %83
  %96 = load i32*, i32** %8, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %9, align 4
  %100 = mul nsw i32 %98, %99
  %101 = load i32*, i32** %8, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 2
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %100, %103
  store i32 %104, i32* %10, align 4
  %105 = load i32, i32* %10, align 4
  %106 = icmp sgt i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %95
  %108 = load i32, i32* %10, align 4
  %109 = load i32*, i32** %8, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @pow(i32 %108, i32 %111)
  store i32 %112, i32* %11, align 4
  br label %114

113:                                              ; preds = %95
  store i32 0, i32* %11, align 4
  br label %114

114:                                              ; preds = %113, %107
  br label %116

115:                                              ; preds = %83
  store i32 0, i32* %11, align 4
  br label %116

116:                                              ; preds = %115, %114
  br label %117

117:                                              ; preds = %116, %82
  br label %732

118:                                              ; preds = %4
  %119 = load i32*, i32** %8, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @fabs(i32 %121)
  %123 = load i32, i32* @MATRIX_DET_TOLERANCE, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %132, label %125

125:                                              ; preds = %118
  %126 = load i32*, i32** %8, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 1
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @fabs(i32 %128)
  %130 = load i32, i32* @MATRIX_DET_TOLERANCE, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %125, %118
  store i32 0, i32* %11, align 4
  br label %159

133:                                              ; preds = %125
  %134 = load i32, i32* %9, align 4
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %133
  store i32 0, i32* %11, align 4
  br label %154

137:                                              ; preds = %133
  %138 = load i32, i32* %9, align 4
  %139 = load i32*, i32** %8, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 0
  %141 = load i32, i32* %140, align 4
  %142 = sitofp i32 %141 to double
  %143 = fdiv double 1.000000e+00, %142
  %144 = fptosi double %143 to i32
  %145 = call i32 @pow(i32 %138, i32 %144)
  %146 = load i32*, i32** %8, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 2
  %148 = load i32, i32* %147, align 4
  %149 = sub nsw i32 %145, %148
  %150 = load i32*, i32** %8, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 1
  %152 = load i32, i32* %151, align 4
  %153 = sdiv i32 %149, %152
  store i32 %153, i32* %11, align 4
  br label %154

154:                                              ; preds = %137, %136
  %155 = load i32, i32* %11, align 4
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %154
  store i32 0, i32* %11, align 4
  br label %158

158:                                              ; preds = %157, %154
  br label %159

159:                                              ; preds = %158, %132
  br label %732

160:                                              ; preds = %4
  %161 = load i32*, i32** %8, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 1
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @fabs(i32 %163)
  %165 = load i32, i32* @MATRIX_DET_TOLERANCE, align 4
  %166 = icmp slt i32 %164, %165
  br i1 %166, label %167, label %168

167:                                              ; preds = %160
  store i32 0, i32* %11, align 4
  br label %213

168:                                              ; preds = %160
  %169 = load i32*, i32** %8, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 2
  %171 = load i32, i32* %170, align 4
  %172 = sub nsw i32 0, %171
  %173 = load i32*, i32** %8, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 1
  %175 = load i32, i32* %174, align 4
  %176 = sdiv i32 %172, %175
  store i32 %176, i32* %12, align 4
  %177 = load i32, i32* %12, align 4
  %178 = icmp slt i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %168
  store i32 0, i32* %12, align 4
  br label %180

180:                                              ; preds = %179, %168
  %181 = load i32, i32* %9, align 4
  %182 = load i32, i32* %12, align 4
  %183 = icmp sge i32 %181, %182
  br i1 %183, label %184, label %208

184:                                              ; preds = %180
  %185 = load i32*, i32** %8, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 1
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* %9, align 4
  %189 = mul nsw i32 %187, %188
  %190 = load i32*, i32** %8, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 2
  %192 = load i32, i32* %191, align 4
  %193 = add nsw i32 %189, %192
  store i32 %193, i32* %10, align 4
  %194 = load i32, i32* %10, align 4
  %195 = icmp sgt i32 %194, 0
  br i1 %195, label %196, label %206

196:                                              ; preds = %184
  %197 = load i32, i32* %10, align 4
  %198 = load i32*, i32** %8, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 0
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @pow(i32 %197, i32 %200)
  %202 = load i32*, i32** %8, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 3
  %204 = load i32, i32* %203, align 4
  %205 = add nsw i32 %201, %204
  store i32 %205, i32* %11, align 4
  br label %207

206:                                              ; preds = %184
  store i32 0, i32* %11, align 4
  br label %207

207:                                              ; preds = %206, %196
  br label %212

208:                                              ; preds = %180
  %209 = load i32*, i32** %8, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 3
  %211 = load i32, i32* %210, align 4
  store i32 %211, i32* %11, align 4
  br label %212

212:                                              ; preds = %208, %207
  br label %213

213:                                              ; preds = %212, %167
  br label %732

214:                                              ; preds = %4
  %215 = load i32*, i32** %8, align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 1
  %217 = load i32, i32* %216, align 4
  %218 = call i32 @fabs(i32 %217)
  %219 = load i32, i32* @MATRIX_DET_TOLERANCE, align 4
  %220 = icmp slt i32 %218, %219
  br i1 %220, label %221, label %222

221:                                              ; preds = %214
  store i32 0, i32* %11, align 4
  br label %263

222:                                              ; preds = %214
  %223 = load i32, i32* %9, align 4
  %224 = load i32*, i32** %8, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 3
  %226 = load i32, i32* %225, align 4
  %227 = icmp sge i32 %223, %226
  br i1 %227, label %228, label %253

228:                                              ; preds = %222
  %229 = load i32, i32* %9, align 4
  %230 = load i32*, i32** %8, align 8
  %231 = getelementptr inbounds i32, i32* %230, i64 3
  %232 = load i32, i32* %231, align 4
  %233 = sub nsw i32 %229, %232
  store i32 %233, i32* %10, align 4
  %234 = load i32, i32* %10, align 4
  %235 = icmp sgt i32 %234, 0
  br i1 %235, label %236, label %251

236:                                              ; preds = %228
  %237 = load i32, i32* %10, align 4
  %238 = load i32*, i32** %8, align 8
  %239 = getelementptr inbounds i32, i32* %238, i64 0
  %240 = load i32, i32* %239, align 4
  %241 = sdiv i32 1, %240
  %242 = call i32 @pow(i32 %237, i32 %241)
  %243 = load i32*, i32** %8, align 8
  %244 = getelementptr inbounds i32, i32* %243, i64 2
  %245 = load i32, i32* %244, align 4
  %246 = sub nsw i32 %242, %245
  %247 = load i32*, i32** %8, align 8
  %248 = getelementptr inbounds i32, i32* %247, i64 1
  %249 = load i32, i32* %248, align 4
  %250 = sdiv i32 %246, %249
  store i32 %250, i32* %11, align 4
  br label %252

251:                                              ; preds = %228
  store i32 0, i32* %11, align 4
  br label %252

252:                                              ; preds = %251, %236
  br label %262

253:                                              ; preds = %222
  %254 = load i32*, i32** %8, align 8
  %255 = getelementptr inbounds i32, i32* %254, i64 2
  %256 = load i32, i32* %255, align 4
  %257 = sub nsw i32 0, %256
  %258 = load i32*, i32** %8, align 8
  %259 = getelementptr inbounds i32, i32* %258, i64 1
  %260 = load i32, i32* %259, align 4
  %261 = sdiv i32 %257, %260
  store i32 %261, i32* %11, align 4
  br label %262

262:                                              ; preds = %253, %252
  br label %263

263:                                              ; preds = %262, %221
  br label %732

264:                                              ; preds = %4
  %265 = load i32, i32* %9, align 4
  %266 = load i32*, i32** %8, align 8
  %267 = getelementptr inbounds i32, i32* %266, i64 4
  %268 = load i32, i32* %267, align 4
  %269 = icmp sge i32 %265, %268
  br i1 %269, label %270, label %290

270:                                              ; preds = %264
  %271 = load i32*, i32** %8, align 8
  %272 = getelementptr inbounds i32, i32* %271, i64 1
  %273 = load i32, i32* %272, align 4
  %274 = load i32, i32* %9, align 4
  %275 = mul nsw i32 %273, %274
  %276 = load i32*, i32** %8, align 8
  %277 = getelementptr inbounds i32, i32* %276, i64 2
  %278 = load i32, i32* %277, align 4
  %279 = add nsw i32 %275, %278
  store i32 %279, i32* %10, align 4
  %280 = load i32, i32* %10, align 4
  %281 = icmp sgt i32 %280, 0
  br i1 %281, label %282, label %288

282:                                              ; preds = %270
  %283 = load i32, i32* %10, align 4
  %284 = load i32*, i32** %8, align 8
  %285 = getelementptr inbounds i32, i32* %284, i64 0
  %286 = load i32, i32* %285, align 4
  %287 = call i32 @pow(i32 %283, i32 %286)
  store i32 %287, i32* %11, align 4
  br label %289

288:                                              ; preds = %270
  store i32 0, i32* %11, align 4
  br label %289

289:                                              ; preds = %288, %282
  br label %296

290:                                              ; preds = %264
  %291 = load i32, i32* %9, align 4
  %292 = load i32*, i32** %8, align 8
  %293 = getelementptr inbounds i32, i32* %292, i64 3
  %294 = load i32, i32* %293, align 4
  %295 = mul nsw i32 %291, %294
  store i32 %295, i32* %11, align 4
  br label %296

296:                                              ; preds = %290, %289
  br label %732

297:                                              ; preds = %4
  %298 = load i32*, i32** %8, align 8
  %299 = getelementptr inbounds i32, i32* %298, i64 0
  %300 = load i32, i32* %299, align 4
  %301 = call i32 @fabs(i32 %300)
  %302 = load i32, i32* @MATRIX_DET_TOLERANCE, align 4
  %303 = icmp slt i32 %301, %302
  br i1 %303, label %318, label %304

304:                                              ; preds = %297
  %305 = load i32*, i32** %8, align 8
  %306 = getelementptr inbounds i32, i32* %305, i64 1
  %307 = load i32, i32* %306, align 4
  %308 = call i32 @fabs(i32 %307)
  %309 = load i32, i32* @MATRIX_DET_TOLERANCE, align 4
  %310 = icmp slt i32 %308, %309
  br i1 %310, label %318, label %311

311:                                              ; preds = %304
  %312 = load i32*, i32** %8, align 8
  %313 = getelementptr inbounds i32, i32* %312, i64 3
  %314 = load i32, i32* %313, align 4
  %315 = call i32 @fabs(i32 %314)
  %316 = load i32, i32* @MATRIX_DET_TOLERANCE, align 4
  %317 = icmp slt i32 %315, %316
  br i1 %317, label %318, label %319

318:                                              ; preds = %311, %304, %297
  store i32 0, i32* %11, align 4
  br label %368

319:                                              ; preds = %311
  %320 = load i32*, i32** %8, align 8
  %321 = getelementptr inbounds i32, i32* %320, i64 1
  %322 = load i32, i32* %321, align 4
  %323 = load i32*, i32** %8, align 8
  %324 = getelementptr inbounds i32, i32* %323, i64 4
  %325 = load i32, i32* %324, align 4
  %326 = mul nsw i32 %322, %325
  %327 = load i32*, i32** %8, align 8
  %328 = getelementptr inbounds i32, i32* %327, i64 2
  %329 = load i32, i32* %328, align 4
  %330 = add nsw i32 %326, %329
  store i32 %330, i32* %10, align 4
  %331 = load i32, i32* %10, align 4
  %332 = icmp slt i32 %331, 0
  br i1 %332, label %333, label %334

333:                                              ; preds = %319
  store i32 0, i32* %12, align 4
  br label %340

334:                                              ; preds = %319
  %335 = load i32, i32* %10, align 4
  %336 = load i32*, i32** %8, align 8
  %337 = getelementptr inbounds i32, i32* %336, i64 0
  %338 = load i32, i32* %337, align 4
  %339 = call i32 @pow(i32 %335, i32 %338)
  store i32 %339, i32* %12, align 4
  br label %340

340:                                              ; preds = %334, %333
  %341 = load i32, i32* %9, align 4
  %342 = load i32, i32* %12, align 4
  %343 = icmp sge i32 %341, %342
  br i1 %343, label %344, label %361

344:                                              ; preds = %340
  %345 = load i32, i32* %9, align 4
  %346 = load i32*, i32** %8, align 8
  %347 = getelementptr inbounds i32, i32* %346, i64 0
  %348 = load i32, i32* %347, align 4
  %349 = sitofp i32 %348 to double
  %350 = fdiv double 1.000000e+00, %349
  %351 = fptosi double %350 to i32
  %352 = call i32 @pow(i32 %345, i32 %351)
  %353 = load i32*, i32** %8, align 8
  %354 = getelementptr inbounds i32, i32* %353, i64 2
  %355 = load i32, i32* %354, align 4
  %356 = sub nsw i32 %352, %355
  %357 = load i32*, i32** %8, align 8
  %358 = getelementptr inbounds i32, i32* %357, i64 1
  %359 = load i32, i32* %358, align 4
  %360 = sdiv i32 %356, %359
  store i32 %360, i32* %11, align 4
  br label %367

361:                                              ; preds = %340
  %362 = load i32, i32* %9, align 4
  %363 = load i32*, i32** %8, align 8
  %364 = getelementptr inbounds i32, i32* %363, i64 3
  %365 = load i32, i32* %364, align 4
  %366 = sdiv i32 %362, %365
  store i32 %366, i32* %11, align 4
  br label %367

367:                                              ; preds = %361, %344
  br label %368

368:                                              ; preds = %367, %318
  br label %732

369:                                              ; preds = %4
  %370 = load i32, i32* %9, align 4
  %371 = load i32*, i32** %8, align 8
  %372 = getelementptr inbounds i32, i32* %371, i64 4
  %373 = load i32, i32* %372, align 4
  %374 = icmp sge i32 %370, %373
  br i1 %374, label %375, label %402

375:                                              ; preds = %369
  %376 = load i32*, i32** %8, align 8
  %377 = getelementptr inbounds i32, i32* %376, i64 1
  %378 = load i32, i32* %377, align 4
  %379 = load i32, i32* %9, align 4
  %380 = mul nsw i32 %378, %379
  %381 = load i32*, i32** %8, align 8
  %382 = getelementptr inbounds i32, i32* %381, i64 2
  %383 = load i32, i32* %382, align 4
  %384 = add nsw i32 %380, %383
  store i32 %384, i32* %10, align 4
  %385 = load i32, i32* %10, align 4
  %386 = icmp sgt i32 %385, 0
  br i1 %386, label %387, label %397

387:                                              ; preds = %375
  %388 = load i32, i32* %10, align 4
  %389 = load i32*, i32** %8, align 8
  %390 = getelementptr inbounds i32, i32* %389, i64 0
  %391 = load i32, i32* %390, align 4
  %392 = call i32 @pow(i32 %388, i32 %391)
  %393 = load i32*, i32** %8, align 8
  %394 = getelementptr inbounds i32, i32* %393, i64 5
  %395 = load i32, i32* %394, align 4
  %396 = add nsw i32 %392, %395
  store i32 %396, i32* %11, align 4
  br label %401

397:                                              ; preds = %375
  %398 = load i32*, i32** %8, align 8
  %399 = getelementptr inbounds i32, i32* %398, i64 5
  %400 = load i32, i32* %399, align 4
  store i32 %400, i32* %11, align 4
  br label %401

401:                                              ; preds = %397, %387
  br label %412

402:                                              ; preds = %369
  %403 = load i32, i32* %9, align 4
  %404 = load i32*, i32** %8, align 8
  %405 = getelementptr inbounds i32, i32* %404, i64 3
  %406 = load i32, i32* %405, align 4
  %407 = mul nsw i32 %403, %406
  %408 = load i32*, i32** %8, align 8
  %409 = getelementptr inbounds i32, i32* %408, i64 6
  %410 = load i32, i32* %409, align 4
  %411 = add nsw i32 %407, %410
  store i32 %411, i32* %11, align 4
  br label %412

412:                                              ; preds = %402, %401
  br label %732

413:                                              ; preds = %4
  %414 = load i32*, i32** %8, align 8
  %415 = getelementptr inbounds i32, i32* %414, i64 1
  %416 = load i32, i32* %415, align 4
  %417 = call i32 @fabs(i32 %416)
  %418 = load i32, i32* @MATRIX_DET_TOLERANCE, align 4
  %419 = icmp slt i32 %417, %418
  br i1 %419, label %427, label %420

420:                                              ; preds = %413
  %421 = load i32*, i32** %8, align 8
  %422 = getelementptr inbounds i32, i32* %421, i64 3
  %423 = load i32, i32* %422, align 4
  %424 = call i32 @fabs(i32 %423)
  %425 = load i32, i32* @MATRIX_DET_TOLERANCE, align 4
  %426 = icmp slt i32 %424, %425
  br i1 %426, label %427, label %428

427:                                              ; preds = %420, %413
  store i32 0, i32* %11, align 4
  br label %481

428:                                              ; preds = %420
  %429 = load i32*, i32** %8, align 8
  %430 = getelementptr inbounds i32, i32* %429, i64 3
  %431 = load i32, i32* %430, align 4
  %432 = load i32*, i32** %8, align 8
  %433 = getelementptr inbounds i32, i32* %432, i64 4
  %434 = load i32, i32* %433, align 4
  %435 = mul nsw i32 %431, %434
  %436 = load i32*, i32** %8, align 8
  %437 = getelementptr inbounds i32, i32* %436, i64 6
  %438 = load i32, i32* %437, align 4
  %439 = add nsw i32 %435, %438
  store i32 %439, i32* %12, align 4
  %440 = load i32, i32* %9, align 4
  %441 = load i32, i32* %12, align 4
  %442 = icmp sge i32 %440, %441
  br i1 %442, label %443, label %470

443:                                              ; preds = %428
  %444 = load i32, i32* %9, align 4
  %445 = load i32*, i32** %8, align 8
  %446 = getelementptr inbounds i32, i32* %445, i64 5
  %447 = load i32, i32* %446, align 4
  %448 = sub nsw i32 %444, %447
  store i32 %448, i32* %10, align 4
  %449 = load i32, i32* %10, align 4
  %450 = icmp slt i32 %449, 0
  br i1 %450, label %451, label %452

451:                                              ; preds = %443
  store i32 0, i32* %11, align 4
  br label %469

452:                                              ; preds = %443
  %453 = load i32, i32* %10, align 4
  %454 = load i32*, i32** %8, align 8
  %455 = getelementptr inbounds i32, i32* %454, i64 0
  %456 = load i32, i32* %455, align 4
  %457 = sitofp i32 %456 to double
  %458 = fdiv double 1.000000e+00, %457
  %459 = fptosi double %458 to i32
  %460 = call i32 @pow(i32 %453, i32 %459)
  %461 = load i32*, i32** %8, align 8
  %462 = getelementptr inbounds i32, i32* %461, i64 2
  %463 = load i32, i32* %462, align 4
  %464 = sub nsw i32 %460, %463
  %465 = load i32*, i32** %8, align 8
  %466 = getelementptr inbounds i32, i32* %465, i64 1
  %467 = load i32, i32* %466, align 4
  %468 = sdiv i32 %464, %467
  store i32 %468, i32* %11, align 4
  br label %469

469:                                              ; preds = %452, %451
  br label %480

470:                                              ; preds = %428
  %471 = load i32, i32* %9, align 4
  %472 = load i32*, i32** %8, align 8
  %473 = getelementptr inbounds i32, i32* %472, i64 6
  %474 = load i32, i32* %473, align 4
  %475 = sub nsw i32 %471, %474
  %476 = load i32*, i32** %8, align 8
  %477 = getelementptr inbounds i32, i32* %476, i64 3
  %478 = load i32, i32* %477, align 4
  %479 = sdiv i32 %475, %478
  store i32 %479, i32* %11, align 4
  br label %480

480:                                              ; preds = %470, %469
  br label %481

481:                                              ; preds = %480, %427
  br label %732

482:                                              ; preds = %4
  %483 = load i32*, i32** %8, align 8
  %484 = getelementptr inbounds i32, i32* %483, i64 1
  %485 = load i32, i32* %484, align 4
  %486 = load i32, i32* %9, align 4
  %487 = mul nsw i32 %485, %486
  %488 = load i32*, i32** %8, align 8
  %489 = getelementptr inbounds i32, i32* %488, i64 2
  %490 = load i32, i32* %489, align 4
  %491 = add nsw i32 %487, %490
  store i32 %491, i32* %10, align 4
  %492 = load i32, i32* %10, align 4
  %493 = icmp slt i32 %492, 0
  br i1 %493, label %494, label %498

494:                                              ; preds = %482
  %495 = load i32*, i32** %8, align 8
  %496 = getelementptr inbounds i32, i32* %495, i64 3
  %497 = load i32, i32* %496, align 4
  store i32 %497, i32* %11, align 4
  br label %508

498:                                              ; preds = %482
  %499 = load i32, i32* %10, align 4
  %500 = load i32*, i32** %8, align 8
  %501 = getelementptr inbounds i32, i32* %500, i64 0
  %502 = load i32, i32* %501, align 4
  %503 = call i32 @pow(i32 %499, i32 %502)
  %504 = load i32*, i32** %8, align 8
  %505 = getelementptr inbounds i32, i32* %504, i64 3
  %506 = load i32, i32* %505, align 4
  %507 = add nsw i32 %503, %506
  store i32 %507, i32* %11, align 4
  br label %508

508:                                              ; preds = %498, %494
  br label %732

509:                                              ; preds = %4
  %510 = load i32*, i32** %8, align 8
  %511 = getelementptr inbounds i32, i32* %510, i64 1
  %512 = load i32, i32* %511, align 4
  %513 = call i32 @fabs(i32 %512)
  %514 = load i32, i32* @MATRIX_DET_TOLERANCE, align 4
  %515 = icmp slt i32 %513, %514
  br i1 %515, label %516, label %517

516:                                              ; preds = %509
  store i32 0, i32* %11, align 4
  br label %544

517:                                              ; preds = %509
  %518 = load i32, i32* %9, align 4
  %519 = load i32*, i32** %8, align 8
  %520 = getelementptr inbounds i32, i32* %519, i64 3
  %521 = load i32, i32* %520, align 4
  %522 = sub nsw i32 %518, %521
  store i32 %522, i32* %10, align 4
  %523 = load i32, i32* %10, align 4
  %524 = icmp slt i32 %523, 0
  br i1 %524, label %525, label %526

525:                                              ; preds = %517
  store i32 0, i32* %11, align 4
  br label %543

526:                                              ; preds = %517
  %527 = load i32, i32* %10, align 4
  %528 = load i32*, i32** %8, align 8
  %529 = getelementptr inbounds i32, i32* %528, i64 0
  %530 = load i32, i32* %529, align 4
  %531 = sitofp i32 %530 to double
  %532 = fdiv double 1.000000e+00, %531
  %533 = fptosi double %532 to i32
  %534 = call i32 @pow(i32 %527, i32 %533)
  %535 = load i32*, i32** %8, align 8
  %536 = getelementptr inbounds i32, i32* %535, i64 2
  %537 = load i32, i32* %536, align 4
  %538 = sub nsw i32 %534, %537
  %539 = load i32*, i32** %8, align 8
  %540 = getelementptr inbounds i32, i32* %539, i64 1
  %541 = load i32, i32* %540, align 4
  %542 = sdiv i32 %538, %541
  store i32 %542, i32* %11, align 4
  br label %543

543:                                              ; preds = %526, %525
  br label %544

544:                                              ; preds = %543, %516
  br label %732

545:                                              ; preds = %4
  %546 = load i32*, i32** %8, align 8
  %547 = getelementptr inbounds i32, i32* %546, i64 2
  %548 = load i32, i32* %547, align 4
  %549 = load i32, i32* %9, align 4
  %550 = load i32*, i32** %8, align 8
  %551 = getelementptr inbounds i32, i32* %550, i64 0
  %552 = load i32, i32* %551, align 4
  %553 = call i32 @pow(i32 %549, i32 %552)
  %554 = mul nsw i32 %548, %553
  %555 = load i32*, i32** %8, align 8
  %556 = getelementptr inbounds i32, i32* %555, i64 3
  %557 = load i32, i32* %556, align 4
  %558 = add nsw i32 %554, %557
  store i32 %558, i32* %10, align 4
  %559 = load i32, i32* %10, align 4
  %560 = icmp sle i32 %559, 0
  br i1 %560, label %561, label %565

561:                                              ; preds = %545
  %562 = load i32*, i32** %8, align 8
  %563 = getelementptr inbounds i32, i32* %562, i64 4
  %564 = load i32, i32* %563, align 4
  store i32 %564, i32* %11, align 4
  br label %576

565:                                              ; preds = %545
  %566 = load i32*, i32** %8, align 8
  %567 = getelementptr inbounds i32, i32* %566, i64 1
  %568 = load i32, i32* %567, align 4
  %569 = load i32, i32* %10, align 4
  %570 = call i32 @log10(i32 %569)
  %571 = mul nsw i32 %568, %570
  %572 = load i32*, i32** %8, align 8
  %573 = getelementptr inbounds i32, i32* %572, i64 4
  %574 = load i32, i32* %573, align 4
  %575 = add nsw i32 %571, %574
  store i32 %575, i32* %11, align 4
  br label %576

576:                                              ; preds = %565, %561
  br label %732

577:                                              ; preds = %4
  %578 = load i32*, i32** %8, align 8
  %579 = getelementptr inbounds i32, i32* %578, i64 0
  %580 = load i32, i32* %579, align 4
  %581 = call i32 @fabs(i32 %580)
  %582 = load i32, i32* @MATRIX_DET_TOLERANCE, align 4
  %583 = icmp slt i32 %581, %582
  br i1 %583, label %598, label %584

584:                                              ; preds = %577
  %585 = load i32*, i32** %8, align 8
  %586 = getelementptr inbounds i32, i32* %585, i64 1
  %587 = load i32, i32* %586, align 4
  %588 = call i32 @fabs(i32 %587)
  %589 = load i32, i32* @MATRIX_DET_TOLERANCE, align 4
  %590 = icmp slt i32 %588, %589
  br i1 %590, label %598, label %591

591:                                              ; preds = %584
  %592 = load i32*, i32** %8, align 8
  %593 = getelementptr inbounds i32, i32* %592, i64 2
  %594 = load i32, i32* %593, align 4
  %595 = call i32 @fabs(i32 %594)
  %596 = load i32, i32* @MATRIX_DET_TOLERANCE, align 4
  %597 = icmp slt i32 %595, %596
  br i1 %597, label %598, label %599

598:                                              ; preds = %591, %584, %577
  store i32 0, i32* %11, align 4
  br label %625

599:                                              ; preds = %591
  %600 = load i32, i32* %9, align 4
  %601 = load i32*, i32** %8, align 8
  %602 = getelementptr inbounds i32, i32* %601, i64 4
  %603 = load i32, i32* %602, align 4
  %604 = sub nsw i32 %600, %603
  %605 = load i32*, i32** %8, align 8
  %606 = getelementptr inbounds i32, i32* %605, i64 1
  %607 = load i32, i32* %606, align 4
  %608 = sdiv i32 %604, %607
  %609 = call i32 @pow(i32 10, i32 %608)
  %610 = load i32*, i32** %8, align 8
  %611 = getelementptr inbounds i32, i32* %610, i64 3
  %612 = load i32, i32* %611, align 4
  %613 = sub nsw i32 %609, %612
  %614 = load i32*, i32** %8, align 8
  %615 = getelementptr inbounds i32, i32* %614, i64 2
  %616 = load i32, i32* %615, align 4
  %617 = sdiv i32 %613, %616
  %618 = load i32*, i32** %8, align 8
  %619 = getelementptr inbounds i32, i32* %618, i64 0
  %620 = load i32, i32* %619, align 4
  %621 = sitofp i32 %620 to double
  %622 = fdiv double 1.000000e+00, %621
  %623 = fptosi double %622 to i32
  %624 = call i32 @pow(i32 %617, i32 %623)
  store i32 %624, i32* %11, align 4
  br label %625

625:                                              ; preds = %599, %598
  br label %732

626:                                              ; preds = %4
  %627 = load i32*, i32** %8, align 8
  %628 = getelementptr inbounds i32, i32* %627, i64 0
  %629 = load i32, i32* %628, align 4
  %630 = load i32*, i32** %8, align 8
  %631 = getelementptr inbounds i32, i32* %630, i64 1
  %632 = load i32, i32* %631, align 4
  %633 = load i32*, i32** %8, align 8
  %634 = getelementptr inbounds i32, i32* %633, i64 2
  %635 = load i32, i32* %634, align 4
  %636 = load i32, i32* %9, align 4
  %637 = mul nsw i32 %635, %636
  %638 = load i32*, i32** %8, align 8
  %639 = getelementptr inbounds i32, i32* %638, i64 3
  %640 = load i32, i32* %639, align 4
  %641 = add nsw i32 %637, %640
  %642 = call i32 @pow(i32 %632, i32 %641)
  %643 = mul nsw i32 %629, %642
  %644 = load i32*, i32** %8, align 8
  %645 = getelementptr inbounds i32, i32* %644, i64 4
  %646 = load i32, i32* %645, align 4
  %647 = add nsw i32 %643, %646
  store i32 %647, i32* %11, align 4
  br label %732

648:                                              ; preds = %4
  %649 = load i32, i32* %9, align 4
  %650 = load i32*, i32** %8, align 8
  %651 = getelementptr inbounds i32, i32* %650, i64 4
  %652 = load i32, i32* %651, align 4
  %653 = sub nsw i32 %649, %652
  store i32 %653, i32* %12, align 4
  %654 = load i32, i32* %12, align 4
  %655 = icmp slt i32 %654, 0
  br i1 %655, label %656, label %657

656:                                              ; preds = %648
  store i32 0, i32* %11, align 4
  br label %693

657:                                              ; preds = %648
  %658 = load i32*, i32** %8, align 8
  %659 = getelementptr inbounds i32, i32* %658, i64 0
  %660 = load i32, i32* %659, align 4
  %661 = call i32 @fabs(i32 %660)
  %662 = load i32, i32* @MATRIX_DET_TOLERANCE, align 4
  %663 = icmp slt i32 %661, %662
  br i1 %663, label %671, label %664

664:                                              ; preds = %657
  %665 = load i32*, i32** %8, align 8
  %666 = getelementptr inbounds i32, i32* %665, i64 2
  %667 = load i32, i32* %666, align 4
  %668 = call i32 @fabs(i32 %667)
  %669 = load i32, i32* @MATRIX_DET_TOLERANCE, align 4
  %670 = icmp slt i32 %668, %669
  br i1 %670, label %671, label %672

671:                                              ; preds = %664, %657
  store i32 0, i32* %11, align 4
  br label %692

672:                                              ; preds = %664
  %673 = load i32, i32* %12, align 4
  %674 = load i32*, i32** %8, align 8
  %675 = getelementptr inbounds i32, i32* %674, i64 0
  %676 = load i32, i32* %675, align 4
  %677 = sdiv i32 %673, %676
  %678 = call i32 @log(i32 %677)
  %679 = load i32*, i32** %8, align 8
  %680 = getelementptr inbounds i32, i32* %679, i64 1
  %681 = load i32, i32* %680, align 4
  %682 = call i32 @log(i32 %681)
  %683 = sdiv i32 %678, %682
  %684 = load i32*, i32** %8, align 8
  %685 = getelementptr inbounds i32, i32* %684, i64 3
  %686 = load i32, i32* %685, align 4
  %687 = sub nsw i32 %683, %686
  %688 = load i32*, i32** %8, align 8
  %689 = getelementptr inbounds i32, i32* %688, i64 2
  %690 = load i32, i32* %689, align 4
  %691 = sdiv i32 %687, %690
  store i32 %691, i32* %11, align 4
  br label %692

692:                                              ; preds = %672, %671
  br label %693

693:                                              ; preds = %692, %656
  br label %732

694:                                              ; preds = %4
  %695 = load i32*, i32** %8, align 8
  %696 = getelementptr inbounds i32, i32* %695, i64 0
  %697 = load i32, i32* %696, align 4
  %698 = call i32 @fabs(i32 %697)
  %699 = load i32, i32* @MATRIX_DET_TOLERANCE, align 4
  %700 = icmp slt i32 %698, %699
  br i1 %700, label %701, label %702

701:                                              ; preds = %694
  store i32 0, i32* %11, align 4
  br label %718

702:                                              ; preds = %694
  %703 = load i32, i32* %9, align 4
  %704 = sub nsw i32 1, %703
  %705 = load i32*, i32** %8, align 8
  %706 = getelementptr inbounds i32, i32* %705, i64 0
  %707 = load i32, i32* %706, align 4
  %708 = sdiv i32 1, %707
  %709 = call i32 @pow(i32 %704, i32 %708)
  %710 = sitofp i32 %709 to double
  %711 = fsub double 1.000000e+00, %710
  %712 = fptosi double %711 to i32
  %713 = load i32*, i32** %8, align 8
  %714 = getelementptr inbounds i32, i32* %713, i64 0
  %715 = load i32, i32* %714, align 4
  %716 = sdiv i32 1, %715
  %717 = call i32 @pow(i32 %712, i32 %716)
  store i32 %717, i32* %11, align 4
  br label %718

718:                                              ; preds = %702, %701
  br label %732

719:                                              ; preds = %4
  %720 = load i32, i32* %9, align 4
  %721 = load i32*, i32** %8, align 8
  %722 = getelementptr inbounds i32, i32* %721, i64 0
  %723 = load i32, i32* %722, align 4
  %724 = call i32 @pow(i32 %720, i32 %723)
  %725 = sub nsw i32 1, %724
  %726 = load i32*, i32** %8, align 8
  %727 = getelementptr inbounds i32, i32* %726, i64 0
  %728 = load i32, i32* %727, align 4
  %729 = call i32 @pow(i32 %725, i32 %728)
  %730 = sub nsw i32 1, %729
  store i32 %730, i32* %11, align 4
  br label %732

731:                                              ; preds = %4
  store i32 0, i32* %5, align 4
  br label %734

732:                                              ; preds = %719, %718, %693, %626, %625, %576, %544, %508, %481, %412, %368, %296, %263, %213, %159, %117, %74, %39
  %733 = load i32, i32* %11, align 4
  store i32 %733, i32* %5, align 4
  br label %734

734:                                              ; preds = %732, %731
  %735 = load i32, i32* %5, align 4
  ret i32 %735
}

declare dso_local i32 @cmsUNUSED_PARAMETER(i32) #1

declare dso_local i32 @fabs(i32) #1

declare dso_local i32 @pow(i32, i32) #1

declare dso_local i32 @log10(i32) #1

declare dso_local i32 @log(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
