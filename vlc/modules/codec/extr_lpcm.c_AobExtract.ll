; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_lpcm.c_AobExtract.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_lpcm.c_AobExtract.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i64 }
%struct.TYPE_7__ = type { i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, %struct.TYPE_6__*, i32, %struct.TYPE_7__*)* @AobExtract to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @AobExtract(%struct.TYPE_6__* %0, %struct.TYPE_6__* %1, i32 %2, %struct.TYPE_7__* %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_7__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_7__* %3, %struct.TYPE_7__** %8, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %9, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i64 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i64 1
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %4
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i64 1
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  br label %38

37:                                               ; preds = %4
  br label %38

38:                                               ; preds = %37, %32
  %39 = phi i32 [ %36, %32 ], [ 0, %37 ]
  %40 = add i32 %26, %39
  store i32 %40, i32* %10, align 4
  br label %41

41:                                               ; preds = %319, %38
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp sgt i64 %44, 0
  br i1 %45, label %46, label %324

46:                                               ; preds = %41
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %47

47:                                               ; preds = %316, %46
  %48 = load i32, i32* %12, align 4
  %49 = icmp slt i32 %48, 2
  br i1 %49, label %50, label %319

50:                                               ; preds = %47
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %52 = load i32, i32* %12, align 4
  %53 = sub nsw i32 1, %52
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i64 %54
  store %struct.TYPE_7__* %55, %struct.TYPE_7__** %13, align 8
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = mul i32 2, %58
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = mul i32 %59, %62
  %64 = udiv i32 %63, 8
  store i32 %64, i32* %14, align 4
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i32, i32* %14, align 4
  %69 = zext i32 %68 to i64
  %70 = icmp slt i64 %67, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %50
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  store i64 0, i64* %73, align 8
  br label %319

74:                                               ; preds = %50
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %74
  br label %316

80:                                               ; preds = %74
  store i32 0, i32* %15, align 4
  br label %81

81:                                               ; preds = %300, %80
  %82 = load i32, i32* %15, align 4
  %83 = icmp ult i32 %82, 2
  br i1 %83, label %84, label %303

84:                                               ; preds = %81
  store i32 0, i32* %16, align 4
  br label %85

85:                                               ; preds = %296, %84
  %86 = load i32, i32* %16, align 4
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp ult i32 %86, %89
  br i1 %90, label %91, label %299

91:                                               ; preds = %85
  %92 = load i32, i32* %15, align 4
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = mul i32 %92, %95
  %97 = load i32, i32* %16, align 4
  %98 = add i32 %96, %97
  store i32 %98, i32* %17, align 4
  %99 = load i32, i32* %15, align 4
  %100 = load i32, i32* %10, align 4
  %101 = mul i32 %99, %100
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 2
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %16, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = add i32 %101, %108
  store i32 %109, i32* %18, align 4
  %110 = load i32*, i32** %9, align 8
  %111 = load i32, i32* %18, align 4
  %112 = mul nsw i32 4, %111
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %110, i64 %113
  store i32* %114, i32** %19, align 8
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = icmp eq i32 %117, 24
  br i1 %118, label %119, label %162

119:                                              ; preds = %91
  %120 = load i32, i32* %7, align 4
  %121 = icmp eq i32 %120, 32
  %122 = zext i1 %121 to i32
  %123 = call i32 @assert(i32 %122)
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %17, align 4
  %128 = mul nsw i32 2, %127
  %129 = add nsw i32 %128, 0
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %126, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = shl i32 %132, 24
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* %17, align 4
  %138 = mul nsw i32 2, %137
  %139 = add nsw i32 %138, 1
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %136, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = shl i32 %142, 16
  %144 = or i32 %133, %143
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = mul i32 4, %150
  %152 = load i32, i32* %17, align 4
  %153 = add i32 %151, %152
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %147, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = shl i32 %156, 8
  %158 = or i32 %144, %157
  %159 = load i32*, i32** %19, align 8
  store i32 %158, i32* %159, align 4
  %160 = load i32, i32* %11, align 4
  %161 = add i32 %160, 4
  store i32 %161, i32* %11, align 4
  br label %295

162:                                              ; preds = %91
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = icmp eq i32 %165, 20
  br i1 %166, label %167, label %217

167:                                              ; preds = %162
  %168 = load i32, i32* %7, align 4
  %169 = icmp eq i32 %168, 32
  %170 = zext i1 %169 to i32
  %171 = call i32 @assert(i32 %170)
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 0
  %174 = load i32*, i32** %173, align 8
  %175 = load i32, i32* %17, align 4
  %176 = mul nsw i32 2, %175
  %177 = add nsw i32 %176, 0
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %174, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = shl i32 %180, 24
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 0
  %184 = load i32*, i32** %183, align 8
  %185 = load i32, i32* %17, align 4
  %186 = mul nsw i32 2, %185
  %187 = add nsw i32 %186, 1
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %184, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = shl i32 %190, 16
  %192 = or i32 %181, %191
  %193 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 0
  %195 = load i32*, i32** %194, align 8
  %196 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = mul i32 4, %198
  %200 = load i32, i32* %17, align 4
  %201 = add i32 %199, %200
  %202 = zext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %195, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* %15, align 4
  %206 = icmp ne i32 %205, 0
  %207 = xor i1 %206, true
  %208 = zext i1 %207 to i64
  %209 = select i1 %207, i32 0, i32 4
  %210 = shl i32 %204, %209
  %211 = and i32 %210, 240
  %212 = shl i32 %211, 8
  %213 = or i32 %192, %212
  %214 = load i32*, i32** %19, align 8
  store i32 %213, i32* %214, align 4
  %215 = load i32, i32* %11, align 4
  %216 = add i32 %215, 4
  store i32 %216, i32* %11, align 4
  br label %294

217:                                              ; preds = %162
  %218 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = icmp eq i32 %220, 16
  %222 = zext i1 %221 to i32
  %223 = call i32 @assert(i32 %222)
  %224 = load i32, i32* %7, align 4
  %225 = icmp eq i32 %224, 16
  br i1 %225, label %229, label %226

226:                                              ; preds = %217
  %227 = load i32, i32* %7, align 4
  %228 = icmp eq i32 %227, 32
  br label %229

229:                                              ; preds = %226, %217
  %230 = phi i1 [ true, %217 ], [ %228, %226 ]
  %231 = zext i1 %230 to i32
  %232 = call i32 @assert(i32 %231)
  %233 = load i32, i32* %7, align 4
  %234 = icmp eq i32 %233, 16
  br i1 %234, label %235, label %268

235:                                              ; preds = %229
  %236 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %237 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %236, i32 0, i32 0
  %238 = load i32*, i32** %237, align 8
  %239 = load i32, i32* %17, align 4
  %240 = mul nsw i32 2, %239
  %241 = add nsw i32 %240, 0
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32, i32* %238, i64 %242
  %244 = load i32, i32* %243, align 4
  %245 = load i32*, i32** %9, align 8
  %246 = load i32, i32* %18, align 4
  %247 = mul nsw i32 2, %246
  %248 = add nsw i32 %247, 1
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i32, i32* %245, i64 %249
  store i32 %244, i32* %250, align 4
  %251 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %252 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %251, i32 0, i32 0
  %253 = load i32*, i32** %252, align 8
  %254 = load i32, i32* %17, align 4
  %255 = mul nsw i32 2, %254
  %256 = add nsw i32 %255, 1
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i32, i32* %253, i64 %257
  %259 = load i32, i32* %258, align 4
  %260 = load i32*, i32** %9, align 8
  %261 = load i32, i32* %18, align 4
  %262 = mul nsw i32 2, %261
  %263 = add nsw i32 %262, 0
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i32, i32* %260, i64 %264
  store i32 %259, i32* %265, align 4
  %266 = load i32, i32* %11, align 4
  %267 = add i32 %266, 2
  store i32 %267, i32* %11, align 4
  br label %293

268:                                              ; preds = %229
  %269 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %270 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %269, i32 0, i32 0
  %271 = load i32*, i32** %270, align 8
  %272 = load i32, i32* %17, align 4
  %273 = mul nsw i32 2, %272
  %274 = add nsw i32 %273, 0
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i32, i32* %271, i64 %275
  %277 = load i32, i32* %276, align 4
  %278 = shl i32 %277, 24
  %279 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %280 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %279, i32 0, i32 0
  %281 = load i32*, i32** %280, align 8
  %282 = load i32, i32* %17, align 4
  %283 = mul nsw i32 2, %282
  %284 = add nsw i32 %283, 1
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i32, i32* %281, i64 %285
  %287 = load i32, i32* %286, align 4
  %288 = shl i32 %287, 16
  %289 = or i32 %278, %288
  %290 = load i32*, i32** %19, align 8
  store i32 %289, i32* %290, align 4
  %291 = load i32, i32* %11, align 4
  %292 = add i32 %291, 4
  store i32 %292, i32* %11, align 4
  br label %293

293:                                              ; preds = %268, %235
  br label %294

294:                                              ; preds = %293, %167
  br label %295

295:                                              ; preds = %294, %119
  br label %296

296:                                              ; preds = %295
  %297 = load i32, i32* %16, align 4
  %298 = add i32 %297, 1
  store i32 %298, i32* %16, align 4
  br label %85

299:                                              ; preds = %85
  br label %300

300:                                              ; preds = %299
  %301 = load i32, i32* %15, align 4
  %302 = add i32 %301, 1
  store i32 %302, i32* %15, align 4
  br label %81

303:                                              ; preds = %81
  %304 = load i32, i32* %14, align 4
  %305 = zext i32 %304 to i64
  %306 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %307 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %306, i32 0, i32 1
  %308 = load i64, i64* %307, align 8
  %309 = sub nsw i64 %308, %305
  store i64 %309, i64* %307, align 8
  %310 = load i32, i32* %14, align 4
  %311 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %312 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %311, i32 0, i32 0
  %313 = load i32*, i32** %312, align 8
  %314 = zext i32 %310 to i64
  %315 = getelementptr inbounds i32, i32* %313, i64 %314
  store i32* %315, i32** %312, align 8
  br label %316

316:                                              ; preds = %303, %79
  %317 = load i32, i32* %12, align 4
  %318 = add nsw i32 %317, 1
  store i32 %318, i32* %12, align 4
  br label %47

319:                                              ; preds = %71, %47
  %320 = load i32, i32* %11, align 4
  %321 = load i32*, i32** %9, align 8
  %322 = zext i32 %320 to i64
  %323 = getelementptr inbounds i32, i32* %321, i64 %322
  store i32* %323, i32** %9, align 8
  br label %41

324:                                              ; preds = %41
  ret void
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
