; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/vcd/extr_cdrom.c_CdTextParse.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/vcd/extr_cdrom.c_CdTextParse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CDTEXT_MAX_TRACKS = common dso_local global i32 0, align 4
@CDTEXT_PACK_SIZE = common dso_local global i32 0, align 4
@CDTEXT_PACK_HEADER = common dso_local global i64 0, align 8
@CDTEXT_CHARSET_ASCII7BIT = common dso_local global i32 0, align 4
@CDTEXT_CHARSET_ISO88591 = common dso_local global i32 0, align 4
@CDTEXT_TEXT_BUFFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32***, i32*, i32*, i32)* @CdTextParse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CdTextParse(i32*** %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32***, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [3 x i32*], align 16
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32**, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i8*, align 8
  %33 = alloca i8*, align 8
  %34 = alloca i32*, align 8
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  store i32*** %0, i32**** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %37 = load i32, i32* @CDTEXT_MAX_TRACKS, align 4
  %38 = add nsw i32 %37, 1
  %39 = zext i32 %38 to i64
  %40 = call i8* @llvm.stacksave()
  store i8* %40, i8** %10, align 8
  %41 = alloca [16 x i8*], i64 %39, align 16
  store i64 %39, i64* %11, align 8
  store i32 -1, i32* %12, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp slt i32 %42, 4
  br i1 %43, label %44, label %45

44:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %375

45:                                               ; preds = %4
  %46 = load i32*, i32** %8, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 4
  store i32* %47, i32** %8, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sub nsw i32 %48, 4
  store i32 %49, i32* %9, align 4
  %50 = bitcast [3 x i32*]* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %50, i8 0, i64 24, i1 false)
  store i32 0, i32* %15, align 4
  br label %51

51:                                               ; preds = %100, %45
  %52 = load i32, i32* %15, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @CDTEXT_PACK_SIZE, align 4
  %55 = sdiv i32 %53, %54
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %103

57:                                               ; preds = %51
  %58 = load i32*, i32** %8, align 8
  %59 = load i32, i32* @CDTEXT_PACK_SIZE, align 4
  %60 = load i32, i32* %15, align 4
  %61 = mul nsw i32 %59, %60
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %58, i64 %62
  store i32* %63, i32** %16, align 8
  %64 = load i32*, i32** %16, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 3
  %66 = load i32, i32* %65, align 4
  %67 = ashr i32 %66, 4
  %68 = and i32 %67, 7
  store i32 %68, i32* %17, align 4
  %69 = load i32, i32* %17, align 4
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %57
  br label %100

72:                                               ; preds = %57
  %73 = load i32*, i32** %16, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp eq i32 %75, 143
  br i1 %76, label %77, label %99

77:                                               ; preds = %72
  %78 = load i32*, i32** %16, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  %80 = load i32, i32* %79, align 4
  %81 = and i32 %80, 127
  store i32 %81, i32* %18, align 4
  %82 = load i32, i32* %18, align 4
  %83 = icmp sgt i32 %82, 2
  br i1 %83, label %84, label %85

84:                                               ; preds = %77
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %375

85:                                               ; preds = %77
  %86 = load i32, i32* %18, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [3 x i32*], [3 x i32*]* %14, i64 0, i64 %87
  %89 = load i32*, i32** %88, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %92

91:                                               ; preds = %85
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %375

92:                                               ; preds = %85
  %93 = load i32*, i32** %16, align 8
  %94 = load i64, i64* @CDTEXT_PACK_HEADER, align 8
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  %96 = load i32, i32* %18, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [3 x i32*], [3 x i32*]* %14, i64 0, i64 %97
  store i32* %95, i32** %98, align 8
  br label %99

99:                                               ; preds = %92, %72
  br label %100

100:                                              ; preds = %99, %71
  %101 = load i32, i32* %15, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %15, align 4
  br label %51

