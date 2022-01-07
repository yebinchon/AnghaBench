; ModuleID = '/home/carl/AnghaBench/redis/src/extr_t_set.c_sunionDiffGenericCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_t_set.c_sunionDiffGenericCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i64 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }

@OBJ_SET = common dso_local global i32 0, align 4
@SET_OP_DIFF = common dso_local global i32 0, align 4
@qsortCompareSetsByRevCardinality = common dso_local global i32 0, align 4
@SET_OP_UNION = common dso_local global i32 0, align 4
@server = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@NOTIFY_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"sunionstore\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"sdiffstore\00", align 1
@shared = common dso_local global %struct.TYPE_17__ zeroinitializer, align 4
@NOTIFY_GENERIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"del\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sunionDiffGenericCommand(%struct.TYPE_15__* %0, i32** %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store i32** %1, i32*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = mul i64 8, %23
  %25 = trunc i64 %24 to i32
  %26 = call i32** @zmalloc(i32 %25)
  store i32** %26, i32*** %11, align 8
  store i32* null, i32** %13, align 8
  store i32 0, i32* %16, align 4
  store i32 1, i32* %17, align 4
  store i32 0, i32* %15, align 4
  br label %27

27:                                               ; preds = %78, %5
  %28 = load i32, i32* %15, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %81

31:                                               ; preds = %27
  %32 = load i32*, i32** %9, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %44

34:                                               ; preds = %31
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %36, align 8
  %38 = load i32**, i32*** %7, align 8
  %39 = load i32, i32* %15, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32*, i32** %38, i64 %40
  %42 = load i32*, i32** %41, align 8
  %43 = call i32* @lookupKeyWrite(%struct.TYPE_16__* %37, i32* %42)
  br label %54

44:                                               ; preds = %31
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %46, align 8
  %48 = load i32**, i32*** %7, align 8
  %49 = load i32, i32* %15, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32*, i32** %48, i64 %50
  %52 = load i32*, i32** %51, align 8
  %53 = call i32* @lookupKeyRead(%struct.TYPE_16__* %47, i32* %52)
  br label %54

54:                                               ; preds = %44, %34
  %55 = phi i32* [ %43, %34 ], [ %53, %44 ]
  store i32* %55, i32** %18, align 8
  %56 = load i32*, i32** %18, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %63, label %58

58:                                               ; preds = %54
  %59 = load i32**, i32*** %11, align 8
  %60 = load i32, i32* %15, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32*, i32** %59, i64 %61
  store i32* null, i32** %62, align 8
  br label %78

