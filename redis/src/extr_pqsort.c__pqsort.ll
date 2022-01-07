; ModuleID = '/home/carl/AnghaBench/redis/src/extr_pqsort.c__pqsort.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_pqsort.c__pqsort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i64, i32 (i8*, i8*)*, i8*, i8*)* @_pqsort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_pqsort(i8* %0, i64 %1, i64 %2, i32 (i8*, i8*)* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32 (i8*, i8*)*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 (i8*, i8*)* %3, i32 (i8*, i8*)** %10, align 8
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  br label %28

28:                                               ; preds = %348, %6
  %29 = load i8*, i8** %7, align 8
  %30 = load i64, i64* %9, align 8
  %31 = call i32 @SWAPINIT(i8* %29, i64 %30)
  %32 = load i64, i64* %8, align 8
  %33 = icmp ult i64 %32, 7
  br i1 %33, label %34, label %81

34:                                               ; preds = %28
  %35 = load i8*, i8** %7, align 8
  %36 = load i64, i64* %9, align 8
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  store i8* %37, i8** %18, align 8
  br label %38

38:                                               ; preds = %76, %34
  %39 = load i8*, i8** %18, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* %9, align 8
  %43 = mul i64 %41, %42
  %44 = getelementptr inbounds i8, i8* %40, i64 %43
  %45 = icmp ult i8* %39, %44
  br i1 %45, label %46, label %80

46:                                               ; preds = %38
  %47 = load i8*, i8** %18, align 8
  store i8* %47, i8** %17, align 8
  br label %48

48:                                               ; preds = %70, %46
  %49 = load i8*, i8** %17, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = icmp ugt i8* %49, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %48
  %53 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %10, align 8
  %54 = load i8*, i8** %17, align 8
  %55 = load i64, i64* %9, align 8
  %56 = sub i64 0, %55
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  %58 = load i8*, i8** %17, align 8
  %59 = call i32 %53(i8* %57, i8* %58)
  %60 = icmp sgt i32 %59, 0
  br label %61

61:                                               ; preds = %52, %48
  %62 = phi i1 [ false, %48 ], [ %60, %52 ]
  br i1 %62, label %63, label %75

63:                                               ; preds = %61
  %64 = load i8*, i8** %17, align 8
  %65 = load i8*, i8** %17, align 8
  %66 = load i64, i64* %9, align 8
  %67 = sub i64 0, %66
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  %69 = call i32 @swap(i8* %64, i8* %68)
  br label %70

70:                                               ; preds = %63
  %71 = load i64, i64* %9, align 8
  %72 = load i8*, i8** %17, align 8
  %73 = sub i64 0, %71
  %74 = getelementptr inbounds i8, i8* %72, i64 %73
  store i8* %74, i8** %17, align 8
  br label %48

75:                                               ; preds = %61
  br label %76

76:                                               ; preds = %75
  %77 = load i64, i64* %9, align 8
  %78 = load i8*, i8** %18, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 %77
  store i8* %79, i8** %18, align 8
  br label %38

80:                                               ; preds = %38
  br label %350

81:                                               ; preds = %28
  %82 = load i8*, i8** %7, align 8
  %83 = load i64, i64* %8, align 8
  %84 = udiv i64 %83, 2
  %85 = load i64, i64* %9, align 8
  %86 = mul i64 %84, %85
  %87 = getelementptr inbounds i8, i8* %82, i64 %86
  store i8* %87, i8** %18, align 8
  %88 = load i64, i64* %8, align 8
  %89 = icmp ugt i64 %88, 7
  br i1 %89, label %90, label %143

