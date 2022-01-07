; ModuleID = '/home/carl/AnghaBench/stb/tests/extr_..stb_ds.h_stbds_siphash_bytes.c'
source_filename = "/home/carl/AnghaBench/stb/tests/extr_..stb_ds.h_stbds_siphash_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STBDS_SIPHASH_C_ROUNDS = common dso_local global i64 0, align 8
@STBDS_SIZE_T_BITS = common dso_local global i32 0, align 4
@STBDS_SIPHASH_D_ROUNDS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i64)* @stbds_siphash_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @stbds_siphash_bytes(i8* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %15 = load i8*, i8** %4, align 8
  store i8* %15, i8** %7, align 8
  %16 = load i64, i64* %6, align 8
  %17 = xor i64 8317987319222330741, %16
  store i64 %17, i64* %10, align 8
  %18 = load i64, i64* %6, align 8
  %19 = xor i64 %18, -1
  %20 = xor i64 7237128888997146477, %19
  store i64 %20, i64* %11, align 8
  %21 = load i64, i64* %6, align 8
  %22 = xor i64 7816392313619706465, %21
  store i64 %22, i64* %12, align 8
  %23 = load i64, i64* %6, align 8
  %24 = xor i64 %23, -1
  %25 = xor i64 8387220255154660723, %24
  store i64 %25, i64* %13, align 8
  store i64 0, i64* %8, align 8
  br label %26

26:                                               ; preds = %145, %3
  %27 = load i64, i64* %8, align 8
  %28 = add i64 %27, 8
  %29 = load i64, i64* %5, align 8
  %30 = icmp ule i64 %28, %29
  br i1 %30, label %31, label %150

31:                                               ; preds = %26
  %32 = load i8*, i8** %7, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = load i8*, i8** %7, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = shl i32 %39, 8
  %41 = or i32 %35, %40
  %42 = load i8*, i8** %7, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 2
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i32
  %46 = shl i32 %45, 16
  %47 = or i32 %41, %46
  %48 = load i8*, i8** %7, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 3
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = shl i32 %51, 24
  %53 = or i32 %47, %52
  %54 = sext i32 %53 to i64
  store i64 %54, i64* %14, align 8
  %55 = load i8*, i8** %7, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 4
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = load i8*, i8** %7, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 5
  %61 = load i8, i8* %60, align 1
  %62 = zext i8 %61 to i32
  %63 = shl i32 %62, 8
  %64 = or i32 %58, %63
  %65 = load i8*, i8** %7, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 6
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  %69 = shl i32 %68, 16
  %70 = or i32 %64, %69
  %71 = load i8*, i8** %7, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 7
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  %75 = shl i32 %74, 24
  %76 = or i32 %70, %75
  %77 = sext i32 %76 to i64
  %78 = shl i64 %77, 16
  %79 = shl i64 %78, 16
  %80 = load i64, i64* %14, align 8
  %81 = or i64 %80, %79
  store i64 %81, i64* %14, align 8
  %82 = load i64, i64* %14, align 8
  %83 = load i64, i64* %13, align 8
  %84 = xor i64 %83, %82
  store i64 %84, i64* %13, align 8
  store i64 0, i64* %9, align 8
  br label %85

85:                                               ; preds = %138, %31
  %86 = load i64, i64* %9, align 8
  %87 = load i64, i64* @STBDS_SIPHASH_C_ROUNDS, align 8
  %88 = icmp ult i64 %86, %87
  br i1 %88, label %89, label %141

89:                                               ; preds = %85
  br label %90

90:                                               ; preds = %89
  %91 = load i64, i64* %11, align 8
  %92 = load i64, i64* %10, align 8
  %93 = add i64 %92, %91
  store i64 %93, i64* %10, align 8
  %94 = load i64, i64* %11, align 8
  %95 = call i32 (i64, i32, ...) bitcast (i32 (...)* @STBDS_ROTATE_LEFT to i32 (i64, i32, ...)*)(i64 %94, i32 13)
  %96 = sext i32 %95 to i64
  store i64 %96, i64* %11, align 8
  %97 = load i64, i64* %10, align 8
  %98 = load i64, i64* %11, align 8
  %99 = xor i64 %98, %97
  store i64 %99, i64* %11, align 8
  %100 = load i64, i64* %10, align 8
  %101 = load i32, i32* @STBDS_SIZE_T_BITS, align 4
  %102 = sdiv i32 %101, 2
  %103 = call i32 (i64, i32, ...) bitcast (i32 (...)* @STBDS_ROTATE_LEFT to i32 (i64, i32, ...)*)(i64 %100, i32 %102)
  %104 = sext i32 %103 to i64
  store i64 %104, i64* %10, align 8
  %105 = load i64, i64* %13, align 8
  %106 = load i64, i64* %12, align 8
  %107 = add i64 %106, %105
  store i64 %107, i64* %12, align 8
  %108 = load i64, i64* %13, align 8
  %109 = call i32 (i64, i32, ...) bitcast (i32 (...)* @STBDS_ROTATE_LEFT to i32 (i64, i32, ...)*)(i64 %108, i32 16)
  %110 = sext i32 %109 to i64
  store i64 %110, i64* %13, align 8
  %111 = load i64, i64* %12, align 8
  %112 = load i64, i64* %13, align 8
  %113 = xor i64 %112, %111
  store i64 %113, i64* %13, align 8
  %114 = load i64, i64* %11, align 8
  %115 = load i64, i64* %12, align 8
  %116 = add i64 %115, %114
  store i64 %116, i64* %12, align 8
  %117 = load i64, i64* %11, align 8
  %118 = call i32 (i64, i32, ...) bitcast (i32 (...)* @STBDS_ROTATE_LEFT to i32 (i64, i32, ...)*)(i64 %117, i32 17)
  %119 = sext i32 %118 to i64
  store i64 %119, i64* %11, align 8
  %120 = load i64, i64* %12, align 8
  %121 = load i64, i64* %11, align 8
  %122 = xor i64 %121, %120
  store i64 %122, i64* %11, align 8
  %123 = load i64, i64* %12, align 8
  %124 = load i32, i32* @STBDS_SIZE_T_BITS, align 4
  %125 = sdiv i32 %124, 2
  %126 = call i32 (i64, i32, ...) bitcast (i32 (...)* @STBDS_ROTATE_LEFT to i32 (i64, i32, ...)*)(i64 %123, i32 %125)
  %127 = sext i32 %126 to i64
  store i64 %127, i64* %12, align 8
  %128 = load i64, i64* %13, align 8
  %129 = load i64, i64* %10, align 8
  %130 = add i64 %129, %128
  store i64 %130, i64* %10, align 8
  %131 = load i64, i64* %13, align 8
  %132 = call i32 (i64, i32, ...) bitcast (i32 (...)* @STBDS_ROTATE_LEFT to i32 (i64, i32, ...)*)(i64 %131, i32 21)
  %133 = sext i32 %132 to i64
  store i64 %133, i64* %13, align 8
  %134 = load i64, i64* %10, align 8
  %135 = load i64, i64* %13, align 8
  %136 = xor i64 %135, %134
  store i64 %136, i64* %13, align 8
  br label %137

137:                                              ; preds = %90
  br label %138

138:                                              ; preds = %137
  %139 = load i64, i64* %9, align 8
  %140 = add i64 %139, 1
  store i64 %140, i64* %9, align 8
  br label %85

141:                                              ; preds = %85
  %142 = load i64, i64* %14, align 8
  %143 = load i64, i64* %10, align 8
  %144 = xor i64 %143, %142
  store i64 %144, i64* %10, align 8
  br label %145

145:                                              ; preds = %141
  %146 = load i64, i64* %8, align 8
  %147 = add i64 %146, 8
  store i64 %147, i64* %8, align 8
  %148 = load i8*, i8** %7, align 8
  %149 = getelementptr inbounds i8, i8* %148, i64 8
  store i8* %149, i8** %7, align 8
  br label %26

150:                                              ; preds = %26
  %151 = load i64, i64* %5, align 8
  %152 = load i32, i32* @STBDS_SIZE_T_BITS, align 4
  %153 = sub nsw i32 %152, 8
  %154 = zext i32 %153 to i64
  %155 = shl i64 %151, %154
  store i64 %155, i64* %14, align 8
  %156 = load i64, i64* %5, align 8
  %157 = load i64, i64* %8, align 8
  %158 = sub i64 %156, %157
  switch i64 %158, label %221 [
    i64 7, label %159
    i64 6, label %168
    i64 5, label %177
    i64 4, label %186
    i64 3, label %195
    i64 2, label %204
    i64 1, label %213
    i64 0, label %220
  ]

159:                                              ; preds = %150
  %160 = load i8*, i8** %7, align 8
  %161 = getelementptr inbounds i8, i8* %160, i64 6
  %162 = load i8, i8* %161, align 1
  %163 = zext i8 %162 to i64
  %164 = shl i64 %163, 24
  %165 = shl i64 %164, 24
  %166 = load i64, i64* %14, align 8
  %167 = or i64 %166, %165
  store i64 %167, i64* %14, align 8
  br label %168

168:                                              ; preds = %150, %159
  %169 = load i8*, i8** %7, align 8
  %170 = getelementptr inbounds i8, i8* %169, i64 5
  %171 = load i8, i8* %170, align 1
  %172 = zext i8 %171 to i64
  %173 = shl i64 %172, 20
  %174 = shl i64 %173, 20
  %175 = load i64, i64* %14, align 8
  %176 = or i64 %175, %174
  store i64 %176, i64* %14, align 8
  br label %177

177:                                              ; preds = %150, %168
  %178 = load i8*, i8** %7, align 8
  %179 = getelementptr inbounds i8, i8* %178, i64 4
  %180 = load i8, i8* %179, align 1
  %181 = zext i8 %180 to i64
  %182 = shl i64 %181, 16
  %183 = shl i64 %182, 16
  %184 = load i64, i64* %14, align 8
  %185 = or i64 %184, %183
  store i64 %185, i64* %14, align 8
  br label %186

186:                                              ; preds = %150, %177
  %187 = load i8*, i8** %7, align 8
  %188 = getelementptr inbounds i8, i8* %187, i64 3
  %189 = load i8, i8* %188, align 1
  %190 = zext i8 %189 to i32
  %191 = shl i32 %190, 24
  %192 = sext i32 %191 to i64
  %193 = load i64, i64* %14, align 8
  %194 = or i64 %193, %192
  store i64 %194, i64* %14, align 8
  br label %195

195:                                              ; preds = %150, %186
  %196 = load i8*, i8** %7, align 8
  %197 = getelementptr inbounds i8, i8* %196, i64 2
  %198 = load i8, i8* %197, align 1
  %199 = zext i8 %198 to i32
  %200 = shl i32 %199, 16
  %201 = sext i32 %200 to i64
  %202 = load i64, i64* %14, align 8
  %203 = or i64 %202, %201
  store i64 %203, i64* %14, align 8
  br label %204

204:                                              ; preds = %150, %195
  %205 = load i8*, i8** %7, align 8
  %206 = getelementptr inbounds i8, i8* %205, i64 1
  %207 = load i8, i8* %206, align 1
  %208 = zext i8 %207 to i32
  %209 = shl i32 %208, 8
  %210 = sext i32 %209 to i64
  %211 = load i64, i64* %14, align 8
  %212 = or i64 %211, %210
  store i64 %212, i64* %14, align 8
  br label %213

213:                                              ; preds = %150, %204
  %214 = load i8*, i8** %7, align 8
  %215 = getelementptr inbounds i8, i8* %214, i64 0
  %216 = load i8, i8* %215, align 1
  %217 = zext i8 %216 to i64
  %218 = load i64, i64* %14, align 8
  %219 = or i64 %218, %217
  store i64 %219, i64* %14, align 8
  br label %220

220:                                              ; preds = %150, %213
  br label %221

221:                                              ; preds = %150, %220
  %222 = load i64, i64* %14, align 8
  %223 = load i64, i64* %13, align 8
  %224 = xor i64 %223, %222
  store i64 %224, i64* %13, align 8
  store i64 0, i64* %9, align 8
  br label %225

225:                                              ; preds = %278, %221
  %226 = load i64, i64* %9, align 8
  %227 = load i64, i64* @STBDS_SIPHASH_C_ROUNDS, align 8
  %228 = icmp ult i64 %226, %227
  br i1 %228, label %229, label %281

229:                                              ; preds = %225
  br label %230

230:                                              ; preds = %229
  %231 = load i64, i64* %11, align 8
  %232 = load i64, i64* %10, align 8
  %233 = add i64 %232, %231
  store i64 %233, i64* %10, align 8
  %234 = load i64, i64* %11, align 8
  %235 = call i32 (i64, i32, ...) bitcast (i32 (...)* @STBDS_ROTATE_LEFT to i32 (i64, i32, ...)*)(i64 %234, i32 13)
  %236 = sext i32 %235 to i64
  store i64 %236, i64* %11, align 8
  %237 = load i64, i64* %10, align 8
  %238 = load i64, i64* %11, align 8
  %239 = xor i64 %238, %237
  store i64 %239, i64* %11, align 8
  %240 = load i64, i64* %10, align 8
  %241 = load i32, i32* @STBDS_SIZE_T_BITS, align 4
  %242 = sdiv i32 %241, 2
  %243 = call i32 (i64, i32, ...) bitcast (i32 (...)* @STBDS_ROTATE_LEFT to i32 (i64, i32, ...)*)(i64 %240, i32 %242)
  %244 = sext i32 %243 to i64
  store i64 %244, i64* %10, align 8
  %245 = load i64, i64* %13, align 8
  %246 = load i64, i64* %12, align 8
  %247 = add i64 %246, %245
  store i64 %247, i64* %12, align 8
  %248 = load i64, i64* %13, align 8
  %249 = call i32 (i64, i32, ...) bitcast (i32 (...)* @STBDS_ROTATE_LEFT to i32 (i64, i32, ...)*)(i64 %248, i32 16)
  %250 = sext i32 %249 to i64
  store i64 %250, i64* %13, align 8
  %251 = load i64, i64* %12, align 8
  %252 = load i64, i64* %13, align 8
  %253 = xor i64 %252, %251
  store i64 %253, i64* %13, align 8
  %254 = load i64, i64* %11, align 8
  %255 = load i64, i64* %12, align 8
  %256 = add i64 %255, %254
  store i64 %256, i64* %12, align 8
  %257 = load i64, i64* %11, align 8
  %258 = call i32 (i64, i32, ...) bitcast (i32 (...)* @STBDS_ROTATE_LEFT to i32 (i64, i32, ...)*)(i64 %257, i32 17)
  %259 = sext i32 %258 to i64
  store i64 %259, i64* %11, align 8
  %260 = load i64, i64* %12, align 8
  %261 = load i64, i64* %11, align 8
  %262 = xor i64 %261, %260
  store i64 %262, i64* %11, align 8
  %263 = load i64, i64* %12, align 8
  %264 = load i32, i32* @STBDS_SIZE_T_BITS, align 4
  %265 = sdiv i32 %264, 2
  %266 = call i32 (i64, i32, ...) bitcast (i32 (...)* @STBDS_ROTATE_LEFT to i32 (i64, i32, ...)*)(i64 %263, i32 %265)
  %267 = sext i32 %266 to i64
  store i64 %267, i64* %12, align 8
  %268 = load i64, i64* %13, align 8
  %269 = load i64, i64* %10, align 8
  %270 = add i64 %269, %268
  store i64 %270, i64* %10, align 8
  %271 = load i64, i64* %13, align 8
  %272 = call i32 (i64, i32, ...) bitcast (i32 (...)* @STBDS_ROTATE_LEFT to i32 (i64, i32, ...)*)(i64 %271, i32 21)
  %273 = sext i32 %272 to i64
  store i64 %273, i64* %13, align 8
  %274 = load i64, i64* %10, align 8
  %275 = load i64, i64* %13, align 8
  %276 = xor i64 %275, %274
  store i64 %276, i64* %13, align 8
  br label %277

277:                                              ; preds = %230
  br label %278

278:                                              ; preds = %277
  %279 = load i64, i64* %9, align 8
  %280 = add i64 %279, 1
  store i64 %280, i64* %9, align 8
  br label %225

281:                                              ; preds = %225
  %282 = load i64, i64* %14, align 8
  %283 = load i64, i64* %10, align 8
  %284 = xor i64 %283, %282
  store i64 %284, i64* %10, align 8
  %285 = load i64, i64* %12, align 8
  %286 = xor i64 %285, 255
  store i64 %286, i64* %12, align 8
  store i64 0, i64* %9, align 8
  br label %287

287:                                              ; preds = %340, %281
  %288 = load i64, i64* %9, align 8
  %289 = load i64, i64* @STBDS_SIPHASH_D_ROUNDS, align 8
  %290 = icmp ult i64 %288, %289
  br i1 %290, label %291, label %343

291:                                              ; preds = %287
  br label %292

292:                                              ; preds = %291
  %293 = load i64, i64* %11, align 8
  %294 = load i64, i64* %10, align 8
  %295 = add i64 %294, %293
  store i64 %295, i64* %10, align 8
  %296 = load i64, i64* %11, align 8
  %297 = call i32 (i64, i32, ...) bitcast (i32 (...)* @STBDS_ROTATE_LEFT to i32 (i64, i32, ...)*)(i64 %296, i32 13)
  %298 = sext i32 %297 to i64
  store i64 %298, i64* %11, align 8
  %299 = load i64, i64* %10, align 8
  %300 = load i64, i64* %11, align 8
  %301 = xor i64 %300, %299
  store i64 %301, i64* %11, align 8
  %302 = load i64, i64* %10, align 8
  %303 = load i32, i32* @STBDS_SIZE_T_BITS, align 4
  %304 = sdiv i32 %303, 2
  %305 = call i32 (i64, i32, ...) bitcast (i32 (...)* @STBDS_ROTATE_LEFT to i32 (i64, i32, ...)*)(i64 %302, i32 %304)
  %306 = sext i32 %305 to i64
  store i64 %306, i64* %10, align 8
  %307 = load i64, i64* %13, align 8
  %308 = load i64, i64* %12, align 8
  %309 = add i64 %308, %307
  store i64 %309, i64* %12, align 8
  %310 = load i64, i64* %13, align 8
  %311 = call i32 (i64, i32, ...) bitcast (i32 (...)* @STBDS_ROTATE_LEFT to i32 (i64, i32, ...)*)(i64 %310, i32 16)
  %312 = sext i32 %311 to i64
  store i64 %312, i64* %13, align 8
  %313 = load i64, i64* %12, align 8
  %314 = load i64, i64* %13, align 8
  %315 = xor i64 %314, %313
  store i64 %315, i64* %13, align 8
  %316 = load i64, i64* %11, align 8
  %317 = load i64, i64* %12, align 8
  %318 = add i64 %317, %316
  store i64 %318, i64* %12, align 8
  %319 = load i64, i64* %11, align 8
  %320 = call i32 (i64, i32, ...) bitcast (i32 (...)* @STBDS_ROTATE_LEFT to i32 (i64, i32, ...)*)(i64 %319, i32 17)
  %321 = sext i32 %320 to i64
  store i64 %321, i64* %11, align 8
  %322 = load i64, i64* %12, align 8
  %323 = load i64, i64* %11, align 8
  %324 = xor i64 %323, %322
  store i64 %324, i64* %11, align 8
  %325 = load i64, i64* %12, align 8
  %326 = load i32, i32* @STBDS_SIZE_T_BITS, align 4
  %327 = sdiv i32 %326, 2
  %328 = call i32 (i64, i32, ...) bitcast (i32 (...)* @STBDS_ROTATE_LEFT to i32 (i64, i32, ...)*)(i64 %325, i32 %327)
  %329 = sext i32 %328 to i64
  store i64 %329, i64* %12, align 8
  %330 = load i64, i64* %13, align 8
  %331 = load i64, i64* %10, align 8
  %332 = add i64 %331, %330
  store i64 %332, i64* %10, align 8
  %333 = load i64, i64* %13, align 8
  %334 = call i32 (i64, i32, ...) bitcast (i32 (...)* @STBDS_ROTATE_LEFT to i32 (i64, i32, ...)*)(i64 %333, i32 21)
  %335 = sext i32 %334 to i64
  store i64 %335, i64* %13, align 8
  %336 = load i64, i64* %10, align 8
  %337 = load i64, i64* %13, align 8
  %338 = xor i64 %337, %336
  store i64 %338, i64* %13, align 8
  br label %339

339:                                              ; preds = %292
  br label %340

340:                                              ; preds = %339
  %341 = load i64, i64* %9, align 8
  %342 = add i64 %341, 1
  store i64 %342, i64* %9, align 8
  br label %287

343:                                              ; preds = %287
  %344 = load i64, i64* %11, align 8
  %345 = load i64, i64* %12, align 8
  %346 = xor i64 %344, %345
  %347 = load i64, i64* %13, align 8
  %348 = xor i64 %346, %347
  ret i64 %348
}

declare dso_local i32 @STBDS_ROTATE_LEFT(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
