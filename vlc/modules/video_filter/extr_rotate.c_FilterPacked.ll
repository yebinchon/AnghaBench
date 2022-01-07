; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_filter/extr_rotate.c_FilterPacked.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_filter/extr_rotate.c_FilterPacked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32* }
%struct.TYPE_20__ = type { %struct.TYPE_19__*, %struct.TYPE_18__ }
%struct.TYPE_19__ = type { i32, i32, i32*, i32 }
%struct.TYPE_18__ = type { i32 }

@VLC_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"Unsupported input chroma (%4.4s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_20__* (%struct.TYPE_21__*, %struct.TYPE_20__*)* @FilterPacked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_20__* @FilterPacked(%struct.TYPE_21__* %0, %struct.TYPE_20__* %1) #0 {
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
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
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %4, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %5, align 8
  %30 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %31, align 8
  store %struct.TYPE_22__* %32, %struct.TYPE_22__** %7, align 8
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %34 = icmp ne %struct.TYPE_20__* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %2
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %3, align 8
  br label %383

36:                                               ; preds = %2
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @GetPackedYuvOffsets(i32 %40, i32* %10, i32* %8, i32* %9)
  %42 = load i64, i64* @VLC_SUCCESS, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %53

44:                                               ; preds = %36
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 0
  %49 = bitcast i32* %48 to i8*
  %50 = call i32 @msg_Warn(%struct.TYPE_21__* %45, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %49)
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %52 = call i32 @picture_Release(%struct.TYPE_20__* %51)
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %3, align 8
  br label %383

53:                                               ; preds = %36
  %54 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %55 = call %struct.TYPE_20__* @filter_NewPicture(%struct.TYPE_21__* %54)
  store %struct.TYPE_20__* %55, %struct.TYPE_20__** %6, align 8
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %57 = icmp ne %struct.TYPE_20__* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %53
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %60 = call i32 @picture_Release(%struct.TYPE_20__* %59)
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %3, align 8
  br label %383

61:                                               ; preds = %53
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = ashr i32 %66, 1
  store i32 %67, i32* %11, align 4
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %12, align 4
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %10, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  store i32* %80, i32** %13, align 8
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  store i32* %88, i32** %14, align 8
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %91, i32 0, i32 2
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %9, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  store i32* %96, i32** %15, align 8
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_19__*, %struct.TYPE_19__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  store i32 %101, i32* %16, align 4
  %102 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 2
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %10, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  store i32* %109, i32** %17, align 8
  %110 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 2
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %8, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  store i32* %117, i32** %18, align 8
  %118 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_19__*, %struct.TYPE_19__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %120, i32 0, i32 2
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %9, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  store i32* %125, i32** %19, align 8
  %126 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_19__*, %struct.TYPE_19__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 8
  store i32 %130, i32* %20, align 4
  %131 = load i32, i32* %12, align 4
  %132 = ashr i32 %131, 1
  store i32 %132, i32* %21, align 4
  %133 = load i32, i32* %11, align 4
  %134 = ashr i32 %133, 1
  store i32 %134, i32* %22, align 4
  %135 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = icmp ne i32* %137, null
  br i1 %138, label %139, label %150

139:                                              ; preds = %61
  %140 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = call i32 @motion_get_angle(i32* %142)
  store i32 %143, i32* %23, align 4
  %144 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %145 = load i32, i32* %23, align 4
  %146 = sitofp i32 %145 to float
  %147 = fdiv float %146, 2.000000e+01
  %148 = fptosi float %147 to i32
  %149 = call i32 @store_trigo(%struct.TYPE_22__* %144, i32 %148)
  br label %150

150:                                              ; preds = %139, %61
  %151 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %152 = call i32 @fetch_trigo(%struct.TYPE_22__* %151, i32* %24, i32* %25)
  store i32 0, i32* %26, align 4
  br label %153

153:                                              ; preds = %376, %150
  %154 = load i32, i32* %26, align 4
  %155 = load i32, i32* %12, align 4
  %156 = icmp slt i32 %154, %155
  br i1 %156, label %157, label %379

