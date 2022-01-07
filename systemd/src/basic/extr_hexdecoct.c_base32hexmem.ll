; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_hexdecoct.c_base32hexmem.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_hexdecoct.c_base32hexmem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @base32hexmem(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i64, i64* %6, align 8
  %16 = icmp eq i64 %15, 0
  br label %17

17:                                               ; preds = %14, %3
  %18 = phi i1 [ true, %3 ], [ %16, %14 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = load i64, i64* %6, align 8
  %25 = add i64 %24, 4
  %26 = mul i64 8, %25
  %27 = udiv i64 %26, 5
  store i64 %27, i64* %11, align 8
  br label %47

28:                                               ; preds = %17
  %29 = load i64, i64* %6, align 8
  %30 = mul i64 8, %29
  %31 = udiv i64 %30, 5
  store i64 %31, i64* %11, align 8
  %32 = load i64, i64* %6, align 8
  %33 = urem i64 %32, 5
  switch i64 %33, label %46 [
    i64 4, label %34
    i64 3, label %37
    i64 2, label %40
    i64 1, label %43
  ]

34:                                               ; preds = %28
  %35 = load i64, i64* %11, align 8
  %36 = add i64 %35, 7
  store i64 %36, i64* %11, align 8
  br label %46

37:                                               ; preds = %28
  %38 = load i64, i64* %11, align 8
  %39 = add i64 %38, 5
  store i64 %39, i64* %11, align 8
  br label %46

40:                                               ; preds = %28
  %41 = load i64, i64* %11, align 8
  %42 = add i64 %41, 4
  store i64 %42, i64* %11, align 8
  br label %46

43:                                               ; preds = %28
  %44 = load i64, i64* %11, align 8
  %45 = add i64 %44, 2
  store i64 %45, i64* %11, align 8
  br label %46

46:                                               ; preds = %28, %43, %40, %37, %34
  br label %47

47:                                               ; preds = %46, %23
  %48 = load i64, i64* %11, align 8
  %49 = add i64 %48, 1
  %50 = call i8* @malloc(i64 %49)
  store i8* %50, i8** %8, align 8
  store i8* %50, i8** %9, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %47
  store i8* null, i8** %4, align 8
  br label %402

54:                                               ; preds = %47
  %55 = load i8*, i8** %5, align 8
  %56 = bitcast i8* %55 to i32*
  store i32* %56, i32** %10, align 8
  br label %57

57:                                               ; preds = %157, %54
  %58 = load i32*, i32** %10, align 8
  %59 = load i8*, i8** %5, align 8
  %60 = bitcast i8* %59 to i32*
  %61 = load i64, i64* %6, align 8
  %62 = udiv i64 %61, 5
  %63 = mul i64 %62, 5
  %64 = getelementptr inbounds i32, i32* %60, i64 %63
  %65 = icmp ult i32* %58, %64
  br i1 %65, label %66, label %160

66:                                               ; preds = %57
  %67 = load i32*, i32** %10, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %68, align 4
  %70 = ashr i32 %69, 3
  %71 = call i8* @base32hexchar(i32 %70)
  %72 = ptrtoint i8* %71 to i8
  %73 = load i8*, i8** %9, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %9, align 8
  store i8 %72, i8* %73, align 1
  %75 = load i32*, i32** %10, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, 7
  %79 = shl i32 %78, 2
  %80 = load i32*, i32** %10, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 1
  %82 = load i32, i32* %81, align 4
  %83 = ashr i32 %82, 6
  %84 = or i32 %79, %83
  %85 = call i8* @base32hexchar(i32 %84)
  %86 = ptrtoint i8* %85 to i8
  %87 = load i8*, i8** %9, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %9, align 8
  store i8 %86, i8* %87, align 1
  %89 = load i32*, i32** %10, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 1
  %91 = load i32, i32* %90, align 4
  %92 = and i32 %91, 63
  %93 = ashr i32 %92, 1
  %94 = call i8* @base32hexchar(i32 %93)
  %95 = ptrtoint i8* %94 to i8
  %96 = load i8*, i8** %9, align 8
  %97 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %97, i8** %9, align 8
  store i8 %95, i8* %96, align 1
  %98 = load i32*, i32** %10, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 1
  %100 = load i32, i32* %99, align 4
  %101 = and i32 %100, 1
  %102 = shl i32 %101, 4
  %103 = load i32*, i32** %10, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 2
  %105 = load i32, i32* %104, align 4
  %106 = ashr i32 %105, 4
  %107 = or i32 %102, %106
  %108 = call i8* @base32hexchar(i32 %107)
  %109 = ptrtoint i8* %108 to i8
  %110 = load i8*, i8** %9, align 8
  %111 = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %111, i8** %9, align 8
  store i8 %109, i8* %110, align 1
  %112 = load i32*, i32** %10, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 2
  %114 = load i32, i32* %113, align 4
  %115 = and i32 %114, 15
  %116 = shl i32 %115, 1
  %117 = load i32*, i32** %10, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 3
  %119 = load i32, i32* %118, align 4
  %120 = ashr i32 %119, 7
  %121 = or i32 %116, %120
  %122 = call i8* @base32hexchar(i32 %121)
  %123 = ptrtoint i8* %122 to i8
  %124 = load i8*, i8** %9, align 8
  %125 = getelementptr inbounds i8, i8* %124, i32 1
  store i8* %125, i8** %9, align 8
  store i8 %123, i8* %124, align 1
  %126 = load i32*, i32** %10, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 3
  %128 = load i32, i32* %127, align 4
  %129 = and i32 %128, 127
  %130 = ashr i32 %129, 2
  %131 = call i8* @base32hexchar(i32 %130)
  %132 = ptrtoint i8* %131 to i8
  %133 = load i8*, i8** %9, align 8
  %134 = getelementptr inbounds i8, i8* %133, i32 1
  store i8* %134, i8** %9, align 8
  store i8 %132, i8* %133, align 1
  %135 = load i32*, i32** %10, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 3
  %137 = load i32, i32* %136, align 4
  %138 = and i32 %137, 3
  %139 = shl i32 %138, 3
  %140 = load i32*, i32** %10, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 4
  %142 = load i32, i32* %141, align 4
  %143 = ashr i32 %142, 5
  %144 = or i32 %139, %143
  %145 = call i8* @base32hexchar(i32 %144)
  %146 = ptrtoint i8* %145 to i8
  %147 = load i8*, i8** %9, align 8
  %148 = getelementptr inbounds i8, i8* %147, i32 1
  store i8* %148, i8** %9, align 8
  store i8 %146, i8* %147, align 1
  %149 = load i32*, i32** %10, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 4
  %151 = load i32, i32* %150, align 4
  %152 = and i32 %151, 31
  %153 = call i8* @base32hexchar(i32 %152)
  %154 = ptrtoint i8* %153 to i8
  %155 = load i8*, i8** %9, align 8
  %156 = getelementptr inbounds i8, i8* %155, i32 1
  store i8* %156, i8** %9, align 8
  store i8 %154, i8* %155, align 1
  br label %157

157:                                              ; preds = %66
  %158 = load i32*, i32** %10, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 5
  store i32* %159, i32** %10, align 8
  br label %57

160:                                              ; preds = %57
  %161 = load i64, i64* %6, align 8
  %162 = urem i64 %161, 5
  switch i64 %162, label %399 [
    i64 4, label %163
    i64 3, label %247
    i64 2, label %312
    i64 1, label %365
  ]

163:                                              ; preds = %160
  %164 = load i32*, i32** %10, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 0
  %166 = load i32, i32* %165, align 4
  %167 = ashr i32 %166, 3
  %168 = call i8* @base32hexchar(i32 %167)
  %169 = ptrtoint i8* %168 to i8
  %170 = load i8*, i8** %9, align 8
  %171 = getelementptr inbounds i8, i8* %170, i32 1
  store i8* %171, i8** %9, align 8
  store i8 %169, i8* %170, align 1
  %172 = load i32*, i32** %10, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 0
  %174 = load i32, i32* %173, align 4
  %175 = and i32 %174, 7
  %176 = shl i32 %175, 2
  %177 = load i32*, i32** %10, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 1
  %179 = load i32, i32* %178, align 4
  %180 = ashr i32 %179, 6
  %181 = or i32 %176, %180
  %182 = call i8* @base32hexchar(i32 %181)
  %183 = ptrtoint i8* %182 to i8
  %184 = load i8*, i8** %9, align 8
  %185 = getelementptr inbounds i8, i8* %184, i32 1
  store i8* %185, i8** %9, align 8
  store i8 %183, i8* %184, align 1
  %186 = load i32*, i32** %10, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 1
  %188 = load i32, i32* %187, align 4
  %189 = and i32 %188, 63
  %190 = ashr i32 %189, 1
  %191 = call i8* @base32hexchar(i32 %190)
  %192 = ptrtoint i8* %191 to i8
  %193 = load i8*, i8** %9, align 8
  %194 = getelementptr inbounds i8, i8* %193, i32 1
  store i8* %194, i8** %9, align 8
  store i8 %192, i8* %193, align 1
  %195 = load i32*, i32** %10, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 1
  %197 = load i32, i32* %196, align 4
  %198 = and i32 %197, 1
  %199 = shl i32 %198, 4
  %200 = load i32*, i32** %10, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 2
  %202 = load i32, i32* %201, align 4
  %203 = ashr i32 %202, 4
  %204 = or i32 %199, %203
  %205 = call i8* @base32hexchar(i32 %204)
  %206 = ptrtoint i8* %205 to i8
  %207 = load i8*, i8** %9, align 8
  %208 = getelementptr inbounds i8, i8* %207, i32 1
  store i8* %208, i8** %9, align 8
  store i8 %206, i8* %207, align 1
  %209 = load i32*, i32** %10, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 2
  %211 = load i32, i32* %210, align 4
  %212 = and i32 %211, 15
  %213 = shl i32 %212, 1
  %214 = load i32*, i32** %10, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 3
  %216 = load i32, i32* %215, align 4
  %217 = ashr i32 %216, 7
  %218 = or i32 %213, %217
  %219 = call i8* @base32hexchar(i32 %218)
  %220 = ptrtoint i8* %219 to i8
  %221 = load i8*, i8** %9, align 8
  %222 = getelementptr inbounds i8, i8* %221, i32 1
  store i8* %222, i8** %9, align 8
  store i8 %220, i8* %221, align 1
  %223 = load i32*, i32** %10, align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 3
  %225 = load i32, i32* %224, align 4
  %226 = and i32 %225, 127
  %227 = ashr i32 %226, 2
  %228 = call i8* @base32hexchar(i32 %227)
  %229 = ptrtoint i8* %228 to i8
  %230 = load i8*, i8** %9, align 8
  %231 = getelementptr inbounds i8, i8* %230, i32 1
  store i8* %231, i8** %9, align 8
  store i8 %229, i8* %230, align 1
  %232 = load i32*, i32** %10, align 8
  %233 = getelementptr inbounds i32, i32* %232, i64 3
  %234 = load i32, i32* %233, align 4
  %235 = and i32 %234, 3
  %236 = shl i32 %235, 3
  %237 = call i8* @base32hexchar(i32 %236)
  %238 = ptrtoint i8* %237 to i8
  %239 = load i8*, i8** %9, align 8
  %240 = getelementptr inbounds i8, i8* %239, i32 1
  store i8* %240, i8** %9, align 8
  store i8 %238, i8* %239, align 1
  %241 = load i32, i32* %7, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %246

243:                                              ; preds = %163
  %244 = load i8*, i8** %9, align 8
  %245 = getelementptr inbounds i8, i8* %244, i32 1
  store i8* %245, i8** %9, align 8
  store i8 61, i8* %244, align 1
  br label %246

246:                                              ; preds = %243, %163
  br label %399

247:                                              ; preds = %160
  %248 = load i32*, i32** %10, align 8
  %249 = getelementptr inbounds i32, i32* %248, i64 0
  %250 = load i32, i32* %249, align 4
  %251 = ashr i32 %250, 3
  %252 = call i8* @base32hexchar(i32 %251)
  %253 = ptrtoint i8* %252 to i8
  %254 = load i8*, i8** %9, align 8
  %255 = getelementptr inbounds i8, i8* %254, i32 1
  store i8* %255, i8** %9, align 8
  store i8 %253, i8* %254, align 1
  %256 = load i32*, i32** %10, align 8
  %257 = getelementptr inbounds i32, i32* %256, i64 0
  %258 = load i32, i32* %257, align 4
  %259 = and i32 %258, 7
  %260 = shl i32 %259, 2
  %261 = load i32*, i32** %10, align 8
  %262 = getelementptr inbounds i32, i32* %261, i64 1
  %263 = load i32, i32* %262, align 4
  %264 = ashr i32 %263, 6
  %265 = or i32 %260, %264
  %266 = call i8* @base32hexchar(i32 %265)
  %267 = ptrtoint i8* %266 to i8
  %268 = load i8*, i8** %9, align 8
  %269 = getelementptr inbounds i8, i8* %268, i32 1
  store i8* %269, i8** %9, align 8
  store i8 %267, i8* %268, align 1
  %270 = load i32*, i32** %10, align 8
  %271 = getelementptr inbounds i32, i32* %270, i64 1
  %272 = load i32, i32* %271, align 4
  %273 = and i32 %272, 63
  %274 = ashr i32 %273, 1
  %275 = call i8* @base32hexchar(i32 %274)
  %276 = ptrtoint i8* %275 to i8
  %277 = load i8*, i8** %9, align 8
  %278 = getelementptr inbounds i8, i8* %277, i32 1
  store i8* %278, i8** %9, align 8
  store i8 %276, i8* %277, align 1
  %279 = load i32*, i32** %10, align 8
  %280 = getelementptr inbounds i32, i32* %279, i64 1
  %281 = load i32, i32* %280, align 4
  %282 = and i32 %281, 1
  %283 = shl i32 %282, 4
  %284 = load i32*, i32** %10, align 8
  %285 = getelementptr inbounds i32, i32* %284, i64 2
  %286 = load i32, i32* %285, align 4
  %287 = ashr i32 %286, 4
  %288 = or i32 %283, %287
  %289 = call i8* @base32hexchar(i32 %288)
  %290 = ptrtoint i8* %289 to i8
  %291 = load i8*, i8** %9, align 8
  %292 = getelementptr inbounds i8, i8* %291, i32 1
  store i8* %292, i8** %9, align 8
  store i8 %290, i8* %291, align 1
  %293 = load i32*, i32** %10, align 8
  %294 = getelementptr inbounds i32, i32* %293, i64 2
  %295 = load i32, i32* %294, align 4
  %296 = and i32 %295, 15
  %297 = shl i32 %296, 1
  %298 = call i8* @base32hexchar(i32 %297)
  %299 = ptrtoint i8* %298 to i8
  %300 = load i8*, i8** %9, align 8
  %301 = getelementptr inbounds i8, i8* %300, i32 1
  store i8* %301, i8** %9, align 8
  store i8 %299, i8* %300, align 1
  %302 = load i32, i32* %7, align 4
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %311

304:                                              ; preds = %247
  %305 = load i8*, i8** %9, align 8
  %306 = getelementptr inbounds i8, i8* %305, i32 1
  store i8* %306, i8** %9, align 8
  store i8 61, i8* %305, align 1
  %307 = load i8*, i8** %9, align 8
  %308 = getelementptr inbounds i8, i8* %307, i32 1
  store i8* %308, i8** %9, align 8
  store i8 61, i8* %307, align 1
  %309 = load i8*, i8** %9, align 8
  %310 = getelementptr inbounds i8, i8* %309, i32 1
  store i8* %310, i8** %9, align 8
  store i8 61, i8* %309, align 1
  br label %311

311:                                              ; preds = %304, %247
  br label %399

312:                                              ; preds = %160
  %313 = load i32*, i32** %10, align 8
  %314 = getelementptr inbounds i32, i32* %313, i64 0
  %315 = load i32, i32* %314, align 4
  %316 = ashr i32 %315, 3
  %317 = call i8* @base32hexchar(i32 %316)
  %318 = ptrtoint i8* %317 to i8
  %319 = load i8*, i8** %9, align 8
  %320 = getelementptr inbounds i8, i8* %319, i32 1
  store i8* %320, i8** %9, align 8
  store i8 %318, i8* %319, align 1
  %321 = load i32*, i32** %10, align 8
  %322 = getelementptr inbounds i32, i32* %321, i64 0
  %323 = load i32, i32* %322, align 4
  %324 = and i32 %323, 7
  %325 = shl i32 %324, 2
  %326 = load i32*, i32** %10, align 8
  %327 = getelementptr inbounds i32, i32* %326, i64 1
  %328 = load i32, i32* %327, align 4
  %329 = ashr i32 %328, 6
  %330 = or i32 %325, %329
  %331 = call i8* @base32hexchar(i32 %330)
  %332 = ptrtoint i8* %331 to i8
  %333 = load i8*, i8** %9, align 8
  %334 = getelementptr inbounds i8, i8* %333, i32 1
  store i8* %334, i8** %9, align 8
  store i8 %332, i8* %333, align 1
  %335 = load i32*, i32** %10, align 8
  %336 = getelementptr inbounds i32, i32* %335, i64 1
  %337 = load i32, i32* %336, align 4
  %338 = and i32 %337, 63
  %339 = ashr i32 %338, 1
  %340 = call i8* @base32hexchar(i32 %339)
  %341 = ptrtoint i8* %340 to i8
  %342 = load i8*, i8** %9, align 8
  %343 = getelementptr inbounds i8, i8* %342, i32 1
  store i8* %343, i8** %9, align 8
  store i8 %341, i8* %342, align 1
  %344 = load i32*, i32** %10, align 8
  %345 = getelementptr inbounds i32, i32* %344, i64 1
  %346 = load i32, i32* %345, align 4
  %347 = and i32 %346, 1
  %348 = shl i32 %347, 4
  %349 = call i8* @base32hexchar(i32 %348)
  %350 = ptrtoint i8* %349 to i8
  %351 = load i8*, i8** %9, align 8
  %352 = getelementptr inbounds i8, i8* %351, i32 1
  store i8* %352, i8** %9, align 8
  store i8 %350, i8* %351, align 1
  %353 = load i32, i32* %7, align 4
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %364

355:                                              ; preds = %312
  %356 = load i8*, i8** %9, align 8
  %357 = getelementptr inbounds i8, i8* %356, i32 1
  store i8* %357, i8** %9, align 8
  store i8 61, i8* %356, align 1
  %358 = load i8*, i8** %9, align 8
  %359 = getelementptr inbounds i8, i8* %358, i32 1
  store i8* %359, i8** %9, align 8
  store i8 61, i8* %358, align 1
  %360 = load i8*, i8** %9, align 8
  %361 = getelementptr inbounds i8, i8* %360, i32 1
  store i8* %361, i8** %9, align 8
  store i8 61, i8* %360, align 1
  %362 = load i8*, i8** %9, align 8
  %363 = getelementptr inbounds i8, i8* %362, i32 1
  store i8* %363, i8** %9, align 8
  store i8 61, i8* %362, align 1
  br label %364

364:                                              ; preds = %355, %312
  br label %399

365:                                              ; preds = %160
  %366 = load i32*, i32** %10, align 8
  %367 = getelementptr inbounds i32, i32* %366, i64 0
  %368 = load i32, i32* %367, align 4
  %369 = ashr i32 %368, 3
  %370 = call i8* @base32hexchar(i32 %369)
  %371 = ptrtoint i8* %370 to i8
  %372 = load i8*, i8** %9, align 8
  %373 = getelementptr inbounds i8, i8* %372, i32 1
  store i8* %373, i8** %9, align 8
  store i8 %371, i8* %372, align 1
  %374 = load i32*, i32** %10, align 8
  %375 = getelementptr inbounds i32, i32* %374, i64 0
  %376 = load i32, i32* %375, align 4
  %377 = and i32 %376, 7
  %378 = shl i32 %377, 2
  %379 = call i8* @base32hexchar(i32 %378)
  %380 = ptrtoint i8* %379 to i8
  %381 = load i8*, i8** %9, align 8
  %382 = getelementptr inbounds i8, i8* %381, i32 1
  store i8* %382, i8** %9, align 8
  store i8 %380, i8* %381, align 1
  %383 = load i32, i32* %7, align 4
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %385, label %398

385:                                              ; preds = %365
  %386 = load i8*, i8** %9, align 8
  %387 = getelementptr inbounds i8, i8* %386, i32 1
  store i8* %387, i8** %9, align 8
  store i8 61, i8* %386, align 1
  %388 = load i8*, i8** %9, align 8
  %389 = getelementptr inbounds i8, i8* %388, i32 1
  store i8* %389, i8** %9, align 8
  store i8 61, i8* %388, align 1
  %390 = load i8*, i8** %9, align 8
  %391 = getelementptr inbounds i8, i8* %390, i32 1
  store i8* %391, i8** %9, align 8
  store i8 61, i8* %390, align 1
  %392 = load i8*, i8** %9, align 8
  %393 = getelementptr inbounds i8, i8* %392, i32 1
  store i8* %393, i8** %9, align 8
  store i8 61, i8* %392, align 1
  %394 = load i8*, i8** %9, align 8
  %395 = getelementptr inbounds i8, i8* %394, i32 1
  store i8* %395, i8** %9, align 8
  store i8 61, i8* %394, align 1
  %396 = load i8*, i8** %9, align 8
  %397 = getelementptr inbounds i8, i8* %396, i32 1
  store i8* %397, i8** %9, align 8
  store i8 61, i8* %396, align 1
  br label %398

398:                                              ; preds = %385, %365
  br label %399

399:                                              ; preds = %160, %398, %364, %311, %246
  %400 = load i8*, i8** %9, align 8
  store i8 0, i8* %400, align 1
  %401 = load i8*, i8** %8, align 8
  store i8* %401, i8** %4, align 8
  br label %402

402:                                              ; preds = %399, %53
  %403 = load i8*, i8** %4, align 8
  ret i8* %403
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i8* @base32hexchar(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
