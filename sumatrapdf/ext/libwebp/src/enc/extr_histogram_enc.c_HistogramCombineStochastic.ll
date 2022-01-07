; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_histogram_enc.c_HistogramCombineStochastic.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_histogram_enc.c_HistogramCombineStochastic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, %struct.TYPE_22__** }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_24__ = type { i32, i32, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32, i32, i32, i32 }

@PairComparison = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*, i32*, i32, i32*)* @HistogramCombineStochastic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @HistogramCombineStochastic(%struct.TYPE_21__* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_22__**, align 8
  %17 = alloca %struct.TYPE_24__, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca double, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca double, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca %struct.TYPE_23__*, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 1, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %14, align 4
  %39 = sdiv i32 %38, 2
  store i32 %39, i32* %15, align 4
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %41, align 8
  store %struct.TYPE_22__** %42, %struct.TYPE_22__*** %16, align 8
  store i32 9, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %43 = load i32*, i32** %7, align 8
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %4
  %48 = load i32*, i32** %9, align 8
  store i32 1, i32* %48, align 4
  store i32 1, i32* %5, align 4
  br label %403

49:                                               ; preds = %4
  %50 = load i32*, i32** %7, align 8
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @WebPSafeMalloc(i32 %51, i32 4)
  %53 = inttoptr i64 %52 to i32*
  store i32* %53, i32** %20, align 8
  %54 = load i32*, i32** %20, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  store i32 0, i32* %5, align 4
  br label %403

57:                                               ; preds = %49
  %58 = call i32 @HistoQueueInit(%struct.TYPE_24__* %17, i32 9)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %57
  br label %398

61:                                               ; preds = %57
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %62

62:                                               ; preds = %83, %61
  %63 = load i32, i32* %11, align 4
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp slt i32 %63, %66
  br i1 %67, label %68, label %86

68:                                               ; preds = %62
  %69 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %16, align 8
  %70 = load i32, i32* %11, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %69, i64 %71
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %72, align 8
  %74 = icmp eq %struct.TYPE_22__* %73, null
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  br label %83

76:                                               ; preds = %68
  %77 = load i32, i32* %11, align 4
  %78 = load i32*, i32** %20, align 8
  %79 = load i32, i32* %10, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %10, align 4
  %81 = sext i32 %79 to i64
  %82 = getelementptr inbounds i32, i32* %78, i64 %81
  store i32 %77, i32* %82, align 4
  br label %83

83:                                               ; preds = %76, %75
  %84 = load i32, i32* %11, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %11, align 4
  br label %62

86:                                               ; preds = %62
  %87 = load i32, i32* %10, align 4
  %88 = load i32*, i32** %7, align 8
  %89 = load i32, i32* %88, align 4
  %90 = icmp eq i32 %87, %89
  %91 = zext i1 %90 to i32
  %92 = call i32 @assert(i32 %91)
  store i32 0, i32* %11, align 4
  br label %93

93:                                               ; preds = %388, %86
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* %14, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %107

97:                                               ; preds = %93
  %98 = load i32*, i32** %7, align 8
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %8, align 4
  %101 = icmp sge i32 %99, %100
  br i1 %101, label %102, label %107

102:                                              ; preds = %97
  %103 = load i32, i32* %13, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %13, align 4
  %105 = load i32, i32* %15, align 4
  %106 = icmp slt i32 %104, %105
  br label %107

107:                                              ; preds = %102, %97, %93
  %108 = phi i1 [ false, %97 ], [ false, %93 ], [ %106, %102 ]
  br i1 %108, label %109, label %391

109:                                              ; preds = %107
  %110 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %17, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %109
  br label %121

114:                                              ; preds = %109
  %115 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %17, i32 0, i32 2
  %116 = load %struct.TYPE_23__*, %struct.TYPE_23__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %116, i64 0
  %118 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = sitofp i32 %119 to double
  br label %121

121:                                              ; preds = %114, %113
  %122 = phi double [ 0.000000e+00, %113 ], [ %120, %114 ]
  store double %122, double* %22, align 8
  store i32 -1, i32* %23, align 4
  store i32 1, i32* %24, align 4
  %123 = load i32*, i32** %7, align 8
  %124 = load i32, i32* %123, align 4
  %125 = sub nsw i32 %124, 1
  %126 = load i32*, i32** %7, align 8
  %127 = load i32, i32* %126, align 4
  %128 = mul nsw i32 %125, %127
  store i32 %128, i32* %25, align 4
  %129 = load i32*, i32** %7, align 8
  %130 = load i32, i32* %129, align 4
  %131 = sdiv i32 %130, 2
  store i32 %131, i32* %26, align 4
  store i32 0, i32* %10, align 4
  br label %132

132:                                              ; preds = %190, %121
  %133 = load i32*, i32** %7, align 8
  %134 = load i32, i32* %133, align 4
  %135 = icmp sge i32 %134, 2
  br i1 %135, label %136, label %140

136:                                              ; preds = %132
  %137 = load i32, i32* %10, align 4
  %138 = load i32, i32* %26, align 4
  %139 = icmp slt i32 %137, %138
  br label %140

140:                                              ; preds = %136, %132
  %141 = phi i1 [ false, %132 ], [ %139, %136 ]
  br i1 %141, label %142, label %193

142:                                              ; preds = %140
  %143 = call i32 @MyRand(i32* %12)
  %144 = load i32, i32* %25, align 4
  %145 = srem i32 %143, %144
  store i32 %145, i32* %28, align 4
  %146 = load i32, i32* %28, align 4
  %147 = load i32*, i32** %7, align 8
  %148 = load i32, i32* %147, align 4
  %149 = sub nsw i32 %148, 1
  %150 = sdiv i32 %146, %149
  store i32 %150, i32* %29, align 4
  %151 = load i32, i32* %28, align 4
  %152 = load i32*, i32** %7, align 8
  %153 = load i32, i32* %152, align 4
  %154 = sub nsw i32 %153, 1
  %155 = srem i32 %151, %154
  store i32 %155, i32* %30, align 4
  %156 = load i32, i32* %30, align 4
  %157 = load i32, i32* %29, align 4
  %158 = icmp sge i32 %156, %157
  br i1 %158, label %159, label %162

159:                                              ; preds = %142
  %160 = load i32, i32* %30, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %30, align 4
  br label %162

162:                                              ; preds = %159, %142
  %163 = load i32*, i32** %20, align 8
  %164 = load i32, i32* %29, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  %167 = load i32, i32* %166, align 4
  store i32 %167, i32* %29, align 4
  %168 = load i32*, i32** %20, align 8
  %169 = load i32, i32* %30, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  %172 = load i32, i32* %171, align 4
  store i32 %172, i32* %30, align 4
  %173 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %16, align 8
  %174 = load i32, i32* %29, align 4
  %175 = load i32, i32* %30, align 4
  %176 = load double, double* %22, align 8
  %177 = call double @HistoQueuePush(%struct.TYPE_24__* %17, %struct.TYPE_22__** %173, i32 %174, i32 %175, double %176)
  store double %177, double* %27, align 8
  %178 = load double, double* %27, align 8
  %179 = fcmp olt double %178, 0.000000e+00
  br i1 %179, label %180, label %189

180:                                              ; preds = %162
  %181 = load double, double* %27, align 8
  store double %181, double* %22, align 8
  %182 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %17, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %17, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = icmp eq i32 %183, %185
  br i1 %186, label %187, label %188

187:                                              ; preds = %180
  br label %193

188:                                              ; preds = %180
  br label %189

189:                                              ; preds = %188, %162
  br label %190

190:                                              ; preds = %189
  %191 = load i32, i32* %10, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %10, align 4
  br label %132

193:                                              ; preds = %187, %140
  %194 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %17, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %193
  br label %388

198:                                              ; preds = %193
  %199 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %17, i32 0, i32 2
  %200 = load %struct.TYPE_23__*, %struct.TYPE_23__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %200, i64 0
  %202 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  store i32 %203, i32* %23, align 4
  %204 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %17, i32 0, i32 2
  %205 = load %struct.TYPE_23__*, %struct.TYPE_23__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %205, i64 0
  %207 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 4
  store i32 %208, i32* %24, align 4
  %209 = load i32, i32* %23, align 4
  %210 = load i32, i32* %24, align 4
  %211 = icmp slt i32 %209, %210
  %212 = zext i1 %211 to i32
  %213 = call i32 @assert(i32 %212)
  %214 = load i32*, i32** %20, align 8
  %215 = load i32*, i32** %7, align 8
  %216 = load i32, i32* %215, align 4
  %217 = call i64 @bsearch(i32* %24, i32* %214, i32 %216, i32 4, i32* @PairComparison)
  %218 = inttoptr i64 %217 to i32*
  store i32* %218, i32** %21, align 8
  %219 = load i32*, i32** %21, align 8
  %220 = icmp ne i32* %219, null
  %221 = zext i1 %220 to i32
  %222 = call i32 @assert(i32 %221)
  %223 = load i32*, i32** %21, align 8
  %224 = load i32*, i32** %21, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 1
  %226 = load i32*, i32** %7, align 8
  %227 = load i32, i32* %226, align 4
  %228 = sext i32 %227 to i64
  %229 = load i32*, i32** %21, align 8
  %230 = load i32*, i32** %20, align 8
  %231 = ptrtoint i32* %229 to i64
  %232 = ptrtoint i32* %230 to i64
  %233 = sub i64 %231, %232
  %234 = sdiv exact i64 %233, 4
  %235 = sub nsw i64 %228, %234
  %236 = sub nsw i64 %235, 1
  %237 = mul i64 4, %236
  %238 = trunc i64 %237 to i32
  %239 = call i32 @memmove(i32* %223, i32* %225, i32 %238)
  %240 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %16, align 8
  %241 = load i32, i32* %24, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %240, i64 %242
  %244 = load %struct.TYPE_22__*, %struct.TYPE_22__** %243, align 8
  %245 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %16, align 8
  %246 = load i32, i32* %23, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %245, i64 %247
  %249 = load %struct.TYPE_22__*, %struct.TYPE_22__** %248, align 8
  %250 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %16, align 8
  %251 = load i32, i32* %23, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %250, i64 %252
  %254 = load %struct.TYPE_22__*, %struct.TYPE_22__** %253, align 8
  %255 = call i32 @HistogramAdd(%struct.TYPE_22__* %244, %struct.TYPE_22__* %249, %struct.TYPE_22__* %254)
  %256 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %17, i32 0, i32 2
  %257 = load %struct.TYPE_23__*, %struct.TYPE_23__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %257, i64 0
  %259 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %258, i32 0, i32 3
  %260 = load i32, i32* %259, align 4
  %261 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %16, align 8
  %262 = load i32, i32* %23, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %261, i64 %263
  %265 = load %struct.TYPE_22__*, %struct.TYPE_22__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %265, i32 0, i32 0
  store i32 %260, i32* %266, align 4
  %267 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %268 = load i32, i32* %24, align 4
  %269 = load i32*, i32** %7, align 8
  %270 = call i32 @HistogramSetRemoveHistogram(%struct.TYPE_21__* %267, i32 %268, i32* %269)
  store i32 0, i32* %10, align 4
  br label %271

271:                                              ; preds = %382, %378, %315, %198
  %272 = load i32, i32* %10, align 4
  %273 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %17, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = icmp slt i32 %272, %274
  br i1 %275, label %276, label %387

276:                                              ; preds = %271
  %277 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %17, i32 0, i32 2
  %278 = load %struct.TYPE_23__*, %struct.TYPE_23__** %277, align 8
  %279 = load i32, i32* %10, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %278, i64 %280
  store %struct.TYPE_23__* %281, %struct.TYPE_23__** %31, align 8
  %282 = load %struct.TYPE_23__*, %struct.TYPE_23__** %31, align 8
  %283 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 4
  %285 = load i32, i32* %23, align 4
  %286 = icmp eq i32 %284, %285
  br i1 %286, label %293, label %287

287:                                              ; preds = %276
  %288 = load %struct.TYPE_23__*, %struct.TYPE_23__** %31, align 8
  %289 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 4
  %291 = load i32, i32* %24, align 4
  %292 = icmp eq i32 %290, %291
  br label %293

293:                                              ; preds = %287, %276
  %294 = phi i1 [ true, %276 ], [ %292, %287 ]
  %295 = zext i1 %294 to i32
  store i32 %295, i32* %32, align 4
  %296 = load %struct.TYPE_23__*, %struct.TYPE_23__** %31, align 8
  %297 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %296, i32 0, i32 2
  %298 = load i32, i32* %297, align 4
  %299 = load i32, i32* %23, align 4
  %300 = icmp eq i32 %298, %299
  br i1 %300, label %307, label %301

301:                                              ; preds = %293
  %302 = load %struct.TYPE_23__*, %struct.TYPE_23__** %31, align 8
  %303 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %302, i32 0, i32 2
  %304 = load i32, i32* %303, align 4
  %305 = load i32, i32* %24, align 4
  %306 = icmp eq i32 %304, %305
  br label %307

307:                                              ; preds = %301, %293
  %308 = phi i1 [ true, %293 ], [ %306, %301 ]
  %309 = zext i1 %308 to i32
  store i32 %309, i32* %33, align 4
  store i32 0, i32* %34, align 4
  %310 = load i32, i32* %32, align 4
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %318

312:                                              ; preds = %307
  %313 = load i32, i32* %33, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %318

315:                                              ; preds = %312
  %316 = load %struct.TYPE_23__*, %struct.TYPE_23__** %31, align 8
  %317 = call i32 @HistoQueuePopPair(%struct.TYPE_24__* %17, %struct.TYPE_23__* %316)
  br label %271

318:                                              ; preds = %312, %307
  %319 = load i32, i32* %32, align 4
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %325

321:                                              ; preds = %318
  %322 = load i32, i32* %23, align 4
  %323 = load %struct.TYPE_23__*, %struct.TYPE_23__** %31, align 8
  %324 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %323, i32 0, i32 1
  store i32 %322, i32* %324, align 4
  store i32 1, i32* %34, align 4
  br label %333

325:                                              ; preds = %318
  %326 = load i32, i32* %33, align 4
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %332

328:                                              ; preds = %325
  %329 = load i32, i32* %23, align 4
  %330 = load %struct.TYPE_23__*, %struct.TYPE_23__** %31, align 8
  %331 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %330, i32 0, i32 2
  store i32 %329, i32* %331, align 4
  store i32 1, i32* %34, align 4
  br label %332

332:                                              ; preds = %328, %325
  br label %333

333:                                              ; preds = %332, %321
  %334 = load %struct.TYPE_23__*, %struct.TYPE_23__** %31, align 8
  %335 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %334, i32 0, i32 1
  %336 = load i32, i32* %335, align 4
  %337 = load %struct.TYPE_23__*, %struct.TYPE_23__** %31, align 8
  %338 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %337, i32 0, i32 2
  %339 = load i32, i32* %338, align 4
  %340 = icmp sgt i32 %336, %339
  br i1 %340, label %341, label %353

341:                                              ; preds = %333
  %342 = load %struct.TYPE_23__*, %struct.TYPE_23__** %31, align 8
  %343 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %342, i32 0, i32 2
  %344 = load i32, i32* %343, align 4
  store i32 %344, i32* %35, align 4
  %345 = load %struct.TYPE_23__*, %struct.TYPE_23__** %31, align 8
  %346 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %345, i32 0, i32 1
  %347 = load i32, i32* %346, align 4
  %348 = load %struct.TYPE_23__*, %struct.TYPE_23__** %31, align 8
  %349 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %348, i32 0, i32 2
  store i32 %347, i32* %349, align 4
  %350 = load i32, i32* %35, align 4
  %351 = load %struct.TYPE_23__*, %struct.TYPE_23__** %31, align 8
  %352 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %351, i32 0, i32 1
  store i32 %350, i32* %352, align 4
  br label %353

353:                                              ; preds = %341, %333
  %354 = load i32, i32* %34, align 4
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %382

356:                                              ; preds = %353
  %357 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %16, align 8
  %358 = load %struct.TYPE_23__*, %struct.TYPE_23__** %31, align 8
  %359 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %358, i32 0, i32 1
  %360 = load i32, i32* %359, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %357, i64 %361
  %363 = load %struct.TYPE_22__*, %struct.TYPE_22__** %362, align 8
  %364 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %16, align 8
  %365 = load %struct.TYPE_23__*, %struct.TYPE_23__** %31, align 8
  %366 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %365, i32 0, i32 2
  %367 = load i32, i32* %366, align 4
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %364, i64 %368
  %370 = load %struct.TYPE_22__*, %struct.TYPE_22__** %369, align 8
  %371 = load %struct.TYPE_23__*, %struct.TYPE_23__** %31, align 8
  %372 = call i32 @HistoQueueUpdatePair(%struct.TYPE_22__* %363, %struct.TYPE_22__* %370, i32 0, %struct.TYPE_23__* %371)
  %373 = load %struct.TYPE_23__*, %struct.TYPE_23__** %31, align 8
  %374 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %373, i32 0, i32 0
  %375 = load i32, i32* %374, align 4
  %376 = sitofp i32 %375 to double
  %377 = fcmp oge double %376, 0.000000e+00
  br i1 %377, label %378, label %381

378:                                              ; preds = %356
  %379 = load %struct.TYPE_23__*, %struct.TYPE_23__** %31, align 8
  %380 = call i32 @HistoQueuePopPair(%struct.TYPE_24__* %17, %struct.TYPE_23__* %379)
  br label %271

381:                                              ; preds = %356
  br label %382

382:                                              ; preds = %381, %353
  %383 = load %struct.TYPE_23__*, %struct.TYPE_23__** %31, align 8
  %384 = call i32 @HistoQueueUpdateHead(%struct.TYPE_24__* %17, %struct.TYPE_23__* %383)
  %385 = load i32, i32* %10, align 4
  %386 = add nsw i32 %385, 1
  store i32 %386, i32* %10, align 4
  br label %271

387:                                              ; preds = %271
  store i32 0, i32* %13, align 4
  br label %388

388:                                              ; preds = %387, %197
  %389 = load i32, i32* %11, align 4
  %390 = add nsw i32 %389, 1
  store i32 %390, i32* %11, align 4
  br label %93

391:                                              ; preds = %107
  %392 = load i32*, i32** %7, align 8
  %393 = load i32, i32* %392, align 4
  %394 = load i32, i32* %8, align 4
  %395 = icmp sle i32 %393, %394
  %396 = zext i1 %395 to i32
  %397 = load i32*, i32** %9, align 8
  store i32 %396, i32* %397, align 4
  store i32 1, i32* %19, align 4
  br label %398

398:                                              ; preds = %391, %60
  %399 = call i32 @HistoQueueClear(%struct.TYPE_24__* %17)
  %400 = load i32*, i32** %20, align 8
  %401 = call i32 @WebPSafeFree(i32* %400)
  %402 = load i32, i32* %19, align 4
  store i32 %402, i32* %5, align 4
  br label %403

403:                                              ; preds = %398, %56, %47
  %404 = load i32, i32* %5, align 4
  ret i32 %404
}

declare dso_local i64 @WebPSafeMalloc(i32, i32) #1

declare dso_local i32 @HistoQueueInit(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @MyRand(i32*) #1

declare dso_local double @HistoQueuePush(%struct.TYPE_24__*, %struct.TYPE_22__**, i32, i32, double) #1

declare dso_local i64 @bsearch(i32*, i32*, i32, i32, i32*) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

declare dso_local i32 @HistogramAdd(%struct.TYPE_22__*, %struct.TYPE_22__*, %struct.TYPE_22__*) #1

declare dso_local i32 @HistogramSetRemoveHistogram(%struct.TYPE_21__*, i32, i32*) #1

declare dso_local i32 @HistoQueuePopPair(%struct.TYPE_24__*, %struct.TYPE_23__*) #1

declare dso_local i32 @HistoQueueUpdatePair(%struct.TYPE_22__*, %struct.TYPE_22__*, i32, %struct.TYPE_23__*) #1

declare dso_local i32 @HistoQueueUpdateHead(%struct.TYPE_24__*, %struct.TYPE_23__*) #1

declare dso_local i32 @HistoQueueClear(%struct.TYPE_24__*) #1

declare dso_local i32 @WebPSafeFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
