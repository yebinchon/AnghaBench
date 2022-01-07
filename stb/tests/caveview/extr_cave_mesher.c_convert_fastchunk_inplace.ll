; ModuleID = '/home/carl/AnghaBench/stb/tests/caveview/extr_cave_mesher.c_convert_fastchunk_inplace.c'
source_filename = "/home/carl/AnghaBench/stb/tests/caveview/extr_cave_mesher.c_convert_fastchunk_inplace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8**, i8**, i8**, i8**, i8* }

@remap = common dso_local global i32* null, align 8
@remap_data = common dso_local global i8** null, align 8
@rotate_data = common dso_local global i8* null, align 8
@effective_blocktype = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @convert_fastchunk_inplace(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [4096 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %20 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i64 0, i64 0
  %21 = call i32 @memset(i8* %20, i32 0, i32 4096)
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %37, %1
  %23 = load i32, i32* %3, align 4
  %24 = icmp slt i32 %23, 16
  br i1 %24, label %25, label %40

25:                                               ; preds = %22
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i8**, i8*** %27, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8*, i8** %28, i64 %30
  %32 = load i8*, i8** %31, align 8
  %33 = icmp ne i8* %32, null
  %34 = zext i1 %33 to i32
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %35, %34
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %25
  %38 = load i32, i32* %3, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %3, align 4
  br label %22

40:                                               ; preds = %22
  %41 = load i32, i32* %4, align 4
  %42 = mul nsw i32 8192, %41
  %43 = call i8* @malloc(i32 %42)
  store i8* %43, i8** %7, align 8
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %443, %40
  %45 = load i32, i32* %3, align 4
  %46 = icmp slt i32 %45, 16
  br i1 %46, label %47, label %446

47:                                               ; preds = %44
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i8**, i8*** %49, align 8
  %51 = load i32, i32* %3, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8*, i8** %50, i64 %52
  %54 = load i8*, i8** %53, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %442

56:                                               ; preds = %47
  store i32 0, i32* %8, align 4
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i8**, i8*** %58, align 8
  %60 = load i32, i32* %3, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8*, i8** %59, i64 %61
  %63 = load i8*, i8** %62, align 8
  store i8* %63, i8** %9, align 8
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = load i8**, i8*** %65, align 8
  %67 = load i32, i32* %3, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8*, i8** %66, i64 %68
  %70 = load i8*, i8** %69, align 8
  store i8* %70, i8** %10, align 8
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 2
  %73 = load i8**, i8*** %72, align 8
  %74 = load i32, i32* %3, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8*, i8** %73, i64 %75
  %77 = load i8*, i8** %76, align 8
  store i8* %77, i8** %11, align 8
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 3
  %80 = load i8**, i8*** %79, align 8
  %81 = load i32, i32* %3, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8*, i8** %80, i64 %82
  %84 = load i8*, i8** %83, align 8
  store i8* %84, i8** %12, align 8
  %85 = load i8*, i8** %7, align 8
  %86 = load i32, i32* %5, align 4
  %87 = mul nsw i32 8192, %86
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %85, i64 %88
  store i8* %89, i8** %13, align 8
  store i32 0, i32* %8, align 4
  br label %90

90:                                               ; preds = %210, %56
  %91 = load i32, i32* %8, align 4
  %92 = icmp slt i32 %91, 2048
  br i1 %92, label %93, label %213

93:                                               ; preds = %90
  %94 = load i8*, i8** %10, align 8
  %95 = load i32, i32* %8, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %94, i64 %96
  %98 = load i8, i8* %97, align 1
  store i8 %98, i8* %17, align 1
  %99 = load i8*, i8** %9, align 8
  %100 = load i32, i32* %8, align 4
  %101 = mul nsw i32 %100, 2
  %102 = add nsw i32 %101, 0
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %99, i64 %103
  %105 = load i8, i8* %104, align 1
  store i8 %105, i8* %15, align 1
  %106 = load i8*, i8** %9, align 8
  %107 = load i32, i32* %8, align 4
  %108 = mul nsw i32 %107, 2
  %109 = add nsw i32 %108, 1
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8, i8* %106, i64 %110
  %112 = load i8, i8* %111, align 1
  store i8 %112, i8* %16, align 1
  %113 = load i32*, i32** @remap, align 8
  %114 = load i8, i8* %15, align 1
  %115 = zext i8 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %147

119:                                              ; preds = %93
  %120 = load i8**, i8*** @remap_data, align 8
  %121 = load i32*, i32** @remap, align 8
  %122 = load i8, i8* %15, align 1
  %123 = zext i8 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8*, i8** %120, i64 %126
  %128 = load i8*, i8** %127, align 8
  %129 = load i8, i8* %17, align 1
  %130 = zext i8 %129 to i32
  %131 = and i32 %130, 15
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8, i8* %128, i64 %132
  %134 = load i8, i8* %133, align 1
  store i8 %134, i8* %15, align 1
  %135 = load i8*, i8** @rotate_data, align 8
  %136 = load i8, i8* %17, align 1
  %137 = zext i8 %136 to i32
  %138 = and i32 %137, 3
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8, i8* %135, i64 %139
  %141 = load i8, i8* %140, align 1
  %142 = load i32, i32* %8, align 4
  %143 = mul nsw i32 %142, 2
  %144 = add nsw i32 %143, 0
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i64 0, i64 %145
  store i8 %141, i8* %146, align 1
  br label %153

147:                                              ; preds = %93
  %148 = load i8*, i8** @effective_blocktype, align 8
  %149 = load i8, i8* %15, align 1
  %150 = zext i8 %149 to i64
  %151 = getelementptr inbounds i8, i8* %148, i64 %150
  %152 = load i8, i8* %151, align 1
  store i8 %152, i8* %15, align 1
  br label %153

153:                                              ; preds = %147, %119
  %154 = load i32*, i32** @remap, align 8
  %155 = load i8, i8* %16, align 1
  %156 = zext i8 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %189

160:                                              ; preds = %153
  %161 = load i8**, i8*** @remap_data, align 8
  %162 = load i32*, i32** @remap, align 8
  %163 = load i8, i8* %16, align 1
  %164 = zext i8 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i8*, i8** %161, i64 %167
  %169 = load i8*, i8** %168, align 8
  %170 = load i8, i8* %17, align 1
  %171 = zext i8 %170 to i32
  %172 = ashr i32 %171, 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i8, i8* %169, i64 %173
  %175 = load i8, i8* %174, align 1
  store i8 %175, i8* %16, align 1
  %176 = load i8*, i8** @rotate_data, align 8
  %177 = load i8, i8* %17, align 1
  %178 = zext i8 %177 to i32
  %179 = ashr i32 %178, 4
  %180 = and i32 %179, 3
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i8, i8* %176, i64 %181
  %183 = load i8, i8* %182, align 1
  %184 = load i32, i32* %8, align 4
  %185 = mul nsw i32 %184, 2
  %186 = add nsw i32 %185, 1
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i64 0, i64 %187
  store i8 %183, i8* %188, align 1
  br label %195

189:                                              ; preds = %153
  %190 = load i8*, i8** @effective_blocktype, align 8
  %191 = load i8, i8* %16, align 1
  %192 = zext i8 %191 to i64
  %193 = getelementptr inbounds i8, i8* %190, i64 %192
  %194 = load i8, i8* %193, align 1
  store i8 %194, i8* %16, align 1
  br label %195

195:                                              ; preds = %189, %160
  %196 = load i8, i8* %15, align 1
  %197 = load i8*, i8** %13, align 8
  %198 = load i32, i32* %8, align 4
  %199 = mul nsw i32 %198, 2
  %200 = add nsw i32 %199, 0
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i8, i8* %197, i64 %201
  store i8 %196, i8* %202, align 1
  %203 = load i8, i8* %16, align 1
  %204 = load i8*, i8** %13, align 8
  %205 = load i32, i32* %8, align 4
  %206 = mul nsw i32 %205, 2
  %207 = add nsw i32 %206, 1
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i8, i8* %204, i64 %208
  store i8 %203, i8* %209, align 1
  br label %210

210:                                              ; preds = %195
  %211 = load i32, i32* %8, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %8, align 4
  br label %90

213:                                              ; preds = %90
  %214 = load i8*, i8** %13, align 8
  %215 = getelementptr inbounds i8, i8* %214, i64 4096
  store i8* %215, i8** %14, align 8
  %216 = load i32, i32* %5, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %5, align 4
  %218 = load i8*, i8** %10, align 8
  %219 = load i8*, i8** %12, align 8
  %220 = icmp ult i8* %218, %219
  br i1 %220, label %221, label %322

221:                                              ; preds = %213
  %222 = load i8*, i8** %12, align 8
  %223 = load i8*, i8** %11, align 8
  %224 = icmp ult i8* %222, %223
  br i1 %224, label %225, label %322

225:                                              ; preds = %221
  store i32 0, i32* %8, align 4
  br label %226

226:                                              ; preds = %318, %225
  %227 = load i32, i32* %8, align 4
  %228 = icmp slt i32 %227, 2048
  br i1 %228, label %229, label %321

229:                                              ; preds = %226
  %230 = load i8*, i8** %11, align 8
  %231 = load i32, i32* %8, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i8, i8* %230, i64 %232
  %234 = load i8, i8* %233, align 1
  %235 = zext i8 %234 to i32
  %236 = and i32 %235, 15
  %237 = mul nsw i32 %236, 12
  %238 = add nsw i32 %237, 15
  %239 = load i8*, i8** %12, align 8
  %240 = load i32, i32* %8, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i8, i8* %239, i64 %241
  %243 = load i8, i8* %242, align 1
  %244 = zext i8 %243 to i32
  %245 = and i32 %244, 15
  %246 = mul nsw i32 %245, 16
  %247 = add nsw i32 %238, %246
  store i32 %247, i32* %18, align 4
  %248 = load i32, i32* %18, align 4
  %249 = icmp sgt i32 %248, 255
  br i1 %249, label %250, label %251

250:                                              ; preds = %229
  store i32 255, i32* %18, align 4
  br label %251

251:                                              ; preds = %250, %229
  %252 = load i32, i32* %18, align 4
  %253 = icmp slt i32 %252, 32
  br i1 %253, label %254, label %255

254:                                              ; preds = %251
  store i32 32, i32* %18, align 4
  br label %255

255:                                              ; preds = %254, %251
  %256 = load i32, i32* %18, align 4
  %257 = trunc i32 %256 to i8
  %258 = load i32, i32* %8, align 4
  %259 = mul nsw i32 %258, 2
  %260 = add nsw i32 %259, 0
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i64 0, i64 %261
  %263 = load i8, i8* %262, align 1
  %264 = zext i8 %263 to i32
  %265 = and i32 %264, 3
  %266 = trunc i32 %265 to i8
  %267 = call zeroext i8 @STBVOX_MAKE_LIGHTING_EXT(i8 zeroext %257, i8 zeroext %266)
  %268 = load i8*, i8** %14, align 8
  %269 = load i32, i32* %8, align 4
  %270 = mul nsw i32 %269, 2
  %271 = add nsw i32 %270, 0
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i8, i8* %268, i64 %272
  store i8 %267, i8* %273, align 1
  %274 = load i8*, i8** %11, align 8
  %275 = load i32, i32* %8, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i8, i8* %274, i64 %276
  %278 = load i8, i8* %277, align 1
  %279 = zext i8 %278 to i32
  %280 = ashr i32 %279, 4
  %281 = mul nsw i32 %280, 12
  %282 = add nsw i32 %281, 15
  %283 = load i8*, i8** %12, align 8
  %284 = load i32, i32* %8, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i8, i8* %283, i64 %285
  %287 = load i8, i8* %286, align 1
  %288 = zext i8 %287 to i32
  %289 = ashr i32 %288, 4
  %290 = mul nsw i32 %289, 16
  %291 = add nsw i32 %282, %290
  store i32 %291, i32* %18, align 4
  %292 = load i32, i32* %18, align 4
  %293 = icmp sgt i32 %292, 255
  br i1 %293, label %294, label %295

294:                                              ; preds = %255
  store i32 255, i32* %18, align 4
  br label %295

295:                                              ; preds = %294, %255
  %296 = load i32, i32* %18, align 4
  %297 = icmp slt i32 %296, 32
  br i1 %297, label %298, label %299

298:                                              ; preds = %295
  store i32 32, i32* %18, align 4
  br label %299

299:                                              ; preds = %298, %295
  %300 = load i32, i32* %18, align 4
  %301 = trunc i32 %300 to i8
  %302 = load i32, i32* %8, align 4
  %303 = mul nsw i32 %302, 2
  %304 = add nsw i32 %303, 1
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i64 0, i64 %305
  %307 = load i8, i8* %306, align 1
  %308 = zext i8 %307 to i32
  %309 = and i32 %308, 3
  %310 = trunc i32 %309 to i8
  %311 = call zeroext i8 @STBVOX_MAKE_LIGHTING_EXT(i8 zeroext %301, i8 zeroext %310)
  %312 = load i8*, i8** %14, align 8
  %313 = load i32, i32* %8, align 4
  %314 = mul nsw i32 %313, 2
  %315 = add nsw i32 %314, 1
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds i8, i8* %312, i64 %316
  store i8 %311, i8* %317, align 1
  br label %318

318:                                              ; preds = %299
  %319 = load i32, i32* %8, align 4
  %320 = add nsw i32 %319, 1
  store i32 %320, i32* %8, align 4
  br label %226

321:                                              ; preds = %226
  br label %427

322:                                              ; preds = %221, %213
  store i32 0, i32* %8, align 4
  br label %323

323:                                              ; preds = %413, %322
  %324 = load i32, i32* %8, align 4
  %325 = icmp slt i32 %324, 2048
  br i1 %325, label %326, label %416

326:                                              ; preds = %323
  %327 = load i8*, i8** %11, align 8
  %328 = load i32, i32* %8, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds i8, i8* %327, i64 %329
  %331 = load i8, i8* %330, align 1
  %332 = zext i8 %331 to i32
  %333 = and i32 %332, 15
  %334 = mul nsw i32 %333, 12
  %335 = add nsw i32 %334, 15
  %336 = load i8*, i8** %12, align 8
  %337 = load i32, i32* %8, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds i8, i8* %336, i64 %338
  %340 = load i8, i8* %339, align 1
  %341 = zext i8 %340 to i32
  %342 = and i32 %341, 15
  %343 = mul nsw i32 %342, 16
  %344 = add nsw i32 %335, %343
  store i32 %344, i32* %19, align 4
  %345 = load i32, i32* %19, align 4
  %346 = icmp sgt i32 %345, 255
  br i1 %346, label %347, label %348

347:                                              ; preds = %326
  store i32 255, i32* %19, align 4
  br label %348

348:                                              ; preds = %347, %326
  %349 = load i32, i32* %19, align 4
  %350 = icmp slt i32 %349, 32
  br i1 %350, label %351, label %352

351:                                              ; preds = %348
  store i32 32, i32* %19, align 4
  br label %352

352:                                              ; preds = %351, %348
  %353 = load i32, i32* %19, align 4
  %354 = trunc i32 %353 to i8
  %355 = load i32, i32* %8, align 4
  %356 = mul nsw i32 %355, 2
  %357 = add nsw i32 %356, 0
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i64 0, i64 %358
  %360 = load i8, i8* %359, align 1
  %361 = zext i8 %360 to i32
  %362 = and i32 %361, 3
  %363 = trunc i32 %362 to i8
  %364 = call zeroext i8 @STBVOX_MAKE_LIGHTING_EXT(i8 zeroext %354, i8 zeroext %363)
  %365 = load i32, i32* %8, align 4
  %366 = mul nsw i32 %365, 2
  %367 = add nsw i32 %366, 0
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i64 0, i64 %368
  store i8 %364, i8* %369, align 1
  %370 = load i8*, i8** %11, align 8
  %371 = load i32, i32* %8, align 4
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds i8, i8* %370, i64 %372
  %374 = load i8, i8* %373, align 1
  %375 = zext i8 %374 to i32
  %376 = ashr i32 %375, 4
  %377 = mul nsw i32 %376, 12
  %378 = add nsw i32 %377, 15
  %379 = load i8*, i8** %12, align 8
  %380 = load i32, i32* %8, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds i8, i8* %379, i64 %381
  %383 = load i8, i8* %382, align 1
  %384 = zext i8 %383 to i32
  %385 = ashr i32 %384, 4
  %386 = mul nsw i32 %385, 16
  %387 = add nsw i32 %378, %386
  store i32 %387, i32* %19, align 4
  %388 = load i32, i32* %19, align 4
  %389 = icmp sgt i32 %388, 255
  br i1 %389, label %390, label %391

390:                                              ; preds = %352
  store i32 255, i32* %19, align 4
  br label %391

391:                                              ; preds = %390, %352
  %392 = load i32, i32* %19, align 4
  %393 = icmp slt i32 %392, 32
  br i1 %393, label %394, label %395

394:                                              ; preds = %391
  store i32 32, i32* %19, align 4
  br label %395

395:                                              ; preds = %394, %391
  %396 = load i32, i32* %19, align 4
  %397 = trunc i32 %396 to i8
  %398 = load i32, i32* %8, align 4
  %399 = mul nsw i32 %398, 2
  %400 = add nsw i32 %399, 1
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i64 0, i64 %401
  %403 = load i8, i8* %402, align 1
  %404 = zext i8 %403 to i32
  %405 = and i32 %404, 3
  %406 = trunc i32 %405 to i8
  %407 = call zeroext i8 @STBVOX_MAKE_LIGHTING_EXT(i8 zeroext %397, i8 zeroext %406)
  %408 = load i32, i32* %8, align 4
  %409 = mul nsw i32 %408, 2
  %410 = add nsw i32 %409, 1
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i64 0, i64 %411
  store i8 %407, i8* %412, align 1
  br label %413

413:                                              ; preds = %395
  %414 = load i32, i32* %8, align 4
  %415 = add nsw i32 %414, 1
  store i32 %415, i32* %8, align 4
  br label %323

416:                                              ; preds = %323
  %417 = load i8*, i8** %14, align 8
  %418 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i64 0, i64 0
  %419 = call i32 @memcpy(i8* %417, i8* %418, i32 4096)
  %420 = load i8*, i8** %14, align 8
  %421 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %422 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %421, i32 0, i32 1
  %423 = load i8**, i8*** %422, align 8
  %424 = load i32, i32* %3, align 4
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds i8*, i8** %423, i64 %425
  store i8* %420, i8** %426, align 8
  br label %427

427:                                              ; preds = %416, %321
  %428 = load i8*, i8** %13, align 8
  %429 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %430 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %429, i32 0, i32 0
  %431 = load i8**, i8*** %430, align 8
  %432 = load i32, i32* %3, align 4
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds i8*, i8** %431, i64 %433
  store i8* %428, i8** %434, align 8
  %435 = load i8*, i8** %14, align 8
  %436 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %437 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %436, i32 0, i32 1
  %438 = load i8**, i8*** %437, align 8
  %439 = load i32, i32* %3, align 4
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds i8*, i8** %438, i64 %440
  store i8* %435, i8** %441, align 8
  br label %442

442:                                              ; preds = %427, %47
  br label %443

443:                                              ; preds = %442
  %444 = load i32, i32* %3, align 4
  %445 = add nsw i32 %444, 1
  store i32 %445, i32* %3, align 4
  br label %44

446:                                              ; preds = %44
  %447 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %448 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %447, i32 0, i32 4
  %449 = load i8*, i8** %448, align 8
  %450 = call i32 @free(i8* %449)
  %451 = load i8*, i8** %7, align 8
  %452 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %453 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %452, i32 0, i32 4
  store i8* %451, i8** %453, align 8
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local zeroext i8 @STBVOX_MAKE_LIGHTING_EXT(i8 zeroext, i8 zeroext) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
