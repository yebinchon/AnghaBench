; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_sqldiff.c_rbuDeltaCreate.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_sqldiff.c_rbuDeltaCreate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NHASH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i32, i8*)* @rbuDeltaCreate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rbuDeltaCreate(i8* %0, i32 %1, i8* %2, i32 %3, i8* %4) #0 {
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
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %36 = load i8*, i8** %11, align 8
  store i8* %36, i8** %14, align 8
  store i32 -1, i32* %19, align 4
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @putInt(i32 %37, i8** %11)
  %39 = load i8*, i8** %11, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %11, align 8
  store i8 10, i8* %39, align 1
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @NHASH, align 4
  %43 = icmp ule i32 %41, %42
  br i1 %43, label %44, label %69

44:                                               ; preds = %5
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @putInt(i32 %45, i8** %11)
  %47 = load i8*, i8** %11, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %11, align 8
  store i8 58, i8* %47, align 1
  %49 = load i8*, i8** %11, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @memcpy(i8* %49, i8* %50, i32 %51)
  %53 = load i32, i32* %10, align 4
  %54 = load i8*, i8** %11, align 8
  %55 = zext i32 %53 to i64
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  store i8* %56, i8** %11, align 8
  %57 = load i8*, i8** %9, align 8
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @checksum(i8* %57, i32 %58)
  %60 = call i32 @putInt(i32 %59, i8** %11)
  %61 = load i8*, i8** %11, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %11, align 8
  store i8 59, i8* %61, align 1
  %63 = load i8*, i8** %11, align 8
  %64 = load i8*, i8** %14, align 8
  %65 = ptrtoint i8* %63 to i64
  %66 = ptrtoint i8* %64 to i64
  %67 = sub i64 %65, %66
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %6, align 4
  br label %420

69:                                               ; preds = %5
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @NHASH, align 4
  %72 = udiv i32 %70, %71
  store i32 %72, i32* %16, align 4
  %73 = load i32, i32* %16, align 4
  %74 = mul nsw i32 %73, 2
  %75 = sext i32 %74 to i64
  %76 = mul i64 %75, 4
  %77 = trunc i64 %76 to i32
  %78 = call i32* @sqlite3_malloc(i32 %77)
  store i32* %78, i32** %18, align 8
  %79 = load i32*, i32** %18, align 8
  %80 = load i32, i32* %16, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  store i32* %82, i32** %17, align 8
  %83 = load i32*, i32** %17, align 8
  %84 = load i32, i32* %16, align 4
  %85 = sext i32 %84 to i64
  %86 = mul i64 %85, 4
  %87 = trunc i64 %86 to i32
  %88 = call i32 @memset(i32* %83, i32 -1, i32 %87)
  %89 = load i32*, i32** %18, align 8
  %90 = load i32, i32* %16, align 4
  %91 = sext i32 %90 to i64
  %92 = mul i64 %91, 4
  %93 = trunc i64 %92 to i32
  %94 = call i32 @memset(i32* %89, i32 -1, i32 %93)
  store i32 0, i32* %12, align 4
  br label %95

95:                                               ; preds = %128, %69
  %96 = load i32, i32* %12, align 4
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* @NHASH, align 4
  %99 = sub i32 %97, %98
  %100 = icmp ult i32 %96, %99
  br i1 %100, label %101, label %132

101:                                              ; preds = %95
  %102 = load i8*, i8** %7, align 8
  %103 = load i32, i32* %12, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %102, i64 %104
  %106 = call i32 @hash_init(i32* %15, i8* %105)
  %107 = call i32 @hash_32bit(i32* %15)
  %108 = load i32, i32* %16, align 4
  %109 = srem i32 %107, %108
  store i32 %109, i32* %20, align 4
  %110 = load i32*, i32** %17, align 8
  %111 = load i32, i32* %20, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = load i32*, i32** %18, align 8
  %116 = load i32, i32* %12, align 4
  %117 = load i32, i32* @NHASH, align 4
  %118 = udiv i32 %116, %117
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %115, i64 %119
  store i32 %114, i32* %120, align 4
  %121 = load i32, i32* %12, align 4
  %122 = load i32, i32* @NHASH, align 4
  %123 = udiv i32 %121, %122
  %124 = load i32*, i32** %17, align 8
  %125 = load i32, i32* %20, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  store i32 %123, i32* %127, align 4
  br label %128

