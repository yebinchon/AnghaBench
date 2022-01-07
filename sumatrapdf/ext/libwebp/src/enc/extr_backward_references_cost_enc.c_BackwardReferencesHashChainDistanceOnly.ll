; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_backward_references_cost_enc.c_BackwardReferencesHashChainDistanceOnly.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_backward_references_cost_enc.c_BackwardReferencesHashChainDistanceOnly.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { double*, float* }

@NUM_LITERAL_CODES = common dso_local global i32 0, align 4
@NUM_LENGTH_CODES = common dso_local global i32 0, align 4
@MAX_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*, i32, i32*, %struct.TYPE_15__*, i64*)* @BackwardReferencesHashChainDistanceOnly to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @BackwardReferencesHashChainDistanceOnly(i32 %0, i32 %1, i32* %2, i32 %3, i32* %4, %struct.TYPE_15__* %5, i64* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_15__*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.TYPE_16__*, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_16__*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca double, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca float, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store %struct.TYPE_15__* %5, %struct.TYPE_15__** %13, align 8
  store i64* %6, i64** %14, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %9, align 4
  %39 = mul nsw i32 %37, %38
  store i32 %39, i32* %18, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp sgt i32 %40, 0
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %19, align 4
  %43 = load i32, i32* @NUM_LITERAL_CODES, align 4
  %44 = load i32, i32* @NUM_LENGTH_CODES, align 4
  %45 = add nsw i32 %43, %44
  %46 = load i32, i32* %11, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %7
  %49 = load i32, i32* %11, align 4
  %50 = shl i32 1, %49
  br label %52

51:                                               ; preds = %7
  br label %52

52:                                               ; preds = %51, %48
  %53 = phi i32 [ %50, %48 ], [ 0, %51 ]
  %54 = add nsw i32 %45, %53
  %55 = sext i32 %54 to i64
  %56 = mul i64 8, %55
  store i64 %56, i64* %20, align 8
  %57 = load i64, i64* %20, align 8
  %58 = add i64 16, %57
  store i64 %58, i64* %21, align 8
  %59 = load i64, i64* %21, align 8
  %60 = call i64 @WebPSafeCalloc(i64 1, i64 %59)
  %61 = inttoptr i64 %60 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %61, %struct.TYPE_16__** %22, align 8
  %62 = call i64 @WebPSafeMalloc(i64 1, i32 16)
  %63 = inttoptr i64 %62 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %63, %struct.TYPE_16__** %24, align 8
  store i32 -1, i32* %25, align 4
  store i32 -1, i32* %26, align 4
  store double -1.000000e+00, double* %27, align 8
  store i32 -1, i32* %28, align 4
  store i32 0, i32* %29, align 4
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %65 = icmp eq %struct.TYPE_16__* %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %52
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %24, align 8
  %68 = icmp eq %struct.TYPE_16__* %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %66, %52
  br label %274

70:                                               ; preds = %66
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i64 1
  %73 = bitcast %struct.TYPE_16__* %72 to double*
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 0
  store double* %73, double** %75, align 8
  %76 = load i32, i32* %19, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %70
  %79 = load i32, i32* %11, align 4
  %80 = call i32 @VP8LColorCacheInit(i32* %23, i32 %79)
  store i32 %80, i32* %17, align 4
  %81 = load i32, i32* %17, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %78
  br label %274

84:                                               ; preds = %78
  br label %85

85:                                               ; preds = %84, %70
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* %11, align 4
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %90 = call i32 @CostModelBuild(%struct.TYPE_16__* %86, i32 %87, i32 %88, %struct.TYPE_15__* %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %85
  br label %274

93:                                               ; preds = %85
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %24, align 8
  %95 = load i64*, i64** %14, align 8
  %96 = load i32, i32* %18, align 4
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %98 = call i32 @CostManagerInit(%struct.TYPE_16__* %94, i64* %95, i32 %96, %struct.TYPE_16__* %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %93
  br label %274

101:                                              ; preds = %93
  %102 = load i64*, i64** %14, align 8
  %103 = getelementptr inbounds i64, i64* %102, i64 0
  store i64 0, i64* %103, align 8
  %104 = load i32*, i32** %10, align 8
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %106 = load i32, i32* %19, align 4
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %24, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 1
  %109 = load float*, float** %108, align 8
  %110 = load i64*, i64** %14, align 8
  %111 = call i32 @AddSingleLiteralWithCostModel(i32* %104, i32* %23, %struct.TYPE_16__* %105, i32 0, i32 %106, float 0.000000e+00, float* %109, i64* %110)
  store i32 1, i32* %15, align 4
  br label %112

112:                                              ; preds = %264, %101
  %113 = load i32, i32* %15, align 4
  %114 = load i32, i32* %18, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %267

116:                                              ; preds = %112
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %24, align 8
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 1
  %119 = load float*, float** %118, align 8
  %120 = load i32, i32* %15, align 4
  %121 = sub nsw i32 %120, 1
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds float, float* %119, i64 %122
  %124 = load float, float* %123, align 4
  store float %124, float* %30, align 4
  %125 = load i32*, i32** %12, align 8
  %126 = load i32, i32* %15, align 4
  %127 = call i32 @VP8LHashChainFindCopy(i32* %125, i32 %126, i32* %31, i32* %32)
  %128 = load i32*, i32** %10, align 8
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %130 = load i32, i32* %15, align 4
  %131 = load i32, i32* %19, align 4
  %132 = load float, float* %30, align 4
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %24, align 8
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 1
  %135 = load float*, float** %134, align 8
  %136 = load i64*, i64** %14, align 8
  %137 = call i32 @AddSingleLiteralWithCostModel(i32* %128, i32* %23, %struct.TYPE_16__* %129, i32 %130, i32 %131, float %132, float* %135, i64* %136)
  %138 = load i32, i32* %32, align 4
  %139 = icmp sge i32 %138, 2
  br i1 %139, label %140, label %258

140:                                              ; preds = %116
  %141 = load i32, i32* %31, align 4
  %142 = load i32, i32* %25, align 4
  %143 = icmp ne i32 %141, %142
  br i1 %143, label %144, label %160

144:                                              ; preds = %140
  %145 = load i32, i32* %8, align 4
  %146 = load i32, i32* %31, align 4
  %147 = call i32 @VP8LDistanceToPlaneCode(i32 %145, i32 %146)
  store i32 %147, i32* %33, align 4
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %149 = load i32, i32* %33, align 4
  %150 = call double @GetDistanceCost(%struct.TYPE_16__* %148, i32 %149)
  store double %150, double* %27, align 8
  store i32 1, i32* %28, align 4
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %24, align 8
  %152 = load float, float* %30, align 4
  %153 = fpext float %152 to double
  %154 = load double, double* %27, align 8
  %155 = fadd double %153, %154
  %156 = fptrunc double %155 to float
  %157 = load i32, i32* %15, align 4
  %158 = load i32, i32* %32, align 4
  %159 = call i32 @PushInterval(%struct.TYPE_16__* %151, float %156, i32 %157, i32 %158)
  br label %257

160:                                              ; preds = %140
  %161 = load double, double* %27, align 8
  %162 = fcmp oge double %161, 0.000000e+00
  %163 = zext i1 %162 to i32
  %164 = call i32 @assert(i32 %163)
  %165 = load i32, i32* %26, align 4
  %166 = icmp sge i32 %165, 0
  %167 = zext i1 %166 to i32
  %168 = call i32 @assert(i32 %167)
  %169 = load i32, i32* %28, align 4
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %174, label %171

171:                                              ; preds = %160
  %172 = load i32, i32* %28, align 4
  %173 = icmp eq i32 %172, 1
  br label %174

174:                                              ; preds = %171, %160
  %175 = phi i1 [ true, %160 ], [ %173, %171 ]
  %176 = zext i1 %175 to i32
  %177 = call i32 @assert(i32 %176)
  %178 = load i32, i32* %28, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %186

180:                                              ; preds = %174
  %181 = load i32, i32* %15, align 4
  %182 = sub nsw i32 %181, 1
  %183 = load i32, i32* %26, align 4
  %184 = add nsw i32 %182, %183
  %185 = sub nsw i32 %184, 1
  store i32 %185, i32* %29, align 4
  store i32 0, i32* %28, align 4
  br label %186

186:                                              ; preds = %180, %174
  %187 = load i32, i32* %15, align 4
  %188 = load i32, i32* %32, align 4
  %189 = add nsw i32 %187, %188
  %190 = sub nsw i32 %189, 1
  %191 = load i32, i32* %29, align 4
  %192 = icmp sgt i32 %190, %191
  br i1 %192, label %193, label %256

193:                                              ; preds = %186
  store i32 0, i32* %35, align 4
  %194 = load i32, i32* %32, align 4
  %195 = load i32, i32* @MAX_LENGTH, align 4
  %196 = icmp eq i32 %194, %195
  br i1 %196, label %203, label %197

197:                                              ; preds = %193
  %198 = load i32, i32* %32, align 4
  %199 = load i32, i32* %18, align 4
  %200 = load i32, i32* %15, align 4
  %201 = sub nsw i32 %199, %200
  %202 = icmp eq i32 %198, %201
  br label %203

203:                                              ; preds = %197, %193
  %204 = phi i1 [ true, %193 ], [ %202, %197 ]
  %205 = zext i1 %204 to i32
  %206 = call i32 @assert(i32 %205)
  %207 = load i32, i32* %15, align 4
  store i32 %207, i32* %36, align 4
  br label %208

208:                                              ; preds = %225, %203
  %209 = load i32, i32* %36, align 4
  %210 = load i32, i32* %29, align 4
  %211 = icmp sle i32 %209, %210
  br i1 %211, label %212, label %228

212:                                              ; preds = %208
  %213 = load i32*, i32** %12, align 8
  %214 = load i32, i32* %36, align 4
  %215 = add nsw i32 %214, 1
  %216 = call i32 @VP8LHashChainFindCopy(i32* %213, i32 %215, i32* %34, i32* %35)
  %217 = load i32, i32* %34, align 4
  %218 = load i32, i32* %31, align 4
  %219 = icmp ne i32 %217, %218
  br i1 %219, label %220, label %224

220:                                              ; preds = %212
  %221 = load i32*, i32** %12, align 8
  %222 = load i32, i32* %36, align 4
  %223 = call i32 @VP8LHashChainFindCopy(i32* %221, i32 %222, i32* %34, i32* %35)
  br label %228

224:                                              ; preds = %212
  br label %225

225:                                              ; preds = %224
  %226 = load i32, i32* %36, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %36, align 4
  br label %208

228:                                              ; preds = %220, %208
  %229 = load %struct.TYPE_16__*, %struct.TYPE_16__** %24, align 8
  %230 = load i32, i32* %36, align 4
  %231 = sub nsw i32 %230, 1
  %232 = call i32 @UpdateCostAtIndex(%struct.TYPE_16__* %229, i32 %231, i32 0)
  %233 = load %struct.TYPE_16__*, %struct.TYPE_16__** %24, align 8
  %234 = load i32, i32* %36, align 4
  %235 = call i32 @UpdateCostAtIndex(%struct.TYPE_16__* %233, i32 %234, i32 0)
  %236 = load %struct.TYPE_16__*, %struct.TYPE_16__** %24, align 8
  %237 = load %struct.TYPE_16__*, %struct.TYPE_16__** %24, align 8
  %238 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %237, i32 0, i32 1
  %239 = load float*, float** %238, align 8
  %240 = load i32, i32* %36, align 4
  %241 = sub nsw i32 %240, 1
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds float, float* %239, i64 %242
  %244 = load float, float* %243, align 4
  %245 = fpext float %244 to double
  %246 = load double, double* %27, align 8
  %247 = fadd double %245, %246
  %248 = fptrunc double %247 to float
  %249 = load i32, i32* %36, align 4
  %250 = load i32, i32* %35, align 4
  %251 = call i32 @PushInterval(%struct.TYPE_16__* %236, float %248, i32 %249, i32 %250)
  %252 = load i32, i32* %36, align 4
  %253 = load i32, i32* %35, align 4
  %254 = add nsw i32 %252, %253
  %255 = sub nsw i32 %254, 1
  store i32 %255, i32* %29, align 4
  br label %256

256:                                              ; preds = %228, %186
  br label %257

257:                                              ; preds = %256, %144
  br label %258

258:                                              ; preds = %257, %116
  %259 = load %struct.TYPE_16__*, %struct.TYPE_16__** %24, align 8
  %260 = load i32, i32* %15, align 4
  %261 = call i32 @UpdateCostAtIndex(%struct.TYPE_16__* %259, i32 %260, i32 1)
  %262 = load i32, i32* %31, align 4
  store i32 %262, i32* %25, align 4
  %263 = load i32, i32* %32, align 4
  store i32 %263, i32* %26, align 4
  br label %264

264:                                              ; preds = %258
  %265 = load i32, i32* %15, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %15, align 4
  br label %112

267:                                              ; preds = %112
  %268 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %269 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 4
  %271 = icmp ne i32 %270, 0
  %272 = xor i1 %271, true
  %273 = zext i1 %272 to i32
  store i32 %273, i32* %16, align 4
  br label %274

274:                                              ; preds = %267, %100, %92, %83, %69
  %275 = load i32, i32* %17, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %279

277:                                              ; preds = %274
  %278 = call i32 @VP8LColorCacheClear(i32* %23)
  br label %279

279:                                              ; preds = %277, %274
  %280 = load %struct.TYPE_16__*, %struct.TYPE_16__** %24, align 8
  %281 = call i32 @CostManagerClear(%struct.TYPE_16__* %280)
  %282 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %283 = call i32 @WebPSafeFree(%struct.TYPE_16__* %282)
  %284 = load %struct.TYPE_16__*, %struct.TYPE_16__** %24, align 8
  %285 = call i32 @WebPSafeFree(%struct.TYPE_16__* %284)
  %286 = load i32, i32* %16, align 4
  ret i32 %286
}

declare dso_local i64 @WebPSafeCalloc(i64, i64) #1

declare dso_local i64 @WebPSafeMalloc(i64, i32) #1

declare dso_local i32 @VP8LColorCacheInit(i32*, i32) #1

declare dso_local i32 @CostModelBuild(%struct.TYPE_16__*, i32, i32, %struct.TYPE_15__*) #1

declare dso_local i32 @CostManagerInit(%struct.TYPE_16__*, i64*, i32, %struct.TYPE_16__*) #1

declare dso_local i32 @AddSingleLiteralWithCostModel(i32*, i32*, %struct.TYPE_16__*, i32, i32, float, float*, i64*) #1

declare dso_local i32 @VP8LHashChainFindCopy(i32*, i32, i32*, i32*) #1

declare dso_local i32 @VP8LDistanceToPlaneCode(i32, i32) #1

declare dso_local double @GetDistanceCost(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @PushInterval(%struct.TYPE_16__*, float, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @UpdateCostAtIndex(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @VP8LColorCacheClear(i32*) #1

declare dso_local i32 @CostManagerClear(%struct.TYPE_16__*) #1

declare dso_local i32 @WebPSafeFree(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