103:                                              ; preds = %51
  %104 = getelementptr inbounds [3 x i32*], [3 x i32*]* %14, i64 0, i64 0
  %105 = load i32*, i32** %104, align 16
  %106 = icmp ne i32* %105, null
  %107 = xor i1 %106, true
  %108 = zext i1 %107 to i32
  %109 = getelementptr inbounds [3 x i32*], [3 x i32*]* %14, i64 0, i64 1
  %110 = load i32*, i32** %109, align 8
  %111 = icmp ne i32* %110, null
  %112 = xor i1 %111, true
  %113 = zext i1 %112 to i32
  %114 = xor i32 %108, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %129, label %116

116:                                              ; preds = %103
  %117 = getelementptr inbounds [3 x i32*], [3 x i32*]* %14, i64 0, i64 1
  %118 = load i32*, i32** %117, align 8
  %119 = icmp ne i32* %118, null
  %120 = xor i1 %119, true
  %121 = zext i1 %120 to i32
  %122 = getelementptr inbounds [3 x i32*], [3 x i32*]* %14, i64 0, i64 2
  %123 = load i32*, i32** %122, align 16
  %124 = icmp ne i32* %123, null
  %125 = xor i1 %124, true
  %126 = zext i1 %125 to i32
  %127 = xor i32 %121, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %116, %103
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %375

130:                                              ; preds = %116
  %131 = bitcast [16 x i8*]* %41 to i8***
  %132 = mul nuw i64 128, %39
  %133 = trunc i64 %132 to i32
  %134 = call i32 @memset(i8*** %131, i32 0, i32 %133)
  %135 = getelementptr inbounds [3 x i32*], [3 x i32*]* %14, i64 0, i64 0
  %136 = load i32*, i32** %135, align 16
  %137 = icmp ne i32* %136, null
  br i1 %137, label %138, label %149

138:                                              ; preds = %130
  %139 = getelementptr inbounds [3 x i32*], [3 x i32*]* %14, i64 0, i64 0
  %140 = load i32*, i32** %139, align 16
  %141 = getelementptr inbounds i32, i32* %140, i64 0
  %142 = load i32, i32* %141, align 4
  store i32 %142, i32* %19, align 4
  %143 = load i32, i32* %19, align 4
  %144 = load i32, i32* @CDTEXT_CHARSET_ASCII7BIT, align 4
  %145 = icmp eq i32 %143, %144
  br i1 %145, label %146, label %148

146:                                              ; preds = %138
  %147 = load i32, i32* @CDTEXT_CHARSET_ISO88591, align 4
  store i32 %147, i32* %19, align 4
  br label %148

148:                                              ; preds = %146, %138
  br label %151

149:                                              ; preds = %130
  %150 = load i32, i32* @CDTEXT_CHARSET_ASCII7BIT, align 4
  store i32 %150, i32* %19, align 4
  br label %151

151:                                              ; preds = %149, %148
  %152 = load i32, i32* @CDTEXT_TEXT_BUFFER, align 4
  %153 = zext i32 %152 to i64
  %154 = alloca i8, i64 %153, align 16
  store i64 %153, i64* %20, align 8
  store i64 0, i64* %21, align 8
  store i64 0, i64* %22, align 8
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  br label %155

155:                                              ; preds = %212, %151
  %156 = load i32, i32* %24, align 4
  %157 = load i32, i32* %9, align 4
  %158 = load i32, i32* @CDTEXT_PACK_SIZE, align 4
  %159 = sdiv i32 %157, %158
  %160 = icmp slt i32 %156, %159
  br i1 %160, label %161, label %215

161:                                              ; preds = %155
  %162 = load i32*, i32** %8, align 8
  %163 = load i32, i32* @CDTEXT_PACK_SIZE, align 4
  %164 = load i32, i32* %24, align 4
  %165 = mul nsw i32 %163, %164
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %162, i64 %166
  store i32* %167, i32** %25, align 8
  %168 = load i32*, i32** %25, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 0
  %170 = load i32, i32* %169, align 4
  store i32 %170, i32* %26, align 4
  %171 = load i32*, i32** %25, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 3
  %173 = load i32, i32* %172, align 4
  %174 = ashr i32 %173, 4
  %175 = and i32 %174, 7
  store i32 %175, i32* %27, align 4
  %176 = load i64, i64* %21, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %183