128:                                              ; preds = %101
  %129 = load i32, i32* @NHASH, align 4
  %130 = load i32, i32* %12, align 4
  %131 = add i32 %130, %129
  store i32 %131, i32* %12, align 4
  br label %95

132:                                              ; preds = %95
  store i32 0, i32* %13, align 4
  br label %133

133:                                              ; preds = %378, %132
  %134 = load i32, i32* %13, align 4
  %135 = load i32, i32* @NHASH, align 4
  %136 = add i32 %134, %135
  %137 = load i32, i32* %10, align 4
  %138 = icmp ult i32 %136, %137
  br i1 %138, label %139, label %379

139:                                              ; preds = %133
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  %140 = load i8*, i8** %9, align 8
  %141 = load i32, i32* %13, align 4
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds i8, i8* %140, i64 %142
  %144 = call i32 @hash_init(i32* %15, i8* %143)
  store i32 0, i32* %12, align 4
  store i32 0, i32* %23, align 4
  br label %145

145:                                              ; preds = %139, %365
  store i32 250, i32* %27, align 4
  %146 = call i32 @hash_32bit(i32* %15)
  %147 = load i32, i32* %16, align 4
  %148 = srem i32 %146, %147
  store i32 %148, i32* %26, align 4
  %149 = load i32*, i32** %17, align 8
  %150 = load i32, i32* %26, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = load i32, i32* %152, align 4
  store i32 %153, i32* %22, align 4
  br label %154

154:                                              ; preds = %279, %145
  %155 = load i32, i32* %22, align 4
  %156 = icmp sge i32 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %154
  %158 = load i32, i32* %27, align 4
  %159 = add nsw i32 %158, -1
  store i32 %159, i32* %27, align 4
  %160 = icmp sgt i32 %158, 0
  br label %161

161:                                              ; preds = %157, %154
  %162 = phi i1 [ false, %154 ], [ %160, %157 ]
  br i1 %162, label %163, label %285

163:                                              ; preds = %161
  %164 = load i32, i32* %22, align 4
  %165 = load i32, i32* @NHASH, align 4
  %166 = mul i32 %164, %165
  store i32 %166, i32* %21, align 4
  store i32 0, i32* %31, align 4
  %167 = load i32, i32* %21, align 4
  store i32 %167, i32* %33, align 4
  %168 = load i32, i32* %13, align 4
  %169 = load i32, i32* %12, align 4
  %170 = add i32 %168, %169
  store i32 %170, i32* %34, align 4
  br label %171

171:                                              ; preds = %197, %163
  %172 = load i32, i32* %33, align 4
  %173 = load i32, i32* %8, align 4
  %174 = icmp ult i32 %172, %173
  br i1 %174, label %175, label %179

175:                                              ; preds = %171
  %176 = load i32, i32* %34, align 4
  %177 = load i32, i32* %10, align 4
  %178 = icmp ult i32 %176, %177
  br label %179

179:                                              ; preds = %175, %171
  %180 = phi i1 [ false, %171 ], [ %178, %175 ]
  br i1 %180, label %181, label %204

181:                                              ; preds = %179
  %182 = load i8*, i8** %7, align 8
  %183 = load i32, i32* %33, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i8, i8* %182, i64 %184
  %186 = load i8, i8* %185, align 1
  %187 = sext i8 %186 to i32
  %188 = load i8*, i8** %9, align 8
  %189 = load i32, i32* %34, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i8, i8* %188, i64 %190
  %192 = load i8, i8* %191, align 1
  %193 = sext i8 %192 to i32
  %194 = icmp ne i32 %187, %193
  br i1 %194, label %195, label %196

195:                                              ; preds = %181
  br label %204

196:                                              ; preds = %181
  br label %197

197:                                              ; preds = %196
  %198 = load i32, i32* %31, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %31, align 4
  %200 = load i32, i32* %33, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %33, align 4
  %202 = load i32, i32* %34, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %34, align 4
  br label %171

