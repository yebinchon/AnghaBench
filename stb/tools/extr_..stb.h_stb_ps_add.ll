; ModuleID = '/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb_ps_add.c'
source_filename = "/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb_ps_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32** }
%struct.TYPE_14__ = type { i8**, i32, i64, i8**, i32, i32, i32, i32 }

@STB_DEL = common dso_local global i8* null, align 8
@STB_BUCKET_SIZE = common dso_local global i32 0, align 4
@stb_ps_array_max = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @stb_ps_add(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_14__*, align 8
  %17 = alloca %struct.TYPE_14__*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32*, i32** %4, align 8
  store i32* %21, i32** %3, align 8
  br label %325

22:                                               ; preds = %2
  %23 = load i8*, i8** %5, align 8
  %24 = ptrtoint i8* %23 to i64
  %25 = trunc i64 %24 to i32
  %26 = and i32 3, %25
  %27 = icmp eq i32 %26, 129
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load i8*, i8** %5, align 8
  %31 = call i32 @stb_ps_fastlist_valid(i8* %30)
  %32 = call i32 @assert(i32 %31)
  %33 = load i8*, i8** %5, align 8
  %34 = load i8*, i8** @STB_DEL, align 8
  %35 = icmp ne i8* %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load i32*, i32** %4, align 8
  %39 = ptrtoint i32* %38 to i64
  %40 = trunc i64 %39 to i32
  %41 = and i32 3, %40
  switch i32 %41, label %324 [
    i32 129, label %42
    i32 130, label %53
    i32 131, label %138
    i32 128, label %212
  ]

42:                                               ; preds = %22
  %43 = load i32*, i32** %4, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i8*, i8** %5, align 8
  %47 = bitcast i8* %46 to i32*
  store i32* %47, i32** %3, align 8
  br label %325

48:                                               ; preds = %42
  %49 = load i32*, i32** %4, align 8
  %50 = load i8*, i8** %5, align 8
  %51 = call i32 @stb_bucket_create2(i32* %49, i8* %50)
  %52 = call i32* @EncodeBucket(i32 %51)
  store i32* %52, i32** %3, align 8
  br label %325

53:                                               ; preds = %22
  %54 = load i32*, i32** %4, align 8
  %55 = call %struct.TYPE_15__* @GetBucket(i32* %54)
  store %struct.TYPE_15__* %55, %struct.TYPE_15__** %6, align 8
  %56 = load i32, i32* @STB_BUCKET_SIZE, align 4
  %57 = icmp eq i32 %56, 4
  %58 = zext i1 %57 to i32
  %59 = call i32 @assert(i32 %58)
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 0
  %62 = load i32**, i32*** %61, align 8
  %63 = getelementptr inbounds i32*, i32** %62, i64 0
  %64 = load i32*, i32** %63, align 8
  %65 = icmp eq i32* %64, null
  br i1 %65, label %66, label %74

66:                                               ; preds = %53
  %67 = load i8*, i8** %5, align 8
  %68 = bitcast i8* %67 to i32*
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 0
  %71 = load i32**, i32*** %70, align 8
  %72 = getelementptr inbounds i32*, i32** %71, i64 0
  store i32* %68, i32** %72, align 8
  %73 = load i32*, i32** %4, align 8
  store i32* %73, i32** %3, align 8
  br label %325

74:                                               ; preds = %53
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 0
  %77 = load i32**, i32*** %76, align 8
  %78 = getelementptr inbounds i32*, i32** %77, i64 1
  %79 = load i32*, i32** %78, align 8
  %80 = icmp eq i32* %79, null
  br i1 %80, label %81, label %89

81:                                               ; preds = %74
  %82 = load i8*, i8** %5, align 8
  %83 = bitcast i8* %82 to i32*
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 0
  %86 = load i32**, i32*** %85, align 8
  %87 = getelementptr inbounds i32*, i32** %86, i64 1
  store i32* %83, i32** %87, align 8
  %88 = load i32*, i32** %4, align 8
  store i32* %88, i32** %3, align 8
  br label %325

89:                                               ; preds = %74
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 0
  %92 = load i32**, i32*** %91, align 8
  %93 = getelementptr inbounds i32*, i32** %92, i64 2
  %94 = load i32*, i32** %93, align 8
  %95 = icmp eq i32* %94, null
  br i1 %95, label %96, label %104

96:                                               ; preds = %89
  %97 = load i8*, i8** %5, align 8
  %98 = bitcast i8* %97 to i32*
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 0
  %101 = load i32**, i32*** %100, align 8
  %102 = getelementptr inbounds i32*, i32** %101, i64 2
  store i32* %98, i32** %102, align 8
  %103 = load i32*, i32** %4, align 8
  store i32* %103, i32** %3, align 8
  br label %325

104:                                              ; preds = %89
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 0
  %107 = load i32**, i32*** %106, align 8
  %108 = getelementptr inbounds i32*, i32** %107, i64 3
  %109 = load i32*, i32** %108, align 8
  %110 = icmp eq i32* %109, null
  br i1 %110, label %111, label %119

111:                                              ; preds = %104
  %112 = load i8*, i8** %5, align 8
  %113 = bitcast i8* %112 to i32*
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 0
  %116 = load i32**, i32*** %115, align 8
  %117 = getelementptr inbounds i32*, i32** %116, i64 3
  store i32* %113, i32** %117, align 8
  %118 = load i32*, i32** %4, align 8
  store i32* %118, i32** %3, align 8
  br label %325

119:                                              ; preds = %104
  %120 = call i64 @malloc(i32 104)
  %121 = inttoptr i64 %120 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %121, %struct.TYPE_14__** %7, align 8
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 0
  %124 = load i8**, i8*** %123, align 8
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %126 = call i32 @memcpy(i8** %124, %struct.TYPE_15__* %125, i32 8)
  %127 = load i8*, i8** %5, align 8
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 0
  %130 = load i8**, i8*** %129, align 8
  %131 = getelementptr inbounds i8*, i8** %130, i64 4
  store i8* %127, i8** %131, align 8
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 1
  store i32 5, i32* %133, align 8
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %135 = call i32 @stb_bucket_free(%struct.TYPE_15__* %134)
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %137 = call i32* @EncodeArray(%struct.TYPE_14__* %136)
  store i32* %137, i32** %3, align 8
  br label %325

138:                                              ; preds = %22
  %139 = load i32*, i32** %4, align 8
  %140 = call %struct.TYPE_14__* @GetArray(i32* %139)
  store %struct.TYPE_14__* %140, %struct.TYPE_14__** %8, align 8
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @stb_ps_array_max, align 4
  %145 = icmp eq i32 %143, %144
  br i1 %145, label %146, label %165

146:                                              ; preds = %138
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @stb_log2_ceil(i32 %149)
  %151 = shl i32 2, %150
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i32 0, i32 0
  %157 = load i8**, i8*** %156, align 8
  %158 = call %struct.TYPE_14__* @stb_ps_makehash(i32 %151, i32 %154, i8** %157)
  store %struct.TYPE_14__* %158, %struct.TYPE_14__** %9, align 8
  %159 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %160 = call i32 @free(%struct.TYPE_14__* %159)
  %161 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %162 = call i32* @EncodeHash(%struct.TYPE_14__* %161)
  %163 = load i8*, i8** %5, align 8
  %164 = call i32* @stb_ps_add(i32* %162, i8* %163)
  store i32* %164, i32** %3, align 8
  br label %325

165:                                              ; preds = %138
  %166 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = sub nsw i32 %171, 1
  %173 = and i32 %168, %172
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %199

175:                                              ; preds = %165
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = mul nsw i32 %178, 2
  store i32 %179, i32* %10, align 4
  %180 = load i32, i32* %10, align 4
  %181 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %182 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = add nsw i32 %180, %183
  %185 = load i32, i32* @stb_ps_array_max, align 4
  %186 = icmp sgt i32 %184, %185
  br i1 %186, label %187, label %189

187:                                              ; preds = %175
  %188 = load i32, i32* @stb_ps_array_max, align 4
  store i32 %188, i32* %10, align 4
  br label %189

189:                                              ; preds = %187, %175
  %190 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %191 = load i32, i32* %10, align 4
  %192 = sub nsw i32 %191, 1
  %193 = sext i32 %192 to i64
  %194 = mul i64 %193, 8
  %195 = add i64 48, %194
  %196 = trunc i64 %195 to i32
  %197 = call i64 @realloc(%struct.TYPE_14__* %190, i32 %196)
  %198 = inttoptr i64 %197 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %198, %struct.TYPE_14__** %8, align 8
  br label %199

199:                                              ; preds = %189, %165
  %200 = load i8*, i8** %5, align 8
  %201 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %202 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %201, i32 0, i32 0
  %203 = load i8**, i8*** %202, align 8
  %204 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %205 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 8
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %205, align 8
  %208 = sext i32 %206 to i64
  %209 = getelementptr inbounds i8*, i8** %203, i64 %208
  store i8* %200, i8** %209, align 8
  %210 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %211 = call i32* @EncodeArray(%struct.TYPE_14__* %210)
  store i32* %211, i32** %3, align 8
  br label %325

212:                                              ; preds = %22
  %213 = load i32*, i32** %4, align 8
  %214 = call %struct.TYPE_14__* @GetHash(i32* %213)
  store %struct.TYPE_14__* %214, %struct.TYPE_14__** %11, align 8
  %215 = load i8*, i8** %5, align 8
  %216 = call i64 @stb_hashptr(i8* %215)
  store i64 %216, i64* %12, align 8
  %217 = load i64, i64* %12, align 8
  %218 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %219 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %218, i32 0, i32 2
  %220 = load i64, i64* %219, align 8
  %221 = and i64 %217, %220
  store i64 %221, i64* %13, align 8
  %222 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %223 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %222, i32 0, i32 3
  %224 = load i8**, i8*** %223, align 8
  store i8** %224, i8*** %14, align 8
  %225 = load i8**, i8*** %14, align 8
  %226 = load i64, i64* %13, align 8
  %227 = getelementptr inbounds i8*, i8** %225, i64 %226
  %228 = load i8*, i8** %227, align 8
  %229 = ptrtoint i8* %228 to i64
  %230 = call i32 @stb_ps_empty(i64 %229)
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %255, label %232

232:                                              ; preds = %212
  %233 = load i64, i64* %12, align 8
  %234 = call i32 @stb_rehash(i64 %233)
  %235 = or i32 %234, 1
  %236 = sext i32 %235 to i64
  store i64 %236, i64* %15, align 8
  br label %237

237:                                              ; preds = %245, %232
  %238 = load i64, i64* %13, align 8
  %239 = load i64, i64* %15, align 8
  %240 = add i64 %238, %239
  %241 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %242 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %241, i32 0, i32 2
  %243 = load i64, i64* %242, align 8
  %244 = and i64 %240, %243
  store i64 %244, i64* %13, align 8
  br label %245

245:                                              ; preds = %237
  %246 = load i8**, i8*** %14, align 8
  %247 = load i64, i64* %13, align 8
  %248 = getelementptr inbounds i8*, i8** %246, i64 %247
  %249 = load i8*, i8** %248, align 8
  %250 = ptrtoint i8* %249 to i64
  %251 = call i32 @stb_ps_empty(i64 %250)
  %252 = icmp ne i32 %251, 0
  %253 = xor i1 %252, true
  br i1 %253, label %237, label %254

254:                                              ; preds = %245
  br label %255

255:                                              ; preds = %254, %212
  %256 = load i8**, i8*** %14, align 8
  %257 = load i64, i64* %13, align 8
  %258 = getelementptr inbounds i8*, i8** %256, i64 %257
  %259 = load i8*, i8** %258, align 8
  %260 = load i8*, i8** @STB_DEL, align 8
  %261 = icmp eq i8* %259, %260
  br i1 %261, label %262, label %267

262:                                              ; preds = %255
  %263 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %264 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %263, i32 0, i32 4
  %265 = load i32, i32* %264, align 8
  %266 = add nsw i32 %265, -1
  store i32 %266, i32* %264, align 8
  br label %267

267:                                              ; preds = %262, %255
  %268 = load i8*, i8** %5, align 8
  %269 = load i8**, i8*** %14, align 8
  %270 = load i64, i64* %13, align 8
  %271 = getelementptr inbounds i8*, i8** %269, i64 %270
  store i8* %268, i8** %271, align 8
  %272 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %273 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 8
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %273, align 8
  %276 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %277 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 8
  %279 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %280 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %279, i32 0, i32 5
  %281 = load i32, i32* %280, align 4
  %282 = icmp eq i32 %278, %281
  br i1 %282, label %283, label %297

283:                                              ; preds = %267
  %284 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %285 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %284, i32 0, i32 6
  %286 = load i32, i32* %285, align 8
  %287 = mul nsw i32 %286, 2
  %288 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %289 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %288, i32 0, i32 6
  %290 = load i32, i32* %289, align 8
  %291 = load i8**, i8*** %14, align 8
  %292 = call %struct.TYPE_14__* @stb_ps_makehash(i32 %287, i32 %290, i8** %291)
  store %struct.TYPE_14__* %292, %struct.TYPE_14__** %16, align 8
  %293 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %294 = call i32 @free(%struct.TYPE_14__* %293)
  %295 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %296 = call i32* @EncodeHash(%struct.TYPE_14__* %295)
  store i32* %296, i32** %3, align 8
  br label %325

297:                                              ; preds = %267
  %298 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %299 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %298, i32 0, i32 1
  %300 = load i32, i32* %299, align 8
  %301 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %302 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %301, i32 0, i32 4
  %303 = load i32, i32* %302, align 8
  %304 = add nsw i32 %300, %303
  %305 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %306 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %305, i32 0, i32 7
  %307 = load i32, i32* %306, align 4
  %308 = icmp eq i32 %304, %307
  br i1 %308, label %309, label %322

309:                                              ; preds = %297
  %310 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %311 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %310, i32 0, i32 6
  %312 = load i32, i32* %311, align 8
  %313 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %314 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %313, i32 0, i32 6
  %315 = load i32, i32* %314, align 8
  %316 = load i8**, i8*** %14, align 8
  %317 = call %struct.TYPE_14__* @stb_ps_makehash(i32 %312, i32 %315, i8** %316)
  store %struct.TYPE_14__* %317, %struct.TYPE_14__** %17, align 8
  %318 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %319 = call i32 @free(%struct.TYPE_14__* %318)
  %320 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %321 = call i32* @EncodeHash(%struct.TYPE_14__* %320)
  store i32* %321, i32** %3, align 8
  br label %325

322:                                              ; preds = %297
  %323 = load i32*, i32** %4, align 8
  store i32* %323, i32** %3, align 8
  br label %325

324:                                              ; preds = %22
  store i32* null, i32** %3, align 8
  br label %325

325:                                              ; preds = %324, %322, %309, %283, %199, %146, %119, %111, %96, %81, %66, %48, %45, %20
  %326 = load i32*, i32** %3, align 8
  ret i32* %326
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @stb_ps_fastlist_valid(i8*) #1

declare dso_local i32* @EncodeBucket(i32) #1

declare dso_local i32 @stb_bucket_create2(i32*, i8*) #1

declare dso_local %struct.TYPE_15__* @GetBucket(i32*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @memcpy(i8**, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @stb_bucket_free(%struct.TYPE_15__*) #1

declare dso_local i32* @EncodeArray(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_14__* @GetArray(i32*) #1

declare dso_local %struct.TYPE_14__* @stb_ps_makehash(i32, i32, i8**) #1

declare dso_local i32 @stb_log2_ceil(i32) #1

declare dso_local i32 @free(%struct.TYPE_14__*) #1

declare dso_local i32* @EncodeHash(%struct.TYPE_14__*) #1

declare dso_local i64 @realloc(%struct.TYPE_14__*, i32) #1

declare dso_local %struct.TYPE_14__* @GetHash(i32*) #1

declare dso_local i64 @stb_hashptr(i8*) #1

declare dso_local i32 @stb_ps_empty(i64) #1

declare dso_local i32 @stb_rehash(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
