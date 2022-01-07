; ModuleID = '/home/carl/AnghaBench/stb/tests/extr_prereleasestb_lib.h_stb_tokens_raw.c'
source_filename = "/home/carl/AnghaBench/stb/tests/extr_prereleasestb_lib.h_stb_tokens_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stb_tokens_raw.stb_tokentable = internal global [256 x i8] zeroinitializer, align 16
@stb_tokens_raw.stable = internal global [256 x i8] zeroinitializer, align 16
@stb_tokens_raw.etable = internal global [256 x i8] zeroinitializer, align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8** (i8*, i8*, i32*, i32, i32, i8*, i8*)* @stb_tokens_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8** @stb_tokens_raw(i8* %0, i8* %1, i32* %2, i32 %3, i32 %4, i8* %5, i8* %6) #0 {
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8**, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  store i8* %0, i8** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i8* %6, i8** %15, align 8
  store i32 0, i32* %16, align 4
  %23 = load i8*, i8** %9, align 8
  store i8* %23, i8** %17, align 8
  store i32 0, i32* %20, align 4
  %24 = load i8*, i8** %10, align 8
  store i8* %24, i8** %21, align 8
  br label %25

25:                                               ; preds = %29, %7
  %26 = load i8*, i8** %21, align 8
  %27 = load i8, i8* %26, align 1
  %28 = icmp ne i8 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = load i8*, i8** %21, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %21, align 8
  %32 = load i8, i8* %30, align 1
  %33 = zext i8 %32 to i64
  %34 = getelementptr inbounds [256 x i8], [256 x i8]* @stb_tokens_raw.stb_tokentable, i64 0, i64 %33
  store i8 1, i8* %34, align 1
  br label %25

35:                                               ; preds = %25
  %36 = load i8*, i8** %14, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %83

38:                                               ; preds = %35
  %39 = load i8*, i8** %14, align 8
  store i8* %39, i8** %21, align 8
  br label %40

40:                                               ; preds = %44, %38
  %41 = load i8*, i8** %21, align 8
  %42 = load i8, i8* %41, align 1
  %43 = icmp ne i8 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %40
  %45 = load i8*, i8** %21, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %21, align 8
  %47 = load i8, i8* %45, align 1
  %48 = zext i8 %47 to i64
  %49 = getelementptr inbounds [256 x i8], [256 x i8]* @stb_tokens_raw.stable, i64 0, i64 %48
  store i8 1, i8* %49, align 1
  br label %40

50:                                               ; preds = %40
  %51 = load i8*, i8** %15, align 8
  store i8* %51, i8** %21, align 8
  %52 = load i8*, i8** %21, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %66

54:                                               ; preds = %50
  br label %55

55:                                               ; preds = %59, %54
  %56 = load i8*, i8** %21, align 8
  %57 = load i8, i8* %56, align 1
  %58 = icmp ne i8 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %55
  %60 = load i8*, i8** %21, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %21, align 8
  %62 = load i8, i8* %60, align 1
  %63 = zext i8 %62 to i64
  %64 = getelementptr inbounds [256 x i8], [256 x i8]* @stb_tokens_raw.stable, i64 0, i64 %63
  store i8 1, i8* %64, align 1
  br label %55

65:                                               ; preds = %55
  br label %66

66:                                               ; preds = %65, %50
  %67 = load i8*, i8** %15, align 8
  store i8* %67, i8** %21, align 8
  %68 = load i8*, i8** %21, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %82

70:                                               ; preds = %66
  br label %71

71:                                               ; preds = %75, %70
  %72 = load i8*, i8** %21, align 8
  %73 = load i8, i8* %72, align 1
  %74 = icmp ne i8 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %71
  %76 = load i8*, i8** %21, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %21, align 8
  %78 = load i8, i8* %76, align 1
  %79 = zext i8 %78 to i64
  %80 = getelementptr inbounds [256 x i8], [256 x i8]* @stb_tokens_raw.etable, i64 0, i64 %79
  store i8 1, i8* %80, align 1
  br label %71

81:                                               ; preds = %71
  br label %82

82:                                               ; preds = %81, %66
  br label %83

83:                                               ; preds = %82, %35
  store i8 1, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @stb_tokens_raw.stable, i64 0, i64 0), align 16
  %84 = load i8*, i8** %17, align 8
  store i8* %84, i8** %21, align 8
  br label %85