157:                                              ; preds = %153
  store i32 0, i32* %27, align 4
  br label %158

158:                                              ; preds = %372, %157
  %159 = load i32, i32* %27, align 4
  %160 = load i32, i32* %11, align 4
  %161 = icmp slt i32 %159, %160
  br i1 %161, label %162, label %375

162:                                              ; preds = %158
  %163 = load i32, i32* %21, align 4
  %164 = load i32, i32* %24, align 4
  %165 = load i32, i32* %27, align 4
  %166 = load i32, i32* %22, align 4
  %167 = sub nsw i32 %165, %166
  %168 = mul nsw i32 %164, %167
  %169 = load i32, i32* %25, align 4
  %170 = load i32, i32* %26, align 4
  %171 = load i32, i32* %21, align 4
  %172 = sub nsw i32 %170, %171
  %173 = mul nsw i32 %169, %172
  %174 = add nsw i32 %168, %173
  %175 = ashr i32 %174, 12
  %176 = add nsw i32 %163, %175
  store i32 %176, i32* %28, align 4
  %177 = load i32, i32* %22, align 4
  %178 = load i32, i32* %25, align 4
  %179 = load i32, i32* %27, align 4
  %180 = load i32, i32* %22, align 4
  %181 = sub nsw i32 %179, %180
  %182 = mul nsw i32 %178, %181
  %183 = load i32, i32* %24, align 4
  %184 = load i32, i32* %26, align 4
  %185 = load i32, i32* %21, align 4
  %186 = sub nsw i32 %184, %185
  %187 = mul nsw i32 %183, %186
  %188 = sub nsw i32 %182, %187
  %189 = ashr i32 %188, 12
  %190 = add nsw i32 %177, %189
  store i32 %190, i32* %29, align 4
  %191 = load i32, i32* %29, align 4
  %192 = icmp sle i32 0, %191
  br i1 %192, label %193, label %264

193:                                              ; preds = %162
  %194 = load i32, i32* %29, align 4
  %195 = load i32, i32* %11, align 4
  %196 = icmp slt i32 %194, %195
  br i1 %196, label %197, label %264

197:                                              ; preds = %193
  %198 = load i32, i32* %28, align 4
  %199 = icmp sle i32 0, %198
  br i1 %199, label %200, label %264

200:                                              ; preds = %197
  %201 = load i32, i32* %28, align 4
  %202 = load i32, i32* %12, align 4
  %203 = icmp slt i32 %201, %202
  br i1 %203, label %204, label %264

204:                                              ; preds = %200
  %205 = load i32*, i32** %13, align 8
  %206 = load i32, i32* %28, align 4
  %207 = load i32, i32* %16, align 4
  %208 = mul nsw i32 %206, %207
  %209 = load i32, i32* %29, align 4
  %210 = mul nsw i32 2, %209
  %211 = add nsw i32 %208, %210
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %205, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = load i32*, i32** %17, align 8
  %216 = load i32, i32* %26, align 4
  %217 = load i32, i32* %20, align 4
  %218 = mul nsw i32 %216, %217
  %219 = load i32, i32* %27, align 4
  %220 = mul nsw i32 2, %219
  %221 = add nsw i32 %218, %220
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %215, i64 %222
  store i32 %214, i32* %223, align 4
  %224 = load i32, i32* %29, align 4
  %225 = sdiv i32 %224, 2
  store i32 %225, i32* %29, align 4
  %226 = load i32*, i32** %14, align 8
  %227 = load i32, i32* %28, align 4
  %228 = load i32, i32* %16, align 4
  %229 = mul nsw i32 %227, %228
  %230 = load i32, i32* %29, align 4
  %231 = mul nsw i32 4, %230
  %232 = add nsw i32 %229, %231
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %226, i64 %233
  %235 = load i32, i32* %234, align 4
  %236 = load i32*, i32** %18, align 8
  %237 = load i32, i32* %26, align 4
  %238 = load i32, i32* %20, align 4
  %239 = mul nsw i32 %237, %238
  %240 = load i32, i32* %27, align 4
  %241 = mul nsw i32 2, %240
  %242 = add nsw i32 %239, %241
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i32, i32* %236, i64 %243
  store i32 %235, i32* %244, align 4
  %245 = load i32*, i32** %15, align 8
  %246 = load i32, i32* %28, align 4
  %247 = load i32, i32* %16, align 4
  %248 = mul nsw i32 %246, %247
  %249 = load i32, i32* %29, align 4
  %250 = mul nsw i32 4, %249
  %251 = add nsw i32 %248, %250
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i32, i32* %245, i64 %252
  %254 = load i32, i32* %253, align 4
  %255 = load i32*, i32** %19, align 8
  %256 = load i32, i32* %26, align 4
  %257 = load i32, i32* %20, align 4
  %258 = mul nsw i32 %256, %257
  %259 = load i32, i32* %27, align 4
  %260 = mul nsw i32 2, %259
  %261 = add nsw i32 %258, %260
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i32, i32* %255, i64 %262
  store i32 %254, i32* %263, align 4
  br label %292

