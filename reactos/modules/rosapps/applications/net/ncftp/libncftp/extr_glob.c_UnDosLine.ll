; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_glob.c_UnDosLine.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_glob.c_UnDosLine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i64, i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@SCANF_LONG_LONG = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64, i8*, i64, i32*, i64*, i32*)* @UnDosLine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @UnDosLine(i8* %0, i8* %1, i64 %2, i8* %3, i64 %4, i32* %5, i64* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca %struct.tm, align 8
  %24 = alloca i64, align 8
  store i8* %0, i8** %10, align 8
  store i8* %1, i8** %11, align 8
  store i64 %2, i64* %12, align 8
  store i8* %3, i8** %13, align 8
  store i64 %4, i64* %14, align 8
  store i32* %5, i32** %15, align 8
  store i64* %6, i64** %16, align 8
  store i32* %7, i32** %17, align 8
  %25 = load i8*, i8** %10, align 8
  store i8* %25, i8** %18, align 8
  %26 = load i8*, i8** %18, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = trunc i32 %29 to i8
  %31 = call i64 @isdigit(i8 signext %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %353

33:                                               ; preds = %8
  %34 = load i8*, i8** %18, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 1
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = trunc i32 %37 to i8
  %39 = call i64 @isdigit(i8 signext %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %353

41:                                               ; preds = %33
  %42 = load i8*, i8** %18, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 2
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = call i64 @ispunct(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %353

48:                                               ; preds = %41
  %49 = load i8*, i8** %18, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 3
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = trunc i32 %52 to i8
  %54 = call i64 @isdigit(i8 signext %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %353

56:                                               ; preds = %48
  %57 = load i8*, i8** %18, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 4
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = trunc i32 %60 to i8
  %62 = call i64 @isdigit(i8 signext %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %353

64:                                               ; preds = %56
  %65 = load i8*, i8** %18, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 5
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = call i64 @ispunct(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %353

71:                                               ; preds = %64
  %72 = load i8*, i8** %18, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 6
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = trunc i32 %75 to i8
  %77 = call i64 @isdigit(i8 signext %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %353

79:                                               ; preds = %71
  %80 = load i8*, i8** %18, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 7
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = trunc i32 %83 to i8
  %85 = call i64 @isdigit(i8 signext %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %353

87:                                               ; preds = %79
  %88 = call i32 @memset(%struct.tm* %23, i32 0, i32 40)
  %89 = getelementptr inbounds %struct.tm, %struct.tm* %23, i32 0, i32 0
  store i32 -1, i32* %89, align 8
  %90 = load i8*, i8** %18, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 2
  store i8 0, i8* %91, align 1
  %92 = load i8*, i8** %18, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 0
  %94 = call i8* @atoi(i8* %93)
  %95 = ptrtoint i8* %94 to i64
  %96 = getelementptr inbounds %struct.tm, %struct.tm* %23, i32 0, i32 1
  store i64 %95, i64* %96, align 8
  %97 = getelementptr inbounds %struct.tm, %struct.tm* %23, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = icmp sgt i64 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %87
  %101 = getelementptr inbounds %struct.tm, %struct.tm* %23, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = sub nsw i64 %102, 1
  store i64 %103, i64* %101, align 8
  br label %104

104:                                              ; preds = %100, %87
  %105 = load i8*, i8** %18, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 5
  store i8 0, i8* %106, align 1
  %107 = load i8*, i8** %18, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 3
  %109 = call i8* @atoi(i8* %108)
  %110 = getelementptr inbounds %struct.tm, %struct.tm* %23, i32 0, i32 5
  store i8* %109, i8** %110, align 8
  %111 = load i8*, i8** %18, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 8
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = trunc i32 %114 to i8
  %116 = call i64 @isdigit(i8 signext %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %143

118:                                              ; preds = %104
  %119 = load i8*, i8** %18, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 9
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = trunc i32 %122 to i8
  %124 = call i64 @isdigit(i8 signext %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %143

126:                                              ; preds = %118
  %127 = load i8*, i8** %18, align 8
  %128 = getelementptr inbounds i8, i8* %127, i64 10
  store i8 0, i8* %128, align 1
  %129 = load i8*, i8** %18, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 6
  %131 = call i8* @atoi(i8* %130)
  %132 = ptrtoint i8* %131 to i32
  store i32 %132, i32* %20, align 4
  %133 = load i32, i32* %20, align 4
  %134 = icmp sgt i32 %133, 1900
  br i1 %134, label %135, label %138

135:                                              ; preds = %126
  %136 = load i32, i32* %20, align 4
  %137 = sub nsw i32 %136, 1900
  store i32 %137, i32* %20, align 4
  br label %138

138:                                              ; preds = %135, %126
  %139 = load i32, i32* %20, align 4
  %140 = getelementptr inbounds %struct.tm, %struct.tm* %23, i32 0, i32 2
  store i32 %139, i32* %140, align 8
  %141 = load i8*, i8** %18, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 11
  store i8* %142, i8** %18, align 8
  br label %160

143:                                              ; preds = %118, %104
  %144 = load i8*, i8** %18, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 8
  store i8 0, i8* %145, align 1
  %146 = load i8*, i8** %18, align 8
  %147 = getelementptr inbounds i8, i8* %146, i64 6
  %148 = call i8* @atoi(i8* %147)
  %149 = ptrtoint i8* %148 to i32
  store i32 %149, i32* %20, align 4
  %150 = load i32, i32* %20, align 4
  %151 = icmp slt i32 %150, 98
  br i1 %151, label %152, label %155

152:                                              ; preds = %143
  %153 = load i32, i32* %20, align 4
  %154 = add nsw i32 %153, 100
  store i32 %154, i32* %20, align 4
  br label %155

155:                                              ; preds = %152, %143
  %156 = load i32, i32* %20, align 4
  %157 = getelementptr inbounds %struct.tm, %struct.tm* %23, i32 0, i32 2
  store i32 %156, i32* %157, align 8
  %158 = load i8*, i8** %18, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 9
  store i8* %159, i8** %18, align 8
  br label %160

160:                                              ; preds = %155, %138
  br label %161

161:                                              ; preds = %173, %160
  %162 = load i8*, i8** %18, align 8
  %163 = load i8, i8* %162, align 1
  %164 = sext i8 %163 to i32
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %161
  store i32 -1, i32* %9, align 4
  br label %354

167:                                              ; preds = %161
  %168 = load i8*, i8** %18, align 8
  %169 = load i8, i8* %168, align 1
  %170 = call i64 @isdigit(i8 signext %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %167
  br label %176

173:                                              ; preds = %167
  %174 = load i8*, i8** %18, align 8
  %175 = getelementptr inbounds i8, i8* %174, i32 1
  store i8* %175, i8** %18, align 8
  br label %161

176:                                              ; preds = %172
  %177 = load i8*, i8** %18, align 8
  %178 = getelementptr inbounds i8, i8* %177, i64 2
  store i8 0, i8* %178, align 1
  %179 = load i8*, i8** %18, align 8
  %180 = call i8* @atoi(i8* %179)
  %181 = ptrtoint i8* %180 to i32
  store i32 %181, i32* %19, align 4
  %182 = load i8*, i8** %18, align 8
  %183 = getelementptr inbounds i8, i8* %182, i64 5
  %184 = load i8, i8* %183, align 1
  %185 = sext i8 %184 to i32
  %186 = icmp eq i32 %185, 80
  br i1 %186, label %193, label %187

187:                                              ; preds = %176
  %188 = load i8*, i8** %18, align 8
  %189 = getelementptr inbounds i8, i8* %188, i64 5
  %190 = load i8, i8* %189, align 1
  %191 = sext i8 %190 to i32
  %192 = icmp eq i32 %191, 112
  br i1 %192, label %193, label %199

193:                                              ; preds = %187, %176
  %194 = load i32, i32* %19, align 4
  %195 = icmp slt i32 %194, 12
  br i1 %195, label %196, label %199

196:                                              ; preds = %193
  %197 = load i32, i32* %19, align 4
  %198 = add nsw i32 %197, 12
  store i32 %198, i32* %19, align 4
  br label %218

199:                                              ; preds = %193, %187
  %200 = load i8*, i8** %18, align 8
  %201 = getelementptr inbounds i8, i8* %200, i64 5
  %202 = load i8, i8* %201, align 1
  %203 = sext i8 %202 to i32
  %204 = icmp eq i32 %203, 65
  br i1 %204, label %211, label %205

205:                                              ; preds = %199
  %206 = load i8*, i8** %18, align 8
  %207 = getelementptr inbounds i8, i8* %206, i64 5
  %208 = load i8, i8* %207, align 1
  %209 = sext i8 %208 to i32
  %210 = icmp eq i32 %209, 97
  br i1 %210, label %211, label %217

211:                                              ; preds = %205, %199
  %212 = load i32, i32* %19, align 4
  %213 = icmp eq i32 %212, 12
  br i1 %213, label %214, label %217

214:                                              ; preds = %211
  %215 = load i32, i32* %19, align 4
  %216 = sub nsw i32 %215, 12
  store i32 %216, i32* %19, align 4
  br label %217

217:                                              ; preds = %214, %211, %205
  br label %218

218:                                              ; preds = %217, %196
  %219 = load i32, i32* %19, align 4
  %220 = getelementptr inbounds %struct.tm, %struct.tm* %23, i32 0, i32 3
  store i32 %219, i32* %220, align 4
  %221 = load i8*, i8** %18, align 8
  %222 = getelementptr inbounds i8, i8* %221, i64 5
  store i8 0, i8* %222, align 1
  %223 = load i8*, i8** %18, align 8
  %224 = getelementptr inbounds i8, i8* %223, i64 3
  %225 = call i8* @atoi(i8* %224)
  %226 = getelementptr inbounds %struct.tm, %struct.tm* %23, i32 0, i32 4
  store i8* %225, i8** %226, align 8
  %227 = call i32 @mktime(%struct.tm* %23)
  %228 = load i32*, i32** %17, align 8
  store i32 %227, i32* %228, align 4
  %229 = load i32*, i32** %15, align 8
  %230 = load i32, i32* %229, align 4
  %231 = icmp eq i32 %230, -1
  br i1 %231, label %232, label %233

232:                                              ; preds = %218
  store i32 -1, i32* %9, align 4
  br label %354

233:                                              ; preds = %218
  %234 = load i8*, i8** %18, align 8
  %235 = getelementptr inbounds i8, i8* %234, i64 6
  store i8* %235, i8** %18, align 8
  %236 = load i32*, i32** %15, align 8
  store i32 45, i32* %236, align 4
  br label %237

237:                                              ; preds = %284, %233
  %238 = load i8*, i8** %18, align 8
  %239 = load i8, i8* %238, align 1
  %240 = sext i8 %239 to i32
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %242, label %243

242:                                              ; preds = %237
  store i32 -1, i32* %9, align 4
  br label %354

243:                                              ; preds = %237
  %244 = load i8*, i8** %18, align 8
  %245 = load i8, i8* %244, align 1
  %246 = sext i8 %245 to i32
  %247 = icmp eq i32 %246, 60
  br i1 %247, label %248, label %258

248:                                              ; preds = %243
  %249 = load i8*, i8** %18, align 8
  %250 = getelementptr inbounds i8, i8* %249, i64 1
  %251 = load i8, i8* %250, align 1
  %252 = sext i8 %251 to i32
  %253 = icmp eq i32 %252, 68
  br i1 %253, label %254, label %258

254:                                              ; preds = %248
  %255 = load i32*, i32** %15, align 8
  store i32 100, i32* %255, align 4
  %256 = load i8*, i8** %18, align 8
  %257 = getelementptr inbounds i8, i8* %256, i64 5
  store i8* %257, i8** %18, align 8
  br label %285

258:                                              ; preds = %248, %243
  %259 = load i8*, i8** %18, align 8
  %260 = load i8, i8* %259, align 1
  %261 = sext i8 %260 to i32
  %262 = icmp eq i32 %261, 60
  br i1 %262, label %263, label %273

263:                                              ; preds = %258
  %264 = load i8*, i8** %18, align 8
  %265 = getelementptr inbounds i8, i8* %264, i64 1
  %266 = load i8, i8* %265, align 1
  %267 = sext i8 %266 to i32
  %268 = icmp eq i32 %267, 74
  br i1 %268, label %269, label %273

269:                                              ; preds = %263
  %270 = load i32*, i32** %15, align 8
  store i32 100, i32* %270, align 4
  %271 = load i8*, i8** %18, align 8
  %272 = getelementptr inbounds i8, i8* %271, i64 10
  store i8* %272, i8** %18, align 8
  br label %285

273:                                              ; preds = %263, %258
  %274 = load i8*, i8** %18, align 8
  %275 = load i8, i8* %274, align 1
  %276 = call i64 @isdigit(i8 signext %275)
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %279

278:                                              ; preds = %273
  br label %285

279:                                              ; preds = %273
  %280 = load i8*, i8** %18, align 8
  %281 = getelementptr inbounds i8, i8* %280, i32 1
  store i8* %281, i8** %18, align 8
  br label %282

282:                                              ; preds = %279
  br label %283

283:                                              ; preds = %282
  br label %284

284:                                              ; preds = %283
  br label %237

285:                                              ; preds = %278, %269, %254
  %286 = load i8*, i8** %18, align 8
  store i8* %286, i8** %22, align 8
  br label %287

287:                                              ; preds = %301, %285
  %288 = load i8*, i8** %18, align 8
  %289 = load i8, i8* %288, align 1
  %290 = sext i8 %289 to i32
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %292, label %293

292:                                              ; preds = %287
  store i32 -1, i32* %9, align 4
  br label %354

293:                                              ; preds = %287
  %294 = load i8*, i8** %18, align 8
  %295 = load i8, i8* %294, align 1
  %296 = call i64 @isdigit(i8 signext %295)
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %301, label %298

298:                                              ; preds = %293
  %299 = load i8*, i8** %18, align 8
  %300 = getelementptr inbounds i8, i8* %299, i32 1
  store i8* %300, i8** %18, align 8
  store i8 0, i8* %299, align 1
  br label %304

301:                                              ; preds = %293
  %302 = load i8*, i8** %18, align 8
  %303 = getelementptr inbounds i8, i8* %302, i32 1
  store i8* %303, i8** %18, align 8
  br label %287

304:                                              ; preds = %298
  %305 = load i64*, i64** %16, align 8
  %306 = icmp ne i64* %305, null
  br i1 %306, label %307, label %318

307:                                              ; preds = %304
  %308 = load i64*, i64** %16, align 8
  store i64 0, i64* %308, align 8
  %309 = load i32*, i32** %15, align 8
  %310 = load i32, i32* %309, align 4
  %311 = icmp ne i32 %310, 100
  br i1 %311, label %312, label %317

312:                                              ; preds = %307
  store i64 0, i64* %24, align 8
  %313 = load i8*, i8** %22, align 8
  %314 = call i32 @sscanf(i8* %313, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64* %24)
  %315 = load i64, i64* %24, align 8
  %316 = load i64*, i64** %16, align 8
  store i64 %315, i64* %316, align 8
  br label %317

317:                                              ; preds = %312, %307
  br label %318

318:                                              ; preds = %317, %304
  br label %319

319:                                              ; preds = %331, %318
  %320 = load i8*, i8** %18, align 8
  %321 = load i8, i8* %320, align 1
  %322 = sext i8 %321 to i32
  %323 = icmp eq i32 %322, 0
  br i1 %323, label %324, label %325

324:                                              ; preds = %319
  store i32 -1, i32* %9, align 4
  br label %354

325:                                              ; preds = %319
  %326 = load i8*, i8** %18, align 8
  %327 = load i8, i8* %326, align 1
  %328 = call i32 @isspace(i8 signext %327)
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %331, label %330

330:                                              ; preds = %325
  br label %334

331:                                              ; preds = %325
  %332 = load i8*, i8** %18, align 8
  %333 = getelementptr inbounds i8, i8* %332, i32 1
  store i8* %333, i8** %18, align 8
  br label %319

334:                                              ; preds = %330
  %335 = load i8*, i8** %18, align 8
  store i8* %335, i8** %21, align 8
  %336 = load i64, i64* %12, align 8
  %337 = icmp eq i64 %336, 0
  br i1 %337, label %338, label %343

338:                                              ; preds = %334
  %339 = load i8*, i8** %13, align 8
  %340 = load i8*, i8** %21, align 8
  %341 = load i64, i64* %14, align 8
  %342 = call i32 @Strncpy(i8* %339, i8* %340, i64 %341)
  br label %352

343:                                              ; preds = %334
  %344 = load i8*, i8** %13, align 8
  %345 = load i8*, i8** %11, align 8
  %346 = load i64, i64* %14, align 8
  %347 = call i32 @Strncpy(i8* %344, i8* %345, i64 %346)
  %348 = load i8*, i8** %13, align 8
  %349 = load i8*, i8** %21, align 8
  %350 = load i64, i64* %14, align 8
  %351 = call i32 @Strncat(i8* %348, i8* %349, i64 %350)
  br label %352

352:                                              ; preds = %343, %338
  store i32 0, i32* %9, align 4
  br label %354

353:                                              ; preds = %79, %71, %64, %56, %48, %41, %33, %8
  store i32 -1, i32* %9, align 4
  br label %354

354:                                              ; preds = %353, %352, %324, %292, %242, %232, %166
  %355 = load i32, i32* %9, align 4
  ret i32 %355
}

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i64 @ispunct(i32) #1

declare dso_local i32 @memset(%struct.tm*, i32, i32) #1

declare dso_local i8* @atoi(i8*) #1

declare dso_local i32 @mktime(%struct.tm*) #1

declare dso_local i32 @sscanf(i8*, i8*, i64*) #1

declare dso_local i32 @isspace(i8 signext) #1

declare dso_local i32 @Strncpy(i8*, i8*, i64) #1

declare dso_local i32 @Strncat(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
