; ModuleID = '/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb_ps_remove.c'
source_filename = "/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb_ps_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i8** }
%struct.TYPE_14__ = type { i32, i8**, i64, i8**, i32, i32, i32 }

@STB_BUCKET_SIZE = common dso_local global i32 0, align 4
@STB_DEL = common dso_local global i8* null, align 8
@stb_ps_array_max = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @stb_ps_remove(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_14__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_14__*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = ptrtoint i8* %21 to i64
  %23 = trunc i64 %22 to i32
  %24 = and i32 3, %23
  %25 = icmp eq i32 %24, 129
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load i8*, i8** %5, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = load i8*, i8** %4, align 8
  store i8* %31, i8** %3, align 8
  br label %396

32:                                               ; preds = %2
  %33 = load i8*, i8** %4, align 8
  %34 = ptrtoint i8* %33 to i64
  %35 = trunc i64 %34 to i32
  %36 = and i32 3, %35
  switch i32 %36, label %394 [
    i32 129, label %37
    i32 130, label %46
    i32 131, label %189
    i32 128, label %246
  ]

37:                                               ; preds = %32
  %38 = load i8*, i8** %4, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = icmp eq i8* %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  br label %44

42:                                               ; preds = %37
  %43 = load i8*, i8** %4, align 8
  br label %44

44:                                               ; preds = %42, %41
  %45 = phi i8* [ null, %41 ], [ %43, %42 ]
  store i8* %45, i8** %3, align 8
  br label %396

46:                                               ; preds = %32
  %47 = load i8*, i8** %4, align 8
  %48 = call %struct.TYPE_15__* @GetBucket(i8* %47)
  store %struct.TYPE_15__* %48, %struct.TYPE_15__** %6, align 8
  store i32 0, i32* %7, align 4
  %49 = load i32, i32* @STB_BUCKET_SIZE, align 4
  %50 = icmp eq i32 %49, 4
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert(i32 %51)
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 0
  %55 = load i8**, i8*** %54, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i64 0
  %57 = load i8*, i8** %56, align 8
  %58 = load i8*, i8** %5, align 8
  %59 = icmp eq i8* %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %46
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 0
  %63 = load i8**, i8*** %62, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i64 0
  store i8* null, i8** %64, align 8
  br label %75

65:                                               ; preds = %46
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 0
  %68 = load i8**, i8*** %67, align 8
  %69 = getelementptr inbounds i8*, i8** %68, i64 0
  %70 = load i8*, i8** %69, align 8
  %71 = icmp ne i8* %70, null
  %72 = zext i1 %71 to i32
  %73 = load i32, i32* %7, align 4
  %74 = add nsw i32 %73, %72
  store i32 %74, i32* %7, align 4
  br label %75

75:                                               ; preds = %65, %60
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 0
  %78 = load i8**, i8*** %77, align 8
  %79 = getelementptr inbounds i8*, i8** %78, i64 1
  %80 = load i8*, i8** %79, align 8
  %81 = load i8*, i8** %5, align 8
  %82 = icmp eq i8* %80, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %75
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 0
  %86 = load i8**, i8*** %85, align 8
  %87 = getelementptr inbounds i8*, i8** %86, i64 1
  store i8* null, i8** %87, align 8
  br label %98

88:                                               ; preds = %75
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 0
  %91 = load i8**, i8*** %90, align 8
  %92 = getelementptr inbounds i8*, i8** %91, i64 1
  %93 = load i8*, i8** %92, align 8
  %94 = icmp ne i8* %93, null
  %95 = zext i1 %94 to i32
  %96 = load i32, i32* %7, align 4
  %97 = add nsw i32 %96, %95
  store i32 %97, i32* %7, align 4
  br label %98

98:                                               ; preds = %88, %83
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 0
  %101 = load i8**, i8*** %100, align 8
  %102 = getelementptr inbounds i8*, i8** %101, i64 2
  %103 = load i8*, i8** %102, align 8
  %104 = load i8*, i8** %5, align 8
  %105 = icmp eq i8* %103, %104
  br i1 %105, label %106, label %111

106:                                              ; preds = %98
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 0
  %109 = load i8**, i8*** %108, align 8
  %110 = getelementptr inbounds i8*, i8** %109, i64 2
  store i8* null, i8** %110, align 8
  br label %121

111:                                              ; preds = %98
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 0
  %114 = load i8**, i8*** %113, align 8
  %115 = getelementptr inbounds i8*, i8** %114, i64 2
  %116 = load i8*, i8** %115, align 8
  %117 = icmp ne i8* %116, null
  %118 = zext i1 %117 to i32
  %119 = load i32, i32* %7, align 4
  %120 = add nsw i32 %119, %118
  store i32 %120, i32* %7, align 4
  br label %121

121:                                              ; preds = %111, %106
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 0
  %124 = load i8**, i8*** %123, align 8
  %125 = getelementptr inbounds i8*, i8** %124, i64 3
  %126 = load i8*, i8** %125, align 8
  %127 = load i8*, i8** %5, align 8
  %128 = icmp eq i8* %126, %127
  br i1 %128, label %129, label %134

129:                                              ; preds = %121
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 0
  %132 = load i8**, i8*** %131, align 8
  %133 = getelementptr inbounds i8*, i8** %132, i64 3
  store i8* null, i8** %133, align 8
  br label %144

134:                                              ; preds = %121
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 0
  %137 = load i8**, i8*** %136, align 8
  %138 = getelementptr inbounds i8*, i8** %137, i64 3
  %139 = load i8*, i8** %138, align 8
  %140 = icmp ne i8* %139, null
  %141 = zext i1 %140 to i32
  %142 = load i32, i32* %7, align 4
  %143 = add nsw i32 %142, %141
  store i32 %143, i32* %7, align 4
  br label %144

144:                                              ; preds = %134, %129
  %145 = load i32, i32* %7, align 4
  %146 = icmp eq i32 %145, 1
  br i1 %146, label %147, label %187

147:                                              ; preds = %144
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 0
  %150 = load i8**, i8*** %149, align 8
  %151 = getelementptr inbounds i8*, i8** %150, i64 0
  %152 = load i8*, i8** %151, align 8
  store i8* %152, i8** %5, align 8
  %153 = load i8*, i8** %5, align 8
  %154 = icmp eq i8* %153, null
  br i1 %154, label %155, label %161

155:                                              ; preds = %147
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 0
  %158 = load i8**, i8*** %157, align 8
  %159 = getelementptr inbounds i8*, i8** %158, i64 1
  %160 = load i8*, i8** %159, align 8
  store i8* %160, i8** %5, align 8
  br label %161

161:                                              ; preds = %155, %147
  %162 = load i8*, i8** %5, align 8
  %163 = icmp eq i8* %162, null
  br i1 %163, label %164, label %170

164:                                              ; preds = %161
  %165 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %165, i32 0, i32 0
  %167 = load i8**, i8*** %166, align 8
  %168 = getelementptr inbounds i8*, i8** %167, i64 2
  %169 = load i8*, i8** %168, align 8
  store i8* %169, i8** %5, align 8
  br label %170

170:                                              ; preds = %164, %161
  %171 = load i8*, i8** %5, align 8
  %172 = icmp eq i8* %171, null
  br i1 %172, label %173, label %179

173:                                              ; preds = %170
  %174 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i32 0, i32 0
  %176 = load i8**, i8*** %175, align 8
  %177 = getelementptr inbounds i8*, i8** %176, i64 3
  %178 = load i8*, i8** %177, align 8
  store i8* %178, i8** %5, align 8
  br label %179

179:                                              ; preds = %173, %170
  %180 = load i8*, i8** %5, align 8
  %181 = icmp ne i8* %180, null
  %182 = zext i1 %181 to i32
  %183 = call i32 @assert(i32 %182)
  %184 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %185 = call i32 @stb_bucket_free(%struct.TYPE_15__* %184)
  %186 = load i8*, i8** %5, align 8
  store i8* %186, i8** %3, align 8
  br label %396

187:                                              ; preds = %144
  %188 = load i8*, i8** %4, align 8
  store i8* %188, i8** %3, align 8
  br label %396

189:                                              ; preds = %32
  %190 = load i8*, i8** %4, align 8
  %191 = call %struct.TYPE_14__* @GetArray(i8* %190)
  store %struct.TYPE_14__* %191, %struct.TYPE_14__** %8, align 8
  store i32 0, i32* %9, align 4
  br label %192

192:                                              ; preds = %241, %189
  %193 = load i32, i32* %9, align 4
  %194 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %195 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = icmp slt i32 %193, %196
  br i1 %197, label %198, label %244

198:                                              ; preds = %192
  %199 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %200 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %199, i32 0, i32 1
  %201 = load i8**, i8*** %200, align 8
  %202 = load i32, i32* %9, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i8*, i8** %201, i64 %203
  %205 = load i8*, i8** %204, align 8
  %206 = load i8*, i8** %5, align 8
  %207 = icmp eq i8* %205, %206
  br i1 %207, label %208, label %240

208:                                              ; preds = %198
  %209 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %210 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %209, i32 0, i32 1
  %211 = load i8**, i8*** %210, align 8
  %212 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %213 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = add nsw i32 %214, -1
  store i32 %215, i32* %213, align 8
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i8*, i8** %211, i64 %216
  %218 = load i8*, i8** %217, align 8
  %219 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %220 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %219, i32 0, i32 1
  %221 = load i8**, i8*** %220, align 8
  %222 = load i32, i32* %9, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i8*, i8** %221, i64 %223
  store i8* %218, i8** %224, align 8
  %225 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %226 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = icmp eq i32 %227, 3
  br i1 %228, label %229, label %238

229:                                              ; preds = %208
  %230 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %231 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %230, i32 0, i32 1
  %232 = load i8**, i8*** %231, align 8
  %233 = call %struct.TYPE_15__* @stb_bucket_create3(i8** %232)
  store %struct.TYPE_15__* %233, %struct.TYPE_15__** %10, align 8
  %234 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %235 = call i32 @free(%struct.TYPE_14__* %234)
  %236 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %237 = call i8* @EncodeBucket(%struct.TYPE_15__* %236)
  store i8* %237, i8** %3, align 8
  br label %396

238:                                              ; preds = %208
  %239 = load i8*, i8** %4, align 8
  store i8* %239, i8** %3, align 8
  br label %396

240:                                              ; preds = %198
  br label %241

241:                                              ; preds = %240
  %242 = load i32, i32* %9, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %9, align 4
  br label %192

244:                                              ; preds = %192
  %245 = load i8*, i8** %4, align 8
  store i8* %245, i8** %3, align 8
  br label %396

246:                                              ; preds = %32
  %247 = load i8*, i8** %4, align 8
  %248 = call %struct.TYPE_14__* @GetHash(i8* %247)
  store %struct.TYPE_14__* %248, %struct.TYPE_14__** %11, align 8
  %249 = load i8*, i8** %5, align 8
  %250 = call i64 @stb_hashptr(i8* %249)
  store i64 %250, i64* %12, align 8
  %251 = load i64, i64* %12, align 8
  %252 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %253 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %252, i32 0, i32 2
  %254 = load i64, i64* %253, align 8
  %255 = and i64 %251, %254
  store i64 %255, i64* %14, align 8
  %256 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %257 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %256, i32 0, i32 3
  %258 = load i8**, i8*** %257, align 8
  store i8** %258, i8*** %15, align 8
  %259 = load i8**, i8*** %15, align 8
  %260 = load i64, i64* %14, align 8
  %261 = getelementptr inbounds i8*, i8** %259, i64 %260
  %262 = load i8*, i8** %261, align 8
  %263 = load i8*, i8** %5, align 8
  %264 = icmp ne i8* %262, %263
  br i1 %264, label %265, label %286

265:                                              ; preds = %246
  %266 = load i64, i64* %12, align 8
  %267 = call i32 @stb_rehash(i64 %266)
  %268 = or i32 %267, 1
  %269 = sext i32 %268 to i64
  store i64 %269, i64* %13, align 8
  br label %270

270:                                              ; preds = %278, %265
  %271 = load i64, i64* %14, align 8
  %272 = load i64, i64* %13, align 8
  %273 = add i64 %271, %272
  %274 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %275 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %274, i32 0, i32 2
  %276 = load i64, i64* %275, align 8
  %277 = and i64 %273, %276
  store i64 %277, i64* %14, align 8
  br label %278

278:                                              ; preds = %270
  %279 = load i8**, i8*** %15, align 8
  %280 = load i64, i64* %14, align 8
  %281 = getelementptr inbounds i8*, i8** %279, i64 %280
  %282 = load i8*, i8** %281, align 8
  %283 = load i8*, i8** %5, align 8
  %284 = icmp ne i8* %282, %283
  br i1 %284, label %270, label %285

285:                                              ; preds = %278
  br label %286

286:                                              ; preds = %285, %246
  %287 = load i8*, i8** @STB_DEL, align 8
  %288 = load i8**, i8*** %15, align 8
  %289 = load i64, i64* %14, align 8
  %290 = getelementptr inbounds i8*, i8** %288, i64 %289
  store i8* %287, i8** %290, align 8
  %291 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %292 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 8
  %294 = add nsw i32 %293, -1
  store i32 %294, i32* %292, align 8
  %295 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %296 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %295, i32 0, i32 6
  %297 = load i32, i32* %296, align 8
  %298 = add nsw i32 %297, 1
  store i32 %298, i32* %296, align 8
  %299 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %300 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 8
  %302 = load i32, i32* @stb_ps_array_max, align 4
  %303 = icmp slt i32 %301, %302
  br i1 %303, label %304, label %370

304:                                              ; preds = %286
  %305 = load i32, i32* @stb_ps_array_max, align 4
  %306 = call i32 @stb_log2_floor(i32 %305)
  %307 = shl i32 1, %306
  store i32 %307, i32* %16, align 4
  %308 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %309 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 8
  %311 = load i32, i32* %16, align 4
  %312 = icmp slt i32 %310, %311
  br i1 %312, label %313, label %369

313:                                              ; preds = %304
  %314 = load i32, i32* %16, align 4
  %315 = sub nsw i32 %314, 1
  %316 = sext i32 %315 to i64
  %317 = mul i64 %316, 8
  %318 = add i64 48, %317
  %319 = trunc i64 %318 to i32
  %320 = call i64 @malloc(i32 %319)
  %321 = inttoptr i64 %320 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %321, %struct.TYPE_14__** %17, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %18, align 4
  br label %322

322:                                              ; preds = %351, %313
  %323 = load i32, i32* %18, align 4
  %324 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %325 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %324, i32 0, i32 4
  %326 = load i32, i32* %325, align 8
  %327 = icmp slt i32 %323, %326
  br i1 %327, label %328, label %354

328:                                              ; preds = %322
  %329 = load i8**, i8*** %15, align 8
  %330 = load i32, i32* %18, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds i8*, i8** %329, i64 %331
  %333 = load i8*, i8** %332, align 8
  %334 = ptrtoint i8* %333 to i64
  %335 = call i32 @stb_ps_empty(i64 %334)
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %350, label %337

337:                                              ; preds = %328
  %338 = load i8**, i8*** %15, align 8
  %339 = load i32, i32* %18, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds i8*, i8** %338, i64 %340
  %342 = load i8*, i8** %341, align 8
  %343 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %344 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %343, i32 0, i32 1
  %345 = load i8**, i8*** %344, align 8
  %346 = load i32, i32* %19, align 4
  %347 = add nsw i32 %346, 1
  store i32 %347, i32* %19, align 4
  %348 = sext i32 %346 to i64
  %349 = getelementptr inbounds i8*, i8** %345, i64 %348
  store i8* %342, i8** %349, align 8
  br label %350

350:                                              ; preds = %337, %328
  br label %351

351:                                              ; preds = %350
  %352 = load i32, i32* %18, align 4
  %353 = add nsw i32 %352, 1
  store i32 %353, i32* %18, align 4
  br label %322

354:                                              ; preds = %322
  %355 = load i32, i32* %19, align 4
  %356 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %357 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %356, i32 0, i32 0
  %358 = load i32, i32* %357, align 8
  %359 = icmp eq i32 %355, %358
  %360 = zext i1 %359 to i32
  %361 = call i32 @assert(i32 %360)
  %362 = load i32, i32* %19, align 4
  %363 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %364 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %363, i32 0, i32 0
  store i32 %362, i32* %364, align 8
  %365 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %366 = call i32 @free(%struct.TYPE_14__* %365)
  %367 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %368 = call i8* @EncodeArray(%struct.TYPE_14__* %367)
  store i8* %368, i8** %3, align 8
  br label %396

369:                                              ; preds = %304
  br label %370

370:                                              ; preds = %369, %286
  %371 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %372 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %371, i32 0, i32 0
  %373 = load i32, i32* %372, align 8
  %374 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %375 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %374, i32 0, i32 5
  %376 = load i32, i32* %375, align 4
  %377 = icmp eq i32 %373, %376
  br i1 %377, label %378, label %392

378:                                              ; preds = %370
  %379 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %380 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %379, i32 0, i32 4
  %381 = load i32, i32* %380, align 8
  %382 = ashr i32 %381, 1
  %383 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %384 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %383, i32 0, i32 4
  %385 = load i32, i32* %384, align 8
  %386 = load i8**, i8*** %15, align 8
  %387 = call %struct.TYPE_14__* @stb_ps_makehash(i32 %382, i32 %385, i8** %386)
  store %struct.TYPE_14__* %387, %struct.TYPE_14__** %20, align 8
  %388 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %389 = call i32 @free(%struct.TYPE_14__* %388)
  %390 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %391 = call i8* @EncodeHash(%struct.TYPE_14__* %390)
  store i8* %391, i8** %3, align 8
  br label %396

392:                                              ; preds = %370
  %393 = load i8*, i8** %4, align 8
  store i8* %393, i8** %3, align 8
  br label %396

394:                                              ; preds = %32
  %395 = load i8*, i8** %4, align 8
  store i8* %395, i8** %3, align 8
  br label %396

396:                                              ; preds = %394, %392, %378, %354, %244, %238, %229, %187, %179, %44, %30
  %397 = load i8*, i8** %3, align 8
  ret i8* %397
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_15__* @GetBucket(i8*) #1

declare dso_local i32 @stb_bucket_free(%struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_14__* @GetArray(i8*) #1

declare dso_local %struct.TYPE_15__* @stb_bucket_create3(i8**) #1

declare dso_local i32 @free(%struct.TYPE_14__*) #1

declare dso_local i8* @EncodeBucket(%struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_14__* @GetHash(i8*) #1

declare dso_local i64 @stb_hashptr(i8*) #1

declare dso_local i32 @stb_rehash(i64) #1

declare dso_local i32 @stb_log2_floor(i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @stb_ps_empty(i64) #1

declare dso_local i8* @EncodeArray(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_14__* @stb_ps_makehash(i32, i32, i8**) #1

declare dso_local i8* @EncodeHash(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
