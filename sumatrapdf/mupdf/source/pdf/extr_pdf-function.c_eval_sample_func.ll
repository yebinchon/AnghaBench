; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-function.c_eval_sample_func.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-function.c_eval_sample_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32**, i32, i32**, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32*, float*, i32**, i32** }

@MAX_M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_8__*, float*, float*)* @eval_sample_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eval_sample_func(i32* %0, %struct.TYPE_8__* %1, float* %2, float* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca float, align 4
  %15 = alloca i32, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca float, align 4
  %25 = alloca float, align 4
  %26 = alloca float, align 4
  %27 = alloca float, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store float* %2, float** %7, align 8
  store float* %3, float** %8, align 8
  %28 = load i32, i32* @MAX_M, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %9, align 8
  %31 = alloca i32, i64 %29, align 16
  store i64 %29, i64* %10, align 8
  %32 = load i32, i32* @MAX_M, align 4
  %33 = zext i32 %32 to i64
  %34 = alloca i32, i64 %33, align 16
  store i64 %33, i64* %11, align 8
  %35 = load i32, i32* @MAX_M, align 4
  %36 = zext i32 %35 to i64
  %37 = alloca i32, i64 %36, align 16
  store i64 %36, i64* %12, align 8
  %38 = load i32, i32* @MAX_M, align 4
  %39 = zext i32 %38 to i64
  %40 = alloca float, i64 %39, align 16
  store i64 %39, i64* %13, align 8
  store i32 0, i32* %15, align 4
  br label %41

41:                                               ; preds = %146, %4
  %42 = load i32, i32* %15, align 4
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %149

47:                                               ; preds = %41
  %48 = load float*, float** %7, align 8
  %49 = load i32, i32* %15, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds float, float* %48, i64 %50
  %52 = load float, float* %51, align 4
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  %55 = load i32**, i32*** %54, align 8
  %56 = load i32, i32* %15, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32*, i32** %55, i64 %57
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  %64 = load i32**, i32*** %63, align 8
  %65 = load i32, i32* %15, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32*, i32** %64, i64 %66
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  %70 = load i32, i32* %69, align 4
  %71 = call float @fz_clamp(float %52, i32 %61, i32 %70)
  store float %71, float* %14, align 4
  %72 = load float, float* %14, align 4
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  %75 = load i32**, i32*** %74, align 8
  %76 = load i32, i32* %15, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32*, i32** %75, i64 %77
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 1
  %84 = load i32**, i32*** %83, align 8
  %85 = load i32, i32* %15, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32*, i32** %84, i64 %86
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 4
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 3
  %95 = load i32**, i32*** %94, align 8
  %96 = load i32, i32* %15, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32*, i32** %95, i64 %97
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 4
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 3
  %106 = load i32**, i32*** %105, align 8
  %107 = load i32, i32* %15, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32*, i32** %106, i64 %108
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 1
  %112 = load i32, i32* %111, align 4
  %113 = call float @lerp(float %72, i32 %81, i32 %90, i32 %101, i32 %112)
  store float %113, float* %14, align 4
  %114 = load float, float* %14, align 4
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 4
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %15, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = sub nsw i32 %123, 1
  %125 = call float @fz_clamp(float %114, i32 0, i32 %124)
  store float %125, float* %14, align 4
  %126 = load float, float* %14, align 4
  %127 = call i32 @floorf(float %126)
  %128 = load i32, i32* %15, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %31, i64 %129
  store i32 %127, i32* %130, align 4
  %131 = load float, float* %14, align 4
  %132 = call i32 @ceilf(float %131)
  %133 = load i32, i32* %15, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %34, i64 %134
  store i32 %132, i32* %135, align 4
  %136 = load float, float* %14, align 4
  %137 = load i32, i32* %15, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %31, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = sitofp i32 %140 to float
  %142 = fsub float %136, %141
  %143 = load i32, i32* %15, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds float, float* %40, i64 %144
  store float %142, float* %145, align 4
  br label %146

146:                                              ; preds = %47
  %147 = load i32, i32* %15, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %15, align 4
  br label %41

149:                                              ; preds = %41
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = getelementptr inbounds i32, i32* %37, i64 0
  store i32 %152, i32* %153, align 16
  store i32 1, i32* %15, align 4
  br label %154

154:                                              ; preds = %180, %149
  %155 = load i32, i32* %15, align 4
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = icmp slt i32 %155, %158
  br i1 %159, label %160, label %183

160:                                              ; preds = %154
  %161 = load i32, i32* %15, align 4
  %162 = sub nsw i32 %161, 1
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %37, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 4
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 0
  %170 = load i32*, i32** %169, align 8
  %171 = load i32, i32* %15, align 4
  %172 = sub nsw i32 %171, 1
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %170, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = mul nsw i32 %165, %175
  %177 = load i32, i32* %15, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %37, i64 %178
  store i32 %176, i32* %179, align 4
  br label %180

180:                                              ; preds = %160
  %181 = load i32, i32* %15, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %15, align 4
  br label %154

183:                                              ; preds = %154
  store i32 0, i32* %15, align 4
  br label %184

184:                                              ; preds = %532, %183
  %185 = load i32, i32* %15, align 4
  %186 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = icmp slt i32 %185, %188
  br i1 %189, label %190, label %535

190:                                              ; preds = %184
  %191 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = icmp eq i32 %193, 1
  br i1 %194, label %195, label %292

195:                                              ; preds = %190
  %196 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 4
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 1
  %200 = load float*, float** %199, align 8
  %201 = getelementptr inbounds i32, i32* %31, i64 0
  %202 = load i32, i32* %201, align 16
  %203 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 8
  %206 = mul nsw i32 %202, %205
  %207 = load i32, i32* %15, align 4
  %208 = add nsw i32 %206, %207
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds float, float* %200, i64 %209
  %211 = load float, float* %210, align 4
  store float %211, float* %16, align 4
  %212 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i32 0, i32 4
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 1
  %216 = load float*, float** %215, align 8
  %217 = getelementptr inbounds i32, i32* %34, i64 0
  %218 = load i32, i32* %217, align 16
  %219 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 8
  %222 = mul nsw i32 %218, %221
  %223 = load i32, i32* %15, align 4
  %224 = add nsw i32 %222, %223
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds float, float* %216, i64 %225
  %227 = load float, float* %226, align 4
  store float %227, float* %17, align 4
  %228 = load float, float* %16, align 4
  %229 = load float, float* %17, align 4
  %230 = load float, float* %16, align 4
  %231 = fsub float %229, %230
  %232 = getelementptr inbounds float, float* %40, i64 0
  %233 = load float, float* %232, align 16
  %234 = fmul float %231, %233
  %235 = fadd float %228, %234
  store float %235, float* %18, align 4
  %236 = load float, float* %18, align 4
  %237 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %238 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %237, i32 0, i32 4
  %239 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %239, i32 0, i32 2
  %241 = load i32**, i32*** %240, align 8
  %242 = load i32, i32* %15, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i32*, i32** %241, i64 %243
  %245 = load i32*, i32** %244, align 8
  %246 = getelementptr inbounds i32, i32* %245, i64 0
  %247 = load i32, i32* %246, align 4
  %248 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %249 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %248, i32 0, i32 4
  %250 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %250, i32 0, i32 2
  %252 = load i32**, i32*** %251, align 8
  %253 = load i32, i32* %15, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i32*, i32** %252, i64 %254
  %256 = load i32*, i32** %255, align 8
  %257 = getelementptr inbounds i32, i32* %256, i64 1
  %258 = load i32, i32* %257, align 4
  %259 = call float @lerp(float %236, i32 0, i32 1, i32 %247, i32 %258)
  %260 = load float*, float** %8, align 8
  %261 = load i32, i32* %15, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds float, float* %260, i64 %262
  store float %259, float* %263, align 4
  %264 = load float*, float** %8, align 8
  %265 = load i32, i32* %15, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds float, float* %264, i64 %266
  %268 = load float, float* %267, align 4
  %269 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %270 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %269, i32 0, i32 3
  %271 = load i32**, i32*** %270, align 8
  %272 = load i32, i32* %15, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i32*, i32** %271, i64 %273
  %275 = load i32*, i32** %274, align 8
  %276 = getelementptr inbounds i32, i32* %275, i64 0
  %277 = load i32, i32* %276, align 4
  %278 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %279 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %278, i32 0, i32 3
  %280 = load i32**, i32*** %279, align 8
  %281 = load i32, i32* %15, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i32*, i32** %280, i64 %282
  %284 = load i32*, i32** %283, align 8
  %285 = getelementptr inbounds i32, i32* %284, i64 1
  %286 = load i32, i32* %285, align 4
  %287 = call float @fz_clamp(float %268, i32 %277, i32 %286)
  %288 = load float*, float** %8, align 8
  %289 = load i32, i32* %15, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds float, float* %288, i64 %290
  store float %287, float* %291, align 4
  br label %531

292:                                              ; preds = %190
  %293 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %294 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 8
  %296 = icmp eq i32 %295, 2
  br i1 %296, label %297, label %466

297:                                              ; preds = %292
  %298 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %299 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %298, i32 0, i32 2
  %300 = load i32, i32* %299, align 8
  store i32 %300, i32* %19, align 4
  %301 = load i32, i32* %19, align 4
  %302 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %303 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %302, i32 0, i32 4
  %304 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %303, i32 0, i32 0
  %305 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %304, i32 0, i32 0
  %306 = load i32*, i32** %305, align 8
  %307 = getelementptr inbounds i32, i32* %306, i64 0
  %308 = load i32, i32* %307, align 4
  %309 = mul nsw i32 %301, %308
  store i32 %309, i32* %20, align 4
  %310 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %311 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %310, i32 0, i32 4
  %312 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %311, i32 0, i32 0
  %313 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %312, i32 0, i32 1
  %314 = load float*, float** %313, align 8
  %315 = getelementptr inbounds i32, i32* %31, i64 0
  %316 = load i32, i32* %315, align 16
  %317 = load i32, i32* %19, align 4
  %318 = mul nsw i32 %316, %317
  %319 = getelementptr inbounds i32, i32* %31, i64 1
  %320 = load i32, i32* %319, align 4
  %321 = load i32, i32* %20, align 4
  %322 = mul nsw i32 %320, %321
  %323 = add nsw i32 %318, %322
  %324 = load i32, i32* %15, align 4
  %325 = add nsw i32 %323, %324
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds float, float* %314, i64 %326
  %328 = load float, float* %327, align 4
  store float %328, float* %21, align 4
  %329 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %330 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %329, i32 0, i32 4
  %331 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %330, i32 0, i32 0
  %332 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %331, i32 0, i32 1
  %333 = load float*, float** %332, align 8
  %334 = getelementptr inbounds i32, i32* %34, i64 0
  %335 = load i32, i32* %334, align 16
  %336 = load i32, i32* %19, align 4
  %337 = mul nsw i32 %335, %336
  %338 = getelementptr inbounds i32, i32* %31, i64 1
  %339 = load i32, i32* %338, align 4
  %340 = load i32, i32* %20, align 4
  %341 = mul nsw i32 %339, %340
  %342 = add nsw i32 %337, %341
  %343 = load i32, i32* %15, align 4
  %344 = add nsw i32 %342, %343
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds float, float* %333, i64 %345
  %347 = load float, float* %346, align 4
  store float %347, float* %22, align 4
  %348 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %349 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %348, i32 0, i32 4
  %350 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %349, i32 0, i32 0
  %351 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %350, i32 0, i32 1
  %352 = load float*, float** %351, align 8
  %353 = getelementptr inbounds i32, i32* %31, i64 0
  %354 = load i32, i32* %353, align 16
  %355 = load i32, i32* %19, align 4
  %356 = mul nsw i32 %354, %355
  %357 = getelementptr inbounds i32, i32* %34, i64 1
  %358 = load i32, i32* %357, align 4
  %359 = load i32, i32* %20, align 4
  %360 = mul nsw i32 %358, %359
  %361 = add nsw i32 %356, %360
  %362 = load i32, i32* %15, align 4
  %363 = add nsw i32 %361, %362
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds float, float* %352, i64 %364
  %366 = load float, float* %365, align 4
  store float %366, float* %23, align 4
  %367 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %368 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %367, i32 0, i32 4
  %369 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %368, i32 0, i32 0
  %370 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %369, i32 0, i32 1
  %371 = load float*, float** %370, align 8
  %372 = getelementptr inbounds i32, i32* %34, i64 0
  %373 = load i32, i32* %372, align 16
  %374 = load i32, i32* %19, align 4
  %375 = mul nsw i32 %373, %374
  %376 = getelementptr inbounds i32, i32* %34, i64 1
  %377 = load i32, i32* %376, align 4
  %378 = load i32, i32* %20, align 4
  %379 = mul nsw i32 %377, %378
  %380 = add nsw i32 %375, %379
  %381 = load i32, i32* %15, align 4
  %382 = add nsw i32 %380, %381
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds float, float* %371, i64 %383
  %385 = load float, float* %384, align 4
  store float %385, float* %24, align 4
  %386 = load float, float* %21, align 4
  %387 = load float, float* %22, align 4
  %388 = load float, float* %21, align 4
  %389 = fsub float %387, %388
  %390 = getelementptr inbounds float, float* %40, i64 0
  %391 = load float, float* %390, align 16
  %392 = fmul float %389, %391
  %393 = fadd float %386, %392
  store float %393, float* %25, align 4
  %394 = load float, float* %23, align 4
  %395 = load float, float* %24, align 4
  %396 = load float, float* %23, align 4
  %397 = fsub float %395, %396
  %398 = getelementptr inbounds float, float* %40, i64 0
  %399 = load float, float* %398, align 16
  %400 = fmul float %397, %399
  %401 = fadd float %394, %400
  store float %401, float* %26, align 4
  %402 = load float, float* %25, align 4
  %403 = load float, float* %26, align 4
  %404 = load float, float* %25, align 4
  %405 = fsub float %403, %404
  %406 = getelementptr inbounds float, float* %40, i64 1
  %407 = load float, float* %406, align 4
  %408 = fmul float %405, %407
  %409 = fadd float %402, %408
  store float %409, float* %27, align 4
  %410 = load float, float* %27, align 4
  %411 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %412 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %411, i32 0, i32 4
  %413 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %412, i32 0, i32 0
  %414 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %413, i32 0, i32 2
  %415 = load i32**, i32*** %414, align 8
  %416 = load i32, i32* %15, align 4
  %417 = sext i32 %416 to i64
  %418 = getelementptr inbounds i32*, i32** %415, i64 %417
  %419 = load i32*, i32** %418, align 8
  %420 = getelementptr inbounds i32, i32* %419, i64 0
  %421 = load i32, i32* %420, align 4
  %422 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %423 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %422, i32 0, i32 4
  %424 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %423, i32 0, i32 0
  %425 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %424, i32 0, i32 2
  %426 = load i32**, i32*** %425, align 8
  %427 = load i32, i32* %15, align 4
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds i32*, i32** %426, i64 %428
  %430 = load i32*, i32** %429, align 8
  %431 = getelementptr inbounds i32, i32* %430, i64 1
  %432 = load i32, i32* %431, align 4
  %433 = call float @lerp(float %410, i32 0, i32 1, i32 %421, i32 %432)
  %434 = load float*, float** %8, align 8
  %435 = load i32, i32* %15, align 4
  %436 = sext i32 %435 to i64
  %437 = getelementptr inbounds float, float* %434, i64 %436
  store float %433, float* %437, align 4
  %438 = load float*, float** %8, align 8
  %439 = load i32, i32* %15, align 4
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds float, float* %438, i64 %440
  %442 = load float, float* %441, align 4
  %443 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %444 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %443, i32 0, i32 3
  %445 = load i32**, i32*** %444, align 8
  %446 = load i32, i32* %15, align 4
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds i32*, i32** %445, i64 %447
  %449 = load i32*, i32** %448, align 8
  %450 = getelementptr inbounds i32, i32* %449, i64 0
  %451 = load i32, i32* %450, align 4
  %452 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %453 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %452, i32 0, i32 3
  %454 = load i32**, i32*** %453, align 8
  %455 = load i32, i32* %15, align 4
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds i32*, i32** %454, i64 %456
  %458 = load i32*, i32** %457, align 8
  %459 = getelementptr inbounds i32, i32* %458, i64 1
  %460 = load i32, i32* %459, align 4
  %461 = call float @fz_clamp(float %442, i32 %451, i32 %460)
  %462 = load float*, float** %8, align 8
  %463 = load i32, i32* %15, align 4
  %464 = sext i32 %463 to i64
  %465 = getelementptr inbounds float, float* %462, i64 %464
  store float %461, float* %465, align 4
  br label %530

466:                                              ; preds = %292
  %467 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %468 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %469 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %468, i32 0, i32 0
  %470 = load i32, i32* %469, align 8
  %471 = sub nsw i32 %470, 1
  %472 = load i32, i32* %15, align 4
  %473 = call float @interpolate_sample(%struct.TYPE_8__* %467, i32* %37, i32* %31, i32* %34, float* %40, i32 %471, i32 %472)
  store float %473, float* %14, align 4
  %474 = load float, float* %14, align 4
  %475 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %476 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %475, i32 0, i32 4
  %477 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %476, i32 0, i32 0
  %478 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %477, i32 0, i32 2
  %479 = load i32**, i32*** %478, align 8
  %480 = load i32, i32* %15, align 4
  %481 = sext i32 %480 to i64
  %482 = getelementptr inbounds i32*, i32** %479, i64 %481
  %483 = load i32*, i32** %482, align 8
  %484 = getelementptr inbounds i32, i32* %483, i64 0
  %485 = load i32, i32* %484, align 4
  %486 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %487 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %486, i32 0, i32 4
  %488 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %487, i32 0, i32 0
  %489 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %488, i32 0, i32 2
  %490 = load i32**, i32*** %489, align 8
  %491 = load i32, i32* %15, align 4
  %492 = sext i32 %491 to i64
  %493 = getelementptr inbounds i32*, i32** %490, i64 %492
  %494 = load i32*, i32** %493, align 8
  %495 = getelementptr inbounds i32, i32* %494, i64 1
  %496 = load i32, i32* %495, align 4
  %497 = call float @lerp(float %474, i32 0, i32 1, i32 %485, i32 %496)
  %498 = load float*, float** %8, align 8
  %499 = load i32, i32* %15, align 4
  %500 = sext i32 %499 to i64
  %501 = getelementptr inbounds float, float* %498, i64 %500
  store float %497, float* %501, align 4
  %502 = load float*, float** %8, align 8
  %503 = load i32, i32* %15, align 4
  %504 = sext i32 %503 to i64
  %505 = getelementptr inbounds float, float* %502, i64 %504
  %506 = load float, float* %505, align 4
  %507 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %508 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %507, i32 0, i32 3
  %509 = load i32**, i32*** %508, align 8
  %510 = load i32, i32* %15, align 4
  %511 = sext i32 %510 to i64
  %512 = getelementptr inbounds i32*, i32** %509, i64 %511
  %513 = load i32*, i32** %512, align 8
  %514 = getelementptr inbounds i32, i32* %513, i64 0
  %515 = load i32, i32* %514, align 4
  %516 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %517 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %516, i32 0, i32 3
  %518 = load i32**, i32*** %517, align 8
  %519 = load i32, i32* %15, align 4
  %520 = sext i32 %519 to i64
  %521 = getelementptr inbounds i32*, i32** %518, i64 %520
  %522 = load i32*, i32** %521, align 8
  %523 = getelementptr inbounds i32, i32* %522, i64 1
  %524 = load i32, i32* %523, align 4
  %525 = call float @fz_clamp(float %506, i32 %515, i32 %524)
  %526 = load float*, float** %8, align 8
  %527 = load i32, i32* %15, align 4
  %528 = sext i32 %527 to i64
  %529 = getelementptr inbounds float, float* %526, i64 %528
  store float %525, float* %529, align 4
  br label %530

530:                                              ; preds = %466, %297
  br label %531

531:                                              ; preds = %530, %195
  br label %532

532:                                              ; preds = %531
  %533 = load i32, i32* %15, align 4
  %534 = add nsw i32 %533, 1
  store i32 %534, i32* %15, align 4
  br label %184

535:                                              ; preds = %184
  %536 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %536)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local float @fz_clamp(float, i32, i32) #2

declare dso_local float @lerp(float, i32, i32, i32, i32) #2

declare dso_local i32 @floorf(float) #2

declare dso_local i32 @ceilf(float) #2

declare dso_local float @interpolate_sample(%struct.TYPE_8__*, i32*, i32*, i32*, float*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