85:                                               ; preds = %235, %83
  %86 = load i8*, i8** %21, align 8
  %87 = load i8, i8* %86, align 1
  %88 = icmp ne i8 %87, 0
  br i1 %88, label %89, label %236

89:                                               ; preds = %85
  %90 = load i32, i32* %13, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %109, label %92

92:                                               ; preds = %89
  store i8 0, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @stb_tokens_raw.stb_tokentable, i64 0, i64 0), align 16
  br label %93

93:                                               ; preds = %100, %92
  %94 = load i8*, i8** %21, align 8
  %95 = load i8, i8* %94, align 1
  %96 = zext i8 %95 to i64
  %97 = getelementptr inbounds [256 x i8], [256 x i8]* @stb_tokens_raw.stb_tokentable, i64 0, i64 %96
  %98 = load i8, i8* %97, align 1
  %99 = icmp ne i8 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %93
  %101 = load i8*, i8** %21, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %21, align 8
  br label %93

103:                                              ; preds = %93
  %104 = load i8*, i8** %21, align 8
  %105 = load i8, i8* %104, align 1
  %106 = icmp ne i8 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %103
  br label %236

108:                                              ; preds = %103
  br label %109

109:                                              ; preds = %108, %89
  %110 = load i32, i32* %20, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %20, align 4
  store i8 1, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @stb_tokens_raw.stb_tokentable, i64 0, i64 0), align 16
  %112 = load i32, i32* %12, align 4
  %113 = icmp eq i32 %112, 2
  br i1 %113, label %114, label %173

114:                                              ; preds = %109
  br label %115

115:                                              ; preds = %171, %114
  %116 = load i8*, i8** %21, align 8
  %117 = load i8, i8* %116, align 1
  %118 = zext i8 %117 to i64
  %119 = getelementptr inbounds [256 x i8], [256 x i8]* @stb_tokens_raw.stb_tokentable, i64 0, i64 %118
  %120 = load i8, i8* %119, align 1
  %121 = icmp ne i8 %120, 0
  %122 = xor i1 %121, true
  br i1 %122, label %123, label %172

123:                                              ; preds = %115
  %124 = load i8*, i8** %21, align 8
  %125 = load i8, i8* %124, align 1
  %126 = zext i8 %125 to i32
  %127 = icmp ne i32 %126, 34
  br i1 %127, label %128, label %131

128:                                              ; preds = %123
  %129 = load i8*, i8** %21, align 8
  %130 = getelementptr inbounds i8, i8* %129, i32 1
  store i8* %130, i8** %21, align 8
  br label %171

131:                                              ; preds = %123
  %132 = load i8*, i8** %21, align 8
  %133 = getelementptr inbounds i8, i8* %132, i32 1
  store i8* %133, i8** %21, align 8
  %134 = load i8*, i8** %21, align 8
  %135 = load i8, i8* %134, align 1
  %136 = zext i8 %135 to i32
  %137 = icmp eq i32 %136, 34
  br i1 %137, label %138, label %141

138:                                              ; preds = %131
  %139 = load i8*, i8** %21, align 8
  %140 = getelementptr inbounds i8, i8* %139, i32 1
  store i8* %140, i8** %21, align 8
  br label %170

141:                                              ; preds = %131
  br label %142

142:                                              ; preds = %168, %141
  %143 = load i8*, i8** %21, align 8
  %144 = load i8, i8* %143, align 1
  %145 = icmp ne i8 %144, 0
  br i1 %145, label %146, label %169

146:                                              ; preds = %142
  %147 = load i8*, i8** %21, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 0
  %149 = load i8, i8* %148, align 1
  %150 = zext i8 %149 to i32
  %151 = icmp eq i32 %150, 34
  br i1 %151, label %152, label %165

152:                                              ; preds = %146
  %153 = load i8*, i8** %21, align 8
  %154 = getelementptr inbounds i8, i8* %153, i64 1
  %155 = load i8, i8* %154, align 1
  %156 = zext i8 %155 to i32
  %157 = icmp eq i32 %156, 34
  br i1 %157, label %158, label %161

158:                                              ; preds = %152
  %159 = load i8*, i8** %21, align 8
  %160 = getelementptr inbounds i8, i8* %159, i64 2
  store i8* %160, i8** %21, align 8
  br label %164

