; ModuleID = '/home/carl/AnghaBench/vlc/test/src/misc/extr_bits.c_run_tests.c'
source_filename = "/home/carl/AnghaBench/vlc/test/src/misc/extr_bits.c_run_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.testset = type { i32, i32* }

@TESTSET0 = common dso_local global i64 0, align 8
@TESTSET1 = common dso_local global i64 0, align 8
@TESTSET_EXPGOLOMB = common dso_local global i64 0, align 8
@TESTSET2 = common dso_local global i64 0, align 8
@__const.run_tests.bufok = private unnamed_addr constant [5 x i32] [i32 125, i32 247, i32 223, i32 125, i32 247], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.testset*, i8*, i32*, i8*, void (i8*)*)* @run_tests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_tests(%struct.testset* %0, i8* %1, i32* %2, i8* %3, void (i8*)* %4) #0 {
  %6 = alloca %struct.testset*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca void (i8*)*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca [5 x i32], align 16
  %14 = alloca [5 x i32], align 16
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.testset* %0, %struct.testset** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  store void (i8*)* %4, void (i8*)** %10, align 8
  %17 = call i32 @bs_init(i32* %11, i32* null, i32 0)
  %18 = call i32 @bs_remain(i32* %11)
  %19 = call i32 @test_assert(i32 %18, i32 0)
  %20 = call i32 @bs_pos(i32* %11)
  %21 = call i32 @test_assert(i32 %20, i32 0)
  %22 = load %struct.testset*, %struct.testset** %6, align 8
  %23 = load i64, i64* @TESTSET0, align 8
  %24 = getelementptr inbounds %struct.testset, %struct.testset* %22, i64 %23
  %25 = getelementptr inbounds %struct.testset, %struct.testset* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @bs_init(i32* %11, i32* %26, i32 0)
  %28 = call i32 @bs_remain(i32* %11)
  %29 = call i32 @test_assert(i32 %28, i32 0)
  %30 = call i32 @bs_pos(i32* %11)
  %31 = call i32 @test_assert(i32 %30, i32 0)
  %32 = load %struct.testset*, %struct.testset** %6, align 8
  %33 = load i64, i64* @TESTSET0, align 8
  %34 = getelementptr inbounds %struct.testset, %struct.testset* %32, i64 %33
  %35 = getelementptr inbounds %struct.testset, %struct.testset* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.testset*, %struct.testset** %6, align 8
  %38 = load i64, i64* @TESTSET0, align 8
  %39 = getelementptr inbounds %struct.testset, %struct.testset* %37, i64 %38
  %40 = getelementptr inbounds %struct.testset, %struct.testset* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @bs_init(i32* %11, i32* %36, i32 %41)
  %43 = call i32 @bs_remain(i32* %11)
  %44 = call i32 @test_assert(i32 %43, i32 8)
  %45 = call i32 @bs_pos(i32* %11)
  %46 = call i32 @test_assert(i32 %45, i32 0)
  %47 = call i32 @bs_skip(i32* %11, i32 3)
  %48 = call i32 @bs_remain(i32* %11)
  %49 = call i32 @test_assert(i32 %48, i32 5)
  %50 = call i32 @bs_pos(i32* %11)
  %51 = call i32 @test_assert(i32 %50, i32 3)
  %52 = load %struct.testset*, %struct.testset** %6, align 8
  %53 = load i64, i64* @TESTSET1, align 8
  %54 = getelementptr inbounds %struct.testset, %struct.testset* %52, i64 %53
  %55 = getelementptr inbounds %struct.testset, %struct.testset* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load %struct.testset*, %struct.testset** %6, align 8
  %58 = load i64, i64* @TESTSET1, align 8
  %59 = getelementptr inbounds %struct.testset, %struct.testset* %57, i64 %58
  %60 = getelementptr inbounds %struct.testset, %struct.testset* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @bs_init(i32* %11, i32* %56, i32 %61)
  %63 = call i32 @bs_remain(i32* %11)
  %64 = call i32 @test_assert(i32 %63, i32 16)
  %65 = call i32 @bs_write(i32* %11, i32 1, i32 0)
  %66 = call i32 @bs_remain(i32* %11)
  %67 = call i32 @test_assert(i32 %66, i32 16)
  %68 = call i32 @bs_read1(i32* %11)
  %69 = call i32 @bs_remain(i32* %11)
  %70 = call i32 @test_assert(i32 %69, i32 15)
  %71 = call i32 @bs_pos(i32* %11)
  %72 = call i32 @test_assert(i32 %71, i32 1)
  %73 = call i32 @bs_read(i32* %11, i32 7)
  %74 = call i32 @bs_remain(i32* %11)
  %75 = call i32 @test_assert(i32 %74, i32 8)
  %76 = call i32 @bs_pos(i32* %11)
  %77 = call i32 @test_assert(i32 %76, i32 8)
  %78 = call i32 @bs_read1(i32* %11)
  %79 = call i32 @bs_remain(i32* %11)
  %80 = call i32 @test_assert(i32 %79, i32 7)
  %81 = call i32 @bs_pos(i32* %11)
  %82 = call i32 @test_assert(i32 %81, i32 9)
  %83 = call i32 @bs_align(i32* %11)
  %84 = call i32 @bs_remain(i32* %11)
  %85 = call i32 @test_assert(i32 %84, i32 0)
  %86 = call i32 @bs_pos(i32* %11)
  %87 = call i32 @test_assert(i32 %86, i32 16)
  %88 = load %struct.testset*, %struct.testset** %6, align 8
  %89 = load i64, i64* @TESTSET1, align 8
  %90 = getelementptr inbounds %struct.testset, %struct.testset* %88, i64 %89
  %91 = getelementptr inbounds %struct.testset, %struct.testset* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = load %struct.testset*, %struct.testset** %6, align 8
  %94 = load i64, i64* @TESTSET1, align 8
  %95 = getelementptr inbounds %struct.testset, %struct.testset* %93, i64 %94
  %96 = getelementptr inbounds %struct.testset, %struct.testset* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @bs_init(i32* %11, i32* %92, i32 %97)
  %99 = call i32 @bs_read(i32* %11, i32 4)
  %100 = call i32 @test_assert(i32 %99, i32 10)
  %101 = call i32 @bs_read(i32* %11, i32 12)
  %102 = call i32 @test_assert(i32 %101, i32 2645)
  %103 = load %struct.testset*, %struct.testset** %6, align 8
  %104 = load i64, i64* @TESTSET_EXPGOLOMB, align 8
  %105 = getelementptr inbounds %struct.testset, %struct.testset* %103, i64 %104
  %106 = getelementptr inbounds %struct.testset, %struct.testset* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = load %struct.testset*, %struct.testset** %6, align 8
  %109 = load i64, i64* @TESTSET_EXPGOLOMB, align 8
  %110 = getelementptr inbounds %struct.testset, %struct.testset* %108, i64 %109
  %111 = getelementptr inbounds %struct.testset, %struct.testset* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @bs_init(i32* %11, i32* %107, i32 %112)
  %114 = call i32 @bs_read_ue(i32* %11)
  %115 = call i32 @test_assert(i32 %114, i32 9)
  %116 = call i32 @bs_remain(i32* %11)
  %117 = call i32 @test_assert(i32 %116, i32 9)
  %118 = call i32 @bs_read1(i32* %11)
  %119 = call i32 @test_assert(i32 %118, i32 1)
  %120 = call i32 @bs_read_se(i32* %11)
  %121 = call i32 @test_assert(i32 %120, i32 2)
  %122 = call i32 @bs_remain(i32* %11)
  %123 = call i32 @test_assert(i32 %122, i32 3)
  %124 = call i32 @bs_read_se(i32* %11)
  %125 = call i32 @test_assert(i32 %124, i32 -1)
  %126 = call i32 @bs_eof(i32* %11)
  %127 = call i32 @test_assert(i32 %126, i32 1)
  %128 = load %struct.testset*, %struct.testset** %6, align 8
  %129 = load i64, i64* @TESTSET2, align 8
  %130 = getelementptr inbounds %struct.testset, %struct.testset* %128, i64 %129
  %131 = getelementptr inbounds %struct.testset, %struct.testset* %130, i32 0, i32 1
  %132 = load i32*, i32** %131, align 8
  %133 = load %struct.testset*, %struct.testset** %6, align 8
  %134 = load i64, i64* @TESTSET2, align 8
  %135 = getelementptr inbounds %struct.testset, %struct.testset* %133, i64 %134
  %136 = getelementptr inbounds %struct.testset, %struct.testset* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @bs_init(i32* %11, i32* %132, i32 %137)
  %139 = call i32 @bs_skip(i32* %11, i32 24)
  %140 = call i32 @bs_read(i32* %11, i32 8)
  %141 = call i32 @test_assert(i32 %140, i32 221)
  %142 = call i32 @bs_read(i32* %11, i32 4)
  %143 = call i32 @test_assert(i32 %142, i32 14)
  %144 = call i32 @bs_read(i32* %11, i32 8)
  %145 = call i32 @test_assert(i32 %144, i32 239)
  %146 = call i32 @bs_remain(i32* %11)
  %147 = call i32 @test_assert(i32 %146, i32 4)
  %148 = load %struct.testset*, %struct.testset** %6, align 8
  %149 = load i64, i64* @TESTSET2, align 8
  %150 = getelementptr inbounds %struct.testset, %struct.testset* %148, i64 %149
  %151 = getelementptr inbounds %struct.testset, %struct.testset* %150, i32 0, i32 1
  %152 = load i32*, i32** %151, align 8
  %153 = load %struct.testset*, %struct.testset** %6, align 8
  %154 = load i64, i64* @TESTSET2, align 8
  %155 = getelementptr inbounds %struct.testset, %struct.testset* %153, i64 %154
  %156 = getelementptr inbounds %struct.testset, %struct.testset* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @bs_init(i32* %11, i32* %152, i32 %157)
  %159 = call i32 @bs_skip(i32* %11, i32 40)
  %160 = call i32 @bs_read(i32* %11, i32 8)
  %161 = call i32 @test_assert(i32 %160, i32 255)
  %162 = load %struct.testset*, %struct.testset** %6, align 8
  %163 = load i64, i64* @TESTSET2, align 8
  %164 = getelementptr inbounds %struct.testset, %struct.testset* %162, i64 %163
  %165 = getelementptr inbounds %struct.testset, %struct.testset* %164, i32 0, i32 1
  %166 = load i32*, i32** %165, align 8
  %167 = load %struct.testset*, %struct.testset** %6, align 8
  %168 = load i64, i64* @TESTSET2, align 8
  %169 = getelementptr inbounds %struct.testset, %struct.testset* %167, i64 %168
  %170 = getelementptr inbounds %struct.testset, %struct.testset* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @bs_init(i32* %11, i32* %166, i32 %171)
  %173 = call i32 @bs_skip(i32* %11, i32 20)
  %174 = call i32 @bs_read(i32* %11, i32 8)
  %175 = call i32 @test_assert(i32 %174, i32 205)
  %176 = call i32 @bs_read(i32* %11, i32 4)
  %177 = call i32 @test_assert(i32 %176, i32 13)
  %178 = call i32 @bs_read(i32* %11, i32 8)
  %179 = call i32 @test_assert(i32 %178, i32 238)
  %180 = call i32 @bs_remain(i32* %11)
  %181 = call i32 @test_assert(i32 %180, i32 8)
  %182 = load %struct.testset*, %struct.testset** %6, align 8
  %183 = load i64, i64* @TESTSET2, align 8
  %184 = getelementptr inbounds %struct.testset, %struct.testset* %182, i64 %183
  %185 = getelementptr inbounds %struct.testset, %struct.testset* %184, i32 0, i32 1
  %186 = load i32*, i32** %185, align 8
  %187 = load %struct.testset*, %struct.testset** %6, align 8
  %188 = load i64, i64* @TESTSET2, align 8
  %189 = getelementptr inbounds %struct.testset, %struct.testset* %187, i64 %188
  %190 = getelementptr inbounds %struct.testset, %struct.testset* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = call i32 @bs_init(i32* %11, i32* %186, i32 %191)
  store i64 0, i64* %12, align 8
  br label %193

