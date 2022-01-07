; ModuleID = '/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_markdown.c_is_ref.c'
source_filename = "/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_markdown.c_is_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_ref = type { i8*, i8* }

@.str = private unnamed_addr constant [3 x i8] c"\09 \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i64, i64*, %struct.link_ref**)* @is_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_ref(i8* %0, i64 %1, i64 %2, i64* %3, %struct.link_ref** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca %struct.link_ref**, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.link_ref*, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store %struct.link_ref** %4, %struct.link_ref*** %11, align 8
  store i64 0, i64* %12, align 8
  %21 = load i64, i64* %8, align 8
  %22 = add i64 %21, 3
  %23 = load i64, i64* %9, align 8
  %24 = icmp uge i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %589

26:                                               ; preds = %5
  %27 = load i8*, i8** %7, align 8
  %28 = load i64, i64* %8, align 8
  %29 = getelementptr inbounds i8, i8* %27, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 32
  br i1 %32, label %33, label %61

33:                                               ; preds = %26
  store i64 1, i64* %12, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = load i64, i64* %8, align 8
  %36 = add i64 %35, 1
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 32
  br i1 %40, label %41, label %60

41:                                               ; preds = %33
  store i64 2, i64* %12, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = load i64, i64* %8, align 8
  %44 = add i64 %43, 2
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 32
  br i1 %48, label %49, label %59

49:                                               ; preds = %41
  store i64 3, i64* %12, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = load i64, i64* %8, align 8
  %52 = add i64 %51, 3
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 32
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  store i32 0, i32* %6, align 4
  br label %589

58:                                               ; preds = %49
  br label %59

59:                                               ; preds = %58, %41
  br label %60

60:                                               ; preds = %59, %33
  br label %61

61:                                               ; preds = %60, %26
  %62 = load i64, i64* %8, align 8
  %63 = load i64, i64* %12, align 8
  %64 = add i64 %63, %62
  store i64 %64, i64* %12, align 8
  %65 = load i8*, i8** %7, align 8
  %66 = load i64, i64* %12, align 8
  %67 = getelementptr inbounds i8, i8* %65, i64 %66
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp ne i32 %69, 91
  br i1 %70, label %71, label %72

71:                                               ; preds = %61
  store i32 0, i32* %6, align 4
  br label %589

72:                                               ; preds = %61
  %73 = load i64, i64* %12, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %12, align 8
  %75 = load i64, i64* %12, align 8
  store i64 %75, i64* %13, align 8
  br label %76

76:                                               ; preds = %103, %72
  %77 = load i64, i64* %12, align 8
  %78 = load i64, i64* %9, align 8
  %79 = icmp ult i64 %77, %78
  br i1 %79, label %80, label %101

80:                                               ; preds = %76
  %81 = load i8*, i8** %7, align 8
  %82 = load i64, i64* %12, align 8
  %83 = getelementptr inbounds i8, i8* %81, i64 %82
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp ne i32 %85, 10
  br i1 %86, label %87, label %101

87:                                               ; preds = %80
  %88 = load i8*, i8** %7, align 8
  %89 = load i64, i64* %12, align 8
  %90 = getelementptr inbounds i8, i8* %88, i64 %89
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp ne i32 %92, 13
  br i1 %93, label %94, label %101

94:                                               ; preds = %87
  %95 = load i8*, i8** %7, align 8
  %96 = load i64, i64* %12, align 8
  %97 = getelementptr inbounds i8, i8* %95, i64 %96
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp ne i32 %99, 93
  br label %101

101:                                              ; preds = %94, %87, %80, %76
  %102 = phi i1 [ false, %87 ], [ false, %80 ], [ false, %76 ], [ %100, %94 ]
  br i1 %102, label %103, label %106

103:                                              ; preds = %101
  %104 = load i64, i64* %12, align 8
  %105 = add i64 %104, 1
  store i64 %105, i64* %12, align 8
  br label %76

106:                                              ; preds = %101
  %107 = load i64, i64* %12, align 8
  %108 = load i64, i64* %9, align 8
  %109 = icmp uge i64 %107, %108
  br i1 %109, label %117, label %110