161:                                              ; preds = %152
  %162 = load i8*, i8** %21, align 8
  %163 = getelementptr inbounds i8, i8* %162, i32 1
  store i8* %163, i8** %21, align 8
  br label %169

164:                                              ; preds = %158
  br label %168

165:                                              ; preds = %146
  %166 = load i8*, i8** %21, align 8
  %167 = getelementptr inbounds i8, i8* %166, i32 1
  store i8* %167, i8** %21, align 8
  br label %168

168:                                              ; preds = %165, %164
  br label %142

169:                                              ; preds = %161, %142
  br label %170

170:                                              ; preds = %169, %138
  br label %171

171:                                              ; preds = %170, %128
  br label %115

172:                                              ; preds = %115
  br label %224

173:                                              ; preds = %109
  br label %174

174:                                              ; preds = %220, %173
  %175 = load i32, i32* %16, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %185, label %177

177:                                              ; preds = %174
  %178 = load i8*, i8** %21, align 8
  %179 = load i8, i8* %178, align 1
  %180 = zext i8 %179 to i64
  %181 = getelementptr inbounds [256 x i8], [256 x i8]* @stb_tokens_raw.stb_tokentable, i64 0, i64 %180
  %182 = load i8, i8* %181, align 1
  %183 = icmp ne i8 %182, 0
  %184 = xor i1 %183, true
  br label %185

185:                                              ; preds = %177, %174
  %186 = phi i1 [ true, %174 ], [ %184, %177 ]
  br i1 %186, label %187, label %223

187:                                              ; preds = %185
  %188 = load i8*, i8** %21, align 8
  %189 = load i8, i8* %188, align 1
  %190 = zext i8 %189 to i64
  %191 = getelementptr inbounds [256 x i8], [256 x i8]* @stb_tokens_raw.stable, i64 0, i64 %190
  %192 = load i8, i8* %191, align 1
  %193 = icmp ne i8 %192, 0
  br i1 %193, label %194, label %220

194:                                              ; preds = %187
  %195 = load i8*, i8** %21, align 8
  %196 = load i8, i8* %195, align 1
  %197 = icmp ne i8 %196, 0
  br i1 %197, label %199, label %198

198:                                              ; preds = %194
  br label %223

199:                                              ; preds = %194
  %200 = load i8*, i8** %15, align 8
  %201 = icmp ne i8* %200, null
  br i1 %201, label %202, label %210

202:                                              ; preds = %199
  %203 = load i8*, i8** %21, align 8
  %204 = load i8, i8* %203, align 1
  %205 = zext i8 %204 to i64
  %206 = getelementptr inbounds [256 x i8], [256 x i8]* @stb_tokens_raw.etable, i64 0, i64 %205
  %207 = load i8, i8* %206, align 1
  %208 = sext i8 %207 to i32
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %213, label %216

210:                                              ; preds = %199
  %211 = load i32, i32* %16, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %216

213:                                              ; preds = %210, %202
  %214 = load i32, i32* %16, align 4
  %215 = add nsw i32 %214, -1
  store i32 %215, i32* %16, align 4
  br label %219

216:                                              ; preds = %210, %202
  %217 = load i32, i32* %16, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %16, align 4
  br label %219

219:                                              ; preds = %216, %213
  br label %220

220:                                              ; preds = %219, %187
  %221 = load i8*, i8** %21, align 8
  %222 = getelementptr inbounds i8, i8* %221, i32 1
  store i8* %222, i8** %21, align 8
  br label %174

223:                                              ; preds = %198, %185
  br label %224

224:                                              ; preds = %223, %172
  %225 = load i32, i32* %13, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %235

227:                                              ; preds = %224
  %228 = load i8*, i8** %21, align 8
  %229 = load i8, i8* %228, align 1
  %230 = icmp ne i8 %229, 0
  br i1 %230, label %231, label %234

231:                                              ; preds = %227
  %232 = load i8*, i8** %21, align 8
  %233 = getelementptr inbounds i8, i8* %232, i32 1
  store i8* %233, i8** %21, align 8
  br label %234

234:                                              ; preds = %231, %227
  br label %235

235:                                              ; preds = %234, %224
  br label %85

