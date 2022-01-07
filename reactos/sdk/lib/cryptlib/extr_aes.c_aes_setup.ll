; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/cryptlib/extr_aes.c_aes_setup.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/cryptlib/extr_aes.c_aes_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i32* }

@CRYPT_INVALID_KEYSIZE = common dso_local global i32 0, align 4
@CRYPT_INVALID_ROUNDS = common dso_local global i32 0, align 4
@rcon = common dso_local global i32* null, align 8
@Tks0 = common dso_local global i32* null, align 8
@Tks1 = common dso_local global i32* null, align 8
@Tks2 = common dso_local global i32* null, align 8
@Tks3 = common dso_local global i32* null, align 8
@CRYPT_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aes_setup(i8* %0, i32 %1, i32 %2, %struct.TYPE_3__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %9, align 8
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 16
  br i1 %16, label %17, label %25

17:                                               ; preds = %4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 24
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 32
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load i32, i32* @CRYPT_INVALID_KEYSIZE, align 4
  store i32 %24, i32* %5, align 4
  br label %521

25:                                               ; preds = %20, %17, %4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %25
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %7, align 4
  %31 = sdiv i32 %30, 8
  %32 = sub nsw i32 %31, 2
  %33 = mul nsw i32 %32, 2
  %34 = add nsw i32 10, %33
  %35 = icmp ne i32 %29, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = load i32, i32* @CRYPT_INVALID_ROUNDS, align 4
  store i32 %37, i32* %5, align 4
  br label %521

38:                                               ; preds = %28, %25
  %39 = load i32, i32* %7, align 4
  %40 = sdiv i32 %39, 8
  %41 = sub nsw i32 %40, 2
  %42 = mul nsw i32 %41, 2
  %43 = add nsw i32 10, %42
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  store i32 0, i32* %10, align 4
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  store i32* %48, i32** %13, align 8
  %49 = load i32*, i32** %13, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = load i8*, i8** %6, align 8
  %53 = call i32 @LOAD32H(i32 %51, i8* %52)
  %54 = load i32*, i32** %13, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  %56 = load i32, i32* %55, align 4
  %57 = load i8*, i8** %6, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 4
  %59 = call i32 @LOAD32H(i32 %56, i8* %58)
  %60 = load i32*, i32** %13, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 2
  %62 = load i32, i32* %61, align 4
  %63 = load i8*, i8** %6, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 8
  %65 = call i32 @LOAD32H(i32 %62, i8* %64)
  %66 = load i32*, i32** %13, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 3
  %68 = load i32, i32* %67, align 4
  %69 = load i8*, i8** %6, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 12
  %71 = call i32 @LOAD32H(i32 %68, i8* %70)
  %72 = load i32, i32* %7, align 4
  %73 = icmp eq i32 %72, 16
  br i1 %73, label %74, label %128

74:                                               ; preds = %38
  store i32 44, i32* %11, align 4
  br label %75

75:                                               ; preds = %124, %74
  %76 = load i32*, i32** %13, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 3
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %12, align 4
  %79 = load i32*, i32** %13, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %12, align 4
  %83 = call i32 @setup_mix(i32 %82)
  %84 = xor i32 %81, %83
  %85 = load i32*, i32** @rcon, align 8
  %86 = load i32, i32* %10, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = xor i32 %84, %89
  %91 = load i32*, i32** %13, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 4
  store i32 %90, i32* %92, align 4
  %93 = load i32*, i32** %13, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32*, i32** %13, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 4
  %98 = load i32, i32* %97, align 4
  %99 = xor i32 %95, %98
  %100 = load i32*, i32** %13, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 5
  store i32 %99, i32* %101, align 4
  %102 = load i32*, i32** %13, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 2
  %104 = load i32, i32* %103, align 4
  %105 = load i32*, i32** %13, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 5
  %107 = load i32, i32* %106, align 4
  %108 = xor i32 %104, %107
  %109 = load i32*, i32** %13, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 6
  store i32 %108, i32* %110, align 4
  %111 = load i32*, i32** %13, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 3
  %113 = load i32, i32* %112, align 4
  %114 = load i32*, i32** %13, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 6
  %116 = load i32, i32* %115, align 4
  %117 = xor i32 %113, %116
  %118 = load i32*, i32** %13, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 7
  store i32 %117, i32* %119, align 4
  %120 = load i32, i32* %10, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %10, align 4
  %122 = icmp eq i32 %121, 10
  br i1 %122, label %123, label %124

123:                                              ; preds = %75
  br label %127

124:                                              ; preds = %75
  %125 = load i32*, i32** %13, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 4
  store i32* %126, i32** %13, align 8
  br label %75

127:                                              ; preds = %123
  br label %338

128:                                              ; preds = %38
  %129 = load i32, i32* %7, align 4
  %130 = icmp eq i32 %129, 24
  br i1 %130, label %131, label %215

131:                                              ; preds = %128
  store i32 52, i32* %11, align 4
  %132 = load i32*, i32** %13, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 4
  %134 = load i32, i32* %133, align 4
  %135 = load i8*, i8** %6, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 16
  %137 = call i32 @LOAD32H(i32 %134, i8* %136)
  %138 = load i32*, i32** %13, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 5
  %140 = load i32, i32* %139, align 4
  %141 = load i8*, i8** %6, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 20
  %143 = call i32 @LOAD32H(i32 %140, i8* %142)
  br label %144

144:                                              ; preds = %193, %131
  %145 = load i32*, i32** %13, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 5
  %147 = load i32, i32* %146, align 4
  store i32 %147, i32* %12, align 4
  %148 = load i32*, i32** %13, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 0
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* %12, align 4
  %152 = call i32 @setup_mix(i32 %151)
  %153 = xor i32 %150, %152
  %154 = load i32*, i32** @rcon, align 8
  %155 = load i32, i32* %10, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = xor i32 %153, %158
  %160 = load i32*, i32** %13, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 6
  store i32 %159, i32* %161, align 4
  %162 = load i32*, i32** %13, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 1
  %164 = load i32, i32* %163, align 4
  %165 = load i32*, i32** %13, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 6
  %167 = load i32, i32* %166, align 4
  %168 = xor i32 %164, %167
  %169 = load i32*, i32** %13, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 7
  store i32 %168, i32* %170, align 4
  %171 = load i32*, i32** %13, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 2
  %173 = load i32, i32* %172, align 4
  %174 = load i32*, i32** %13, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 7
  %176 = load i32, i32* %175, align 4
  %177 = xor i32 %173, %176
  %178 = load i32*, i32** %13, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 8
  store i32 %177, i32* %179, align 4
  %180 = load i32*, i32** %13, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 3
  %182 = load i32, i32* %181, align 4
  %183 = load i32*, i32** %13, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 8
  %185 = load i32, i32* %184, align 4
  %186 = xor i32 %182, %185
  %187 = load i32*, i32** %13, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 9
  store i32 %186, i32* %188, align 4
  %189 = load i32, i32* %10, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %10, align 4
  %191 = icmp eq i32 %190, 8
  br i1 %191, label %192, label %193

192:                                              ; preds = %144
  br label %214

193:                                              ; preds = %144
  %194 = load i32*, i32** %13, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 4
  %196 = load i32, i32* %195, align 4
  %197 = load i32*, i32** %13, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 9
  %199 = load i32, i32* %198, align 4
  %200 = xor i32 %196, %199
  %201 = load i32*, i32** %13, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 10
  store i32 %200, i32* %202, align 4
  %203 = load i32*, i32** %13, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 5
  %205 = load i32, i32* %204, align 4
  %206 = load i32*, i32** %13, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 10
  %208 = load i32, i32* %207, align 4
  %209 = xor i32 %205, %208
  %210 = load i32*, i32** %13, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 11
  store i32 %209, i32* %211, align 4
  %212 = load i32*, i32** %13, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 6
  store i32* %213, i32** %13, align 8
  br label %144

214:                                              ; preds = %192
  br label %337

215:                                              ; preds = %128
  %216 = load i32, i32* %7, align 4
  %217 = icmp eq i32 %216, 32
  br i1 %217, label %218, label %335

218:                                              ; preds = %215
  store i32 60, i32* %11, align 4
  %219 = load i32*, i32** %13, align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 4
  %221 = load i32, i32* %220, align 4
  %222 = load i8*, i8** %6, align 8
  %223 = getelementptr inbounds i8, i8* %222, i64 16
  %224 = call i32 @LOAD32H(i32 %221, i8* %223)
  %225 = load i32*, i32** %13, align 8
  %226 = getelementptr inbounds i32, i32* %225, i64 5
  %227 = load i32, i32* %226, align 4
  %228 = load i8*, i8** %6, align 8
  %229 = getelementptr inbounds i8, i8* %228, i64 20
  %230 = call i32 @LOAD32H(i32 %227, i8* %229)
  %231 = load i32*, i32** %13, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 6
  %233 = load i32, i32* %232, align 4
  %234 = load i8*, i8** %6, align 8
  %235 = getelementptr inbounds i8, i8* %234, i64 24
  %236 = call i32 @LOAD32H(i32 %233, i8* %235)
  %237 = load i32*, i32** %13, align 8
  %238 = getelementptr inbounds i32, i32* %237, i64 7
  %239 = load i32, i32* %238, align 4
  %240 = load i8*, i8** %6, align 8
  %241 = getelementptr inbounds i8, i8* %240, i64 28
  %242 = call i32 @LOAD32H(i32 %239, i8* %241)
  br label %243

243:                                              ; preds = %292, %218
  %244 = load i32*, i32** %13, align 8
  %245 = getelementptr inbounds i32, i32* %244, i64 7
  %246 = load i32, i32* %245, align 4
  store i32 %246, i32* %12, align 4
  %247 = load i32*, i32** %13, align 8
  %248 = getelementptr inbounds i32, i32* %247, i64 0
  %249 = load i32, i32* %248, align 4
  %250 = load i32, i32* %12, align 4
  %251 = call i32 @setup_mix(i32 %250)
  %252 = xor i32 %249, %251
  %253 = load i32*, i32** @rcon, align 8
  %254 = load i32, i32* %10, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i32, i32* %253, i64 %255
  %257 = load i32, i32* %256, align 4
  %258 = xor i32 %252, %257
  %259 = load i32*, i32** %13, align 8
  %260 = getelementptr inbounds i32, i32* %259, i64 8
  store i32 %258, i32* %260, align 4
  %261 = load i32*, i32** %13, align 8
  %262 = getelementptr inbounds i32, i32* %261, i64 1
  %263 = load i32, i32* %262, align 4
  %264 = load i32*, i32** %13, align 8
  %265 = getelementptr inbounds i32, i32* %264, i64 8
  %266 = load i32, i32* %265, align 4
  %267 = xor i32 %263, %266
  %268 = load i32*, i32** %13, align 8
  %269 = getelementptr inbounds i32, i32* %268, i64 9
  store i32 %267, i32* %269, align 4
  %270 = load i32*, i32** %13, align 8
  %271 = getelementptr inbounds i32, i32* %270, i64 2
  %272 = load i32, i32* %271, align 4
  %273 = load i32*, i32** %13, align 8
  %274 = getelementptr inbounds i32, i32* %273, i64 9
  %275 = load i32, i32* %274, align 4
  %276 = xor i32 %272, %275
  %277 = load i32*, i32** %13, align 8
  %278 = getelementptr inbounds i32, i32* %277, i64 10
  store i32 %276, i32* %278, align 4
  %279 = load i32*, i32** %13, align 8
  %280 = getelementptr inbounds i32, i32* %279, i64 3
  %281 = load i32, i32* %280, align 4
  %282 = load i32*, i32** %13, align 8
  %283 = getelementptr inbounds i32, i32* %282, i64 10
  %284 = load i32, i32* %283, align 4
  %285 = xor i32 %281, %284
  %286 = load i32*, i32** %13, align 8
  %287 = getelementptr inbounds i32, i32* %286, i64 11
  store i32 %285, i32* %287, align 4
  %288 = load i32, i32* %10, align 4
  %289 = add nsw i32 %288, 1
  store i32 %289, i32* %10, align 4
  %290 = icmp eq i32 %289, 7
  br i1 %290, label %291, label %292

291:                                              ; preds = %243
  br label %334

292:                                              ; preds = %243
  %293 = load i32*, i32** %13, align 8
  %294 = getelementptr inbounds i32, i32* %293, i64 11
  %295 = load i32, i32* %294, align 4
  store i32 %295, i32* %12, align 4
  %296 = load i32*, i32** %13, align 8
  %297 = getelementptr inbounds i32, i32* %296, i64 4
  %298 = load i32, i32* %297, align 4
  %299 = load i32, i32* %12, align 4
  %300 = call i32 @ROR(i32 %299, i32 8)
  %301 = call i32 @setup_mix(i32 %300)
  %302 = xor i32 %298, %301
  %303 = load i32*, i32** %13, align 8
  %304 = getelementptr inbounds i32, i32* %303, i64 12
  store i32 %302, i32* %304, align 4
  %305 = load i32*, i32** %13, align 8
  %306 = getelementptr inbounds i32, i32* %305, i64 5
  %307 = load i32, i32* %306, align 4
  %308 = load i32*, i32** %13, align 8
  %309 = getelementptr inbounds i32, i32* %308, i64 12
  %310 = load i32, i32* %309, align 4
  %311 = xor i32 %307, %310
  %312 = load i32*, i32** %13, align 8
  %313 = getelementptr inbounds i32, i32* %312, i64 13
  store i32 %311, i32* %313, align 4
  %314 = load i32*, i32** %13, align 8
  %315 = getelementptr inbounds i32, i32* %314, i64 6
  %316 = load i32, i32* %315, align 4
  %317 = load i32*, i32** %13, align 8
  %318 = getelementptr inbounds i32, i32* %317, i64 13
  %319 = load i32, i32* %318, align 4
  %320 = xor i32 %316, %319
  %321 = load i32*, i32** %13, align 8
  %322 = getelementptr inbounds i32, i32* %321, i64 14
  store i32 %320, i32* %322, align 4
  %323 = load i32*, i32** %13, align 8
  %324 = getelementptr inbounds i32, i32* %323, i64 7
  %325 = load i32, i32* %324, align 4
  %326 = load i32*, i32** %13, align 8
  %327 = getelementptr inbounds i32, i32* %326, i64 14
  %328 = load i32, i32* %327, align 4
  %329 = xor i32 %325, %328
  %330 = load i32*, i32** %13, align 8
  %331 = getelementptr inbounds i32, i32* %330, i64 15
  store i32 %329, i32* %331, align 4
  %332 = load i32*, i32** %13, align 8
  %333 = getelementptr inbounds i32, i32* %332, i64 8
  store i32* %333, i32** %13, align 8
  br label %243

334:                                              ; preds = %291
  br label %336

335:                                              ; preds = %215
  store i32 4, i32* %11, align 4
  br label %336

336:                                              ; preds = %335, %334
  br label %337

337:                                              ; preds = %336, %214
  br label %338

338:                                              ; preds = %337, %127
  %339 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %340 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %339, i32 0, i32 2
  %341 = load i32*, i32** %340, align 8
  store i32* %341, i32** %13, align 8
  %342 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %343 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %342, i32 0, i32 1
  %344 = load i32*, i32** %343, align 8
  %345 = load i32, i32* %11, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds i32, i32* %344, i64 %346
  %348 = getelementptr inbounds i32, i32* %347, i64 -4
  store i32* %348, i32** %14, align 8
  %349 = load i32*, i32** %14, align 8
  %350 = getelementptr inbounds i32, i32* %349, i32 1
  store i32* %350, i32** %14, align 8
  %351 = load i32, i32* %349, align 4
  %352 = load i32*, i32** %13, align 8
  %353 = getelementptr inbounds i32, i32* %352, i32 1
  store i32* %353, i32** %13, align 8
  store i32 %351, i32* %352, align 4
  %354 = load i32*, i32** %14, align 8
  %355 = getelementptr inbounds i32, i32* %354, i32 1
  store i32* %355, i32** %14, align 8
  %356 = load i32, i32* %354, align 4
  %357 = load i32*, i32** %13, align 8
  %358 = getelementptr inbounds i32, i32* %357, i32 1
  store i32* %358, i32** %13, align 8
  store i32 %356, i32* %357, align 4
  %359 = load i32*, i32** %14, align 8
  %360 = getelementptr inbounds i32, i32* %359, i32 1
  store i32* %360, i32** %14, align 8
  %361 = load i32, i32* %359, align 4
  %362 = load i32*, i32** %13, align 8
  %363 = getelementptr inbounds i32, i32* %362, i32 1
  store i32* %363, i32** %13, align 8
  store i32 %361, i32* %362, align 4
  %364 = load i32*, i32** %14, align 8
  %365 = load i32, i32* %364, align 4
  %366 = load i32*, i32** %13, align 8
  store i32 %365, i32* %366, align 4
  %367 = load i32*, i32** %13, align 8
  %368 = getelementptr inbounds i32, i32* %367, i64 -3
  store i32* %368, i32** %13, align 8
  %369 = load i32*, i32** %14, align 8
  %370 = getelementptr inbounds i32, i32* %369, i64 -3
  store i32* %370, i32** %14, align 8
  store i32 1, i32* %10, align 4
  br label %371

371:                                              ; preds = %494, %338
  %372 = load i32, i32* %10, align 4
  %373 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %374 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %373, i32 0, i32 0
  %375 = load i32, i32* %374, align 8
  %376 = icmp slt i32 %372, %375
  br i1 %376, label %377, label %497

377:                                              ; preds = %371
  %378 = load i32*, i32** %14, align 8
  %379 = getelementptr inbounds i32, i32* %378, i64 -4
  store i32* %379, i32** %14, align 8
  %380 = load i32*, i32** %13, align 8
  %381 = getelementptr inbounds i32, i32* %380, i64 4
  store i32* %381, i32** %13, align 8
  %382 = load i32*, i32** %14, align 8
  %383 = getelementptr inbounds i32, i32* %382, i64 0
  %384 = load i32, i32* %383, align 4
  store i32 %384, i32* %12, align 4
  %385 = load i32*, i32** @Tks0, align 8
  %386 = load i32, i32* %12, align 4
  %387 = call i64 @byte(i32 %386, i32 3)
  %388 = getelementptr inbounds i32, i32* %385, i64 %387
  %389 = load i32, i32* %388, align 4
  %390 = load i32*, i32** @Tks1, align 8
  %391 = load i32, i32* %12, align 4
  %392 = call i64 @byte(i32 %391, i32 2)
  %393 = getelementptr inbounds i32, i32* %390, i64 %392
  %394 = load i32, i32* %393, align 4
  %395 = xor i32 %389, %394
  %396 = load i32*, i32** @Tks2, align 8
  %397 = load i32, i32* %12, align 4
  %398 = call i64 @byte(i32 %397, i32 1)
  %399 = getelementptr inbounds i32, i32* %396, i64 %398
  %400 = load i32, i32* %399, align 4
  %401 = xor i32 %395, %400
  %402 = load i32*, i32** @Tks3, align 8
  %403 = load i32, i32* %12, align 4
  %404 = call i64 @byte(i32 %403, i32 0)
  %405 = getelementptr inbounds i32, i32* %402, i64 %404
  %406 = load i32, i32* %405, align 4
  %407 = xor i32 %401, %406
  %408 = load i32*, i32** %13, align 8
  %409 = getelementptr inbounds i32, i32* %408, i64 0
  store i32 %407, i32* %409, align 4
  %410 = load i32*, i32** %14, align 8
  %411 = getelementptr inbounds i32, i32* %410, i64 1
  %412 = load i32, i32* %411, align 4
  store i32 %412, i32* %12, align 4
  %413 = load i32*, i32** @Tks0, align 8
  %414 = load i32, i32* %12, align 4
  %415 = call i64 @byte(i32 %414, i32 3)
  %416 = getelementptr inbounds i32, i32* %413, i64 %415
  %417 = load i32, i32* %416, align 4
  %418 = load i32*, i32** @Tks1, align 8
  %419 = load i32, i32* %12, align 4
  %420 = call i64 @byte(i32 %419, i32 2)
  %421 = getelementptr inbounds i32, i32* %418, i64 %420
  %422 = load i32, i32* %421, align 4
  %423 = xor i32 %417, %422
  %424 = load i32*, i32** @Tks2, align 8
  %425 = load i32, i32* %12, align 4
  %426 = call i64 @byte(i32 %425, i32 1)
  %427 = getelementptr inbounds i32, i32* %424, i64 %426
  %428 = load i32, i32* %427, align 4
  %429 = xor i32 %423, %428
  %430 = load i32*, i32** @Tks3, align 8
  %431 = load i32, i32* %12, align 4
  %432 = call i64 @byte(i32 %431, i32 0)
  %433 = getelementptr inbounds i32, i32* %430, i64 %432
  %434 = load i32, i32* %433, align 4
  %435 = xor i32 %429, %434
  %436 = load i32*, i32** %13, align 8
  %437 = getelementptr inbounds i32, i32* %436, i64 1
  store i32 %435, i32* %437, align 4
  %438 = load i32*, i32** %14, align 8
  %439 = getelementptr inbounds i32, i32* %438, i64 2
  %440 = load i32, i32* %439, align 4
  store i32 %440, i32* %12, align 4
  %441 = load i32*, i32** @Tks0, align 8
  %442 = load i32, i32* %12, align 4
  %443 = call i64 @byte(i32 %442, i32 3)
  %444 = getelementptr inbounds i32, i32* %441, i64 %443
  %445 = load i32, i32* %444, align 4
  %446 = load i32*, i32** @Tks1, align 8
  %447 = load i32, i32* %12, align 4
  %448 = call i64 @byte(i32 %447, i32 2)
  %449 = getelementptr inbounds i32, i32* %446, i64 %448
  %450 = load i32, i32* %449, align 4
  %451 = xor i32 %445, %450
  %452 = load i32*, i32** @Tks2, align 8
  %453 = load i32, i32* %12, align 4
  %454 = call i64 @byte(i32 %453, i32 1)
  %455 = getelementptr inbounds i32, i32* %452, i64 %454
  %456 = load i32, i32* %455, align 4
  %457 = xor i32 %451, %456
  %458 = load i32*, i32** @Tks3, align 8
  %459 = load i32, i32* %12, align 4
  %460 = call i64 @byte(i32 %459, i32 0)
  %461 = getelementptr inbounds i32, i32* %458, i64 %460
  %462 = load i32, i32* %461, align 4
  %463 = xor i32 %457, %462
  %464 = load i32*, i32** %13, align 8
  %465 = getelementptr inbounds i32, i32* %464, i64 2
  store i32 %463, i32* %465, align 4
  %466 = load i32*, i32** %14, align 8
  %467 = getelementptr inbounds i32, i32* %466, i64 3
  %468 = load i32, i32* %467, align 4
  store i32 %468, i32* %12, align 4
  %469 = load i32*, i32** @Tks0, align 8
  %470 = load i32, i32* %12, align 4
  %471 = call i64 @byte(i32 %470, i32 3)
  %472 = getelementptr inbounds i32, i32* %469, i64 %471
  %473 = load i32, i32* %472, align 4
  %474 = load i32*, i32** @Tks1, align 8
  %475 = load i32, i32* %12, align 4
  %476 = call i64 @byte(i32 %475, i32 2)
  %477 = getelementptr inbounds i32, i32* %474, i64 %476
  %478 = load i32, i32* %477, align 4
  %479 = xor i32 %473, %478
  %480 = load i32*, i32** @Tks2, align 8
  %481 = load i32, i32* %12, align 4
  %482 = call i64 @byte(i32 %481, i32 1)
  %483 = getelementptr inbounds i32, i32* %480, i64 %482
  %484 = load i32, i32* %483, align 4
  %485 = xor i32 %479, %484
  %486 = load i32*, i32** @Tks3, align 8
  %487 = load i32, i32* %12, align 4
  %488 = call i64 @byte(i32 %487, i32 0)
  %489 = getelementptr inbounds i32, i32* %486, i64 %488
  %490 = load i32, i32* %489, align 4
  %491 = xor i32 %485, %490
  %492 = load i32*, i32** %13, align 8
  %493 = getelementptr inbounds i32, i32* %492, i64 3
  store i32 %491, i32* %493, align 4
  br label %494

494:                                              ; preds = %377
  %495 = load i32, i32* %10, align 4
  %496 = add nsw i32 %495, 1
  store i32 %496, i32* %10, align 4
  br label %371

497:                                              ; preds = %371
  %498 = load i32*, i32** %14, align 8
  %499 = getelementptr inbounds i32, i32* %498, i64 -4
  store i32* %499, i32** %14, align 8
  %500 = load i32*, i32** %13, align 8
  %501 = getelementptr inbounds i32, i32* %500, i64 4
  store i32* %501, i32** %13, align 8
  %502 = load i32*, i32** %14, align 8
  %503 = getelementptr inbounds i32, i32* %502, i32 1
  store i32* %503, i32** %14, align 8
  %504 = load i32, i32* %502, align 4
  %505 = load i32*, i32** %13, align 8
  %506 = getelementptr inbounds i32, i32* %505, i32 1
  store i32* %506, i32** %13, align 8
  store i32 %504, i32* %505, align 4
  %507 = load i32*, i32** %14, align 8
  %508 = getelementptr inbounds i32, i32* %507, i32 1
  store i32* %508, i32** %14, align 8
  %509 = load i32, i32* %507, align 4
  %510 = load i32*, i32** %13, align 8
  %511 = getelementptr inbounds i32, i32* %510, i32 1
  store i32* %511, i32** %13, align 8
  store i32 %509, i32* %510, align 4
  %512 = load i32*, i32** %14, align 8
  %513 = getelementptr inbounds i32, i32* %512, i32 1
  store i32* %513, i32** %14, align 8
  %514 = load i32, i32* %512, align 4
  %515 = load i32*, i32** %13, align 8
  %516 = getelementptr inbounds i32, i32* %515, i32 1
  store i32* %516, i32** %13, align 8
  store i32 %514, i32* %515, align 4
  %517 = load i32*, i32** %14, align 8
  %518 = load i32, i32* %517, align 4
  %519 = load i32*, i32** %13, align 8
  store i32 %518, i32* %519, align 4
  %520 = load i32, i32* @CRYPT_OK, align 4
  store i32 %520, i32* %5, align 4
  br label %521

521:                                              ; preds = %497, %36, %23
  %522 = load i32, i32* %5, align 4
  ret i32 %522
}

declare dso_local i32 @LOAD32H(i32, i8*) #1

declare dso_local i32 @setup_mix(i32) #1

declare dso_local i32 @ROR(i32, i32) #1

declare dso_local i64 @byte(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
