; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_uri.c_xmlNormalizeURIPath.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_uri.c_xmlNormalizeURIPath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlNormalizeURIPath(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %349

11:                                               ; preds = %1
  %12 = load i8*, i8** %3, align 8
  store i8* %12, i8** %4, align 8
  br label %13

13:                                               ; preds = %19, %11
  %14 = load i8*, i8** %4, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 47
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load i8*, i8** %4, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %4, align 8
  br label %13

22:                                               ; preds = %13
  %23 = load i8*, i8** %4, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %349

29:                                               ; preds = %22
  %30 = load i8*, i8** %4, align 8
  store i8* %30, i8** %5, align 8
  br label %31

31:                                               ; preds = %115, %61, %29
  %32 = load i8*, i8** %4, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %123

37:                                               ; preds = %31
  %38 = load i8*, i8** %4, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 46
  br i1 %42, label %43, label %62

43:                                               ; preds = %37
  %44 = load i8*, i8** %4, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 47
  br i1 %48, label %49, label %62

49:                                               ; preds = %43
  %50 = load i8*, i8** %4, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 2
  store i8* %51, i8** %4, align 8
  br label %52

52:                                               ; preds = %58, %49
  %53 = load i8*, i8** %4, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 0
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 47
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load i8*, i8** %4, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %4, align 8
  br label %52

61:                                               ; preds = %52
  br label %31

62:                                               ; preds = %43, %37
  %63 = load i8*, i8** %4, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 0
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 46
  br i1 %67, label %68, label %75

68:                                               ; preds = %62
  %69 = load i8*, i8** %4, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 1
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  br label %123

75:                                               ; preds = %68, %62
  br label %76

76:                                               ; preds = %89, %75
  %77 = load i8*, i8** %4, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 0
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp ne i32 %80, 47
  br i1 %81, label %82, label %97

82:                                               ; preds = %76
  %83 = load i8*, i8** %4, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 0
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  br label %124

89:                                               ; preds = %82
  %90 = load i8*, i8** %4, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** %4, align 8
  %92 = getelementptr inbounds i8, i8* %90, i64 0
  %93 = load i8, i8* %92, align 1
  %94 = load i8*, i8** %5, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %5, align 8
  %96 = getelementptr inbounds i8, i8* %94, i64 0
  store i8 %93, i8* %96, align 1
  br label %76

97:                                               ; preds = %76
  br label %98

98:                                               ; preds = %112, %97
  %99 = load i8*, i8** %4, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 0
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp eq i32 %102, 47
  br i1 %103, label %104, label %110

104:                                              ; preds = %98
  %105 = load i8*, i8** %4, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 1
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp eq i32 %108, 47
  br label %110

110:                                              ; preds = %104, %98
  %111 = phi i1 [ false, %98 ], [ %109, %104 ]
  br i1 %111, label %112, label %115

112:                                              ; preds = %110
  %113 = load i8*, i8** %4, align 8
  %114 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %114, i8** %4, align 8
  br label %98

115:                                              ; preds = %110
  %116 = load i8*, i8** %4, align 8
  %117 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %117, i8** %4, align 8
  %118 = getelementptr inbounds i8, i8* %116, i64 0
  %119 = load i8, i8* %118, align 1
  %120 = load i8*, i8** %5, align 8
  %121 = getelementptr inbounds i8, i8* %120, i32 1
  store i8* %121, i8** %5, align 8
  %122 = getelementptr inbounds i8, i8* %120, i64 0
  store i8 %119, i8* %122, align 1
  br label %31

123:                                              ; preds = %74, %31
  br label %124

124:                                              ; preds = %123, %88
  %125 = load i8*, i8** %5, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 0
  store i8 0, i8* %126, align 1
  %127 = load i8*, i8** %3, align 8
  store i8* %127, i8** %4, align 8
  br label %128

128:                                              ; preds = %134, %124
  %129 = load i8*, i8** %4, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 0
  %131 = load i8, i8* %130, align 1
  %132 = sext i8 %131 to i32
  %133 = icmp eq i32 %132, 47
  br i1 %133, label %134, label %137

134:                                              ; preds = %128
  %135 = load i8*, i8** %4, align 8
  %136 = getelementptr inbounds i8, i8* %135, i32 1
  store i8* %136, i8** %4, align 8
  br label %128

137:                                              ; preds = %128
  %138 = load i8*, i8** %4, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 0
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %137
  store i32 0, i32* %2, align 4
  br label %349

144:                                              ; preds = %137
  br label %145

145:                                              ; preds = %144, %214, %258, %276
  %146 = load i8*, i8** %4, align 8
  store i8* %146, i8** %6, align 8
  br label %147

147:                                              ; preds = %161, %145
  %148 = load i8*, i8** %6, align 8
  %149 = getelementptr inbounds i8, i8* %148, i64 0
  %150 = load i8, i8* %149, align 1
  %151 = sext i8 %150 to i32
  %152 = icmp ne i32 %151, 47
  br i1 %152, label %153, label %159

153:                                              ; preds = %147
  %154 = load i8*, i8** %6, align 8
  %155 = getelementptr inbounds i8, i8* %154, i64 0
  %156 = load i8, i8* %155, align 1
  %157 = sext i8 %156 to i32
  %158 = icmp ne i32 %157, 0
  br label %159

159:                                              ; preds = %153, %147
  %160 = phi i1 [ false, %147 ], [ %158, %153 ]
  br i1 %160, label %161, label %164

161:                                              ; preds = %159
  %162 = load i8*, i8** %6, align 8
  %163 = getelementptr inbounds i8, i8* %162, i32 1
  store i8* %163, i8** %6, align 8
  br label %147

164:                                              ; preds = %159
  %165 = load i8*, i8** %6, align 8
  %166 = getelementptr inbounds i8, i8* %165, i64 0
  %167 = load i8, i8* %166, align 1
  %168 = sext i8 %167 to i32
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %164
  br label %277

171:                                              ; preds = %164
  %172 = load i8*, i8** %6, align 8
  %173 = getelementptr inbounds i8, i8* %172, i32 1
  store i8* %173, i8** %6, align 8
  %174 = load i8*, i8** %4, align 8
  %175 = getelementptr inbounds i8, i8* %174, i64 0
  %176 = load i8, i8* %175, align 1
  %177 = sext i8 %176 to i32
  %178 = icmp eq i32 %177, 46
  br i1 %178, label %179, label %190

179:                                              ; preds = %171
  %180 = load i8*, i8** %4, align 8
  %181 = getelementptr inbounds i8, i8* %180, i64 1
  %182 = load i8, i8* %181, align 1
  %183 = sext i8 %182 to i32
  %184 = icmp eq i32 %183, 46
  br i1 %184, label %185, label %190

185:                                              ; preds = %179
  %186 = load i8*, i8** %6, align 8
  %187 = load i8*, i8** %4, align 8
  %188 = getelementptr inbounds i8, i8* %187, i64 3
  %189 = icmp eq i8* %186, %188
  br i1 %189, label %214, label %190

190:                                              ; preds = %185, %179, %171
  %191 = load i8*, i8** %6, align 8
  %192 = getelementptr inbounds i8, i8* %191, i64 0
  %193 = load i8, i8* %192, align 1
  %194 = sext i8 %193 to i32
  %195 = icmp ne i32 %194, 46
  br i1 %195, label %214, label %196

196:                                              ; preds = %190
  %197 = load i8*, i8** %6, align 8
  %198 = getelementptr inbounds i8, i8* %197, i64 1
  %199 = load i8, i8* %198, align 1
  %200 = sext i8 %199 to i32
  %201 = icmp ne i32 %200, 46
  br i1 %201, label %214, label %202

202:                                              ; preds = %196
  %203 = load i8*, i8** %6, align 8
  %204 = getelementptr inbounds i8, i8* %203, i64 2
  %205 = load i8, i8* %204, align 1
  %206 = sext i8 %205 to i32
  %207 = icmp ne i32 %206, 47
  br i1 %207, label %208, label %216

208:                                              ; preds = %202
  %209 = load i8*, i8** %6, align 8
  %210 = getelementptr inbounds i8, i8* %209, i64 2
  %211 = load i8, i8* %210, align 1
  %212 = sext i8 %211 to i32
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %216

214:                                              ; preds = %208, %196, %190, %185
  %215 = load i8*, i8** %6, align 8
  store i8* %215, i8** %4, align 8
  br label %145

216:                                              ; preds = %208, %202
  %217 = load i8*, i8** %6, align 8
  %218 = getelementptr inbounds i8, i8* %217, i64 2
  %219 = load i8, i8* %218, align 1
  %220 = sext i8 %219 to i32
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %222, label %225

222:                                              ; preds = %216
  %223 = load i8*, i8** %4, align 8
  %224 = getelementptr inbounds i8, i8* %223, i64 0
  store i8 0, i8* %224, align 1
  br label %277

225:                                              ; preds = %216
  %226 = load i8*, i8** %4, align 8
  store i8* %226, i8** %7, align 8
  %227 = load i8*, i8** %6, align 8
  %228 = getelementptr inbounds i8, i8* %227, i64 3
  store i8* %228, i8** %6, align 8
  br label %229

229:                                              ; preds = %237, %225
  %230 = load i8*, i8** %6, align 8
  %231 = getelementptr inbounds i8, i8* %230, i32 1
  store i8* %231, i8** %6, align 8
  %232 = load i8, i8* %230, align 1
  %233 = load i8*, i8** %7, align 8
  %234 = getelementptr inbounds i8, i8* %233, i32 1
  store i8* %234, i8** %7, align 8
  store i8 %232, i8* %233, align 1
  %235 = sext i8 %232 to i32
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %238

237:                                              ; preds = %229
  br label %229

238:                                              ; preds = %229
  %239 = load i8*, i8** %4, align 8
  store i8* %239, i8** %6, align 8
  br label %240

240:                                              ; preds = %253, %238
  %241 = load i8*, i8** %6, align 8
  %242 = load i8*, i8** %3, align 8
  %243 = icmp ugt i8* %241, %242
  br i1 %243, label %244, label %251

244:                                              ; preds = %240
  %245 = load i8*, i8** %6, align 8
  %246 = getelementptr inbounds i8, i8* %245, i32 -1
  store i8* %246, i8** %6, align 8
  %247 = getelementptr inbounds i8, i8* %246, i64 0
  %248 = load i8, i8* %247, align 1
  %249 = sext i8 %248 to i32
  %250 = icmp eq i32 %249, 47
  br label %251

251:                                              ; preds = %244, %240
  %252 = phi i1 [ false, %240 ], [ %250, %244 ]
  br i1 %252, label %253, label %254

253:                                              ; preds = %251
  br label %240

254:                                              ; preds = %251
  %255 = load i8*, i8** %6, align 8
  %256 = load i8*, i8** %3, align 8
  %257 = icmp eq i8* %255, %256
  br i1 %257, label %258, label %259

258:                                              ; preds = %254
  br label %145

259:                                              ; preds = %254
  %260 = load i8*, i8** %6, align 8
  store i8* %260, i8** %4, align 8
  br label %261

261:                                              ; preds = %273, %259
  %262 = load i8*, i8** %4, align 8
  %263 = load i8*, i8** %3, align 8
  %264 = icmp ugt i8* %262, %263
  br i1 %264, label %265, label %271

265:                                              ; preds = %261
  %266 = load i8*, i8** %4, align 8
  %267 = getelementptr inbounds i8, i8* %266, i64 -1
  %268 = load i8, i8* %267, align 1
  %269 = sext i8 %268 to i32
  %270 = icmp ne i32 %269, 47
  br label %271

271:                                              ; preds = %265, %261
  %272 = phi i1 [ false, %261 ], [ %270, %265 ]
  br i1 %272, label %273, label %276

273:                                              ; preds = %271
  %274 = load i8*, i8** %4, align 8
  %275 = getelementptr inbounds i8, i8* %274, i32 -1
  store i8* %275, i8** %4, align 8
  br label %261

276:                                              ; preds = %271
  br label %145

277:                                              ; preds = %222, %170
  %278 = load i8*, i8** %5, align 8
  %279 = getelementptr inbounds i8, i8* %278, i64 0
  store i8 0, i8* %279, align 1
  %280 = load i8*, i8** %3, align 8
  %281 = getelementptr inbounds i8, i8* %280, i64 0
  %282 = load i8, i8* %281, align 1
  %283 = sext i8 %282 to i32
  %284 = icmp eq i32 %283, 47
  br i1 %284, label %285, label %348

285:                                              ; preds = %277
  %286 = load i8*, i8** %3, align 8
  store i8* %286, i8** %4, align 8
  br label %287

287:                                              ; preds = %321, %285
  %288 = load i8*, i8** %4, align 8
  %289 = getelementptr inbounds i8, i8* %288, i64 0
  %290 = load i8, i8* %289, align 1
  %291 = sext i8 %290 to i32
  %292 = icmp eq i32 %291, 47
  br i1 %292, label %293, label %319

293:                                              ; preds = %287
  %294 = load i8*, i8** %4, align 8
  %295 = getelementptr inbounds i8, i8* %294, i64 1
  %296 = load i8, i8* %295, align 1
  %297 = sext i8 %296 to i32
  %298 = icmp eq i32 %297, 46
  br i1 %298, label %299, label %319

299:                                              ; preds = %293
  %300 = load i8*, i8** %4, align 8
  %301 = getelementptr inbounds i8, i8* %300, i64 2
  %302 = load i8, i8* %301, align 1
  %303 = sext i8 %302 to i32
  %304 = icmp eq i32 %303, 46
  br i1 %304, label %305, label %319

305:                                              ; preds = %299
  %306 = load i8*, i8** %4, align 8
  %307 = getelementptr inbounds i8, i8* %306, i64 3
  %308 = load i8, i8* %307, align 1
  %309 = sext i8 %308 to i32
  %310 = icmp eq i32 %309, 47
  br i1 %310, label %317, label %311

311:                                              ; preds = %305
  %312 = load i8*, i8** %4, align 8
  %313 = getelementptr inbounds i8, i8* %312, i64 3
  %314 = load i8, i8* %313, align 1
  %315 = sext i8 %314 to i32
  %316 = icmp eq i32 %315, 0
  br label %317

317:                                              ; preds = %311, %305
  %318 = phi i1 [ true, %305 ], [ %316, %311 ]
  br label %319

319:                                              ; preds = %317, %299, %293, %287
  %320 = phi i1 [ false, %299 ], [ false, %293 ], [ false, %287 ], [ %318, %317 ]
  br i1 %320, label %321, label %324

321:                                              ; preds = %319
  %322 = load i8*, i8** %4, align 8
  %323 = getelementptr inbounds i8, i8* %322, i64 3
  store i8* %323, i8** %4, align 8
  br label %287

324:                                              ; preds = %319
  %325 = load i8*, i8** %4, align 8
  %326 = load i8*, i8** %3, align 8
  %327 = icmp ne i8* %325, %326
  br i1 %327, label %328, label %347

328:                                              ; preds = %324
  %329 = load i8*, i8** %3, align 8
  store i8* %329, i8** %5, align 8
  br label %330

330:                                              ; preds = %336, %328
  %331 = load i8*, i8** %4, align 8
  %332 = getelementptr inbounds i8, i8* %331, i64 0
  %333 = load i8, i8* %332, align 1
  %334 = sext i8 %333 to i32
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %344

336:                                              ; preds = %330
  %337 = load i8*, i8** %4, align 8
  %338 = getelementptr inbounds i8, i8* %337, i32 1
  store i8* %338, i8** %4, align 8
  %339 = getelementptr inbounds i8, i8* %337, i64 0
  %340 = load i8, i8* %339, align 1
  %341 = load i8*, i8** %5, align 8
  %342 = getelementptr inbounds i8, i8* %341, i32 1
  store i8* %342, i8** %5, align 8
  %343 = getelementptr inbounds i8, i8* %341, i64 0
  store i8 %340, i8* %343, align 1
  br label %330

344:                                              ; preds = %330
  %345 = load i8*, i8** %5, align 8
  %346 = getelementptr inbounds i8, i8* %345, i64 0
  store i8 0, i8* %346, align 1
  br label %347

347:                                              ; preds = %344, %324
  br label %348

348:                                              ; preds = %347, %277
  store i32 0, i32* %2, align 4
  br label %349

349:                                              ; preds = %348, %143, %28, %10
  %350 = load i32, i32* %2, align 4
  ret i32 %350
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