236:                                              ; preds = %107, %85
  %237 = load i32, i32* %20, align 4
  %238 = add nsw i32 %237, 1
  %239 = sext i32 %238 to i64
  %240 = mul i64 8, %239
  %241 = load i8*, i8** %21, align 8
  %242 = load i8*, i8** %17, align 8
  %243 = ptrtoint i8* %241 to i64
  %244 = ptrtoint i8* %242 to i64
  %245 = sub i64 %243, %244
  %246 = add nsw i64 %245, 1
  %247 = add i64 %240, %246
  %248 = trunc i64 %247 to i32
  %249 = call i64 @malloc(i32 %248)
  %250 = inttoptr i64 %249 to i8**
  store i8** %250, i8*** %19, align 8
  %251 = load i8**, i8*** %19, align 8
  %252 = icmp eq i8** %251, null
  br i1 %252, label %253, label %255

253:                                              ; preds = %236
  %254 = load i8**, i8*** %19, align 8
  store i8** %254, i8*** %8, align 8
  br label %574

255:                                              ; preds = %236
  %256 = load i8**, i8*** %19, align 8
  %257 = load i32, i32* %20, align 4
  %258 = add nsw i32 %257, 1
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i8*, i8** %256, i64 %259
  %261 = bitcast i8** %260 to i8*
  store i8* %261, i8** %18, align 8
  %262 = load i8*, i8** %17, align 8
  store i8* %262, i8** %21, align 8
  store i32 0, i32* %20, align 4
  store i32 0, i32* %16, align 4
  br label %263

263:                                              ; preds = %501, %255
  %264 = load i8*, i8** %21, align 8
  %265 = load i8, i8* %264, align 1
  %266 = icmp ne i8 %265, 0
  br i1 %266, label %267, label %502

267:                                              ; preds = %263
  %268 = load i32, i32* %13, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %306, label %270

270:                                              ; preds = %267
  store i8 0, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @stb_tokens_raw.stb_tokentable, i64 0, i64 0), align 16
  %271 = load i32, i32* %12, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %293

273:                                              ; preds = %270
  br label %274

274:                                              ; preds = %289, %273
  %275 = load i8*, i8** %21, align 8
  %276 = load i8, i8* %275, align 1
  %277 = zext i8 %276 to i64
  %278 = getelementptr inbounds [256 x i8], [256 x i8]* @stb_tokens_raw.stb_tokentable, i64 0, i64 %277
  %279 = load i8, i8* %278, align 1
  %280 = sext i8 %279 to i32
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %287, label %282

282:                                              ; preds = %274
  %283 = load i8*, i8** %21, align 8
  %284 = load i8, i8* %283, align 1
  %285 = call i64 @isspace(i8 zeroext %284)
  %286 = icmp ne i64 %285, 0
  br label %287

287:                                              ; preds = %282, %274
  %288 = phi i1 [ true, %274 ], [ %286, %282 ]
  br i1 %288, label %289, label %292

289:                                              ; preds = %287
  %290 = load i8*, i8** %21, align 8
  %291 = getelementptr inbounds i8, i8* %290, i32 1
  store i8* %291, i8** %21, align 8
  br label %274

292:                                              ; preds = %287
  br label %305

293:                                              ; preds = %270
  br label %294

294:                                              ; preds = %301, %293
  %295 = load i8*, i8** %21, align 8
  %296 = load i8, i8* %295, align 1
  %297 = zext i8 %296 to i64
  %298 = getelementptr inbounds [256 x i8], [256 x i8]* @stb_tokens_raw.stb_tokentable, i64 0, i64 %297
  %299 = load i8, i8* %298, align 1
  %300 = icmp ne i8 %299, 0
  br i1 %300, label %301, label %304

301:                                              ; preds = %294
  %302 = load i8*, i8** %21, align 8
  %303 = getelementptr inbounds i8, i8* %302, i32 1
  store i8* %303, i8** %21, align 8
  br label %294

304:                                              ; preds = %294
  br label %305

305:                                              ; preds = %304, %292
  br label %320

306:                                              ; preds = %267
  %307 = load i32, i32* %12, align 4
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %319

309:                                              ; preds = %306
  br label %310

310:                                              ; preds = %315, %309
  %311 = load i8*, i8** %21, align 8
  %312 = load i8, i8* %311, align 1
  %313 = call i64 @isspace(i8 zeroext %312)
  %314 = icmp ne i64 %313, 0
  br i1 %314, label %315, label %318