110:                                              ; preds = %106
  %111 = load i8*, i8** %7, align 8
  %112 = load i64, i64* %12, align 8
  %113 = getelementptr inbounds i8, i8* %111, i64 %112
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp ne i32 %115, 93
  br i1 %116, label %117, label %118

117:                                              ; preds = %110, %106
  store i32 0, i32* %6, align 4
  br label %589

118:                                              ; preds = %110
  %119 = load i64, i64* %12, align 8
  store i64 %119, i64* %14, align 8
  %120 = load i64, i64* %12, align 8
  %121 = add i64 %120, 1
  store i64 %121, i64* %12, align 8
  %122 = load i64, i64* %12, align 8
  %123 = load i64, i64* %9, align 8
  %124 = icmp uge i64 %122, %123
  br i1 %124, label %132, label %125

125:                                              ; preds = %118
  %126 = load i8*, i8** %7, align 8
  %127 = load i64, i64* %12, align 8
  %128 = getelementptr inbounds i8, i8* %126, i64 %127
  %129 = load i8, i8* %128, align 1
  %130 = sext i8 %129 to i32
  %131 = icmp ne i32 %130, 58
  br i1 %131, label %132, label %133

132:                                              ; preds = %125, %118
  store i32 0, i32* %6, align 4
  br label %589

133:                                              ; preds = %125
  %134 = load i64, i64* %12, align 8
  %135 = add i64 %134, 1
  store i64 %135, i64* %12, align 8
  br label %136

136:                                              ; preds = %149, %133
  %137 = load i64, i64* %12, align 8
  %138 = load i64, i64* %9, align 8
  %139 = icmp ult i64 %137, %138
  br i1 %139, label %140, label %147

140:                                              ; preds = %136
  %141 = load i8*, i8** %7, align 8
  %142 = load i64, i64* %12, align 8
  %143 = getelementptr inbounds i8, i8* %141, i64 %142
  %144 = load i8, i8* %143, align 1
  %145 = call i64 @strchr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8 signext %144)
  %146 = icmp ne i64 %145, 0
  br label %147

147:                                              ; preds = %140, %136
  %148 = phi i1 [ false, %136 ], [ %146, %140 ]
  br i1 %148, label %149, label %152

149:                                              ; preds = %147
  %150 = load i64, i64* %12, align 8
  %151 = add i64 %150, 1
  store i64 %151, i64* %12, align 8
  br label %136

152:                                              ; preds = %147
  %153 = load i64, i64* %12, align 8
  %154 = load i64, i64* %9, align 8
  %155 = icmp ult i64 %153, %154
  br i1 %155, label %156, label %195

156:                                              ; preds = %152
  %157 = load i8*, i8** %7, align 8
  %158 = load i64, i64* %12, align 8
  %159 = getelementptr inbounds i8, i8* %157, i64 %158
  %160 = load i8, i8* %159, align 1
  %161 = sext i8 %160 to i32
  %162 = icmp eq i32 %161, 10
  br i1 %162, label %170, label %163

163:                                              ; preds = %156
  %164 = load i8*, i8** %7, align 8
  %165 = load i64, i64* %12, align 8
  %166 = getelementptr inbounds i8, i8* %164, i64 %165
  %167 = load i8, i8* %166, align 1
  %168 = sext i8 %167 to i32
  %169 = icmp eq i32 %168, 13
  br i1 %169, label %170, label %195

170:                                              ; preds = %163, %156
  %171 = load i64, i64* %12, align 8
  %172 = add i64 %171, 1
  store i64 %172, i64* %12, align 8
  %173 = load i64, i64* %12, align 8
  %174 = load i64, i64* %9, align 8
  %175 = icmp ult i64 %173, %174
  br i1 %175, label %176, label %194

176:                                              ; preds = %170
  %177 = load i8*, i8** %7, align 8
  %178 = load i64, i64* %12, align 8
  %179 = getelementptr inbounds i8, i8* %177, i64 %178
  %180 = load i8, i8* %179, align 1
  %181 = sext i8 %180 to i32
  %182 = icmp eq i32 %181, 13
  br i1 %182, label %183, label %194

