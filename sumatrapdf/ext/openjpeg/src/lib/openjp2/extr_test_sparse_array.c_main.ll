; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_test_sparse_array.c_main.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_test_sparse_array.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OPJ_FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [9999 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i32 0, i32* %1, align 4
  %9 = call i32* @opj_sparse_array_int32_create(i32 0, i32 1, i32 1, i32 1)
  store i32* %9, i32** %8, align 8
  %10 = load i32*, i32** %8, align 8
  %11 = icmp eq i32* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load i32*, i32** %8, align 8
  %15 = call i32 @opj_sparse_array_int32_free(i32* %14)
  %16 = call i32* @opj_sparse_array_int32_create(i32 1, i32 0, i32 1, i32 1)
  store i32* %16, i32** %8, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = icmp eq i32* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = call i32* @opj_sparse_array_int32_create(i32 1, i32 1, i32 0, i32 1)
  store i32* %21, i32** %8, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = icmp eq i32* %22, null
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = call i32* @opj_sparse_array_int32_create(i32 1, i32 1, i32 1, i32 0)
  store i32* %26, i32** %8, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = icmp eq i32* %27, null
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = call i32* @opj_sparse_array_int32_create(i32 99, i32 101, i32 -1, i32 -1)
  store i32* %31, i32** %8, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = icmp eq i32* %32, null
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = call i32* @opj_sparse_array_int32_create(i32 99, i32 101, i32 15, i32 17)
  store i32* %36, i32** %8, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = call i32 @opj_sparse_array_int32_free(i32* %37)
  %39 = call i32* @opj_sparse_array_int32_create(i32 99, i32 101, i32 15, i32 17)
  store i32* %39, i32** %8, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = getelementptr inbounds [9999 x i32], [9999 x i32]* %6, i64 0, i64 0
  %42 = load i32, i32* @OPJ_FALSE, align 4
  %43 = call i32 @opj_sparse_array_int32_read(i32* %40, i32 0, i32 0, i32 0, i32 1, i32* %41, i32 1, i32 1, i32 %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = call i32 @assert(i32 %47)
  %49 = load i32*, i32** %8, align 8
  %50 = getelementptr inbounds [9999 x i32], [9999 x i32]* %6, i64 0, i64 0
  %51 = load i32, i32* @OPJ_FALSE, align 4
  %52 = call i32 @opj_sparse_array_int32_read(i32* %49, i32 0, i32 0, i32 1, i32 0, i32* %50, i32 1, i32 1, i32 %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = call i32 @assert(i32 %56)
  %58 = load i32*, i32** %8, align 8
  %59 = getelementptr inbounds [9999 x i32], [9999 x i32]* %6, i64 0, i64 0
  %60 = load i32, i32* @OPJ_FALSE, align 4
  %61 = call i32 @opj_sparse_array_int32_read(i32* %58, i32 0, i32 0, i32 100, i32 1, i32* %59, i32 1, i32 1, i32 %60)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = call i32 @assert(i32 %65)
  %67 = load i32*, i32** %8, align 8
  %68 = getelementptr inbounds [9999 x i32], [9999 x i32]* %6, i64 0, i64 0
  %69 = load i32, i32* @OPJ_FALSE, align 4
  %70 = call i32 @opj_sparse_array_int32_read(i32* %67, i32 0, i32 0, i32 1, i32 102, i32* %68, i32 1, i32 1, i32 %69)
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  %73 = xor i1 %72, true
  %74 = zext i1 %73 to i32
  %75 = call i32 @assert(i32 %74)
  %76 = load i32*, i32** %8, align 8
  %77 = getelementptr inbounds [9999 x i32], [9999 x i32]* %6, i64 0, i64 0
  %78 = load i32, i32* @OPJ_FALSE, align 4
  %79 = call i32 @opj_sparse_array_int32_read(i32* %76, i32 1, i32 0, i32 0, i32 1, i32* %77, i32 1, i32 1, i32 %78)
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %80, 0
  %82 = xor i1 %81, true
  %83 = zext i1 %82 to i32
  %84 = call i32 @assert(i32 %83)
  %85 = load i32*, i32** %8, align 8
  %86 = getelementptr inbounds [9999 x i32], [9999 x i32]* %6, i64 0, i64 0
  %87 = load i32, i32* @OPJ_FALSE, align 4
  %88 = call i32 @opj_sparse_array_int32_read(i32* %85, i32 0, i32 1, i32 1, i32 0, i32* %86, i32 1, i32 1, i32 %87)
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %7, align 4
  %90 = icmp ne i32 %89, 0
  %91 = xor i1 %90, true
  %92 = zext i1 %91 to i32
  %93 = call i32 @assert(i32 %92)
  %94 = load i32*, i32** %8, align 8
  %95 = getelementptr inbounds [9999 x i32], [9999 x i32]* %6, i64 0, i64 0
  %96 = load i32, i32* @OPJ_FALSE, align 4
  %97 = call i32 @opj_sparse_array_int32_read(i32* %94, i32 99, i32 101, i32 99, i32 101, i32* %95, i32 1, i32 1, i32 %96)
  store i32 %97, i32* %7, align 4
  %98 = load i32, i32* %7, align 4
  %99 = icmp ne i32 %98, 0
  %100 = xor i1 %99, true
  %101 = zext i1 %100 to i32
  %102 = call i32 @assert(i32 %101)
  %103 = getelementptr inbounds [9999 x i32], [9999 x i32]* %6, i64 0, i64 0
  store i32 1, i32* %103, align 16
  %104 = load i32*, i32** %8, align 8
  %105 = getelementptr inbounds [9999 x i32], [9999 x i32]* %6, i64 0, i64 0
  %106 = load i32, i32* @OPJ_FALSE, align 4
  %107 = call i32 @opj_sparse_array_int32_read(i32* %104, i32 0, i32 0, i32 1, i32 1, i32* %105, i32 1, i32 1, i32 %106)
  store i32 %107, i32* %7, align 4
  %108 = load i32, i32* %7, align 4
  %109 = call i32 @assert(i32 %108)
  %110 = getelementptr inbounds [9999 x i32], [9999 x i32]* %6, i64 0, i64 0
  %111 = load i32, i32* %110, align 16
  %112 = icmp eq i32 %111, 0
  %113 = zext i1 %112 to i32
  %114 = call i32 @assert(i32 %113)
  %115 = getelementptr inbounds [9999 x i32], [9999 x i32]* %6, i64 0, i64 0
  %116 = call i32 @memset(i32* %115, i32 255, i32 39996)
  %117 = load i32*, i32** %8, align 8
  %118 = getelementptr inbounds [9999 x i32], [9999 x i32]* %6, i64 0, i64 0
  %119 = load i32, i32* @OPJ_FALSE, align 4
  %120 = call i32 @opj_sparse_array_int32_read(i32* %117, i32 0, i32 0, i32 99, i32 101, i32* %118, i32 1, i32 99, i32 %119)
  store i32 %120, i32* %7, align 4
  %121 = load i32, i32* %7, align 4
  %122 = call i32 @assert(i32 %121)
  store i32 0, i32* %2, align 4
  br label %123

123:                                              ; preds = %134, %0
  %124 = load i32, i32* %2, align 4
  %125 = icmp slt i32 %124, 9999
  br i1 %125, label %126, label %137

126:                                              ; preds = %123
  %127 = load i32, i32* %2, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [9999 x i32], [9999 x i32]* %6, i64 0, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = icmp eq i32 %130, 0
  %132 = zext i1 %131 to i32
  %133 = call i32 @assert(i32 %132)
  br label %134

134:                                              ; preds = %126
  %135 = load i32, i32* %2, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %2, align 4
  br label %123

137:                                              ; preds = %123
  %138 = getelementptr inbounds [9999 x i32], [9999 x i32]* %6, i64 0, i64 0
  store i32 1, i32* %138, align 16
  %139 = load i32*, i32** %8, align 8
  %140 = getelementptr inbounds [9999 x i32], [9999 x i32]* %6, i64 0, i64 0
  %141 = load i32, i32* @OPJ_FALSE, align 4
  %142 = call i32 @opj_sparse_array_int32_write(i32* %139, i32 4, i32 5, i32 5, i32 6, i32* %140, i32 1, i32 1, i32 %141)
  store i32 %142, i32* %7, align 4
  %143 = load i32, i32* %7, align 4
  %144 = call i32 @assert(i32 %143)
  %145 = getelementptr inbounds [9999 x i32], [9999 x i32]* %6, i64 0, i64 0
  store i32 2, i32* %145, align 16
  %146 = load i32*, i32** %8, align 8
  %147 = getelementptr inbounds [9999 x i32], [9999 x i32]* %6, i64 0, i64 0
  %148 = load i32, i32* @OPJ_FALSE, align 4
  %149 = call i32 @opj_sparse_array_int32_write(i32* %146, i32 4, i32 5, i32 5, i32 6, i32* %147, i32 1, i32 1, i32 %148)
  store i32 %149, i32* %7, align 4
  %150 = load i32, i32* %7, align 4
  %151 = call i32 @assert(i32 %150)
  %152 = getelementptr inbounds [9999 x i32], [9999 x i32]* %6, i64 0, i64 0
  store i32 0, i32* %152, align 16
  %153 = getelementptr inbounds [9999 x i32], [9999 x i32]* %6, i64 0, i64 1
  store i32 255, i32* %153, align 4
  %154 = load i32*, i32** %8, align 8
  %155 = getelementptr inbounds [9999 x i32], [9999 x i32]* %6, i64 0, i64 0
  %156 = load i32, i32* @OPJ_FALSE, align 4
  %157 = call i32 @opj_sparse_array_int32_read(i32* %154, i32 4, i32 5, i32 5, i32 6, i32* %155, i32 1, i32 1, i32 %156)
  store i32 %157, i32* %7, align 4
  %158 = load i32, i32* %7, align 4
  %159 = call i32 @assert(i32 %158)
  %160 = getelementptr inbounds [9999 x i32], [9999 x i32]* %6, i64 0, i64 0
  %161 = load i32, i32* %160, align 16
  %162 = icmp eq i32 %161, 2
  %163 = zext i1 %162 to i32
  %164 = call i32 @assert(i32 %163)
  %165 = getelementptr inbounds [9999 x i32], [9999 x i32]* %6, i64 0, i64 1
  %166 = load i32, i32* %165, align 4
  %167 = icmp eq i32 %166, 255
  %168 = zext i1 %167 to i32
  %169 = call i32 @assert(i32 %168)
  %170 = getelementptr inbounds [9999 x i32], [9999 x i32]* %6, i64 0, i64 0
  store i32 255, i32* %170, align 16
  %171 = getelementptr inbounds [9999 x i32], [9999 x i32]* %6, i64 0, i64 1
  store i32 255, i32* %171, align 4
  %172 = getelementptr inbounds [9999 x i32], [9999 x i32]* %6, i64 0, i64 2
  store i32 255, i32* %172, align 8
  %173 = load i32*, i32** %8, align 8
  %174 = getelementptr inbounds [9999 x i32], [9999 x i32]* %6, i64 0, i64 0
  %175 = load i32, i32* @OPJ_FALSE, align 4
  %176 = call i32 @opj_sparse_array_int32_read(i32* %173, i32 4, i32 5, i32 5, i32 7, i32* %174, i32 0, i32 1, i32 %175)
  store i32 %176, i32* %7, align 4
  %177 = load i32, i32* %7, align 4
  %178 = call i32 @assert(i32 %177)
  %179 = getelementptr inbounds [9999 x i32], [9999 x i32]* %6, i64 0, i64 0
  %180 = load i32, i32* %179, align 16
  %181 = icmp eq i32 %180, 2
  %182 = zext i1 %181 to i32
  %183 = call i32 @assert(i32 %182)
  %184 = getelementptr inbounds [9999 x i32], [9999 x i32]* %6, i64 0, i64 1
  %185 = load i32, i32* %184, align 4
  %186 = icmp eq i32 %185, 0
  %187 = zext i1 %186 to i32
  %188 = call i32 @assert(i32 %187)
  %189 = getelementptr inbounds [9999 x i32], [9999 x i32]* %6, i64 0, i64 2
  %190 = load i32, i32* %189, align 8
  %191 = icmp eq i32 %190, 255
  %192 = zext i1 %191 to i32
  %193 = call i32 @assert(i32 %192)
  %194 = getelementptr inbounds [9999 x i32], [9999 x i32]* %6, i64 0, i64 0
  store i32 3, i32* %194, align 16
  %195 = load i32*, i32** %8, align 8
  %196 = getelementptr inbounds [9999 x i32], [9999 x i32]* %6, i64 0, i64 0
  %197 = load i32, i32* @OPJ_FALSE, align 4
  %198 = call i32 @opj_sparse_array_int32_write(i32* %195, i32 4, i32 5, i32 5, i32 6, i32* %196, i32 0, i32 1, i32 %197)
  store i32 %198, i32* %7, align 4
  %199 = load i32, i32* %7, align 4
  %200 = call i32 @assert(i32 %199)
  %201 = getelementptr inbounds [9999 x i32], [9999 x i32]* %6, i64 0, i64 0
  store i32 0, i32* %201, align 16
  %202 = getelementptr inbounds [9999 x i32], [9999 x i32]* %6, i64 0, i64 1
  store i32 255, i32* %202, align 4
  %203 = load i32*, i32** %8, align 8
  %204 = getelementptr inbounds [9999 x i32], [9999 x i32]* %6, i64 0, i64 0
  %205 = load i32, i32* @OPJ_FALSE, align 4
  %206 = call i32 @opj_sparse_array_int32_read(i32* %203, i32 4, i32 5, i32 5, i32 6, i32* %204, i32 1, i32 1, i32 %205)
  store i32 %206, i32* %7, align 4
  %207 = load i32, i32* %7, align 4
  %208 = call i32 @assert(i32 %207)
  %209 = getelementptr inbounds [9999 x i32], [9999 x i32]* %6, i64 0, i64 0
  %210 = load i32, i32* %209, align 16
  %211 = icmp eq i32 %210, 3
  %212 = zext i1 %211 to i32
  %213 = call i32 @assert(i32 %212)
  %214 = getelementptr inbounds [9999 x i32], [9999 x i32]* %6, i64 0, i64 1
  %215 = load i32, i32* %214, align 4
  %216 = icmp eq i32 %215, 255
  %217 = zext i1 %216 to i32
  %218 = call i32 @assert(i32 %217)
  store i32 16, i32* %4, align 4
  store i32 18, i32* %5, align 4
  %219 = getelementptr inbounds [9999 x i32], [9999 x i32]* %6, i64 0, i64 0
  %220 = call i32 @memset(i32* %219, i32 255, i32 39996)
  %221 = load i32*, i32** %8, align 8
  %222 = load i32, i32* %4, align 4
  %223 = add nsw i32 2, %222
  %224 = load i32, i32* %5, align 4
  %225 = add nsw i32 1, %224
  %226 = getelementptr inbounds [9999 x i32], [9999 x i32]* %6, i64 0, i64 0
  %227 = load i32, i32* %4, align 4
  %228 = load i32, i32* @OPJ_FALSE, align 4
  %229 = call i32 @opj_sparse_array_int32_read(i32* %221, i32 2, i32 1, i32 %223, i32 %225, i32* %226, i32 1, i32 %227, i32 %228)
  store i32 %229, i32* %7, align 4
  %230 = load i32, i32* %7, align 4
  %231 = call i32 @assert(i32 %230)
  store i32 0, i32* %3, align 4
  br label %232

232:                                              ; preds = %276, %137
  %233 = load i32, i32* %3, align 4
  %234 = load i32, i32* %5, align 4
  %235 = icmp slt i32 %233, %234
  br i1 %235, label %236, label %279

236:                                              ; preds = %232
  store i32 0, i32* %2, align 4
  br label %237

237:                                              ; preds = %272, %236
  %238 = load i32, i32* %2, align 4
  %239 = load i32, i32* %4, align 4
  %240 = icmp slt i32 %238, %239
  br i1 %240, label %241, label %275

241:                                              ; preds = %237
  %242 = load i32, i32* %2, align 4
  %243 = icmp eq i32 %242, 2
  br i1 %243, label %244, label %259

244:                                              ; preds = %241
  %245 = load i32, i32* %3, align 4
  %246 = icmp eq i32 %245, 4
  br i1 %246, label %247, label %259

247:                                              ; preds = %244
  %248 = load i32, i32* %3, align 4
  %249 = load i32, i32* %4, align 4
  %250 = mul nsw i32 %248, %249
  %251 = load i32, i32* %2, align 4
  %252 = add nsw i32 %250, %251
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds [9999 x i32], [9999 x i32]* %6, i64 0, i64 %253
  %255 = load i32, i32* %254, align 4
  %256 = icmp eq i32 %255, 3
  %257 = zext i1 %256 to i32
  %258 = call i32 @assert(i32 %257)
  br label %271

259:                                              ; preds = %244, %241
  %260 = load i32, i32* %3, align 4
  %261 = load i32, i32* %4, align 4
  %262 = mul nsw i32 %260, %261
  %263 = load i32, i32* %2, align 4
  %264 = add nsw i32 %262, %263
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds [9999 x i32], [9999 x i32]* %6, i64 0, i64 %265
  %267 = load i32, i32* %266, align 4
  %268 = icmp eq i32 %267, 0
  %269 = zext i1 %268 to i32
  %270 = call i32 @assert(i32 %269)
  br label %271

271:                                              ; preds = %259, %247
  br label %272

272:                                              ; preds = %271
  %273 = load i32, i32* %2, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %2, align 4
  br label %237

275:                                              ; preds = %237
  br label %276

276:                                              ; preds = %275
  %277 = load i32, i32* %3, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %3, align 4
  br label %232

279:                                              ; preds = %232
  %280 = load i32*, i32** %8, align 8
  %281 = call i32 @opj_sparse_array_int32_free(i32* %280)
  %282 = call i32* @opj_sparse_array_int32_create(i32 99, i32 101, i32 15, i32 17)
  store i32* %282, i32** %8, align 8
  %283 = getelementptr inbounds [9999 x i32], [9999 x i32]* %6, i64 0, i64 0
  %284 = call i32 @memset(i32* %283, i32 255, i32 39996)
  %285 = load i32*, i32** %8, align 8
  %286 = getelementptr inbounds [9999 x i32], [9999 x i32]* %6, i64 0, i64 0
  %287 = load i32, i32* @OPJ_FALSE, align 4
  %288 = call i32 @opj_sparse_array_int32_read(i32* %285, i32 0, i32 0, i32 2, i32 1, i32* %286, i32 2, i32 4, i32 %287)
  store i32 %288, i32* %7, align 4
  %289 = load i32, i32* %7, align 4
  %290 = call i32 @assert(i32 %289)
  %291 = getelementptr inbounds [9999 x i32], [9999 x i32]* %6, i64 0, i64 0
  %292 = load i32, i32* %291, align 16
  %293 = icmp eq i32 %292, 0
  %294 = zext i1 %293 to i32
  %295 = call i32 @assert(i32 %294)
  %296 = getelementptr inbounds [9999 x i32], [9999 x i32]* %6, i64 0, i64 1
  %297 = load i32, i32* %296, align 4
  %298 = icmp eq i32 %297, -1
  %299 = zext i1 %298 to i32
  %300 = call i32 @assert(i32 %299)
  %301 = getelementptr inbounds [9999 x i32], [9999 x i32]* %6, i64 0, i64 2
  %302 = load i32, i32* %301, align 8
  %303 = icmp eq i32 %302, 0
  %304 = zext i1 %303 to i32
  %305 = call i32 @assert(i32 %304)
  %306 = getelementptr inbounds [9999 x i32], [9999 x i32]* %6, i64 0, i64 0
  store i32 1, i32* %306, align 16
  %307 = getelementptr inbounds [9999 x i32], [9999 x i32]* %6, i64 0, i64 2
  store i32 3, i32* %307, align 8
  %308 = load i32*, i32** %8, align 8
  %309 = getelementptr inbounds [9999 x i32], [9999 x i32]* %6, i64 0, i64 0
  %310 = load i32, i32* @OPJ_FALSE, align 4
  %311 = call i32 @opj_sparse_array_int32_write(i32* %308, i32 0, i32 0, i32 2, i32 1, i32* %309, i32 2, i32 4, i32 %310)
  store i32 %311, i32* %7, align 4
  %312 = load i32, i32* %7, align 4
  %313 = call i32 @assert(i32 %312)
  %314 = getelementptr inbounds [9999 x i32], [9999 x i32]* %6, i64 0, i64 0
  %315 = call i32 @memset(i32* %314, i32 255, i32 39996)
  %316 = load i32*, i32** %8, align 8
  %317 = getelementptr inbounds [9999 x i32], [9999 x i32]* %6, i64 0, i64 0
  %318 = load i32, i32* @OPJ_FALSE, align 4
  %319 = call i32 @opj_sparse_array_int32_read(i32* %316, i32 0, i32 0, i32 2, i32 1, i32* %317, i32 2, i32 4, i32 %318)
  store i32 %319, i32* %7, align 4
  %320 = load i32, i32* %7, align 4
  %321 = call i32 @assert(i32 %320)
  %322 = getelementptr inbounds [9999 x i32], [9999 x i32]* %6, i64 0, i64 0
  %323 = load i32, i32* %322, align 16
  %324 = icmp eq i32 %323, 1
  %325 = zext i1 %324 to i32
  %326 = call i32 @assert(i32 %325)
  %327 = getelementptr inbounds [9999 x i32], [9999 x i32]* %6, i64 0, i64 1
  %328 = load i32, i32* %327, align 4
  %329 = icmp eq i32 %328, -1
  %330 = zext i1 %329 to i32
  %331 = call i32 @assert(i32 %330)
  %332 = getelementptr inbounds [9999 x i32], [9999 x i32]* %6, i64 0, i64 2
  %333 = load i32, i32* %332, align 8
  %334 = icmp eq i32 %333, 3
  %335 = zext i1 %334 to i32
  %336 = call i32 @assert(i32 %335)
  %337 = load i32*, i32** %8, align 8
  %338 = call i32 @opj_sparse_array_int32_free(i32* %337)
  ret i32 0
}

declare dso_local i32* @opj_sparse_array_int32_create(i32, i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @opj_sparse_array_int32_free(i32*) #1

declare dso_local i32 @opj_sparse_array_int32_read(i32*, i32, i32, i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @opj_sparse_array_int32_write(i32*, i32, i32, i32, i32, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
