; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/mux/extr_anim_encode.c_MinimizeChangeRectangle.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/mux/extr_anim_encode.c_MinimizeChangeRectangle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i32, i32* }
%struct.TYPE_8__ = type { i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, %struct.TYPE_7__*, %struct.TYPE_8__*, i32, float)* @MinimizeChangeRectangle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @MinimizeChangeRectangle(%struct.TYPE_7__* %0, %struct.TYPE_7__* %1, %struct.TYPE_8__* %2, i32 %3, float %4) #0 {
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64 (i32*, i32, i32*, i32, i64, i32)*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %7, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %8, align 8
  store i32 %3, i32* %9, align 4
  store float %4, float* %10, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i64 (i32*, i32, i32*, i32, i64, i32)* @ComparePixelsLossless, i64 (i32*, i32, i32*, i32, i64, i32)* @ComparePixelsLossy
  store i64 (i32*, i32, i32*, i32, i64, i32)* %27, i64 (i32*, i32, i32*, i32, i64, i32)** %13, align 8
  %28 = load float, float* %10, align 4
  %29 = call i32 @QualityToMaxDiff(float %28)
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %5
  br label %35

33:                                               ; preds = %5
  %34 = load i32, i32* %14, align 4
  br label %35

35:                                               ; preds = %33, %32
  %36 = phi i32 [ 0, %32 ], [ %34, %33 ]
  store i32 %36, i32* %15, align 4
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %39, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %35
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %47, %50
  br label %52

52:                                               ; preds = %44, %35
  %53 = phi i1 [ false, %35 ], [ %51, %44 ]
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert(i32 %54)
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %58, %61
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp sle i64 %62, %65
  %67 = zext i1 %66 to i32
  %68 = call i32 @assert(i32 %67)
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %71, %74
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp sle i64 %75, %78
  %80 = zext i1 %79 to i32
  %81 = call i32 @assert(i32 %80)
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %11, align 4
  br label %86

86:                                               ; preds = %154, %52
  %87 = load i32, i32* %11, align 4
  %88 = sext i32 %87 to i64
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %91, %94
  %96 = icmp slt i64 %88, %95
  br i1 %96, label %97, label %157