178:                                              ; preds = %161
  %179 = load i32, i32* %26, align 4
  %180 = load i32, i32* %23, align 4
  %181 = icmp ne i32 %179, %180
  br i1 %181, label %182, label %183

182:                                              ; preds = %178
  store i64 0, i64* %21, align 8
  store i64 0, i64* %22, align 8
  br label %183

183:                                              ; preds = %182, %178, %161
  %184 = load i32, i32* %26, align 4
  store i32 %184, i32* %23, align 4
  %185 = load i32*, i32** %25, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 1
  %187 = load i32, i32* %186, align 4
  %188 = and i32 %187, 127
  store i32 %188, i32* %28, align 4
  %189 = load i32, i32* %28, align 4
  %190 = load i32, i32* @CDTEXT_MAX_TRACKS, align 4
  %191 = icmp sgt i32 %189, %190
  br i1 %191, label %201, label %192

192:                                              ; preds = %183
  %193 = load i32*, i32** %25, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 1
  %195 = load i32, i32* %194, align 4
  %196 = and i32 %195, 128
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %201, label %198

198:                                              ; preds = %192
  %199 = load i32, i32* %27, align 4
  %200 = icmp sgt i32 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %198, %192, %183
  store i32 0, i32* %23, align 4
  br label %212

202:                                              ; preds = %198
  %203 = load i32, i32* %26, align 4
  switch i32 %203, label %210 [
    i32 128, label %204
    i32 129, label %204
    i32 133, label %204
    i32 135, label %204
    i32 130, label %209
    i32 131, label %209
    i32 132, label %209
    i32 134, label %209
    i32 141, label %209
    i32 142, label %209
  ]

204:                                              ; preds = %202, %202, %202, %202
  %205 = load i32*, i32** %25, align 8
  %206 = load i32, i32* %19, align 4
  %207 = bitcast [16 x i8*]* %41 to i8***
  %208 = call i32 @CdTextParsePackText(i32* %205, i32 %206, i64* %21, i64* %22, i8* %154, i32* %12, i8*** %207)
  br label %211

209:                                              ; preds = %202, %202, %202, %202, %202, %202
  br label %210

210:                                              ; preds = %202, %209
  br label %212

211:                                              ; preds = %204
  br label %212

212:                                              ; preds = %211, %210, %201
  %213 = load i32, i32* %24, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %24, align 4
  br label %155

215:                                              ; preds = %155
  %216 = load i32, i32* %12, align 4
  %217 = icmp slt i32 %216, 0
  br i1 %217, label %218, label %219

218:                                              ; preds = %215
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %375

219:                                              ; preds = %215
  %220 = load i32, i32* %12, align 4
  %221 = add nsw i32 %220, 1
  %222 = call i32** @calloc(i32 %221, i32 8)
  store i32** %222, i32*** %29, align 8
  %223 = load i32**, i32*** %29, align 8
  %224 = icmp ne i32** %223, null
  br i1 %224, label %226, label %225

225:                                              ; preds = %219
  br label %340

226:                                              ; preds = %219
  store i32 0, i32* %30, align 4
  br label %227

227:                                              ; preds = %336, %226
  %228 = load i32, i32* %30, align 4
  %229 = icmp slt i32 %228, 16
  br i1 %229, label %230, label %339

230:                                              ; preds = %227
  store i32 0, i32* %31, align 4
  br label %231

231:                                              ; preds = %332, %230
  %232 = load i32, i32* %31, align 4
  %233 = load i32, i32* %12, align 4
  %234 = icmp sle i32 %232, %233
  br i1 %234, label %235, label %335

235:                                              ; preds = %231
  %236 = getelementptr inbounds [16 x i8*], [16 x i8*]* %41, i64 0
  %237 = load i32, i32* %30, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds [16 x i8*], [16 x i8*]* %236, i64 0, i64 %238
  %240 = load i8*, i8** %239, align 8
  store i8* %240, i8** %32, align 8
  %241 = load i32, i32* %31, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds [16 x i8*], [16 x i8*]* %41, i64 %242
  %244 = load i32, i32* %30, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds [16 x i8*], [16 x i8*]* %243, i64 0, i64 %245
  %247 = load i8*, i8** %246, align 8
  store i8* %247, i8** %33, align 8
  %248 = load i8*, i8** %33, align 8
  %249 = icmp ne i8* %248, null
  br i1 %249, label %254, label %250