183:                                              ; preds = %176
  %184 = load i8*, i8** %7, align 8
  %185 = load i64, i64* %12, align 8
  %186 = sub i64 %185, 1
  %187 = getelementptr inbounds i8, i8* %184, i64 %186
  %188 = load i8, i8* %187, align 1
  %189 = sext i8 %188 to i32
  %190 = icmp eq i32 %189, 10
  br i1 %190, label %191, label %194

191:                                              ; preds = %183
  %192 = load i64, i64* %12, align 8
  %193 = add i64 %192, 1
  store i64 %193, i64* %12, align 8
  br label %194

194:                                              ; preds = %191, %183, %176, %170
  br label %195

195:                                              ; preds = %194, %163, %152
  br label %196

196:                                              ; preds = %209, %195
  %197 = load i64, i64* %12, align 8
  %198 = load i64, i64* %9, align 8
  %199 = icmp ult i64 %197, %198
  br i1 %199, label %200, label %207

200:                                              ; preds = %196
  %201 = load i8*, i8** %7, align 8
  %202 = load i64, i64* %12, align 8
  %203 = getelementptr inbounds i8, i8* %201, i64 %202
  %204 = load i8, i8* %203, align 1
  %205 = call i64 @strchr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8 signext %204)
  %206 = icmp ne i64 %205, 0
  br label %207

207:                                              ; preds = %200, %196
  %208 = phi i1 [ false, %196 ], [ %206, %200 ]
  br i1 %208, label %209, label %212

209:                                              ; preds = %207
  %210 = load i64, i64* %12, align 8
  %211 = add i64 %210, 1
  store i64 %211, i64* %12, align 8
  br label %196

212:                                              ; preds = %207
  %213 = load i64, i64* %12, align 8
  %214 = load i64, i64* %9, align 8
  %215 = icmp uge i64 %213, %214
  br i1 %215, label %216, label %217

216:                                              ; preds = %212
  store i32 0, i32* %6, align 4
  br label %589

217:                                              ; preds = %212
  %218 = load i8*, i8** %7, align 8
  %219 = load i64, i64* %12, align 8
  %220 = getelementptr inbounds i8, i8* %218, i64 %219
  %221 = load i8, i8* %220, align 1
  %222 = sext i8 %221 to i32
  %223 = icmp eq i32 %222, 60
  br i1 %223, label %224, label %227

224:                                              ; preds = %217
  %225 = load i64, i64* %12, align 8
  %226 = add i64 %225, 1
  store i64 %226, i64* %12, align 8
  br label %227

227:                                              ; preds = %224, %217
  %228 = load i64, i64* %12, align 8
  store i64 %228, i64* %15, align 8
  br label %229

229:                                              ; preds = %256, %227
  %230 = load i64, i64* %12, align 8
  %231 = load i64, i64* %9, align 8
  %232 = icmp ult i64 %230, %231
  br i1 %232, label %233, label %254

233:                                              ; preds = %229
  %234 = load i8*, i8** %7, align 8
  %235 = load i64, i64* %12, align 8
  %236 = getelementptr inbounds i8, i8* %234, i64 %235
  %237 = load i8, i8* %236, align 1
  %238 = sext i8 %237 to i32
  %239 = icmp ne i32 %238, 32
  br i1 %239, label %240, label %254

240:                                              ; preds = %233
  %241 = load i8*, i8** %7, align 8
  %242 = load i64, i64* %12, align 8
  %243 = getelementptr inbounds i8, i8* %241, i64 %242
  %244 = load i8, i8* %243, align 1
  %245 = sext i8 %244 to i32
  %246 = icmp ne i32 %245, 10
  br i1 %246, label %247, label %254

247:                                              ; preds = %240
  %248 = load i8*, i8** %7, align 8
  %249 = load i64, i64* %12, align 8
  %250 = getelementptr inbounds i8, i8* %248, i64 %249
  %251 = load i8, i8* %250, align 1
  %252 = sext i8 %251 to i32
  %253 = icmp ne i32 %252, 13
  br label %254

