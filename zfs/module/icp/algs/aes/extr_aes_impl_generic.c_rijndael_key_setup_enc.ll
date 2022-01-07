; ModuleID = '/home/carl/AnghaBench/zfs/module/icp/algs/aes/extr_aes_impl_generic.c_rijndael_key_setup_enc.c'
source_filename = "/home/carl/AnghaBench/zfs/module/icp/algs/aes/extr_aes_impl_generic.c_rijndael_key_setup_enc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Te4 = common dso_local global i32* null, align 8
@rcon = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @rijndael_key_setup_enc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rijndael_key_setup_enc(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load i32*, i32** %6, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32*, i32** %5, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  store i32 %12, i32* %14, align 4
  %15 = load i32*, i32** %6, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32*, i32** %5, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  store i32 %17, i32* %19, align 4
  %20 = load i32*, i32** %6, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 2
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 2
  store i32 %22, i32* %24, align 4
  %25 = load i32*, i32** %6, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 3
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %5, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 3
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp eq i32 %30, 128
  br i1 %31, label %32, label %116

32:                                               ; preds = %3
  br label %33

33:                                               ; preds = %113, %32
  %34 = load i32*, i32** %5, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 3
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %9, align 4
  %37 = load i32*, i32** %5, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** @Te4, align 8
  %41 = load i32, i32* %9, align 4
  %42 = ashr i32 %41, 16
  %43 = and i32 %42, 255
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %40, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, -16777216
  %48 = xor i32 %39, %47
  %49 = load i32*, i32** @Te4, align 8
  %50 = load i32, i32* %9, align 4
  %51 = ashr i32 %50, 8
  %52 = and i32 %51, 255
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %49, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, 16711680
  %57 = xor i32 %48, %56
  %58 = load i32*, i32** @Te4, align 8
  %59 = load i32, i32* %9, align 4
  %60 = and i32 %59, 255
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %58, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, 65280
  %65 = xor i32 %57, %64
  %66 = load i32*, i32** @Te4, align 8
  %67 = load i32, i32* %9, align 4
  %68 = ashr i32 %67, 24
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %66, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, 255
  %73 = xor i32 %65, %72
  %74 = load i32*, i32** @rcon, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = xor i32 %73, %78
  %80 = load i32*, i32** %5, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 4
  store i32 %79, i32* %81, align 4
  %82 = load i32*, i32** %5, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32*, i32** %5, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 4
  %87 = load i32, i32* %86, align 4
  %88 = xor i32 %84, %87
  %89 = load i32*, i32** %5, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 5
  store i32 %88, i32* %90, align 4
  %91 = load i32*, i32** %5, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 2
  %93 = load i32, i32* %92, align 4
  %94 = load i32*, i32** %5, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 5
  %96 = load i32, i32* %95, align 4
  %97 = xor i32 %93, %96
  %98 = load i32*, i32** %5, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 6
  store i32 %97, i32* %99, align 4
  %100 = load i32*, i32** %5, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 3
  %102 = load i32, i32* %101, align 4
  %103 = load i32*, i32** %5, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 6
  %105 = load i32, i32* %104, align 4
  %106 = xor i32 %102, %105
  %107 = load i32*, i32** %5, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 7
  store i32 %106, i32* %108, align 4
  %109 = load i32, i32* %8, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %8, align 4
  %111 = icmp eq i32 %110, 10
  br i1 %111, label %112, label %113

112:                                              ; preds = %33
  store i32 10, i32* %4, align 4
  br label %398

113:                                              ; preds = %33
  %114 = load i32*, i32** %5, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 4
  store i32* %115, i32** %5, align 8
  br label %33

116:                                              ; preds = %3
  %117 = load i32*, i32** %6, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 4
  %119 = load i32, i32* %118, align 4
  %120 = load i32*, i32** %5, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 4
  store i32 %119, i32* %121, align 4
  %122 = load i32*, i32** %6, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 5
  %124 = load i32, i32* %123, align 4
  %125 = load i32*, i32** %5, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 5
  store i32 %124, i32* %126, align 4
  %127 = load i32, i32* %7, align 4
  %128 = icmp eq i32 %127, 192
  br i1 %128, label %129, label %231

129:                                              ; preds = %116
  br label %130

130:                                              ; preds = %210, %129
  %131 = load i32*, i32** %5, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 5
  %133 = load i32, i32* %132, align 4
  store i32 %133, i32* %9, align 4
  %134 = load i32*, i32** %5, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32*, i32** @Te4, align 8
  %138 = load i32, i32* %9, align 4
  %139 = ashr i32 %138, 16
  %140 = and i32 %139, 255
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %137, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = and i32 %143, -16777216
  %145 = xor i32 %136, %144
  %146 = load i32*, i32** @Te4, align 8
  %147 = load i32, i32* %9, align 4
  %148 = ashr i32 %147, 8
  %149 = and i32 %148, 255
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %146, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = and i32 %152, 16711680
  %154 = xor i32 %145, %153
  %155 = load i32*, i32** @Te4, align 8
  %156 = load i32, i32* %9, align 4
  %157 = and i32 %156, 255
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %155, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = and i32 %160, 65280
  %162 = xor i32 %154, %161
  %163 = load i32*, i32** @Te4, align 8
  %164 = load i32, i32* %9, align 4
  %165 = ashr i32 %164, 24
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %163, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = and i32 %168, 255
  %170 = xor i32 %162, %169
  %171 = load i32*, i32** @rcon, align 8
  %172 = load i32, i32* %8, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = xor i32 %170, %175
  %177 = load i32*, i32** %5, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 6
  store i32 %176, i32* %178, align 4
  %179 = load i32*, i32** %5, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 1
  %181 = load i32, i32* %180, align 4
  %182 = load i32*, i32** %5, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 6
  %184 = load i32, i32* %183, align 4
  %185 = xor i32 %181, %184
  %186 = load i32*, i32** %5, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 7
  store i32 %185, i32* %187, align 4
  %188 = load i32*, i32** %5, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 2
  %190 = load i32, i32* %189, align 4
  %191 = load i32*, i32** %5, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 7
  %193 = load i32, i32* %192, align 4
  %194 = xor i32 %190, %193
  %195 = load i32*, i32** %5, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 8
  store i32 %194, i32* %196, align 4
  %197 = load i32*, i32** %5, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 3
  %199 = load i32, i32* %198, align 4
  %200 = load i32*, i32** %5, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 8
  %202 = load i32, i32* %201, align 4
  %203 = xor i32 %199, %202
  %204 = load i32*, i32** %5, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 9
  store i32 %203, i32* %205, align 4
  %206 = load i32, i32* %8, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %8, align 4
  %208 = icmp eq i32 %207, 8
  br i1 %208, label %209, label %210

209:                                              ; preds = %130
  store i32 12, i32* %4, align 4
  br label %398

210:                                              ; preds = %130
  %211 = load i32*, i32** %5, align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 4
  %213 = load i32, i32* %212, align 4
  %214 = load i32*, i32** %5, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 9
  %216 = load i32, i32* %215, align 4
  %217 = xor i32 %213, %216
  %218 = load i32*, i32** %5, align 8
  %219 = getelementptr inbounds i32, i32* %218, i64 10
  store i32 %217, i32* %219, align 4
  %220 = load i32*, i32** %5, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 5
  %222 = load i32, i32* %221, align 4
  %223 = load i32*, i32** %5, align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 10
  %225 = load i32, i32* %224, align 4
  %226 = xor i32 %222, %225
  %227 = load i32*, i32** %5, align 8
  %228 = getelementptr inbounds i32, i32* %227, i64 11
  store i32 %226, i32* %228, align 4
  %229 = load i32*, i32** %5, align 8
  %230 = getelementptr inbounds i32, i32* %229, i64 6
  store i32* %230, i32** %5, align 8
  br label %130

231:                                              ; preds = %116
  %232 = load i32*, i32** %6, align 8
  %233 = getelementptr inbounds i32, i32* %232, i64 6
  %234 = load i32, i32* %233, align 4
  %235 = load i32*, i32** %5, align 8
  %236 = getelementptr inbounds i32, i32* %235, i64 6
  store i32 %234, i32* %236, align 4
  %237 = load i32*, i32** %6, align 8
  %238 = getelementptr inbounds i32, i32* %237, i64 7
  %239 = load i32, i32* %238, align 4
  %240 = load i32*, i32** %5, align 8
  %241 = getelementptr inbounds i32, i32* %240, i64 7
  store i32 %239, i32* %241, align 4
  %242 = load i32, i32* %7, align 4
  %243 = icmp eq i32 %242, 256
  br i1 %243, label %244, label %397

244:                                              ; preds = %231
  br label %245

245:                                              ; preds = %325, %244
  %246 = load i32*, i32** %5, align 8
  %247 = getelementptr inbounds i32, i32* %246, i64 7
  %248 = load i32, i32* %247, align 4
  store i32 %248, i32* %9, align 4
  %249 = load i32*, i32** %5, align 8
  %250 = getelementptr inbounds i32, i32* %249, i64 0
  %251 = load i32, i32* %250, align 4
  %252 = load i32*, i32** @Te4, align 8
  %253 = load i32, i32* %9, align 4
  %254 = ashr i32 %253, 16
  %255 = and i32 %254, 255
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i32, i32* %252, i64 %256
  %258 = load i32, i32* %257, align 4
  %259 = and i32 %258, -16777216
  %260 = xor i32 %251, %259
  %261 = load i32*, i32** @Te4, align 8
  %262 = load i32, i32* %9, align 4
  %263 = ashr i32 %262, 8
  %264 = and i32 %263, 255
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i32, i32* %261, i64 %265
  %267 = load i32, i32* %266, align 4
  %268 = and i32 %267, 16711680
  %269 = xor i32 %260, %268
  %270 = load i32*, i32** @Te4, align 8
  %271 = load i32, i32* %9, align 4
  %272 = and i32 %271, 255
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i32, i32* %270, i64 %273
  %275 = load i32, i32* %274, align 4
  %276 = and i32 %275, 65280
  %277 = xor i32 %269, %276
  %278 = load i32*, i32** @Te4, align 8
  %279 = load i32, i32* %9, align 4
  %280 = ashr i32 %279, 24
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i32, i32* %278, i64 %281
  %283 = load i32, i32* %282, align 4
  %284 = and i32 %283, 255
  %285 = xor i32 %277, %284
  %286 = load i32*, i32** @rcon, align 8
  %287 = load i32, i32* %8, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i32, i32* %286, i64 %288
  %290 = load i32, i32* %289, align 4
  %291 = xor i32 %285, %290
  %292 = load i32*, i32** %5, align 8
  %293 = getelementptr inbounds i32, i32* %292, i64 8
  store i32 %291, i32* %293, align 4
  %294 = load i32*, i32** %5, align 8
  %295 = getelementptr inbounds i32, i32* %294, i64 1
  %296 = load i32, i32* %295, align 4
  %297 = load i32*, i32** %5, align 8
  %298 = getelementptr inbounds i32, i32* %297, i64 8
  %299 = load i32, i32* %298, align 4
  %300 = xor i32 %296, %299
  %301 = load i32*, i32** %5, align 8
  %302 = getelementptr inbounds i32, i32* %301, i64 9
  store i32 %300, i32* %302, align 4
  %303 = load i32*, i32** %5, align 8
  %304 = getelementptr inbounds i32, i32* %303, i64 2
  %305 = load i32, i32* %304, align 4
  %306 = load i32*, i32** %5, align 8
  %307 = getelementptr inbounds i32, i32* %306, i64 9
  %308 = load i32, i32* %307, align 4
  %309 = xor i32 %305, %308
  %310 = load i32*, i32** %5, align 8
  %311 = getelementptr inbounds i32, i32* %310, i64 10
  store i32 %309, i32* %311, align 4
  %312 = load i32*, i32** %5, align 8
  %313 = getelementptr inbounds i32, i32* %312, i64 3
  %314 = load i32, i32* %313, align 4
  %315 = load i32*, i32** %5, align 8
  %316 = getelementptr inbounds i32, i32* %315, i64 10
  %317 = load i32, i32* %316, align 4
  %318 = xor i32 %314, %317
  %319 = load i32*, i32** %5, align 8
  %320 = getelementptr inbounds i32, i32* %319, i64 11
  store i32 %318, i32* %320, align 4
  %321 = load i32, i32* %8, align 4
  %322 = add nsw i32 %321, 1
  store i32 %322, i32* %8, align 4
  %323 = icmp eq i32 %322, 7
  br i1 %323, label %324, label %325

324:                                              ; preds = %245
  store i32 14, i32* %4, align 4
  br label %398

325:                                              ; preds = %245
  %326 = load i32*, i32** %5, align 8
  %327 = getelementptr inbounds i32, i32* %326, i64 11
  %328 = load i32, i32* %327, align 4
  store i32 %328, i32* %9, align 4
  %329 = load i32*, i32** %5, align 8
  %330 = getelementptr inbounds i32, i32* %329, i64 4
  %331 = load i32, i32* %330, align 4
  %332 = load i32*, i32** @Te4, align 8
  %333 = load i32, i32* %9, align 4
  %334 = ashr i32 %333, 24
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds i32, i32* %332, i64 %335
  %337 = load i32, i32* %336, align 4
  %338 = and i32 %337, -16777216
  %339 = xor i32 %331, %338
  %340 = load i32*, i32** @Te4, align 8
  %341 = load i32, i32* %9, align 4
  %342 = ashr i32 %341, 16
  %343 = and i32 %342, 255
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i32, i32* %340, i64 %344
  %346 = load i32, i32* %345, align 4
  %347 = and i32 %346, 16711680
  %348 = xor i32 %339, %347
  %349 = load i32*, i32** @Te4, align 8
  %350 = load i32, i32* %9, align 4
  %351 = ashr i32 %350, 8
  %352 = and i32 %351, 255
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds i32, i32* %349, i64 %353
  %355 = load i32, i32* %354, align 4
  %356 = and i32 %355, 65280
  %357 = xor i32 %348, %356
  %358 = load i32*, i32** @Te4, align 8
  %359 = load i32, i32* %9, align 4
  %360 = and i32 %359, 255
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds i32, i32* %358, i64 %361
  %363 = load i32, i32* %362, align 4
  %364 = and i32 %363, 255
  %365 = xor i32 %357, %364
  %366 = load i32*, i32** %5, align 8
  %367 = getelementptr inbounds i32, i32* %366, i64 12
  store i32 %365, i32* %367, align 4
  %368 = load i32*, i32** %5, align 8
  %369 = getelementptr inbounds i32, i32* %368, i64 5
  %370 = load i32, i32* %369, align 4
  %371 = load i32*, i32** %5, align 8
  %372 = getelementptr inbounds i32, i32* %371, i64 12
  %373 = load i32, i32* %372, align 4
  %374 = xor i32 %370, %373
  %375 = load i32*, i32** %5, align 8
  %376 = getelementptr inbounds i32, i32* %375, i64 13
  store i32 %374, i32* %376, align 4
  %377 = load i32*, i32** %5, align 8
  %378 = getelementptr inbounds i32, i32* %377, i64 6
  %379 = load i32, i32* %378, align 4
  %380 = load i32*, i32** %5, align 8
  %381 = getelementptr inbounds i32, i32* %380, i64 13
  %382 = load i32, i32* %381, align 4
  %383 = xor i32 %379, %382
  %384 = load i32*, i32** %5, align 8
  %385 = getelementptr inbounds i32, i32* %384, i64 14
  store i32 %383, i32* %385, align 4
  %386 = load i32*, i32** %5, align 8
  %387 = getelementptr inbounds i32, i32* %386, i64 7
  %388 = load i32, i32* %387, align 4
  %389 = load i32*, i32** %5, align 8
  %390 = getelementptr inbounds i32, i32* %389, i64 14
  %391 = load i32, i32* %390, align 4
  %392 = xor i32 %388, %391
  %393 = load i32*, i32** %5, align 8
  %394 = getelementptr inbounds i32, i32* %393, i64 15
  store i32 %392, i32* %394, align 4
  %395 = load i32*, i32** %5, align 8
  %396 = getelementptr inbounds i32, i32* %395, i64 8
  store i32* %396, i32** %5, align 8
  br label %245

397:                                              ; preds = %231
  store i32 0, i32* %4, align 4
  br label %398

398:                                              ; preds = %397, %324, %209, %112
  %399 = load i32, i32* %4, align 4
  ret i32 %399
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
