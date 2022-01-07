; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_filter/extr_antiflicker.c_Filter.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_filter/extr_antiflicker.c_Filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_19__, %struct.TYPE_22__* }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_22__ = type { i32*, i32*, i32, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32*, i32, i32, i32 }

@Y_PLANE = common dso_local global i64 0, align 8
@SCENE_CHANGE_THRESHOLD = common dso_local global i64 0, align 8
@U_PLANE = common dso_local global i64 0, align 8
@V_PLANE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_20__* (%struct.TYPE_21__*, %struct.TYPE_20__*)* @Filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_20__* @Filter(%struct.TYPE_21__* %0, %struct.TYPE_20__* %1) #0 {
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %4, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %5, align 8
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %37 = icmp ne %struct.TYPE_20__* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %2
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %3, align 8
  br label %410

39:                                               ; preds = %2
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %41 = call %struct.TYPE_20__* @filter_NewPicture(%struct.TYPE_21__* %40)
  store %struct.TYPE_20__* %41, %struct.TYPE_20__** %6, align 8
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %43 = icmp ne %struct.TYPE_20__* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %39
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %46 = call i32 @picture_Release(%struct.TYPE_20__* %45)
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %3, align 8
  br label %410

47:                                               ; preds = %39
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_22__*, %struct.TYPE_22__** %49, align 8
  store %struct.TYPE_22__* %50, %struct.TYPE_22__** %7, align 8
  %51 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %51, i32 0, i32 3
  %53 = call i32 @atomic_load(i32* %52)
  store i32 %53, i32* %8, align 4
  %54 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %54, i32 0, i32 2
  %56 = call i32 @atomic_load(i32* %55)
  store i32 %56, i32* %9, align 4
  %57 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_23__*, %struct.TYPE_23__** %58, align 8
  %60 = load i64, i64* @Y_PLANE, align 8
  %61 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  store i32* %63, i32** %10, align 8
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_23__*, %struct.TYPE_23__** %65, align 8
  %67 = load i64, i64* @Y_PLANE, align 8
  %68 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  store i32* %70, i32** %11, align 8
  store i32 0, i32* %12, align 4
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_23__*, %struct.TYPE_23__** %72, align 8
  %74 = load i64, i64* @Y_PLANE, align 8
  %75 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  store i32 %77, i32* %13, align 4
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_23__*, %struct.TYPE_23__** %79, align 8
  %81 = load i64, i64* @Y_PLANE, align 8
  %82 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %80, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %14, align 4
  %85 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_23__*, %struct.TYPE_23__** %86, align 8
  %88 = load i64, i64* @Y_PLANE, align 8
  %89 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %87, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  store i32 %91, i32* %15, align 4
  %92 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_23__*, %struct.TYPE_23__** %93, align 8
  %95 = load i64, i64* @Y_PLANE, align 8
  %96 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %94, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  store i32 %98, i32* %16, align 4
  %99 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %100 = call i32 @GetLuminanceAvg(%struct.TYPE_20__* %99)
  store i32 %100, i32* %17, align 4
  %101 = load i32, i32* %17, align 4
  %102 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %8, align 4
  %106 = sub nsw i32 %105, 1
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %104, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = sub nsw i32 %101, %109
  %111 = call i64 @abs(i32 %110)
  %112 = load i64, i64* @SCENE_CHANGE_THRESHOLD, align 8
  %113 = icmp sgt i64 %111, %112
  br i1 %113, label %124, label %114

114:                                              ; preds = %47
  %115 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %8, align 4
  %119 = sub nsw i32 %118, 1
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %117, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = icmp eq i32 %122, 256
  br i1 %123, label %124, label %125

124:                                              ; preds = %114, %47
  store i32 1, i32* %12, align 4
  br label %125

125:                                              ; preds = %124, %114
  %126 = load i32, i32* %12, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %156

128:                                              ; preds = %125
  store i32 0, i32* %18, align 4
  br label %129

129:                                              ; preds = %141, %128
  %130 = load i32, i32* %18, align 4
  %131 = load i32, i32* %8, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %133, label %144

133:                                              ; preds = %129
  %134 = load i32, i32* %17, align 4
  %135 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* %18, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  store i32 %134, i32* %140, align 4
  br label %141

141:                                              ; preds = %133
  %142 = load i32, i32* %18, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %18, align 4
  br label %129