90:                                               ; preds = %81
  %91 = load i8*, i8** %7, align 8
  store i8* %91, i8** %17, align 8
  %92 = load i8*, i8** %7, align 8
  %93 = load i64, i64* %8, align 8
  %94 = sub i64 %93, 1
  %95 = load i64, i64* %9, align 8
  %96 = mul i64 %94, %95
  %97 = getelementptr inbounds i8, i8* %92, i64 %96
  store i8* %97, i8** %19, align 8
  %98 = load i64, i64* %8, align 8
  %99 = icmp ugt i64 %98, 40
  br i1 %99, label %100, label %137

100:                                              ; preds = %90
  %101 = load i64, i64* %8, align 8
  %102 = udiv i64 %101, 8
  %103 = load i64, i64* %9, align 8
  %104 = mul i64 %102, %103
  store i64 %104, i64* %20, align 8
  %105 = load i8*, i8** %17, align 8
  %106 = load i8*, i8** %17, align 8
  %107 = load i64, i64* %20, align 8
  %108 = getelementptr inbounds i8, i8* %106, i64 %107
  %109 = load i8*, i8** %17, align 8
  %110 = load i64, i64* %20, align 8
  %111 = mul i64 2, %110
  %112 = getelementptr inbounds i8, i8* %109, i64 %111
  %113 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %10, align 8
  %114 = call i8* @med3(i8* %105, i8* %108, i8* %112, i32 (i8*, i8*)* %113)
  store i8* %114, i8** %17, align 8
  %115 = load i8*, i8** %18, align 8
  %116 = load i64, i64* %20, align 8
  %117 = sub i64 0, %116
  %118 = getelementptr inbounds i8, i8* %115, i64 %117
  %119 = load i8*, i8** %18, align 8
  %120 = load i8*, i8** %18, align 8
  %121 = load i64, i64* %20, align 8
  %122 = getelementptr inbounds i8, i8* %120, i64 %121
  %123 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %10, align 8
  %124 = call i8* @med3(i8* %118, i8* %119, i8* %122, i32 (i8*, i8*)* %123)
  store i8* %124, i8** %18, align 8
  %125 = load i8*, i8** %19, align 8
  %126 = load i64, i64* %20, align 8
  %127 = mul i64 2, %126
  %128 = sub i64 0, %127
  %129 = getelementptr inbounds i8, i8* %125, i64 %128
  %130 = load i8*, i8** %19, align 8
  %131 = load i64, i64* %20, align 8
  %132 = sub i64 0, %131
  %133 = getelementptr inbounds i8, i8* %130, i64 %132
  %134 = load i8*, i8** %19, align 8
  %135 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %10, align 8
  %136 = call i8* @med3(i8* %129, i8* %133, i8* %134, i32 (i8*, i8*)* %135)
  store i8* %136, i8** %19, align 8
  br label %137

137:                                              ; preds = %100, %90
  %138 = load i8*, i8** %17, align 8
  %139 = load i8*, i8** %18, align 8
  %140 = load i8*, i8** %19, align 8
  %141 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %10, align 8
  %142 = call i8* @med3(i8* %138, i8* %139, i8* %140, i32 (i8*, i8*)* %141)
  store i8* %142, i8** %18, align 8
  br label %143

143:                                              ; preds = %137, %81
  %144 = load i8*, i8** %7, align 8
  %145 = load i8*, i8** %18, align 8
  %146 = call i32 @swap(i8* %144, i8* %145)
  %147 = load i8*, i8** %7, align 8
  %148 = load i64, i64* %9, align 8
  %149 = getelementptr inbounds i8, i8* %147, i64 %148
  store i8* %149, i8** %14, align 8
  store i8* %149, i8** %13, align 8
  %150 = load i8*, i8** %7, align 8
  %151 = load i64, i64* %8, align 8
  %152 = sub i64 %151, 1
  %153 = load i64, i64* %9, align 8
  %154 = mul i64 %152, %153
  %155 = getelementptr inbounds i8, i8* %150, i64 %154
  store i8* %155, i8** %16, align 8
  store i8* %155, i8** %15, align 8
  br label %156

156:                                              ; preds = %217, %143
  br label %157

