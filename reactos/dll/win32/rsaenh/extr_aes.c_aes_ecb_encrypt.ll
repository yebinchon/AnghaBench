; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rsaenh/extr_aes.c_aes_ecb_encrypt.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rsaenh/extr_aes.c_aes_ecb_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }

@Te4_3 = common dso_local global i32* null, align 8
@Te4_2 = common dso_local global i32* null, align 8
@Te4_1 = common dso_local global i32* null, align 8
@Te4_0 = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @aes_ecb_encrypt(i8* %0, i8* %1, %struct.TYPE_3__* %2) #0 {
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
  %64 = call i32 @Te0(i64 %63)
  %65 = load i32, i32* %8, align 4
  %66 = call i64 @byte(i32 %65, i32 2)
  %67 = call i32 @Te1(i64 %66)
  %68 = xor i32 %64, %67
  %69 = load i32, i32* %9, align 4
  %70 = call i64 @byte(i32 %69, i32 1)
  %71 = call i32 @Te2(i64 %70)
  %72 = xor i32 %68, %71
  %73 = load i32, i32* %10, align 4
  %74 = call i64 @byte(i32 %73, i32 0)
  %75 = call i32 @Te3(i64 %74)
  %76 = xor i32 %72, %75
  %77 = load i32*, i32** %15, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 4
  %79 = load i32, i32* %78, align 4
  %80 = xor i32 %76, %79
  store i32 %80, i32* %11, align 4
  %81 = load i32, i32* %8, align 4
  %82 = call i64 @byte(i32 %81, i32 3)
  %83 = call i32 @Te0(i64 %82)
  %84 = load i32, i32* %9, align 4
  %85 = call i64 @byte(i32 %84, i32 2)
  %86 = call i32 @Te1(i64 %85)
  %87 = xor i32 %83, %86
  %88 = load i32, i32* %10, align 4
  %89 = call i64 @byte(i32 %88, i32 1)
  %90 = call i32 @Te2(i64 %89)
  %91 = xor i32 %87, %90
  %92 = load i32, i32* %7, align 4
  %93 = call i64 @byte(i32 %92, i32 0)
  %94 = call i32 @Te3(i64 %93)
  %95 = xor i32 %91, %94
  %96 = load i32*, i32** %15, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 5
  %98 = load i32, i32* %97, align 4
  %99 = xor i32 %95, %98
  store i32 %99, i32* %12, align 4
  %100 = load i32, i32* %9, align 4
  %101 = call i64 @byte(i32 %100, i32 3)
  %102 = call i32 @Te0(i64 %101)
  %103 = load i32, i32* %10, align 4
  %104 = call i64 @byte(i32 %103, i32 2)
  %105 = call i32 @Te1(i64 %104)
  %106 = xor i32 %102, %105
  %107 = load i32, i32* %7, align 4
  %108 = call i64 @byte(i32 %107, i32 1)
  %109 = call i32 @Te2(i64 %108)
  %110 = xor i32 %106, %109
  %111 = load i32, i32* %8, align 4
  %112 = call i64 @byte(i32 %111, i32 0)
  %113 = call i32 @Te3(i64 %112)
  %114 = xor i32 %110, %113
  %115 = load i32*, i32** %15, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 6
  %117 = load i32, i32* %116, align 4
  %118 = xor i32 %114, %117
  store i32 %118, i32* %13, align 4
  %119 = load i32, i32* %10, align 4
  %120 = call i64 @byte(i32 %119, i32 3)
  %121 = call i32 @Te0(i64 %120)
  %122 = load i32, i32* %7, align 4
  %123 = call i64 @byte(i32 %122, i32 2)
  %124 = call i32 @Te1(i64 %123)
  %125 = xor i32 %121, %124
  %126 = load i32, i32* %8, align 4
  %127 = call i64 @byte(i32 %126, i32 1)
  %128 = call i32 @Te2(i64 %127)
  %129 = xor i32 %125, %128
  %130 = load i32, i32* %9, align 4
  %131 = call i64 @byte(i32 %130, i32 0)
  %132 = call i32 @Te3(i64 %131)
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
  %147 = call i32 @Te0(i64 %146)
  %148 = load i32, i32* %12, align 4
  %149 = call i64 @byte(i32 %148, i32 2)
  %150 = call i32 @Te1(i64 %149)
  %151 = xor i32 %147, %150
  %152 = load i32, i32* %13, align 4
  %153 = call i64 @byte(i32 %152, i32 1)
  %154 = call i32 @Te2(i64 %153)
  %155 = xor i32 %151, %154
  %156 = load i32, i32* %14, align 4
  %157 = call i64 @byte(i32 %156, i32 0)
  %158 = call i32 @Te3(i64 %157)
  %159 = xor i32 %155, %158
  %160 = load i32*, i32** %15, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 0
  %162 = load i32, i32* %161, align 4
  %163 = xor i32 %159, %162
  store i32 %163, i32* %7, align 4
  %164 = load i32, i32* %12, align 4
  %165 = call i64 @byte(i32 %164, i32 3)
  %166 = call i32 @Te0(i64 %165)
  %167 = load i32, i32* %13, align 4
  %168 = call i64 @byte(i32 %167, i32 2)
  %169 = call i32 @Te1(i64 %168)
  %170 = xor i32 %166, %169
  %171 = load i32, i32* %14, align 4
  %172 = call i64 @byte(i32 %171, i32 1)
  %173 = call i32 @Te2(i64 %172)
  %174 = xor i32 %170, %173
  %175 = load i32, i32* %11, align 4
  %176 = call i64 @byte(i32 %175, i32 0)
  %177 = call i32 @Te3(i64 %176)
  %178 = xor i32 %174, %177
  %179 = load i32*, i32** %15, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 1
  %181 = load i32, i32* %180, align 4
  %182 = xor i32 %178, %181
  store i32 %182, i32* %8, align 4
  %183 = load i32, i32* %13, align 4
  %184 = call i64 @byte(i32 %183, i32 3)
  %185 = call i32 @Te0(i64 %184)
  %186 = load i32, i32* %14, align 4
  %187 = call i64 @byte(i32 %186, i32 2)
  %188 = call i32 @Te1(i64 %187)
  %189 = xor i32 %185, %188
  %190 = load i32, i32* %11, align 4
  %191 = call i64 @byte(i32 %190, i32 1)
  %192 = call i32 @Te2(i64 %191)
  %193 = xor i32 %189, %192
  %194 = load i32, i32* %12, align 4
  %195 = call i64 @byte(i32 %194, i32 0)
  %196 = call i32 @Te3(i64 %195)
  %197 = xor i32 %193, %196
  %198 = load i32*, i32** %15, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 2
  %200 = load i32, i32* %199, align 4
  %201 = xor i32 %197, %200
  store i32 %201, i32* %9, align 4
  %202 = load i32, i32* %14, align 4
  %203 = call i64 @byte(i32 %202, i32 3)
  %204 = call i32 @Te0(i64 %203)
  %205 = load i32, i32* %11, align 4
  %206 = call i64 @byte(i32 %205, i32 2)
  %207 = call i32 @Te1(i64 %206)
  %208 = xor i32 %204, %207
  %209 = load i32, i32* %12, align 4
  %210 = call i64 @byte(i32 %209, i32 1)
  %211 = call i32 @Te2(i64 %210)
  %212 = xor i32 %208, %211
  %213 = load i32, i32* %13, align 4
  %214 = call i64 @byte(i32 %213, i32 0)
  %215 = call i32 @Te3(i64 %214)
  %216 = xor i32 %212, %215
  %217 = load i32*, i32** %15, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 3
  %219 = load i32, i32* %218, align 4
  %220 = xor i32 %216, %219
  store i32 %220, i32* %10, align 4
  br label %61