63:                                               ; preds = %54
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %65 = load i32*, i32** %18, align 8
  %66 = load i32, i32* @OBJ_SET, align 4
  %67 = call i64 @checkType(%struct.TYPE_15__* %64, i32* %65, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load i32**, i32*** %11, align 8
  %71 = call i32 @zfree(i32** %70)
  br label %433

72:                                               ; preds = %63
  %73 = load i32*, i32** %18, align 8
  %74 = load i32**, i32*** %11, align 8
  %75 = load i32, i32* %15, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32*, i32** %74, i64 %76
  store i32* %73, i32** %77, align 8
  br label %78

78:                                               ; preds = %72, %58
  %79 = load i32, i32* %15, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %15, align 4
  br label %27

81:                                               ; preds = %27
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* @SET_OP_DIFF, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %142

85:                                               ; preds = %81
  %86 = load i32**, i32*** %11, align 8
  %87 = getelementptr inbounds i32*, i32** %86, i64 0
  %88 = load i32*, i32** %87, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %90, label %142

90:                                               ; preds = %85
  store i64 0, i64* %19, align 8
  store i64 0, i64* %20, align 8
  store i32 0, i32* %15, align 4
  br label %91

91:                                               ; preds = %118, %90
  %92 = load i32, i32* %15, align 4
  %93 = load i32, i32* %8, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %121

95:                                               ; preds = %91
  %96 = load i32**, i32*** %11, align 8
  %97 = load i32, i32* %15, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32*, i32** %96, i64 %98
  %100 = load i32*, i32** %99, align 8
  %101 = icmp eq i32* %100, null
  br i1 %101, label %102, label %103

102:                                              ; preds = %95
  br label %118

103:                                              ; preds = %95
  %104 = load i32**, i32*** %11, align 8
  %105 = getelementptr inbounds i32*, i32** %104, i64 0
  %106 = load i32*, i32** %105, align 8
  %107 = call i64 @setTypeSize(i32* %106)
  %108 = load i64, i64* %19, align 8
  %109 = add nsw i64 %108, %107
  store i64 %109, i64* %19, align 8
  %110 = load i32**, i32*** %11, align 8
  %111 = load i32, i32* %15, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32*, i32** %110, i64 %112
  %114 = load i32*, i32** %113, align 8
  %115 = call i64 @setTypeSize(i32* %114)
  %116 = load i64, i64* %20, align 8
  %117 = add nsw i64 %116, %115
  store i64 %117, i64* %20, align 8
  br label %118

118:                                              ; preds = %103, %102
  %119 = load i32, i32* %15, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %15, align 4
  br label %91

121:                                              ; preds = %91
  %122 = load i64, i64* %19, align 8
  %123 = sdiv i64 %122, 2
  store i64 %123, i64* %19, align 8
  %124 = load i64, i64* %19, align 8
  %125 = load i64, i64* %20, align 8
  %126 = icmp sle i64 %124, %125
  %127 = zext i1 %126 to i64
  %128 = select i1 %126, i32 1, i32 2
  store i32 %128, i32* %17, align 4
  %129 = load i32, i32* %17, align 4
  %130 = icmp eq i32 %129, 1
  br i1 %130, label %131, label %141

131:                                              ; preds = %121
  %132 = load i32, i32* %8, align 4
  %133 = icmp sgt i32 %132, 1
  br i1 %133, label %134, label %141

134:                                              ; preds = %131
  %135 = load i32**, i32*** %11, align 8
  %136 = getelementptr inbounds i32*, i32** %135, i64 1
  %137 = load i32, i32* %8, align 4
  %138 = sub nsw i32 %137, 1
  %139 = load i32, i32* @qsortCompareSetsByRevCardinality, align 4
  %140 = call i32 @qsort(i32** %136, i32 %138, i32 8, i32 %139)
  br label %141

141:                                              ; preds = %134, %131, %121
  br label %142

142:                                              ; preds = %141, %85, %81
  %143 = call i32* (...) @createIntsetObject()
  store i32* %143, i32** %13, align 8
  %144 = load i32, i32* %10, align 4
  %145 = load i32, i32* @SET_OP_UNION, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %147, label %189

147:                                              ; preds = %142
  store i32 0, i32* %15, align 4
  br label %148

148:                                              ; preds = %185, %147
  %149 = load i32, i32* %15, align 4
  %150 = load i32, i32* %8, align 4
  %151 = icmp slt i32 %149, %150
  br i1 %151, label %152, label %188

152:                                              ; preds = %148
  %153 = load i32**, i32*** %11, align 8
  %154 = load i32, i32* %15, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32*, i32** %153, i64 %155
  %157 = load i32*, i32** %156, align 8
  %158 = icmp ne i32* %157, null
  br i1 %158, label %160, label %159

159:                                              ; preds = %152
  br label %185

160:                                              ; preds = %152
  %161 = load i32**, i32*** %11, align 8
  %162 = load i32, i32* %15, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32*, i32** %161, i64 %163
  %165 = load i32*, i32** %164, align 8
  %166 = call i32* @setTypeInitIterator(i32* %165)
  store i32* %166, i32** %12, align 8
  br label %167

167:                                              ; preds = %179, %160
  %168 = load i32*, i32** %12, align 8
  %169 = call i32* @setTypeNextObject(i32* %168)
  store i32* %169, i32** %14, align 8
  %170 = icmp ne i32* %169, null
  br i1 %170, label %171, label %182

171:                                              ; preds = %167
  %172 = load i32*, i32** %13, align 8
  %173 = load i32*, i32** %14, align 8
  %174 = call i64 @setTypeAdd(i32* %172, i32* %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %171
  %177 = load i32, i32* %16, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %16, align 4
  br label %179

179:                                              ; preds = %176, %171
  %180 = load i32*, i32** %14, align 8
  %181 = call i32 @sdsfree(i32* %180)
  br label %167

182:                                              ; preds = %167
  %183 = load i32*, i32** %12, align 8
  %184 = call i32 @setTypeReleaseIterator(i32* %183)
  br label %185

185:                                              ; preds = %182, %159
  %186 = load i32, i32* %15, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %15, align 4
  br label %148

188:                                              ; preds = %148
  br label %337

189:                                              ; preds = %142
  %190 = load i32, i32* %10, align 4
  %191 = load i32, i32* @SET_OP_DIFF, align 4
  %192 = icmp eq i32 %190, %191
  br i1 %192, label %193, label %264

193:                                              ; preds = %189
  %194 = load i32**, i32*** %11, align 8
  %195 = getelementptr inbounds i32*, i32** %194, i64 0
  %196 = load i32*, i32** %195, align 8
  %197 = icmp ne i32* %196, null
  br i1 %197, label %198, label %264

198:                                              ; preds = %193
  %199 = load i32, i32* %17, align 4
  %200 = icmp eq i32 %199, 1
  br i1 %200, label %201, label %264

201:                                              ; preds = %198
  %202 = load i32**, i32*** %11, align 8
  %203 = getelementptr inbounds i32*, i32** %202, i64 0
  %204 = load i32*, i32** %203, align 8
  %205 = call i32* @setTypeInitIterator(i32* %204)
  store i32* %205, i32** %12, align 8
  br label %206

206:                                              ; preds = %258, %201
  %207 = load i32*, i32** %12, align 8
  %208 = call i32* @setTypeNextObject(i32* %207)
  store i32* %208, i32** %14, align 8
  %209 = icmp ne i32* %208, null
  br i1 %209, label %210, label %261

210:                                              ; preds = %206
  store i32 1, i32* %15, align 4
  br label %211

211:                                              ; preds = %245, %210
  %212 = load i32, i32* %15, align 4
  %213 = load i32, i32* %8, align 4
  %214 = icmp slt i32 %212, %213
  br i1 %214, label %215, label %248

215:                                              ; preds = %211
  %216 = load i32**, i32*** %11, align 8
  %217 = load i32, i32* %15, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32*, i32** %216, i64 %218
  %220 = load i32*, i32** %219, align 8
  %221 = icmp ne i32* %220, null
  br i1 %221, label %223, label %222

222:                                              ; preds = %215
  br label %245

223:                                              ; preds = %215
  %224 = load i32**, i32*** %11, align 8
  %225 = load i32, i32* %15, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32*, i32** %224, i64 %226
  %228 = load i32*, i32** %227, align 8
  %229 = load i32**, i32*** %11, align 8
  %230 = getelementptr inbounds i32*, i32** %229, i64 0
  %231 = load i32*, i32** %230, align 8
  %232 = icmp eq i32* %228, %231
  br i1 %232, label %233, label %234

233:                                              ; preds = %223
  br label %248

234:                                              ; preds = %223
  %235 = load i32**, i32*** %11, align 8
  %236 = load i32, i32* %15, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32*, i32** %235, i64 %237
  %239 = load i32*, i32** %238, align 8
  %240 = load i32*, i32** %14, align 8
  %241 = call i64 @setTypeIsMember(i32* %239, i32* %240)
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %244

243:                                              ; preds = %234
  br label %248

244:                                              ; preds = %234
  br label %245

245:                                              ; preds = %244, %222
  %246 = load i32, i32* %15, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %15, align 4
  br label %211

248:                                              ; preds = %243, %233, %211
  %249 = load i32, i32* %15, align 4
  %250 = load i32, i32* %8, align 4
  %251 = icmp eq i32 %249, %250
  br i1 %251, label %252, label %258

252:                                              ; preds = %248
  %253 = load i32*, i32** %13, align 8
  %254 = load i32*, i32** %14, align 8
  %255 = call i64 @setTypeAdd(i32* %253, i32* %254)
  %256 = load i32, i32* %16, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %16, align 4
  br label %258

258:                                              ; preds = %252, %248
  %259 = load i32*, i32** %14, align 8
  %260 = call i32 @sdsfree(i32* %259)
  br label %206

261:                                              ; preds = %206
  %262 = load i32*, i32** %12, align 8
  %263 = call i32 @setTypeReleaseIterator(i32* %262)
  br label %336

264:                                              ; preds = %198, %193, %189
  %265 = load i32, i32* %10, align 4
  %266 = load i32, i32* @SET_OP_DIFF, align 4
  %267 = icmp eq i32 %265, %266
  br i1 %267, label %268, label %335

268:                                              ; preds = %264
  %269 = load i32**, i32*** %11, align 8
  %270 = getelementptr inbounds i32*, i32** %269, i64 0
  %271 = load i32*, i32** %270, align 8
  %272 = icmp ne i32* %271, null
  br i1 %272, label %273, label %335

273:                                              ; preds = %268
  %274 = load i32, i32* %17, align 4
  %275 = icmp eq i32 %274, 2
  br i1 %275, label %276, label %335

276:                                              ; preds = %273
  store i32 0, i32* %15, align 4
  br label %277

277:                                              ; preds = %331, %276
  %278 = load i32, i32* %15, align 4
  %279 = load i32, i32* %8, align 4
  %280 = icmp slt i32 %278, %279
  br i1 %280, label %281, label %334

281:                                              ; preds = %277
  %282 = load i32**, i32*** %11, align 8
  %283 = load i32, i32* %15, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i32*, i32** %282, i64 %284
  %286 = load i32*, i32** %285, align 8
  %287 = icmp ne i32* %286, null
  br i1 %287, label %289, label %288

288:                                              ; preds = %281
  br label %331

289:                                              ; preds = %281
  %290 = load i32**, i32*** %11, align 8
  %291 = load i32, i32* %15, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i32*, i32** %290, i64 %292
  %294 = load i32*, i32** %293, align 8
  %295 = call i32* @setTypeInitIterator(i32* %294)
  store i32* %295, i32** %12, align 8
  br label %296

296:                                              ; preds = %321, %289
  %297 = load i32*, i32** %12, align 8
  %298 = call i32* @setTypeNextObject(i32* %297)
  store i32* %298, i32** %14, align 8
  %299 = icmp ne i32* %298, null
  br i1 %299, label %300, label %324

300:                                              ; preds = %296
  %301 = load i32, i32* %15, align 4
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %303, label %312

303:                                              ; preds = %300
  %304 = load i32*, i32** %13, align 8
  %305 = load i32*, i32** %14, align 8
  %306 = call i64 @setTypeAdd(i32* %304, i32* %305)
  %307 = icmp ne i64 %306, 0
  br i1 %307, label %308, label %311

308:                                              ; preds = %303
  %309 = load i32, i32* %16, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %16, align 4
  br label %311

311:                                              ; preds = %308, %303
  br label %321

312:                                              ; preds = %300
  %313 = load i32*, i32** %13, align 8
  %314 = load i32*, i32** %14, align 8
  %315 = call i64 @setTypeRemove(i32* %313, i32* %314)
  %316 = icmp ne i64 %315, 0
  br i1 %316, label %317, label %320

317:                                              ; preds = %312
  %318 = load i32, i32* %16, align 4
  %319 = add nsw i32 %318, -1
  store i32 %319, i32* %16, align 4
  br label %320

320:                                              ; preds = %317, %312
  br label %321

321:                                              ; preds = %320, %311
  %322 = load i32*, i32** %14, align 8
  %323 = call i32 @sdsfree(i32* %322)
  br label %296

324:                                              ; preds = %296
  %325 = load i32*, i32** %12, align 8
  %326 = call i32 @setTypeReleaseIterator(i32* %325)
  %327 = load i32, i32* %16, align 4
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %329, label %330

329:                                              ; preds = %324
  br label %334

330:                                              ; preds = %324
  br label %331

331:                                              ; preds = %330, %288
  %332 = load i32, i32* %15, align 4
  %333 = add nsw i32 %332, 1
  store i32 %333, i32* %15, align 4
  br label %277

334:                                              ; preds = %329, %277
  br label %335

335:                                              ; preds = %334, %273, %268, %264
  br label %336

336:                                              ; preds = %335, %261
  br label %337

337:                                              ; preds = %336, %188
  %338 = load i32*, i32** %9, align 8
  %339 = icmp ne i32* %338, null
  br i1 %339, label %371, label %340

340:                                              ; preds = %337
  %341 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %342 = load i32, i32* %16, align 4
  %343 = call i32 @addReplySetLen(%struct.TYPE_15__* %341, i32 %342)
  %344 = load i32*, i32** %13, align 8
  %345 = call i32* @setTypeInitIterator(i32* %344)
  store i32* %345, i32** %12, align 8
  br label %346

346:                                              ; preds = %350, %340
  %347 = load i32*, i32** %12, align 8
  %348 = call i32* @setTypeNextObject(i32* %347)
  store i32* %348, i32** %14, align 8
  %349 = icmp ne i32* %348, null
  br i1 %349, label %350, label %358

350:                                              ; preds = %346
  %351 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %352 = load i32*, i32** %14, align 8
  %353 = load i32*, i32** %14, align 8
  %354 = call i32 @sdslen(i32* %353)
  %355 = call i32 @addReplyBulkCBuffer(%struct.TYPE_15__* %351, i32* %352, i32 %354)
  %356 = load i32*, i32** %14, align 8
  %357 = call i32 @sdsfree(i32* %356)
  br label %346

358:                                              ; preds = %346
  %359 = load i32*, i32** %12, align 8
  %360 = call i32 @setTypeReleaseIterator(i32* %359)
  %361 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @server, i32 0, i32 1), align 8
  %362 = icmp ne i64 %361, 0
  br i1 %362, label %363, label %366

363:                                              ; preds = %358
  %364 = load i32*, i32** %13, align 8
  %365 = call i32 @freeObjAsync(i32* %364)
  br label %369

366:                                              ; preds = %358
  %367 = load i32*, i32** %13, align 8
  %368 = call i32 @decrRefCount(i32* %367)
  br label %369

369:                                              ; preds = %366, %363
  %370 = phi i32 [ %365, %363 ], [ %368, %366 ]
  br label %430

371:                                              ; preds = %337
  %372 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %373 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %372, i32 0, i32 0
  %374 = load %struct.TYPE_16__*, %struct.TYPE_16__** %373, align 8
  %375 = load i32*, i32** %9, align 8
  %376 = call i32 @dbDelete(%struct.TYPE_16__* %374, i32* %375)
  store i32 %376, i32* %21, align 4
  %377 = load i32*, i32** %13, align 8
  %378 = call i64 @setTypeSize(i32* %377)
  %379 = icmp sgt i64 %378, 0
  br i1 %379, label %380, label %404

380:                                              ; preds = %371
  %381 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %382 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %381, i32 0, i32 0
  %383 = load %struct.TYPE_16__*, %struct.TYPE_16__** %382, align 8
  %384 = load i32*, i32** %9, align 8
  %385 = load i32*, i32** %13, align 8
  %386 = call i32 @dbAdd(%struct.TYPE_16__* %383, i32* %384, i32* %385)
  %387 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %388 = load i32*, i32** %13, align 8
  %389 = call i64 @setTypeSize(i32* %388)
  %390 = call i32 @addReplyLongLong(%struct.TYPE_15__* %387, i64 %389)
  %391 = load i32, i32* @NOTIFY_SET, align 4
  %392 = load i32, i32* %10, align 4
  %393 = load i32, i32* @SET_OP_UNION, align 4
  %394 = icmp eq i32 %392, %393
  %395 = zext i1 %394 to i64
  %396 = select i1 %394, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0)
  %397 = load i32*, i32** %9, align 8
  %398 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %399 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %398, i32 0, i32 0
  %400 = load %struct.TYPE_16__*, %struct.TYPE_16__** %399, align 8
  %401 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %400, i32 0, i32 0
  %402 = load i32, i32* %401, align 4
  %403 = call i32 @notifyKeyspaceEvent(i32 %391, i8* %396, i32* %397, i32 %402)
  br label %422