157:                                              ; preds = %179, %156
  %158 = load i8*, i8** %14, align 8
  %159 = load i8*, i8** %15, align 8
  %160 = icmp ule i8* %158, %159
  br i1 %160, label %161, label %167

161:                                              ; preds = %157
  %162 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %10, align 8
  %163 = load i8*, i8** %14, align 8
  %164 = load i8*, i8** %7, align 8
  %165 = call i32 %162(i8* %163, i8* %164)
  store i32 %165, i32* %23, align 4
  %166 = icmp sle i32 %165, 0
  br label %167

167:                                              ; preds = %161, %157
  %168 = phi i1 [ false, %157 ], [ %166, %161 ]
  br i1 %168, label %169, label %183

169:                                              ; preds = %167
  %170 = load i32, i32* %23, align 4
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %179

172:                                              ; preds = %169
  %173 = load i8*, i8** %13, align 8
  %174 = load i8*, i8** %14, align 8
  %175 = call i32 @swap(i8* %173, i8* %174)
  %176 = load i64, i64* %9, align 8
  %177 = load i8*, i8** %13, align 8
  %178 = getelementptr inbounds i8, i8* %177, i64 %176
  store i8* %178, i8** %13, align 8
  br label %179

179:                                              ; preds = %172, %169
  %180 = load i64, i64* %9, align 8
  %181 = load i8*, i8** %14, align 8
  %182 = getelementptr inbounds i8, i8* %181, i64 %180
  store i8* %182, i8** %14, align 8
  br label %157

183:                                              ; preds = %167
  br label %184

184:                                              ; preds = %207, %183
  %185 = load i8*, i8** %14, align 8
  %186 = load i8*, i8** %15, align 8
  %187 = icmp ule i8* %185, %186
  br i1 %187, label %188, label %194

188:                                              ; preds = %184
  %189 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %10, align 8
  %190 = load i8*, i8** %15, align 8
  %191 = load i8*, i8** %7, align 8
  %192 = call i32 %189(i8* %190, i8* %191)
  store i32 %192, i32* %23, align 4
  %193 = icmp sge i32 %192, 0
  br label %194

194:                                              ; preds = %188, %184
  %195 = phi i1 [ false, %184 ], [ %193, %188 ]
  br i1 %195, label %196, label %212

196:                                              ; preds = %194
  %197 = load i32, i32* %23, align 4
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %207

199:                                              ; preds = %196
  %200 = load i8*, i8** %15, align 8
  %201 = load i8*, i8** %16, align 8
  %202 = call i32 @swap(i8* %200, i8* %201)
  %203 = load i64, i64* %9, align 8
  %204 = load i8*, i8** %16, align 8
  %205 = sub i64 0, %203
  %206 = getelementptr inbounds i8, i8* %204, i64 %205
  store i8* %206, i8** %16, align 8
  br label %207

207:                                              ; preds = %199, %196
  %208 = load i64, i64* %9, align 8
  %209 = load i8*, i8** %15, align 8
  %210 = sub i64 0, %208
  %211 = getelementptr inbounds i8, i8* %209, i64 %210
  store i8* %211, i8** %15, align 8
  br label %184

212:                                              ; preds = %194
  %213 = load i8*, i8** %14, align 8
  %214 = load i8*, i8** %15, align 8
  %215 = icmp ugt i8* %213, %214
  br i1 %215, label %216, label %217

216:                                              ; preds = %212
  br label %228

217:                                              ; preds = %212
  %218 = load i8*, i8** %14, align 8
  %219 = load i8*, i8** %15, align 8
  %220 = call i32 @swap(i8* %218, i8* %219)
  %221 = load i64, i64* %9, align 8
  %222 = load i8*, i8** %14, align 8
  %223 = getelementptr inbounds i8, i8* %222, i64 %221
  store i8* %223, i8** %14, align 8
  %224 = load i64, i64* %9, align 8
  %225 = load i8*, i8** %15, align 8
  %226 = sub i64 0, %224
  %227 = getelementptr inbounds i8, i8* %225, i64 %226
  store i8* %227, i8** %15, align 8
  br label %156