204:                                              ; preds = %195, %179
  %205 = load i32, i32* %31, align 4
  %206 = add nsw i32 %205, -1
  store i32 %206, i32* %31, align 4
  store i32 1, i32* %32, align 4
  br label %207

207:                                              ; preds = %239, %204
  %208 = load i32, i32* %32, align 4
  %209 = load i32, i32* %21, align 4
  %210 = icmp slt i32 %208, %209
  br i1 %210, label %211, label %215

211:                                              ; preds = %207
  %212 = load i32, i32* %32, align 4
  %213 = load i32, i32* %12, align 4
  %214 = icmp ule i32 %212, %213
  br label %215

215:                                              ; preds = %211, %207
  %216 = phi i1 [ false, %207 ], [ %214, %211 ]
  br i1 %216, label %217, label %242

217:                                              ; preds = %215
  %218 = load i8*, i8** %7, align 8
  %219 = load i32, i32* %21, align 4
  %220 = load i32, i32* %32, align 4
  %221 = sub nsw i32 %219, %220
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i8, i8* %218, i64 %222
  %224 = load i8, i8* %223, align 1
  %225 = sext i8 %224 to i32
  %226 = load i8*, i8** %9, align 8
  %227 = load i32, i32* %13, align 4
  %228 = load i32, i32* %12, align 4
  %229 = add i32 %227, %228
  %230 = load i32, i32* %32, align 4
  %231 = sub i32 %229, %230
  %232 = zext i32 %231 to i64
  %233 = getelementptr inbounds i8, i8* %226, i64 %232
  %234 = load i8, i8* %233, align 1
  %235 = sext i8 %234 to i32
  %236 = icmp ne i32 %225, %235
  br i1 %236, label %237, label %238

237:                                              ; preds = %217
  br label %242

238:                                              ; preds = %217
  br label %239

239:                                              ; preds = %238
  %240 = load i32, i32* %32, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %32, align 4
  br label %207

242:                                              ; preds = %237, %215
  %243 = load i32, i32* %32, align 4
  %244 = add nsw i32 %243, -1
  store i32 %244, i32* %32, align 4
  %245 = load i32, i32* %21, align 4
  %246 = load i32, i32* %32, align 4
  %247 = sub nsw i32 %245, %246
  store i32 %247, i32* %29, align 4
  %248 = load i32, i32* %31, align 4
  %249 = load i32, i32* %32, align 4
  %250 = add nsw i32 %248, %249
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %28, align 4
  %252 = load i32, i32* %12, align 4
  %253 = load i32, i32* %32, align 4
  %254 = sub i32 %252, %253
  store i32 %254, i32* %30, align 4
  %255 = load i32, i32* %12, align 4
  %256 = load i32, i32* %32, align 4
  %257 = sub i32 %255, %256
  %258 = call i32 @digit_count(i32 %257)
  %259 = load i32, i32* %28, align 4
  %260 = call i32 @digit_count(i32 %259)
  %261 = add nsw i32 %258, %260
  %262 = load i32, i32* %29, align 4
  %263 = call i32 @digit_count(i32 %262)
  %264 = add nsw i32 %261, %263
  %265 = add nsw i32 %264, 3
  store i32 %265, i32* %35, align 4
  %266 = load i32, i32* %28, align 4
  %267 = load i32, i32* %35, align 4
  %268 = icmp sge i32 %266, %267
  br i1 %268, label %269, label %279

269:                                              ; preds = %242
  %270 = load i32, i32* %28, align 4
  %271 = load i32, i32* %23, align 4
  %272 = icmp sgt i32 %270, %271
  br i1 %272, label %273, label %279

273:                                              ; preds = %269
  %274 = load i32, i32* %28, align 4
  store i32 %274, i32* %23, align 4
  %275 = load i32, i32* %21, align 4
  %276 = load i32, i32* %32, align 4
  %277 = sub nsw i32 %275, %276
  store i32 %277, i32* %24, align 4
  %278 = load i32, i32* %30, align 4
  store i32 %278, i32* %25, align 4
  br label %279

279:                                              ; preds = %273, %269, %242
  %280 = load i32*, i32** %18, align 8
  %281 = load i32, i32* %22, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i32, i32* %280, i64 %282
  %284 = load i32, i32* %283, align 4
  store i32 %284, i32* %22, align 4
  br label %154