250:                                              ; preds = %235
  %251 = load i8*, i8** %32, align 8
  %252 = icmp ne i8* %251, null
  br i1 %252, label %254, label %253

253:                                              ; preds = %250
  br label %332

254:                                              ; preds = %250, %235
  %255 = load i32**, i32*** %29, align 8
  %256 = load i32, i32* %31, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i32*, i32** %255, i64 %257
  %259 = load i32*, i32** %258, align 8
  store i32* %259, i32** %34, align 8
  %260 = load i32*, i32** %34, align 8
  %261 = icmp ne i32* %260, null
  br i1 %261, label %272, label %262

262:                                              ; preds = %254
  %263 = call i32* (...) @vlc_meta_New()
  %264 = load i32**, i32*** %29, align 8
  %265 = load i32, i32* %31, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i32*, i32** %264, i64 %266
  store i32* %263, i32** %267, align 8
  store i32* %263, i32** %34, align 8
  %268 = load i32*, i32** %34, align 8
  %269 = icmp ne i32* %268, null
  br i1 %269, label %271, label %270

270:                                              ; preds = %262
  br label %332

271:                                              ; preds = %262
  br label %272

272:                                              ; preds = %271, %254
  %273 = load i32, i32* %30, align 4
  %274 = add nsw i32 128, %273
  switch i32 %274, label %331 [
    i32 128, label %275
    i32 129, label %298
    i32 133, label %309
    i32 135, label %320
  ]

275:                                              ; preds = %272
  %276 = load i32, i32* %31, align 4
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %278, label %282

278:                                              ; preds = %275
  %279 = load i32*, i32** %34, align 8
  %280 = load i8*, i8** %33, align 8
  %281 = call i32 @vlc_meta_SetAlbum(i32* %279, i8* %280)
  br label %297

282:                                              ; preds = %275
  %283 = load i8*, i8** %33, align 8
  %284 = icmp ne i8* %283, null
  br i1 %284, label %285, label %289

285:                                              ; preds = %282
  %286 = load i32*, i32** %34, align 8
  %287 = load i8*, i8** %33, align 8
  %288 = call i32 @vlc_meta_SetTitle(i32* %286, i8* %287)
  br label %289

289:                                              ; preds = %285, %282
  %290 = load i8*, i8** %32, align 8
  %291 = icmp ne i8* %290, null
  br i1 %291, label %292, label %296

292:                                              ; preds = %289
  %293 = load i32*, i32** %34, align 8
  %294 = load i8*, i8** %32, align 8
  %295 = call i32 @vlc_meta_SetAlbum(i32* %293, i8* %294)
  br label %296

296:                                              ; preds = %292, %289
  br label %297

297:                                              ; preds = %296, %278
  br label %331

298:                                              ; preds = %272
  %299 = load i32*, i32** %34, align 8
  %300 = load i8*, i8** %33, align 8
  %301 = icmp ne i8* %300, null
  br i1 %301, label %302, label %304

302:                                              ; preds = %298
  %303 = load i8*, i8** %33, align 8
  br label %306

304:                                              ; preds = %298
  %305 = load i8*, i8** %32, align 8
  br label %306

306:                                              ; preds = %304, %302
  %307 = phi i8* [ %303, %302 ], [ %305, %304 ]
  %308 = call i32 @vlc_meta_SetArtist(i32* %299, i8* %307)
  br label %331

309:                                              ; preds = %272
  %310 = load i32*, i32** %34, align 8
  %311 = load i8*, i8** %33, align 8
  %312 = icmp ne i8* %311, null
  br i1 %312, label %313, label %315

313:                                              ; preds = %309
  %314 = load i8*, i8** %33, align 8
  br label %317

315:                                              ; preds = %309
  %316 = load i8*, i8** %32, align 8
  br label %317

317:                                              ; preds = %315, %313
  %318 = phi i8* [ %314, %313 ], [ %316, %315 ]
  %319 = call i32 @vlc_meta_SetDescription(i32* %310, i8* %318)
  br label %331