254:                                              ; preds = %247, %240, %233, %229
  %255 = phi i1 [ false, %240 ], [ false, %233 ], [ false, %229 ], [ %253, %247 ]
  br i1 %255, label %256, label %259

256:                                              ; preds = %254
  %257 = load i64, i64* %12, align 8
  %258 = add i64 %257, 1
  store i64 %258, i64* %12, align 8
  br label %229

259:                                              ; preds = %254
  %260 = load i8*, i8** %7, align 8
  %261 = load i64, i64* %12, align 8
  %262 = sub i64 %261, 1
  %263 = getelementptr inbounds i8, i8* %260, i64 %262
  %264 = load i8, i8* %263, align 1
  %265 = sext i8 %264 to i32
  %266 = icmp eq i32 %265, 62
  br i1 %266, label %267, label %270

267:                                              ; preds = %259
  %268 = load i64, i64* %12, align 8
  %269 = sub i64 %268, 1
  store i64 %269, i64* %16, align 8
  br label %272

270:                                              ; preds = %259
  %271 = load i64, i64* %12, align 8
  store i64 %271, i64* %16, align 8
  br label %272

272:                                              ; preds = %270, %267
  br label %273

273:                                              ; preds = %286, %272
  %274 = load i64, i64* %12, align 8
  %275 = load i64, i64* %9, align 8
  %276 = icmp ult i64 %274, %275
  br i1 %276, label %277, label %284

277:                                              ; preds = %273
  %278 = load i8*, i8** %7, align 8
  %279 = load i64, i64* %12, align 8
  %280 = getelementptr inbounds i8, i8* %278, i64 %279
  %281 = load i8, i8* %280, align 1
  %282 = call i64 @strchr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8 signext %281)
  %283 = icmp ne i64 %282, 0
  br label %284

284:                                              ; preds = %277, %273
  %285 = phi i1 [ false, %273 ], [ %283, %277 ]
  br i1 %285, label %286, label %289

286:                                              ; preds = %284
  %287 = load i64, i64* %12, align 8
  %288 = add i64 %287, 1
  store i64 %288, i64* %12, align 8
  br label %273

289:                                              ; preds = %284
  %290 = load i64, i64* %12, align 8
  %291 = load i64, i64* %9, align 8
  %292 = icmp ult i64 %290, %291
  br i1 %292, label %293, label %329

293:                                              ; preds = %289
  %294 = load i8*, i8** %7, align 8
  %295 = load i64, i64* %12, align 8
  %296 = getelementptr inbounds i8, i8* %294, i64 %295
  %297 = load i8, i8* %296, align 1
  %298 = sext i8 %297 to i32
  %299 = icmp ne i32 %298, 10
  br i1 %299, label %300, label %329

300:                                              ; preds = %293
  %301 = load i8*, i8** %7, align 8
  %302 = load i64, i64* %12, align 8
  %303 = getelementptr inbounds i8, i8* %301, i64 %302
  %304 = load i8, i8* %303, align 1
  %305 = sext i8 %304 to i32
  %306 = icmp ne i32 %305, 13
  br i1 %306, label %307, label %329

307:                                              ; preds = %300
  %308 = load i8*, i8** %7, align 8
  %309 = load i64, i64* %12, align 8
  %310 = getelementptr inbounds i8, i8* %308, i64 %309
  %311 = load i8, i8* %310, align 1
  %312 = sext i8 %311 to i32
  %313 = icmp ne i32 %312, 39
  br i1 %313, label %314, label %329

314:                                              ; preds = %307
  %315 = load i8*, i8** %7, align 8
  %316 = load i64, i64* %12, align 8
  %317 = getelementptr inbounds i8, i8* %315, i64 %316
  %318 = load i8, i8* %317, align 1
  %319 = sext i8 %318 to i32
  %320 = icmp ne i32 %319, 34
  br i1 %320, label %321, label %329

