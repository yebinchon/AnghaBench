; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_picture_tools_enc.c_WebPCleanupTransparentArea.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_picture_tools_enc.c_WebPCleanupTransparentArea.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i64 }

@SIZE = common dso_local global i32 0, align 4
@SIZE2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @WebPCleanupTransparentArea(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca [3 x i32], align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %23 = icmp eq %struct.TYPE_3__* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  br label %339

25:                                               ; preds = %1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @SIZE, align 4
  %30 = sdiv i32 %28, %29
  store i32 %30, i32* %5, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @SIZE, align 4
  %35 = sdiv i32 %33, %34
  store i32 %35, i32* %6, align 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 11
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %106

40:                                               ; preds = %25
  store i32 0, i32* %7, align 4
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %102, %40
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %105

45:                                               ; preds = %41
  store i32 1, i32* %8, align 4
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %98, %45
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %101

50:                                               ; preds = %46
  %51 = load i32, i32* %4, align 4
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = mul nsw i32 %51, %54
  %56 = load i32, i32* %3, align 4
  %57 = add nsw i32 %55, %56
  %58 = load i32, i32* @SIZE, align 4
  %59 = mul nsw i32 %57, %58
  store i32 %59, i32* %9, align 4
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 10
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @SIZE, align 4
  %70 = call i64 @IsTransparentARGBArea(i32* %65, i32 %68, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %96

72:                                               ; preds = %50
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %72
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 10
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %83

83:                                               ; preds = %75, %72
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 10
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %9, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %7, align 4
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @SIZE, align 4
  %95 = call i32 @FlattenARGB(i32* %89, i32 %90, i32 %93, i32 %94)
  br label %97

96:                                               ; preds = %50
  store i32 1, i32* %8, align 4
  br label %97

97:                                               ; preds = %96, %83
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %3, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %3, align 4
  br label %46

101:                                              ; preds = %46
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %4, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %4, align 4
  br label %41

105:                                              ; preds = %41
  br label %339

106:                                              ; preds = %25
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  store i32 %109, i32* %10, align 4
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  store i32 %112, i32* %11, align 4
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  store i32 %115, i32* %12, align 4
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 8
  store i32 %118, i32* %13, align 4
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 5
  %121 = load i32, i32* %120, align 4
  store i32 %121, i32* %14, align 4
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 6
  %124 = load i32*, i32** %123, align 8
  store i32* %124, i32** %15, align 8
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 7
  %127 = load i32*, i32** %126, align 8
  store i32* %127, i32** %16, align 8
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 8
  %130 = load i32*, i32** %129, align 8
  store i32* %130, i32** %17, align 8
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 9
  %133 = load i32*, i32** %132, align 8
  store i32* %133, i32** %18, align 8
  %134 = bitcast [3 x i32]* %19 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %134, i8 0, i64 12, i1 false)
  %135 = load i32*, i32** %18, align 8
  %136 = icmp eq i32* %135, null
  br i1 %136, label %146, label %137

137:                                              ; preds = %106
  %138 = load i32*, i32** %15, align 8
  %139 = icmp eq i32* %138, null
  br i1 %139, label %146, label %140

140:                                              ; preds = %137
  %141 = load i32*, i32** %16, align 8
  %142 = icmp eq i32* %141, null
  br i1 %142, label %146, label %143

143:                                              ; preds = %140
  %144 = load i32*, i32** %17, align 8
  %145 = icmp eq i32* %144, null
  br i1 %145, label %146, label %147

146:                                              ; preds = %143, %140, %137, %106
  br label %339

147:                                              ; preds = %143
  store i32 0, i32* %4, align 4
  br label %148

148:                                              ; preds = %281, %147
  %149 = load i32, i32* %4, align 4
  %150 = load i32, i32* @SIZE, align 4
  %151 = add nsw i32 %149, %150
  %152 = load i32, i32* %11, align 4
  %153 = icmp sle i32 %151, %152
  br i1 %153, label %154, label %285

154:                                              ; preds = %148
  store i32 1, i32* %20, align 4
  store i32 0, i32* %3, align 4
  br label %155

155:                                              ; preds = %232, %154
  %156 = load i32, i32* %3, align 4
  %157 = load i32, i32* @SIZE, align 4
  %158 = add nsw i32 %156, %157
  %159 = load i32, i32* %10, align 4
  %160 = icmp sle i32 %158, %159
  br i1 %160, label %161, label %236

161:                                              ; preds = %155
  %162 = load i32*, i32** %18, align 8
  %163 = load i32, i32* %3, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  %166 = load i32, i32* %14, align 4
  %167 = load i32*, i32** %15, align 8
  %168 = load i32, i32* %3, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  %171 = load i32, i32* %12, align 4
  %172 = load i32, i32* @SIZE, align 4
  %173 = load i32, i32* @SIZE, align 4
  %174 = call i64 @SmoothenBlock(i32* %165, i32 %166, i32* %170, i32 %171, i32 %172, i32 %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %230

176:                                              ; preds = %161
  %177 = load i32, i32* %20, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %200

179:                                              ; preds = %176
  %180 = load i32*, i32** %15, align 8
  %181 = load i32, i32* %3, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %180, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 0
  store i32 %184, i32* %185, align 4
  %186 = load i32*, i32** %16, align 8
  %187 = load i32, i32* %3, align 4
  %188 = ashr i32 %187, 1
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %186, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 1
  store i32 %191, i32* %192, align 4
  %193 = load i32*, i32** %17, align 8
  %194 = load i32, i32* %3, align 4
  %195 = ashr i32 %194, 1
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32, i32* %193, i64 %196
  %198 = load i32, i32* %197, align 4
  %199 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 2
  store i32 %198, i32* %199, align 4
  store i32 0, i32* %20, align 4
  br label %200

200:                                              ; preds = %179, %176
  %201 = load i32*, i32** %15, align 8
  %202 = load i32, i32* %3, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %201, i64 %203
  %205 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 0
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* %12, align 4
  %208 = load i32, i32* @SIZE, align 4
  %209 = call i32 @Flatten(i32* %204, i32 %206, i32 %207, i32 %208)
  %210 = load i32*, i32** %16, align 8
  %211 = load i32, i32* %3, align 4
  %212 = ashr i32 %211, 1
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %210, i64 %213
  %215 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 1
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* %13, align 4
  %218 = load i32, i32* @SIZE2, align 4
  %219 = call i32 @Flatten(i32* %214, i32 %216, i32 %217, i32 %218)
  %220 = load i32*, i32** %17, align 8
  %221 = load i32, i32* %3, align 4
  %222 = ashr i32 %221, 1
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %220, i64 %223
  %225 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 2
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* %13, align 4
  %228 = load i32, i32* @SIZE2, align 4
  %229 = call i32 @Flatten(i32* %224, i32 %226, i32 %227, i32 %228)
  br label %231

230:                                              ; preds = %161
  store i32 1, i32* %20, align 4
  br label %231

231:                                              ; preds = %230, %200
  br label %232

232:                                              ; preds = %231
  %233 = load i32, i32* @SIZE, align 4
  %234 = load i32, i32* %3, align 4
  %235 = add nsw i32 %234, %233
  store i32 %235, i32* %3, align 4
  br label %155

236:                                              ; preds = %155
  %237 = load i32, i32* %3, align 4
  %238 = load i32, i32* %10, align 4
  %239 = icmp slt i32 %237, %238
  br i1 %239, label %240, label %256

240:                                              ; preds = %236
  %241 = load i32*, i32** %18, align 8
  %242 = load i32, i32* %3, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i32, i32* %241, i64 %243
  %245 = load i32, i32* %14, align 4
  %246 = load i32*, i32** %15, align 8
  %247 = load i32, i32* %3, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32, i32* %246, i64 %248
  %250 = load i32, i32* %12, align 4
  %251 = load i32, i32* %10, align 4
  %252 = load i32, i32* %3, align 4
  %253 = sub nsw i32 %251, %252
  %254 = load i32, i32* @SIZE, align 4
  %255 = call i64 @SmoothenBlock(i32* %244, i32 %245, i32* %249, i32 %250, i32 %253, i32 %254)
  br label %256

256:                                              ; preds = %240, %236
  %257 = load i32, i32* @SIZE, align 4
  %258 = load i32, i32* %14, align 4
  %259 = mul nsw i32 %257, %258
  %260 = load i32*, i32** %18, align 8
  %261 = sext i32 %259 to i64
  %262 = getelementptr inbounds i32, i32* %260, i64 %261
  store i32* %262, i32** %18, align 8
  %263 = load i32, i32* @SIZE, align 4
  %264 = load i32, i32* %12, align 4
  %265 = mul nsw i32 %263, %264
  %266 = load i32*, i32** %15, align 8
  %267 = sext i32 %265 to i64
  %268 = getelementptr inbounds i32, i32* %266, i64 %267
  store i32* %268, i32** %15, align 8
  %269 = load i32, i32* @SIZE2, align 4
  %270 = load i32, i32* %13, align 4
  %271 = mul nsw i32 %269, %270
  %272 = load i32*, i32** %16, align 8
  %273 = sext i32 %271 to i64
  %274 = getelementptr inbounds i32, i32* %272, i64 %273
  store i32* %274, i32** %16, align 8
  %275 = load i32, i32* @SIZE2, align 4
  %276 = load i32, i32* %13, align 4
  %277 = mul nsw i32 %275, %276
  %278 = load i32*, i32** %17, align 8
  %279 = sext i32 %277 to i64
  %280 = getelementptr inbounds i32, i32* %278, i64 %279
  store i32* %280, i32** %17, align 8
  br label %281

281:                                              ; preds = %256
  %282 = load i32, i32* @SIZE, align 4
  %283 = load i32, i32* %4, align 4
  %284 = add nsw i32 %283, %282
  store i32 %284, i32* %4, align 4
  br label %148

285:                                              ; preds = %148
  %286 = load i32, i32* %4, align 4
  %287 = load i32, i32* %11, align 4
  %288 = icmp slt i32 %286, %287
  br i1 %288, label %289, label %338

289:                                              ; preds = %285
  %290 = load i32, i32* %11, align 4
  %291 = load i32, i32* %4, align 4
  %292 = sub nsw i32 %290, %291
  store i32 %292, i32* %21, align 4
  store i32 0, i32* %3, align 4
  br label %293

293:                                              ; preds = %313, %289
  %294 = load i32, i32* %3, align 4
  %295 = load i32, i32* @SIZE, align 4
  %296 = add nsw i32 %294, %295
  %297 = load i32, i32* %10, align 4
  %298 = icmp sle i32 %296, %297
  br i1 %298, label %299, label %317

299:                                              ; preds = %293
  %300 = load i32*, i32** %18, align 8
  %301 = load i32, i32* %3, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i32, i32* %300, i64 %302
  %304 = load i32, i32* %14, align 4
  %305 = load i32*, i32** %15, align 8
  %306 = load i32, i32* %3, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds i32, i32* %305, i64 %307
  %309 = load i32, i32* %12, align 4
  %310 = load i32, i32* @SIZE, align 4
  %311 = load i32, i32* %21, align 4
  %312 = call i64 @SmoothenBlock(i32* %303, i32 %304, i32* %308, i32 %309, i32 %310, i32 %311)
  br label %313

313:                                              ; preds = %299
  %314 = load i32, i32* @SIZE, align 4
  %315 = load i32, i32* %3, align 4
  %316 = add nsw i32 %315, %314
  store i32 %316, i32* %3, align 4
  br label %293

317:                                              ; preds = %293
  %318 = load i32, i32* %3, align 4
  %319 = load i32, i32* %10, align 4
  %320 = icmp slt i32 %318, %319
  br i1 %320, label %321, label %337

321:                                              ; preds = %317
  %322 = load i32*, i32** %18, align 8
  %323 = load i32, i32* %3, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds i32, i32* %322, i64 %324
  %326 = load i32, i32* %14, align 4
  %327 = load i32*, i32** %15, align 8
  %328 = load i32, i32* %3, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds i32, i32* %327, i64 %329
  %331 = load i32, i32* %12, align 4
  %332 = load i32, i32* %10, align 4
  %333 = load i32, i32* %3, align 4
  %334 = sub nsw i32 %332, %333
  %335 = load i32, i32* %21, align 4
  %336 = call i64 @SmoothenBlock(i32* %325, i32 %326, i32* %330, i32 %331, i32 %334, i32 %335)
  br label %337

337:                                              ; preds = %321, %317
  br label %338

338:                                              ; preds = %337, %285
  br label %339

339:                                              ; preds = %24, %146, %338, %105
  ret void
}

declare dso_local i64 @IsTransparentARGBArea(i32*, i32, i32) #1

declare dso_local i32 @FlattenARGB(i32*, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @SmoothenBlock(i32*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @Flatten(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
