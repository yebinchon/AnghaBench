; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msrle32/extr_msrle32.c_MSRLE32_DecompressRLE4.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msrle32/extr_msrle32.c_MSRLE32_DecompressRLE4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { i64, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@BI_RGB = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@ICERR_ERROR = common dso_local global i32 0, align 4
@ICERR_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, %struct.TYPE_6__*, i32*, i32*)* @MSRLE32_DecompressRLE4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MSRLE32_DecompressRLE4(%struct.TYPE_7__* %0, %struct.TYPE_6__* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
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
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %12, align 4
  %30 = load i32, i32* @FALSE, align 4
  store i32 %30, i32* %14, align 4
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %32 = icmp ne %struct.TYPE_7__* %31, null
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %36 = icmp ne %struct.TYPE_6__* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @BI_RGB, align 8
  %42 = icmp eq i64 %40, %41
  br label %43

43:                                               ; preds = %37, %4
  %44 = phi i1 [ false, %4 ], [ %42, %37 ]
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  %47 = load i32*, i32** %8, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load i32*, i32** %9, align 8
  %51 = icmp ne i32* %50, null
  br label %52

52:                                               ; preds = %49, %43
  %53 = phi i1 [ false, %43 ], [ %51, %49 ]
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert(i32 %54)
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, 1
  %60 = sdiv i32 %59, 8
  store i32 %60, i32* %10, align 4
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %62 = bitcast %struct.TYPE_6__* %61 to { i64, i64 }*
  %63 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %62, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @DIBWIDTHBYTES(i64 %64, i64 %66)
  store i32 %67, i32* %11, align 4
  br label %68

68:                                               ; preds = %768, %52
  %69 = load i32*, i32** %8, align 8
  %70 = getelementptr inbounds i32, i32* %69, i32 1
  store i32* %70, i32** %8, align 8
  %71 = load i32, i32* %69, align 4
  store i32 %71, i32* %15, align 4
  %72 = load i32*, i32** %8, align 8
  %73 = getelementptr inbounds i32, i32* %72, i32 1
  store i32* %73, i32** %8, align 8
  %74 = load i32, i32* %72, align 4
  store i32 %74, i32* %16, align 4
  %75 = load i32, i32* %15, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %508

77:                                               ; preds = %68
  %78 = load i32, i32* %16, align 4
  switch i32 %78, label %115 [
    i32 0, label %79
    i32 1, label %84
    i32 2, label %86
  ]

79:                                               ; preds = %77
  store i32 0, i32* %12, align 4
  %80 = load i32, i32* %11, align 4
  %81 = load i32*, i32** %9, align 8
  %82 = sext i32 %80 to i64
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  store i32* %83, i32** %9, align 8
  br label %507

84:                                               ; preds = %77
  %85 = load i32, i32* @TRUE, align 4
  store i32 %85, i32* %14, align 4
  br label %507

86:                                               ; preds = %77
  %87 = load i32*, i32** %8, align 8
  %88 = getelementptr inbounds i32, i32* %87, i32 1
  store i32* %88, i32** %8, align 8
  %89 = load i32, i32* %87, align 4
  %90 = load i32, i32* %10, align 4
  %91 = mul nsw i32 %89, %90
  %92 = load i32, i32* %12, align 4
  %93 = add nsw i32 %92, %91
  store i32 %93, i32* %12, align 4
  %94 = load i32*, i32** %8, align 8
  %95 = getelementptr inbounds i32, i32* %94, i32 1
  store i32* %95, i32** %8, align 8
  %96 = load i32, i32* %94, align 4
  %97 = load i32, i32* %11, align 4
  %98 = mul nsw i32 %96, %97
  %99 = load i32*, i32** %9, align 8
  %100 = sext i32 %98 to i64
  %101 = getelementptr inbounds i32, i32* %99, i64 %100
  store i32* %101, i32** %9, align 8
  %102 = load i32, i32* %12, align 4
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %10, align 4
  %107 = mul nsw i32 %105, %106
  %108 = icmp sge i32 %102, %107
  br i1 %108, label %109, label %114

109:                                              ; preds = %86
  store i32 0, i32* %12, align 4
  %110 = load i32, i32* %11, align 4
  %111 = load i32*, i32** %9, align 8
  %112 = sext i32 %110 to i64
  %113 = getelementptr inbounds i32, i32* %111, i64 %112
  store i32* %113, i32** %9, align 8
  br label %114

114:                                              ; preds = %109, %86
  br label %507

115:                                              ; preds = %77
  %116 = load i32, i32* %16, align 4
  %117 = add nsw i32 %116, 1
  %118 = and i32 %117, -2
  %119 = sdiv i32 %118, 2
  %120 = and i32 %119, 1
  store i32 %120, i32* %17, align 4
  %121 = load i32, i32* %12, align 4
  %122 = load i32, i32* %10, align 4
  %123 = sdiv i32 %121, %122
  %124 = load i32, i32* %16, align 4
  %125 = add nsw i32 %123, %124
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = icmp sgt i32 %125, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %115
  %131 = load i32, i32* @ICERR_ERROR, align 4
  store i32 %131, i32* %5, align 4
  br label %774

132:                                              ; preds = %115
  %133 = load i32, i32* %16, align 4
  store i32 %133, i32* %15, align 4
  store i32 0, i32* %13, align 4
  br label %134

134:                                              ; preds = %372, %132
  %135 = load i32, i32* %13, align 4
  %136 = load i32, i32* %15, align 4
  %137 = sdiv i32 %136, 2
  %138 = icmp slt i32 %135, %137
  br i1 %138, label %139, label %375

139:                                              ; preds = %134
  %140 = load i32, i32* %10, align 4
  %141 = icmp eq i32 %140, 1
  br i1 %141, label %142, label %181

142:                                              ; preds = %139
  %143 = load i32*, i32** %8, align 8
  %144 = load i32, i32* %13, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = load i32, i32* %146, align 4
  store i32 %147, i32* %16, align 4
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 0
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* %16, align 4
  %152 = ashr i32 %151, 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %150, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = load i32*, i32** %9, align 8
  %157 = load i32, i32* %12, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %12, align 4
  %159 = sext i32 %157 to i64
  %160 = getelementptr inbounds i32, i32* %156, i64 %159
  store i32 %155, i32* %160, align 4
  %161 = load i32, i32* %13, align 4
  %162 = mul nsw i32 2, %161
  %163 = add nsw i32 %162, 1
  %164 = load i32, i32* %15, align 4
  %165 = icmp sle i32 %163, %164
  br i1 %165, label %166, label %180

166:                                              ; preds = %142
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 0
  %169 = load i32*, i32** %168, align 8
  %170 = load i32, i32* %16, align 4
  %171 = and i32 %170, 15
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %169, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = load i32*, i32** %9, align 8
  %176 = load i32, i32* %12, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %12, align 4
  %178 = sext i32 %176 to i64
  %179 = getelementptr inbounds i32, i32* %175, i64 %178
  store i32 %174, i32* %179, align 4
  br label %180

180:                                              ; preds = %166, %142
  br label %371

181:                                              ; preds = %139
  %182 = load i32, i32* %10, align 4
  %183 = icmp eq i32 %182, 2
  br i1 %183, label %184, label %260

184:                                              ; preds = %181
  %185 = load i32*, i32** %8, align 8
  %186 = load i32, i32* %13, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %185, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = ashr i32 %189, 4
  store i32 %190, i32* %16, align 4
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 0
  %193 = load i32*, i32** %192, align 8
  %194 = load i32, i32* %16, align 4
  %195 = mul nsw i32 %194, 2
  %196 = add nsw i32 %195, 0
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %193, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = load i32*, i32** %9, align 8
  %201 = load i32, i32* %12, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %12, align 4
  %203 = sext i32 %201 to i64
  %204 = getelementptr inbounds i32, i32* %200, i64 %203
  store i32 %199, i32* %204, align 4
  %205 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i32 0, i32 0
  %207 = load i32*, i32** %206, align 8
  %208 = load i32, i32* %16, align 4
  %209 = mul nsw i32 %208, 2
  %210 = add nsw i32 %209, 1
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %207, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = load i32*, i32** %9, align 8
  %215 = load i32, i32* %12, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %12, align 4
  %217 = sext i32 %215 to i64
  %218 = getelementptr inbounds i32, i32* %214, i64 %217
  store i32 %213, i32* %218, align 4
  %219 = load i32, i32* %13, align 4
  %220 = mul nsw i32 2, %219
  %221 = add nsw i32 %220, 1
  %222 = load i32, i32* %15, align 4
  %223 = icmp sle i32 %221, %222
  br i1 %223, label %224, label %259

224:                                              ; preds = %184
  %225 = load i32*, i32** %8, align 8
  %226 = load i32, i32* %13, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32, i32* %225, i64 %227
  %229 = load i32, i32* %228, align 4
  %230 = and i32 %229, 15
  store i32 %230, i32* %16, align 4
  %231 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %232 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %231, i32 0, i32 0
  %233 = load i32*, i32** %232, align 8
  %234 = load i32, i32* %16, align 4
  %235 = mul nsw i32 %234, 2
  %236 = add nsw i32 %235, 0
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32, i32* %233, i64 %237
  %239 = load i32, i32* %238, align 4
  %240 = load i32*, i32** %9, align 8
  %241 = load i32, i32* %12, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %12, align 4
  %243 = sext i32 %241 to i64
  %244 = getelementptr inbounds i32, i32* %240, i64 %243
  store i32 %239, i32* %244, align 4
  %245 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %246 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %245, i32 0, i32 0
  %247 = load i32*, i32** %246, align 8
  %248 = load i32, i32* %16, align 4
  %249 = mul nsw i32 %248, 2
  %250 = add nsw i32 %249, 1
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32, i32* %247, i64 %251
  %253 = load i32, i32* %252, align 4
  %254 = load i32*, i32** %9, align 8
  %255 = load i32, i32* %12, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %12, align 4
  %257 = sext i32 %255 to i64
  %258 = getelementptr inbounds i32, i32* %254, i64 %257
  store i32 %253, i32* %258, align 4
  br label %259

259:                                              ; preds = %224, %184
  br label %370

260:                                              ; preds = %181
  %261 = load i32*, i32** %8, align 8
  %262 = load i32, i32* %13, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i32, i32* %261, i64 %263
  %265 = load i32, i32* %264, align 4
  %266 = ashr i32 %265, 4
  store i32 %266, i32* %16, align 4
  %267 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %268 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %267, i32 0, i32 0
  %269 = load i32*, i32** %268, align 8
  %270 = load i32, i32* %16, align 4
  %271 = mul nsw i32 %270, 4
  %272 = add nsw i32 %271, 0
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i32, i32* %269, i64 %273
  %275 = load i32, i32* %274, align 4
  %276 = load i32*, i32** %9, align 8
  %277 = load i32, i32* %12, align 4
  %278 = add nsw i32 %277, 0
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i32, i32* %276, i64 %279
  store i32 %275, i32* %280, align 4
  %281 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %282 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %281, i32 0, i32 0
  %283 = load i32*, i32** %282, align 8
  %284 = load i32, i32* %16, align 4
  %285 = mul nsw i32 %284, 4
  %286 = add nsw i32 %285, 1
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i32, i32* %283, i64 %287
  %289 = load i32, i32* %288, align 4
  %290 = load i32*, i32** %9, align 8
  %291 = load i32, i32* %12, align 4
  %292 = add nsw i32 %291, 1
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i32, i32* %290, i64 %293
  store i32 %289, i32* %294, align 4
  %295 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %296 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %295, i32 0, i32 0
  %297 = load i32*, i32** %296, align 8
  %298 = load i32, i32* %16, align 4
  %299 = mul nsw i32 %298, 4
  %300 = add nsw i32 %299, 2
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i32, i32* %297, i64 %301
  %303 = load i32, i32* %302, align 4
  %304 = load i32*, i32** %9, align 8
  %305 = load i32, i32* %12, align 4
  %306 = add nsw i32 %305, 2
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds i32, i32* %304, i64 %307
  store i32 %303, i32* %308, align 4
  %309 = load i32, i32* %10, align 4
  %310 = load i32, i32* %12, align 4
  %311 = add nsw i32 %310, %309
  store i32 %311, i32* %12, align 4
  %312 = load i32, i32* %13, align 4
  %313 = mul nsw i32 2, %312
  %314 = add nsw i32 %313, 1
  %315 = load i32, i32* %15, align 4
  %316 = icmp sle i32 %314, %315
  br i1 %316, label %317, label %369

317:                                              ; preds = %260
  %318 = load i32*, i32** %8, align 8
  %319 = load i32, i32* %13, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds i32, i32* %318, i64 %320
  %322 = load i32, i32* %321, align 4
  %323 = and i32 %322, 15
  store i32 %323, i32* %16, align 4
  %324 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %325 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %324, i32 0, i32 0
  %326 = load i32*, i32** %325, align 8
  %327 = load i32, i32* %16, align 4
  %328 = mul nsw i32 %327, 4
  %329 = add nsw i32 %328, 0
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds i32, i32* %326, i64 %330
  %332 = load i32, i32* %331, align 4
  %333 = load i32*, i32** %9, align 8
  %334 = load i32, i32* %12, align 4
  %335 = add nsw i32 %334, 0
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds i32, i32* %333, i64 %336
  store i32 %332, i32* %337, align 4
  %338 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %339 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %338, i32 0, i32 0
  %340 = load i32*, i32** %339, align 8
  %341 = load i32, i32* %16, align 4
  %342 = mul nsw i32 %341, 4
  %343 = add nsw i32 %342, 1
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i32, i32* %340, i64 %344
  %346 = load i32, i32* %345, align 4
  %347 = load i32*, i32** %9, align 8
  %348 = load i32, i32* %12, align 4
  %349 = add nsw i32 %348, 1
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds i32, i32* %347, i64 %350
  store i32 %346, i32* %351, align 4
  %352 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %353 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %352, i32 0, i32 0
  %354 = load i32*, i32** %353, align 8
  %355 = load i32, i32* %16, align 4
  %356 = mul nsw i32 %355, 4
  %357 = add nsw i32 %356, 2
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds i32, i32* %354, i64 %358
  %360 = load i32, i32* %359, align 4
  %361 = load i32*, i32** %9, align 8
  %362 = load i32, i32* %12, align 4
  %363 = add nsw i32 %362, 2
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds i32, i32* %361, i64 %364
  store i32 %360, i32* %365, align 4
  %366 = load i32, i32* %10, align 4
  %367 = load i32, i32* %12, align 4
  %368 = add nsw i32 %367, %366
  store i32 %368, i32* %12, align 4
  br label %369

369:                                              ; preds = %317, %260
  br label %370

370:                                              ; preds = %369, %259
  br label %371

371:                                              ; preds = %370, %180
  br label %372

372:                                              ; preds = %371
  %373 = load i32, i32* %13, align 4
  %374 = add nsw i32 %373, 1
  store i32 %374, i32* %13, align 4
  br label %134

375:                                              ; preds = %134
  %376 = load i32, i32* %15, align 4
  %377 = and i32 %376, 1
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %379, label %495

379:                                              ; preds = %375
  %380 = load i32, i32* %10, align 4
  %381 = icmp eq i32 %380, 1
  br i1 %381, label %382, label %401

382:                                              ; preds = %379
  %383 = load i32*, i32** %8, align 8
  %384 = load i32, i32* %13, align 4
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds i32, i32* %383, i64 %385
  %387 = load i32, i32* %386, align 4
  store i32 %387, i32* %16, align 4
  %388 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %389 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %388, i32 0, i32 0
  %390 = load i32*, i32** %389, align 8
  %391 = load i32, i32* %16, align 4
  %392 = ashr i32 %391, 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds i32, i32* %390, i64 %393
  %395 = load i32, i32* %394, align 4
  %396 = load i32*, i32** %9, align 8
  %397 = load i32, i32* %12, align 4
  %398 = add nsw i32 %397, 1
  store i32 %398, i32* %12, align 4
  %399 = sext i32 %397 to i64
  %400 = getelementptr inbounds i32, i32* %396, i64 %399
  store i32 %395, i32* %400, align 4
  br label %492

401:                                              ; preds = %379
  %402 = load i32, i32* %10, align 4
  %403 = icmp eq i32 %402, 2
  br i1 %403, label %404, label %439

404:                                              ; preds = %401
  %405 = load i32*, i32** %8, align 8
  %406 = load i32, i32* %13, align 4
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds i32, i32* %405, i64 %407
  %409 = load i32, i32* %408, align 4
  %410 = ashr i32 %409, 4
  store i32 %410, i32* %16, align 4
  %411 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %412 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %411, i32 0, i32 0
  %413 = load i32*, i32** %412, align 8
  %414 = load i32, i32* %16, align 4
  %415 = mul nsw i32 %414, 2
  %416 = add nsw i32 %415, 0
  %417 = sext i32 %416 to i64
  %418 = getelementptr inbounds i32, i32* %413, i64 %417
  %419 = load i32, i32* %418, align 4
  %420 = load i32*, i32** %9, align 8
  %421 = load i32, i32* %12, align 4
  %422 = add nsw i32 %421, 1
  store i32 %422, i32* %12, align 4
  %423 = sext i32 %421 to i64
  %424 = getelementptr inbounds i32, i32* %420, i64 %423
  store i32 %419, i32* %424, align 4
  %425 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %426 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %425, i32 0, i32 0
  %427 = load i32*, i32** %426, align 8
  %428 = load i32, i32* %16, align 4
  %429 = mul nsw i32 %428, 2
  %430 = add nsw i32 %429, 1
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds i32, i32* %427, i64 %431
  %433 = load i32, i32* %432, align 4
  %434 = load i32*, i32** %9, align 8
  %435 = load i32, i32* %12, align 4
  %436 = add nsw i32 %435, 1
  store i32 %436, i32* %12, align 4
  %437 = sext i32 %435 to i64
  %438 = getelementptr inbounds i32, i32* %434, i64 %437
  store i32 %433, i32* %438, align 4
  br label %491

439:                                              ; preds = %401
  %440 = load i32*, i32** %8, align 8
  %441 = load i32, i32* %13, align 4
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds i32, i32* %440, i64 %442
  %444 = load i32, i32* %443, align 4
  %445 = ashr i32 %444, 4
  store i32 %445, i32* %16, align 4
  %446 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %447 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %446, i32 0, i32 0
  %448 = load i32*, i32** %447, align 8
  %449 = load i32, i32* %16, align 4
  %450 = mul nsw i32 %449, 4
  %451 = add nsw i32 %450, 0
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds i32, i32* %448, i64 %452
  %454 = load i32, i32* %453, align 4
  %455 = load i32*, i32** %9, align 8
  %456 = load i32, i32* %12, align 4
  %457 = add nsw i32 %456, 0
  %458 = sext i32 %457 to i64
  %459 = getelementptr inbounds i32, i32* %455, i64 %458
  store i32 %454, i32* %459, align 4
  %460 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %461 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %460, i32 0, i32 0
  %462 = load i32*, i32** %461, align 8
  %463 = load i32, i32* %16, align 4
  %464 = mul nsw i32 %463, 4
  %465 = add nsw i32 %464, 1
  %466 = sext i32 %465 to i64
  %467 = getelementptr inbounds i32, i32* %462, i64 %466
  %468 = load i32, i32* %467, align 4
  %469 = load i32*, i32** %9, align 8
  %470 = load i32, i32* %12, align 4
  %471 = add nsw i32 %470, 1
  %472 = sext i32 %471 to i64
  %473 = getelementptr inbounds i32, i32* %469, i64 %472
  store i32 %468, i32* %473, align 4
  %474 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %475 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %474, i32 0, i32 0
  %476 = load i32*, i32** %475, align 8
  %477 = load i32, i32* %16, align 4
  %478 = mul nsw i32 %477, 4
  %479 = add nsw i32 %478, 2
  %480 = sext i32 %479 to i64
  %481 = getelementptr inbounds i32, i32* %476, i64 %480
  %482 = load i32, i32* %481, align 4
  %483 = load i32*, i32** %9, align 8
  %484 = load i32, i32* %12, align 4
  %485 = add nsw i32 %484, 2
  %486 = sext i32 %485 to i64
  %487 = getelementptr inbounds i32, i32* %483, i64 %486
  store i32 %482, i32* %487, align 4
  %488 = load i32, i32* %10, align 4
  %489 = load i32, i32* %12, align 4
  %490 = add nsw i32 %489, %488
  store i32 %490, i32* %12, align 4
  br label %491

491:                                              ; preds = %439, %404
  br label %492

492:                                              ; preds = %491, %382
  %493 = load i32*, i32** %8, align 8
  %494 = getelementptr inbounds i32, i32* %493, i32 1
  store i32* %494, i32** %8, align 8
  br label %495

495:                                              ; preds = %492, %375
  %496 = load i32, i32* %15, align 4
  %497 = sdiv i32 %496, 2
  %498 = load i32*, i32** %8, align 8
  %499 = sext i32 %497 to i64
  %500 = getelementptr inbounds i32, i32* %498, i64 %499
  store i32* %500, i32** %8, align 8
  %501 = load i32, i32* %17, align 4
  %502 = icmp ne i32 %501, 0
  br i1 %502, label %503, label %506

503:                                              ; preds = %495
  %504 = load i32*, i32** %8, align 8
  %505 = getelementptr inbounds i32, i32* %504, i32 1
  store i32* %505, i32** %8, align 8
  br label %506

506:                                              ; preds = %503, %495
  br label %507

507:                                              ; preds = %506, %114, %84, %79
  br label %767

508:                                              ; preds = %68
  %509 = load i32, i32* %12, align 4
  %510 = load i32, i32* %10, align 4
  %511 = sdiv i32 %509, %510
  %512 = load i32, i32* %15, align 4
  %513 = add nsw i32 %511, %512
  %514 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %515 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %514, i32 0, i32 2
  %516 = load i32, i32* %515, align 4
  %517 = icmp sgt i32 %513, %516
  br i1 %517, label %518, label %520

518:                                              ; preds = %508
  %519 = load i32, i32* @ICERR_ERROR, align 4
  store i32 %519, i32* %5, align 4
  br label %774

520:                                              ; preds = %508
  %521 = load i32, i32* %10, align 4
  %522 = icmp eq i32 %521, 1
  br i1 %522, label %523, label %567

523:                                              ; preds = %520
  %524 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %525 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %524, i32 0, i32 0
  %526 = load i32*, i32** %525, align 8
  %527 = load i32, i32* %16, align 4
  %528 = ashr i32 %527, 4
  %529 = sext i32 %528 to i64
  %530 = getelementptr inbounds i32, i32* %526, i64 %529
  %531 = load i32, i32* %530, align 4
  store i32 %531, i32* %18, align 4
  %532 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %533 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %532, i32 0, i32 0
  %534 = load i32*, i32** %533, align 8
  %535 = load i32, i32* %16, align 4
  %536 = and i32 %535, 15
  %537 = sext i32 %536 to i64
  %538 = getelementptr inbounds i32, i32* %534, i64 %537
  %539 = load i32, i32* %538, align 4
  store i32 %539, i32* %19, align 4
  store i32 0, i32* %13, align 4
  br label %540

540:                                              ; preds = %563, %523
  %541 = load i32, i32* %13, align 4
  %542 = load i32, i32* %15, align 4
  %543 = icmp slt i32 %541, %542
  br i1 %543, label %544, label %566

544:                                              ; preds = %540
  %545 = load i32, i32* %13, align 4
  %546 = and i32 %545, 1
  %547 = icmp eq i32 %546, 0
  br i1 %547, label %548, label %555

548:                                              ; preds = %544
  %549 = load i32, i32* %18, align 4
  %550 = load i32*, i32** %9, align 8
  %551 = load i32, i32* %12, align 4
  %552 = add nsw i32 %551, 1
  store i32 %552, i32* %12, align 4
  %553 = sext i32 %551 to i64
  %554 = getelementptr inbounds i32, i32* %550, i64 %553
  store i32 %549, i32* %554, align 4
  br label %562

555:                                              ; preds = %544
  %556 = load i32, i32* %19, align 4
  %557 = load i32*, i32** %9, align 8
  %558 = load i32, i32* %12, align 4
  %559 = add nsw i32 %558, 1
  store i32 %559, i32* %12, align 4
  %560 = sext i32 %558 to i64
  %561 = getelementptr inbounds i32, i32* %557, i64 %560
  store i32 %556, i32* %561, align 4
  br label %562

562:                                              ; preds = %555, %548
  br label %563

563:                                              ; preds = %562
  %564 = load i32, i32* %13, align 4
  %565 = add nsw i32 %564, 1
  store i32 %565, i32* %13, align 4
  br label %540

566:                                              ; preds = %540
  br label %766

567:                                              ; preds = %520
  %568 = load i32, i32* %10, align 4
  %569 = icmp eq i32 %568, 2
  br i1 %569, label %570, label %650

570:                                              ; preds = %567
  %571 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %572 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %571, i32 0, i32 0
  %573 = load i32*, i32** %572, align 8
  %574 = load i32, i32* %16, align 4
  %575 = ashr i32 %574, 4
  %576 = mul nsw i32 %575, 2
  %577 = add nsw i32 %576, 0
  %578 = sext i32 %577 to i64
  %579 = getelementptr inbounds i32, i32* %573, i64 %578
  %580 = load i32, i32* %579, align 4
  store i32 %580, i32* %20, align 4
  %581 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %582 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %581, i32 0, i32 0
  %583 = load i32*, i32** %582, align 8
  %584 = load i32, i32* %16, align 4
  %585 = ashr i32 %584, 4
  %586 = mul nsw i32 %585, 2
  %587 = add nsw i32 %586, 1
  %588 = sext i32 %587 to i64
  %589 = getelementptr inbounds i32, i32* %583, i64 %588
  %590 = load i32, i32* %589, align 4
  store i32 %590, i32* %21, align 4
  %591 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %592 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %591, i32 0, i32 0
  %593 = load i32*, i32** %592, align 8
  %594 = load i32, i32* %16, align 4
  %595 = and i32 %594, 15
  %596 = mul nsw i32 %595, 2
  %597 = add nsw i32 %596, 0
  %598 = sext i32 %597 to i64
  %599 = getelementptr inbounds i32, i32* %593, i64 %598
  %600 = load i32, i32* %599, align 4
  store i32 %600, i32* %22, align 4
  %601 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %602 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %601, i32 0, i32 0
  %603 = load i32*, i32** %602, align 8
  %604 = load i32, i32* %16, align 4
  %605 = and i32 %604, 15
  %606 = mul nsw i32 %605, 2
  %607 = add nsw i32 %606, 1
  %608 = sext i32 %607 to i64
  %609 = getelementptr inbounds i32, i32* %603, i64 %608
  %610 = load i32, i32* %609, align 4
  store i32 %610, i32* %23, align 4
  store i32 0, i32* %13, align 4
  br label %611

611:                                              ; preds = %646, %570
  %612 = load i32, i32* %13, align 4
  %613 = load i32, i32* %15, align 4
  %614 = icmp slt i32 %612, %613
  br i1 %614, label %615, label %649

615:                                              ; preds = %611
  %616 = load i32, i32* %13, align 4
  %617 = and i32 %616, 1
  %618 = icmp eq i32 %617, 0
  br i1 %618, label %619, label %632

619:                                              ; preds = %615
  %620 = load i32, i32* %20, align 4
  %621 = load i32*, i32** %9, align 8
  %622 = load i32, i32* %12, align 4
  %623 = add nsw i32 %622, 1
  store i32 %623, i32* %12, align 4
  %624 = sext i32 %622 to i64
  %625 = getelementptr inbounds i32, i32* %621, i64 %624
  store i32 %620, i32* %625, align 4
  %626 = load i32, i32* %21, align 4
  %627 = load i32*, i32** %9, align 8
  %628 = load i32, i32* %12, align 4
  %629 = add nsw i32 %628, 1
  store i32 %629, i32* %12, align 4
  %630 = sext i32 %628 to i64
  %631 = getelementptr inbounds i32, i32* %627, i64 %630
  store i32 %626, i32* %631, align 4
  br label %645

632:                                              ; preds = %615
  %633 = load i32, i32* %22, align 4
  %634 = load i32*, i32** %9, align 8
  %635 = load i32, i32* %12, align 4
  %636 = add nsw i32 %635, 1
  store i32 %636, i32* %12, align 4
  %637 = sext i32 %635 to i64
  %638 = getelementptr inbounds i32, i32* %634, i64 %637
  store i32 %633, i32* %638, align 4
  %639 = load i32, i32* %23, align 4
  %640 = load i32*, i32** %9, align 8
  %641 = load i32, i32* %12, align 4
  %642 = add nsw i32 %641, 1
  store i32 %642, i32* %12, align 4
  %643 = sext i32 %641 to i64
  %644 = getelementptr inbounds i32, i32* %640, i64 %643
  store i32 %639, i32* %644, align 4
  br label %645

645:                                              ; preds = %632, %619
  br label %646

646:                                              ; preds = %645
  %647 = load i32, i32* %13, align 4
  %648 = add nsw i32 %647, 1
  store i32 %648, i32* %13, align 4
  br label %611

649:                                              ; preds = %611
  br label %765

650:                                              ; preds = %567
  %651 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %652 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %651, i32 0, i32 0
  %653 = load i32*, i32** %652, align 8
  %654 = load i32, i32* %16, align 4
  %655 = ashr i32 %654, 4
  %656 = mul nsw i32 %655, 4
  %657 = add nsw i32 %656, 0
  %658 = sext i32 %657 to i64
  %659 = getelementptr inbounds i32, i32* %653, i64 %658
  %660 = load i32, i32* %659, align 4
  store i32 %660, i32* %24, align 4
  %661 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %662 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %661, i32 0, i32 0
  %663 = load i32*, i32** %662, align 8
  %664 = load i32, i32* %16, align 4
  %665 = ashr i32 %664, 4
  %666 = mul nsw i32 %665, 4
  %667 = add nsw i32 %666, 1
  %668 = sext i32 %667 to i64
  %669 = getelementptr inbounds i32, i32* %663, i64 %668
  %670 = load i32, i32* %669, align 4
  store i32 %670, i32* %25, align 4
  %671 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %672 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %671, i32 0, i32 0
  %673 = load i32*, i32** %672, align 8
  %674 = load i32, i32* %16, align 4
  %675 = ashr i32 %674, 4
  %676 = mul nsw i32 %675, 4
  %677 = add nsw i32 %676, 2
  %678 = sext i32 %677 to i64
  %679 = getelementptr inbounds i32, i32* %673, i64 %678
  %680 = load i32, i32* %679, align 4
  store i32 %680, i32* %26, align 4
  %681 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %682 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %681, i32 0, i32 0
  %683 = load i32*, i32** %682, align 8
  %684 = load i32, i32* %16, align 4
  %685 = and i32 %684, 15
  %686 = mul nsw i32 %685, 4
  %687 = add nsw i32 %686, 0
  %688 = sext i32 %687 to i64
  %689 = getelementptr inbounds i32, i32* %683, i64 %688
  %690 = load i32, i32* %689, align 4
  store i32 %690, i32* %27, align 4
  %691 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %692 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %691, i32 0, i32 0
  %693 = load i32*, i32** %692, align 8
  %694 = load i32, i32* %16, align 4
  %695 = and i32 %694, 15
  %696 = mul nsw i32 %695, 4
  %697 = add nsw i32 %696, 1
  %698 = sext i32 %697 to i64
  %699 = getelementptr inbounds i32, i32* %693, i64 %698
  %700 = load i32, i32* %699, align 4
  store i32 %700, i32* %28, align 4
  %701 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %702 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %701, i32 0, i32 0
  %703 = load i32*, i32** %702, align 8
  %704 = load i32, i32* %16, align 4
  %705 = and i32 %704, 15
  %706 = mul nsw i32 %705, 4
  %707 = add nsw i32 %706, 2
  %708 = sext i32 %707 to i64
  %709 = getelementptr inbounds i32, i32* %703, i64 %708
  %710 = load i32, i32* %709, align 4
  store i32 %710, i32* %29, align 4
  store i32 0, i32* %13, align 4
  br label %711

711:                                              ; preds = %761, %650
  %712 = load i32, i32* %13, align 4
  %713 = load i32, i32* %15, align 4
  %714 = icmp slt i32 %712, %713
  br i1 %714, label %715, label %764

715:                                              ; preds = %711
  %716 = load i32, i32* %13, align 4
  %717 = and i32 %716, 1
  %718 = icmp eq i32 %717, 0
  br i1 %718, label %719, label %738

719:                                              ; preds = %715
  %720 = load i32, i32* %24, align 4
  %721 = load i32*, i32** %9, align 8
  %722 = load i32, i32* %12, align 4
  %723 = add nsw i32 %722, 0
  %724 = sext i32 %723 to i64
  %725 = getelementptr inbounds i32, i32* %721, i64 %724
  store i32 %720, i32* %725, align 4
  %726 = load i32, i32* %25, align 4
  %727 = load i32*, i32** %9, align 8
  %728 = load i32, i32* %12, align 4
  %729 = add nsw i32 %728, 1
  %730 = sext i32 %729 to i64
  %731 = getelementptr inbounds i32, i32* %727, i64 %730
  store i32 %726, i32* %731, align 4
  %732 = load i32, i32* %26, align 4
  %733 = load i32*, i32** %9, align 8
  %734 = load i32, i32* %12, align 4
  %735 = add nsw i32 %734, 2
  %736 = sext i32 %735 to i64
  %737 = getelementptr inbounds i32, i32* %733, i64 %736
  store i32 %732, i32* %737, align 4
  br label %757

738:                                              ; preds = %715
  %739 = load i32, i32* %27, align 4
  %740 = load i32*, i32** %9, align 8
  %741 = load i32, i32* %12, align 4
  %742 = add nsw i32 %741, 0
  %743 = sext i32 %742 to i64
  %744 = getelementptr inbounds i32, i32* %740, i64 %743
  store i32 %739, i32* %744, align 4
  %745 = load i32, i32* %28, align 4
  %746 = load i32*, i32** %9, align 8
  %747 = load i32, i32* %12, align 4
  %748 = add nsw i32 %747, 1
  %749 = sext i32 %748 to i64
  %750 = getelementptr inbounds i32, i32* %746, i64 %749
  store i32 %745, i32* %750, align 4
  %751 = load i32, i32* %29, align 4
  %752 = load i32*, i32** %9, align 8
  %753 = load i32, i32* %12, align 4
  %754 = add nsw i32 %753, 2
  %755 = sext i32 %754 to i64
  %756 = getelementptr inbounds i32, i32* %752, i64 %755
  store i32 %751, i32* %756, align 4
  br label %757

757:                                              ; preds = %738, %719
  %758 = load i32, i32* %10, align 4
  %759 = load i32, i32* %12, align 4
  %760 = add nsw i32 %759, %758
  store i32 %760, i32* %12, align 4
  br label %761

761:                                              ; preds = %757
  %762 = load i32, i32* %13, align 4
  %763 = add nsw i32 %762, 1
  store i32 %763, i32* %13, align 4
  br label %711

764:                                              ; preds = %711
  br label %765

765:                                              ; preds = %764, %649
  br label %766

766:                                              ; preds = %765, %566
  br label %767

767:                                              ; preds = %766, %507
  br label %768

768:                                              ; preds = %767
  %769 = load i32, i32* %14, align 4
  %770 = icmp ne i32 %769, 0
  %771 = xor i1 %770, true
  br i1 %771, label %68, label %772

772:                                              ; preds = %768
  %773 = load i32, i32* @ICERR_OK, align 4
  store i32 %773, i32* %5, align 4
  br label %774

774:                                              ; preds = %772, %518, %130
  %775 = load i32, i32* %5, align 4
  ret i32 %775
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @DIBWIDTHBYTES(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