193:                                              ; preds = %215, %5
  %194 = load i64, i64* %12, align 8
  %195 = icmp ult i64 %194, 48
  br i1 %195, label %196, label %218

196:                                              ; preds = %193
  %197 = call i32 @bs_aligned(i32* %11)
  %198 = load i64, i64* %12, align 8
  %199 = urem i64 %198, 8
  %200 = icmp eq i64 %199, 0
  %201 = xor i1 %200, true
  %202 = xor i1 %201, true
  %203 = zext i1 %202 to i32
  %204 = call i32 @test_assert(i32 %197, i32 %203)
  %205 = call i32 @bs_remain(i32* %11)
  %206 = load i64, i64* %12, align 8
  %207 = sub i64 48, %206
  %208 = trunc i64 %207 to i32
  %209 = call i32 @test_assert(i32 %205, i32 %208)
  %210 = call i32 @bs_pos(i32* %11)
  %211 = load i64, i64* %12, align 8
  %212 = trunc i64 %211 to i32
  %213 = call i32 @test_assert(i32 %210, i32 %212)
  %214 = call i32 @bs_read(i32* %11, i32 1)
  br label %215

215:                                              ; preds = %196
  %216 = load i64, i64* %12, align 8
  %217 = add i64 %216, 1
  store i64 %217, i64* %12, align 8
  br label %193

