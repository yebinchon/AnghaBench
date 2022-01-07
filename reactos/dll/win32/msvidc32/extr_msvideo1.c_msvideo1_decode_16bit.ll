; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msvidc32/extr_msvideo1.c_msvideo1_decode_16bit.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msvidc32/extr_msvideo1.c_msvideo1_decode_16bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*, i32, i16*, i32)* @msvideo1_decode_16bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msvideo1_decode_16bit(i32 %0, i32 %1, i8* %2, i32 %3, i16* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i16*, align 8
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
  %25 = alloca i8, align 1
  %26 = alloca i8, align 1
  %27 = alloca i16, align 2
  %28 = alloca i32, align 4
  %29 = alloca [8 x i16], align 16
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i16* %4, i16** %11, align 8
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %28, align 4
  %30 = load i32, i32* %7, align 4
  %31 = sdiv i32 %30, 4
  store i32 %31, i32* %20, align 4
  %32 = load i32, i32* %8, align 4
  %33 = sdiv i32 %32, 4
  store i32 %33, i32* %21, align 4
  %34 = load i32, i32* %20, align 4
  %35 = load i32, i32* %21, align 4
  %36 = mul nsw i32 %34, %35
  store i32 %36, i32* %15, align 4
  store i32 4, i32* %22, align 4
  %37 = load i32, i32* %12, align 4
  %38 = sub nsw i32 %37, 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %23, align 4
  %40 = load i32, i32* %21, align 4
  store i32 %40, i32* %19, align 4
  br label %41

41:                                               ; preds = %316, %6
  %42 = load i32, i32* %19, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %319

44:                                               ; preds = %41
  %45 = load i32, i32* %21, align 4
  %46 = load i32, i32* %19, align 4
  %47 = sub nsw i32 %45, %46
  %48 = mul nsw i32 %47, 4
  %49 = load i32, i32* %12, align 4
  %50 = mul nsw i32 %48, %49
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %20, align 4
  store i32 %51, i32* %18, align 4
  br label %52

52:                                               ; preds = %312, %44
  %53 = load i32, i32* %18, align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %315

55:                                               ; preds = %52
  %56 = load i32, i32* %28, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %55
  %59 = load i32, i32* %22, align 4
  %60 = load i32, i32* %13, align 4
  %61 = add nsw i32 %60, %59
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %28, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %28, align 4
  %64 = load i32, i32* %15, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %15, align 4
  br label %312

66:                                               ; preds = %55
  %67 = load i32, i32* %13, align 4
  store i32 %67, i32* %14, align 4
  %68 = call i32 @CHECK_STREAM_PTR(i32 2)
  %69 = load i8*, i8** %9, align 8
  %70 = load i32, i32* %24, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %24, align 4
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds i8, i8* %69, i64 %72
  %74 = load i8, i8* %73, align 1
  store i8 %74, i8* %25, align 1
  %75 = load i8*, i8** %9, align 8
  %76 = load i32, i32* %24, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %24, align 4
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds i8, i8* %75, i64 %78
  %80 = load i8, i8* %79, align 1
  store i8 %80, i8* %26, align 1
  %81 = load i8, i8* %25, align 1
  %82 = zext i8 %81 to i32
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %66
  %85 = load i8, i8* %26, align 1
  %86 = zext i8 %85 to i32
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %84
  %89 = load i32, i32* %15, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %88
  br label %319

92:                                               ; preds = %88, %84, %66
  %93 = load i8, i8* %26, align 1
  %94 = zext i8 %93 to i32
  %95 = and i32 %94, 252
  %96 = icmp eq i32 %95, 132
  br i1 %96, label %97, label %106

97:                                               ; preds = %92
  %98 = load i8, i8* %26, align 1
  %99 = zext i8 %98 to i32
  %100 = sub nsw i32 %99, 132
  %101 = shl i32 %100, 8
  %102 = load i8, i8* %25, align 1
  %103 = zext i8 %102 to i32
  %104 = add nsw i32 %101, %103
  %105 = sub nsw i32 %104, 1
  store i32 %105, i32* %28, align 4
  br label %305

106:                                              ; preds = %92
  %107 = load i8, i8* %26, align 1
  %108 = zext i8 %107 to i32
  %109 = icmp slt i32 %108, 128
  br i1 %109, label %110, label %269

110:                                              ; preds = %106
  %111 = load i8, i8* %26, align 1
  %112 = zext i8 %111 to i32
  %113 = shl i32 %112, 8
  %114 = load i8, i8* %25, align 1
  %115 = zext i8 %114 to i32
  %116 = or i32 %113, %115
  %117 = trunc i32 %116 to i16
  store i16 %117, i16* %27, align 2
  %118 = call i32 @CHECK_STREAM_PTR(i32 4)
  %119 = load i8*, i8** %9, align 8
  %120 = load i32, i32* %24, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8, i8* %119, i64 %121
  %123 = call zeroext i16 @LE_16(i8* %122)
  %124 = getelementptr inbounds [8 x i16], [8 x i16]* %29, i64 0, i64 0
  store i16 %123, i16* %124, align 16
  %125 = load i32, i32* %24, align 4
  %126 = add nsw i32 %125, 2
  store i32 %126, i32* %24, align 4
  %127 = load i8*, i8** %9, align 8
  %128 = load i32, i32* %24, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8, i8* %127, i64 %129
  %131 = call zeroext i16 @LE_16(i8* %130)
  %132 = getelementptr inbounds [8 x i16], [8 x i16]* %29, i64 0, i64 1
  store i16 %131, i16* %132, align 2
  %133 = load i32, i32* %24, align 4
  %134 = add nsw i32 %133, 2
  store i32 %134, i32* %24, align 4
  %135 = getelementptr inbounds [8 x i16], [8 x i16]* %29, i64 0, i64 0
  %136 = load i16, i16* %135, align 16
  %137 = zext i16 %136 to i32
  %138 = and i32 %137, 32768
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %232

140:                                              ; preds = %110
  %141 = call i32 @CHECK_STREAM_PTR(i32 12)
  %142 = load i8*, i8** %9, align 8
  %143 = load i32, i32* %24, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8, i8* %142, i64 %144
  %146 = call zeroext i16 @LE_16(i8* %145)
  %147 = getelementptr inbounds [8 x i16], [8 x i16]* %29, i64 0, i64 2
  store i16 %146, i16* %147, align 4
  %148 = load i32, i32* %24, align 4
  %149 = add nsw i32 %148, 2
  store i32 %149, i32* %24, align 4
  %150 = load i8*, i8** %9, align 8
  %151 = load i32, i32* %24, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i8, i8* %150, i64 %152
  %154 = call zeroext i16 @LE_16(i8* %153)
  %155 = getelementptr inbounds [8 x i16], [8 x i16]* %29, i64 0, i64 3
  store i16 %154, i16* %155, align 2
  %156 = load i32, i32* %24, align 4
  %157 = add nsw i32 %156, 2
  store i32 %157, i32* %24, align 4
  %158 = load i8*, i8** %9, align 8
  %159 = load i32, i32* %24, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i8, i8* %158, i64 %160
  %162 = call zeroext i16 @LE_16(i8* %161)
  %163 = getelementptr inbounds [8 x i16], [8 x i16]* %29, i64 0, i64 4
  store i16 %162, i16* %163, align 8
  %164 = load i32, i32* %24, align 4
  %165 = add nsw i32 %164, 2
  store i32 %165, i32* %24, align 4
  %166 = load i8*, i8** %9, align 8
  %167 = load i32, i32* %24, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i8, i8* %166, i64 %168
  %170 = call zeroext i16 @LE_16(i8* %169)
  %171 = getelementptr inbounds [8 x i16], [8 x i16]* %29, i64 0, i64 5
  store i16 %170, i16* %171, align 2
  %172 = load i32, i32* %24, align 4
  %173 = add nsw i32 %172, 2
  store i32 %173, i32* %24, align 4
  %174 = load i8*, i8** %9, align 8
  %175 = load i32, i32* %24, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i8, i8* %174, i64 %176
  %178 = call zeroext i16 @LE_16(i8* %177)
  %179 = getelementptr inbounds [8 x i16], [8 x i16]* %29, i64 0, i64 6
  store i16 %178, i16* %179, align 4
  %180 = load i32, i32* %24, align 4
  %181 = add nsw i32 %180, 2
  store i32 %181, i32* %24, align 4
  %182 = load i8*, i8** %9, align 8
  %183 = load i32, i32* %24, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i8, i8* %182, i64 %184
  %186 = call zeroext i16 @LE_16(i8* %185)
  %187 = getelementptr inbounds [8 x i16], [8 x i16]* %29, i64 0, i64 7
  store i16 %186, i16* %187, align 2
  %188 = load i32, i32* %24, align 4
  %189 = add nsw i32 %188, 2
  store i32 %189, i32* %24, align 4
  store i32 0, i32* %17, align 4
  br label %190

190:                                              ; preds = %228, %140
  %191 = load i32, i32* %17, align 4
  %192 = icmp slt i32 %191, 4
  br i1 %192, label %193, label %231

193:                                              ; preds = %190
  store i32 0, i32* %16, align 4
  br label %194

194:                                              ; preds = %217, %193
  %195 = load i32, i32* %16, align 4
  %196 = icmp slt i32 %195, 4
  br i1 %196, label %197, label %224

197:                                              ; preds = %194
  %198 = load i32, i32* %17, align 4
  %199 = and i32 %198, 2
  %200 = shl i32 %199, 1
  %201 = load i32, i32* %16, align 4
  %202 = and i32 %201, 2
  %203 = add nsw i32 %200, %202
  %204 = load i16, i16* %27, align 2
  %205 = zext i16 %204 to i32
  %206 = and i32 %205, 1
  %207 = xor i32 %206, 1
  %208 = add nsw i32 %203, %207
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds [8 x i16], [8 x i16]* %29, i64 0, i64 %209
  %211 = load i16, i16* %210, align 2
  %212 = load i16*, i16** %11, align 8
  %213 = load i32, i32* %14, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %14, align 4
  %215 = sext i32 %213 to i64
  %216 = getelementptr inbounds i16, i16* %212, i64 %215
  store i16 %211, i16* %216, align 2
  br label %217

217:                                              ; preds = %197
  %218 = load i32, i32* %16, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %16, align 4
  %220 = load i16, i16* %27, align 2
  %221 = zext i16 %220 to i32
  %222 = ashr i32 %221, 1
  %223 = trunc i32 %222 to i16
  store i16 %223, i16* %27, align 2
  br label %194

224:                                              ; preds = %194
  %225 = load i32, i32* %23, align 4
  %226 = load i32, i32* %14, align 4
  %227 = sub nsw i32 %226, %225
  store i32 %227, i32* %14, align 4
  br label %228

228:                                              ; preds = %224
  %229 = load i32, i32* %17, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %17, align 4
  br label %190

231:                                              ; preds = %190
  br label %268

232:                                              ; preds = %110
  store i32 0, i32* %17, align 4
  br label %233

233:                                              ; preds = %264, %232
  %234 = load i32, i32* %17, align 4
  %235 = icmp slt i32 %234, 4
  br i1 %235, label %236, label %267

236:                                              ; preds = %233
  store i32 0, i32* %16, align 4
  br label %237

237:                                              ; preds = %253, %236
  %238 = load i32, i32* %16, align 4
  %239 = icmp slt i32 %238, 4
  br i1 %239, label %240, label %260

240:                                              ; preds = %237
  %241 = load i16, i16* %27, align 2
  %242 = zext i16 %241 to i32
  %243 = and i32 %242, 1
  %244 = xor i32 %243, 1
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds [8 x i16], [8 x i16]* %29, i64 0, i64 %245
  %247 = load i16, i16* %246, align 2
  %248 = load i16*, i16** %11, align 8
  %249 = load i32, i32* %14, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %14, align 4
  %251 = sext i32 %249 to i64
  %252 = getelementptr inbounds i16, i16* %248, i64 %251
  store i16 %247, i16* %252, align 2
  br label %253

253:                                              ; preds = %240
  %254 = load i32, i32* %16, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %16, align 4
  %256 = load i16, i16* %27, align 2
  %257 = zext i16 %256 to i32
  %258 = ashr i32 %257, 1
  %259 = trunc i32 %258 to i16
  store i16 %259, i16* %27, align 2
  br label %237

260:                                              ; preds = %237
  %261 = load i32, i32* %23, align 4
  %262 = load i32, i32* %14, align 4
  %263 = sub nsw i32 %262, %261
  store i32 %263, i32* %14, align 4
  br label %264

264:                                              ; preds = %260
  %265 = load i32, i32* %17, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %17, align 4
  br label %233

267:                                              ; preds = %233
  br label %268

268:                                              ; preds = %267, %231
  br label %304

269:                                              ; preds = %106
  %270 = load i8, i8* %26, align 1
  %271 = zext i8 %270 to i32
  %272 = shl i32 %271, 8
  %273 = load i8, i8* %25, align 1
  %274 = zext i8 %273 to i32
  %275 = or i32 %272, %274
  %276 = trunc i32 %275 to i16
  %277 = getelementptr inbounds [8 x i16], [8 x i16]* %29, i64 0, i64 0
  store i16 %276, i16* %277, align 16
  store i32 0, i32* %17, align 4
  br label %278

278:                                              ; preds = %300, %269
  %279 = load i32, i32* %17, align 4
  %280 = icmp slt i32 %279, 4
  br i1 %280, label %281, label %303

281:                                              ; preds = %278
  store i32 0, i32* %16, align 4
  br label %282

282:                                              ; preds = %293, %281
  %283 = load i32, i32* %16, align 4
  %284 = icmp slt i32 %283, 4
  br i1 %284, label %285, label %296

285:                                              ; preds = %282
  %286 = getelementptr inbounds [8 x i16], [8 x i16]* %29, i64 0, i64 0
  %287 = load i16, i16* %286, align 16
  %288 = load i16*, i16** %11, align 8
  %289 = load i32, i32* %14, align 4
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %14, align 4
  %291 = sext i32 %289 to i64
  %292 = getelementptr inbounds i16, i16* %288, i64 %291
  store i16 %287, i16* %292, align 2
  br label %293

293:                                              ; preds = %285
  %294 = load i32, i32* %16, align 4
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %16, align 4
  br label %282

296:                                              ; preds = %282
  %297 = load i32, i32* %23, align 4
  %298 = load i32, i32* %14, align 4
  %299 = sub nsw i32 %298, %297
  store i32 %299, i32* %14, align 4
  br label %300

300:                                              ; preds = %296
  %301 = load i32, i32* %17, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %17, align 4
  br label %278

303:                                              ; preds = %278
  br label %304

304:                                              ; preds = %303, %268
  br label %305

305:                                              ; preds = %304, %97
  br label %306

306:                                              ; preds = %305
  %307 = load i32, i32* %22, align 4
  %308 = load i32, i32* %13, align 4
  %309 = add nsw i32 %308, %307
  store i32 %309, i32* %13, align 4
  %310 = load i32, i32* %15, align 4
  %311 = add nsw i32 %310, -1
  store i32 %311, i32* %15, align 4
  br label %312

312:                                              ; preds = %306, %58
  %313 = load i32, i32* %18, align 4
  %314 = add nsw i32 %313, -1
  store i32 %314, i32* %18, align 4
  br label %52

315:                                              ; preds = %52
  br label %316

316:                                              ; preds = %315
  %317 = load i32, i32* %19, align 4
  %318 = add nsw i32 %317, -1
  store i32 %318, i32* %19, align 4
  br label %41

319:                                              ; preds = %91, %41
  ret void
}

declare dso_local i32 @CHECK_STREAM_PTR(i32) #1

declare dso_local zeroext i16 @LE_16(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
