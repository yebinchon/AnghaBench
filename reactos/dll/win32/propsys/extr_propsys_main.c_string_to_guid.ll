; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/propsys/extr_propsys_main.c_string_to_guid.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/propsys/extr_propsys_main.c_string_to_guid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32* }

@FALSE = common dso_local global i32 0, align 4
@hex2bin = common dso_local global i32* null, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, %struct.TYPE_3__*)* @string_to_guid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @string_to_guid(i64* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  store i64* %0, i64** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %6 = load i64*, i64** %4, align 8
  %7 = call i32 @validate_indices(i64* %6, i32 0, i32 8)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @FALSE, align 4
  store i32 %10, i32* %3, align 4
  br label %345

11:                                               ; preds = %2
  %12 = load i32*, i32** @hex2bin, align 8
  %13 = load i64*, i64** %4, align 8
  %14 = getelementptr inbounds i64, i64* %13, i64 1
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds i32, i32* %12, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = shl i32 %17, 28
  %19 = load i32*, i32** @hex2bin, align 8
  %20 = load i64*, i64** %4, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 2
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds i32, i32* %19, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = shl i32 %24, 24
  %26 = or i32 %18, %25
  %27 = load i32*, i32** @hex2bin, align 8
  %28 = load i64*, i64** %4, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 3
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = shl i32 %32, 20
  %34 = or i32 %26, %33
  %35 = load i32*, i32** @hex2bin, align 8
  %36 = load i64*, i64** %4, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 4
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = shl i32 %40, 16
  %42 = or i32 %34, %41
  %43 = load i32*, i32** @hex2bin, align 8
  %44 = load i64*, i64** %4, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 5
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = shl i32 %48, 12
  %50 = or i32 %42, %49
  %51 = load i32*, i32** @hex2bin, align 8
  %52 = load i64*, i64** %4, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 6
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = shl i32 %56, 8
  %58 = or i32 %50, %57
  %59 = load i32*, i32** @hex2bin, align 8
  %60 = load i64*, i64** %4, align 8
  %61 = getelementptr inbounds i64, i64* %60, i64 7
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds i32, i32* %59, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = shl i32 %64, 4
  %66 = or i32 %58, %65
  %67 = load i32*, i32** @hex2bin, align 8
  %68 = load i64*, i64** %4, align 8
  %69 = getelementptr inbounds i64, i64* %68, i64 8
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds i32, i32* %67, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %66, %72
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = load i64*, i64** %4, align 8
  %77 = call i32 @validate_indices(i64* %76, i32 9, i32 14)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %11
  %80 = load i32, i32* @FALSE, align 4
  store i32 %80, i32* %3, align 4
  br label %345

81:                                               ; preds = %11
  %82 = load i32*, i32** @hex2bin, align 8
  %83 = load i64*, i64** %4, align 8
  %84 = getelementptr inbounds i64, i64* %83, i64 10
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds i32, i32* %82, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = shl i32 %87, 12
  %89 = load i32*, i32** @hex2bin, align 8
  %90 = load i64*, i64** %4, align 8
  %91 = getelementptr inbounds i64, i64* %90, i64 11
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds i32, i32* %89, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = shl i32 %94, 8
  %96 = or i32 %88, %95
  %97 = load i32*, i32** @hex2bin, align 8
  %98 = load i64*, i64** %4, align 8
  %99 = getelementptr inbounds i64, i64* %98, i64 12
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds i32, i32* %97, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = shl i32 %102, 4
  %104 = or i32 %96, %103
  %105 = load i32*, i32** @hex2bin, align 8
  %106 = load i64*, i64** %4, align 8
  %107 = getelementptr inbounds i64, i64* %106, i64 13
  %108 = load i64, i64* %107, align 8
  %109 = getelementptr inbounds i32, i32* %105, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = or i32 %104, %110
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 4
  %114 = load i64*, i64** %4, align 8
  %115 = call i32 @validate_indices(i64* %114, i32 15, i32 19)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %119, label %117

117:                                              ; preds = %81
  %118 = load i32, i32* @FALSE, align 4
  store i32 %118, i32* %3, align 4
  br label %345

119:                                              ; preds = %81
  %120 = load i32*, i32** @hex2bin, align 8
  %121 = load i64*, i64** %4, align 8
  %122 = getelementptr inbounds i64, i64* %121, i64 15
  %123 = load i64, i64* %122, align 8
  %124 = getelementptr inbounds i32, i32* %120, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = shl i32 %125, 12
  %127 = load i32*, i32** @hex2bin, align 8
  %128 = load i64*, i64** %4, align 8
  %129 = getelementptr inbounds i64, i64* %128, i64 16
  %130 = load i64, i64* %129, align 8
  %131 = getelementptr inbounds i32, i32* %127, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = shl i32 %132, 8
  %134 = or i32 %126, %133
  %135 = load i32*, i32** @hex2bin, align 8
  %136 = load i64*, i64** %4, align 8
  %137 = getelementptr inbounds i64, i64* %136, i64 17
  %138 = load i64, i64* %137, align 8
  %139 = getelementptr inbounds i32, i32* %135, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = shl i32 %140, 4
  %142 = or i32 %134, %141
  %143 = load i32*, i32** @hex2bin, align 8
  %144 = load i64*, i64** %4, align 8
  %145 = getelementptr inbounds i64, i64* %144, i64 18
  %146 = load i64, i64* %145, align 8
  %147 = getelementptr inbounds i32, i32* %143, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = or i32 %142, %148
  %150 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 2
  store i32 %149, i32* %151, align 8
  %152 = load i64*, i64** %4, align 8
  %153 = call i32 @validate_indices(i64* %152, i32 20, i32 21)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %157, label %155

155:                                              ; preds = %119
  %156 = load i32, i32* @FALSE, align 4
  store i32 %156, i32* %3, align 4
  br label %345

157:                                              ; preds = %119
  %158 = load i32*, i32** @hex2bin, align 8
  %159 = load i64*, i64** %4, align 8
  %160 = getelementptr inbounds i64, i64* %159, i64 20
  %161 = load i64, i64* %160, align 8
  %162 = getelementptr inbounds i32, i32* %158, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = shl i32 %163, 4
  %165 = load i32*, i32** @hex2bin, align 8
  %166 = load i64*, i64** %4, align 8
  %167 = getelementptr inbounds i64, i64* %166, i64 21
  %168 = load i64, i64* %167, align 8
  %169 = getelementptr inbounds i32, i32* %165, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = or i32 %164, %170
  %172 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 3
  %174 = load i32*, i32** %173, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 0
  store i32 %171, i32* %175, align 4
  %176 = load i64*, i64** %4, align 8
  %177 = call i32 @validate_indices(i64* %176, i32 22, i32 24)
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %181, label %179

179:                                              ; preds = %157
  %180 = load i32, i32* @FALSE, align 4
  store i32 %180, i32* %3, align 4
  br label %345

181:                                              ; preds = %157
  %182 = load i32*, i32** @hex2bin, align 8
  %183 = load i64*, i64** %4, align 8
  %184 = getelementptr inbounds i64, i64* %183, i64 22
  %185 = load i64, i64* %184, align 8
  %186 = getelementptr inbounds i32, i32* %182, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = shl i32 %187, 4
  %189 = load i32*, i32** @hex2bin, align 8
  %190 = load i64*, i64** %4, align 8
  %191 = getelementptr inbounds i64, i64* %190, i64 23
  %192 = load i64, i64* %191, align 8
  %193 = getelementptr inbounds i32, i32* %189, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = or i32 %188, %194
  %196 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %196, i32 0, i32 3
  %198 = load i32*, i32** %197, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 1
  store i32 %195, i32* %199, align 4
  %200 = load i64*, i64** %4, align 8
  %201 = call i32 @validate_indices(i64* %200, i32 25, i32 26)
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %205, label %203

203:                                              ; preds = %181
  %204 = load i32, i32* @FALSE, align 4
  store i32 %204, i32* %3, align 4
  br label %345

205:                                              ; preds = %181
  %206 = load i32*, i32** @hex2bin, align 8
  %207 = load i64*, i64** %4, align 8
  %208 = getelementptr inbounds i64, i64* %207, i64 25
  %209 = load i64, i64* %208, align 8
  %210 = getelementptr inbounds i32, i32* %206, i64 %209
  %211 = load i32, i32* %210, align 4
  %212 = shl i32 %211, 4
  %213 = load i32*, i32** @hex2bin, align 8
  %214 = load i64*, i64** %4, align 8
  %215 = getelementptr inbounds i64, i64* %214, i64 26
  %216 = load i64, i64* %215, align 8
  %217 = getelementptr inbounds i32, i32* %213, i64 %216
  %218 = load i32, i32* %217, align 4
  %219 = or i32 %212, %218
  %220 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %221 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %220, i32 0, i32 3
  %222 = load i32*, i32** %221, align 8
  %223 = getelementptr inbounds i32, i32* %222, i64 2
  store i32 %219, i32* %223, align 4
  %224 = load i64*, i64** %4, align 8
  %225 = call i32 @validate_indices(i64* %224, i32 27, i32 28)
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %229, label %227

227:                                              ; preds = %205
  %228 = load i32, i32* @FALSE, align 4
  store i32 %228, i32* %3, align 4
  br label %345

229:                                              ; preds = %205
  %230 = load i32*, i32** @hex2bin, align 8
  %231 = load i64*, i64** %4, align 8
  %232 = getelementptr inbounds i64, i64* %231, i64 27
  %233 = load i64, i64* %232, align 8
  %234 = getelementptr inbounds i32, i32* %230, i64 %233
  %235 = load i32, i32* %234, align 4
  %236 = shl i32 %235, 4
  %237 = load i32*, i32** @hex2bin, align 8
  %238 = load i64*, i64** %4, align 8
  %239 = getelementptr inbounds i64, i64* %238, i64 28
  %240 = load i64, i64* %239, align 8
  %241 = getelementptr inbounds i32, i32* %237, i64 %240
  %242 = load i32, i32* %241, align 4
  %243 = or i32 %236, %242
  %244 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %245 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %244, i32 0, i32 3
  %246 = load i32*, i32** %245, align 8
  %247 = getelementptr inbounds i32, i32* %246, i64 3
  store i32 %243, i32* %247, align 4
  %248 = load i64*, i64** %4, align 8
  %249 = call i32 @validate_indices(i64* %248, i32 29, i32 30)
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %253, label %251

251:                                              ; preds = %229
  %252 = load i32, i32* @FALSE, align 4
  store i32 %252, i32* %3, align 4
  br label %345

253:                                              ; preds = %229
  %254 = load i32*, i32** @hex2bin, align 8
  %255 = load i64*, i64** %4, align 8
  %256 = getelementptr inbounds i64, i64* %255, i64 29
  %257 = load i64, i64* %256, align 8
  %258 = getelementptr inbounds i32, i32* %254, i64 %257
  %259 = load i32, i32* %258, align 4
  %260 = shl i32 %259, 4
  %261 = load i32*, i32** @hex2bin, align 8
  %262 = load i64*, i64** %4, align 8
  %263 = getelementptr inbounds i64, i64* %262, i64 30
  %264 = load i64, i64* %263, align 8
  %265 = getelementptr inbounds i32, i32* %261, i64 %264
  %266 = load i32, i32* %265, align 4
  %267 = or i32 %260, %266
  %268 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %269 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %268, i32 0, i32 3
  %270 = load i32*, i32** %269, align 8
  %271 = getelementptr inbounds i32, i32* %270, i64 4
  store i32 %267, i32* %271, align 4
  %272 = load i64*, i64** %4, align 8
  %273 = call i32 @validate_indices(i64* %272, i32 31, i32 32)
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %277, label %275

275:                                              ; preds = %253
  %276 = load i32, i32* @FALSE, align 4
  store i32 %276, i32* %3, align 4
  br label %345

277:                                              ; preds = %253
  %278 = load i32*, i32** @hex2bin, align 8
  %279 = load i64*, i64** %4, align 8
  %280 = getelementptr inbounds i64, i64* %279, i64 31
  %281 = load i64, i64* %280, align 8
  %282 = getelementptr inbounds i32, i32* %278, i64 %281
  %283 = load i32, i32* %282, align 4
  %284 = shl i32 %283, 4
  %285 = load i32*, i32** @hex2bin, align 8
  %286 = load i64*, i64** %4, align 8
  %287 = getelementptr inbounds i64, i64* %286, i64 32
  %288 = load i64, i64* %287, align 8
  %289 = getelementptr inbounds i32, i32* %285, i64 %288
  %290 = load i32, i32* %289, align 4
  %291 = or i32 %284, %290
  %292 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %293 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %292, i32 0, i32 3
  %294 = load i32*, i32** %293, align 8
  %295 = getelementptr inbounds i32, i32* %294, i64 5
  store i32 %291, i32* %295, align 4
  %296 = load i64*, i64** %4, align 8
  %297 = call i32 @validate_indices(i64* %296, i32 33, i32 34)
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %301, label %299

299:                                              ; preds = %277
  %300 = load i32, i32* @FALSE, align 4
  store i32 %300, i32* %3, align 4
  br label %345

301:                                              ; preds = %277
  %302 = load i32*, i32** @hex2bin, align 8
  %303 = load i64*, i64** %4, align 8
  %304 = getelementptr inbounds i64, i64* %303, i64 33
  %305 = load i64, i64* %304, align 8
  %306 = getelementptr inbounds i32, i32* %302, i64 %305
  %307 = load i32, i32* %306, align 4
  %308 = shl i32 %307, 4
  %309 = load i32*, i32** @hex2bin, align 8
  %310 = load i64*, i64** %4, align 8
  %311 = getelementptr inbounds i64, i64* %310, i64 34
  %312 = load i64, i64* %311, align 8
  %313 = getelementptr inbounds i32, i32* %309, i64 %312
  %314 = load i32, i32* %313, align 4
  %315 = or i32 %308, %314
  %316 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %317 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %316, i32 0, i32 3
  %318 = load i32*, i32** %317, align 8
  %319 = getelementptr inbounds i32, i32* %318, i64 6
  store i32 %315, i32* %319, align 4
  %320 = load i64*, i64** %4, align 8
  %321 = call i32 @validate_indices(i64* %320, i32 35, i32 37)
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %325, label %323

323:                                              ; preds = %301
  %324 = load i32, i32* @FALSE, align 4
  store i32 %324, i32* %3, align 4
  br label %345

325:                                              ; preds = %301
  %326 = load i32*, i32** @hex2bin, align 8
  %327 = load i64*, i64** %4, align 8
  %328 = getelementptr inbounds i64, i64* %327, i64 35
  %329 = load i64, i64* %328, align 8
  %330 = getelementptr inbounds i32, i32* %326, i64 %329
  %331 = load i32, i32* %330, align 4
  %332 = shl i32 %331, 4
  %333 = load i32*, i32** @hex2bin, align 8
  %334 = load i64*, i64** %4, align 8
  %335 = getelementptr inbounds i64, i64* %334, i64 36
  %336 = load i64, i64* %335, align 8
  %337 = getelementptr inbounds i32, i32* %333, i64 %336
  %338 = load i32, i32* %337, align 4
  %339 = or i32 %332, %338
  %340 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %341 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %340, i32 0, i32 3
  %342 = load i32*, i32** %341, align 8
  %343 = getelementptr inbounds i32, i32* %342, i64 7
  store i32 %339, i32* %343, align 4
  %344 = load i32, i32* @TRUE, align 4
  store i32 %344, i32* %3, align 4
  br label %345

345:                                              ; preds = %325, %323, %299, %275, %251, %227, %203, %179, %155, %117, %79, %9
  %346 = load i32, i32* %3, align 4
  ret i32 %346
}

declare dso_local i32 @validate_indices(i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
