; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/gdi/dib/extr_dib1bpp.c_DIB_1BPP_BitBltSrcCopy_From1BPP.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/gdi/dib/extr_dib1bpp.c_DIB_1BPP_BitBltSrcCopy_From1BPP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, %struct.TYPE_8__*, i32*, %struct.TYPE_9__*, %struct.TYPE_10__*)* @DIB_1BPP_BitBltSrcCopy_From1BPP to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DIB_1BPP_BitBltSrcCopy_From1BPP(%struct.TYPE_8__* %0, %struct.TYPE_8__* %1, i32* %2, %struct.TYPE_9__* %3, %struct.TYPE_10__* %4) #0 {
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
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
  %30 = alloca i32*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca i32*, align 8
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %9, align 8
  store %struct.TYPE_10__* %4, %struct.TYPE_10__** %10, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %14, align 4
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = sub nsw i32 %41, 1
  store i32 %42, i32* %15, align 4
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %16, align 4
  %46 = load i32, i32* %16, align 4
  %47 = load i32, i32* %15, align 4
  %48 = add nsw i32 %46, %47
  %49 = load i32, i32* %14, align 4
  %50 = sub nsw i32 %48, %49
  store i32 %50, i32* %17, align 4
  %51 = load i32, i32* %14, align 4
  %52 = load i32, i32* %16, align 4
  %53 = sub nsw i32 %51, %52
  %54 = and i32 %53, 7
  store i32 %54, i32* %26, align 4
  %55 = load i32*, i32** %8, align 8
  %56 = call i64 @XLATEOBJ_iXlate(i32* %55, i32 0)
  %57 = trunc i64 %56 to i32
  %58 = mul nsw i32 255, %57
  store i32 %58, i32* %29, align 4
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp sle i32 %61, %64
  br i1 %65, label %66, label %83

66:                                               ; preds = %5
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %23, align 4
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = sub nsw i32 %72, 1
  store i32 %73, i32* %24, align 4
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %25, align 4
  store i32 1, i32* %19, align 4
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  store i32 %79, i32* %20, align 4
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  store i32 %82, i32* %21, align 4
  br label %106

83:                                               ; preds = %5
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = sub nsw i32 %86, 1
  store i32 %87, i32* %23, align 4
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %24, align 4
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %23, align 4
  %95 = add nsw i32 %93, %94
  %96 = load i32, i32* %24, align 4
  %97 = sub nsw i32 %95, %96
  store i32 %97, i32* %25, align 4
  store i32 -1, i32* %19, align 4
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %20, align 4
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %21, align 4
  br label %106

106:                                              ; preds = %83, %66
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = icmp sle i32 %109, %112
  br i1 %113, label %114, label %124

114:                                              ; preds = %106
  %115 = load i32, i32* %14, align 4
  %116 = and i32 %115, -8
  store i32 %116, i32* %11, align 4
  %117 = load i32, i32* %16, align 4
  %118 = load i32, i32* %14, align 4
  %119 = and i32 %118, 7
  %120 = sub nsw i32 %117, %119
  %121 = and i32 %120, -8
  store i32 %121, i32* %13, align 4
  %122 = load i32, i32* %15, align 4
  %123 = and i32 %122, -8
  store i32 %123, i32* %12, align 4
  store i32 1, i32* %18, align 4
  br label %134

124:                                              ; preds = %106
  %125 = load i32, i32* %15, align 4
  %126 = and i32 %125, -8
  store i32 %126, i32* %11, align 4
  %127 = load i32, i32* %17, align 4
  %128 = load i32, i32* %15, align 4
  %129 = and i32 %128, 7
  %130 = sub nsw i32 %127, %129
  %131 = and i32 %130, -8
  store i32 %131, i32* %13, align 4
  %132 = load i32, i32* %14, align 4
  %133 = and i32 %132, -8
  store i32 %133, i32* %12, align 4
  store i32 -1, i32* %18, align 4
  br label %134

