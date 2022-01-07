; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmsopt.c_PatchLUT.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmsopt.c_PatchLUT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_6__, %struct.TYPE_8__* }
%struct.TYPE_6__ = type { i64* }
%struct.TYPE_8__ = type { double*, i64* }

@cmsSigCLutElemType = common dso_local global i64 0, align 8
@cmsERROR_INTERNAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"(internal) Attempt to PatchLUT on non-lut stage\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"(internal) %d Channels are not supported on PatchLUT\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_7__*, i64*, i64*, i32, i32)* @PatchLUT to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @PatchLUT(i32 %0, %struct.TYPE_7__* %1, i64* %2, i64* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_9__*, align 8
  %15 = alloca %struct.TYPE_8__*, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %9, align 8
  store i64* %2, i64** %10, align 8
  store i64* %3, i64** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %29, %struct.TYPE_9__** %14, align 8
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  store %struct.TYPE_8__* %32, %struct.TYPE_8__** %15, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @cmsSigCLutElemType, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %6
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @cmsERROR_INTERNAL, align 4
  %41 = call i32 (i32, i32, i8*, ...) @cmsSignalError(i32 %39, i32 %40, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* @FALSE, align 4
  store i32 %42, i32* %7, align 4
  br label %323

43:                                               ; preds = %6
  %44 = load i32, i32* %13, align 4
  %45 = icmp eq i32 %44, 4
  br i1 %45, label %46, label %164

46:                                               ; preds = %43
  %47 = load i64*, i64** %10, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 0
  %49 = load i64, i64* %48, align 8
  %50 = sitofp i64 %49 to double
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load double*, double** %52, align 8
  %54 = getelementptr inbounds double, double* %53, i64 0
  %55 = load double, double* %54, align 8
  %56 = fmul double %50, %55
  %57 = fdiv double %56, 6.553500e+04
  store double %57, double* %16, align 8
  %58 = load i64*, i64** %10, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 1
  %60 = load i64, i64* %59, align 8
  %61 = sitofp i64 %60 to double
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load double*, double** %63, align 8
  %65 = getelementptr inbounds double, double* %64, i64 1
  %66 = load double, double* %65, align 8
  %67 = fmul double %61, %66
  %68 = fdiv double %67, 6.553500e+04
  store double %68, double* %17, align 8
  %69 = load i64*, i64** %10, align 8
  %70 = getelementptr inbounds i64, i64* %69, i64 2
  %71 = load i64, i64* %70, align 8
  %72 = sitofp i64 %71 to double
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load double*, double** %74, align 8
  %76 = getelementptr inbounds double, double* %75, i64 2
  %77 = load double, double* %76, align 8
  %78 = fmul double %72, %77
  %79 = fdiv double %78, 6.553500e+04
  store double %79, double* %18, align 8
  %80 = load i64*, i64** %10, align 8
  %81 = getelementptr inbounds i64, i64* %80, i64 3
  %82 = load i64, i64* %81, align 8
  %83 = sitofp i64 %82 to double
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load double*, double** %85, align 8
  %87 = getelementptr inbounds double, double* %86, i64 3
  %88 = load double, double* %87, align 8
  %89 = fmul double %83, %88
  %90 = fdiv double %89, 6.553500e+04
  store double %90, double* %19, align 8
  %91 = load double, double* %16, align 8
  %92 = call i64 @floor(double %91)
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %20, align 4
  %94 = load double, double* %17, align 8
  %95 = call i64 @floor(double %94)
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %21, align 4
  %97 = load double, double* %18, align 8
  %98 = call i64 @floor(double %97)
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %22, align 4
  %100 = load double, double* %19, align 8
  %101 = call i64 @floor(double %100)
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %23, align 4
  %103 = load double, double* %16, align 8
  %104 = load i32, i32* %20, align 4
  %105 = sitofp i32 %104 to double
  %106 = fsub double %103, %105
  %107 = fcmp une double %106, 0.000000e+00
  br i1 %107, label %126, label %108

108:                                              ; preds = %46
  %109 = load double, double* %17, align 8
  %110 = load i32, i32* %21, align 4
  %111 = sitofp i32 %110 to double
  %112 = fsub double %109, %111
  %113 = fcmp une double %112, 0.000000e+00
  br i1 %113, label %126, label %114

114:                                              ; preds = %108
  %115 = load double, double* %18, align 8
  %116 = load i32, i32* %22, align 4
  %117 = sitofp i32 %116 to double
  %118 = fsub double %115, %117
  %119 = fcmp une double %118, 0.000000e+00
  br i1 %119, label %126, label %120

120:                                              ; preds = %114
  %121 = load double, double* %19, align 8
  %122 = load i32, i32* %23, align 4
  %123 = sitofp i32 %122 to double
  %124 = fsub double %121, %123
  %125 = fcmp une double %124, 0.000000e+00
  br i1 %125, label %126, label %128

126:                                              ; preds = %120, %114, %108, %46
  %127 = load i32, i32* @FALSE, align 4
  store i32 %127, i32* %7, align 4
  br label %323

128:                                              ; preds = %120
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 1
  %131 = load i64*, i64** %130, align 8
  %132 = getelementptr inbounds i64, i64* %131, i64 3
  %133 = load i64, i64* %132, align 8
  %134 = trunc i64 %133 to i32
  %135 = load i32, i32* %20, align 4
  %136 = mul nsw i32 %134, %135
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 1
  %139 = load i64*, i64** %138, align 8
  %140 = getelementptr inbounds i64, i64* %139, i64 2
  %141 = load i64, i64* %140, align 8
  %142 = trunc i64 %141 to i32
  %143 = load i32, i32* %21, align 4
  %144 = mul nsw i32 %142, %143
  %145 = add nsw i32 %136, %144
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 1
  %148 = load i64*, i64** %147, align 8
  %149 = getelementptr inbounds i64, i64* %148, i64 1
  %150 = load i64, i64* %149, align 8
  %151 = trunc i64 %150 to i32
  %152 = load i32, i32* %22, align 4
  %153 = mul nsw i32 %151, %152
  %154 = add nsw i32 %145, %153
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 1
  %157 = load i64*, i64** %156, align 8
  %158 = getelementptr inbounds i64, i64* %157, i64 0
  %159 = load i64, i64* %158, align 8
  %160 = trunc i64 %159 to i32
  %161 = load i32, i32* %23, align 4
  %162 = mul nsw i32 %160, %161
  %163 = add nsw i32 %154, %162
  store i32 %163, i32* %25, align 4
  br label %298

164:                                              ; preds = %43
  %165 = load i32, i32* %13, align 4
  %166 = icmp eq i32 %165, 3
  br i1 %166, label %167, label %256

167:                                              ; preds = %164
  %168 = load i64*, i64** %10, align 8
  %169 = getelementptr inbounds i64, i64* %168, i64 0
  %170 = load i64, i64* %169, align 8
  %171 = sitofp i64 %170 to double
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 0
  %174 = load double*, double** %173, align 8
  %175 = getelementptr inbounds double, double* %174, i64 0
  %176 = load double, double* %175, align 8
  %177 = fmul double %171, %176
  %178 = fdiv double %177, 6.553500e+04
  store double %178, double* %16, align 8
  %179 = load i64*, i64** %10, align 8
  %180 = getelementptr inbounds i64, i64* %179, i64 1
  %181 = load i64, i64* %180, align 8
  %182 = sitofp i64 %181 to double
  %183 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 0
  %185 = load double*, double** %184, align 8
  %186 = getelementptr inbounds double, double* %185, i64 1
  %187 = load double, double* %186, align 8
  %188 = fmul double %182, %187
  %189 = fdiv double %188, 6.553500e+04
  store double %189, double* %17, align 8
  %190 = load i64*, i64** %10, align 8
  %191 = getelementptr inbounds i64, i64* %190, i64 2
  %192 = load i64, i64* %191, align 8
  %193 = sitofp i64 %192 to double
  %194 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 0
  %196 = load double*, double** %195, align 8
  %197 = getelementptr inbounds double, double* %196, i64 2
  %198 = load double, double* %197, align 8
  %199 = fmul double %193, %198
  %200 = fdiv double %199, 6.553500e+04
  store double %200, double* %18, align 8
  %201 = load double, double* %16, align 8
  %202 = call i64 @floor(double %201)
  %203 = trunc i64 %202 to i32
  store i32 %203, i32* %20, align 4
  %204 = load double, double* %17, align 8
  %205 = call i64 @floor(double %204)
  %206 = trunc i64 %205 to i32
  store i32 %206, i32* %21, align 4
  %207 = load double, double* %18, align 8
  %208 = call i64 @floor(double %207)
  %209 = trunc i64 %208 to i32
  store i32 %209, i32* %22, align 4
  %210 = load double, double* %16, align 8
  %211 = load i32, i32* %20, align 4
  %212 = sitofp i32 %211 to double
  %213 = fsub double %210, %212
  %214 = fcmp une double %213, 0.000000e+00
  br i1 %214, label %227, label %215

215:                                              ; preds = %167
  %216 = load double, double* %17, align 8
  %217 = load i32, i32* %21, align 4
  %218 = sitofp i32 %217 to double
  %219 = fsub double %216, %218
  %220 = fcmp une double %219, 0.000000e+00
  br i1 %220, label %227, label %221

221:                                              ; preds = %215
  %222 = load double, double* %18, align 8
  %223 = load i32, i32* %22, align 4
  %224 = sitofp i32 %223 to double
  %225 = fsub double %222, %224
  %226 = fcmp une double %225, 0.000000e+00
  br i1 %226, label %227, label %229

227:                                              ; preds = %221, %215, %167
  %228 = load i32, i32* @FALSE, align 4
  store i32 %228, i32* %7, align 4
  br label %323

229:                                              ; preds = %221
  %230 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %231 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %230, i32 0, i32 1
  %232 = load i64*, i64** %231, align 8
  %233 = getelementptr inbounds i64, i64* %232, i64 2
  %234 = load i64, i64* %233, align 8
  %235 = trunc i64 %234 to i32
  %236 = load i32, i32* %20, align 4
  %237 = mul nsw i32 %235, %236
  %238 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %239 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %238, i32 0, i32 1
  %240 = load i64*, i64** %239, align 8
  %241 = getelementptr inbounds i64, i64* %240, i64 1
  %242 = load i64, i64* %241, align 8
  %243 = trunc i64 %242 to i32
  %244 = load i32, i32* %21, align 4
  %245 = mul nsw i32 %243, %244
  %246 = add nsw i32 %237, %245
  %247 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %248 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %247, i32 0, i32 1
  %249 = load i64*, i64** %248, align 8
  %250 = getelementptr inbounds i64, i64* %249, i64 0
  %251 = load i64, i64* %250, align 8
  %252 = trunc i64 %251 to i32
  %253 = load i32, i32* %22, align 4
  %254 = mul nsw i32 %252, %253
  %255 = add nsw i32 %246, %254
  store i32 %255, i32* %25, align 4
  br label %297

256:                                              ; preds = %164
  %257 = load i32, i32* %13, align 4
  %258 = icmp eq i32 %257, 1
  br i1 %258, label %259, label %290

259:                                              ; preds = %256
  %260 = load i64*, i64** %10, align 8
  %261 = getelementptr inbounds i64, i64* %260, i64 0
  %262 = load i64, i64* %261, align 8
  %263 = sitofp i64 %262 to double
  %264 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %265 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %264, i32 0, i32 0
  %266 = load double*, double** %265, align 8
  %267 = getelementptr inbounds double, double* %266, i64 0
  %268 = load double, double* %267, align 8
  %269 = fmul double %263, %268
  %270 = fdiv double %269, 6.553500e+04
  store double %270, double* %16, align 8
  %271 = load double, double* %16, align 8
  %272 = call i64 @floor(double %271)
  %273 = trunc i64 %272 to i32
  store i32 %273, i32* %20, align 4
  %274 = load double, double* %16, align 8
  %275 = load i32, i32* %20, align 4
  %276 = sitofp i32 %275 to double
  %277 = fsub double %274, %276
  %278 = fcmp une double %277, 0.000000e+00
  br i1 %278, label %279, label %281

279:                                              ; preds = %259
  %280 = load i32, i32* @FALSE, align 4
  store i32 %280, i32* %7, align 4
  br label %323

281:                                              ; preds = %259
  %282 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %283 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %282, i32 0, i32 1
  %284 = load i64*, i64** %283, align 8
  %285 = getelementptr inbounds i64, i64* %284, i64 0
  %286 = load i64, i64* %285, align 8
  %287 = trunc i64 %286 to i32
  %288 = load i32, i32* %20, align 4
  %289 = mul nsw i32 %287, %288
  store i32 %289, i32* %25, align 4
  br label %296

290:                                              ; preds = %256
  %291 = load i32, i32* %8, align 4
  %292 = load i32, i32* @cmsERROR_INTERNAL, align 4
  %293 = load i32, i32* %13, align 4
  %294 = call i32 (i32, i32, i8*, ...) @cmsSignalError(i32 %291, i32 %292, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %293)
  %295 = load i32, i32* @FALSE, align 4
  store i32 %295, i32* %7, align 4
  br label %323

296:                                              ; preds = %281
  br label %297

297:                                              ; preds = %296, %229
  br label %298

298:                                              ; preds = %297, %128
  store i32 0, i32* %24, align 4
  br label %299

299:                                              ; preds = %318, %298
  %300 = load i32, i32* %24, align 4
  %301 = load i32, i32* %12, align 4
  %302 = icmp slt i32 %300, %301
  br i1 %302, label %303, label %321

303:                                              ; preds = %299
  %304 = load i64*, i64** %11, align 8
  %305 = load i32, i32* %24, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds i64, i64* %304, i64 %306
  %308 = load i64, i64* %307, align 8
  %309 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %310 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %309, i32 0, i32 0
  %311 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %310, i32 0, i32 0
  %312 = load i64*, i64** %311, align 8
  %313 = load i32, i32* %25, align 4
  %314 = load i32, i32* %24, align 4
  %315 = add nsw i32 %313, %314
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds i64, i64* %312, i64 %316
  store i64 %308, i64* %317, align 8
  br label %318

318:                                              ; preds = %303
  %319 = load i32, i32* %24, align 4
  %320 = add nsw i32 %319, 1
  store i32 %320, i32* %24, align 4
  br label %299

321:                                              ; preds = %299
  %322 = load i32, i32* @TRUE, align 4
  store i32 %322, i32* %7, align 4
  br label %323

323:                                              ; preds = %321, %290, %279, %227, %126, %38
  %324 = load i32, i32* %7, align 4
  ret i32 %324
}

declare dso_local i32 @cmsSignalError(i32, i32, i8*, ...) #1

declare dso_local i64 @floor(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
