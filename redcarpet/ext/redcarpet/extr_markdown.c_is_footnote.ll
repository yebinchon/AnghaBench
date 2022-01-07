; ModuleID = '/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_markdown.c_is_footnote.c'
source_filename = "/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_markdown.c_is_footnote.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.footnote_list = type { i32 }
%struct.buf = type { i32 }
%struct.footnote_ref = type { %struct.buf* }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i64, i64*, %struct.footnote_list*)* @is_footnote to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_footnote(i8* %0, i64 %1, i64 %2, i64* %3, %struct.footnote_list* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca %struct.footnote_list*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.buf*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.footnote_ref*, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store %struct.footnote_list* %4, %struct.footnote_list** %11, align 8
  store i64 0, i64* %12, align 8
  store %struct.buf* null, %struct.buf** %13, align 8
  store i64 0, i64* %14, align 8
  store i32 0, i32* %15, align 4
  store i64 0, i64* %16, align 8
  %20 = load i64, i64* %8, align 8
  %21 = add i64 %20, 3
  %22 = load i64, i64* %9, align 8
  %23 = icmp uge i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %381

25:                                               ; preds = %5
  %26 = load i8*, i8** %7, align 8
  %27 = load i64, i64* %8, align 8
  %28 = getelementptr inbounds i8, i8* %26, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 32
  br i1 %31, label %32, label %60

32:                                               ; preds = %25
  store i64 1, i64* %12, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = load i64, i64* %8, align 8
  %35 = add i64 %34, 1
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 32
  br i1 %39, label %40, label %59

40:                                               ; preds = %32
  store i64 2, i64* %12, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = load i64, i64* %8, align 8
  %43 = add i64 %42, 2
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 32
  br i1 %47, label %48, label %58

48:                                               ; preds = %40
  store i64 3, i64* %12, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = load i64, i64* %8, align 8
  %51 = add i64 %50, 3
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 32
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  store i32 0, i32* %6, align 4
  br label %381

57:                                               ; preds = %48
  br label %58

58:                                               ; preds = %57, %40
  br label %59

59:                                               ; preds = %58, %32
  br label %60

60:                                               ; preds = %59, %25
  %61 = load i64, i64* %8, align 8
  %62 = load i64, i64* %12, align 8
  %63 = add i64 %62, %61
  store i64 %63, i64* %12, align 8
  %64 = load i8*, i8** %7, align 8
  %65 = load i64, i64* %12, align 8
  %66 = getelementptr inbounds i8, i8* %64, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp ne i32 %68, 91
  br i1 %69, label %70, label %71

70:                                               ; preds = %60
  store i32 0, i32* %6, align 4
  br label %381

71:                                               ; preds = %60
  %72 = load i64, i64* %12, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %12, align 8
  %74 = load i64, i64* %12, align 8
  %75 = load i64, i64* %9, align 8
  %76 = icmp uge i64 %74, %75
  br i1 %76, label %84, label %77

77:                                               ; preds = %71
  %78 = load i8*, i8** %7, align 8
  %79 = load i64, i64* %12, align 8
  %80 = getelementptr inbounds i8, i8* %78, i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp ne i32 %82, 94
  br i1 %83, label %84, label %85

84:                                               ; preds = %77, %71
  store i32 0, i32* %6, align 4
  br label %381

85:                                               ; preds = %77
  %86 = load i64, i64* %12, align 8
  %87 = add i64 %86, 1
  store i64 %87, i64* %12, align 8
  %88 = load i64, i64* %12, align 8
  store i64 %88, i64* %17, align 8
  br label %89

89:                                               ; preds = %116, %85
  %90 = load i64, i64* %12, align 8
  %91 = load i64, i64* %9, align 8
  %92 = icmp ult i64 %90, %91
  br i1 %92, label %93, label %114

93:                                               ; preds = %89
  %94 = load i8*, i8** %7, align 8
  %95 = load i64, i64* %12, align 8
  %96 = getelementptr inbounds i8, i8* %94, i64 %95
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp ne i32 %98, 10
  br i1 %99, label %100, label %114

100:                                              ; preds = %93
  %101 = load i8*, i8** %7, align 8
  %102 = load i64, i64* %12, align 8
  %103 = getelementptr inbounds i8, i8* %101, i64 %102
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp ne i32 %105, 13
  br i1 %106, label %107, label %114

107:                                              ; preds = %100
  %108 = load i8*, i8** %7, align 8
  %109 = load i64, i64* %12, align 8
  %110 = getelementptr inbounds i8, i8* %108, i64 %109
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp ne i32 %112, 93
  br label %114

114:                                              ; preds = %107, %100, %93, %89
  %115 = phi i1 [ false, %100 ], [ false, %93 ], [ false, %89 ], [ %113, %107 ]
  br i1 %115, label %116, label %119

116:                                              ; preds = %114
  %117 = load i64, i64* %12, align 8
  %118 = add i64 %117, 1
  store i64 %118, i64* %12, align 8
  br label %89

119:                                              ; preds = %114
  %120 = load i64, i64* %12, align 8
  %121 = load i64, i64* %9, align 8
  %122 = icmp uge i64 %120, %121
  br i1 %122, label %130, label %123

123:                                              ; preds = %119
  %124 = load i8*, i8** %7, align 8
  %125 = load i64, i64* %12, align 8
  %126 = getelementptr inbounds i8, i8* %124, i64 %125
  %127 = load i8, i8* %126, align 1
  %128 = sext i8 %127 to i32
  %129 = icmp ne i32 %128, 93
  br i1 %129, label %130, label %131

130:                                              ; preds = %123, %119
  store i32 0, i32* %6, align 4
  br label %381

131:                                              ; preds = %123
  %132 = load i64, i64* %12, align 8
  store i64 %132, i64* %18, align 8
  %133 = load i64, i64* %12, align 8
  %134 = add i64 %133, 1
  store i64 %134, i64* %12, align 8
  %135 = load i64, i64* %12, align 8
  %136 = load i64, i64* %9, align 8
  %137 = icmp uge i64 %135, %136
  br i1 %137, label %145, label %138

138:                                              ; preds = %131
  %139 = load i8*, i8** %7, align 8
  %140 = load i64, i64* %12, align 8
  %141 = getelementptr inbounds i8, i8* %139, i64 %140
  %142 = load i8, i8* %141, align 1
  %143 = sext i8 %142 to i32
  %144 = icmp ne i32 %143, 58
  br i1 %144, label %145, label %146

145:                                              ; preds = %138, %131
  store i32 0, i32* %6, align 4
  br label %381

146:                                              ; preds = %138
  %147 = load i64, i64* %12, align 8
  %148 = add i64 %147, 1
  store i64 %148, i64* %12, align 8
  %149 = call %struct.buf* @bufnew(i32 64)
  store %struct.buf* %149, %struct.buf** %13, align 8
  %150 = load i64, i64* %12, align 8
  store i64 %150, i64* %16, align 8
  br label %151

151:                                              ; preds = %345, %231, %146
  %152 = load i64, i64* %12, align 8
  %153 = load i64, i64* %9, align 8
  %154 = icmp ult i64 %152, %153
  br i1 %154, label %155, label %347

155:                                              ; preds = %151
  br label %156

156:                                              ; preds = %176, %155
  %157 = load i64, i64* %12, align 8
  %158 = load i64, i64* %9, align 8
  %159 = icmp ult i64 %157, %158
  br i1 %159, label %160, label %174

160:                                              ; preds = %156
  %161 = load i8*, i8** %7, align 8
  %162 = load i64, i64* %12, align 8
  %163 = getelementptr inbounds i8, i8* %161, i64 %162
  %164 = load i8, i8* %163, align 1
  %165 = sext i8 %164 to i32
  %166 = icmp ne i32 %165, 10
  br i1 %166, label %167, label %174

167:                                              ; preds = %160
  %168 = load i8*, i8** %7, align 8
  %169 = load i64, i64* %12, align 8
  %170 = getelementptr inbounds i8, i8* %168, i64 %169
  %171 = load i8, i8* %170, align 1
  %172 = sext i8 %171 to i32
  %173 = icmp ne i32 %172, 13
  br label %174

174:                                              ; preds = %167, %160, %156
  %175 = phi i1 [ false, %160 ], [ false, %156 ], [ %173, %167 ]
  br i1 %175, label %176, label %179

176:                                              ; preds = %174
  %177 = load i64, i64* %12, align 8
  %178 = add i64 %177, 1
  store i64 %178, i64* %12, align 8
  br label %156

179:                                              ; preds = %174
  %180 = load i8*, i8** %7, align 8
  %181 = load i64, i64* %16, align 8
  %182 = getelementptr inbounds i8, i8* %180, i64 %181
  %183 = load i64, i64* %12, align 8
  %184 = load i64, i64* %16, align 8
  %185 = sub i64 %183, %184
  %186 = call i64 @is_empty(i8* %182, i64 %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %233

188:                                              ; preds = %179
  store i32 1, i32* %15, align 4
  %189 = load i64, i64* %12, align 8
  %190 = load i64, i64* %9, align 8
  %191 = icmp ult i64 %189, %190
  br i1 %191, label %192, label %231

192:                                              ; preds = %188
  %193 = load i8*, i8** %7, align 8
  %194 = load i64, i64* %12, align 8
  %195 = getelementptr inbounds i8, i8* %193, i64 %194
  %196 = load i8, i8* %195, align 1
  %197 = sext i8 %196 to i32
  %198 = icmp eq i32 %197, 10
  br i1 %198, label %206, label %199

199:                                              ; preds = %192
  %200 = load i8*, i8** %7, align 8
  %201 = load i64, i64* %12, align 8
  %202 = getelementptr inbounds i8, i8* %200, i64 %201
  %203 = load i8, i8* %202, align 1
  %204 = sext i8 %203 to i32
  %205 = icmp eq i32 %204, 13
  br i1 %205, label %206, label %231

206:                                              ; preds = %199, %192
  %207 = load i64, i64* %12, align 8
  %208 = add i64 %207, 1
  store i64 %208, i64* %12, align 8
  %209 = load i64, i64* %12, align 8
  %210 = load i64, i64* %9, align 8
  %211 = icmp ult i64 %209, %210
  br i1 %211, label %212, label %230

212:                                              ; preds = %206
  %213 = load i8*, i8** %7, align 8
  %214 = load i64, i64* %12, align 8
  %215 = getelementptr inbounds i8, i8* %213, i64 %214
  %216 = load i8, i8* %215, align 1
  %217 = sext i8 %216 to i32
  %218 = icmp eq i32 %217, 10
  br i1 %218, label %219, label %230

219:                                              ; preds = %212
  %220 = load i8*, i8** %7, align 8
  %221 = load i64, i64* %12, align 8
  %222 = sub i64 %221, 1
  %223 = getelementptr inbounds i8, i8* %220, i64 %222
  %224 = load i8, i8* %223, align 1
  %225 = sext i8 %224 to i32
  %226 = icmp eq i32 %225, 13
  br i1 %226, label %227, label %230

227:                                              ; preds = %219
  %228 = load i64, i64* %12, align 8
  %229 = add i64 %228, 1
  store i64 %229, i64* %12, align 8
  br label %230

230:                                              ; preds = %227, %219, %212, %206
  br label %231

231:                                              ; preds = %230, %199, %188
  %232 = load i64, i64* %12, align 8
  store i64 %232, i64* %16, align 8
  br label %151

233:                                              ; preds = %179
  store i64 0, i64* %14, align 8
  br label %234

234:                                              ; preds = %254, %233
  %235 = load i64, i64* %14, align 8
  %236 = icmp ult i64 %235, 4
  br i1 %236, label %237, label %252

237:                                              ; preds = %234
  %238 = load i64, i64* %16, align 8
  %239 = load i64, i64* %14, align 8
  %240 = add i64 %238, %239
  %241 = load i64, i64* %9, align 8
  %242 = icmp ult i64 %240, %241
  br i1 %242, label %243, label %252

243:                                              ; preds = %237
  %244 = load i8*, i8** %7, align 8
  %245 = load i64, i64* %16, align 8
  %246 = load i64, i64* %14, align 8
  %247 = add i64 %245, %246
  %248 = getelementptr inbounds i8, i8* %244, i64 %247
  %249 = load i8, i8* %248, align 1
  %250 = sext i8 %249 to i32
  %251 = icmp eq i32 %250, 32
  br label %252

252:                                              ; preds = %243, %237, %234
  %253 = phi i1 [ false, %237 ], [ false, %234 ], [ %251, %243 ]
  br i1 %253, label %254, label %257

254:                                              ; preds = %252
  %255 = load i64, i64* %14, align 8
  %256 = add i64 %255, 1
  store i64 %256, i64* %14, align 8
  br label %234

257:                                              ; preds = %252
  %258 = load i64, i64* %14, align 8
  %259 = icmp eq i64 %258, 0
  br i1 %259, label %260, label %275

260:                                              ; preds = %257
  %261 = load i64, i64* %16, align 8
  %262 = load i64, i64* %18, align 8
  %263 = add i64 %262, 2
  %264 = icmp eq i64 %261, %263
  br i1 %264, label %265, label %273

265:                                              ; preds = %260
  %266 = load i8*, i8** %7, align 8
  %267 = load i64, i64* %16, align 8
  %268 = getelementptr inbounds i8, i8* %266, i64 %267
  %269 = load i8, i8* %268, align 1
  %270 = sext i8 %269 to i32
  %271 = icmp eq i32 %270, 9
  br i1 %271, label %272, label %273

272:                                              ; preds = %265
  br label %274

273:                                              ; preds = %265, %260
  br label %347

274:                                              ; preds = %272
  br label %282

275:                                              ; preds = %257
  %276 = load i32, i32* %15, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %281

278:                                              ; preds = %275
  %279 = load %struct.buf*, %struct.buf** %13, align 8
  %280 = call i32 @bufputc(%struct.buf* %279, i8 signext 10)
  br label %281

281:                                              ; preds = %278, %275
  br label %282

282:                                              ; preds = %281, %274
  store i32 0, i32* %15, align 4
  %283 = load %struct.buf*, %struct.buf** %13, align 8
  %284 = load i8*, i8** %7, align 8
  %285 = load i64, i64* %16, align 8
  %286 = getelementptr inbounds i8, i8* %284, i64 %285
  %287 = load i64, i64* %14, align 8
  %288 = getelementptr inbounds i8, i8* %286, i64 %287
  %289 = load i64, i64* %12, align 8
  %290 = load i64, i64* %16, align 8
  %291 = sub i64 %289, %290
  %292 = load i64, i64* %14, align 8
  %293 = sub i64 %291, %292
  %294 = trunc i64 %293 to i32
  %295 = call i32 @bufput(%struct.buf* %283, i8* %288, i32 %294)
  %296 = load i64, i64* %12, align 8
  %297 = load i64, i64* %9, align 8
  %298 = icmp ult i64 %296, %297
  br i1 %298, label %299, label %345

299:                                              ; preds = %282
  %300 = load %struct.buf*, %struct.buf** %13, align 8
  %301 = call i32 @bufput(%struct.buf* %300, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  %302 = load i64, i64* %12, align 8
  %303 = load i64, i64* %9, align 8
  %304 = icmp ult i64 %302, %303
  br i1 %304, label %305, label %344

305:                                              ; preds = %299
  %306 = load i8*, i8** %7, align 8
  %307 = load i64, i64* %12, align 8
  %308 = getelementptr inbounds i8, i8* %306, i64 %307
  %309 = load i8, i8* %308, align 1
  %310 = sext i8 %309 to i32
  %311 = icmp eq i32 %310, 10
  br i1 %311, label %319, label %312

312:                                              ; preds = %305
  %313 = load i8*, i8** %7, align 8
  %314 = load i64, i64* %12, align 8
  %315 = getelementptr inbounds i8, i8* %313, i64 %314
  %316 = load i8, i8* %315, align 1
  %317 = sext i8 %316 to i32
  %318 = icmp eq i32 %317, 13
  br i1 %318, label %319, label %344

319:                                              ; preds = %312, %305
  %320 = load i64, i64* %12, align 8
  %321 = add i64 %320, 1
  store i64 %321, i64* %12, align 8
  %322 = load i64, i64* %12, align 8
  %323 = load i64, i64* %9, align 8
  %324 = icmp ult i64 %322, %323
  br i1 %324, label %325, label %343

325:                                              ; preds = %319
  %326 = load i8*, i8** %7, align 8
  %327 = load i64, i64* %12, align 8
  %328 = getelementptr inbounds i8, i8* %326, i64 %327
  %329 = load i8, i8* %328, align 1
  %330 = sext i8 %329 to i32
  %331 = icmp eq i32 %330, 10
  br i1 %331, label %332, label %343

332:                                              ; preds = %325
  %333 = load i8*, i8** %7, align 8
  %334 = load i64, i64* %12, align 8
  %335 = sub i64 %334, 1
  %336 = getelementptr inbounds i8, i8* %333, i64 %335
  %337 = load i8, i8* %336, align 1
  %338 = sext i8 %337 to i32
  %339 = icmp eq i32 %338, 13
  br i1 %339, label %340, label %343

340:                                              ; preds = %332
  %341 = load i64, i64* %12, align 8
  %342 = add i64 %341, 1
  store i64 %342, i64* %12, align 8
  br label %343

343:                                              ; preds = %340, %332, %325, %319
  br label %344

344:                                              ; preds = %343, %312, %299
  br label %345

345:                                              ; preds = %344, %282
  %346 = load i64, i64* %12, align 8
  store i64 %346, i64* %16, align 8
  br label %151

347:                                              ; preds = %273, %151
  %348 = load i64*, i64** %10, align 8
  %349 = icmp ne i64* %348, null
  br i1 %349, label %350, label %353

350:                                              ; preds = %347
  %351 = load i64, i64* %16, align 8
  %352 = load i64*, i64** %10, align 8
  store i64 %351, i64* %352, align 8
  br label %353

353:                                              ; preds = %350, %347
  %354 = load %struct.footnote_list*, %struct.footnote_list** %11, align 8
  %355 = icmp ne %struct.footnote_list* %354, null
  br i1 %355, label %356, label %380

356:                                              ; preds = %353
  %357 = load %struct.footnote_list*, %struct.footnote_list** %11, align 8
  %358 = load i8*, i8** %7, align 8
  %359 = load i64, i64* %17, align 8
  %360 = getelementptr inbounds i8, i8* %358, i64 %359
  %361 = load i64, i64* %18, align 8
  %362 = load i64, i64* %17, align 8
  %363 = sub i64 %361, %362
  %364 = call %struct.footnote_ref* @create_footnote_ref(%struct.footnote_list* %357, i8* %360, i64 %363)
  store %struct.footnote_ref* %364, %struct.footnote_ref** %19, align 8
  %365 = load %struct.footnote_ref*, %struct.footnote_ref** %19, align 8
  %366 = icmp ne %struct.footnote_ref* %365, null
  br i1 %366, label %368, label %367

367:                                              ; preds = %356
  store i32 0, i32* %6, align 4
  br label %381

368:                                              ; preds = %356
  %369 = load %struct.footnote_list*, %struct.footnote_list** %11, align 8
  %370 = load %struct.footnote_ref*, %struct.footnote_ref** %19, align 8
  %371 = call i32 @add_footnote_ref(%struct.footnote_list* %369, %struct.footnote_ref* %370)
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %376, label %373

373:                                              ; preds = %368
  %374 = load %struct.footnote_ref*, %struct.footnote_ref** %19, align 8
  %375 = call i32 @free_footnote_ref(%struct.footnote_ref* %374)
  store i32 0, i32* %6, align 4
  br label %381

376:                                              ; preds = %368
  %377 = load %struct.buf*, %struct.buf** %13, align 8
  %378 = load %struct.footnote_ref*, %struct.footnote_ref** %19, align 8
  %379 = getelementptr inbounds %struct.footnote_ref, %struct.footnote_ref* %378, i32 0, i32 0
  store %struct.buf* %377, %struct.buf** %379, align 8
  br label %380

380:                                              ; preds = %376, %353
  store i32 1, i32* %6, align 4
  br label %381

381:                                              ; preds = %380, %373, %367, %145, %130, %84, %70, %56, %24
  %382 = load i32, i32* %6, align 4
  ret i32 %382
}

declare dso_local %struct.buf* @bufnew(i32) #1

declare dso_local i64 @is_empty(i8*, i64) #1

declare dso_local i32 @bufputc(%struct.buf*, i8 signext) #1

declare dso_local i32 @bufput(%struct.buf*, i8*, i32) #1

declare dso_local %struct.footnote_ref* @create_footnote_ref(%struct.footnote_list*, i8*, i64) #1

declare dso_local i32 @add_footnote_ref(%struct.footnote_list*, %struct.footnote_ref*) #1

declare dso_local i32 @free_footnote_ref(%struct.footnote_ref*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