134:                                              ; preds = %124, %114
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = inttoptr i64 %137 to i32*
  %139 = load i32, i32* %23, align 4
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = mul nsw i32 %139, %142
  %144 = load i32, i32* %11, align 4
  %145 = ashr i32 %144, 3
  %146 = add nsw i32 %143, %145
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %138, i64 %147
  store i32* %148, i32** %30, align 8
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = inttoptr i64 %151 to i32*
  %153 = load i32, i32* %25, align 4
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = mul nsw i32 %153, %156
  %158 = load i32, i32* %13, align 4
  %159 = ashr i32 %158, 3
  %160 = add nsw i32 %157, %159
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %152, i64 %161
  store i32* %162, i32** %32, align 8
  br label %163

163:                                              ; preds = %363, %134
  %164 = load i32, i32* %23, align 4
  store i32 %164, i32* %22, align 4
  %165 = load i32*, i32** %30, align 8
  store i32* %165, i32** %31, align 8
  %166 = load i32*, i32** %32, align 8
  store i32* %166, i32** %33, align 8
  store i32 255, i32* %27, align 4
  %167 = load i32, i32* %11, align 4
  %168 = load i32, i32* %14, align 4
  %169 = icmp slt i32 %167, %168
  br i1 %169, label %170, label %180

170:                                              ; preds = %163
  %171 = load i32, i32* %14, align 4
  %172 = load i32, i32* %11, align 4
  %173 = sub nsw i32 %171, %172
  store i32 %173, i32* %34, align 4
  %174 = load i32, i32* %34, align 4
  %175 = sub nsw i32 8, %174
  %176 = shl i32 1, %175
  %177 = sub nsw i32 %176, 1
  %178 = load i32, i32* %27, align 4
  %179 = and i32 %178, %177
  store i32 %179, i32* %27, align 4
  br label %180

180:                                              ; preds = %170, %163
  %181 = load i32, i32* %11, align 4
  %182 = add nsw i32 %181, 7
  %183 = load i32, i32* %15, align 4
  %184 = icmp sgt i32 %182, %183
  br i1 %184, label %185, label %197

185:                                              ; preds = %180
  %186 = load i32, i32* %15, align 4
  %187 = load i32, i32* %11, align 4
  %188 = sub nsw i32 %186, %187
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %35, align 4
  %190 = load i32, i32* %35, align 4
  %191 = sub nsw i32 8, %190
  %192 = shl i32 1, %191
  %193 = sub nsw i32 %192, 1
  %194 = xor i32 %193, -1
  %195 = load i32, i32* %27, align 4
  %196 = and i32 %195, %194
  store i32 %196, i32* %27, align 4
  br label %197

197:                                              ; preds = %185, %180
  %198 = load i32, i32* %27, align 4
  %199 = xor i32 %198, -1
  store i32 %199, i32* %28, align 4
  %200 = load i32, i32* %26, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %234, label %202

202:                                              ; preds = %197
  br label %203

203:                                              ; preds = %221, %202
  %204 = load i32*, i32** %31, align 8
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* %28, align 4
  %207 = and i32 %205, %206
  %208 = load i32*, i32** %33, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 0
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* %29, align 4
  %212 = xor i32 %210, %211
  %213 = load i32, i32* %27, align 4
  %214 = and i32 %212, %213
  %215 = or i32 %207, %214
  %216 = load i32*, i32** %31, align 8
  store i32 %215, i32* %216, align 4
  %217 = load i32, i32* %22, align 4
  %218 = load i32, i32* %24, align 4
  %219 = icmp eq i32 %217, %218
  br i1 %219, label %220, label %221

220:                                              ; preds = %203
  br label %233

221:                                              ; preds = %203
  %222 = load i32, i32* %19, align 4
  %223 = load i32, i32* %22, align 4
  %224 = add nsw i32 %223, %222
  store i32 %224, i32* %22, align 4
  %225 = load i32, i32* %21, align 4
  %226 = load i32*, i32** %31, align 8
  %227 = sext i32 %225 to i64
  %228 = getelementptr inbounds i32, i32* %226, i64 %227
  store i32* %228, i32** %31, align 8
  %229 = load i32, i32* %20, align 4
  %230 = load i32*, i32** %33, align 8
  %231 = sext i32 %229 to i64
  %232 = getelementptr inbounds i32, i32* %230, i64 %231
  store i32* %232, i32** %33, align 8
  br label %203