264:                                              ; preds = %200, %197, %193, %162
  %265 = load i32*, i32** %17, align 8
  %266 = load i32, i32* %26, align 4
  %267 = load i32, i32* %20, align 4
  %268 = mul nsw i32 %266, %267
  %269 = load i32, i32* %27, align 4
  %270 = mul nsw i32 2, %269
  %271 = add nsw i32 %268, %270
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i32, i32* %265, i64 %272
  store i32 0, i32* %273, align 4
  %274 = load i32*, i32** %18, align 8
  %275 = load i32, i32* %26, align 4
  %276 = load i32, i32* %20, align 4
  %277 = mul nsw i32 %275, %276
  %278 = load i32, i32* %27, align 4
  %279 = mul nsw i32 2, %278
  %280 = add nsw i32 %277, %279
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i32, i32* %274, i64 %281
  store i32 128, i32* %282, align 4
  %283 = load i32*, i32** %19, align 8
  %284 = load i32, i32* %26, align 4
  %285 = load i32, i32* %20, align 4
  %286 = mul nsw i32 %284, %285
  %287 = load i32, i32* %27, align 4
  %288 = mul nsw i32 2, %287
  %289 = add nsw i32 %286, %288
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i32, i32* %283, i64 %290
  store i32 128, i32* %291, align 4
  br label %292

292:                                              ; preds = %264, %204
  %293 = load i32, i32* %27, align 4
  %294 = add nsw i32 %293, 1
  store i32 %294, i32* %27, align 4
  %295 = load i32, i32* %27, align 4
  %296 = load i32, i32* %11, align 4
  %297 = icmp sge i32 %295, %296
  br i1 %297, label %298, label %299

298:                                              ; preds = %292
  br label %375

299:                                              ; preds = %292
  %300 = load i32, i32* %21, align 4
  %301 = load i32, i32* %24, align 4
  %302 = load i32, i32* %27, align 4
  %303 = load i32, i32* %22, align 4
  %304 = sub nsw i32 %302, %303
  %305 = mul nsw i32 %301, %304
  %306 = load i32, i32* %25, align 4
  %307 = load i32, i32* %26, align 4
  %308 = load i32, i32* %21, align 4
  %309 = sub nsw i32 %307, %308
  %310 = mul nsw i32 %306, %309
  %311 = add nsw i32 %305, %310
  %312 = ashr i32 %311, 12
  %313 = add nsw i32 %300, %312
  store i32 %313, i32* %28, align 4
  %314 = load i32, i32* %22, align 4
  %315 = load i32, i32* %25, align 4
  %316 = load i32, i32* %27, align 4
  %317 = load i32, i32* %22, align 4
  %318 = sub nsw i32 %316, %317
  %319 = mul nsw i32 %315, %318
  %320 = load i32, i32* %24, align 4
  %321 = load i32, i32* %26, align 4
  %322 = load i32, i32* %21, align 4
  %323 = sub nsw i32 %321, %322
  %324 = mul nsw i32 %320, %323
  %325 = sub nsw i32 %319, %324
  %326 = ashr i32 %325, 12
  %327 = add nsw i32 %314, %326
  store i32 %327, i32* %29, align 4
  %328 = load i32, i32* %29, align 4
  %329 = icmp sle i32 0, %328
  br i1 %329, label %330, label %361

