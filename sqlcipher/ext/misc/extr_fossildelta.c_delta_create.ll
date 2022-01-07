; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_fossildelta.c_delta_create.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_fossildelta.c_delta_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NHASH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i32, i8*)* @delta_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @delta_create(i8* %0, i32 %1, i8* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %37 = load i8*, i8** %11, align 8
  store i8* %37, i8** %14, align 8
  store i32 -1, i32* %19, align 4
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @putInt(i32 %38, i8** %11)
  %40 = load i8*, i8** %11, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %11, align 8
  store i8 10, i8* %40, align 1
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @NHASH, align 4
  %44 = icmp ule i32 %42, %43
  br i1 %44, label %45, label %70

45:                                               ; preds = %5
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @putInt(i32 %46, i8** %11)
  %48 = load i8*, i8** %11, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %11, align 8
  store i8 58, i8* %48, align 1
  %50 = load i8*, i8** %11, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @memcpy(i8* %50, i8* %51, i32 %52)
  %54 = load i32, i32* %10, align 4
  %55 = load i8*, i8** %11, align 8
  %56 = zext i32 %54 to i64
  %57 = getelementptr inbounds i8, i8* %55, i64 %56
  store i8* %57, i8** %11, align 8
  %58 = load i8*, i8** %9, align 8
  %59 = load i32, i32* %10, align 4
  %60 = call i32 @checksum(i8* %58, i32 %59)
  %61 = call i32 @putInt(i32 %60, i8** %11)
  %62 = load i8*, i8** %11, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %11, align 8
  store i8 59, i8* %62, align 1
  %64 = load i8*, i8** %11, align 8
  %65 = load i8*, i8** %14, align 8
  %66 = ptrtoint i8* %64 to i64
  %67 = ptrtoint i8* %65 to i64
  %68 = sub i64 %66, %67
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %6, align 4
  br label %426

70:                                               ; preds = %5
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @NHASH, align 4
  %73 = udiv i32 %71, %72
  store i32 %73, i32* %16, align 4
  %74 = load i32, i32* %16, align 4
  %75 = mul nsw i32 %74, 2
  %76 = sext i32 %75 to i64
  %77 = mul i64 %76, 4
  %78 = trunc i64 %77 to i32
  %79 = call i32* @sqlite3_malloc64(i32 %78)
  store i32* %79, i32** %18, align 8
  %80 = load i32*, i32** %18, align 8
  %81 = load i32, i32* %16, align 4
  %82 = mul nsw i32 %81, 2
  %83 = sext i32 %82 to i64
  %84 = mul i64 %83, 4
  %85 = trunc i64 %84 to i32
  %86 = call i32 @memset(i32* %80, i32 -1, i32 %85)
  %87 = load i32*, i32** %18, align 8
  %88 = load i32, i32* %16, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  store i32* %90, i32** %17, align 8
  store i32 0, i32* %12, align 4
  br label %91

91:                                               ; preds = %123, %70
  %92 = load i32, i32* %12, align 4
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* @NHASH, align 4
  %95 = sub i32 %93, %94
  %96 = icmp ult i32 %92, %95
  br i1 %96, label %97, label %127

97:                                               ; preds = %91
  %98 = load i8*, i8** %7, align 8
  %99 = load i32, i32* %12, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %98, i64 %100
  %102 = call i32 @hash_once(i8* %101)
  %103 = load i32, i32* %16, align 4
  %104 = srem i32 %102, %103
  store i32 %104, i32* %20, align 4
  %105 = load i32*, i32** %17, align 8
  %106 = load i32, i32* %20, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = load i32*, i32** %18, align 8
  %111 = load i32, i32* %12, align 4
  %112 = load i32, i32* @NHASH, align 4
  %113 = udiv i32 %111, %112
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %110, i64 %114
  store i32 %109, i32* %115, align 4
  %116 = load i32, i32* %12, align 4
  %117 = load i32, i32* @NHASH, align 4
  %118 = udiv i32 %116, %117
  %119 = load i32*, i32** %17, align 8
  %120 = load i32, i32* %20, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  store i32 %118, i32* %122, align 4
  br label %123

123:                                              ; preds = %97
  %124 = load i32, i32* @NHASH, align 4
  %125 = load i32, i32* %12, align 4
  %126 = add i32 %125, %124
  store i32 %126, i32* %12, align 4
  br label %91

127:                                              ; preds = %91
  store i32 0, i32* %13, align 4
  br label %128

128:                                              ; preds = %384, %127
  %129 = load i32, i32* %13, align 4
  %130 = load i32, i32* @NHASH, align 4
  %131 = add i32 %129, %130
  %132 = load i32, i32* %10, align 4
  %133 = icmp ult i32 %131, %132
  br i1 %133, label %134, label %385

134:                                              ; preds = %128
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  %135 = load i8*, i8** %9, align 8
  %136 = load i32, i32* %13, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8, i8* %135, i64 %137
  %139 = call i32 @hash_init(i32* %15, i8* %138)
  store i32 0, i32* %12, align 4
  store i32 0, i32* %23, align 4
  br label %140

140:                                              ; preds = %134, %371
  store i32 250, i32* %27, align 4
  %141 = call i32 @hash_32bit(i32* %15)
  %142 = load i32, i32* %16, align 4
  %143 = srem i32 %141, %142
  store i32 %143, i32* %26, align 4
  %144 = load i32*, i32** %17, align 8
  %145 = load i32, i32* %26, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load i32, i32* %147, align 4
  store i32 %148, i32* %22, align 4
  br label %149

149:                                              ; preds = %285, %140
  %150 = load i32, i32* %22, align 4
  %151 = icmp sge i32 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %149
  %153 = load i32, i32* %27, align 4
  %154 = add nsw i32 %153, -1
  store i32 %154, i32* %27, align 4
  %155 = icmp sgt i32 %153, 0
  br label %156

156:                                              ; preds = %152, %149
  %157 = phi i1 [ false, %149 ], [ %155, %152 ]
  br i1 %157, label %158, label %291

158:                                              ; preds = %156
  %159 = load i32, i32* %22, align 4
  %160 = load i32, i32* @NHASH, align 4
  %161 = mul i32 %159, %160
  store i32 %161, i32* %21, align 4
  %162 = load i32, i32* %13, align 4
  %163 = load i32, i32* %12, align 4
  %164 = add nsw i32 %162, %163
  store i32 %164, i32* %34, align 4
  %165 = load i32, i32* %8, align 4
  %166 = load i32, i32* %21, align 4
  %167 = sub i32 %165, %166
  %168 = load i32, i32* %10, align 4
  %169 = load i32, i32* %34, align 4
  %170 = sub i32 %168, %169
  %171 = icmp ule i32 %167, %170
  br i1 %171, label %172, label %174

172:                                              ; preds = %158
  %173 = load i32, i32* %8, align 4
  br label %180

174:                                              ; preds = %158
  %175 = load i32, i32* %21, align 4
  %176 = load i32, i32* %10, align 4
  %177 = add i32 %175, %176
  %178 = load i32, i32* %34, align 4
  %179 = sub i32 %177, %178
  br label %180

180:                                              ; preds = %174, %172
  %181 = phi i32 [ %173, %172 ], [ %179, %174 ]
  store i32 %181, i32* %36, align 4
  %182 = load i32, i32* %21, align 4
  store i32 %182, i32* %33, align 4
  br label %183

183:                                              ; preds = %203, %180
  %184 = load i32, i32* %33, align 4
  %185 = load i32, i32* %36, align 4
  %186 = icmp slt i32 %184, %185
  br i1 %186, label %187, label %208

187:                                              ; preds = %183
  %188 = load i8*, i8** %7, align 8
  %189 = load i32, i32* %33, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i8, i8* %188, i64 %190
  %192 = load i8, i8* %191, align 1
  %193 = sext i8 %192 to i32
  %194 = load i8*, i8** %9, align 8
  %195 = load i32, i32* %34, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i8, i8* %194, i64 %196
  %198 = load i8, i8* %197, align 1
  %199 = sext i8 %198 to i32
  %200 = icmp ne i32 %193, %199
  br i1 %200, label %201, label %202

201:                                              ; preds = %187
  br label %208

202:                                              ; preds = %187
  br label %203

203:                                              ; preds = %202
  %204 = load i32, i32* %33, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %33, align 4
  %206 = load i32, i32* %34, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %34, align 4
  br label %183

208:                                              ; preds = %201, %183
  %209 = load i32, i32* %33, align 4
  %210 = load i32, i32* %21, align 4
  %211 = sub nsw i32 %209, %210
  %212 = sub nsw i32 %211, 1
  store i32 %212, i32* %31, align 4
  store i32 1, i32* %32, align 4
  br label %213

213:                                              ; preds = %245, %208
  %214 = load i32, i32* %32, align 4
  %215 = load i32, i32* %21, align 4
  %216 = icmp slt i32 %214, %215
  br i1 %216, label %217, label %221

217:                                              ; preds = %213
  %218 = load i32, i32* %32, align 4
  %219 = load i32, i32* %12, align 4
  %220 = icmp sle i32 %218, %219
  br label %221

221:                                              ; preds = %217, %213
  %222 = phi i1 [ false, %213 ], [ %220, %217 ]
  br i1 %222, label %223, label %248

223:                                              ; preds = %221
  %224 = load i8*, i8** %7, align 8
  %225 = load i32, i32* %21, align 4
  %226 = load i32, i32* %32, align 4
  %227 = sub nsw i32 %225, %226
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i8, i8* %224, i64 %228
  %230 = load i8, i8* %229, align 1
  %231 = sext i8 %230 to i32
  %232 = load i8*, i8** %9, align 8
  %233 = load i32, i32* %13, align 4
  %234 = load i32, i32* %12, align 4
  %235 = add nsw i32 %233, %234
  %236 = load i32, i32* %32, align 4
  %237 = sub nsw i32 %235, %236
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i8, i8* %232, i64 %238
  %240 = load i8, i8* %239, align 1
  %241 = sext i8 %240 to i32
  %242 = icmp ne i32 %231, %241
  br i1 %242, label %243, label %244

243:                                              ; preds = %223
  br label %248

244:                                              ; preds = %223
  br label %245

245:                                              ; preds = %244
  %246 = load i32, i32* %32, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %32, align 4
  br label %213

248:                                              ; preds = %243, %221
  %249 = load i32, i32* %32, align 4
  %250 = add nsw i32 %249, -1
  store i32 %250, i32* %32, align 4
  %251 = load i32, i32* %21, align 4
  %252 = load i32, i32* %32, align 4
  %253 = sub nsw i32 %251, %252
  store i32 %253, i32* %29, align 4
  %254 = load i32, i32* %31, align 4
  %255 = load i32, i32* %32, align 4
  %256 = add nsw i32 %254, %255
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %28, align 4
  %258 = load i32, i32* %12, align 4
  %259 = load i32, i32* %32, align 4
  %260 = sub nsw i32 %258, %259
  store i32 %260, i32* %30, align 4
  %261 = load i32, i32* %12, align 4
  %262 = load i32, i32* %32, align 4
  %263 = sub nsw i32 %261, %262
  %264 = call i32 @digit_count(i32 %263)
  %265 = load i32, i32* %28, align 4
  %266 = call i32 @digit_count(i32 %265)
  %267 = add nsw i32 %264, %266
  %268 = load i32, i32* %29, align 4
  %269 = call i32 @digit_count(i32 %268)
  %270 = add nsw i32 %267, %269
  %271 = add nsw i32 %270, 3
  store i32 %271, i32* %35, align 4
  %272 = load i32, i32* %28, align 4
  %273 = load i32, i32* %35, align 4
  %274 = icmp sge i32 %272, %273
  br i1 %274, label %275, label %285

275:                                              ; preds = %248
  %276 = load i32, i32* %28, align 4
  %277 = load i32, i32* %23, align 4
  %278 = icmp ugt i32 %276, %277
  br i1 %278, label %279, label %285

279:                                              ; preds = %275
  %280 = load i32, i32* %28, align 4
  store i32 %280, i32* %23, align 4
  %281 = load i32, i32* %21, align 4
  %282 = load i32, i32* %32, align 4
  %283 = sub nsw i32 %281, %282
  store i32 %283, i32* %24, align 4
  %284 = load i32, i32* %30, align 4
  store i32 %284, i32* %25, align 4
  br label %285

285:                                              ; preds = %279, %275, %248
  %286 = load i32*, i32** %18, align 8
  %287 = load i32, i32* %22, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i32, i32* %286, i64 %288
  %290 = load i32, i32* %289, align 4
  store i32 %290, i32* %22, align 4
  br label %149

291:                                              ; preds = %156
  %292 = load i32, i32* %23, align 4
  %293 = icmp ugt i32 %292, 0
  br i1 %293, label %294, label %340

294:                                              ; preds = %291
  %295 = load i32, i32* %25, align 4
  %296 = icmp ugt i32 %295, 0
  br i1 %296, label %297, label %316

297:                                              ; preds = %294
  %298 = load i32, i32* %25, align 4
  %299 = call i32 @putInt(i32 %298, i8** %11)
  %300 = load i8*, i8** %11, align 8
  %301 = getelementptr inbounds i8, i8* %300, i32 1
  store i8* %301, i8** %11, align 8
  store i8 58, i8* %300, align 1
  %302 = load i8*, i8** %11, align 8
  %303 = load i8*, i8** %9, align 8
  %304 = load i32, i32* %13, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds i8, i8* %303, i64 %305
  %307 = load i32, i32* %25, align 4
  %308 = call i32 @memcpy(i8* %302, i8* %306, i32 %307)
  %309 = load i32, i32* %25, align 4
  %310 = load i8*, i8** %11, align 8
  %311 = zext i32 %309 to i64
  %312 = getelementptr inbounds i8, i8* %310, i64 %311
  store i8* %312, i8** %11, align 8
  %313 = load i32, i32* %25, align 4
  %314 = load i32, i32* %13, align 4
  %315 = add i32 %314, %313
  store i32 %315, i32* %13, align 4
  br label %316

316:                                              ; preds = %297, %294
  %317 = load i32, i32* %23, align 4
  %318 = load i32, i32* %13, align 4
  %319 = add i32 %318, %317
  store i32 %319, i32* %13, align 4
  %320 = load i32, i32* %23, align 4
  %321 = call i32 @putInt(i32 %320, i8** %11)
  %322 = load i8*, i8** %11, align 8
  %323 = getelementptr inbounds i8, i8* %322, i32 1
  store i8* %323, i8** %11, align 8
  store i8 64, i8* %322, align 1
  %324 = load i32, i32* %24, align 4
  %325 = call i32 @putInt(i32 %324, i8** %11)
  %326 = load i8*, i8** %11, align 8
  %327 = getelementptr inbounds i8, i8* %326, i32 1
  store i8* %327, i8** %11, align 8
  store i8 44, i8* %326, align 1
  %328 = load i32, i32* %24, align 4
  %329 = load i32, i32* %23, align 4
  %330 = add i32 %328, %329
  %331 = sub i32 %330, 1
  %332 = load i32, i32* %19, align 4
  %333 = icmp ugt i32 %331, %332
  br i1 %333, label %334, label %339

334:                                              ; preds = %316
  %335 = load i32, i32* %24, align 4
  %336 = load i32, i32* %23, align 4
  %337 = add i32 %335, %336
  %338 = sub i32 %337, 1
  store i32 %338, i32* %19, align 4
  br label %339

339:                                              ; preds = %334, %316
  store i32 0, i32* %23, align 4
  br label %384

340:                                              ; preds = %291
  %341 = load i32, i32* %13, align 4
  %342 = load i32, i32* %12, align 4
  %343 = add nsw i32 %341, %342
  %344 = load i32, i32* @NHASH, align 4
  %345 = add i32 %343, %344
  %346 = load i32, i32* %10, align 4
  %347 = icmp uge i32 %345, %346
  br i1 %347, label %348, label %371

348:                                              ; preds = %340
  %349 = load i32, i32* %10, align 4
  %350 = load i32, i32* %13, align 4
  %351 = sub i32 %349, %350
  %352 = call i32 @putInt(i32 %351, i8** %11)
  %353 = load i8*, i8** %11, align 8
  %354 = getelementptr inbounds i8, i8* %353, i32 1
  store i8* %354, i8** %11, align 8
  store i8 58, i8* %353, align 1
  %355 = load i8*, i8** %11, align 8
  %356 = load i8*, i8** %9, align 8
  %357 = load i32, i32* %13, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds i8, i8* %356, i64 %358
  %360 = load i32, i32* %10, align 4
  %361 = load i32, i32* %13, align 4
  %362 = sub i32 %360, %361
  %363 = call i32 @memcpy(i8* %355, i8* %359, i32 %362)
  %364 = load i32, i32* %10, align 4
  %365 = load i32, i32* %13, align 4
  %366 = sub i32 %364, %365
  %367 = load i8*, i8** %11, align 8
  %368 = zext i32 %366 to i64
  %369 = getelementptr inbounds i8, i8* %367, i64 %368
  store i8* %369, i8** %11, align 8
  %370 = load i32, i32* %10, align 4
  store i32 %370, i32* %13, align 4
  br label %384

371:                                              ; preds = %340
  %372 = load i8*, i8** %9, align 8
  %373 = load i32, i32* %13, align 4
  %374 = load i32, i32* %12, align 4
  %375 = add nsw i32 %373, %374
  %376 = load i32, i32* @NHASH, align 4
  %377 = add i32 %375, %376
  %378 = zext i32 %377 to i64
  %379 = getelementptr inbounds i8, i8* %372, i64 %378
  %380 = load i8, i8* %379, align 1
  %381 = call i32 @hash_next(i32* %15, i8 signext %380)
  %382 = load i32, i32* %12, align 4
  %383 = add nsw i32 %382, 1
  store i32 %383, i32* %12, align 4
  br label %140

384:                                              ; preds = %348, %339
  br label %128

385:                                              ; preds = %128
  %386 = load i32, i32* %13, align 4
  %387 = load i32, i32* %10, align 4
  %388 = icmp ult i32 %386, %387
  br i1 %388, label %389, label %411

389:                                              ; preds = %385
  %390 = load i32, i32* %10, align 4
  %391 = load i32, i32* %13, align 4
  %392 = sub i32 %390, %391
  %393 = call i32 @putInt(i32 %392, i8** %11)
  %394 = load i8*, i8** %11, align 8
  %395 = getelementptr inbounds i8, i8* %394, i32 1
  store i8* %395, i8** %11, align 8
  store i8 58, i8* %394, align 1
  %396 = load i8*, i8** %11, align 8
  %397 = load i8*, i8** %9, align 8
  %398 = load i32, i32* %13, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds i8, i8* %397, i64 %399
  %401 = load i32, i32* %10, align 4
  %402 = load i32, i32* %13, align 4
  %403 = sub i32 %401, %402
  %404 = call i32 @memcpy(i8* %396, i8* %400, i32 %403)
  %405 = load i32, i32* %10, align 4
  %406 = load i32, i32* %13, align 4
  %407 = sub i32 %405, %406
  %408 = load i8*, i8** %11, align 8
  %409 = zext i32 %407 to i64
  %410 = getelementptr inbounds i8, i8* %408, i64 %409
  store i8* %410, i8** %11, align 8
  br label %411

411:                                              ; preds = %389, %385
  %412 = load i8*, i8** %9, align 8
  %413 = load i32, i32* %10, align 4
  %414 = call i32 @checksum(i8* %412, i32 %413)
  %415 = call i32 @putInt(i32 %414, i8** %11)
  %416 = load i8*, i8** %11, align 8
  %417 = getelementptr inbounds i8, i8* %416, i32 1
  store i8* %417, i8** %11, align 8
  store i8 59, i8* %416, align 1
  %418 = load i32*, i32** %18, align 8
  %419 = call i32 @sqlite3_free(i32* %418)
  %420 = load i8*, i8** %11, align 8
  %421 = load i8*, i8** %14, align 8
  %422 = ptrtoint i8* %420 to i64
  %423 = ptrtoint i8* %421 to i64
  %424 = sub i64 %422, %423
  %425 = trunc i64 %424 to i32
  store i32 %425, i32* %6, align 4
  br label %426

426:                                              ; preds = %411, %45
  %427 = load i32, i32* %6, align 4
  ret i32 %427
}

declare dso_local i32 @putInt(i32, i8**) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @checksum(i8*, i32) #1

declare dso_local i32* @sqlite3_malloc64(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @hash_once(i8*) #1

declare dso_local i32 @hash_init(i32*, i8*) #1

declare dso_local i32 @hash_32bit(i32*) #1

declare dso_local i32 @digit_count(i32) #1

declare dso_local i32 @hash_next(i32*, i8 signext) #1

declare dso_local i32 @sqlite3_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
