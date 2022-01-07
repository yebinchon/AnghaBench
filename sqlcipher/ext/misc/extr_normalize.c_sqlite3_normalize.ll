; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_normalize.c_sqlite3_normalize.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_normalize.c_sqlite3_normalize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"is\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"not\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"in(\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"in(select\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"in(with\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"?,?,?\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @sqlite3_normalize(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = call i64 @strlen(i8* %14)
  store i64 %15, i64* %6, align 8
  %16 = load i64, i64* %6, align 8
  store i64 %16, i64* %5, align 8
  %17 = load i64, i64* %5, align 8
  %18 = add nsw i64 %17, 2
  %19 = call i8* @sqlite3_malloc64(i64 %18)
  store i8* %19, i8** %4, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %371

23:                                               ; preds = %1
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %24

24:                                               ; preds = %156, %23
  %25 = load i8*, i8** %3, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = icmp ne i8 %29, 0
  br i1 %30, label %31, label %160

31:                                               ; preds = %24
  %32 = load i8*, i8** %3, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  %36 = call i32 @sqlite3GetToken(i8* %35, i32* %9)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %9, align 4
  switch i32 %37, label %155 [
    i32 128, label %38
    i32 132, label %39
    i32 131, label %42
    i32 129, label %48
    i32 130, label %48
  ]

38:                                               ; preds = %31
  br label %155

39:                                               ; preds = %31
  %40 = load i8*, i8** %4, align 8
  %41 = call i32 @sqlite3_free(i8* %40)
  store i8* null, i8** %2, align 8
  br label %371

42:                                               ; preds = %31
  %43 = load i8*, i8** %4, align 8
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %8, align 4
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds i8, i8* %43, i64 %46
  store i8 63, i8* %47, align 1
  br label %155

48:                                               ; preds = %31, %31
  %49 = load i32, i32* %10, align 4
  %50 = icmp eq i32 %49, 4
  br i1 %50, label %51, label %106

51:                                               ; preds = %48
  %52 = load i8*, i8** %3, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  %56 = call i32 @sqlite3_strnicmp(i8* %55, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %106

58:                                               ; preds = %51
  %59 = load i32, i32* %8, align 4
  %60 = icmp sge i32 %59, 3
  br i1 %60, label %61, label %78

61:                                               ; preds = %58
  %62 = load i8*, i8** %4, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  %66 = getelementptr inbounds i8, i8* %65, i64 -2
  %67 = call i64 @strncmp(i8* %66, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %61
  %70 = load i8*, i8** %4, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sub nsw i32 %71, 3
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %70, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = call i64 @IdChar(i8 signext %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %98

78:                                               ; preds = %69, %61, %58
  %79 = load i32, i32* %8, align 4
  %80 = icmp sge i32 %79, 4
  br i1 %80, label %81, label %99

81:                                               ; preds = %78
  %82 = load i8*, i8** %4, align 8
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %82, i64 %84
  %86 = getelementptr inbounds i8, i8* %85, i64 -3
  %87 = call i64 @strncmp(i8* %86, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 3)
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %81
  %90 = load i8*, i8** %4, align 8
  %91 = load i32, i32* %8, align 4
  %92 = sub nsw i32 %91, 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %90, i64 %93
  %95 = load i8, i8* %94, align 1
  %96 = call i64 @IdChar(i8 signext %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %89, %69
  br label %105

99:                                               ; preds = %89, %81, %78
  %100 = load i8*, i8** %4, align 8
  %101 = load i32, i32* %8, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %8, align 4
  %103 = sext i32 %101 to i64
  %104 = getelementptr inbounds i8, i8* %100, i64 %103
  store i8 63, i8* %104, align 1
  br label %155

105:                                              ; preds = %98
  br label %106

106:                                              ; preds = %105, %51, %48
  %107 = load i32, i32* %8, align 4
  %108 = icmp sgt i32 %107, 0
  br i1 %108, label %109, label %132

109:                                              ; preds = %106
  %110 = load i8*, i8** %4, align 8
  %111 = load i32, i32* %8, align 4
  %112 = sub nsw i32 %111, 1
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %110, i64 %113
  %115 = load i8, i8* %114, align 1
  %116 = call i64 @IdChar(i8 signext %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %132

118:                                              ; preds = %109
  %119 = load i8*, i8** %3, align 8
  %120 = load i32, i32* %7, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8, i8* %119, i64 %121
  %123 = load i8, i8* %122, align 1
  %124 = call i64 @IdChar(i8 signext %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %118
  %127 = load i8*, i8** %4, align 8
  %128 = load i32, i32* %8, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %8, align 4
  %130 = sext i32 %128 to i64
  %131 = getelementptr inbounds i8, i8* %127, i64 %130
  store i8 32, i8* %131, align 1
  br label %132

132:                                              ; preds = %126, %118, %109, %106
  store i32 0, i32* %11, align 4
  br label %133

133:                                              ; preds = %151, %132
  %134 = load i32, i32* %11, align 4
  %135 = load i32, i32* %10, align 4
  %136 = icmp slt i32 %134, %135
  br i1 %136, label %137, label %154

137:                                              ; preds = %133
  %138 = load i8*, i8** %3, align 8
  %139 = load i32, i32* %7, align 4
  %140 = load i32, i32* %11, align 4
  %141 = add nsw i32 %139, %140
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8, i8* %138, i64 %142
  %144 = load i8, i8* %143, align 1
  %145 = call signext i8 @sqlite3Tolower(i8 signext %144)
  %146 = load i8*, i8** %4, align 8
  %147 = load i32, i32* %8, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %8, align 4
  %149 = sext i32 %147 to i64
  %150 = getelementptr inbounds i8, i8* %146, i64 %149
  store i8 %145, i8* %150, align 1
  br label %151

151:                                              ; preds = %137
  %152 = load i32, i32* %11, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %11, align 4
  br label %133

154:                                              ; preds = %133
  br label %155

155:                                              ; preds = %31, %154, %99, %42, %38
  br label %156

156:                                              ; preds = %155
  %157 = load i32, i32* %10, align 4
  %158 = load i32, i32* %7, align 4
  %159 = add nsw i32 %158, %157
  store i32 %159, i32* %7, align 4
  br label %24

160:                                              ; preds = %24
  br label %161

161:                                              ; preds = %175, %160
  %162 = load i32, i32* %8, align 4
  %163 = icmp sgt i32 %162, 0
  br i1 %163, label %164, label %173

164:                                              ; preds = %161
  %165 = load i8*, i8** %4, align 8
  %166 = load i32, i32* %8, align 4
  %167 = sub nsw i32 %166, 1
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i8, i8* %165, i64 %168
  %170 = load i8, i8* %169, align 1
  %171 = sext i8 %170 to i32
  %172 = icmp eq i32 %171, 32
  br label %173

173:                                              ; preds = %164, %161
  %174 = phi i1 [ false, %161 ], [ %172, %164 ]
  br i1 %174, label %175, label %178

175:                                              ; preds = %173
  %176 = load i32, i32* %8, align 4
  %177 = add nsw i32 %176, -1
  store i32 %177, i32* %8, align 4
  br label %161

178:                                              ; preds = %173
  %179 = load i32, i32* %8, align 4
  %180 = icmp sgt i32 %179, 0
  br i1 %180, label %181, label %196

181:                                              ; preds = %178
  %182 = load i8*, i8** %4, align 8
  %183 = load i32, i32* %8, align 4
  %184 = sub nsw i32 %183, 1
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i8, i8* %182, i64 %185
  %187 = load i8, i8* %186, align 1
  %188 = sext i8 %187 to i32
  %189 = icmp ne i32 %188, 59
  br i1 %189, label %190, label %196

190:                                              ; preds = %181
  %191 = load i8*, i8** %4, align 8
  %192 = load i32, i32* %8, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %8, align 4
  %194 = sext i32 %192 to i64
  %195 = getelementptr inbounds i8, i8* %191, i64 %194
  store i8 59, i8* %195, align 1
  br label %196

196:                                              ; preds = %190, %181, %178
  %197 = load i8*, i8** %4, align 8
  %198 = load i32, i32* %8, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i8, i8* %197, i64 %199
  store i8 0, i8* %200, align 1
  store i32 0, i32* %7, align 4
  br label %201

201:                                              ; preds = %367, %196
  %202 = load i32, i32* %7, align 4
  %203 = load i32, i32* %8, align 4
  %204 = icmp slt i32 %202, %203
  br i1 %204, label %205, label %369

205:                                              ; preds = %201
  %206 = load i8*, i8** %4, align 8
  %207 = load i32, i32* %7, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i8, i8* %206, i64 %208
  %210 = call i8* @strstr(i8* %209, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  store i8* %210, i8** %12, align 8
  %211 = load i8*, i8** %12, align 8
  %212 = icmp eq i8* %211, null
  br i1 %212, label %213, label %214

213:                                              ; preds = %205
  br label %369

214:                                              ; preds = %205
  %215 = load i8*, i8** %12, align 8
  %216 = load i8*, i8** %4, align 8
  %217 = ptrtoint i8* %215 to i64
  %218 = ptrtoint i8* %216 to i64
  %219 = sub i64 %217, %218
  %220 = trunc i64 %219 to i32
  %221 = add nsw i32 %220, 3
  store i32 %221, i32* %10, align 4
  %222 = load i32, i32* %10, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %231

224:                                              ; preds = %214
  %225 = load i8*, i8** %12, align 8
  %226 = getelementptr inbounds i8, i8* %225, i64 -1
  %227 = load i8, i8* %226, align 1
  %228 = call i64 @IdChar(i8 signext %227)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %231

230:                                              ; preds = %224
  br label %367

231:                                              ; preds = %224, %214
  %232 = load i8*, i8** %12, align 8
  %233 = call i64 @strncmp(i8* %232, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 9)
  %234 = icmp eq i64 %233, 0
  br i1 %234, label %235, label %242

235:                                              ; preds = %231
  %236 = load i8*, i8** %12, align 8
  %237 = getelementptr inbounds i8, i8* %236, i64 9
  %238 = load i8, i8* %237, align 1
  %239 = call i64 @IdChar(i8 signext %238)
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %242, label %241

241:                                              ; preds = %235
  br label %367

242:                                              ; preds = %235, %231
  %243 = load i8*, i8** %12, align 8
  %244 = call i64 @strncmp(i8* %243, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 7)
  %245 = icmp eq i64 %244, 0
  br i1 %245, label %246, label %253

246:                                              ; preds = %242
  %247 = load i8*, i8** %12, align 8
  %248 = getelementptr inbounds i8, i8* %247, i64 7
  %249 = load i8, i8* %248, align 1
  %250 = call i64 @IdChar(i8 signext %249)
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %253, label %252

252:                                              ; preds = %246
  br label %367

253:                                              ; preds = %246, %242
  store i32 1, i32* %13, align 4
  store i32 0, i32* %11, align 4
  br label %254

254:                                              ; preds = %294, %253
  %255 = load i8*, i8** %4, align 8
  %256 = load i32, i32* %10, align 4
  %257 = load i32, i32* %11, align 4
  %258 = add nsw i32 %256, %257
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i8, i8* %255, i64 %259
  %261 = load i8, i8* %260, align 1
  %262 = icmp ne i8 %261, 0
  br i1 %262, label %263, label %297

263:                                              ; preds = %254
  %264 = load i8*, i8** %4, align 8
  %265 = load i32, i32* %10, align 4
  %266 = load i32, i32* %11, align 4
  %267 = add nsw i32 %265, %266
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i8, i8* %264, i64 %268
  %270 = load i8, i8* %269, align 1
  %271 = sext i8 %270 to i32
  %272 = icmp eq i32 %271, 40
  br i1 %272, label %273, label %276

273:                                              ; preds = %263
  %274 = load i32, i32* %13, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %13, align 4
  br label %276

276:                                              ; preds = %273, %263
  %277 = load i8*, i8** %4, align 8
  %278 = load i32, i32* %10, align 4
  %279 = load i32, i32* %11, align 4
  %280 = add nsw i32 %278, %279
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i8, i8* %277, i64 %281
  %283 = load i8, i8* %282, align 1
  %284 = sext i8 %283 to i32
  %285 = icmp eq i32 %284, 41
  br i1 %285, label %286, label %293

286:                                              ; preds = %276
  %287 = load i32, i32* %13, align 4
  %288 = add nsw i32 %287, -1
  store i32 %288, i32* %13, align 4
  %289 = load i32, i32* %13, align 4
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %291, label %292

291:                                              ; preds = %286
  br label %297

292:                                              ; preds = %286
  br label %293

293:                                              ; preds = %292, %276
  br label %294

294:                                              ; preds = %293
  %295 = load i32, i32* %11, align 4
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* %11, align 4
  br label %254

297:                                              ; preds = %291, %254
  %298 = load i32, i32* %11, align 4
  %299 = icmp slt i32 %298, 5
  br i1 %299, label %300, label %330

300:                                              ; preds = %297
  %301 = load i8*, i8** %4, align 8
  %302 = load i32, i32* %8, align 4
  %303 = load i32, i32* %11, align 4
  %304 = sub nsw i32 5, %303
  %305 = add nsw i32 %302, %304
  %306 = add nsw i32 %305, 1
  %307 = call i8* @sqlite3_realloc64(i8* %301, i32 %306)
  store i8* %307, i8** %4, align 8
  %308 = load i8*, i8** %4, align 8
  %309 = icmp eq i8* %308, null
  br i1 %309, label %310, label %311

310:                                              ; preds = %300
  store i8* null, i8** %2, align 8
  br label %371

311:                                              ; preds = %300
  %312 = load i8*, i8** %4, align 8
  %313 = load i32, i32* %10, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds i8, i8* %312, i64 %314
  %316 = getelementptr inbounds i8, i8* %315, i64 5
  %317 = load i8*, i8** %4, align 8
  %318 = load i32, i32* %10, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds i8, i8* %317, i64 %319
  %321 = load i32, i32* %11, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds i8, i8* %320, i64 %322
  %324 = load i32, i32* %8, align 4
  %325 = load i32, i32* %10, align 4
  %326 = load i32, i32* %11, align 4
  %327 = add nsw i32 %325, %326
  %328 = sub nsw i32 %324, %327
  %329 = call i32 @memmove(i8* %316, i8* %323, i32 %328)
  br label %353

330:                                              ; preds = %297
  %331 = load i32, i32* %11, align 4
  %332 = icmp sgt i32 %331, 5
  br i1 %332, label %333, label %352

333:                                              ; preds = %330
  %334 = load i8*, i8** %4, align 8
  %335 = load i32, i32* %10, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds i8, i8* %334, i64 %336
  %338 = getelementptr inbounds i8, i8* %337, i64 5
  %339 = load i8*, i8** %4, align 8
  %340 = load i32, i32* %10, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds i8, i8* %339, i64 %341
  %343 = load i32, i32* %11, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i8, i8* %342, i64 %344
  %346 = load i32, i32* %8, align 4
  %347 = load i32, i32* %10, align 4
  %348 = load i32, i32* %11, align 4
  %349 = add nsw i32 %347, %348
  %350 = sub nsw i32 %346, %349
  %351 = call i32 @memmove(i8* %338, i8* %345, i32 %350)
  br label %352

352:                                              ; preds = %333, %330
  br label %353

353:                                              ; preds = %352, %311
  %354 = load i32, i32* %8, align 4
  %355 = load i32, i32* %11, align 4
  %356 = sub nsw i32 %354, %355
  %357 = add nsw i32 %356, 5
  store i32 %357, i32* %8, align 4
  %358 = load i8*, i8** %4, align 8
  %359 = load i32, i32* %8, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds i8, i8* %358, i64 %360
  store i8 0, i8* %361, align 1
  %362 = load i8*, i8** %4, align 8
  %363 = load i32, i32* %10, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds i8, i8* %362, i64 %364
  %366 = call i32 @memcpy(i8* %365, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 5)
  br label %367

367:                                              ; preds = %353, %252, %241, %230
  %368 = load i32, i32* %10, align 4
  store i32 %368, i32* %7, align 4
  br label %201

369:                                              ; preds = %213, %201
  %370 = load i8*, i8** %4, align 8
  store i8* %370, i8** %2, align 8
  br label %371

371:                                              ; preds = %369, %310, %39, %22
  %372 = load i8*, i8** %2, align 8
  ret i8* %372
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @sqlite3_malloc64(i64) #1

declare dso_local i32 @sqlite3GetToken(i8*, i32*) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i32 @sqlite3_strnicmp(i8*, i8*, i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @IdChar(i8 signext) #1

declare dso_local signext i8 @sqlite3Tolower(i8 signext) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i8* @sqlite3_realloc64(i8*, i32) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
