; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_filter/extr_gradfun.h_filter_plane.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_filter/extr_gradfun.h_filter_plane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vf_priv_s = type { i32*, i32, i32 (i32*, i32*, i32*, i32, i32, i32)*, i32 (i32*, i32*, i32*, i32*, i32, i32)* }

@dither = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vf_priv_s*, i32*, i32*, i32, i32, i32, i32, i32)* @filter_plane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @filter_plane(%struct.vf_priv_s* %0, i32* %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.vf_priv_s*, align 8
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
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.vf_priv_s* %0, %struct.vf_priv_s** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %28 = load i32, i32* %12, align 4
  %29 = add nsw i32 %28, 15
  %30 = and i32 %29, -16
  %31 = sdiv i32 %30, 2
  store i32 %31, i32* %17, align 4
  %32 = load i32, i32* %16, align 4
  %33 = load i32, i32* %16, align 4
  %34 = mul nsw i32 %32, %33
  %35 = sdiv i32 2097152, %34
  store i32 %35, i32* %19, align 4
  %36 = load %struct.vf_priv_s*, %struct.vf_priv_s** %9, align 8
  %37 = getelementptr inbounds %struct.vf_priv_s, %struct.vf_priv_s* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 16
  store i32* %39, i32** %20, align 8
  %40 = load %struct.vf_priv_s*, %struct.vf_priv_s** %9, align 8
  %41 = getelementptr inbounds %struct.vf_priv_s, %struct.vf_priv_s* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %17, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = getelementptr inbounds i32, i32* %45, i64 32
  store i32* %46, i32** %21, align 8
  %47 = load %struct.vf_priv_s*, %struct.vf_priv_s** %9, align 8
  %48 = getelementptr inbounds %struct.vf_priv_s, %struct.vf_priv_s* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %22, align 4
  %50 = load i32*, i32** %20, align 8
  %51 = load i32, i32* %17, align 4
  %52 = add nsw i32 %51, 16
  %53 = sext i32 %52 to i64
  %54 = mul i64 %53, 4
  %55 = trunc i64 %54 to i32
  %56 = call i32 @memset(i32* %50, i32 0, i32 %55)
  store i32 0, i32* %18, align 4
  br label %57

57:                                               ; preds = %90, %8
  %58 = load i32, i32* %18, align 4
  %59 = load i32, i32* %16, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %93

61:                                               ; preds = %57
  %62 = load %struct.vf_priv_s*, %struct.vf_priv_s** %9, align 8
  %63 = getelementptr inbounds %struct.vf_priv_s, %struct.vf_priv_s* %62, i32 0, i32 3
  %64 = load i32 (i32*, i32*, i32*, i32*, i32, i32)*, i32 (i32*, i32*, i32*, i32*, i32, i32)** %63, align 8
  %65 = load i32*, i32** %20, align 8
  %66 = load i32*, i32** %21, align 8
  %67 = load i32, i32* %18, align 4
  %68 = load i32, i32* %17, align 4
  %69 = mul nsw i32 %67, %68
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %66, i64 %70
  %72 = load i32*, i32** %21, align 8
  %73 = load i32, i32* %18, align 4
  %74 = sub nsw i32 %73, 1
  %75 = load i32, i32* %17, align 4
  %76 = mul nsw i32 %74, %75
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %72, i64 %77
  %79 = load i32*, i32** %11, align 8
  %80 = load i32, i32* %18, align 4
  %81 = mul nsw i32 2, %80
  %82 = load i32, i32* %15, align 4
  %83 = mul nsw i32 %81, %82
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %79, i64 %84
  %86 = load i32, i32* %15, align 4
  %87 = load i32, i32* %12, align 4
  %88 = sdiv i32 %87, 2
  %89 = call i32 %64(i32* %65, i32* %71, i32* %78, i32* %85, i32 %86, i32 %88)
  br label %90

90:                                               ; preds = %61
  %91 = load i32, i32* %18, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %18, align 4
  br label %57

93:                                               ; preds = %57
  br label %94

94:                                               ; preds = %354, %93
  %95 = load i32, i32* %18, align 4
  %96 = load i32, i32* %13, align 4
  %97 = load i32, i32* %16, align 4
  %98 = sub nsw i32 %96, %97
  %99 = icmp slt i32 %95, %98
  br i1 %99, label %100, label %238

100:                                              ; preds = %94
  %101 = load i32, i32* %18, align 4
  %102 = load i32, i32* %16, align 4
  %103 = add nsw i32 %101, %102
  %104 = sdiv i32 %103, 2
  %105 = load i32, i32* %16, align 4
  %106 = srem i32 %104, %105
  store i32 %106, i32* %23, align 4
  %107 = load i32*, i32** %21, align 8
  %108 = load i32, i32* %23, align 4
  %109 = load i32, i32* %17, align 4
  %110 = mul nsw i32 %108, %109
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %107, i64 %111
  store i32* %112, i32** %24, align 8
  %113 = load i32*, i32** %21, align 8
  %114 = load i32, i32* %23, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %100
  %117 = load i32, i32* %23, align 4
  %118 = sub nsw i32 %117, 1
  br label %122

119:                                              ; preds = %100
  %120 = load i32, i32* %16, align 4
  %121 = sub nsw i32 %120, 1
  br label %122

122:                                              ; preds = %119, %116
  %123 = phi i32 [ %118, %116 ], [ %121, %119 ]
  %124 = load i32, i32* %17, align 4
  %125 = mul nsw i32 %123, %124
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %113, i64 %126
  store i32* %127, i32** %25, align 8
  %128 = load %struct.vf_priv_s*, %struct.vf_priv_s** %9, align 8
  %129 = getelementptr inbounds %struct.vf_priv_s, %struct.vf_priv_s* %128, i32 0, i32 3
  %130 = load i32 (i32*, i32*, i32*, i32*, i32, i32)*, i32 (i32*, i32*, i32*, i32*, i32, i32)** %129, align 8
  %131 = load i32*, i32** %20, align 8
  %132 = load i32*, i32** %24, align 8
  %133 = load i32*, i32** %25, align 8
  %134 = load i32*, i32** %11, align 8
  %135 = load i32, i32* %18, align 4
  %136 = load i32, i32* %16, align 4
  %137 = add nsw i32 %135, %136
  %138 = load i32, i32* %15, align 4
  %139 = mul nsw i32 %137, %138
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %134, i64 %140
  %142 = load i32, i32* %15, align 4
  %143 = load i32, i32* %12, align 4
  %144 = sdiv i32 %143, 2
  %145 = call i32 %130(i32* %131, i32* %132, i32* %133, i32* %141, i32 %142, i32 %144)
  store i32 0, i32* %27, align 4
  store i32 0, i32* %26, align 4
  br label %146

146:                                              ; preds = %158, %122
  %147 = load i32, i32* %26, align 4
  %148 = load i32, i32* %16, align 4
  %149 = icmp slt i32 %147, %148
  br i1 %149, label %150, label %161

150:                                              ; preds = %146
  %151 = load i32*, i32** %20, align 8
  %152 = load i32, i32* %26, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* %27, align 4
  %157 = add nsw i32 %156, %155
  store i32 %157, i32* %27, align 4
  br label %158

158:                                              ; preds = %150
  %159 = load i32, i32* %26, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %26, align 4
  br label %146

161:                                              ; preds = %146
  br label %162

162:                                              ; preds = %193, %161
  %163 = load i32, i32* %26, align 4
  %164 = load i32, i32* %12, align 4
  %165 = sdiv i32 %164, 2
  %166 = icmp slt i32 %163, %165
  br i1 %166, label %167, label %196

167:                                              ; preds = %162
  %168 = load i32*, i32** %20, align 8
  %169 = load i32, i32* %26, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = load i32*, i32** %20, align 8
  %174 = load i32, i32* %26, align 4
  %175 = load i32, i32* %16, align 4
  %176 = sub nsw i32 %174, %175
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %173, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = sub nsw i32 %172, %179
  %181 = load i32, i32* %27, align 4
  %182 = add nsw i32 %181, %180
  store i32 %182, i32* %27, align 4
  %183 = load i32, i32* %27, align 4
  %184 = load i32, i32* %19, align 4
  %185 = mul nsw i32 %183, %184
  %186 = ashr i32 %185, 16
  %187 = load i32*, i32** %20, align 8
  %188 = load i32, i32* %26, align 4
  %189 = load i32, i32* %16, align 4
  %190 = sub nsw i32 %188, %189
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %187, i64 %191
  store i32 %186, i32* %192, align 4
  br label %193

193:                                              ; preds = %167
  %194 = load i32, i32* %26, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %26, align 4
  br label %162

196:                                              ; preds = %162
  br label %197

197:                                              ; preds = %216, %196
  %198 = load i32, i32* %26, align 4
  %199 = load i32, i32* %12, align 4
  %200 = load i32, i32* %16, align 4
  %201 = add nsw i32 %199, %200
  %202 = add nsw i32 %201, 1
  %203 = sdiv i32 %202, 2
  %204 = icmp slt i32 %198, %203
  br i1 %204, label %205, label %219

205:                                              ; preds = %197
  %206 = load i32, i32* %27, align 4
  %207 = load i32, i32* %19, align 4
  %208 = mul nsw i32 %206, %207
  %209 = ashr i32 %208, 16
  %210 = load i32*, i32** %20, align 8
  %211 = load i32, i32* %26, align 4
  %212 = load i32, i32* %16, align 4
  %213 = sub nsw i32 %211, %212
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %210, i64 %214
  store i32 %209, i32* %215, align 4
  br label %216

216:                                              ; preds = %205
  %217 = load i32, i32* %26, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %26, align 4
  br label %197

219:                                              ; preds = %197
  %220 = load i32, i32* %16, align 4
  %221 = sub nsw i32 0, %220
  %222 = sdiv i32 %221, 2
  store i32 %222, i32* %26, align 4
  br label %223

223:                                              ; preds = %234, %219
  %224 = load i32, i32* %26, align 4
  %225 = icmp slt i32 %224, 0
  br i1 %225, label %226, label %237

226:                                              ; preds = %223
  %227 = load i32*, i32** %20, align 8
  %228 = getelementptr inbounds i32, i32* %227, i64 0
  %229 = load i32, i32* %228, align 4
  %230 = load i32*, i32** %20, align 8
  %231 = load i32, i32* %26, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i32, i32* %230, i64 %232
  store i32 %229, i32* %233, align 4
  br label %234

234:                                              ; preds = %226
  %235 = load i32, i32* %26, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %26, align 4
  br label %223

237:                                              ; preds = %223
  br label %238

238:                                              ; preds = %237, %94
  %239 = load i32, i32* %18, align 4
  %240 = load i32, i32* %16, align 4
  %241 = icmp eq i32 %239, %240
  br i1 %241, label %242, label %282

242:                                              ; preds = %238
  store i32 0, i32* %18, align 4
  br label %243

243:                                              ; preds = %278, %242
  %244 = load i32, i32* %18, align 4
  %245 = load i32, i32* %16, align 4
  %246 = icmp slt i32 %244, %245
  br i1 %246, label %247, label %281

247:                                              ; preds = %243
  %248 = load %struct.vf_priv_s*, %struct.vf_priv_s** %9, align 8
  %249 = getelementptr inbounds %struct.vf_priv_s, %struct.vf_priv_s* %248, i32 0, i32 2
  %250 = load i32 (i32*, i32*, i32*, i32, i32, i32)*, i32 (i32*, i32*, i32*, i32, i32, i32)** %249, align 8
  %251 = load i32*, i32** %10, align 8
  %252 = load i32, i32* %18, align 4
  %253 = load i32, i32* %14, align 4
  %254 = mul nsw i32 %252, %253
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i32, i32* %251, i64 %255
  %257 = load i32*, i32** %11, align 8
  %258 = load i32, i32* %18, align 4
  %259 = load i32, i32* %15, align 4
  %260 = mul nsw i32 %258, %259
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i32, i32* %257, i64 %261
  %263 = load i32*, i32** %20, align 8
  %264 = load i32, i32* %16, align 4
  %265 = sdiv i32 %264, 2
  %266 = sext i32 %265 to i64
  %267 = sub i64 0, %266
  %268 = getelementptr inbounds i32, i32* %263, i64 %267
  %269 = load i32, i32* %12, align 4
  %270 = load i32, i32* %22, align 4
  %271 = load i32*, i32** @dither, align 8
  %272 = load i32, i32* %18, align 4
  %273 = and i32 %272, 7
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i32, i32* %271, i64 %274
  %276 = load i32, i32* %275, align 4
  %277 = call i32 %250(i32* %256, i32* %262, i32* %268, i32 %269, i32 %270, i32 %276)
  br label %278

278:                                              ; preds = %247
  %279 = load i32, i32* %18, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %18, align 4
  br label %243

281:                                              ; preds = %243
  br label %282

282:                                              ; preds = %281, %238
  %283 = load %struct.vf_priv_s*, %struct.vf_priv_s** %9, align 8
  %284 = getelementptr inbounds %struct.vf_priv_s, %struct.vf_priv_s* %283, i32 0, i32 2
  %285 = load i32 (i32*, i32*, i32*, i32, i32, i32)*, i32 (i32*, i32*, i32*, i32, i32, i32)** %284, align 8
  %286 = load i32*, i32** %10, align 8
  %287 = load i32, i32* %18, align 4
  %288 = load i32, i32* %14, align 4
  %289 = mul nsw i32 %287, %288
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i32, i32* %286, i64 %290
  %292 = load i32*, i32** %11, align 8
  %293 = load i32, i32* %18, align 4
  %294 = load i32, i32* %15, align 4
  %295 = mul nsw i32 %293, %294
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i32, i32* %292, i64 %296
  %298 = load i32*, i32** %20, align 8
  %299 = load i32, i32* %16, align 4
  %300 = sdiv i32 %299, 2
  %301 = sext i32 %300 to i64
  %302 = sub i64 0, %301
  %303 = getelementptr inbounds i32, i32* %298, i64 %302
  %304 = load i32, i32* %12, align 4
  %305 = load i32, i32* %22, align 4
  %306 = load i32*, i32** @dither, align 8
  %307 = load i32, i32* %18, align 4
  %308 = and i32 %307, 7
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i32, i32* %306, i64 %309
  %311 = load i32, i32* %310, align 4
  %312 = call i32 %285(i32* %291, i32* %297, i32* %303, i32 %304, i32 %305, i32 %311)
  %313 = load i32, i32* %18, align 4
  %314 = add nsw i32 %313, 1
  store i32 %314, i32* %18, align 4
  %315 = load i32, i32* %13, align 4
  %316 = icmp sge i32 %314, %315
  br i1 %316, label %317, label %318

317:                                              ; preds = %282
  br label %355

318:                                              ; preds = %282
  %319 = load %struct.vf_priv_s*, %struct.vf_priv_s** %9, align 8
  %320 = getelementptr inbounds %struct.vf_priv_s, %struct.vf_priv_s* %319, i32 0, i32 2
  %321 = load i32 (i32*, i32*, i32*, i32, i32, i32)*, i32 (i32*, i32*, i32*, i32, i32, i32)** %320, align 8
  %322 = load i32*, i32** %10, align 8
  %323 = load i32, i32* %18, align 4
  %324 = load i32, i32* %14, align 4
  %325 = mul nsw i32 %323, %324
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds i32, i32* %322, i64 %326
  %328 = load i32*, i32** %11, align 8
  %329 = load i32, i32* %18, align 4
  %330 = load i32, i32* %15, align 4
  %331 = mul nsw i32 %329, %330
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds i32, i32* %328, i64 %332
  %334 = load i32*, i32** %20, align 8
  %335 = load i32, i32* %16, align 4
  %336 = sdiv i32 %335, 2
  %337 = sext i32 %336 to i64
  %338 = sub i64 0, %337
  %339 = getelementptr inbounds i32, i32* %334, i64 %338
  %340 = load i32, i32* %12, align 4
  %341 = load i32, i32* %22, align 4
  %342 = load i32*, i32** @dither, align 8
  %343 = load i32, i32* %18, align 4
  %344 = and i32 %343, 7
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds i32, i32* %342, i64 %345
  %347 = load i32, i32* %346, align 4
  %348 = call i32 %321(i32* %327, i32* %333, i32* %339, i32 %340, i32 %341, i32 %347)
  %349 = load i32, i32* %18, align 4
  %350 = add nsw i32 %349, 1
  store i32 %350, i32* %18, align 4
  %351 = load i32, i32* %13, align 4
  %352 = icmp sge i32 %350, %351
  br i1 %352, label %353, label %354

353:                                              ; preds = %318
  br label %355

354:                                              ; preds = %318
  br label %94

355:                                              ; preds = %353, %317
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