320:                                              ; preds = %272
  %321 = load i32*, i32** %34, align 8
  %322 = load i8*, i8** %33, align 8
  %323 = icmp ne i8* %322, null
  br i1 %323, label %324, label %326

324:                                              ; preds = %320
  %325 = load i8*, i8** %33, align 8
  br label %328

326:                                              ; preds = %320
  %327 = load i8*, i8** %32, align 8
  br label %328

328:                                              ; preds = %326, %324
  %329 = phi i8* [ %325, %324 ], [ %327, %326 ]
  %330 = call i32 @vlc_meta_SetGenre(i32* %321, i8* %329)
  br label %331

331:                                              ; preds = %272, %328, %317, %306, %297
  br label %332

332:                                              ; preds = %331, %270, %253
  %333 = load i32, i32* %31, align 4
  %334 = add nsw i32 %333, 1
  store i32 %334, i32* %31, align 4
  br label %231

335:                                              ; preds = %231
  br label %336

336:                                              ; preds = %335
  %337 = load i32, i32* %30, align 4
  %338 = add nsw i32 %337, 1
  store i32 %338, i32* %30, align 4
  br label %227

339:                                              ; preds = %227
  br label %340

340:                                              ; preds = %339, %225
  store i32 0, i32* %35, align 4
  br label %341

341:                                              ; preds = %362, %340
  %342 = load i32, i32* %35, align 4
  %343 = icmp slt i32 %342, 16
  br i1 %343, label %344, label %365

344:                                              ; preds = %341
  store i32 0, i32* %36, align 4
  br label %345

345:                                              ; preds = %358, %344
  %346 = load i32, i32* %36, align 4
  %347 = load i32, i32* %12, align 4
  %348 = icmp sle i32 %346, %347
  br i1 %348, label %349, label %361

349:                                              ; preds = %345
  %350 = load i32, i32* %36, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds [16 x i8*], [16 x i8*]* %41, i64 %351
  %353 = load i32, i32* %35, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds [16 x i8*], [16 x i8*]* %352, i64 0, i64 %354
  %356 = load i8*, i8** %355, align 8
  %357 = call i32 @free(i8* %356)
  br label %358

358:                                              ; preds = %349
  %359 = load i32, i32* %36, align 4
  %360 = add nsw i32 %359, 1
  store i32 %360, i32* %36, align 4
  br label %345

361:                                              ; preds = %345
  br label %362

362:                                              ; preds = %361
  %363 = load i32, i32* %35, align 4
  %364 = add nsw i32 %363, 1
  store i32 %364, i32* %35, align 4
  br label %341

365:                                              ; preds = %341
  %366 = load i32**, i32*** %29, align 8
  %367 = load i32***, i32**** %6, align 8
  store i32** %366, i32*** %367, align 8
  %368 = load i32, i32* %12, align 4
  %369 = add nsw i32 %368, 1
  %370 = load i32*, i32** %7, align 8
  store i32 %369, i32* %370, align 4
  %371 = load i32**, i32*** %29, align 8
  %372 = icmp ne i32** %371, null
  %373 = zext i1 %372 to i64
  %374 = select i1 %372, i32 0, i32 -1
  store i32 %374, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %375

375:                                              ; preds = %365, %218, %129, %91, %84, %44
  %376 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %376)
  %377 = load i32, i32* %5, align 4
  ret i32 %377
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @memset(i8***, i32, i32) #3

declare dso_local i32 @CdTextParsePackText(i32*, i32, i64*, i64*, i8*, i32*, i8***) #3

declare dso_local i32** @calloc(i32, i32) #3

declare dso_local i32* @vlc_meta_New(...) #3

declare dso_local i32 @vlc_meta_SetAlbum(i32*, i8*) #3

declare dso_local i32 @vlc_meta_SetTitle(i32*, i8*) #3

declare dso_local i32 @vlc_meta_SetArtist(i32*, i8*) #3

declare dso_local i32 @vlc_meta_SetDescription(i32*, i8*) #3

declare dso_local i32 @vlc_meta_SetGenre(i32*, i8*) #3

declare dso_local i32 @free(i8*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
