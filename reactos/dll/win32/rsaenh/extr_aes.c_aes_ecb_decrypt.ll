; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rsaenh/extr_aes.c_aes_ecb_decrypt.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rsaenh/extr_aes.c_aes_ecb_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }

@Td4 = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @aes_ecb_decrypt(i8* %0, i8* %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %6, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %16, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %15, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 @LOAD32H(i32 %24, i8* %25)
  %27 = load i32*, i32** %15, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %7, align 4
  %31 = xor i32 %30, %29
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i8*, i8** %4, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 4
  %35 = call i32 @LOAD32H(i32 %32, i8* %34)
  %36 = load i32*, i32** %15, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %8, align 4
  %40 = xor i32 %39, %38
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i8*, i8** %4, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 8
  %44 = call i32 @LOAD32H(i32 %41, i8* %43)
  %45 = load i32*, i32** %15, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 2
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %9, align 4
  %49 = xor i32 %48, %47
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load i8*, i8** %4, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 12
  %53 = call i32 @LOAD32H(i32 %50, i8* %52)
  %54 = load i32*, i32** %15, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 3
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %10, align 4
  %58 = xor i32 %57, %56
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %16, align 4
  %60 = ashr i32 %59, 1
  store i32 %60, i32* %17, align 4
  br label %61

61:                                               ; preds = %144, %3
  %62 = load i32, i32* %7, align 4
  %63 = call i64 @byte(i32 %62, i32 3)
  %64 = call i32 @Td0(i64 %63)
  %65 = load i32, i32* %10, align 4
  %66 = call i64 @byte(i32 %65, i32 2)
  %67 = call i32 @Td1(i64 %66)
  %68 = xor i32 %64, %67
  %69 = load i32, i32* %9, align 4
  %70 = call i64 @byte(i32 %69, i32 1)
  %71 = call i32 @Td2(i64 %70)
  %72 = xor i32 %68, %71
  %73 = load i32, i32* %8, align 4
  %74 = call i64 @byte(i32 %73, i32 0)
  %75 = call i32 @Td3(i64 %74)
  %76 = xor i32 %72, %75
  %77 = load i32*, i32** %15, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 4
  %79 = load i32, i32* %78, align 4
  %80 = xor i32 %76, %79
  store i32 %80, i32* %11, align 4
  %81 = load i32, i32* %8, align 4
  %82 = call i64 @byte(i32 %81, i32 3)
  %83 = call i32 @Td0(i64 %82)
  %84 = load i32, i32* %7, align 4
  %85 = call i64 @byte(i32 %84, i32 2)
  %86 = call i32 @Td1(i64 %85)
  %87 = xor i32 %83, %86
  %88 = load i32, i32* %10, align 4
  %89 = call i64 @byte(i32 %88, i32 1)
  %90 = call i32 @Td2(i64 %89)
  %91 = xor i32 %87, %90
  %92 = load i32, i32* %9, align 4
  %93 = call i64 @byte(i32 %92, i32 0)
  %94 = call i32 @Td3(i64 %93)
  %95 = xor i32 %91, %94
  %96 = load i32*, i32** %15, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 5
  %98 = load i32, i32* %97, align 4
  %99 = xor i32 %95, %98
  store i32 %99, i32* %12, align 4
  %100 = load i32, i32* %9, align 4
  %101 = call i64 @byte(i32 %100, i32 3)
  %102 = call i32 @Td0(i64 %101)
  %103 = load i32, i32* %8, align 4
  %104 = call i64 @byte(i32 %103, i32 2)
  %105 = call i32 @Td1(i64 %104)
  %106 = xor i32 %102, %105
  %107 = load i32, i32* %7, align 4
  %108 = call i64 @byte(i32 %107, i32 1)
  %109 = call i32 @Td2(i64 %108)
  %110 = xor i32 %106, %109
  %111 = load i32, i32* %10, align 4
  %112 = call i64 @byte(i32 %111, i32 0)
  %113 = call i32 @Td3(i64 %112)
  %114 = xor i32 %110, %113
  %115 = load i32*, i32** %15, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 6
  %117 = load i32, i32* %116, align 4
  %118 = xor i32 %114, %117
  store i32 %118, i32* %13, align 4
  %119 = load i32, i32* %10, align 4
  %120 = call i64 @byte(i32 %119, i32 3)
  %121 = call i32 @Td0(i64 %120)
  %122 = load i32, i32* %9, align 4
  %123 = call i64 @byte(i32 %122, i32 2)
  %124 = call i32 @Td1(i64 %123)
  %125 = xor i32 %121, %124
  %126 = load i32, i32* %8, align 4
  %127 = call i64 @byte(i32 %126, i32 1)
  %128 = call i32 @Td2(i64 %127)
  %129 = xor i32 %125, %128
  %130 = load i32, i32* %7, align 4
  %131 = call i64 @byte(i32 %130, i32 0)
  %132 = call i32 @Td3(i64 %131)
  %133 = xor i32 %129, %132
  %134 = load i32*, i32** %15, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 7
  %136 = load i32, i32* %135, align 4
  %137 = xor i32 %133, %136
  store i32 %137, i32* %14, align 4
  %138 = load i32*, i32** %15, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 8
  store i32* %139, i32** %15, align 8
  %140 = load i32, i32* %17, align 4
  %141 = add nsw i32 %140, -1
  store i32 %141, i32* %17, align 4
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %61
  br label %221

144:                                              ; preds = %61
  %145 = load i32, i32* %11, align 4
  %146 = call i64 @byte(i32 %145, i32 3)
  %147 = call i32 @Td0(i64 %146)
  %148 = load i32, i32* %14, align 4
  %149 = call i64 @byte(i32 %148, i32 2)
  %150 = call i32 @Td1(i64 %149)
  %151 = xor i32 %147, %150
  %152 = load i32, i32* %13, align 4
  %153 = call i64 @byte(i32 %152, i32 1)
  %154 = call i32 @Td2(i64 %153)
  %155 = xor i32 %151, %154
  %156 = load i32, i32* %12, align 4
  %157 = call i64 @byte(i32 %156, i32 0)
  %158 = call i32 @Td3(i64 %157)
  %159 = xor i32 %155, %158
  %160 = load i32*, i32** %15, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 0
  %162 = load i32, i32* %161, align 4
  %163 = xor i32 %159, %162
  store i32 %163, i32* %7, align 4
  %164 = load i32, i32* %12, align 4
  %165 = call i64 @byte(i32 %164, i32 3)
  %166 = call i32 @Td0(i64 %165)
  %167 = load i32, i32* %11, align 4
  %168 = call i64 @byte(i32 %167, i32 2)
  %169 = call i32 @Td1(i64 %168)
  %170 = xor i32 %166, %169
  %171 = load i32, i32* %14, align 4
  %172 = call i64 @byte(i32 %171, i32 1)
  %173 = call i32 @Td2(i64 %172)
  %174 = xor i32 %170, %173
  %175 = load i32, i32* %13, align 4
  %176 = call i64 @byte(i32 %175, i32 0)
  %177 = call i32 @Td3(i64 %176)
  %178 = xor i32 %174, %177
  %179 = load i32*, i32** %15, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 1
  %181 = load i32, i32* %180, align 4
  %182 = xor i32 %178, %181
  store i32 %182, i32* %8, align 4
  %183 = load i32, i32* %13, align 4
  %184 = call i64 @byte(i32 %183, i32 3)
  %185 = call i32 @Td0(i64 %184)
  %186 = load i32, i32* %12, align 4
  %187 = call i64 @byte(i32 %186, i32 2)
  %188 = call i32 @Td1(i64 %187)
  %189 = xor i32 %185, %188
  %190 = load i32, i32* %11, align 4
  %191 = call i64 @byte(i32 %190, i32 1)
  %192 = call i32 @Td2(i64 %191)
  %193 = xor i32 %189, %192
  %194 = load i32, i32* %14, align 4
  %195 = call i64 @byte(i32 %194, i32 0)
  %196 = call i32 @Td3(i64 %195)
  %197 = xor i32 %193, %196
  %198 = load i32*, i32** %15, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 2
  %200 = load i32, i32* %199, align 4
  %201 = xor i32 %197, %200
  store i32 %201, i32* %9, align 4
  %202 = load i32, i32* %14, align 4
  %203 = call i64 @byte(i32 %202, i32 3)
  %204 = call i32 @Td0(i64 %203)
  %205 = load i32, i32* %13, align 4
  %206 = call i64 @byte(i32 %205, i32 2)
  %207 = call i32 @Td1(i64 %206)
  %208 = xor i32 %204, %207
  %209 = load i32, i32* %12, align 4
  %210 = call i64 @byte(i32 %209, i32 1)
  %211 = call i32 @Td2(i64 %210)
  %212 = xor i32 %208, %211
  %213 = load i32, i32* %11, align 4
  %214 = call i64 @byte(i32 %213, i32 0)
  %215 = call i32 @Td3(i64 %214)
  %216 = xor i32 %212, %215
  %217 = load i32*, i32** %15, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 3
  %219 = load i32, i32* %218, align 4
  %220 = xor i32 %216, %219
  store i32 %220, i32* %10, align 4
  br label %61

221:                                              ; preds = %143
  %222 = load i32*, i32** @Td4, align 8
  %223 = load i32, i32* %11, align 4
  %224 = call i64 @byte(i32 %223, i32 3)
  %225 = getelementptr inbounds i32, i32* %222, i64 %224
  %226 = load i32, i32* %225, align 4
  %227 = and i32 %226, -16777216
  %228 = load i32*, i32** @Td4, align 8
  %229 = load i32, i32* %14, align 4
  %230 = call i64 @byte(i32 %229, i32 2)
  %231 = getelementptr inbounds i32, i32* %228, i64 %230
  %232 = load i32, i32* %231, align 4
  %233 = and i32 %232, 16711680
  %234 = xor i32 %227, %233
  %235 = load i32*, i32** @Td4, align 8
  %236 = load i32, i32* %13, align 4
  %237 = call i64 @byte(i32 %236, i32 1)
  %238 = getelementptr inbounds i32, i32* %235, i64 %237
  %239 = load i32, i32* %238, align 4
  %240 = and i32 %239, 65280
  %241 = xor i32 %234, %240
  %242 = load i32*, i32** @Td4, align 8
  %243 = load i32, i32* %12, align 4
  %244 = call i64 @byte(i32 %243, i32 0)
  %245 = getelementptr inbounds i32, i32* %242, i64 %244
  %246 = load i32, i32* %245, align 4
  %247 = and i32 %246, 255
  %248 = xor i32 %241, %247
  %249 = load i32*, i32** %15, align 8
  %250 = getelementptr inbounds i32, i32* %249, i64 0
  %251 = load i32, i32* %250, align 4
  %252 = xor i32 %248, %251
  store i32 %252, i32* %7, align 4
  %253 = load i32, i32* %7, align 4
  %254 = load i8*, i8** %5, align 8
  %255 = call i32 @STORE32H(i32 %253, i8* %254)
  %256 = load i32*, i32** @Td4, align 8
  %257 = load i32, i32* %12, align 4
  %258 = call i64 @byte(i32 %257, i32 3)
  %259 = getelementptr inbounds i32, i32* %256, i64 %258
  %260 = load i32, i32* %259, align 4
  %261 = and i32 %260, -16777216
  %262 = load i32*, i32** @Td4, align 8
  %263 = load i32, i32* %11, align 4
  %264 = call i64 @byte(i32 %263, i32 2)
  %265 = getelementptr inbounds i32, i32* %262, i64 %264
  %266 = load i32, i32* %265, align 4
  %267 = and i32 %266, 16711680
  %268 = xor i32 %261, %267
  %269 = load i32*, i32** @Td4, align 8
  %270 = load i32, i32* %14, align 4
  %271 = call i64 @byte(i32 %270, i32 1)
  %272 = getelementptr inbounds i32, i32* %269, i64 %271
  %273 = load i32, i32* %272, align 4
  %274 = and i32 %273, 65280
  %275 = xor i32 %268, %274
  %276 = load i32*, i32** @Td4, align 8
  %277 = load i32, i32* %13, align 4
  %278 = call i64 @byte(i32 %277, i32 0)
  %279 = getelementptr inbounds i32, i32* %276, i64 %278
  %280 = load i32, i32* %279, align 4
  %281 = and i32 %280, 255
  %282 = xor i32 %275, %281
  %283 = load i32*, i32** %15, align 8
  %284 = getelementptr inbounds i32, i32* %283, i64 1
  %285 = load i32, i32* %284, align 4
  %286 = xor i32 %282, %285
  store i32 %286, i32* %8, align 4
  %287 = load i32, i32* %8, align 4
  %288 = load i8*, i8** %5, align 8
  %289 = getelementptr inbounds i8, i8* %288, i64 4
  %290 = call i32 @STORE32H(i32 %287, i8* %289)
  %291 = load i32*, i32** @Td4, align 8
  %292 = load i32, i32* %13, align 4
  %293 = call i64 @byte(i32 %292, i32 3)
  %294 = getelementptr inbounds i32, i32* %291, i64 %293
  %295 = load i32, i32* %294, align 4
  %296 = and i32 %295, -16777216
  %297 = load i32*, i32** @Td4, align 8
  %298 = load i32, i32* %12, align 4
  %299 = call i64 @byte(i32 %298, i32 2)
  %300 = getelementptr inbounds i32, i32* %297, i64 %299
  %301 = load i32, i32* %300, align 4
  %302 = and i32 %301, 16711680
  %303 = xor i32 %296, %302
  %304 = load i32*, i32** @Td4, align 8
  %305 = load i32, i32* %11, align 4
  %306 = call i64 @byte(i32 %305, i32 1)
  %307 = getelementptr inbounds i32, i32* %304, i64 %306
  %308 = load i32, i32* %307, align 4
  %309 = and i32 %308, 65280
  %310 = xor i32 %303, %309
  %311 = load i32*, i32** @Td4, align 8
  %312 = load i32, i32* %14, align 4
  %313 = call i64 @byte(i32 %312, i32 0)
  %314 = getelementptr inbounds i32, i32* %311, i64 %313
  %315 = load i32, i32* %314, align 4
  %316 = and i32 %315, 255
  %317 = xor i32 %310, %316
  %318 = load i32*, i32** %15, align 8
  %319 = getelementptr inbounds i32, i32* %318, i64 2
  %320 = load i32, i32* %319, align 4
  %321 = xor i32 %317, %320
  store i32 %321, i32* %9, align 4
  %322 = load i32, i32* %9, align 4
  %323 = load i8*, i8** %5, align 8
  %324 = getelementptr inbounds i8, i8* %323, i64 8
  %325 = call i32 @STORE32H(i32 %322, i8* %324)
  %326 = load i32*, i32** @Td4, align 8
  %327 = load i32, i32* %14, align 4
  %328 = call i64 @byte(i32 %327, i32 3)
  %329 = getelementptr inbounds i32, i32* %326, i64 %328
  %330 = load i32, i32* %329, align 4
  %331 = and i32 %330, -16777216
  %332 = load i32*, i32** @Td4, align 8
  %333 = load i32, i32* %13, align 4
  %334 = call i64 @byte(i32 %333, i32 2)
  %335 = getelementptr inbounds i32, i32* %332, i64 %334
  %336 = load i32, i32* %335, align 4
  %337 = and i32 %336, 16711680
  %338 = xor i32 %331, %337
  %339 = load i32*, i32** @Td4, align 8
  %340 = load i32, i32* %12, align 4
  %341 = call i64 @byte(i32 %340, i32 1)
  %342 = getelementptr inbounds i32, i32* %339, i64 %341
  %343 = load i32, i32* %342, align 4
  %344 = and i32 %343, 65280
  %345 = xor i32 %338, %344
  %346 = load i32*, i32** @Td4, align 8
  %347 = load i32, i32* %11, align 4
  %348 = call i64 @byte(i32 %347, i32 0)
  %349 = getelementptr inbounds i32, i32* %346, i64 %348
  %350 = load i32, i32* %349, align 4
  %351 = and i32 %350, 255
  %352 = xor i32 %345, %351
  %353 = load i32*, i32** %15, align 8
  %354 = getelementptr inbounds i32, i32* %353, i64 3
  %355 = load i32, i32* %354, align 4
  %356 = xor i32 %352, %355
  store i32 %356, i32* %10, align 4
  %357 = load i32, i32* %10, align 4
  %358 = load i8*, i8** %5, align 8
  %359 = getelementptr inbounds i8, i8* %358, i64 12
  %360 = call i32 @STORE32H(i32 %357, i8* %359)
  ret void
}

declare dso_local i32 @LOAD32H(i32, i8*) #1

declare dso_local i32 @Td0(i64) #1

declare dso_local i64 @byte(i32, i32) #1

declare dso_local i32 @Td1(i64) #1

declare dso_local i32 @Td2(i64) #1

declare dso_local i32 @Td3(i64) #1

declare dso_local i32 @STORE32H(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