404:                                              ; preds = %371
  %405 = load i32*, i32** %13, align 8
  %406 = call i32 @decrRefCount(i32* %405)
  %407 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %408 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @shared, i32 0, i32 0), align 4
  %409 = call i32 @addReply(%struct.TYPE_15__* %407, i32 %408)
  %410 = load i32, i32* %21, align 4
  %411 = icmp ne i32 %410, 0
  br i1 %411, label %412, label %421

412:                                              ; preds = %404
  %413 = load i32, i32* @NOTIFY_GENERIC, align 4
  %414 = load i32*, i32** %9, align 8
  %415 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %416 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %415, i32 0, i32 0
  %417 = load %struct.TYPE_16__*, %struct.TYPE_16__** %416, align 8
  %418 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %417, i32 0, i32 0
  %419 = load i32, i32* %418, align 4
  %420 = call i32 @notifyKeyspaceEvent(i32 %413, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32* %414, i32 %419)
  br label %421

421:                                              ; preds = %412, %404
  br label %422

422:                                              ; preds = %421, %380
  %423 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %424 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %423, i32 0, i32 0
  %425 = load %struct.TYPE_16__*, %struct.TYPE_16__** %424, align 8
  %426 = load i32*, i32** %9, align 8
  %427 = call i32 @signalModifiedKey(%struct.TYPE_16__* %425, i32* %426)
  %428 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @server, i32 0, i32 0), align 8
  %429 = add nsw i32 %428, 1
  store i32 %429, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @server, i32 0, i32 0), align 8
  br label %430