218:                                              ; preds = %193
  %219 = call i32 @bs_eof(i32* %11)
  %220 = call i32 @test_assert(i32 %219, i32 1)
  %221 = bitcast [5 x i32]* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %221, i8 0, i64 20, i1 false)
  %222 = bitcast [5 x i32]* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %222, i8* align 16 bitcast ([5 x i32]* @__const.run_tests.bufok to i8*), i64 20, i1 false)
  %223 = bitcast [5 x i32]* %13 to i32**
  %224 = call i32 @bs_write_init(i32* %11, i32** %223, i32 5)
  %225 = call i32 @bs_write(i32* %11, i32 1, i32 1)
  %226 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 0
  %227 = load i32, i32* %226, align 16
  %228 = call i32 @test_assert(i32 %227, i32 128)
  %229 = call i32 @bs_write(i32* %11, i32 2, i32 0)
  %230 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 0
  %231 = load i32, i32* %230, align 16
  %232 = call i32 @test_assert(i32 %231, i32 128)
  %233 = call i32 @bs_write(i32* %11, i32 1, i32 1)
  %234 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 0
  %235 = load i32, i32* %234, align 16
  %236 = call i32 @test_assert(i32 %235, i32 144)
  %237 = bitcast [5 x i32]* %13 to i32**
  %238 = call i32 @bs_write_init(i32* %11, i32** %237, i32 5)
  store i64 0, i64* %15, align 8
  store i64 0, i64* %16, align 8
  br label %239