321:                                              ; preds = %314
  %322 = load i8*, i8** %7, align 8
  %323 = load i64, i64* %12, align 8
  %324 = getelementptr inbounds i8, i8* %322, i64 %323
  %325 = load i8, i8* %324, align 1
  %326 = sext i8 %325 to i32
  %327 = icmp ne i32 %326, 40
  br i1 %327, label %328, label %329

328:                                              ; preds = %321
  store i32 0, i32* %6, align 4
  br label %589

329:                                              ; preds = %321, %314, %307, %300, %293, %289
  store i64 0, i64* %19, align 8
  %330 = load i64, i64* %12, align 8
  %331 = load i64, i64* %9, align 8
  %332 = icmp uge i64 %330, %331
  br i1 %332, label %347, label %333

333:                                              ; preds = %329
  %334 = load i8*, i8** %7, align 8
  %335 = load i64, i64* %12, align 8
  %336 = getelementptr inbounds i8, i8* %334, i64 %335
  %337 = load i8, i8* %336, align 1
  %338 = sext i8 %337 to i32
  %339 = icmp eq i32 %338, 13
  br i1 %339, label %347, label %340

340:                                              ; preds = %333
  %341 = load i8*, i8** %7, align 8
  %342 = load i64, i64* %12, align 8
  %343 = getelementptr inbounds i8, i8* %341, i64 %342
  %344 = load i8, i8* %343, align 1
  %345 = sext i8 %344 to i32
  %346 = icmp eq i32 %345, 10
  br i1 %346, label %347, label %349

347:                                              ; preds = %340, %333, %329
  %348 = load i64, i64* %12, align 8
  store i64 %348, i64* %19, align 8
  br label %349

349:                                              ; preds = %347, %340
  %350 = load i64, i64* %12, align 8
  %351 = add i64 %350, 1
  %352 = load i64, i64* %9, align 8
  %353 = icmp ult i64 %351, %352
  br i1 %353, label %354, label %372

354:                                              ; preds = %349
  %355 = load i8*, i8** %7, align 8
  %356 = load i64, i64* %12, align 8
  %357 = getelementptr inbounds i8, i8* %355, i64 %356
  %358 = load i8, i8* %357, align 1
  %359 = sext i8 %358 to i32
  %360 = icmp eq i32 %359, 10
  br i1 %360, label %361, label %372

361:                                              ; preds = %354
  %362 = load i8*, i8** %7, align 8
  %363 = load i64, i64* %12, align 8
  %364 = add i64 %363, 1
  %365 = getelementptr inbounds i8, i8* %362, i64 %364
  %366 = load i8, i8* %365, align 1
  %367 = sext i8 %366 to i32
  %368 = icmp eq i32 %367, 13
  br i1 %368, label %369, label %372

369:                                              ; preds = %361
  %370 = load i64, i64* %12, align 8
  %371 = add i64 %370, 1
  store i64 %371, i64* %19, align 8
  br label %372

372:                                              ; preds = %369, %361, %354, %349
  %373 = load i64, i64* %19, align 8
  %374 = icmp ne i64 %373, 0
  br i1 %374, label %375, label %395

375:                                              ; preds = %372
  %376 = load i64, i64* %19, align 8
  %377 = add i64 %376, 1
  store i64 %377, i64* %12, align 8
  br label %378

378:                                              ; preds = %391, %375
  %379 = load i64, i64* %12, align 8
  %380 = load i64, i64* %9, align 8
  %381 = icmp ult i64 %379, %380
  br i1 %381, label %382, label %389

382:                                              ; preds = %378
  %383 = load i8*, i8** %7, align 8
  %384 = load i64, i64* %12, align 8
  %385 = getelementptr inbounds i8, i8* %383, i64 %384
  %386 = load i8, i8* %385, align 1
  %387 = call i64 @strchr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8 signext %386)
  %388 = icmp ne i64 %387, 0
  br label %389

389:                                              ; preds = %382, %378
  %390 = phi i1 [ false, %378 ], [ %388, %382 ]
  br i1 %390, label %391, label %394

391:                                              ; preds = %389
  %392 = load i64, i64* %12, align 8
  %393 = add i64 %392, 1
  store i64 %393, i64* %12, align 8
  br label %378