144:                                              ; preds = %129
  %145 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_23__*, %struct.TYPE_23__** %146, align 8
  %148 = load i64, i64* @Y_PLANE, align 8
  %149 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %147, i64 %148
  %150 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_23__*, %struct.TYPE_23__** %151, align 8
  %153 = load i64, i64* @Y_PLANE, align 8
  %154 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %152, i64 %153
  %155 = call i32 @plane_CopyPixels(%struct.TYPE_23__* %149, %struct.TYPE_23__* %154)
  br label %274

156:                                              ; preds = %125
  store i32 0, i32* %19, align 4
  br label %157

157:                                              ; preds = %177, %156
  %158 = load i32, i32* %19, align 4
  %159 = load i32, i32* %8, align 4
  %160 = sub nsw i32 %159, 1
  %161 = icmp slt i32 %158, %160
  br i1 %161, label %162, label %180

162:                                              ; preds = %157
  %163 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %163, i32 0, i32 0
  %165 = load i32*, i32** %164, align 8
  %166 = load i32, i32* %19, align 4
  %167 = add nsw i32 %166, 1
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %165, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %171, i32 0, i32 0
  %173 = load i32*, i32** %172, align 8
  %174 = load i32, i32* %19, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  store i32 %170, i32* %176, align 4
  br label %177

177:                                              ; preds = %162
  %178 = load i32, i32* %19, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %19, align 4
  br label %157

180:                                              ; preds = %157
  %181 = load i32, i32* %17, align 4
  %182 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %183 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %182, i32 0, i32 0
  %184 = load i32*, i32** %183, align 8
  %185 = load i32, i32* %8, align 4
  %186 = sub nsw i32 %185, 1
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %184, i64 %187
  store i32 %181, i32* %188, align 4
  store float 1.000000e+00, float* %20, align 4
  %189 = load i32, i32* %17, align 4
  %190 = icmp sgt i32 %189, 0
  br i1 %190, label %191, label %217

191:                                              ; preds = %180
  store float 0.000000e+00, float* %21, align 4
  store i32 0, i32* %22, align 4
  br label %192

192:                                              ; preds = %207, %191
  %193 = load i32, i32* %22, align 4
  %194 = load i32, i32* %8, align 4
  %195 = icmp slt i32 %193, %194
  br i1 %195, label %196, label %210

196:                                              ; preds = %192
  %197 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %198 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %197, i32 0, i32 0
  %199 = load i32*, i32** %198, align 8
  %200 = load i32, i32* %22, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %199, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = sitofp i32 %203 to float
  %205 = load float, float* %21, align 4
  %206 = fadd float %205, %204
  store float %206, float* %21, align 4
  br label %207

207:                                              ; preds = %196
  %208 = load i32, i32* %22, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %22, align 4
  br label %192

210:                                              ; preds = %192
  %211 = load float, float* %21, align 4
  %212 = load i32, i32* %8, align 4
  %213 = load i32, i32* %17, align 4
  %214 = mul nsw i32 %212, %213
  %215 = sitofp i32 %214 to float
  %216 = fdiv float %211, %215
  store float %216, float* %20, align 4
  br label %217

217:                                              ; preds = %210, %180
  store i32 8, i32* %23, align 4
  %218 = load float, float* %20, align 4
  %219 = call i32 @__MIN(float %218, i32 255)
  %220 = load i32, i32* %23, align 4
  %221 = shl i32 1, %220
  %222 = mul nsw i32 %219, %221
  store i32 %222, i32* %24, align 4
  store i32 0, i32* %25, align 4
  br label %223

223:                                              ; preds = %270, %217
  %224 = load i32, i32* %25, align 4
  %225 = load i32, i32* %13, align 4
  %226 = icmp slt i32 %224, %225
  br i1 %226, label %227, label %273

227:                                              ; preds = %223
  store i32 0, i32* %26, align 4
  br label %228

228:                                              ; preds = %266, %227
  %229 = load i32, i32* %26, align 4
  %230 = load i32, i32* %14, align 4
  %231 = icmp slt i32 %229, %230
  br i1 %231, label %232, label %269

232:                                              ; preds = %228
  %233 = load i32*, i32** %10, align 8
  %234 = load i32, i32* %25, align 4
  %235 = load i32, i32* %15, align 4
  %236 = mul nsw i32 %234, %235
  %237 = load i32, i32* %26, align 4
  %238 = add nsw i32 %236, %237
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %233, i64 %239
  %241 = load i32, i32* %240, align 4
  store i32 %241, i32* %27, align 4
  %242 = load i32, i32* %24, align 4
  %243 = load i32, i32* %27, align 4
  %244 = mul nsw i32 %242, %243
  %245 = load i32, i32* %23, align 4
  %246 = sub nsw i32 %245, 1
  %247 = shl i32 1, %246
  %248 = add nsw i32 %244, %247
  %249 = load i32, i32* %23, align 4
  %250 = ashr i32 %248, %249
  store i32 %250, i32* %28, align 4
  %251 = load i32, i32* %28, align 4
  %252 = icmp sgt i32 %251, 255
  br i1 %252, label %253, label %254