239:                                              ; preds = %280, %218
  %240 = load i64, i64* %15, align 8
  %241 = icmp ult i64 %240, 40
  br i1 %241, label %242, label %283

242:                                              ; preds = %239
  %243 = call i32 @bs_aligned(i32* %11)
  %244 = load i64, i64* %15, align 8
  %245 = urem i64 %244, 8
  %246 = icmp eq i64 %245, 0
  %247 = xor i1 %246, true
  %248 = xor i1 %247, true
  %249 = zext i1 %248 to i32
  %250 = call i32 @test_assert(i32 %243, i32 %249)
  %251 = call i32 @bs_remain(i32* %11)
  %252 = load i64, i64* %15, align 8
  %253 = sub i64 40, %252
  %254 = trunc i64 %253 to i32
  %255 = call i32 @test_assert(i32 %251, i32 %254)
  %256 = call i32 @bs_pos(i32* %11)
  %257 = load i64, i64* %15, align 8
  %258 = trunc i64 %257 to i32
  %259 = call i32 @test_assert(i32 %256, i32 %258)
  %260 = load i64, i64* %16, align 8
  %261 = urem i64 %260, 4
  %262 = trunc i64 %261 to i32
  %263 = load i64, i64* %15, align 8
  %264 = urem i64 %263, 2
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %272

