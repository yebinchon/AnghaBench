; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_mutation.c_handle_insert_comment.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_mutation.c_handle_insert_comment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@handle_insert_comment.endifW = internal constant [9 x i8] c"<![endif]", align 1
@IE_MAJOR_VERSION = common dso_local global i32 0, align 4
@IE_MINOR_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i8*)* @handle_insert_comment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @handle_insert_comment(i32* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %12, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %16, 91
  br i1 %17, label %30, label %18

18:                                               ; preds = %2
  %19 = load i8*, i8** %5, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 1
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 105
  br i1 %23, label %30, label %24

24:                                               ; preds = %18
  %25 = load i8*, i8** %5, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 2
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 102
  br i1 %29, label %30, label %31

30:                                               ; preds = %24, %18, %2
  store i8* null, i8** %3, align 8
  br label %333

31:                                               ; preds = %24
  %32 = load i8*, i8** %5, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 3
  store i8* %33, i8** %8, align 8
  br label %34

34:                                               ; preds = %39, %31
  %35 = load i8*, i8** %8, align 8
  %36 = load i8, i8* %35, align 1
  %37 = call i64 @isspaceW(i8 signext %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i8*, i8** %8, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %8, align 8
  br label %34

42:                                               ; preds = %34
  %43 = load i8*, i8** %8, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 0
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 108
  br i1 %47, label %48, label %66

48:                                               ; preds = %42
  %49 = load i8*, i8** %8, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 1
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 116
  br i1 %53, label %54, label %66

54:                                               ; preds = %48
  %55 = load i8*, i8** %8, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 2
  store i8* %56, i8** %8, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 101
  br i1 %60, label %61, label %64

61:                                               ; preds = %54
  store i32 2, i32* %12, align 4
  %62 = load i8*, i8** %8, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %8, align 8
  br label %65

64:                                               ; preds = %54
  store i32 1, i32* %12, align 4
  br label %65

65:                                               ; preds = %64, %61
  br label %91

66:                                               ; preds = %48, %42
  %67 = load i8*, i8** %8, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 0
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 103
  br i1 %71, label %72, label %90

72:                                               ; preds = %66
  %73 = load i8*, i8** %8, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 1
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 116
  br i1 %77, label %78, label %90

78:                                               ; preds = %72
  %79 = load i8*, i8** %8, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 2
  store i8* %80, i8** %8, align 8
  %81 = load i8*, i8** %8, align 8
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 101
  br i1 %84, label %85, label %88

85:                                               ; preds = %78
  store i32 4, i32* %12, align 4
  %86 = load i8*, i8** %8, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %8, align 8
  br label %89

88:                                               ; preds = %78
  store i32 3, i32* %12, align 4
  br label %89

89:                                               ; preds = %88, %85
  br label %90

90:                                               ; preds = %89, %72, %66
  br label %91

91:                                               ; preds = %90, %65
  %92 = load i8*, i8** %8, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %8, align 8
  %94 = load i8, i8* %92, align 1
  %95 = call i64 @isspaceW(i8 signext %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %91
  store i8* null, i8** %3, align 8
  br label %333

98:                                               ; preds = %91
  br label %99

99:                                               ; preds = %104, %98
  %100 = load i8*, i8** %8, align 8
  %101 = load i8, i8* %100, align 1
  %102 = call i64 @isspaceW(i8 signext %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %99
  %105 = load i8*, i8** %8, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %8, align 8
  br label %99

107:                                              ; preds = %99
  %108 = load i8*, i8** %8, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 0
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp ne i32 %111, 73
  br i1 %112, label %119, label %113

113:                                              ; preds = %107
  %114 = load i8*, i8** %8, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 1
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp ne i32 %117, 69
  br i1 %118, label %119, label %120

119:                                              ; preds = %113, %107
  store i8* null, i8** %3, align 8
  br label %333

120:                                              ; preds = %113
  %121 = load i8*, i8** %8, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 2
  store i8* %122, i8** %8, align 8
  %123 = load i8*, i8** %8, align 8
  %124 = getelementptr inbounds i8, i8* %123, i32 1
  store i8* %124, i8** %8, align 8
  %125 = load i8, i8* %123, align 1
  %126 = call i64 @isspaceW(i8 signext %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %120
  store i8* null, i8** %3, align 8
  br label %333

129:                                              ; preds = %120
  br label %130

130:                                              ; preds = %135, %129
  %131 = load i8*, i8** %8, align 8
  %132 = load i8, i8* %131, align 1
  %133 = call i64 @isspaceW(i8 signext %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %130
  %136 = load i8*, i8** %8, align 8
  %137 = getelementptr inbounds i8, i8* %136, i32 1
  store i8* %137, i8** %8, align 8
  br label %130

138:                                              ; preds = %130
  %139 = load i8*, i8** %8, align 8
  %140 = load i8, i8* %139, align 1
  %141 = call i64 @isdigitW(i8 signext %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %144, label %143

143:                                              ; preds = %138
  store i8* null, i8** %3, align 8
  br label %333

144:                                              ; preds = %138
  br label %145

145:                                              ; preds = %150, %144
  %146 = load i8*, i8** %8, align 8
  %147 = load i8, i8* %146, align 1
  %148 = call i64 @isdigitW(i8 signext %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %159

150:                                              ; preds = %145
  %151 = load i32, i32* %6, align 4
  %152 = mul nsw i32 %151, 10
  %153 = load i8*, i8** %8, align 8
  %154 = getelementptr inbounds i8, i8* %153, i32 1
  store i8* %154, i8** %8, align 8
  %155 = load i8, i8* %153, align 1
  %156 = sext i8 %155 to i32
  %157 = sub nsw i32 %156, 48
  %158 = add nsw i32 %152, %157
  store i32 %158, i32* %6, align 4
  br label %145

159:                                              ; preds = %145
  %160 = load i8*, i8** %8, align 8
  %161 = load i8, i8* %160, align 1
  %162 = sext i8 %161 to i32
  %163 = icmp eq i32 %162, 46
  br i1 %163, label %164, label %188

164:                                              ; preds = %159
  %165 = load i8*, i8** %8, align 8
  %166 = getelementptr inbounds i8, i8* %165, i32 1
  store i8* %166, i8** %8, align 8
  %167 = load i8*, i8** %8, align 8
  %168 = load i8, i8* %167, align 1
  %169 = call i64 @isdigitW(i8 signext %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %172, label %171

171:                                              ; preds = %164
  store i8* null, i8** %3, align 8
  br label %333

172:                                              ; preds = %164
  br label %173

173:                                              ; preds = %178, %172
  %174 = load i8*, i8** %8, align 8
  %175 = load i8, i8* %174, align 1
  %176 = call i64 @isdigitW(i8 signext %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %187

178:                                              ; preds = %173
  %179 = load i32, i32* %7, align 4
  %180 = mul nsw i32 %179, 10
  %181 = load i8*, i8** %8, align 8
  %182 = getelementptr inbounds i8, i8* %181, i32 1
  store i8* %182, i8** %8, align 8
  %183 = load i8, i8* %181, align 1
  %184 = sext i8 %183 to i32
  %185 = sub nsw i32 %184, 48
  %186 = add nsw i32 %180, %185
  store i32 %186, i32* %7, align 4
  br label %173

187:                                              ; preds = %173
  br label %188

188:                                              ; preds = %187, %159
  br label %189

189:                                              ; preds = %194, %188
  %190 = load i8*, i8** %8, align 8
  %191 = load i8, i8* %190, align 1
  %192 = call i64 @isspaceW(i8 signext %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %197

194:                                              ; preds = %189
  %195 = load i8*, i8** %8, align 8
  %196 = getelementptr inbounds i8, i8* %195, i32 1
  store i8* %196, i8** %8, align 8
  br label %189

197:                                              ; preds = %189
  %198 = load i8*, i8** %8, align 8
  %199 = getelementptr inbounds i8, i8* %198, i64 0
  %200 = load i8, i8* %199, align 1
  %201 = sext i8 %200 to i32
  %202 = icmp ne i32 %201, 93
  br i1 %202, label %209, label %203

203:                                              ; preds = %197
  %204 = load i8*, i8** %8, align 8
  %205 = getelementptr inbounds i8, i8* %204, i64 1
  %206 = load i8, i8* %205, align 1
  %207 = sext i8 %206 to i32
  %208 = icmp ne i32 %207, 62
  br i1 %208, label %209, label %210

209:                                              ; preds = %203, %197
  store i8* null, i8** %3, align 8
  br label %333

210:                                              ; preds = %203
  %211 = load i8*, i8** %8, align 8
  %212 = getelementptr inbounds i8, i8* %211, i64 2
  store i8* %212, i8** %8, align 8
  %213 = load i8*, i8** %8, align 8
  %214 = call i32 @strlenW(i8* %213)
  store i32 %214, i32* %11, align 4
  %215 = load i32, i32* %11, align 4
  %216 = sext i32 %215 to i64
  %217 = icmp ult i64 %216, 2
  br i1 %217, label %218, label %219

218:                                              ; preds = %210
  store i8* null, i8** %3, align 8
  br label %333

219:                                              ; preds = %210
  %220 = load i8*, i8** %8, align 8
  %221 = load i32, i32* %11, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i8, i8* %220, i64 %222
  %224 = getelementptr inbounds i8, i8* %223, i64 -2
  store i8* %224, i8** %9, align 8
  %225 = load i8*, i8** %9, align 8
  %226 = call i64 @memcmp(i8* %225, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @handle_insert_comment.endifW, i64 0, i64 0), i32 9)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %229

228:                                              ; preds = %219
  store i8* null, i8** %3, align 8
  br label %333

229:                                              ; preds = %219
  %230 = load i32, i32* %12, align 4
  switch i32 %230, label %301 [
    i32 0, label %231
    i32 1, label %241
    i32 2, label %256
    i32 3, label %271
    i32 4, label %286
  ]

231:                                              ; preds = %229
  %232 = load i32, i32* %6, align 4
  %233 = load i32, i32* @IE_MAJOR_VERSION, align 4
  %234 = icmp eq i32 %232, %233
  br i1 %234, label %235, label %240

235:                                              ; preds = %231
  %236 = load i32, i32* %7, align 4
  %237 = load i32, i32* @IE_MINOR_VERSION, align 4
  %238 = icmp eq i32 %236, %237
  br i1 %238, label %239, label %240

239:                                              ; preds = %235
  br label %301

240:                                              ; preds = %235, %231
  store i8* null, i8** %3, align 8
  br label %333

241:                                              ; preds = %229
  %242 = load i32, i32* %6, align 4
  %243 = load i32, i32* @IE_MAJOR_VERSION, align 4
  %244 = icmp sgt i32 %242, %243
  br i1 %244, label %245, label %246

245:                                              ; preds = %241
  br label %301

246:                                              ; preds = %241
  %247 = load i32, i32* %6, align 4
  %248 = load i32, i32* @IE_MAJOR_VERSION, align 4
  %249 = icmp eq i32 %247, %248
  br i1 %249, label %250, label %255

250:                                              ; preds = %246
  %251 = load i32, i32* %7, align 4
  %252 = load i32, i32* @IE_MINOR_VERSION, align 4
  %253 = icmp sgt i32 %251, %252
  br i1 %253, label %254, label %255

254:                                              ; preds = %250
  br label %301

255:                                              ; preds = %250, %246
  store i8* null, i8** %3, align 8
  br label %333

256:                                              ; preds = %229
  %257 = load i32, i32* %6, align 4
  %258 = load i32, i32* @IE_MAJOR_VERSION, align 4
  %259 = icmp sgt i32 %257, %258
  br i1 %259, label %260, label %261

260:                                              ; preds = %256
  br label %301

261:                                              ; preds = %256
  %262 = load i32, i32* %6, align 4
  %263 = load i32, i32* @IE_MAJOR_VERSION, align 4
  %264 = icmp eq i32 %262, %263
  br i1 %264, label %265, label %270

265:                                              ; preds = %261
  %266 = load i32, i32* %7, align 4
  %267 = load i32, i32* @IE_MINOR_VERSION, align 4
  %268 = icmp sge i32 %266, %267
  br i1 %268, label %269, label %270

269:                                              ; preds = %265
  br label %301

270:                                              ; preds = %265, %261
  store i8* null, i8** %3, align 8
  br label %333

271:                                              ; preds = %229
  %272 = load i32, i32* %6, align 4
  %273 = load i32, i32* @IE_MAJOR_VERSION, align 4
  %274 = icmp slt i32 %272, %273
  br i1 %274, label %275, label %276

275:                                              ; preds = %271
  br label %301

276:                                              ; preds = %271
  %277 = load i32, i32* %6, align 4
  %278 = load i32, i32* @IE_MAJOR_VERSION, align 4
  %279 = icmp eq i32 %277, %278
  br i1 %279, label %280, label %285

280:                                              ; preds = %276
  %281 = load i32, i32* %7, align 4
  %282 = load i32, i32* @IE_MINOR_VERSION, align 4
  %283 = icmp slt i32 %281, %282
  br i1 %283, label %284, label %285

284:                                              ; preds = %280
  br label %301

285:                                              ; preds = %280, %276
  store i8* null, i8** %3, align 8
  br label %333

286:                                              ; preds = %229
  %287 = load i32, i32* %6, align 4
  %288 = load i32, i32* @IE_MAJOR_VERSION, align 4
  %289 = icmp slt i32 %287, %288
  br i1 %289, label %290, label %291

290:                                              ; preds = %286
  br label %301

291:                                              ; preds = %286
  %292 = load i32, i32* %6, align 4
  %293 = load i32, i32* @IE_MAJOR_VERSION, align 4
  %294 = icmp eq i32 %292, %293
  br i1 %294, label %295, label %300

295:                                              ; preds = %291
  %296 = load i32, i32* %7, align 4
  %297 = load i32, i32* @IE_MINOR_VERSION, align 4
  %298 = icmp sle i32 %296, %297
  br i1 %298, label %299, label %300

299:                                              ; preds = %295
  br label %301

300:                                              ; preds = %295, %291
  store i8* null, i8** %3, align 8
  br label %333

301:                                              ; preds = %229, %299, %290, %284, %275, %269, %260, %254, %245, %239
  %302 = load i8*, i8** %9, align 8
  %303 = load i8*, i8** %8, align 8
  %304 = ptrtoint i8* %302 to i64
  %305 = ptrtoint i8* %303 to i64
  %306 = sub i64 %304, %305
  %307 = add nsw i64 %306, 1
  %308 = mul i64 %307, 4
  %309 = trunc i64 %308 to i32
  %310 = call i8* @heap_alloc(i32 %309)
  store i8* %310, i8** %10, align 8
  %311 = load i8*, i8** %10, align 8
  %312 = icmp ne i8* %311, null
  br i1 %312, label %314, label %313

313:                                              ; preds = %301
  store i8* null, i8** %3, align 8
  br label %333

314:                                              ; preds = %301
  %315 = load i8*, i8** %10, align 8
  %316 = load i8*, i8** %8, align 8
  %317 = load i8*, i8** %9, align 8
  %318 = load i8*, i8** %8, align 8
  %319 = ptrtoint i8* %317 to i64
  %320 = ptrtoint i8* %318 to i64
  %321 = sub i64 %319, %320
  %322 = mul i64 %321, 4
  %323 = trunc i64 %322 to i32
  %324 = call i32 @memcpy(i8* %315, i8* %316, i32 %323)
  %325 = load i8*, i8** %10, align 8
  %326 = load i8*, i8** %9, align 8
  %327 = load i8*, i8** %8, align 8
  %328 = ptrtoint i8* %326 to i64
  %329 = ptrtoint i8* %327 to i64
  %330 = sub i64 %328, %329
  %331 = getelementptr inbounds i8, i8* %325, i64 %330
  store i8 0, i8* %331, align 1
  %332 = load i8*, i8** %10, align 8
  store i8* %332, i8** %3, align 8
  br label %333

333:                                              ; preds = %314, %313, %300, %285, %270, %255, %240, %228, %218, %209, %171, %143, %128, %119, %97, %30
  %334 = load i8*, i8** %3, align 8
  ret i8* %334
}

declare dso_local i64 @isspaceW(i8 signext) #1

declare dso_local i64 @isdigitW(i8 signext) #1

declare dso_local i32 @strlenW(i8*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i8* @heap_alloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