315:                                              ; preds = %310
  %316 = load i8*, i8** %21, align 8
  %317 = getelementptr inbounds i8, i8* %316, i32 1
  store i8* %317, i8** %21, align 8
  br label %310

318:                                              ; preds = %310
  br label %319

319:                                              ; preds = %318, %306
  br label %320

320:                                              ; preds = %319, %305
  %321 = load i8*, i8** %21, align 8
  %322 = load i8, i8* %321, align 1
  %323 = icmp ne i8 %322, 0
  br i1 %323, label %325, label %324

324:                                              ; preds = %320
  br label %502

325:                                              ; preds = %320
  %326 = load i8*, i8** %18, align 8
  %327 = load i8**, i8*** %19, align 8
  %328 = load i32, i32* %20, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds i8*, i8** %327, i64 %329
  store i8* %326, i8** %330, align 8
  %331 = load i32, i32* %20, align 4
  %332 = add nsw i32 %331, 1
  store i32 %332, i32* %20, align 4
  store i8 1, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @stb_tokens_raw.stb_tokentable, i64 0, i64 0), align 16
  %333 = load i8*, i8** %18, align 8
  %334 = getelementptr inbounds i8, i8* %333, i64 -1
  store i8* %334, i8** %22, align 8
  %335 = load i32, i32* %12, align 4
  %336 = icmp eq i32 %335, 2
  br i1 %336, label %337, label %425

337:                                              ; preds = %325
  br label %338

338:                                              ; preds = %423, %337
  %339 = load i8*, i8** %21, align 8
  %340 = load i8, i8* %339, align 1
  %341 = zext i8 %340 to i64
  %342 = getelementptr inbounds [256 x i8], [256 x i8]* @stb_tokens_raw.stb_tokentable, i64 0, i64 %341
  %343 = load i8, i8* %342, align 1
  %344 = icmp ne i8 %343, 0
  %345 = xor i1 %344, true
  br i1 %345, label %346, label %424

346:                                              ; preds = %338
  %347 = load i8*, i8** %21, align 8
  %348 = load i8, i8* %347, align 1
  %349 = zext i8 %348 to i32
  %350 = icmp ne i32 %349, 34
  br i1 %350, label %351, label %364

351:                                              ; preds = %346
  %352 = load i8*, i8** %21, align 8
  %353 = load i8, i8* %352, align 1
  %354 = call i64 @isspace(i8 zeroext %353)
  %355 = icmp ne i64 %354, 0
  br i1 %355, label %358, label %356

356:                                              ; preds = %351
  %357 = load i8*, i8** %18, align 8
  store i8* %357, i8** %22, align 8
  br label %358

358:                                              ; preds = %356, %351
  %359 = load i8*, i8** %21, align 8
  %360 = getelementptr inbounds i8, i8* %359, i32 1
  store i8* %360, i8** %21, align 8
  %361 = load i8, i8* %359, align 1
  %362 = load i8*, i8** %18, align 8
  %363 = getelementptr inbounds i8, i8* %362, i32 1
  store i8* %363, i8** %18, align 8
  store i8 %361, i8* %362, align 1
  br label %423

364:                                              ; preds = %346
  %365 = load i8*, i8** %21, align 8
  %366 = getelementptr inbounds i8, i8* %365, i32 1
  store i8* %366, i8** %21, align 8
  %367 = load i8*, i8** %21, align 8
  %368 = load i8, i8* %367, align 1
  %369 = zext i8 %368 to i32
  %370 = icmp eq i32 %369, 34
  br i1 %370, label %371, label %384

371:                                              ; preds = %364
  %372 = load i8*, i8** %21, align 8
  %373 = load i8, i8* %372, align 1
  %374 = call i64 @isspace(i8 zeroext %373)
  %375 = icmp ne i64 %374, 0
  br i1 %375, label %378, label %376

376:                                              ; preds = %371
  %377 = load i8*, i8** %18, align 8
  store i8* %377, i8** %22, align 8
  br label %378