266:                                              ; preds = %242
  %267 = load i64, i64* %16, align 8
  %268 = urem i64 %267, 4
  %269 = sub i64 8, %268
  %270 = trunc i64 %269 to i32
  %271 = ashr i32 255, %270
  br label %273

272:                                              ; preds = %242
  br label %273

273:                                              ; preds = %272, %266
  %274 = phi i32 [ %271, %266 ], [ 0, %272 ]
  %275 = call i32 @bs_write(i32* %11, i32 %262, i32 %274)
  %276 = load i64, i64* %16, align 8
  %277 = urem i64 %276, 4
  %278 = load i64, i64* %15, align 8
  %279 = add i64 %278, %277
  store i64 %279, i64* %15, align 8
  br label %280

280:                                              ; preds = %273
  %281 = load i64, i64* %16, align 8
  %282 = add i64 %281, 1
  store i64 %282, i64* %16, align 8
  br label %239

283:                                              ; preds = %239
  %284 = call i32 @bs_eof(i32* %11)
  %285 = call i32 @test_assert(i32 %284, i32 1)
  %286 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 0
  %287 = getelementptr inbounds [5 x i32], [5 x i32]* %14, i64 0, i64 0
  %288 = call i32 @memcmp(i32* %286, i32* %287, i32 5)
  %289 = icmp ne i32 %288, 0
  %290 = xor i1 %289, true
  %291 = zext i1 %290 to i32
  %292 = call i32 @test_assert(i32 %291, i32 1)
  %293 = bitcast [5 x i32]* %13 to i32**
  %294 = call i32 @bs_write_init(i32* %11, i32** %293, i32 5)
  %295 = call i32 @bs_write(i32* %11, i32 1, i32 0)
  %296 = call i32 @bs_write_align(i32* %11, i32 1)
  %297 = call i32 @bs_aligned(i32* %11)
  %298 = call i32 @test_assert(i32 %297, i32 1)
  %299 = call i32 @bs_pos(i32* %11)
  %300 = call i32 @test_assert(i32 %299, i32 8)
  %301 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 0
  %302 = load i32, i32* %301, align 16
  %303 = call i32 @test_assert(i32 %302, i32 127)
  %304 = call i32 @bs_write(i32* %11, i32 1, i32 1)
  %305 = call i32 @bs_write_align(i32* %11, i32 0)
  %306 = call i32 @bs_aligned(i32* %11)
  %307 = call i32 @test_assert(i32 %306, i32 1)
  %308 = call i32 @bs_pos(i32* %11)
  %309 = call i32 @test_assert(i32 %308, i32 16)
  %310 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 1
  %311 = load i32, i32* %310, align 4
  %312 = call i32 @test_assert(i32 %311, i32 128)
  %313 = load %struct.testset*, %struct.testset** %6, align 8
  %314 = load i64, i64* @TESTSET1, align 8
  %315 = getelementptr inbounds %struct.testset, %struct.testset* %313, i64 %314
  %316 = getelementptr inbounds %struct.testset, %struct.testset* %315, i32 0, i32 1
  %317 = load i32*, i32** %316, align 8
  %318 = load %struct.testset*, %struct.testset** %6, align 8
  %319 = load i64, i64* @TESTSET1, align 8
  %320 = getelementptr inbounds %struct.testset, %struct.testset* %318, i64 %319
  %321 = getelementptr inbounds %struct.testset, %struct.testset* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 8
  %323 = call i32 @bs_init(i32* %11, i32* %317, i32 %322)
  %324 = call i32 @bs_read(i32* %11, i32 42)
  %325 = call i32 @bs_remain(i32* %11)
  %326 = call i32 @test_assert(i32 %325, i32 0)
  %327 = call i32 @bs_pos(i32* %11)
  %328 = call i32 @test_assert(i32 %327, i32 16)
  %329 = load %struct.testset*, %struct.testset** %6, align 8
  %330 = load i64, i64* @TESTSET1, align 8
  %331 = getelementptr inbounds %struct.testset, %struct.testset* %329, i64 %330
  %332 = getelementptr inbounds %struct.testset, %struct.testset* %331, i32 0, i32 1
  %333 = load i32*, i32** %332, align 8
  %334 = load %struct.testset*, %struct.testset** %6, align 8
  %335 = load i64, i64* @TESTSET1, align 8
  %336 = getelementptr inbounds %struct.testset, %struct.testset* %334, i64 %335
  %337 = getelementptr inbounds %struct.testset, %struct.testset* %336, i32 0, i32 0
  %338 = load i32, i32* %337, align 8
  %339 = call i32 @bs_init(i32* %11, i32* %333, i32 %338)
  %340 = call i32 @bs_skip(i32* %11, i32 42)
  %341 = call i32 @bs_remain(i32* %11)
  %342 = call i32 @test_assert(i32 %341, i32 0)
  %343 = call i32 @bs_pos(i32* %11)
  %344 = call i32 @test_assert(i32 %343, i32 16)
  %345 = load %struct.testset*, %struct.testset** %6, align 8
  %346 = load i64, i64* @TESTSET1, align 8
  %347 = getelementptr inbounds %struct.testset, %struct.testset* %345, i64 %346
  %348 = getelementptr inbounds %struct.testset, %struct.testset* %347, i32 0, i32 1
  %349 = load i32*, i32** %348, align 8
  %350 = load %struct.testset*, %struct.testset** %6, align 8
  %351 = load i64, i64* @TESTSET1, align 8
  %352 = getelementptr inbounds %struct.testset, %struct.testset* %350, i64 %351
  %353 = getelementptr inbounds %struct.testset, %struct.testset* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 8
  %355 = call i32 @bs_init(i32* %11, i32* %349, i32 %354)
  %356 = call i32 @bs_skip(i32* %11, i32 8)
  %357 = call i32 @bs_remain(i32* %11)
  %358 = call i32 @test_assert(i32 %357, i32 8)
  %359 = call i32 @bs_pos(i32* %11)
  %360 = call i32 @test_assert(i32 %359, i32 8)
  %361 = call i32 @bs_read(i32* %11, i32 10)
  %362 = call i32 @test_assert(i32 %361, i32 340)
  %363 = call i32 @bs_remain(i32* %11)
  %364 = call i32 @test_assert(i32 %363, i32 0)
  %365 = call i32 @bs_pos(i32* %11)
  %366 = call i32 @test_assert(i32 %365, i32 16)
  ret i32 0
}

declare dso_local i32 @bs_init(i32*, i32*, i32) #1

declare dso_local i32 @test_assert(i32, i32) #1

declare dso_local i32 @bs_remain(i32*) #1

declare dso_local i32 @bs_pos(i32*) #1

declare dso_local i32 @bs_skip(i32*, i32) #1

declare dso_local i32 @bs_write(i32*, i32, i32) #1

declare dso_local i32 @bs_read1(i32*) #1

declare dso_local i32 @bs_read(i32*, i32) #1

declare dso_local i32 @bs_align(i32*) #1

declare dso_local i32 @bs_read_ue(i32*) #1

declare dso_local i32 @bs_read_se(i32*) #1

declare dso_local i32 @bs_eof(i32*) #1

declare dso_local i32 @bs_aligned(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @bs_write_init(i32*, i32**, i32) #1

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @bs_write_align(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