228:                                              ; preds = %216
  %229 = load i8*, i8** %7, align 8
  %230 = load i64, i64* %8, align 8
  %231 = load i64, i64* %9, align 8
  %232 = mul i64 %230, %231
  %233 = getelementptr inbounds i8, i8* %229, i64 %232
  store i8* %233, i8** %19, align 8
  %234 = load i8*, i8** %13, align 8
  %235 = load i8*, i8** %7, align 8
  %236 = ptrtoint i8* %234 to i64
  %237 = ptrtoint i8* %235 to i64
  %238 = sub i64 %236, %237
  %239 = load i8*, i8** %14, align 8
  %240 = load i8*, i8** %13, align 8
  %241 = ptrtoint i8* %239 to i64
  %242 = ptrtoint i8* %240 to i64
  %243 = sub i64 %241, %242
  %244 = trunc i64 %243 to i32
  %245 = call i64 @min(i64 %238, i32 %244)
  store i64 %245, i64* %21, align 8
  %246 = load i8*, i8** %7, align 8
  %247 = load i8*, i8** %14, align 8
  %248 = load i64, i64* %21, align 8
  %249 = sub i64 0, %248
  %250 = getelementptr inbounds i8, i8* %247, i64 %249
  %251 = load i64, i64* %21, align 8
  %252 = call i32 @vecswap(i8* %246, i8* %250, i64 %251)
  %253 = load i8*, i8** %16, align 8
  %254 = load i8*, i8** %15, align 8
  %255 = ptrtoint i8* %253 to i64
  %256 = ptrtoint i8* %254 to i64
  %257 = sub i64 %255, %256
  %258 = load i8*, i8** %19, align 8
  %259 = load i8*, i8** %16, align 8
  %260 = ptrtoint i8* %258 to i64
  %261 = ptrtoint i8* %259 to i64
  %262 = sub i64 %260, %261
  %263 = load i64, i64* %9, align 8
  %264 = sub i64 %262, %263
  %265 = trunc i64 %264 to i32
  %266 = call i64 @min(i64 %257, i32 %265)
  store i64 %266, i64* %21, align 8
  %267 = load i8*, i8** %14, align 8
  %268 = load i8*, i8** %19, align 8
  %269 = load i64, i64* %21, align 8
  %270 = sub i64 0, %269
  %271 = getelementptr inbounds i8, i8* %268, i64 %270
  %272 = load i64, i64* %21, align 8
  %273 = call i32 @vecswap(i8* %267, i8* %271, i64 %272)
  %274 = load i8*, i8** %14, align 8
  %275 = load i8*, i8** %13, align 8
  %276 = ptrtoint i8* %274 to i64
  %277 = ptrtoint i8* %275 to i64
  %278 = sub i64 %276, %277
  store i64 %278, i64* %21, align 8
  %279 = load i64, i64* %9, align 8
  %280 = icmp ugt i64 %278, %279
  br i1 %280, label %281, label %312

281:                                              ; preds = %228
  %282 = load i8*, i8** %7, align 8
  store i8* %282, i8** %24, align 8
  %283 = load i8*, i8** %7, align 8
  %284 = load i64, i64* %21, align 8
  %285 = getelementptr inbounds i8, i8* %283, i64 %284
  %286 = getelementptr inbounds i8, i8* %285, i64 -1
  store i8* %286, i8** %25, align 8
  %287 = load i8*, i8** %11, align 8
  %288 = load i8*, i8** %24, align 8
  %289 = icmp ult i8* %287, %288
  br i1 %289, label %290, label %294

290:                                              ; preds = %281
  %291 = load i8*, i8** %12, align 8
  %292 = load i8*, i8** %24, align 8
  %293 = icmp ult i8* %291, %292
  br i1 %293, label %311, label %294