378:                                              ; preds = %376, %371
  %379 = load i8*, i8** %21, align 8
  %380 = getelementptr inbounds i8, i8* %379, i32 1
  store i8* %380, i8** %21, align 8
  %381 = load i8, i8* %379, align 1
  %382 = load i8*, i8** %18, align 8
  %383 = getelementptr inbounds i8, i8* %382, i32 1
  store i8* %383, i8** %18, align 8
  store i8 %381, i8* %382, align 1
  br label %422

384:                                              ; preds = %364
  br label %385

385:                                              ; preds = %418, %384
  %386 = load i8*, i8** %21, align 8
  %387 = load i8, i8* %386, align 1
  %388 = icmp ne i8 %387, 0
  br i1 %388, label %389, label %419

389:                                              ; preds = %385
  %390 = load i8*, i8** %21, align 8
  %391 = getelementptr inbounds i8, i8* %390, i64 0
  %392 = load i8, i8* %391, align 1
  %393 = zext i8 %392 to i32
  %394 = icmp eq i32 %393, 34
  br i1 %394, label %395, label %412

395:                                              ; preds = %389
  %396 = load i8*, i8** %21, align 8
  %397 = getelementptr inbounds i8, i8* %396, i64 1
  %398 = load i8, i8* %397, align 1
  %399 = zext i8 %398 to i32
  %400 = icmp eq i32 %399, 34
  br i1 %400, label %401, label %408

401:                                              ; preds = %395
  %402 = load i8*, i8** %21, align 8
  %403 = load i8, i8* %402, align 1
  %404 = load i8*, i8** %18, align 8
  %405 = getelementptr inbounds i8, i8* %404, i32 1
  store i8* %405, i8** %18, align 8
  store i8 %403, i8* %404, align 1
  %406 = load i8*, i8** %21, align 8
  %407 = getelementptr inbounds i8, i8* %406, i64 2
  store i8* %407, i8** %21, align 8
  br label %411

408:                                              ; preds = %395
  %409 = load i8*, i8** %21, align 8
  %410 = getelementptr inbounds i8, i8* %409, i32 1
  store i8* %410, i8** %21, align 8
  br label %419

411:                                              ; preds = %401
  br label %418

412:                                              ; preds = %389
  %413 = load i8*, i8** %21, align 8
  %414 = getelementptr inbounds i8, i8* %413, i32 1
  store i8* %414, i8** %21, align 8
  %415 = load i8, i8* %413, align 1
  %416 = load i8*, i8** %18, align 8
  %417 = getelementptr inbounds i8, i8* %416, i32 1
  store i8* %417, i8** %18, align 8
  store i8 %415, i8* %416, align 1
  br label %418

418:                                              ; preds = %412, %411
  br label %385

419:                                              ; preds = %408, %385
  %420 = load i8*, i8** %18, align 8
  %421 = getelementptr inbounds i8, i8* %420, i64 -1
  store i8* %421, i8** %22, align 8
  br label %422

422:                                              ; preds = %419, %378
  br label %423

423:                                              ; preds = %422, %358
  br label %338

424:                                              ; preds = %338
  br label %486

425:                                              ; preds = %325
  br label %426

426:                                              ; preds = %479, %425
  %427 = load i32, i32* %16, align 4
  %428 = icmp ne i32 %427, 0
  br i1 %428, label %437, label %429

429:                                              ; preds = %426
  %430 = load i8*, i8** %21, align 8
  %431 = load i8, i8* %430, align 1
  %432 = zext i8 %431 to i64
  %433 = getelementptr inbounds [256 x i8], [256 x i8]* @stb_tokens_raw.stb_tokentable, i64 0, i64 %432
  %434 = load i8, i8* %433, align 1
  %435 = icmp ne i8 %434, 0
  %436 = xor i1 %435, true
  br label %437

437:                                              ; preds = %429, %426
  %438 = phi i1 [ true, %426 ], [ %436, %429 ]
  br i1 %438, label %439, label %485

439:                                              ; preds = %437
  %440 = load i8*, i8** %21, align 8
  %441 = load i8, i8* %440, align 1
  %442 = call i64 @isspace(i8 zeroext %441)
  %443 = icmp ne i64 %442, 0
  br i1 %443, label %446, label %444

444:                                              ; preds = %439
  %445 = load i8*, i8** %18, align 8
  store i8* %445, i8** %22, align 8
  br label %446