233:                                              ; preds = %220
  br label %358

234:                                              ; preds = %197
  %235 = load i32, i32* %27, align 4
  %236 = load i32, i32* %26, align 4
  %237 = shl i32 %235, %236
  %238 = and i32 65280, %237
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %274, label %240

240:                                              ; preds = %234
  br label %241

241:                                              ; preds = %261, %240
  %242 = load i32*, i32** %31, align 8
  %243 = load i32, i32* %242, align 4
  %244 = load i32, i32* %28, align 4
  %245 = and i32 %243, %244
  %246 = load i32*, i32** %33, align 8
  %247 = getelementptr inbounds i32, i32* %246, i64 1
  %248 = load i32, i32* %247, align 4
  %249 = load i32, i32* %29, align 4
  %250 = xor i32 %248, %249
  %251 = load i32, i32* %26, align 4
  %252 = ashr i32 %250, %251
  %253 = load i32, i32* %27, align 4
  %254 = and i32 %252, %253
  %255 = or i32 %245, %254
  %256 = load i32*, i32** %31, align 8
  store i32 %255, i32* %256, align 4
  %257 = load i32, i32* %22, align 4
  %258 = load i32, i32* %24, align 4
  %259 = icmp eq i32 %257, %258
  br i1 %259, label %260, label %261

260:                                              ; preds = %241
  br label %273

261:                                              ; preds = %241
  %262 = load i32, i32* %19, align 4
  %263 = load i32, i32* %22, align 4
  %264 = add nsw i32 %263, %262
  store i32 %264, i32* %22, align 4
  %265 = load i32, i32* %21, align 4
  %266 = load i32*, i32** %31, align 8
  %267 = sext i32 %265 to i64
  %268 = getelementptr inbounds i32, i32* %266, i64 %267
  store i32* %268, i32** %31, align 8
  %269 = load i32, i32* %20, align 4
  %270 = load i32*, i32** %33, align 8
  %271 = sext i32 %269 to i64
  %272 = getelementptr inbounds i32, i32* %270, i64 %271
  store i32* %272, i32** %33, align 8
  br label %241

273:                                              ; preds = %260
  br label %357

274:                                              ; preds = %234
  %275 = load i32, i32* %27, align 4
  %276 = load i32, i32* %26, align 4
  %277 = shl i32 %275, %276
  %278 = and i32 255, %277
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %315, label %280

280:                                              ; preds = %274
  br label %281

281:                                              ; preds = %302, %280
  %282 = load i32*, i32** %31, align 8
  %283 = load i32, i32* %282, align 4
  %284 = load i32, i32* %28, align 4
  %285 = and i32 %283, %284
  %286 = load i32*, i32** %33, align 8
  %287 = getelementptr inbounds i32, i32* %286, i64 0
  %288 = load i32, i32* %287, align 4
  %289 = load i32, i32* %29, align 4
  %290 = xor i32 %288, %289
  %291 = load i32, i32* %26, align 4
  %292 = sub nsw i32 8, %291
  %293 = shl i32 %290, %292
  %294 = load i32, i32* %27, align 4
  %295 = and i32 %293, %294
  %296 = or i32 %285, %295
  %297 = load i32*, i32** %31, align 8
  store i32 %296, i32* %297, align 4
  %298 = load i32, i32* %22, align 4
  %299 = load i32, i32* %24, align 4
  %300 = icmp eq i32 %298, %299
  br i1 %300, label %301, label %302

301:                                              ; preds = %281
  br label %314

302:                                              ; preds = %281
  %303 = load i32, i32* %19, align 4
  %304 = load i32, i32* %22, align 4
  %305 = add nsw i32 %304, %303
  store i32 %305, i32* %22, align 4
  %306 = load i32, i32* %21, align 4
  %307 = load i32*, i32** %31, align 8
  %308 = sext i32 %306 to i64
  %309 = getelementptr inbounds i32, i32* %307, i64 %308
  store i32* %309, i32** %31, align 8
  %310 = load i32, i32* %20, align 4
  %311 = load i32*, i32** %33, align 8
  %312 = sext i32 %310 to i64
  %313 = getelementptr inbounds i32, i32* %311, i64 %312
  store i32* %313, i32** %33, align 8
  br label %281