253:                                              ; preds = %232
  br label %256

254:                                              ; preds = %232
  %255 = load i32, i32* %28, align 4
  br label %256

256:                                              ; preds = %254, %253
  %257 = phi i32 [ 255, %253 ], [ %255, %254 ]
  %258 = load i32*, i32** %11, align 8
  %259 = load i32, i32* %25, align 4
  %260 = load i32, i32* %16, align 4
  %261 = mul nsw i32 %259, %260
  %262 = load i32, i32* %26, align 4
  %263 = add nsw i32 %261, %262
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i32, i32* %258, i64 %264
  store i32 %257, i32* %265, align 4
  br label %266

266:                                              ; preds = %256
  %267 = load i32, i32* %26, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %26, align 4
  br label %228

269:                                              ; preds = %228
  br label %270

270:                                              ; preds = %269
  %271 = load i32, i32* %25, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %25, align 4
  br label %223

273:                                              ; preds = %223
  br label %274

274:                                              ; preds = %273, %144
  %275 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %276 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %275, i32 0, i32 0
  %277 = load %struct.TYPE_23__*, %struct.TYPE_23__** %276, align 8
  %278 = load i64, i64* @U_PLANE, align 8
  %279 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %277, i64 %278
  %280 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %281 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %280, i32 0, i32 0
  %282 = load %struct.TYPE_23__*, %struct.TYPE_23__** %281, align 8
  %283 = load i64, i64* @U_PLANE, align 8
  %284 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %282, i64 %283
  %285 = call i32 @plane_CopyPixels(%struct.TYPE_23__* %279, %struct.TYPE_23__* %284)
  %286 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %287 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %286, i32 0, i32 0
  %288 = load %struct.TYPE_23__*, %struct.TYPE_23__** %287, align 8
  %289 = load i64, i64* @V_PLANE, align 8
  %290 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %288, i64 %289
  %291 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %292 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %291, i32 0, i32 0
  %293 = load %struct.TYPE_23__*, %struct.TYPE_23__** %292, align 8
  %294 = load i64, i64* @V_PLANE, align 8
  %295 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %293, i64 %294
  %296 = call i32 @plane_CopyPixels(%struct.TYPE_23__* %290, %struct.TYPE_23__* %295)
  %297 = load i32, i32* %12, align 4
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %302, label %299

299:                                              ; preds = %274
  %300 = load i32, i32* %9, align 4
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %302, label %306

302:                                              ; preds = %299, %274
  %303 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %304 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %305 = call %struct.TYPE_20__* @CopyInfoAndRelease(%struct.TYPE_20__* %303, %struct.TYPE_20__* %304)
  store %struct.TYPE_20__* %305, %struct.TYPE_20__** %3, align 8
  br label %410

306:                                              ; preds = %299
  %307 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %308 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %307, i32 0, i32 1
  %309 = load i32*, i32** %308, align 8
  store i32* %309, i32** %29, align 8
  %310 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %311 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %310, i32 0, i32 0
  %312 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %311, i32 0, i32 0
  %313 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 8
  store i32 %314, i32* %30, align 4
  store i32 0, i32* %31, align 4
  br label %315

315:                                              ; preds = %403, %306
  %316 = load i32, i32* %31, align 4
  %317 = load i32, i32* %13, align 4
  %318 = icmp slt i32 %316, %317
  br i1 %318, label %319, label %406

319:                                              ; preds = %315
  store i32 0, i32* %32, align 4
  br label %320

320:                                              ; preds = %399, %319
  %321 = load i32, i32* %32, align 4
  %322 = load i32, i32* %14, align 4
  %323 = icmp slt i32 %321, %322
  br i1 %323, label %324, label %402