446:                                              ; preds = %444, %439
  %447 = load i8*, i8** %21, align 8
  %448 = load i8, i8* %447, align 1
  %449 = zext i8 %448 to i64
  %450 = getelementptr inbounds [256 x i8], [256 x i8]* @stb_tokens_raw.stable, i64 0, i64 %449
  %451 = load i8, i8* %450, align 1
  %452 = icmp ne i8 %451, 0
  br i1 %452, label %453, label %479

453:                                              ; preds = %446
  %454 = load i8*, i8** %21, align 8
  %455 = load i8, i8* %454, align 1
  %456 = icmp ne i8 %455, 0
  br i1 %456, label %458, label %457

457:                                              ; preds = %453
  br label %485

458:                                              ; preds = %453
  %459 = load i8*, i8** %15, align 8
  %460 = icmp ne i8* %459, null
  br i1 %460, label %461, label %469

461:                                              ; preds = %458
  %462 = load i8*, i8** %21, align 8
  %463 = load i8, i8* %462, align 1
  %464 = zext i8 %463 to i64
  %465 = getelementptr inbounds [256 x i8], [256 x i8]* @stb_tokens_raw.etable, i64 0, i64 %464
  %466 = load i8, i8* %465, align 1
  %467 = sext i8 %466 to i32
  %468 = icmp ne i32 %467, 0
  br i1 %468, label %472, label %475

469:                                              ; preds = %458
  %470 = load i32, i32* %16, align 4
  %471 = icmp ne i32 %470, 0
  br i1 %471, label %472, label %475

472:                                              ; preds = %469, %461
  %473 = load i32, i32* %16, align 4
  %474 = add nsw i32 %473, -1
  store i32 %474, i32* %16, align 4
  br label %478

475:                                              ; preds = %469, %461
  %476 = load i32, i32* %16, align 4
  %477 = add nsw i32 %476, 1
  store i32 %477, i32* %16, align 4
  br label %478

478:                                              ; preds = %475, %472
  br label %479

479:                                              ; preds = %478, %446
  %480 = load i8*, i8** %21, align 8
  %481 = getelementptr inbounds i8, i8* %480, i32 1
  store i8* %481, i8** %21, align 8
  %482 = load i8, i8* %480, align 1
  %483 = load i8*, i8** %18, align 8
  %484 = getelementptr inbounds i8, i8* %483, i32 1
  store i8* %484, i8** %18, align 8
  store i8 %482, i8* %483, align 1
  br label %426

485:                                              ; preds = %457, %437
  br label %486

486:                                              ; preds = %485, %424
  %487 = load i32, i32* %12, align 4
  %488 = icmp ne i32 %487, 0
  br i1 %488, label %489, label %492

489:                                              ; preds = %486
  %490 = load i8*, i8** %22, align 8
  %491 = getelementptr inbounds i8, i8* %490, i64 1
  store i8* %491, i8** %18, align 8
  br label %492

492:                                              ; preds = %489, %486
  %493 = load i8*, i8** %18, align 8
  %494 = getelementptr inbounds i8, i8* %493, i32 1
  store i8* %494, i8** %18, align 8
  store i8 0, i8* %493, align 1
  %495 = load i8*, i8** %21, align 8
  %496 = load i8, i8* %495, align 1
  %497 = icmp ne i8 %496, 0
  br i1 %497, label %498, label %501

498:                                              ; preds = %492
  %499 = load i8*, i8** %21, align 8
  %500 = getelementptr inbounds i8, i8* %499, i32 1
  store i8* %500, i8** %21, align 8
  br label %501

501:                                              ; preds = %498, %492
  br label %263

502:                                              ; preds = %324, %263
  %503 = load i8*, i8** %10, align 8
  store i8* %503, i8** %21, align 8
  br label %504

504:                                              ; preds = %508, %502
  %505 = load i8*, i8** %21, align 8
  %506 = load i8, i8* %505, align 1
  %507 = icmp ne i8 %506, 0
  br i1 %507, label %508, label %514

508:                                              ; preds = %504
  %509 = load i8*, i8** %21, align 8
  %510 = getelementptr inbounds i8, i8* %509, i32 1
  store i8* %510, i8** %21, align 8
  %511 = load i8, i8* %509, align 1
  %512 = zext i8 %511 to i64
  %513 = getelementptr inbounds [256 x i8], [256 x i8]* @stb_tokens_raw.stb_tokentable, i64 0, i64 %512
  store i8 0, i8* %513, align 1
  br label %504