394:                                              ; preds = %389
  br label %395

395:                                              ; preds = %394, %372
  store i64 0, i64* %18, align 8
  store i64 0, i64* %17, align 8
  %396 = load i64, i64* %12, align 8
  %397 = add i64 %396, 1
  %398 = load i64, i64* %9, align 8
  %399 = icmp ult i64 %397, %398
  br i1 %399, label %400, label %521

400:                                              ; preds = %395
  %401 = load i8*, i8** %7, align 8
  %402 = load i64, i64* %12, align 8
  %403 = getelementptr inbounds i8, i8* %401, i64 %402
  %404 = load i8, i8* %403, align 1
  %405 = sext i8 %404 to i32
  %406 = icmp eq i32 %405, 39
  br i1 %406, label %421, label %407

407:                                              ; preds = %400
  %408 = load i8*, i8** %7, align 8
  %409 = load i64, i64* %12, align 8
  %410 = getelementptr inbounds i8, i8* %408, i64 %409
  %411 = load i8, i8* %410, align 1
  %412 = sext i8 %411 to i32
  %413 = icmp eq i32 %412, 34
  br i1 %413, label %421, label %414

414:                                              ; preds = %407
  %415 = load i8*, i8** %7, align 8
  %416 = load i64, i64* %12, align 8
  %417 = getelementptr inbounds i8, i8* %415, i64 %416
  %418 = load i8, i8* %417, align 1
  %419 = sext i8 %418 to i32
  %420 = icmp eq i32 %419, 40
  br i1 %420, label %421, label %521

421:                                              ; preds = %414, %407, %400
  %422 = load i64, i64* %12, align 8
  %423 = add i64 %422, 1
  store i64 %423, i64* %12, align 8
  %424 = load i64, i64* %12, align 8
  store i64 %424, i64* %17, align 8
  br label %425

425:                                              ; preds = %445, %421
  %426 = load i64, i64* %12, align 8
  %427 = load i64, i64* %9, align 8
  %428 = icmp ult i64 %426, %427
  br i1 %428, label %429, label %443

429:                                              ; preds = %425
  %430 = load i8*, i8** %7, align 8
  %431 = load i64, i64* %12, align 8
  %432 = getelementptr inbounds i8, i8* %430, i64 %431
  %433 = load i8, i8* %432, align 1
  %434 = sext i8 %433 to i32
  %435 = icmp ne i32 %434, 10
  br i1 %435, label %436, label %443

436:                                              ; preds = %429
  %437 = load i8*, i8** %7, align 8
  %438 = load i64, i64* %12, align 8
  %439 = getelementptr inbounds i8, i8* %437, i64 %438
  %440 = load i8, i8* %439, align 1
  %441 = sext i8 %440 to i32
  %442 = icmp ne i32 %441, 13
  br label %443

443:                                              ; preds = %436, %429, %425
  %444 = phi i1 [ false, %429 ], [ false, %425 ], [ %442, %436 ]
  br i1 %444, label %445, label %448

445:                                              ; preds = %443
  %446 = load i64, i64* %12, align 8
  %447 = add i64 %446, 1
  store i64 %447, i64* %12, align 8
  br label %425

448:                                              ; preds = %443
  %449 = load i64, i64* %12, align 8
  %450 = add i64 %449, 1
  %451 = load i64, i64* %9, align 8
  %452 = icmp ult i64 %450, %451
  br i1 %452, label %453, label %471

453:                                              ; preds = %448
  %454 = load i8*, i8** %7, align 8
  %455 = load i64, i64* %12, align 8
  %456 = getelementptr inbounds i8, i8* %454, i64 %455
  %457 = load i8, i8* %456, align 1
  %458 = sext i8 %457 to i32
  %459 = icmp eq i32 %458, 10
  br i1 %459, label %460, label %471

460:                                              ; preds = %453
  %461 = load i8*, i8** %7, align 8
  %462 = load i64, i64* %12, align 8
  %463 = add i64 %462, 1
  %464 = getelementptr inbounds i8, i8* %461, i64 %463
  %465 = load i8, i8* %464, align 1
  %466 = sext i8 %465 to i32
  %467 = icmp eq i32 %466, 13
  br i1 %467, label %468, label %471