285:                                              ; preds = %161
  %286 = load i32, i32* %23, align 4
  %287 = icmp sgt i32 %286, 0
  br i1 %287, label %288, label %334

288:                                              ; preds = %285
  %289 = load i32, i32* %25, align 4
  %290 = icmp sgt i32 %289, 0
  br i1 %290, label %291, label %310

291:                                              ; preds = %288
  %292 = load i32, i32* %25, align 4
  %293 = call i32 @putInt(i32 %292, i8** %11)
  %294 = load i8*, i8** %11, align 8
  %295 = getelementptr inbounds i8, i8* %294, i32 1
  store i8* %295, i8** %11, align 8
  store i8 58, i8* %294, align 1
  %296 = load i8*, i8** %11, align 8
  %297 = load i8*, i8** %9, align 8
  %298 = load i32, i32* %13, align 4
  %299 = zext i32 %298 to i64
  %300 = getelementptr inbounds i8, i8* %297, i64 %299
  %301 = load i32, i32* %25, align 4
  %302 = call i32 @memcpy(i8* %296, i8* %300, i32 %301)
  %303 = load i32, i32* %25, align 4
  %304 = load i8*, i8** %11, align 8
  %305 = sext i32 %303 to i64
  %306 = getelementptr inbounds i8, i8* %304, i64 %305
  store i8* %306, i8** %11, align 8
  %307 = load i32, i32* %25, align 4
  %308 = load i32, i32* %13, align 4
  %309 = add i32 %308, %307
  store i32 %309, i32* %13, align 4
  br label %310

310:                                              ; preds = %291, %288
  %311 = load i32, i32* %23, align 4
  %312 = load i32, i32* %13, align 4
  %313 = add i32 %312, %311
  store i32 %313, i32* %13, align 4
  %314 = load i32, i32* %23, align 4
  %315 = call i32 @putInt(i32 %314, i8** %11)
  %316 = load i8*, i8** %11, align 8
  %317 = getelementptr inbounds i8, i8* %316, i32 1
  store i8* %317, i8** %11, align 8
  store i8 64, i8* %316, align 1
  %318 = load i32, i32* %24, align 4
  %319 = call i32 @putInt(i32 %318, i8** %11)
  %320 = load i8*, i8** %11, align 8
  %321 = getelementptr inbounds i8, i8* %320, i32 1
  store i8* %321, i8** %11, align 8
  store i8 44, i8* %320, align 1
  %322 = load i32, i32* %24, align 4
  %323 = load i32, i32* %23, align 4
  %324 = add nsw i32 %322, %323
  %325 = sub nsw i32 %324, 1
  %326 = load i32, i32* %19, align 4
  %327 = icmp sgt i32 %325, %326
  br i1 %327, label %328, label %333

328:                                              ; preds = %310
  %329 = load i32, i32* %24, align 4
  %330 = load i32, i32* %23, align 4
  %331 = add nsw i32 %329, %330
  %332 = sub nsw i32 %331, 1
  store i32 %332, i32* %19, align 4
  br label %333

333:                                              ; preds = %328, %310
  store i32 0, i32* %23, align 4
  br label %378

334:                                              ; preds = %285
  %335 = load i32, i32* %13, align 4
  %336 = load i32, i32* %12, align 4
  %337 = add i32 %335, %336
  %338 = load i32, i32* @NHASH, align 4
  %339 = add i32 %337, %338
  %340 = load i32, i32* %10, align 4
  %341 = icmp uge i32 %339, %340
  br i1 %341, label %342, label %365