294:                                              ; preds = %290, %281
  %295 = load i8*, i8** %11, align 8
  %296 = load i8*, i8** %25, align 8
  %297 = icmp ugt i8* %295, %296
  br i1 %297, label %298, label %302

298:                                              ; preds = %294
  %299 = load i8*, i8** %12, align 8
  %300 = load i8*, i8** %25, align 8
  %301 = icmp ugt i8* %299, %300
  br i1 %301, label %311, label %302

302:                                              ; preds = %298, %294
  %303 = load i8*, i8** %7, align 8
  %304 = load i64, i64* %21, align 8
  %305 = load i64, i64* %9, align 8
  %306 = udiv i64 %304, %305
  %307 = load i64, i64* %9, align 8
  %308 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %10, align 8
  %309 = load i8*, i8** %11, align 8
  %310 = load i8*, i8** %12, align 8
  call void @_pqsort(i8* %303, i64 %306, i64 %307, i32 (i8*, i8*)* %308, i8* %309, i8* %310)
  br label %311

311:                                              ; preds = %302, %298, %290
  br label %312

312:                                              ; preds = %311, %228
  %313 = load i8*, i8** %16, align 8
  %314 = load i8*, i8** %15, align 8
  %315 = ptrtoint i8* %313 to i64
  %316 = ptrtoint i8* %314 to i64
  %317 = sub i64 %315, %316
  store i64 %317, i64* %21, align 8
  %318 = load i64, i64* %9, align 8
  %319 = icmp ugt i64 %317, %318
  br i1 %319, label %320, label %350

320:                                              ; preds = %312
  %321 = load i8*, i8** %19, align 8
  %322 = load i64, i64* %21, align 8
  %323 = sub i64 0, %322
  %324 = getelementptr inbounds i8, i8* %321, i64 %323
  store i8* %324, i8** %7, align 8
  %325 = load i64, i64* %21, align 8
  %326 = load i64, i64* %9, align 8
  %327 = udiv i64 %325, %326
  store i64 %327, i64* %8, align 8
  %328 = load i8*, i8** %7, align 8
  store i8* %328, i8** %26, align 8
  %329 = load i8*, i8** %7, align 8
  %330 = load i64, i64* %21, align 8
  %331 = getelementptr inbounds i8, i8* %329, i64 %330
  %332 = getelementptr inbounds i8, i8* %331, i64 -1
  store i8* %332, i8** %27, align 8
  %333 = load i8*, i8** %11, align 8
  %334 = load i8*, i8** %26, align 8
  %335 = icmp ult i8* %333, %334
  br i1 %335, label %336, label %340

336:                                              ; preds = %320
  %337 = load i8*, i8** %12, align 8
  %338 = load i8*, i8** %26, align 8
  %339 = icmp ult i8* %337, %338
  br i1 %339, label %349, label %340

340:                                              ; preds = %336, %320
  %341 = load i8*, i8** %11, align 8
  %342 = load i8*, i8** %27, align 8
  %343 = icmp ugt i8* %341, %342
  br i1 %343, label %344, label %348

344:                                              ; preds = %340
  %345 = load i8*, i8** %12, align 8
  %346 = load i8*, i8** %27, align 8
  %347 = icmp ugt i8* %345, %346
  br i1 %347, label %349, label %348

348:                                              ; preds = %344, %340
  br label %28

349:                                              ; preds = %344, %336
  br label %350

350:                                              ; preds = %80, %349, %312
  ret void
}

declare dso_local i32 @SWAPINIT(i8*, i64) #1

declare dso_local i32 @swap(i8*, i8*) #1

declare dso_local i8* @med3(i8*, i8*, i8*, i32 (i8*, i8*)*) #1

declare dso_local i64 @min(i64, i32) #1

declare dso_local i32 @vecswap(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