468:                                              ; preds = %460
  %469 = load i64, i64* %12, align 8
  %470 = add i64 %469, 1
  store i64 %470, i64* %18, align 8
  br label %473

471:                                              ; preds = %460, %453, %448
  %472 = load i64, i64* %12, align 8
  store i64 %472, i64* %18, align 8
  br label %473

473:                                              ; preds = %471, %468
  %474 = load i64, i64* %12, align 8
  %475 = sub i64 %474, 1
  store i64 %475, i64* %12, align 8
  br label %476

476:                                              ; preds = %489, %473
  %477 = load i64, i64* %12, align 8
  %478 = load i64, i64* %17, align 8
  %479 = icmp ugt i64 %477, %478
  br i1 %479, label %480, label %487

480:                                              ; preds = %476
  %481 = load i8*, i8** %7, align 8
  %482 = load i64, i64* %12, align 8
  %483 = getelementptr inbounds i8, i8* %481, i64 %482
  %484 = load i8, i8* %483, align 1
  %485 = sext i8 %484 to i32
  %486 = icmp eq i32 %485, 32
  br label %487

487:                                              ; preds = %480, %476
  %488 = phi i1 [ false, %476 ], [ %486, %480 ]
  br i1 %488, label %489, label %492

489:                                              ; preds = %487
  %490 = load i64, i64* %12, align 8
  %491 = sub i64 %490, 1
  store i64 %491, i64* %12, align 8
  br label %476

492:                                              ; preds = %487
  %493 = load i64, i64* %12, align 8
  %494 = load i64, i64* %17, align 8
  %495 = icmp ugt i64 %493, %494
  br i1 %495, label %496, label %520

496:                                              ; preds = %492
  %497 = load i8*, i8** %7, align 8
  %498 = load i64, i64* %12, align 8
  %499 = getelementptr inbounds i8, i8* %497, i64 %498
  %500 = load i8, i8* %499, align 1
  %501 = sext i8 %500 to i32
  %502 = icmp eq i32 %501, 39
  br i1 %502, label %517, label %503

503:                                              ; preds = %496
  %504 = load i8*, i8** %7, align 8
  %505 = load i64, i64* %12, align 8
  %506 = getelementptr inbounds i8, i8* %504, i64 %505
  %507 = load i8, i8* %506, align 1
  %508 = sext i8 %507 to i32
  %509 = icmp eq i32 %508, 34
  br i1 %509, label %517, label %510

510:                                              ; preds = %503
  %511 = load i8*, i8** %7, align 8
  %512 = load i64, i64* %12, align 8
  %513 = getelementptr inbounds i8, i8* %511, i64 %512
  %514 = load i8, i8* %513, align 1
  %515 = sext i8 %514 to i32
  %516 = icmp eq i32 %515, 41
  br i1 %516, label %517, label %520

517:                                              ; preds = %510, %503, %496
  %518 = load i64, i64* %18, align 8
  store i64 %518, i64* %19, align 8
  %519 = load i64, i64* %12, align 8
  store i64 %519, i64* %18, align 8
  br label %520

520:                                              ; preds = %517, %510, %492
  br label %521

521:                                              ; preds = %520, %414, %395
  %522 = load i64, i64* %19, align 8
  %523 = icmp ne i64 %522, 0
  br i1 %523, label %524, label %528

524:                                              ; preds = %521
  %525 = load i64, i64* %16, align 8
  %526 = load i64, i64* %15, align 8
  %527 = icmp eq i64 %525, %526
  br i1 %527, label %528, label %529

528:                                              ; preds = %524, %521
  store i32 0, i32* %6, align 4
  br label %589

529:                                              ; preds = %524
  %530 = load i64*, i64** %10, align 8
  %531 = icmp ne i64* %530, null
  br i1 %531, label %532, label %535

532:                                              ; preds = %529
  %533 = load i64, i64* %19, align 8
  %534 = load i64*, i64** %10, align 8
  store i64 %533, i64* %534, align 8
  br label %535