330:                                              ; preds = %299
  %331 = load i32, i32* %29, align 4
  %332 = load i32, i32* %11, align 4
  %333 = icmp slt i32 %331, %332
  br i1 %333, label %334, label %361

334:                                              ; preds = %330
  %335 = load i32, i32* %28, align 4
  %336 = icmp sle i32 0, %335
  br i1 %336, label %337, label %361

337:                                              ; preds = %334
  %338 = load i32, i32* %28, align 4
  %339 = load i32, i32* %12, align 4
  %340 = icmp slt i32 %338, %339
  br i1 %340, label %341, label %361

341:                                              ; preds = %337
  %342 = load i32*, i32** %13, align 8
  %343 = load i32, i32* %28, align 4
  %344 = load i32, i32* %16, align 4
  %345 = mul nsw i32 %343, %344
  %346 = load i32, i32* %29, align 4
  %347 = mul nsw i32 2, %346
  %348 = add nsw i32 %345, %347
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds i32, i32* %342, i64 %349
  %351 = load i32, i32* %350, align 4
  %352 = load i32*, i32** %17, align 8
  %353 = load i32, i32* %26, align 4
  %354 = load i32, i32* %20, align 4
  %355 = mul nsw i32 %353, %354
  %356 = load i32, i32* %27, align 4
  %357 = mul nsw i32 2, %356
  %358 = add nsw i32 %355, %357
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds i32, i32* %352, i64 %359
  store i32 %351, i32* %360, align 4
  br label %371

361:                                              ; preds = %337, %334, %330, %299
  %362 = load i32*, i32** %17, align 8
  %363 = load i32, i32* %26, align 4
  %364 = load i32, i32* %20, align 4
  %365 = mul nsw i32 %363, %364
  %366 = load i32, i32* %27, align 4
  %367 = mul nsw i32 2, %366
  %368 = add nsw i32 %365, %367
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds i32, i32* %362, i64 %369
  store i32 0, i32* %370, align 4
  br label %371

371:                                              ; preds = %361, %341
  br label %372

372:                                              ; preds = %371
  %373 = load i32, i32* %27, align 4
  %374 = add nsw i32 %373, 1
  store i32 %374, i32* %27, align 4
  br label %158

375:                                              ; preds = %298, %158
  br label %376

376:                                              ; preds = %375
  %377 = load i32, i32* %26, align 4
  %378 = add nsw i32 %377, 1
  store i32 %378, i32* %26, align 4
  br label %153

379:                                              ; preds = %153
  %380 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %381 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %382 = call %struct.TYPE_20__* @CopyInfoAndRelease(%struct.TYPE_20__* %380, %struct.TYPE_20__* %381)
  store %struct.TYPE_20__* %382, %struct.TYPE_20__** %3, align 8
  br label %383

383:                                              ; preds = %379, %58, %44, %35
  %384 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  ret %struct.TYPE_20__* %384
}

declare dso_local i64 @GetPackedYuvOffsets(i32, i32*, i32*, i32*) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_21__*, i8*, i8*) #1

declare dso_local i32 @picture_Release(%struct.TYPE_20__*) #1

declare dso_local %struct.TYPE_20__* @filter_NewPicture(%struct.TYPE_21__*) #1

declare dso_local i32 @motion_get_angle(i32*) #1

declare dso_local i32 @store_trigo(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @fetch_trigo(%struct.TYPE_22__*, i32*, i32*) #1

declare dso_local %struct.TYPE_20__* @CopyInfoAndRelease(%struct.TYPE_20__*, %struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
