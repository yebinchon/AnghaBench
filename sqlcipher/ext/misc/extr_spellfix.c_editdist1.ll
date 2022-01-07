; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_spellfix.c_editdist1.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_spellfix.c_editdist1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FINAL_INS_COST_DIV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32*)* @editdist1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @editdist1(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca [75 x i32], align 16
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i8 0, i8* %12, align 1
  store i32 0, i32* %19, align 4
  store i32* null, i32** %23, align 8
  store i32 0, i32* %24, align 4
  %32 = load i8*, i8** %5, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %3
  %35 = load i8*, i8** %6, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %34, %3
  store i32 -1, i32* %4, align 4
  br label %503

38:                                               ; preds = %34
  br label %39

39:                                               ; preds = %57, %38
  %40 = load i8*, i8** %5, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 0
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %39
  %46 = load i8*, i8** %5, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 0
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = load i8*, i8** %6, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 0
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %49, %53
  br label %55

55:                                               ; preds = %45, %39
  %56 = phi i1 [ false, %39 ], [ %54, %45 ]
  br i1 %56, label %57, label %68

57:                                               ; preds = %55
  %58 = load i8*, i8** %5, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 0
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  store i32 %61, i32* %19, align 4
  %62 = load i8*, i8** %5, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %5, align 8
  %64 = load i8*, i8** %6, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %6, align 8
  %66 = load i32, i32* %24, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %24, align 4
  br label %39

68:                                               ; preds = %55
  %69 = load i32*, i32** %7, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i32, i32* %24, align 4
  %73 = load i32*, i32** %7, align 8
  store i32 %72, i32* %73, align 4
  br label %74

74:                                               ; preds = %71, %68
  %75 = load i8*, i8** %5, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 0
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %74
  %81 = load i8*, i8** %6, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 0
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %80
  store i32 0, i32* %4, align 4
  br label %503

87:                                               ; preds = %80, %74
  store i32 0, i32* %8, align 4
  br label %88

88:                                               ; preds = %106, %87
  %89 = load i8*, i8** %5, align 8
  %90 = load i32, i32* %8, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  %93 = load i8, i8* %92, align 1
  %94 = icmp ne i8 %93, 0
  br i1 %94, label %95, label %109

95:                                               ; preds = %88
  %96 = load i8*, i8** %5, align 8
  %97 = load i32, i32* %8, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %96, i64 %98
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = and i32 %101, 128
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %95
  store i32 -2, i32* %4, align 4
  br label %503

105:                                              ; preds = %95
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %8, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %8, align 4
  br label %88

109:                                              ; preds = %88
  store i32 0, i32* %9, align 4
  br label %110

110:                                              ; preds = %128, %109
  %111 = load i8*, i8** %6, align 8
  %112 = load i32, i32* %9, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %111, i64 %113
  %115 = load i8, i8* %114, align 1
  %116 = icmp ne i8 %115, 0
  br i1 %116, label %117, label %131

117:                                              ; preds = %110
  %118 = load i8*, i8** %6, align 8
  %119 = load i32, i32* %9, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8, i8* %118, i64 %120
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = and i32 %123, 128
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %117
  store i32 -2, i32* %4, align 4
  br label %503

127:                                              ; preds = %117
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %9, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %9, align 4
  br label %110

131:                                              ; preds = %110
  %132 = load i32, i32* %8, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %165

134:                                              ; preds = %131
  %135 = load i32, i32* %19, align 4
  %136 = trunc i32 %135 to i8
  store i8 %136, i8* %15, align 1
  store i32 0, i32* %20, align 4
  store i32 0, i32* %11, align 4
  br label %137

137:                                              ; preds = %160, %134
  %138 = load i8*, i8** %6, align 8
  %139 = load i32, i32* %11, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8, i8* %138, i64 %140
  %142 = load i8, i8* %141, align 1
  store i8 %142, i8* %13, align 1
  %143 = sext i8 %142 to i32
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %163

145:                                              ; preds = %137
  %146 = load i8, i8* %15, align 1
  %147 = load i8, i8* %13, align 1
  %148 = load i8*, i8** %6, align 8
  %149 = load i32, i32* %11, align 4
  %150 = add nsw i32 %149, 1
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8, i8* %148, i64 %151
  %153 = load i8, i8* %152, align 1
  %154 = call i32 @insertOrDeleteCost(i8 signext %146, i8 signext %147, i8 signext %153)
  %155 = load i32, i32* @FINAL_INS_COST_DIV, align 4
  %156 = sdiv i32 %154, %155
  %157 = load i32, i32* %20, align 4
  %158 = add nsw i32 %157, %156
  store i32 %158, i32* %20, align 4
  %159 = load i8, i8* %13, align 1
  store i8 %159, i8* %15, align 1
  br label %160

160:                                              ; preds = %145
  %161 = load i32, i32* %11, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %11, align 4
  br label %137

163:                                              ; preds = %137
  %164 = load i32, i32* %20, align 4
  store i32 %164, i32* %4, align 4
  br label %503

165:                                              ; preds = %131
  %166 = load i32, i32* %9, align 4
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %197

168:                                              ; preds = %165
  %169 = load i32, i32* %19, align 4
  %170 = trunc i32 %169 to i8
  store i8 %170, i8* %14, align 1
  store i32 0, i32* %20, align 4
  store i32 0, i32* %10, align 4
  br label %171

171:                                              ; preds = %192, %168
  %172 = load i8*, i8** %5, align 8
  %173 = load i32, i32* %10, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i8, i8* %172, i64 %174
  %176 = load i8, i8* %175, align 1
  store i8 %176, i8* %12, align 1
  %177 = sext i8 %176 to i32
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %195

179:                                              ; preds = %171
  %180 = load i8, i8* %14, align 1
  %181 = load i8, i8* %12, align 1
  %182 = load i8*, i8** %5, align 8
  %183 = load i32, i32* %10, align 4
  %184 = add nsw i32 %183, 1
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i8, i8* %182, i64 %185
  %187 = load i8, i8* %186, align 1
  %188 = call i32 @insertOrDeleteCost(i8 signext %180, i8 signext %181, i8 signext %187)
  %189 = load i32, i32* %20, align 4
  %190 = add nsw i32 %189, %188
  store i32 %190, i32* %20, align 4
  %191 = load i8, i8* %12, align 1
  store i8 %191, i8* %14, align 1
  br label %192

192:                                              ; preds = %179
  %193 = load i32, i32* %10, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %10, align 4
  br label %171

195:                                              ; preds = %171
  %196 = load i32, i32* %20, align 4
  store i32 %196, i32* %4, align 4
  br label %503

197:                                              ; preds = %165
  %198 = load i8*, i8** %5, align 8
  %199 = getelementptr inbounds i8, i8* %198, i64 0
  %200 = load i8, i8* %199, align 1
  %201 = sext i8 %200 to i32
  %202 = icmp eq i32 %201, 42
  br i1 %202, label %203, label %210

203:                                              ; preds = %197
  %204 = load i8*, i8** %5, align 8
  %205 = getelementptr inbounds i8, i8* %204, i64 1
  %206 = load i8, i8* %205, align 1
  %207 = sext i8 %206 to i32
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %203
  store i32 0, i32* %4, align 4
  br label %503

210:                                              ; preds = %203, %197
  %211 = load i32, i32* %9, align 4
  %212 = sext i32 %211 to i64
  %213 = icmp ult i64 %212, 60
  br i1 %213, label %214, label %216

214:                                              ; preds = %210
  %215 = getelementptr inbounds [75 x i32], [75 x i32]* %25, i64 0, i64 0
  store i32* %215, i32** %21, align 8
  br label %229

216:                                              ; preds = %210
  %217 = load i32, i32* %9, align 4
  %218 = add nsw i32 %217, 1
  %219 = mul nsw i32 %218, 5
  %220 = sext i32 %219 to i64
  %221 = mul i64 %220, 4
  %222 = udiv i64 %221, 4
  %223 = trunc i64 %222 to i32
  %224 = call i32* @sqlite3_malloc64(i32 %223)
  store i32* %224, i32** %23, align 8
  store i32* %224, i32** %21, align 8
  %225 = load i32*, i32** %21, align 8
  %226 = icmp eq i32* %225, null
  br i1 %226, label %227, label %228

227:                                              ; preds = %216
  store i32 -3, i32* %4, align 4
  br label %503

228:                                              ; preds = %216
  br label %229

229:                                              ; preds = %228, %214
  %230 = load i32*, i32** %21, align 8
  %231 = load i32, i32* %9, align 4
  %232 = add nsw i32 %231, 1
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %230, i64 %233
  %235 = bitcast i32* %234 to i8*
  store i8* %235, i8** %22, align 8
  %236 = load i32*, i32** %21, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 0
  store i32 0, i32* %237, align 4
  %238 = load i32, i32* %19, align 4
  %239 = trunc i32 %238 to i8
  %240 = load i8*, i8** %22, align 8
  %241 = getelementptr inbounds i8, i8* %240, i64 0
  store i8 %239, i8* %241, align 1
  %242 = load i32, i32* %19, align 4
  %243 = trunc i32 %242 to i8
  store i8 %243, i8* %15, align 1
  store i32 1, i32* %11, align 4
  br label %244

244:                                              ; preds = %281, %229
  %245 = load i32, i32* %11, align 4
  %246 = load i32, i32* %9, align 4
  %247 = icmp sle i32 %245, %246
  br i1 %247, label %248, label %284

248:                                              ; preds = %244
  %249 = load i8*, i8** %6, align 8
  %250 = load i32, i32* %11, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i8, i8* %249, i64 %251
  %253 = load i8, i8* %252, align 1
  store i8 %253, i8* %17, align 1
  %254 = load i8*, i8** %6, align 8
  %255 = load i32, i32* %11, align 4
  %256 = sub nsw i32 %255, 1
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i8, i8* %254, i64 %257
  %259 = load i8, i8* %258, align 1
  store i8 %259, i8* %13, align 1
  %260 = load i8, i8* %13, align 1
  %261 = load i8*, i8** %22, align 8
  %262 = load i32, i32* %11, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i8, i8* %261, i64 %263
  store i8 %260, i8* %264, align 1
  %265 = load i32*, i32** %21, align 8
  %266 = load i32, i32* %11, align 4
  %267 = sub nsw i32 %266, 1
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i32, i32* %265, i64 %268
  %270 = load i32, i32* %269, align 4
  %271 = load i8, i8* %15, align 1
  %272 = load i8, i8* %13, align 1
  %273 = load i8, i8* %17, align 1
  %274 = call i32 @insertOrDeleteCost(i8 signext %271, i8 signext %272, i8 signext %273)
  %275 = add nsw i32 %270, %274
  %276 = load i32*, i32** %21, align 8
  %277 = load i32, i32* %11, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i32, i32* %276, i64 %278
  store i32 %275, i32* %279, align 4
  %280 = load i8, i8* %13, align 1
  store i8 %280, i8* %15, align 1
  br label %281

281:                                              ; preds = %248
  %282 = load i32, i32* %11, align 4
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %11, align 4
  br label %244

284:                                              ; preds = %244
  %285 = load i32, i32* %19, align 4
  %286 = trunc i32 %285 to i8
  store i8 %286, i8* %14, align 1
  store i32 1, i32* %10, align 4
  br label %287

287:                                              ; preds = %447, %284
  %288 = load i32, i32* %10, align 4
  %289 = load i32, i32* %8, align 4
  %290 = icmp sle i32 %288, %289
  br i1 %290, label %291, label %450

291:                                              ; preds = %287
  %292 = load i32, i32* %10, align 4
  %293 = load i32, i32* %8, align 4
  %294 = icmp eq i32 %292, %293
  %295 = zext i1 %294 to i32
  store i32 %295, i32* %26, align 4
  %296 = load i8*, i8** %5, align 8
  %297 = load i32, i32* %10, align 4
  %298 = sub nsw i32 %297, 1
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds i8, i8* %296, i64 %299
  %301 = load i8, i8* %300, align 1
  store i8 %301, i8* %12, align 1
  %302 = load i8*, i8** %5, align 8
  %303 = load i32, i32* %10, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds i8, i8* %302, i64 %304
  %306 = load i8, i8* %305, align 1
  store i8 %306, i8* %16, align 1
  %307 = load i8, i8* %12, align 1
  %308 = sext i8 %307 to i32
  %309 = icmp eq i32 %308, 42
  br i1 %309, label %310, label %314

310:                                              ; preds = %291
  %311 = load i32, i32* %26, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %314

313:                                              ; preds = %310
  br label %450

314:                                              ; preds = %310, %291
  %315 = load i32*, i32** %21, align 8
  %316 = getelementptr inbounds i32, i32* %315, i64 0
  %317 = load i32, i32* %316, align 4
  store i32 %317, i32* %18, align 4
  %318 = load i8*, i8** %22, align 8
  %319 = getelementptr inbounds i8, i8* %318, i64 0
  %320 = load i8, i8* %319, align 1
  %321 = sext i8 %320 to i32
  store i32 %321, i32* %19, align 4
  %322 = load i32, i32* %18, align 4
  %323 = load i8, i8* %14, align 1
  %324 = load i8, i8* %12, align 1
  %325 = load i8, i8* %16, align 1
  %326 = call i32 @insertOrDeleteCost(i8 signext %323, i8 signext %324, i8 signext %325)
  %327 = add nsw i32 %322, %326
  %328 = load i32*, i32** %21, align 8
  %329 = getelementptr inbounds i32, i32* %328, i64 0
  store i32 %327, i32* %329, align 4
  store i8 0, i8* %15, align 1
  store i32 1, i32* %11, align 4
  br label %330

330:                                              ; preds = %442, %314
  %331 = load i32, i32* %11, align 4
  %332 = load i32, i32* %9, align 4
  %333 = icmp sle i32 %331, %332
  br i1 %333, label %334, label %445

334:                                              ; preds = %330
  %335 = load i8*, i8** %6, align 8
  %336 = load i32, i32* %11, align 4
  %337 = sub nsw i32 %336, 1
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds i8, i8* %335, i64 %338
  %340 = load i8, i8* %339, align 1
  store i8 %340, i8* %13, align 1
  %341 = load i8*, i8** %6, align 8
  %342 = load i32, i32* %11, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds i8, i8* %341, i64 %343
  %345 = load i8, i8* %344, align 1
  store i8 %345, i8* %17, align 1
  %346 = load i8*, i8** %22, align 8
  %347 = load i32, i32* %11, align 4
  %348 = sub nsw i32 %347, 1
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds i8, i8* %346, i64 %349
  %351 = load i8, i8* %350, align 1
  %352 = load i8, i8* %13, align 1
  %353 = load i8, i8* %17, align 1
  %354 = call i32 @insertOrDeleteCost(i8 signext %351, i8 signext %352, i8 signext %353)
  store i32 %354, i32* %28, align 4
  %355 = load i32, i32* %26, align 4
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %361

357:                                              ; preds = %334
  %358 = load i32, i32* @FINAL_INS_COST_DIV, align 4
  %359 = load i32, i32* %28, align 4
  %360 = sdiv i32 %359, %358
  store i32 %360, i32* %28, align 4
  br label %361

361:                                              ; preds = %357, %334
  %362 = load i8*, i8** %22, align 8
  %363 = load i32, i32* %11, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds i8, i8* %362, i64 %364
  %366 = load i8, i8* %365, align 1
  %367 = load i8, i8* %12, align 1
  %368 = load i8, i8* %17, align 1
  %369 = call i32 @insertOrDeleteCost(i8 signext %366, i8 signext %367, i8 signext %368)
  store i32 %369, i32* %29, align 4
  %370 = load i8*, i8** %22, align 8
  %371 = load i32, i32* %11, align 4
  %372 = sub nsw i32 %371, 1
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds i8, i8* %370, i64 %373
  %375 = load i8, i8* %374, align 1
  %376 = load i8, i8* %12, align 1
  %377 = load i8, i8* %13, align 1
  %378 = call i32 @substituteCost(i8 signext %375, i8 signext %376, i8 signext %377)
  store i32 %378, i32* %30, align 4
  %379 = load i32, i32* %28, align 4
  %380 = load i32*, i32** %21, align 8
  %381 = load i32, i32* %11, align 4
  %382 = sub nsw i32 %381, 1
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds i32, i32* %380, i64 %383
  %385 = load i32, i32* %384, align 4
  %386 = add nsw i32 %379, %385
  store i32 %386, i32* %27, align 4
  %387 = load i8, i8* %13, align 1
  %388 = sext i8 %387 to i32
  store i32 %388, i32* %31, align 4
  %389 = load i32, i32* %29, align 4
  %390 = load i32*, i32** %21, align 8
  %391 = load i32, i32* %11, align 4
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds i32, i32* %390, i64 %392
  %394 = load i32, i32* %393, align 4
  %395 = add nsw i32 %389, %394
  %396 = load i32, i32* %27, align 4
  %397 = icmp slt i32 %395, %396
  br i1 %397, label %398, label %408

398:                                              ; preds = %361
  %399 = load i32, i32* %29, align 4
  %400 = load i32*, i32** %21, align 8
  %401 = load i32, i32* %11, align 4
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds i32, i32* %400, i64 %402
  %404 = load i32, i32* %403, align 4
  %405 = add nsw i32 %399, %404
  store i32 %405, i32* %27, align 4
  %406 = load i8, i8* %12, align 1
  %407 = sext i8 %406 to i32
  store i32 %407, i32* %31, align 4
  br label %408

408:                                              ; preds = %398, %361
  %409 = load i32, i32* %30, align 4
  %410 = load i32, i32* %18, align 4
  %411 = add nsw i32 %409, %410
  %412 = load i32, i32* %27, align 4
  %413 = icmp slt i32 %411, %412
  br i1 %413, label %414, label %418

414:                                              ; preds = %408
  %415 = load i32, i32* %30, align 4
  %416 = load i32, i32* %18, align 4
  %417 = add nsw i32 %415, %416
  store i32 %417, i32* %27, align 4
  br label %418

418:                                              ; preds = %414, %408
  %419 = load i32*, i32** %21, align 8
  %420 = load i32, i32* %11, align 4
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds i32, i32* %419, i64 %421
  %423 = load i32, i32* %422, align 4
  store i32 %423, i32* %18, align 4
  %424 = load i8*, i8** %22, align 8
  %425 = load i32, i32* %11, align 4
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds i8, i8* %424, i64 %426
  %428 = load i8, i8* %427, align 1
  %429 = sext i8 %428 to i32
  store i32 %429, i32* %19, align 4
  %430 = load i32, i32* %27, align 4
  %431 = load i32*, i32** %21, align 8
  %432 = load i32, i32* %11, align 4
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds i32, i32* %431, i64 %433
  store i32 %430, i32* %434, align 4
  %435 = load i32, i32* %31, align 4
  %436 = trunc i32 %435 to i8
  %437 = load i8*, i8** %22, align 8
  %438 = load i32, i32* %11, align 4
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds i8, i8* %437, i64 %439
  store i8 %436, i8* %440, align 1
  %441 = load i8, i8* %13, align 1
  store i8 %441, i8* %15, align 1
  br label %442

442:                                              ; preds = %418
  %443 = load i32, i32* %11, align 4
  %444 = add nsw i32 %443, 1
  store i32 %444, i32* %11, align 4
  br label %330

445:                                              ; preds = %330
  %446 = load i8, i8* %12, align 1
  store i8 %446, i8* %14, align 1
  br label %447

447:                                              ; preds = %445
  %448 = load i32, i32* %10, align 4
  %449 = add nsw i32 %448, 1
  store i32 %449, i32* %10, align 4
  br label %287

450:                                              ; preds = %313, %287
  %451 = load i8, i8* %12, align 1
  %452 = sext i8 %451 to i32
  %453 = icmp eq i32 %452, 42
  br i1 %453, label %454, label %489

454:                                              ; preds = %450
  %455 = load i32*, i32** %21, align 8
  %456 = getelementptr inbounds i32, i32* %455, i64 1
  %457 = load i32, i32* %456, align 4
  store i32 %457, i32* %20, align 4
  store i32 1, i32* %11, align 4
  br label %458

458:                                              ; preds = %485, %454
  %459 = load i32, i32* %11, align 4
  %460 = load i32, i32* %9, align 4
  %461 = icmp sle i32 %459, %460
  br i1 %461, label %462, label %488

462:                                              ; preds = %458
  %463 = load i32*, i32** %21, align 8
  %464 = load i32, i32* %11, align 4
  %465 = sext i32 %464 to i64
  %466 = getelementptr inbounds i32, i32* %463, i64 %465
  %467 = load i32, i32* %466, align 4
  %468 = load i32, i32* %20, align 4
  %469 = icmp slt i32 %467, %468
  br i1 %469, label %470, label %484

470:                                              ; preds = %462
  %471 = load i32*, i32** %21, align 8
  %472 = load i32, i32* %11, align 4
  %473 = sext i32 %472 to i64
  %474 = getelementptr inbounds i32, i32* %471, i64 %473
  %475 = load i32, i32* %474, align 4
  store i32 %475, i32* %20, align 4
  %476 = load i32*, i32** %7, align 8
  %477 = icmp ne i32* %476, null
  br i1 %477, label %478, label %483

478:                                              ; preds = %470
  %479 = load i32, i32* %11, align 4
  %480 = load i32, i32* %24, align 4
  %481 = add nsw i32 %479, %480
  %482 = load i32*, i32** %7, align 8
  store i32 %481, i32* %482, align 4
  br label %483

483:                                              ; preds = %478, %470
  br label %484

484:                                              ; preds = %483, %462
  br label %485

485:                                              ; preds = %484
  %486 = load i32, i32* %11, align 4
  %487 = add nsw i32 %486, 1
  store i32 %487, i32* %11, align 4
  br label %458

488:                                              ; preds = %458
  br label %499

489:                                              ; preds = %450
  %490 = load i32*, i32** %21, align 8
  %491 = load i32, i32* %9, align 4
  %492 = sext i32 %491 to i64
  %493 = getelementptr inbounds i32, i32* %490, i64 %492
  %494 = load i32, i32* %493, align 4
  store i32 %494, i32* %20, align 4
  %495 = load i32*, i32** %7, align 8
  %496 = icmp eq i32* %495, null
  %497 = zext i1 %496 to i32
  %498 = call i32 @assert(i32 %497)
  br label %499

499:                                              ; preds = %489, %488
  %500 = load i32*, i32** %23, align 8
  %501 = call i32 @sqlite3_free(i32* %500)
  %502 = load i32, i32* %20, align 4
  store i32 %502, i32* %4, align 4
  br label %503

503:                                              ; preds = %499, %227, %209, %195, %163, %126, %104, %86, %37
  %504 = load i32, i32* %4, align 4
  ret i32 %504
}

declare dso_local i32 @insertOrDeleteCost(i8 signext, i8 signext, i8 signext) #1

declare dso_local i32* @sqlite3_malloc64(i32) #1

declare dso_local i32 @substituteCost(i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