314:                                              ; preds = %301
  br label %356

315:                                              ; preds = %274
  br label %316

316:                                              ; preds = %343, %315
  %317 = load i32*, i32** %31, align 8
  %318 = load i32, i32* %317, align 4
  %319 = load i32, i32* %28, align 4
  %320 = and i32 %318, %319
  %321 = load i32*, i32** %33, align 8
  %322 = getelementptr inbounds i32, i32* %321, i64 1
  %323 = load i32, i32* %322, align 4
  %324 = load i32, i32* %29, align 4
  %325 = xor i32 %323, %324
  %326 = load i32*, i32** %33, align 8
  %327 = getelementptr inbounds i32, i32* %326, i64 0
  %328 = load i32, i32* %327, align 4
  %329 = load i32, i32* %29, align 4
  %330 = xor i32 %328, %329
  %331 = shl i32 %330, 8
  %332 = or i32 %325, %331
  %333 = load i32, i32* %26, align 4
  %334 = ashr i32 %332, %333
  %335 = load i32, i32* %27, align 4
  %336 = and i32 %334, %335
  %337 = or i32 %320, %336
  %338 = load i32*, i32** %31, align 8
  store i32 %337, i32* %338, align 4
  %339 = load i32, i32* %22, align 4
  %340 = load i32, i32* %24, align 4
  %341 = icmp eq i32 %339, %340
  br i1 %341, label %342, label %343

342:                                              ; preds = %316
  br label %355

343:                                              ; preds = %316
  %344 = load i32, i32* %19, align 4
  %345 = load i32, i32* %22, align 4
  %346 = add nsw i32 %345, %344
  store i32 %346, i32* %22, align 4
  %347 = load i32, i32* %21, align 4
  %348 = load i32*, i32** %31, align 8
  %349 = sext i32 %347 to i64
  %350 = getelementptr inbounds i32, i32* %348, i64 %349
  store i32* %350, i32** %31, align 8
  %351 = load i32, i32* %20, align 4
  %352 = load i32*, i32** %33, align 8
  %353 = sext i32 %351 to i64
  %354 = getelementptr inbounds i32, i32* %352, i64 %353
  store i32* %354, i32** %33, align 8
  br label %316

355:                                              ; preds = %342
  br label %356

356:                                              ; preds = %355, %314
  br label %357

357:                                              ; preds = %356, %273
  br label %358

358:                                              ; preds = %357, %233
  %359 = load i32, i32* %11, align 4
  %360 = load i32, i32* %12, align 4
  %361 = icmp eq i32 %359, %360
  br i1 %361, label %362, label %363

362:                                              ; preds = %358
  br label %380

363:                                              ; preds = %358
  %364 = load i32, i32* %18, align 4
  %365 = load i32*, i32** %30, align 8
  %366 = sext i32 %364 to i64
  %367 = getelementptr inbounds i32, i32* %365, i64 %366
  store i32* %367, i32** %30, align 8
  %368 = load i32, i32* %18, align 4
  %369 = load i32*, i32** %32, align 8
  %370 = sext i32 %368 to i64
  %371 = getelementptr inbounds i32, i32* %369, i64 %370
  store i32* %371, i32** %32, align 8
  %372 = load i32, i32* %18, align 4
  %373 = shl i32 %372, 3
  %374 = load i32, i32* %11, align 4
  %375 = add nsw i32 %374, %373
  store i32 %375, i32* %11, align 4
  %376 = load i32, i32* %18, align 4
  %377 = shl i32 %376, 3
  %378 = load i32, i32* %13, align 4
  %379 = add nsw i32 %378, %377
  store i32 %379, i32* %13, align 4
  br label %163

380:                                              ; preds = %362
  ret void
}

declare dso_local i64 @XLATEOBJ_iXlate(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