430:                                              ; preds = %422, %369
  %431 = load i32**, i32*** %11, align 8
  %432 = call i32 @zfree(i32** %431)
  br label %433

433:                                              ; preds = %430, %69
  ret void
}

declare dso_local i32** @zmalloc(i32) #1

declare dso_local i32* @lookupKeyWrite(%struct.TYPE_16__*, i32*) #1

declare dso_local i32* @lookupKeyRead(%struct.TYPE_16__*, i32*) #1

declare dso_local i64 @checkType(%struct.TYPE_15__*, i32*, i32) #1

declare dso_local i32 @zfree(i32**) #1

declare dso_local i64 @setTypeSize(i32*) #1

declare dso_local i32 @qsort(i32**, i32, i32, i32) #1

declare dso_local i32* @createIntsetObject(...) #1

declare dso_local i32* @setTypeInitIterator(i32*) #1

declare dso_local i32* @setTypeNextObject(i32*) #1

declare dso_local i64 @setTypeAdd(i32*, i32*) #1

declare dso_local i32 @sdsfree(i32*) #1

declare dso_local i32 @setTypeReleaseIterator(i32*) #1

declare dso_local i64 @setTypeIsMember(i32*, i32*) #1

declare dso_local i64 @setTypeRemove(i32*, i32*) #1

declare dso_local i32 @addReplySetLen(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @addReplyBulkCBuffer(%struct.TYPE_15__*, i32*, i32) #1

declare dso_local i32 @sdslen(i32*) #1

declare dso_local i32 @freeObjAsync(i32*) #1

declare dso_local i32 @decrRefCount(i32*) #1

declare dso_local i32 @dbDelete(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @dbAdd(%struct.TYPE_16__*, i32*, i32*) #1

declare dso_local i32 @addReplyLongLong(%struct.TYPE_15__*, i64) #1

declare dso_local i32 @notifyKeyspaceEvent(i32, i8*, i32*, i32) #1

declare dso_local i32 @addReply(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @signalModifiedKey(%struct.TYPE_16__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