514:                                              ; preds = %504
  %515 = load i8*, i8** %14, align 8
  %516 = icmp ne i8* %515, null
  br i1 %516, label %517, label %562

517:                                              ; preds = %514
  %518 = load i8*, i8** %14, align 8
  store i8* %518, i8** %21, align 8
  br label %519

519:                                              ; preds = %523, %517
  %520 = load i8*, i8** %21, align 8
  %521 = load i8, i8* %520, align 1
  %522 = icmp ne i8 %521, 0
  br i1 %522, label %523, label %529

523:                                              ; preds = %519
  %524 = load i8*, i8** %21, align 8
  %525 = getelementptr inbounds i8, i8* %524, i32 1
  store i8* %525, i8** %21, align 8
  %526 = load i8, i8* %524, align 1
  %527 = zext i8 %526 to i64
  %528 = getelementptr inbounds [256 x i8], [256 x i8]* @stb_tokens_raw.stable, i64 0, i64 %527
  store i8 1, i8* %528, align 1
  br label %519

529:                                              ; preds = %519
  %530 = load i8*, i8** %15, align 8
  store i8* %530, i8** %21, align 8
  %531 = load i8*, i8** %21, align 8
  %532 = icmp ne i8* %531, null
  br i1 %532, label %533, label %545

533:                                              ; preds = %529
  br label %534

534:                                              ; preds = %538, %533
  %535 = load i8*, i8** %21, align 8
  %536 = load i8, i8* %535, align 1
  %537 = icmp ne i8 %536, 0
  br i1 %537, label %538, label %544

538:                                              ; preds = %534
  %539 = load i8*, i8** %21, align 8
  %540 = getelementptr inbounds i8, i8* %539, i32 1
  store i8* %540, i8** %21, align 8
  %541 = load i8, i8* %539, align 1
  %542 = zext i8 %541 to i64
  %543 = getelementptr inbounds [256 x i8], [256 x i8]* @stb_tokens_raw.stable, i64 0, i64 %542
  store i8 1, i8* %543, align 1
  br label %534

544:                                              ; preds = %534
  br label %545

545:                                              ; preds = %544, %529
  %546 = load i8*, i8** %15, align 8
  store i8* %546, i8** %21, align 8
  %547 = load i8*, i8** %21, align 8
  %548 = icmp ne i8* %547, null
  br i1 %548, label %549, label %561

549:                                              ; preds = %545
  br label %550

550:                                              ; preds = %554, %549
  %551 = load i8*, i8** %21, align 8
  %552 = load i8, i8* %551, align 1
  %553 = icmp ne i8 %552, 0
  br i1 %553, label %554, label %560

554:                                              ; preds = %550
  %555 = load i8*, i8** %21, align 8
  %556 = getelementptr inbounds i8, i8* %555, i32 1
  store i8* %556, i8** %21, align 8
  %557 = load i8, i8* %555, align 1
  %558 = zext i8 %557 to i64
  %559 = getelementptr inbounds [256 x i8], [256 x i8]* @stb_tokens_raw.etable, i64 0, i64 %558
  store i8 1, i8* %559, align 1
  br label %550

560:                                              ; preds = %550
  br label %561

561:                                              ; preds = %560, %545
  br label %562

562:                                              ; preds = %561, %514
  %563 = load i32*, i32** %11, align 8
  %564 = icmp ne i32* %563, null
  br i1 %564, label %565, label %568

565:                                              ; preds = %562
  %566 = load i32, i32* %20, align 4
  %567 = load i32*, i32** %11, align 8
  store i32 %566, i32* %567, align 4
  br label %568

568:                                              ; preds = %565, %562
  %569 = load i8**, i8*** %19, align 8
  %570 = load i32, i32* %20, align 4
  %571 = sext i32 %570 to i64
  %572 = getelementptr inbounds i8*, i8** %569, i64 %571
  store i8* null, i8** %572, align 8
  %573 = load i8**, i8*** %19, align 8
  store i8** %573, i8*** %8, align 8
  br label %574

574:                                              ; preds = %568, %253
  %575 = load i8**, i8*** %8, align 8
  ret i8** %575
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i64 @isspace(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
