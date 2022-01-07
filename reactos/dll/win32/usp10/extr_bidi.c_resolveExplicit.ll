; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_bidi.c_resolveExplicit.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_bidi.c_resolveExplicit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i32 }

@MAX_DEPTH = common dso_local global i32 0, align 4
@NI = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@R = common dso_local global i64 0, align 8
@L = common dso_local global i64 0, align 8
@RLE = common dso_local global i64 0, align 8
@LRE = common dso_local global i64 0, align 8
@RLO = common dso_local global i64 0, align 8
@LRO = common dso_local global i64 0, align 8
@RLI = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@LRI = common dso_local global i64 0, align 8
@FSI = common dso_local global i64 0, align 8
@PDI = common dso_local global i64 0, align 8
@AL = common dso_local global i64 0, align 8
@B = common dso_local global i64 0, align 8
@BN = common dso_local global i64 0, align 8
@PDF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64*, i64*, i64*, i32, i64)* @resolveExplicit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @resolveExplicit(i32 %0, i64* %1, i64* %2, i64* %3, i32 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
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
  %30 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i64* %1, i64** %8, align 8
  store i64* %2, i64** %9, align 8
  store i64* %3, i64** %10, align 8
  store i32 %4, i32* %11, align 4
  store i64 %5, i64* %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %31 = load i32, i32* @MAX_DEPTH, align 4
  %32 = add nsw i32 %31, 2
  %33 = zext i32 %32 to i64
  %34 = call i8* @llvm.stacksave()
  store i8* %34, i8** %17, align 8
  %35 = alloca %struct.TYPE_2__, i64 %33, align 16
  store i64 %33, i64* %18, align 8
  %36 = load i32, i32* @MAX_DEPTH, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %19, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %19, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 %38, i32* %42, align 8
  %43 = load i64, i64* @NI, align 8
  %44 = load i32, i32* %19, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  store i64 %43, i64* %47, align 8
  %48 = load i32, i32* @FALSE, align 4
  %49 = load i32, i32* %19, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 2
  store i32 %48, i32* %52, align 8
  %53 = load i64, i64* %12, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %70

55:                                               ; preds = %6
  %56 = load i32, i32* %7, align 4
  %57 = call i64 @odd(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %55
  %60 = load i32, i32* %7, align 4
  %61 = load i64, i64* @R, align 8
  %62 = load i32, i32* @FALSE, align 4
  %63 = call i32 @push_stack(i32 %60, i64 %61, i32 %62)
  br label %69

64:                                               ; preds = %55
  %65 = load i32, i32* %7, align 4
  %66 = load i64, i64* @L, align 8
  %67 = load i32, i32* @FALSE, align 4
  %68 = call i32 @push_stack(i32 %65, i64 %66, i32 %67)
  br label %69

69:                                               ; preds = %64, %59
  br label %70

70:                                               ; preds = %69, %6
  store i32 0, i32* %16, align 4
  br label %71

71:                                               ; preds = %642, %70
  %72 = load i32, i32* %16, align 4
  %73 = load i32, i32* %11, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %645

75:                                               ; preds = %71
  %76 = load i32, i32* %19, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i64*, i64** %10, align 8
  %82 = load i32, i32* %16, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %81, i64 %83
  store i64 %80, i64* %84, align 8
  %85 = load i64*, i64** %8, align 8
  %86 = load i32, i32* %16, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i64, i64* %85, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @RLE, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %125

92:                                               ; preds = %75
  %93 = load i32, i32* %19, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @GreaterOdd(i32 %97)
  store i32 %98, i32* %20, align 4
  %99 = load i32, i32* %19, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = sext i32 %103 to i64
  %105 = load i64*, i64** %9, align 8
  %106 = load i32, i32* %16, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i64, i64* %105, i64 %107
  store i64 %104, i64* %108, align 8
  %109 = load i32, i32* %20, align 4
  %110 = call i64 @valid_level(i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %92
  %113 = load i32, i32* %20, align 4
  %114 = load i64, i64* @NI, align 8
  %115 = load i32, i32* @FALSE, align 4
  %116 = call i32 @push_stack(i32 %113, i64 %114, i32 %115)
  br label %124

117:                                              ; preds = %92
  %118 = load i32, i32* %13, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %117
  %121 = load i32, i32* %14, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %14, align 4
  br label %123

123:                                              ; preds = %120, %117
  br label %124

124:                                              ; preds = %123, %112
  br label %641

125:                                              ; preds = %75
  %126 = load i64*, i64** %8, align 8
  %127 = load i32, i32* %16, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i64, i64* %126, i64 %128
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @LRE, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %167

133:                                              ; preds = %125
  %134 = load i32, i32* %19, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = sext i32 %138 to i64
  %140 = call i32 @GreaterEven(i64 %139)
  store i32 %140, i32* %21, align 4
  %141 = load i32, i32* %19, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = sext i32 %145 to i64
  %147 = load i64*, i64** %9, align 8
  %148 = load i32, i32* %16, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i64, i64* %147, i64 %149
  store i64 %146, i64* %150, align 8
  %151 = load i32, i32* %21, align 4
  %152 = call i64 @valid_level(i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %159

154:                                              ; preds = %133
  %155 = load i32, i32* %21, align 4
  %156 = load i64, i64* @NI, align 8
  %157 = load i32, i32* @FALSE, align 4
  %158 = call i32 @push_stack(i32 %155, i64 %156, i32 %157)
  br label %166

159:                                              ; preds = %133
  %160 = load i32, i32* %13, align 4
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %159
  %163 = load i32, i32* %14, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %14, align 4
  br label %165

165:                                              ; preds = %162, %159
  br label %166

166:                                              ; preds = %165, %154
  br label %640

167:                                              ; preds = %125
  %168 = load i64*, i64** %8, align 8
  %169 = load i32, i32* %16, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i64, i64* %168, i64 %170
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @RLO, align 8
  %174 = icmp eq i64 %172, %173
  br i1 %174, label %175, label %208

175:                                              ; preds = %167
  %176 = load i32, i32* %19, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = call i32 @GreaterOdd(i32 %180)
  store i32 %181, i32* %22, align 4
  %182 = load i32, i32* %19, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = sext i32 %186 to i64
  %188 = load i64*, i64** %9, align 8
  %189 = load i32, i32* %16, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i64, i64* %188, i64 %190
  store i64 %187, i64* %191, align 8
  %192 = load i32, i32* %22, align 4
  %193 = call i64 @valid_level(i32 %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %200

195:                                              ; preds = %175
  %196 = load i32, i32* %22, align 4
  %197 = load i64, i64* @R, align 8
  %198 = load i32, i32* @FALSE, align 4
  %199 = call i32 @push_stack(i32 %196, i64 %197, i32 %198)
  br label %207

200:                                              ; preds = %175
  %201 = load i32, i32* %13, align 4
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %203, label %206

203:                                              ; preds = %200
  %204 = load i32, i32* %14, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %14, align 4
  br label %206

206:                                              ; preds = %203, %200
  br label %207

207:                                              ; preds = %206, %195
  br label %639

208:                                              ; preds = %167
  %209 = load i64*, i64** %8, align 8
  %210 = load i32, i32* %16, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i64, i64* %209, i64 %211
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* @LRO, align 8
  %215 = icmp eq i64 %213, %214
  br i1 %215, label %216, label %250

216:                                              ; preds = %208
  %217 = load i32, i32* %19, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = sext i32 %221 to i64
  %223 = call i32 @GreaterEven(i64 %222)
  store i32 %223, i32* %23, align 4
  %224 = load i32, i32* %19, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = sext i32 %228 to i64
  %230 = load i64*, i64** %9, align 8
  %231 = load i32, i32* %16, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i64, i64* %230, i64 %232
  store i64 %229, i64* %233, align 8
  %234 = load i32, i32* %23, align 4
  %235 = call i64 @valid_level(i32 %234)
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %242

237:                                              ; preds = %216
  %238 = load i32, i32* %23, align 4
  %239 = load i64, i64* @L, align 8
  %240 = load i32, i32* @FALSE, align 4
  %241 = call i32 @push_stack(i32 %238, i64 %239, i32 %240)
  br label %249

242:                                              ; preds = %216
  %243 = load i32, i32* %13, align 4
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %245, label %248

245:                                              ; preds = %242
  %246 = load i32, i32* %14, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %14, align 4
  br label %248

248:                                              ; preds = %245, %242
  br label %249

249:                                              ; preds = %248, %237
  br label %638

250:                                              ; preds = %208
  %251 = load i64*, i64** %8, align 8
  %252 = load i32, i32* %16, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i64, i64* %251, i64 %253
  %255 = load i64, i64* %254, align 8
  %256 = load i64, i64* @RLI, align 8
  %257 = icmp eq i64 %255, %256
  br i1 %257, label %258, label %289

258:                                              ; preds = %250
  %259 = load i32, i32* %19, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %260
  %262 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = call i32 @GreaterOdd(i32 %263)
  store i32 %264, i32* %24, align 4
  %265 = load i32, i32* %19, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %266
  %268 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = sext i32 %269 to i64
  %271 = load i64*, i64** %9, align 8
  %272 = load i32, i32* %16, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i64, i64* %271, i64 %273
  store i64 %270, i64* %274, align 8
  %275 = load i32, i32* %24, align 4
  %276 = call i64 @valid_level(i32 %275)
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %285

278:                                              ; preds = %258
  %279 = load i32, i32* %15, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %15, align 4
  %281 = load i32, i32* %24, align 4
  %282 = load i64, i64* @NI, align 8
  %283 = load i32, i32* @TRUE, align 4
  %284 = call i32 @push_stack(i32 %281, i64 %282, i32 %283)
  br label %288

285:                                              ; preds = %258
  %286 = load i32, i32* %13, align 4
  %287 = add nsw i32 %286, 1
  store i32 %287, i32* %13, align 4
  br label %288

288:                                              ; preds = %285, %278
  br label %637

289:                                              ; preds = %250
  %290 = load i64*, i64** %8, align 8
  %291 = load i32, i32* %16, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i64, i64* %290, i64 %292
  %294 = load i64, i64* %293, align 8
  %295 = load i64, i64* @LRI, align 8
  %296 = icmp eq i64 %294, %295
  br i1 %296, label %297, label %329

297:                                              ; preds = %289
  %298 = load i32, i32* %19, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %299
  %301 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 8
  %303 = sext i32 %302 to i64
  %304 = call i32 @GreaterEven(i64 %303)
  store i32 %304, i32* %25, align 4
  %305 = load i32, i32* %19, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %306
  %308 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 8
  %310 = sext i32 %309 to i64
  %311 = load i64*, i64** %9, align 8
  %312 = load i32, i32* %16, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds i64, i64* %311, i64 %313
  store i64 %310, i64* %314, align 8
  %315 = load i32, i32* %25, align 4
  %316 = call i64 @valid_level(i32 %315)
  %317 = icmp ne i64 %316, 0
  br i1 %317, label %318, label %325

318:                                              ; preds = %297
  %319 = load i32, i32* %15, align 4
  %320 = add nsw i32 %319, 1
  store i32 %320, i32* %15, align 4
  %321 = load i32, i32* %25, align 4
  %322 = load i64, i64* @NI, align 8
  %323 = load i32, i32* @TRUE, align 4
  %324 = call i32 @push_stack(i32 %321, i64 %322, i32 %323)
  br label %328

325:                                              ; preds = %297
  %326 = load i32, i32* %13, align 4
  %327 = add nsw i32 %326, 1
  store i32 %327, i32* %13, align 4
  br label %328

328:                                              ; preds = %325, %318
  br label %636

329:                                              ; preds = %289
  %330 = load i64*, i64** %8, align 8
  %331 = load i32, i32* %16, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds i64, i64* %330, i64 %332
  %334 = load i64, i64* %333, align 8
  %335 = load i64, i64* @FSI, align 8
  %336 = icmp eq i64 %334, %335
  br i1 %336, label %337, label %481

337:                                              ; preds = %329
  store i32 0, i32* %27, align 4
  store i32 0, i32* %28, align 4
  %338 = load i32, i32* %19, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %339
  %341 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 8
  %343 = sext i32 %342 to i64
  %344 = load i64*, i64** %9, align 8
  %345 = load i32, i32* %16, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds i64, i64* %344, i64 %346
  store i64 %343, i64* %347, align 8
  %348 = load i32, i32* %16, align 4
  %349 = add nsw i32 %348, 1
  store i32 %349, i32* %26, align 4
  br label %350

350:                                              ; preds = %430, %337
  %351 = load i32, i32* %26, align 4
  %352 = load i32, i32* %11, align 4
  %353 = icmp slt i32 %351, %352
  br i1 %353, label %354, label %433

354:                                              ; preds = %350
  %355 = load i64*, i64** %8, align 8
  %356 = load i32, i32* %26, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds i64, i64* %355, i64 %357
  %359 = load i64, i64* %358, align 8
  %360 = load i64, i64* @LRI, align 8
  %361 = icmp eq i64 %359, %360
  br i1 %361, label %378, label %362

362:                                              ; preds = %354
  %363 = load i64*, i64** %8, align 8
  %364 = load i32, i32* %26, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds i64, i64* %363, i64 %365
  %367 = load i64, i64* %366, align 8
  %368 = load i64, i64* @RLI, align 8
  %369 = icmp eq i64 %367, %368
  br i1 %369, label %378, label %370

370:                                              ; preds = %362
  %371 = load i64*, i64** %8, align 8
  %372 = load i32, i32* %26, align 4
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds i64, i64* %371, i64 %373
  %375 = load i64, i64* %374, align 8
  %376 = load i64, i64* @FSI, align 8
  %377 = icmp eq i64 %375, %376
  br i1 %377, label %378, label %381

378:                                              ; preds = %370, %362, %354
  %379 = load i32, i32* %28, align 4
  %380 = add nsw i32 %379, 1
  store i32 %380, i32* %28, align 4
  br label %430

381:                                              ; preds = %370
  %382 = load i64*, i64** %8, align 8
  %383 = load i32, i32* %26, align 4
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds i64, i64* %382, i64 %384
  %386 = load i64, i64* %385, align 8
  %387 = load i64, i64* @PDI, align 8
  %388 = icmp eq i64 %386, %387
  br i1 %388, label %389, label %397

389:                                              ; preds = %381
  %390 = load i32, i32* %28, align 4
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %392, label %395

392:                                              ; preds = %389
  %393 = load i32, i32* %28, align 4
  %394 = add nsw i32 %393, -1
  store i32 %394, i32* %28, align 4
  br label %396

395:                                              ; preds = %389
  br label %433

396:                                              ; preds = %392
  br label %430

397:                                              ; preds = %381
  br label %398

398:                                              ; preds = %397
  %399 = load i32, i32* %28, align 4
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %401, label %402

401:                                              ; preds = %398
  br label %430

402:                                              ; preds = %398
  %403 = load i64*, i64** %8, align 8
  %404 = load i32, i32* %26, align 4
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds i64, i64* %403, i64 %405
  %407 = load i64, i64* %406, align 8
  %408 = load i64, i64* @L, align 8
  %409 = icmp eq i64 %407, %408
  br i1 %409, label %410, label %411

410:                                              ; preds = %402
  store i32 0, i32* %27, align 4
  br label %433

411:                                              ; preds = %402
  %412 = load i64*, i64** %8, align 8
  %413 = load i32, i32* %26, align 4
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds i64, i64* %412, i64 %414
  %416 = load i64, i64* %415, align 8
  %417 = load i64, i64* @R, align 8
  %418 = icmp eq i64 %416, %417
  br i1 %418, label %427, label %419

419:                                              ; preds = %411
  %420 = load i64*, i64** %8, align 8
  %421 = load i32, i32* %26, align 4
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds i64, i64* %420, i64 %422
  %424 = load i64, i64* %423, align 8
  %425 = load i64, i64* @AL, align 8
  %426 = icmp eq i64 %424, %425
  br i1 %426, label %427, label %428

427:                                              ; preds = %419, %411
  store i32 1, i32* %27, align 4
  br label %433

428:                                              ; preds = %419
  br label %429

429:                                              ; preds = %428
  br label %430

430:                                              ; preds = %429, %401, %396, %378
  %431 = load i32, i32* %26, align 4
  %432 = add nsw i32 %431, 1
  store i32 %432, i32* %26, align 4
  br label %350

433:                                              ; preds = %427, %410, %395, %350
  %434 = load i32, i32* %27, align 4
  %435 = call i64 @odd(i32 %434)
  %436 = icmp ne i64 %435, 0
  br i1 %436, label %437, label %458

437:                                              ; preds = %433
  %438 = load i32, i32* %19, align 4
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %439
  %441 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %440, i32 0, i32 0
  %442 = load i32, i32* %441, align 8
  %443 = call i32 @GreaterOdd(i32 %442)
  store i32 %443, i32* %29, align 4
  %444 = load i32, i32* %29, align 4
  %445 = call i64 @valid_level(i32 %444)
  %446 = icmp ne i64 %445, 0
  br i1 %446, label %447, label %454

447:                                              ; preds = %437
  %448 = load i32, i32* %15, align 4
  %449 = add nsw i32 %448, 1
  store i32 %449, i32* %15, align 4
  %450 = load i32, i32* %29, align 4
  %451 = load i64, i64* @NI, align 8
  %452 = load i32, i32* @TRUE, align 4
  %453 = call i32 @push_stack(i32 %450, i64 %451, i32 %452)
  br label %457

454:                                              ; preds = %437
  %455 = load i32, i32* %13, align 4
  %456 = add nsw i32 %455, 1
  store i32 %456, i32* %13, align 4
  br label %457

457:                                              ; preds = %454, %447
  br label %480

458:                                              ; preds = %433
  %459 = load i32, i32* %19, align 4
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %460
  %462 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %461, i32 0, i32 0
  %463 = load i32, i32* %462, align 8
  %464 = sext i32 %463 to i64
  %465 = call i32 @GreaterEven(i64 %464)
  store i32 %465, i32* %30, align 4
  %466 = load i32, i32* %30, align 4
  %467 = call i64 @valid_level(i32 %466)
  %468 = icmp ne i64 %467, 0
  br i1 %468, label %469, label %476

469:                                              ; preds = %458
  %470 = load i32, i32* %15, align 4
  %471 = add nsw i32 %470, 1
  store i32 %471, i32* %15, align 4
  %472 = load i32, i32* %30, align 4
  %473 = load i64, i64* @NI, align 8
  %474 = load i32, i32* @TRUE, align 4
  %475 = call i32 @push_stack(i32 %472, i64 %473, i32 %474)
  br label %479

476:                                              ; preds = %458
  %477 = load i32, i32* %13, align 4
  %478 = add nsw i32 %477, 1
  store i32 %478, i32* %13, align 4
  br label %479

479:                                              ; preds = %476, %469
  br label %480

480:                                              ; preds = %479, %457
  br label %635

481:                                              ; preds = %329
  %482 = load i64*, i64** %8, align 8
  %483 = load i32, i32* %16, align 4
  %484 = sext i32 %483 to i64
  %485 = getelementptr inbounds i64, i64* %482, i64 %484
  %486 = load i64, i64* %485, align 8
  %487 = load i64, i64* @B, align 8
  %488 = icmp ne i64 %486, %487
  br i1 %488, label %489, label %542

489:                                              ; preds = %481
  %490 = load i64*, i64** %8, align 8
  %491 = load i32, i32* %16, align 4
  %492 = sext i32 %491 to i64
  %493 = getelementptr inbounds i64, i64* %490, i64 %492
  %494 = load i64, i64* %493, align 8
  %495 = load i64, i64* @BN, align 8
  %496 = icmp ne i64 %494, %495
  br i1 %496, label %497, label %542

497:                                              ; preds = %489
  %498 = load i64*, i64** %8, align 8
  %499 = load i32, i32* %16, align 4
  %500 = sext i32 %499 to i64
  %501 = getelementptr inbounds i64, i64* %498, i64 %500
  %502 = load i64, i64* %501, align 8
  %503 = load i64, i64* @PDI, align 8
  %504 = icmp ne i64 %502, %503
  br i1 %504, label %505, label %542

505:                                              ; preds = %497
  %506 = load i64*, i64** %8, align 8
  %507 = load i32, i32* %16, align 4
  %508 = sext i32 %507 to i64
  %509 = getelementptr inbounds i64, i64* %506, i64 %508
  %510 = load i64, i64* %509, align 8
  %511 = load i64, i64* @PDF, align 8
  %512 = icmp ne i64 %510, %511
  br i1 %512, label %513, label %542

513:                                              ; preds = %505
  %514 = load i32, i32* %19, align 4
  %515 = sext i32 %514 to i64
  %516 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %515
  %517 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %516, i32 0, i32 0
  %518 = load i32, i32* %517, align 8
  %519 = sext i32 %518 to i64
  %520 = load i64*, i64** %9, align 8
  %521 = load i32, i32* %16, align 4
  %522 = sext i32 %521 to i64
  %523 = getelementptr inbounds i64, i64* %520, i64 %522
  store i64 %519, i64* %523, align 8
  %524 = load i32, i32* %19, align 4
  %525 = sext i32 %524 to i64
  %526 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %525
  %527 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %526, i32 0, i32 1
  %528 = load i64, i64* %527, align 8
  %529 = load i64, i64* @NI, align 8
  %530 = icmp ne i64 %528, %529
  br i1 %530, label %531, label %541

531:                                              ; preds = %513
  %532 = load i32, i32* %19, align 4
  %533 = sext i32 %532 to i64
  %534 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %533
  %535 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %534, i32 0, i32 1
  %536 = load i64, i64* %535, align 8
  %537 = load i64*, i64** %8, align 8
  %538 = load i32, i32* %16, align 4
  %539 = sext i32 %538 to i64
  %540 = getelementptr inbounds i64, i64* %537, i64 %539
  store i64 %536, i64* %540, align 8
  br label %541

541:                                              ; preds = %531, %513
  br label %634

542:                                              ; preds = %505, %497, %489, %481
  %543 = load i64*, i64** %8, align 8
  %544 = load i32, i32* %16, align 4
  %545 = sext i32 %544 to i64
  %546 = getelementptr inbounds i64, i64* %543, i64 %545
  %547 = load i64, i64* %546, align 8
  %548 = load i64, i64* @PDI, align 8
  %549 = icmp eq i64 %547, %548
  br i1 %549, label %550, label %587

550:                                              ; preds = %542
  %551 = load i32, i32* %13, align 4
  %552 = icmp ne i32 %551, 0
  br i1 %552, label %553, label %556

553:                                              ; preds = %550
  %554 = load i32, i32* %13, align 4
  %555 = add nsw i32 %554, -1
  store i32 %555, i32* %13, align 4
  br label %576

556:                                              ; preds = %550
  %557 = load i32, i32* %15, align 4
  %558 = icmp ne i32 %557, 0
  br i1 %558, label %560, label %559

559:                                              ; preds = %556
  br label %575

560:                                              ; preds = %556
  store i32 0, i32* %14, align 4
  br label %561

561:                                              ; preds = %569, %560
  %562 = load i32, i32* %19, align 4
  %563 = sext i32 %562 to i64
  %564 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %563
  %565 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %564, i32 0, i32 2
  %566 = load i32, i32* %565, align 8
  %567 = icmp ne i32 %566, 0
  %568 = xor i1 %567, true
  br i1 %568, label %569, label %571

569:                                              ; preds = %561
  %570 = call i32 (...) @pop_stack()
  br label %561

571:                                              ; preds = %561
  %572 = call i32 (...) @pop_stack()
  %573 = load i32, i32* %15, align 4
  %574 = add nsw i32 %573, -1
  store i32 %574, i32* %15, align 4
  br label %575

575:                                              ; preds = %571, %559
  br label %576

576:                                              ; preds = %575, %553
  %577 = load i32, i32* %19, align 4
  %578 = sext i32 %577 to i64
  %579 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %578
  %580 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %579, i32 0, i32 0
  %581 = load i32, i32* %580, align 8
  %582 = sext i32 %581 to i64
  %583 = load i64*, i64** %9, align 8
  %584 = load i32, i32* %16, align 4
  %585 = sext i32 %584 to i64
  %586 = getelementptr inbounds i64, i64* %583, i64 %585
  store i64 %582, i64* %586, align 8
  br label %633

587:                                              ; preds = %542
  %588 = load i64*, i64** %8, align 8
  %589 = load i32, i32* %16, align 4
  %590 = sext i32 %589 to i64
  %591 = getelementptr inbounds i64, i64* %588, i64 %590
  %592 = load i64, i64* %591, align 8
  %593 = load i64, i64* @PDF, align 8
  %594 = icmp eq i64 %592, %593
  br i1 %594, label %595, label %632

595:                                              ; preds = %587
  %596 = load i32, i32* %19, align 4
  %597 = sext i32 %596 to i64
  %598 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %597
  %599 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %598, i32 0, i32 0
  %600 = load i32, i32* %599, align 8
  %601 = sext i32 %600 to i64
  %602 = load i64*, i64** %9, align 8
  %603 = load i32, i32* %16, align 4
  %604 = sext i32 %603 to i64
  %605 = getelementptr inbounds i64, i64* %602, i64 %604
  store i64 %601, i64* %605, align 8
  %606 = load i32, i32* %13, align 4
  %607 = icmp ne i32 %606, 0
  br i1 %607, label %608, label %609

608:                                              ; preds = %595
  br label %631

609:                                              ; preds = %595
  %610 = load i32, i32* %14, align 4
  %611 = icmp ne i32 %610, 0
  br i1 %611, label %612, label %615

612:                                              ; preds = %609
  %613 = load i32, i32* %14, align 4
  %614 = add nsw i32 %613, -1
  store i32 %614, i32* %14, align 4
  br label %630

615:                                              ; preds = %609
  %616 = load i32, i32* %19, align 4
  %617 = sext i32 %616 to i64
  %618 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %617
  %619 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %618, i32 0, i32 2
  %620 = load i32, i32* %619, align 8
  %621 = icmp ne i32 %620, 0
  br i1 %621, label %629, label %622

622:                                              ; preds = %615
  %623 = load i32, i32* %19, align 4
  %624 = load i32, i32* @MAX_DEPTH, align 4
  %625 = add nsw i32 %624, 1
  %626 = icmp slt i32 %623, %625
  br i1 %626, label %627, label %629

627:                                              ; preds = %622
  %628 = call i32 (...) @pop_stack()
  br label %629

629:                                              ; preds = %627, %622, %615
  br label %630

630:                                              ; preds = %629, %612
  br label %631

631:                                              ; preds = %630, %608
  br label %632

632:                                              ; preds = %631, %587
  br label %633

633:                                              ; preds = %632, %576
  br label %634

634:                                              ; preds = %633, %541
  br label %635

635:                                              ; preds = %634, %480
  br label %636

636:                                              ; preds = %635, %328
  br label %637

637:                                              ; preds = %636, %288
  br label %638

638:                                              ; preds = %637, %249
  br label %639

639:                                              ; preds = %638, %207
  br label %640

640:                                              ; preds = %639, %166
  br label %641

641:                                              ; preds = %640, %124
  br label %642

642:                                              ; preds = %641
  %643 = load i32, i32* %16, align 4
  %644 = add nsw i32 %643, 1
  store i32 %644, i32* %16, align 4
  br label %71

645:                                              ; preds = %71
  store i32 0, i32* %16, align 4
  br label %646

646:                                              ; preds = %697, %645
  %647 = load i32, i32* %16, align 4
  %648 = load i32, i32* %11, align 4
  %649 = icmp slt i32 %647, %648
  br i1 %649, label %650, label %700

650:                                              ; preds = %646
  %651 = load i64*, i64** %8, align 8
  %652 = load i32, i32* %16, align 4
  %653 = sext i32 %652 to i64
  %654 = getelementptr inbounds i64, i64* %651, i64 %653
  %655 = load i64, i64* %654, align 8
  %656 = load i64, i64* @RLE, align 8
  %657 = icmp eq i64 %655, %656
  br i1 %657, label %690, label %658

658:                                              ; preds = %650
  %659 = load i64*, i64** %8, align 8
  %660 = load i32, i32* %16, align 4
  %661 = sext i32 %660 to i64
  %662 = getelementptr inbounds i64, i64* %659, i64 %661
  %663 = load i64, i64* %662, align 8
  %664 = load i64, i64* @LRE, align 8
  %665 = icmp eq i64 %663, %664
  br i1 %665, label %690, label %666

666:                                              ; preds = %658
  %667 = load i64*, i64** %8, align 8
  %668 = load i32, i32* %16, align 4
  %669 = sext i32 %668 to i64
  %670 = getelementptr inbounds i64, i64* %667, i64 %669
  %671 = load i64, i64* %670, align 8
  %672 = load i64, i64* @RLO, align 8
  %673 = icmp eq i64 %671, %672
  br i1 %673, label %690, label %674

674:                                              ; preds = %666
  %675 = load i64*, i64** %8, align 8
  %676 = load i32, i32* %16, align 4
  %677 = sext i32 %676 to i64
  %678 = getelementptr inbounds i64, i64* %675, i64 %677
  %679 = load i64, i64* %678, align 8
  %680 = load i64, i64* @LRO, align 8
  %681 = icmp eq i64 %679, %680
  br i1 %681, label %690, label %682

682:                                              ; preds = %674
  %683 = load i64*, i64** %8, align 8
  %684 = load i32, i32* %16, align 4
  %685 = sext i32 %684 to i64
  %686 = getelementptr inbounds i64, i64* %683, i64 %685
  %687 = load i64, i64* %686, align 8
  %688 = load i64, i64* @PDF, align 8
  %689 = icmp eq i64 %687, %688
  br i1 %689, label %690, label %696

690:                                              ; preds = %682, %674, %666, %658, %650
  %691 = load i64, i64* @BN, align 8
  %692 = load i64*, i64** %8, align 8
  %693 = load i32, i32* %16, align 4
  %694 = sext i32 %693 to i64
  %695 = getelementptr inbounds i64, i64* %692, i64 %694
  store i64 %691, i64* %695, align 8
  br label %696

696:                                              ; preds = %690, %682
  br label %697

697:                                              ; preds = %696
  %698 = load i32, i32* %16, align 4
  %699 = add nsw i32 %698, 1
  store i32 %699, i32* %16, align 4
  br label %646

700:                                              ; preds = %646
  %701 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %701)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @odd(i32) #2

declare dso_local i32 @push_stack(i32, i64, i32) #2

declare dso_local i32 @GreaterOdd(i32) #2

declare dso_local i64 @valid_level(i32) #2

declare dso_local i32 @GreaterEven(i64) #2

declare dso_local i32 @pop_stack(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
