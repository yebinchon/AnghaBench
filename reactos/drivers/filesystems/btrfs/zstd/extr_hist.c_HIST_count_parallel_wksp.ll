; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/zstd/extr_hist.c_HIST_count_parallel_wksp.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/zstd/extr_hist.c_HIST_count_parallel_wksp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@maxSymbolValue_tooSmall = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*, i8*, i64, i32, i32*)* @HIST_count_parallel_wksp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @HIST_count_parallel_wksp(i32* %0, i32* %1, i8* %2, i64 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %26 = load i8*, i8** %10, align 8
  %27 = bitcast i8* %26 to i64*
  store i64* %27, i64** %14, align 8
  %28 = load i64*, i64** %14, align 8
  %29 = load i64, i64* %11, align 8
  %30 = getelementptr inbounds i64, i64* %28, i64 %29
  store i64* %30, i64** %15, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %33 = load i32*, i32** %13, align 8
  store i32* %33, i32** %18, align 8
  %34 = load i32*, i32** %18, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 256
  store i32* %35, i32** %19, align 8
  %36 = load i32*, i32** %19, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 256
  store i32* %37, i32** %20, align 8
  %38 = load i32*, i32** %20, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 256
  store i32* %39, i32** %21, align 8
  %40 = load i32*, i32** %13, align 8
  %41 = call i32 @memset(i32* %40, i32 0, i32 4096)
  %42 = load i64, i64* %11, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %6
  %45 = load i32*, i32** %8, align 8
  %46 = load i32, i32* %16, align 4
  %47 = add i32 %46, 1
  %48 = call i32 @memset(i32* %45, i32 0, i32 %47)
  %49 = load i32*, i32** %9, align 8
  store i32 0, i32* %49, align 4
  store i64 0, i64* %7, align 8
  br label %325

50:                                               ; preds = %6
  %51 = load i32, i32* %16, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %50
  store i32 255, i32* %16, align 4
  br label %54

54:                                               ; preds = %53, %50
  %55 = load i64*, i64** %14, align 8
  %56 = call i32 @MEM_read32(i64* %55)
  store i32 %56, i32* %22, align 4
  %57 = load i64*, i64** %14, align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 4
  store i64* %58, i64** %14, align 8
  br label %59

59:                                               ; preds = %64, %54
  %60 = load i64*, i64** %14, align 8
  %61 = load i64*, i64** %15, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 -15
  %63 = icmp ult i64* %60, %62
  br i1 %63, label %64, label %193

64:                                               ; preds = %59
  %65 = load i32, i32* %22, align 4
  store i32 %65, i32* %23, align 4
  %66 = load i64*, i64** %14, align 8
  %67 = call i32 @MEM_read32(i64* %66)
  store i32 %67, i32* %22, align 4
  %68 = load i64*, i64** %14, align 8
  %69 = getelementptr inbounds i64, i64* %68, i64 4
  store i64* %69, i64** %14, align 8
  %70 = load i32*, i32** %18, align 8
  %71 = load i32, i32* %23, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 4
  %76 = load i32*, i32** %19, align 8
  %77 = load i32, i32* %23, align 4
  %78 = ashr i32 %77, 8
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %76, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 4
  %83 = load i32*, i32** %20, align 8
  %84 = load i32, i32* %23, align 4
  %85 = ashr i32 %84, 16
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %83, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %87, align 4
  %90 = load i32*, i32** %21, align 8
  %91 = load i32, i32* %23, align 4
  %92 = ashr i32 %91, 24
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %90, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %94, align 4
  %97 = load i32, i32* %22, align 4
  store i32 %97, i32* %23, align 4
  %98 = load i64*, i64** %14, align 8
  %99 = call i32 @MEM_read32(i64* %98)
  store i32 %99, i32* %22, align 4
  %100 = load i64*, i64** %14, align 8
  %101 = getelementptr inbounds i64, i64* %100, i64 4
  store i64* %101, i64** %14, align 8
  %102 = load i32*, i32** %18, align 8
  %103 = load i32, i32* %23, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %105, align 4
  %108 = load i32*, i32** %19, align 8
  %109 = load i32, i32* %23, align 4
  %110 = ashr i32 %109, 8
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %108, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %112, align 4
  %115 = load i32*, i32** %20, align 8
  %116 = load i32, i32* %23, align 4
  %117 = ashr i32 %116, 16
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %115, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %119, align 4
  %122 = load i32*, i32** %21, align 8
  %123 = load i32, i32* %23, align 4
  %124 = ashr i32 %123, 24
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %122, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %126, align 4
  %129 = load i32, i32* %22, align 4
  store i32 %129, i32* %23, align 4
  %130 = load i64*, i64** %14, align 8
  %131 = call i32 @MEM_read32(i64* %130)
  store i32 %131, i32* %22, align 4
  %132 = load i64*, i64** %14, align 8
  %133 = getelementptr inbounds i64, i64* %132, i64 4
  store i64* %133, i64** %14, align 8
  %134 = load i32*, i32** %18, align 8
  %135 = load i32, i32* %23, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %137, align 4
  %140 = load i32*, i32** %19, align 8
  %141 = load i32, i32* %23, align 4
  %142 = ashr i32 %141, 8
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %140, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %144, align 4
  %147 = load i32*, i32** %20, align 8
  %148 = load i32, i32* %23, align 4
  %149 = ashr i32 %148, 16
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %147, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %151, align 4
  %154 = load i32*, i32** %21, align 8
  %155 = load i32, i32* %23, align 4
  %156 = ashr i32 %155, 24
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %154, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %158, align 4
  %161 = load i32, i32* %22, align 4
  store i32 %161, i32* %23, align 4
  %162 = load i64*, i64** %14, align 8
  %163 = call i32 @MEM_read32(i64* %162)
  store i32 %163, i32* %22, align 4
  %164 = load i64*, i64** %14, align 8
  %165 = getelementptr inbounds i64, i64* %164, i64 4
  store i64* %165, i64** %14, align 8
  %166 = load i32*, i32** %18, align 8
  %167 = load i32, i32* %23, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %166, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %169, align 4
  %172 = load i32*, i32** %19, align 8
  %173 = load i32, i32* %23, align 4
  %174 = ashr i32 %173, 8
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %172, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %176, align 4
  %179 = load i32*, i32** %20, align 8
  %180 = load i32, i32* %23, align 4
  %181 = ashr i32 %180, 16
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %179, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %183, align 4
  %186 = load i32*, i32** %21, align 8
  %187 = load i32, i32* %23, align 4
  %188 = ashr i32 %187, 24
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %186, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %190, align 4
  br label %59

193:                                              ; preds = %59
  %194 = load i64*, i64** %14, align 8
  %195 = getelementptr inbounds i64, i64* %194, i64 -4
  store i64* %195, i64** %14, align 8
  br label %196

196:                                              ; preds = %200, %193
  %197 = load i64*, i64** %14, align 8
  %198 = load i64*, i64** %15, align 8
  %199 = icmp ult i64* %197, %198
  br i1 %199, label %200, label %208

200:                                              ; preds = %196
  %201 = load i32*, i32** %18, align 8
  %202 = load i64*, i64** %14, align 8
  %203 = getelementptr inbounds i64, i64* %202, i32 1
  store i64* %203, i64** %14, align 8
  %204 = load i64, i64* %202, align 8
  %205 = getelementptr inbounds i32, i32* %201, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %205, align 4
  br label %196

208:                                              ; preds = %196
  %209 = load i32, i32* %12, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %254

211:                                              ; preds = %208
  store i32 255, i32* %24, align 4
  br label %212

212:                                              ; preds = %250, %211
  %213 = load i32, i32* %24, align 4
  %214 = load i32, i32* %16, align 4
  %215 = icmp ugt i32 %213, %214
  br i1 %215, label %216, label %253

216:                                              ; preds = %212
  %217 = load i32*, i32** %19, align 8
  %218 = load i32, i32* %24, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %217, i64 %219
  %221 = load i32, i32* %220, align 4
  %222 = load i32*, i32** %20, align 8
  %223 = load i32, i32* %24, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %222, i64 %224
  %226 = load i32, i32* %225, align 4
  %227 = add nsw i32 %221, %226
  %228 = load i32*, i32** %21, align 8
  %229 = load i32, i32* %24, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32, i32* %228, i64 %230
  %232 = load i32, i32* %231, align 4
  %233 = add nsw i32 %227, %232
  %234 = load i32*, i32** %18, align 8
  %235 = load i32, i32* %24, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32, i32* %234, i64 %236
  %238 = load i32, i32* %237, align 4
  %239 = add nsw i32 %238, %233
  store i32 %239, i32* %237, align 4
  %240 = load i32*, i32** %18, align 8
  %241 = load i32, i32* %24, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32, i32* %240, i64 %242
  %244 = load i32, i32* %243, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %249

246:                                              ; preds = %216
  %247 = load i32, i32* @maxSymbolValue_tooSmall, align 4
  %248 = call i64 @ERROR(i32 %247)
  store i64 %248, i64* %7, align 8
  br label %325

249:                                              ; preds = %216
  br label %250

250:                                              ; preds = %249
  %251 = load i32, i32* %24, align 4
  %252 = add nsw i32 %251, -1
  store i32 %252, i32* %24, align 4
  br label %212

253:                                              ; preds = %212
  br label %254

254:                                              ; preds = %253, %208
  %255 = load i32, i32* %16, align 4
  %256 = icmp ugt i32 %255, 255
  br i1 %256, label %257, label %258

257:                                              ; preds = %254
  store i32 255, i32* %16, align 4
  br label %258

258:                                              ; preds = %257, %254
  store i32 0, i32* %25, align 4
  br label %259

259:                                              ; preds = %305, %258
  %260 = load i32, i32* %25, align 4
  %261 = load i32, i32* %16, align 4
  %262 = icmp ule i32 %260, %261
  br i1 %262, label %263, label %308

263:                                              ; preds = %259
  %264 = load i32*, i32** %18, align 8
  %265 = load i32, i32* %25, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i32, i32* %264, i64 %266
  %268 = load i32, i32* %267, align 4
  %269 = load i32*, i32** %19, align 8
  %270 = load i32, i32* %25, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i32, i32* %269, i64 %271
  %273 = load i32, i32* %272, align 4
  %274 = add nsw i32 %268, %273
  %275 = load i32*, i32** %20, align 8
  %276 = load i32, i32* %25, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i32, i32* %275, i64 %277
  %279 = load i32, i32* %278, align 4
  %280 = add nsw i32 %274, %279
  %281 = load i32*, i32** %21, align 8
  %282 = load i32, i32* %25, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i32, i32* %281, i64 %283
  %285 = load i32, i32* %284, align 4
  %286 = add nsw i32 %280, %285
  %287 = load i32*, i32** %8, align 8
  %288 = load i32, i32* %25, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i32, i32* %287, i64 %289
  store i32 %286, i32* %290, align 4
  %291 = load i32*, i32** %8, align 8
  %292 = load i32, i32* %25, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i32, i32* %291, i64 %293
  %295 = load i32, i32* %294, align 4
  %296 = load i32, i32* %17, align 4
  %297 = icmp ugt i32 %295, %296
  br i1 %297, label %298, label %304

298:                                              ; preds = %263
  %299 = load i32*, i32** %8, align 8
  %300 = load i32, i32* %25, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i32, i32* %299, i64 %301
  %303 = load i32, i32* %302, align 4
  store i32 %303, i32* %17, align 4
  br label %304

304:                                              ; preds = %298, %263
  br label %305

305:                                              ; preds = %304
  %306 = load i32, i32* %25, align 4
  %307 = add nsw i32 %306, 1
  store i32 %307, i32* %25, align 4
  br label %259

308:                                              ; preds = %259
  br label %309

309:                                              ; preds = %317, %308
  %310 = load i32*, i32** %8, align 8
  %311 = load i32, i32* %16, align 4
  %312 = zext i32 %311 to i64
  %313 = getelementptr inbounds i32, i32* %310, i64 %312
  %314 = load i32, i32* %313, align 4
  %315 = icmp ne i32 %314, 0
  %316 = xor i1 %315, true
  br i1 %316, label %317, label %320

317:                                              ; preds = %309
  %318 = load i32, i32* %16, align 4
  %319 = add i32 %318, -1
  store i32 %319, i32* %16, align 4
  br label %309

320:                                              ; preds = %309
  %321 = load i32, i32* %16, align 4
  %322 = load i32*, i32** %9, align 8
  store i32 %321, i32* %322, align 4
  %323 = load i32, i32* %17, align 4
  %324 = zext i32 %323 to i64
  store i64 %324, i64* %7, align 8
  br label %325

325:                                              ; preds = %320, %246, %44
  %326 = load i64, i64* %7, align 8
  ret i64 %326
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @MEM_read32(i64*) #1

declare dso_local i64 @ERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