342:                                              ; preds = %334
  %343 = load i32, i32* %10, align 4
  %344 = load i32, i32* %13, align 4
  %345 = sub i32 %343, %344
  %346 = call i32 @putInt(i32 %345, i8** %11)
  %347 = load i8*, i8** %11, align 8
  %348 = getelementptr inbounds i8, i8* %347, i32 1
  store i8* %348, i8** %11, align 8
  store i8 58, i8* %347, align 1
  %349 = load i8*, i8** %11, align 8
  %350 = load i8*, i8** %9, align 8
  %351 = load i32, i32* %13, align 4
  %352 = zext i32 %351 to i64
  %353 = getelementptr inbounds i8, i8* %350, i64 %352
  %354 = load i32, i32* %10, align 4
  %355 = load i32, i32* %13, align 4
  %356 = sub i32 %354, %355
  %357 = call i32 @memcpy(i8* %349, i8* %353, i32 %356)
  %358 = load i32, i32* %10, align 4
  %359 = load i32, i32* %13, align 4
  %360 = sub i32 %358, %359
  %361 = load i8*, i8** %11, align 8
  %362 = zext i32 %360 to i64
  %363 = getelementptr inbounds i8, i8* %361, i64 %362
  store i8* %363, i8** %11, align 8
  %364 = load i32, i32* %10, align 4
  store i32 %364, i32* %13, align 4
  br label %378

365:                                              ; preds = %334
  %366 = load i8*, i8** %9, align 8
  %367 = load i32, i32* %13, align 4
  %368 = load i32, i32* %12, align 4
  %369 = add i32 %367, %368
  %370 = load i32, i32* @NHASH, align 4
  %371 = add i32 %369, %370
  %372 = zext i32 %371 to i64
  %373 = getelementptr inbounds i8, i8* %366, i64 %372
  %374 = load i8, i8* %373, align 1
  %375 = call i32 @hash_next(i32* %15, i8 signext %374)
  %376 = load i32, i32* %12, align 4
  %377 = add i32 %376, 1
  store i32 %377, i32* %12, align 4
  br label %145

378:                                              ; preds = %342, %333
  br label %133

379:                                              ; preds = %133
  %380 = load i32, i32* %13, align 4
  %381 = load i32, i32* %10, align 4
  %382 = icmp ult i32 %380, %381
  br i1 %382, label %383, label %405

383:                                              ; preds = %379
  %384 = load i32, i32* %10, align 4
  %385 = load i32, i32* %13, align 4
  %386 = sub i32 %384, %385
  %387 = call i32 @putInt(i32 %386, i8** %11)
  %388 = load i8*, i8** %11, align 8
  %389 = getelementptr inbounds i8, i8* %388, i32 1
  store i8* %389, i8** %11, align 8
  store i8 58, i8* %388, align 1
  %390 = load i8*, i8** %11, align 8
  %391 = load i8*, i8** %9, align 8
  %392 = load i32, i32* %13, align 4
  %393 = zext i32 %392 to i64
  %394 = getelementptr inbounds i8, i8* %391, i64 %393
  %395 = load i32, i32* %10, align 4
  %396 = load i32, i32* %13, align 4
  %397 = sub i32 %395, %396
  %398 = call i32 @memcpy(i8* %390, i8* %394, i32 %397)
  %399 = load i32, i32* %10, align 4
  %400 = load i32, i32* %13, align 4
  %401 = sub i32 %399, %400
  %402 = load i8*, i8** %11, align 8
  %403 = zext i32 %401 to i64
  %404 = getelementptr inbounds i8, i8* %402, i64 %403
  store i8* %404, i8** %11, align 8
  br label %405

405:                                              ; preds = %383, %379
  %406 = load i8*, i8** %9, align 8
  %407 = load i32, i32* %10, align 4
  %408 = call i32 @checksum(i8* %406, i32 %407)
  %409 = call i32 @putInt(i32 %408, i8** %11)
  %410 = load i8*, i8** %11, align 8
  %411 = getelementptr inbounds i8, i8* %410, i32 1
  store i8* %411, i8** %11, align 8
  store i8 59, i8* %410, align 1
  %412 = load i32*, i32** %18, align 8
  %413 = call i32 @sqlite3_free(i32* %412)
  %414 = load i8*, i8** %11, align 8
  %415 = load i8*, i8** %14, align 8
  %416 = ptrtoint i8* %414 to i64
  %417 = ptrtoint i8* %415 to i64
  %418 = sub i64 %416, %417
  %419 = trunc i64 %418 to i32
  store i32 %419, i32* %6, align 4
  br label %420

420:                                              ; preds = %405, %44
  %421 = load i32, i32* %6, align 4
  ret i32 %421
}

declare dso_local i32 @putInt(i32, i8**) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @checksum(i8*, i32) #1

declare dso_local i32* @sqlite3_malloc(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

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