221:                                              ; preds = %143
  %222 = load i32*, i32** @Te4_3, align 8
  %223 = load i32, i32* %11, align 4
  %224 = call i64 @byte(i32 %223, i32 3)
  %225 = getelementptr inbounds i32, i32* %222, i64 %224
  %226 = load i32, i32* %225, align 4
  %227 = load i32*, i32** @Te4_2, align 8
  %228 = load i32, i32* %12, align 4
  %229 = call i64 @byte(i32 %228, i32 2)
  %230 = getelementptr inbounds i32, i32* %227, i64 %229
  %231 = load i32, i32* %230, align 4
  %232 = xor i32 %226, %231
  %233 = load i32*, i32** @Te4_1, align 8
  %234 = load i32, i32* %13, align 4
  %235 = call i64 @byte(i32 %234, i32 1)
  %236 = getelementptr inbounds i32, i32* %233, i64 %235
  %237 = load i32, i32* %236, align 4
  %238 = xor i32 %232, %237
  %239 = load i32*, i32** @Te4_0, align 8
  %240 = load i32, i32* %14, align 4
  %241 = call i64 @byte(i32 %240, i32 0)
  %242 = getelementptr inbounds i32, i32* %239, i64 %241
  %243 = load i32, i32* %242, align 4
  %244 = xor i32 %238, %243
  %245 = load i32*, i32** %15, align 8
  %246 = getelementptr inbounds i32, i32* %245, i64 0
  %247 = load i32, i32* %246, align 4
  %248 = xor i32 %244, %247
  store i32 %248, i32* %7, align 4
  %249 = load i32, i32* %7, align 4
  %250 = load i8*, i8** %5, align 8
  %251 = call i32 @STORE32H(i32 %249, i8* %250)
  %252 = load i32*, i32** @Te4_3, align 8
  %253 = load i32, i32* %12, align 4
  %254 = call i64 @byte(i32 %253, i32 3)
  %255 = getelementptr inbounds i32, i32* %252, i64 %254
  %256 = load i32, i32* %255, align 4
  %257 = load i32*, i32** @Te4_2, align 8
  %258 = load i32, i32* %13, align 4
  %259 = call i64 @byte(i32 %258, i32 2)
  %260 = getelementptr inbounds i32, i32* %257, i64 %259
  %261 = load i32, i32* %260, align 4
  %262 = xor i32 %256, %261
  %263 = load i32*, i32** @Te4_1, align 8
  %264 = load i32, i32* %14, align 4
  %265 = call i64 @byte(i32 %264, i32 1)
  %266 = getelementptr inbounds i32, i32* %263, i64 %265
  %267 = load i32, i32* %266, align 4
  %268 = xor i32 %262, %267
  %269 = load i32*, i32** @Te4_0, align 8
  %270 = load i32, i32* %11, align 4
  %271 = call i64 @byte(i32 %270, i32 0)
  %272 = getelementptr inbounds i32, i32* %269, i64 %271
  %273 = load i32, i32* %272, align 4
  %274 = xor i32 %268, %273
  %275 = load i32*, i32** %15, align 8
  %276 = getelementptr inbounds i32, i32* %275, i64 1
  %277 = load i32, i32* %276, align 4
  %278 = xor i32 %274, %277
  store i32 %278, i32* %8, align 4
  %279 = load i32, i32* %8, align 4
  %280 = load i8*, i8** %5, align 8
  %281 = getelementptr inbounds i8, i8* %280, i64 4
  %282 = call i32 @STORE32H(i32 %279, i8* %281)
  %283 = load i32*, i32** @Te4_3, align 8
  %284 = load i32, i32* %13, align 4
  %285 = call i64 @byte(i32 %284, i32 3)
  %286 = getelementptr inbounds i32, i32* %283, i64 %285
  %287 = load i32, i32* %286, align 4
  %288 = load i32*, i32** @Te4_2, align 8
  %289 = load i32, i32* %14, align 4
  %290 = call i64 @byte(i32 %289, i32 2)
  %291 = getelementptr inbounds i32, i32* %288, i64 %290
  %292 = load i32, i32* %291, align 4
  %293 = xor i32 %287, %292
  %294 = load i32*, i32** @Te4_1, align 8
  %295 = load i32, i32* %11, align 4
  %296 = call i64 @byte(i32 %295, i32 1)
  %297 = getelementptr inbounds i32, i32* %294, i64 %296
  %298 = load i32, i32* %297, align 4
  %299 = xor i32 %293, %298
  %300 = load i32*, i32** @Te4_0, align 8
  %301 = load i32, i32* %12, align 4
  %302 = call i64 @byte(i32 %301, i32 0)
  %303 = getelementptr inbounds i32, i32* %300, i64 %302
  %304 = load i32, i32* %303, align 4
  %305 = xor i32 %299, %304
  %306 = load i32*, i32** %15, align 8
  %307 = getelementptr inbounds i32, i32* %306, i64 2
  %308 = load i32, i32* %307, align 4
  %309 = xor i32 %305, %308
  store i32 %309, i32* %9, align 4
  %310 = load i32, i32* %9, align 4
  %311 = load i8*, i8** %5, align 8
  %312 = getelementptr inbounds i8, i8* %311, i64 8
  %313 = call i32 @STORE32H(i32 %310, i8* %312)
  %314 = load i32*, i32** @Te4_3, align 8
  %315 = load i32, i32* %14, align 4
  %316 = call i64 @byte(i32 %315, i32 3)
  %317 = getelementptr inbounds i32, i32* %314, i64 %316
  %318 = load i32, i32* %317, align 4
  %319 = load i32*, i32** @Te4_2, align 8
  %320 = load i32, i32* %11, align 4
  %321 = call i64 @byte(i32 %320, i32 2)
  %322 = getelementptr inbounds i32, i32* %319, i64 %321
  %323 = load i32, i32* %322, align 4
  %324 = xor i32 %318, %323
  %325 = load i32*, i32** @Te4_1, align 8
  %326 = load i32, i32* %12, align 4
  %327 = call i64 @byte(i32 %326, i32 1)
  %328 = getelementptr inbounds i32, i32* %325, i64 %327
  %329 = load i32, i32* %328, align 4
  %330 = xor i32 %324, %329
  %331 = load i32*, i32** @Te4_0, align 8
  %332 = load i32, i32* %13, align 4
  %333 = call i64 @byte(i32 %332, i32 0)
  %334 = getelementptr inbounds i32, i32* %331, i64 %333
  %335 = load i32, i32* %334, align 4
  %336 = xor i32 %330, %335
  %337 = load i32*, i32** %15, align 8
  %338 = getelementptr inbounds i32, i32* %337, i64 3
  %339 = load i32, i32* %338, align 4
  %340 = xor i32 %336, %339
  store i32 %340, i32* %10, align 4
  %341 = load i32, i32* %10, align 4
  %342 = load i8*, i8** %5, align 8
  %343 = getelementptr inbounds i8, i8* %342, i64 12
  %344 = call i32 @STORE32H(i32 %341, i8* %343)
  ret void
}

declare dso_local i32 @LOAD32H(i32, i8*) #1

declare dso_local i32 @Te0(i64) #1

declare dso_local i64 @byte(i32, i32) #1

declare dso_local i32 @Te1(i64) #1

declare dso_local i32 @Te2(i64) #1

declare dso_local i32 @Te3(i64) #1

declare dso_local i32 @STORE32H(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