324:                                              ; preds = %320
  %325 = load i32*, i32** %11, align 8
  %326 = load i32, i32* %31, align 4
  %327 = load i32, i32* %16, align 4
  %328 = mul nsw i32 %326, %327
  %329 = load i32, i32* %32, align 4
  %330 = add nsw i32 %328, %329
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds i32, i32* %325, i64 %331
  %333 = load i32, i32* %332, align 4
  store i32 %333, i32* %33, align 4
  %334 = load i32*, i32** %29, align 8
  %335 = load i32, i32* %31, align 4
  %336 = load i32, i32* %30, align 4
  %337 = mul nsw i32 %335, %336
  %338 = load i32, i32* %32, align 4
  %339 = add nsw i32 %337, %338
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds i32, i32* %334, i64 %340
  %342 = load i32, i32* %341, align 4
  store i32 %342, i32* %34, align 4
  %343 = load i32, i32* %33, align 4
  %344 = load i32, i32* %34, align 4
  %345 = sub nsw i32 %343, %344
  %346 = call i64 @abs(i32 %345)
  %347 = trunc i64 %346 to i32
  store i32 %347, i32* %35, align 4
  %348 = load i32, i32* %35, align 4
  %349 = load i32, i32* %9, align 4
  %350 = icmp slt i32 %348, %349
  br i1 %350, label %351, label %371

351:                                              ; preds = %324
  %352 = load i32, i32* %35, align 4
  %353 = load i32, i32* %9, align 4
  %354 = ashr i32 %353, 1
  %355 = icmp sgt i32 %352, %354
  br i1 %355, label %356, label %370

356:                                              ; preds = %351
  %357 = load i32, i32* %33, align 4
  %358 = mul nsw i32 %357, 2
  %359 = load i32, i32* %34, align 4
  %360 = add nsw i32 %358, %359
  %361 = sdiv i32 %360, 3
  %362 = load i32*, i32** %29, align 8
  %363 = load i32, i32* %31, align 4
  %364 = load i32, i32* %30, align 4
  %365 = mul nsw i32 %363, %364
  %366 = load i32, i32* %32, align 4
  %367 = add nsw i32 %365, %366
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds i32, i32* %362, i64 %368
  store i32 %361, i32* %369, align 4
  br label %370

370:                                              ; preds = %356, %351
  br label %381

371:                                              ; preds = %324
  %372 = load i32, i32* %33, align 4
  %373 = load i32*, i32** %29, align 8
  %374 = load i32, i32* %31, align 4
  %375 = load i32, i32* %30, align 4
  %376 = mul nsw i32 %374, %375
  %377 = load i32, i32* %32, align 4
  %378 = add nsw i32 %376, %377
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds i32, i32* %373, i64 %379
  store i32 %372, i32* %380, align 4
  br label %381

381:                                              ; preds = %371, %370
  %382 = load i32*, i32** %29, align 8
  %383 = load i32, i32* %31, align 4
  %384 = load i32, i32* %30, align 4
  %385 = mul nsw i32 %383, %384
  %386 = load i32, i32* %32, align 4
  %387 = add nsw i32 %385, %386
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds i32, i32* %382, i64 %388
  %390 = load i32, i32* %389, align 4
  %391 = load i32*, i32** %11, align 8
  %392 = load i32, i32* %31, align 4
  %393 = load i32, i32* %16, align 4
  %394 = mul nsw i32 %392, %393
  %395 = load i32, i32* %32, align 4
  %396 = add nsw i32 %394, %395
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds i32, i32* %391, i64 %397
  store i32 %390, i32* %398, align 4
  br label %399

399:                                              ; preds = %381
  %400 = load i32, i32* %32, align 4
  %401 = add nsw i32 %400, 1
  store i32 %401, i32* %32, align 4
  br label %320

402:                                              ; preds = %320
  br label %403

403:                                              ; preds = %402
  %404 = load i32, i32* %31, align 4
  %405 = add nsw i32 %404, 1
  store i32 %405, i32* %31, align 4
  br label %315

406:                                              ; preds = %315
  %407 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %408 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %409 = call %struct.TYPE_20__* @CopyInfoAndRelease(%struct.TYPE_20__* %407, %struct.TYPE_20__* %408)
  store %struct.TYPE_20__* %409, %struct.TYPE_20__** %3, align 8
  br label %410

410:                                              ; preds = %406, %302, %44, %38
  %411 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  ret %struct.TYPE_20__* %411
}

declare dso_local %struct.TYPE_20__* @filter_NewPicture(%struct.TYPE_21__*) #1

declare dso_local i32 @picture_Release(%struct.TYPE_20__*) #1

declare dso_local i32 @atomic_load(i32*) #1

declare dso_local i32 @GetLuminanceAvg(%struct.TYPE_20__*) #1

declare dso_local i64 @abs(i32) #1

declare dso_local i32 @plane_CopyPixels(%struct.TYPE_23__*, %struct.TYPE_23__*) #1

declare dso_local i32 @__MIN(float, i32) #1

declare dso_local %struct.TYPE_20__* @CopyInfoAndRelease(%struct.TYPE_20__*, %struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