535:                                              ; preds = %532, %529
  %536 = load %struct.link_ref**, %struct.link_ref*** %11, align 8
  %537 = icmp ne %struct.link_ref** %536, null
  br i1 %537, label %538, label %588

538:                                              ; preds = %535
  %539 = load %struct.link_ref**, %struct.link_ref*** %11, align 8
  %540 = load i8*, i8** %7, align 8
  %541 = load i64, i64* %13, align 8
  %542 = getelementptr inbounds i8, i8* %540, i64 %541
  %543 = load i64, i64* %14, align 8
  %544 = load i64, i64* %13, align 8
  %545 = sub i64 %543, %544
  %546 = call %struct.link_ref* @add_link_ref(%struct.link_ref** %539, i8* %542, i64 %545)
  store %struct.link_ref* %546, %struct.link_ref** %20, align 8
  %547 = load %struct.link_ref*, %struct.link_ref** %20, align 8
  %548 = icmp ne %struct.link_ref* %547, null
  br i1 %548, label %550, label %549

549:                                              ; preds = %538
  store i32 0, i32* %6, align 4
  br label %589

550:                                              ; preds = %538
  %551 = load i64, i64* %16, align 8
  %552 = load i64, i64* %15, align 8
  %553 = sub i64 %551, %552
  %554 = call i8* @bufnew(i64 %553)
  %555 = load %struct.link_ref*, %struct.link_ref** %20, align 8
  %556 = getelementptr inbounds %struct.link_ref, %struct.link_ref* %555, i32 0, i32 1
  store i8* %554, i8** %556, align 8
  %557 = load %struct.link_ref*, %struct.link_ref** %20, align 8
  %558 = getelementptr inbounds %struct.link_ref, %struct.link_ref* %557, i32 0, i32 1
  %559 = load i8*, i8** %558, align 8
  %560 = load i8*, i8** %7, align 8
  %561 = load i64, i64* %15, align 8
  %562 = getelementptr inbounds i8, i8* %560, i64 %561
  %563 = load i64, i64* %16, align 8
  %564 = load i64, i64* %15, align 8
  %565 = sub i64 %563, %564
  %566 = call i32 @bufput(i8* %559, i8* %562, i64 %565)
  %567 = load i64, i64* %18, align 8
  %568 = load i64, i64* %17, align 8
  %569 = icmp ugt i64 %567, %568
  br i1 %569, label %570, label %587

570:                                              ; preds = %550
  %571 = load i64, i64* %18, align 8
  %572 = load i64, i64* %17, align 8
  %573 = sub i64 %571, %572
  %574 = call i8* @bufnew(i64 %573)
  %575 = load %struct.link_ref*, %struct.link_ref** %20, align 8
  %576 = getelementptr inbounds %struct.link_ref, %struct.link_ref* %575, i32 0, i32 0
  store i8* %574, i8** %576, align 8
  %577 = load %struct.link_ref*, %struct.link_ref** %20, align 8
  %578 = getelementptr inbounds %struct.link_ref, %struct.link_ref* %577, i32 0, i32 0
  %579 = load i8*, i8** %578, align 8
  %580 = load i8*, i8** %7, align 8
  %581 = load i64, i64* %17, align 8
  %582 = getelementptr inbounds i8, i8* %580, i64 %581
  %583 = load i64, i64* %18, align 8
  %584 = load i64, i64* %17, align 8
  %585 = sub i64 %583, %584
  %586 = call i32 @bufput(i8* %579, i8* %582, i64 %585)
  br label %587

587:                                              ; preds = %570, %550
  br label %588

588:                                              ; preds = %587, %535
  store i32 1, i32* %6, align 4
  br label %589

589:                                              ; preds = %588, %549, %528, %328, %216, %132, %117, %71, %57, %25
  %590 = load i32, i32* %6, align 4
  ret i32 %590
}

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local %struct.link_ref* @add_link_ref(%struct.link_ref**, i8*, i64) #1

declare dso_local i8* @bufnew(i64) #1

declare dso_local i32 @bufput(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