97:                                               ; preds = %86
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 3
  %100 = load i32*, i32** %99, align 8
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = sext i32 %106 to i64
  %108 = mul nsw i64 %103, %107
  %109 = load i32, i32* %11, align 4
  %110 = sext i32 %109 to i64
  %111 = add nsw i64 %108, %110
  %112 = getelementptr inbounds i32, i32* %100, i64 %111
  store i32* %112, i32** %16, align 8
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 3
  %115 = load i32*, i32** %114, align 8
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = sext i32 %121 to i64
  %123 = mul nsw i64 %118, %122
  %124 = load i32, i32* %11, align 4
  %125 = sext i32 %124 to i64
  %126 = add nsw i64 %123, %125
  %127 = getelementptr inbounds i32, i32* %115, i64 %126
  store i32* %127, i32** %17, align 8
  %128 = load i64 (i32*, i32, i32*, i32, i64, i32)*, i64 (i32*, i32, i32*, i32, i64, i32)** %13, align 8
  %129 = load i32*, i32** %16, align 8
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = load i32*, i32** %17, align 8
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 3
  %139 = load i64, i64* %138, align 8
  %140 = load i32, i32* %15, align 4
  %141 = call i64 %128(i32* %129, i32 %132, i32* %133, i32 %136, i64 %139, i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %152

143:                                              ; preds = %97
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = add nsw i64 %146, -1
  store i64 %147, i64* %145, align 8
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = add nsw i64 %150, 1
  store i64 %151, i64* %149, align 8
  br label %153

152:                                              ; preds = %97
  br label %157

153:                                              ; preds = %143
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* %11, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %11, align 4
  br label %86

157:                                              ; preds = %152, %86
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = icmp eq i64 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %157
  br label %392

163:                                              ; preds = %157
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = add nsw i64 %166, %169
  %171 = sub nsw i64 %170, 1
  %172 = trunc i64 %171 to i32
  store i32 %172, i32* %11, align 4
  br label %173

173:                                              ; preds = %233, %163
  %174 = load i32, i32* %11, align 4
  %175 = sext i32 %174 to i64
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = icmp sge i64 %175, %178
  br i1 %179, label %180, label %236

180:                                              ; preds = %173
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 3
  %183 = load i32*, i32** %182, align 8
  %184 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 2
  %186 = load i64, i64* %185, align 8
  %187 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  %190 = sext i32 %189 to i64
  %191 = mul nsw i64 %186, %190
  %192 = load i32, i32* %11, align 4
  %193 = sext i32 %192 to i64
  %194 = add nsw i64 %191, %193
  %195 = getelementptr inbounds i32, i32* %183, i64 %194
  store i32* %195, i32** %18, align 8
  %196 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 3
  %198 = load i32*, i32** %197, align 8
  %199 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i32 0, i32 2
  %201 = load i64, i64* %200, align 8
  %202 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 8
  %205 = sext i32 %204 to i64
  %206 = mul nsw i64 %201, %205
  %207 = load i32, i32* %11, align 4
  %208 = sext i32 %207 to i64
  %209 = add nsw i64 %206, %208
  %210 = getelementptr inbounds i32, i32* %198, i64 %209
  store i32* %210, i32** %19, align 8
  %211 = load i64 (i32*, i32, i32*, i32, i64, i32)*, i64 (i32*, i32, i32*, i32, i64, i32)** %13, align 8
  %212 = load i32*, i32** %18, align 8
  %213 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 8
  %216 = load i32*, i32** %19, align 8
  %217 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %218 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 8
  %220 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %220, i32 0, i32 3
  %222 = load i64, i64* %221, align 8
  %223 = load i32, i32* %15, align 4
  %224 = call i64 %211(i32* %212, i32 %215, i32* %216, i32 %219, i64 %222, i32 %223)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %231

226:                                              ; preds = %180
  %227 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %228 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %227, i32 0, i32 1
  %229 = load i64, i64* %228, align 8
  %230 = add nsw i64 %229, -1
  store i64 %230, i64* %228, align 8
  br label %232

231:                                              ; preds = %180
  br label %236

232:                                              ; preds = %226
  br label %233

233:                                              ; preds = %232
  %234 = load i32, i32* %11, align 4
  %235 = add nsw i32 %234, -1
  store i32 %235, i32* %11, align 4
  br label %173

236:                                              ; preds = %231, %173
  %237 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %238 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %237, i32 0, i32 1
  %239 = load i64, i64* %238, align 8
  %240 = icmp eq i64 %239, 0
  br i1 %240, label %241, label %242

241:                                              ; preds = %236
  br label %392

242:                                              ; preds = %236
  %243 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %244 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %243, i32 0, i32 2
  %245 = load i64, i64* %244, align 8
  %246 = trunc i64 %245 to i32
  store i32 %246, i32* %12, align 4
  br label %247

247:                                              ; preds = %307, %242
  %248 = load i32, i32* %12, align 4
  %249 = sext i32 %248 to i64
  %250 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %251 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %250, i32 0, i32 2
  %252 = load i64, i64* %251, align 8
  %253 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %254 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %253, i32 0, i32 3
  %255 = load i64, i64* %254, align 8
  %256 = add nsw i64 %252, %255
  %257 = icmp slt i64 %249, %256
  br i1 %257, label %258, label %310

258:                                              ; preds = %247
  %259 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %260 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %259, i32 0, i32 3
  %261 = load i32*, i32** %260, align 8
  %262 = load i32, i32* %12, align 4
  %263 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %264 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %263, i32 0, i32 2
  %265 = load i32, i32* %264, align 8
  %266 = mul nsw i32 %262, %265
  %267 = sext i32 %266 to i64
  %268 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %269 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %268, i32 0, i32 0
  %270 = load i64, i64* %269, align 8
  %271 = add nsw i64 %267, %270
  %272 = getelementptr inbounds i32, i32* %261, i64 %271
  store i32* %272, i32** %20, align 8
  %273 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %274 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %273, i32 0, i32 3
  %275 = load i32*, i32** %274, align 8
  %276 = load i32, i32* %12, align 4
  %277 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %278 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %277, i32 0, i32 2
  %279 = load i32, i32* %278, align 8
  %280 = mul nsw i32 %276, %279
  %281 = sext i32 %280 to i64
  %282 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %283 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %282, i32 0, i32 0
  %284 = load i64, i64* %283, align 8
  %285 = add nsw i64 %281, %284
  %286 = getelementptr inbounds i32, i32* %275, i64 %285
  store i32* %286, i32** %21, align 8
  %287 = load i64 (i32*, i32, i32*, i32, i64, i32)*, i64 (i32*, i32, i32*, i32, i64, i32)** %13, align 8
  %288 = load i32*, i32** %20, align 8
  %289 = load i32*, i32** %21, align 8
  %290 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %291 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %290, i32 0, i32 1
  %292 = load i64, i64* %291, align 8
  %293 = load i32, i32* %15, align 4
  %294 = call i64 %287(i32* %288, i32 1, i32* %289, i32 1, i64 %292, i32 %293)
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %296, label %305

296:                                              ; preds = %258
  %297 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %298 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %297, i32 0, i32 3
  %299 = load i64, i64* %298, align 8
  %300 = add nsw i64 %299, -1
  store i64 %300, i64* %298, align 8
  %301 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %302 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %301, i32 0, i32 2
  %303 = load i64, i64* %302, align 8
  %304 = add nsw i64 %303, 1
  store i64 %304, i64* %302, align 8
  br label %306

305:                                              ; preds = %258
  br label %310

306:                                              ; preds = %296
  br label %307

307:                                              ; preds = %306
  %308 = load i32, i32* %12, align 4
  %309 = add nsw i32 %308, 1
  store i32 %309, i32* %12, align 4
  br label %247

310:                                              ; preds = %305, %247
  %311 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %312 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %311, i32 0, i32 3
  %313 = load i64, i64* %312, align 8
  %314 = icmp eq i64 %313, 0
  br i1 %314, label %315, label %316

315:                                              ; preds = %310
  br label %392

316:                                              ; preds = %310
  %317 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %318 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %317, i32 0, i32 2
  %319 = load i64, i64* %318, align 8
  %320 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %321 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %320, i32 0, i32 3
  %322 = load i64, i64* %321, align 8
  %323 = add nsw i64 %319, %322
  %324 = sub nsw i64 %323, 1
  %325 = trunc i64 %324 to i32
  store i32 %325, i32* %12, align 4
  br label %326

326:                                              ; preds = %378, %316
  %327 = load i32, i32* %12, align 4
  %328 = sext i32 %327 to i64
  %329 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %330 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %329, i32 0, i32 2
  %331 = load i64, i64* %330, align 8
  %332 = icmp sge i64 %328, %331
  br i1 %332, label %333, label %381

333:                                              ; preds = %326
  %334 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %335 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %334, i32 0, i32 3
  %336 = load i32*, i32** %335, align 8
  %337 = load i32, i32* %12, align 4
  %338 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %339 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %338, i32 0, i32 2
  %340 = load i32, i32* %339, align 8
  %341 = mul nsw i32 %337, %340
  %342 = sext i32 %341 to i64
  %343 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %344 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %343, i32 0, i32 0
  %345 = load i64, i64* %344, align 8
  %346 = add nsw i64 %342, %345
  %347 = getelementptr inbounds i32, i32* %336, i64 %346
  store i32* %347, i32** %22, align 8
  %348 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %349 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %348, i32 0, i32 3
  %350 = load i32*, i32** %349, align 8
  %351 = load i32, i32* %12, align 4
  %352 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %353 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %352, i32 0, i32 2
  %354 = load i32, i32* %353, align 8
  %355 = mul nsw i32 %351, %354
  %356 = sext i32 %355 to i64
  %357 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %358 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %357, i32 0, i32 0
  %359 = load i64, i64* %358, align 8
  %360 = add nsw i64 %356, %359
  %361 = getelementptr inbounds i32, i32* %350, i64 %360
  store i32* %361, i32** %23, align 8
  %362 = load i64 (i32*, i32, i32*, i32, i64, i32)*, i64 (i32*, i32, i32*, i32, i64, i32)** %13, align 8
  %363 = load i32*, i32** %22, align 8
  %364 = load i32*, i32** %23, align 8
  %365 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %366 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %365, i32 0, i32 1
  %367 = load i64, i64* %366, align 8
  %368 = load i32, i32* %15, align 4
  %369 = call i64 %362(i32* %363, i32 1, i32* %364, i32 1, i64 %367, i32 %368)
  %370 = icmp ne i64 %369, 0
  br i1 %370, label %371, label %376

371:                                              ; preds = %333
  %372 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %373 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %372, i32 0, i32 3
  %374 = load i64, i64* %373, align 8
  %375 = add nsw i64 %374, -1
  store i64 %375, i64* %373, align 8
  br label %377

376:                                              ; preds = %333
  br label %381

377:                                              ; preds = %371
  br label %378

378:                                              ; preds = %377
  %379 = load i32, i32* %12, align 4
  %380 = add nsw i32 %379, -1
  store i32 %380, i32* %12, align 4
  br label %326

381:                                              ; preds = %376, %326
  %382 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %383 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %382, i32 0, i32 3
  %384 = load i64, i64* %383, align 8
  %385 = icmp eq i64 %384, 0
  br i1 %385, label %386, label %387

386:                                              ; preds = %381
  br label %392

387:                                              ; preds = %381
  %388 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %389 = call i64 @IsEmptyRect(%struct.TYPE_8__* %388)
  %390 = icmp ne i64 %389, 0
  br i1 %390, label %391, label %401

391:                                              ; preds = %387
  br label %392

392:                                              ; preds = %391, %386, %315, %241, %162
  %393 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %394 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %393, i32 0, i32 0
  store i64 0, i64* %394, align 8
  %395 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %396 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %395, i32 0, i32 2
  store i64 0, i64* %396, align 8
  %397 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %398 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %397, i32 0, i32 1
  store i64 0, i64* %398, align 8
  %399 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %400 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %399, i32 0, i32 3
  store i64 0, i64* %400, align 8
  br label %401

401:                                              ; preds = %392, %387
  ret void
}

declare dso_local i64 @ComparePixelsLossless(i32*, i32, i32*, i32, i64, i32) #1

declare dso_local i64 @ComparePixelsLossy(i32*, i32, i32*, i32, i64, i32) #1

declare dso_local i32 @QualityToMaxDiff(float) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @IsEmptyRect(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
