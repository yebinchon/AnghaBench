; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/rsaenh/extr_rsaenh.c_test_des.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/rsaenh/extr_rsaenh.c_test_des.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i64, i64, i32, i32* }

@test_des.des = internal constant [16 x i32] [i32 88, i32 134, i32 66, i32 70, i32 101, i32 75, i32 146, i32 98, i32 207, i32 15, i32 101, i32 55, i32 67, i32 122, i32 130, i32 185], align 16
@test_des.des_old_behavior = internal constant [16 x i32] [i32 176, i32 253, i32 17, i32 105, i32 118, i32 177, i32 161, i32 3, i32 247, i32 188, i32 35, i32 170, i32 212, i32 193, i32 201, i32 85], align 16
@test_des.des_old_strong = internal constant [16 x i32] [i32 155, i32 193, i32 42, i32 236, i32 74, i32 249, i32 15, i32 20, i32 10, i32 237, i32 246, i32 211, i32 220, i32 173, i32 247, i32 12], align 16
@CALG_DES = common dso_local global i32 0, align 4
@NTE_BAD_ALGID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%08x\0A\00", align 1
@CRYPT_MODE_ECB = common dso_local global i64 0, align 8
@KP_MODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Expected CRYPT_MODE_ECB, got %d\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"DES encryption failed!\0A\00", align 1
@cTestData = common dso_local global %struct.TYPE_2__* null, align 8
@.str.3 = private unnamed_addr constant [39 x i8] c"length incorrect, got %d, expected %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"decryption incorrect %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"expected\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"got\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [29 x i8] c"CryptDecrypt should failed!\0A\00", align 1
@NTE_BAD_DATA = common dso_local global i32 0, align 4
@STRONG_PROV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_des to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_des() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca [16 x i8], align 16
  %6 = alloca [16 x i8], align 16
  %7 = alloca [16 x i8], align 16
  %8 = alloca i32, align 4
  %9 = load i32, i32* @CALG_DES, align 4
  %10 = call i32 @derive_key(i32 %9, i32* %1, i32 0)
  store i32 %10, i32* %2, align 4
  %11 = load i32, i32* %2, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %0
  %14 = call i32 (...) @GetLastError()
  %15 = load i32, i32* @NTE_BAD_ALGID, align 4
  %16 = icmp eq i32 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 (...) @GetLastError()
  %19 = call i32 (i32, i8*, ...) @ok(i32 %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %508

20:                                               ; preds = %0
  %21 = load i64, i64* @CRYPT_MODE_ECB, align 8
  store i64 %21, i64* %4, align 8
  %22 = load i32, i32* %1, align 4
  %23 = load i32, i32* @KP_MODE, align 4
  %24 = bitcast i64* %4 to i32*
  %25 = call i32 @CryptSetKeyParam(i32 %22, i32 %23, i32* %24, i32 0)
  store i32 %25, i32* %2, align 4
  %26 = load i32, i32* %2, align 4
  %27 = call i32 (...) @GetLastError()
  %28 = call i32 (i32, i8*, ...) @ok(i32 %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %27)
  store i64 8, i64* %3, align 8
  %29 = load i32, i32* %1, align 4
  %30 = load i32, i32* @KP_MODE, align 4
  %31 = bitcast i64* %4 to i32*
  %32 = call i32 @CryptGetKeyParam(i32 %29, i32 %30, i32* %31, i64* %3, i32 0)
  store i32 %32, i32* %2, align 4
  %33 = load i32, i32* %2, align 4
  %34 = call i32 (...) @GetLastError()
  %35 = call i32 (i32, i8*, ...) @ok(i32 %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i64, i64* %4, align 8
  %37 = load i64, i64* @CRYPT_MODE_ECB, align 8
  %38 = icmp eq i64 %36, %37
  %39 = zext i1 %38 to i32
  %40 = load i64, i64* %4, align 8
  %41 = call i32 (i32, i8*, ...) @ok(i32 %39, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %40)
  store i32 0, i32* %8, align 4
  br label %42

42:                                               ; preds = %52, %20
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = icmp ult i64 %44, 16
  br i1 %45, label %46, label %55

46:                                               ; preds = %42
  %47 = load i32, i32* %8, align 4
  %48 = trunc i32 %47 to i8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 %50
  store i8 %48, i8* %51, align 1
  br label %52

52:                                               ; preds = %46
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %8, align 4
  br label %42

55:                                               ; preds = %42
  store i64 13, i64* %3, align 8
  %56 = load i32, i32* %1, align 4
  %57 = load i32, i32* @TRUE, align 4
  %58 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %59 = call i32 @CryptEncrypt(i32 %56, i32 0, i32 %57, i32 0, i8* %58, i64* %3, i32 16)
  store i32 %59, i32* %2, align 4
  %60 = load i32, i32* %2, align 4
  %61 = call i32 (...) @GetLastError()
  %62 = call i32 (i32, i8*, ...) @ok(i32 %60, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %61)
  %63 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %64 = call i64 @memcmp(i8* %63, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @test_des.des, i64 0, i64 0), i32 64)
  %65 = icmp ne i64 %64, 0
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  %68 = call i32 (i32, i8*, ...) @ok(i32 %67, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %69 = load i32, i32* %1, align 4
  %70 = load i32, i32* @TRUE, align 4
  %71 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %72 = call i32 @CryptDecrypt(i32 %69, i32 0, i32 %70, i32 0, i8* %71, i64* %3)
  store i32 %72, i32* %2, align 4
  %73 = load i32, i32* %2, align 4
  %74 = call i32 (...) @GetLastError()
  %75 = call i32 (i32, i8*, ...) @ok(i32 %73, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %74)
  store i32 0, i32* %8, align 4
  br label %76

76:                                               ; preds = %437, %55
  %77 = load i32, i32* %8, align 4
  %78 = icmp slt i32 %77, 4
  br i1 %78, label %79, label %440

79:                                               ; preds = %76
  %80 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cTestData, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cTestData, align 8
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @memcpy(i8* %80, i8* %86, i64 %92)
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cTestData, align 8
  %95 = load i32, i32* %8, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  store i64 %99, i64* %3, align 8
  %100 = load i32, i32* %1, align 4
  %101 = load i32, i32* @TRUE, align 4
  %102 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cTestData, align 8
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @CryptEncrypt(i32 %100, i32 0, i32 %101, i32 0, i8* %102, i64* %3, i32 %108)
  store i32 %109, i32* %2, align 4
  %110 = load i32, i32* %2, align 4
  %111 = call i32 (...) @GetLastError()
  %112 = call i32 (i32, i8*, ...) @ok(i32 %110, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %111)
  %113 = load i64, i64* %3, align 8
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cTestData, align 8
  %115 = load i32, i32* %8, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 8
  %120 = sext i32 %119 to i64
  %121 = icmp eq i64 %113, %120
  %122 = zext i1 %121 to i32
  %123 = load i64, i64* %3, align 8
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cTestData, align 8
  %125 = load i32, i32* %8, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 8
  %130 = call i32 (i32, i8*, ...) @ok(i32 %122, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i64 %123, i32 %129)
  %131 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %132 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cTestData, align 8
  %134 = load i32, i32* %8, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 8
  %139 = sext i32 %138 to i64
  %140 = call i32 @memcpy(i8* %131, i8* %132, i64 %139)
  %141 = load i32, i32* %1, align 4
  %142 = load i32, i32* @TRUE, align 4
  %143 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %144 = call i32 @CryptDecrypt(i32 %141, i32 0, i32 %142, i32 0, i8* %143, i64* %3)
  store i32 %144, i32* %2, align 4
  %145 = load i32, i32* %2, align 4
  %146 = call i32 (...) @GetLastError()
  %147 = call i32 (i32, i8*, ...) @ok(i32 %145, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %146)
  %148 = load i64, i64* %3, align 8
  %149 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cTestData, align 8
  %150 = load i32, i32* %8, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = icmp eq i64 %148, %154
  %156 = zext i1 %155 to i32
  %157 = load i64, i64* %3, align 8
  %158 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cTestData, align 8
  %159 = load i32, i32* %8, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 2
  %163 = load i64, i64* %162, align 8
  %164 = call i32 (i32, i8*, ...) @ok(i32 %156, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i64 %157, i64 %163)
  %165 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %166 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cTestData, align 8
  %167 = load i32, i32* %8, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 4
  %171 = load i32*, i32** %170, align 8
  %172 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cTestData, align 8
  %173 = load i32, i32* %8, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 2
  %177 = load i64, i64* %176, align 8
  %178 = trunc i64 %177 to i32
  %179 = call i64 @memcmp(i8* %165, i32* %171, i32 %178)
  %180 = icmp eq i64 %179, 0
  %181 = zext i1 %180 to i32
  %182 = load i32, i32* %8, align 4
  %183 = call i32 (i32, i8*, ...) @ok(i32 %181, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %182)
  %184 = load i64, i64* %3, align 8
  %185 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cTestData, align 8
  %186 = load i32, i32* %8, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i32 0, i32 2
  %190 = load i64, i64* %189, align 8
  %191 = icmp ne i64 %184, %190
  br i1 %191, label %209, label %192

192:                                              ; preds = %79
  %193 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %194 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cTestData, align 8
  %195 = load i32, i32* %8, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %197, i32 0, i32 4
  %199 = load i32*, i32** %198, align 8
  %200 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cTestData, align 8
  %201 = load i32, i32* %8, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %200, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %203, i32 0, i32 2
  %205 = load i64, i64* %204, align 8
  %206 = trunc i64 %205 to i32
  %207 = call i64 @memcmp(i8* %193, i32* %199, i32 %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %227

209:                                              ; preds = %192, %79
  %210 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cTestData, align 8
  %211 = load i32, i32* %8, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %210, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %213, i32 0, i32 4
  %215 = load i32*, i32** %214, align 8
  %216 = bitcast i32* %215 to i8*
  %217 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cTestData, align 8
  %218 = load i32, i32* %8, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %217, i64 %219
  %221 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %220, i32 0, i32 1
  %222 = load i64, i64* %221, align 8
  %223 = call i32 @printBytes(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* %216, i64 %222)
  %224 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %225 = load i64, i64* %3, align 8
  %226 = call i32 @printBytes(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* %224, i64 %225)
  br label %227

227:                                              ; preds = %209, %192
  %228 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cTestData, align 8
  %229 = load i32, i32* %8, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %228, i64 %230
  %232 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %231, i32 0, i32 3
  %233 = load i32, i32* %232, align 8
  %234 = sext i32 %233 to i64
  store i64 %234, i64* %3, align 8
  %235 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %236 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %237 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cTestData, align 8
  %238 = load i32, i32* %8, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %237, i64 %239
  %241 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %240, i32 0, i32 3
  %242 = load i32, i32* %241, align 8
  %243 = sext i32 %242 to i64
  %244 = call i32 @memcpy(i8* %235, i8* %236, i64 %243)
  %245 = load i32, i32* %1, align 4
  %246 = load i32, i32* @FALSE, align 4
  %247 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %248 = call i32 @CryptDecrypt(i32 %245, i32 0, i32 %246, i32 0, i8* %247, i64* %3)
  store i32 %248, i32* %2, align 4
  %249 = load i32, i32* %2, align 4
  %250 = call i32 (...) @GetLastError()
  %251 = call i32 (i32, i8*, ...) @ok(i32 %249, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %250)
  %252 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %253 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %254 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cTestData, align 8
  %255 = load i32, i32* %8, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %254, i64 %256
  %258 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %257, i32 0, i32 3
  %259 = load i32, i32* %258, align 8
  %260 = sext i32 %259 to i64
  %261 = call i32 @memcpy(i8* %252, i8* %253, i64 %260)
  %262 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cTestData, align 8
  %263 = load i32, i32* %8, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %262, i64 %264
  %266 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %265, i32 0, i32 3
  %267 = load i32, i32* %266, align 8
  %268 = sub nsw i32 %267, 1
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 %269
  %271 = load i8, i8* %270, align 1
  %272 = zext i8 %271 to i32
  %273 = xor i32 %272, -1
  %274 = trunc i32 %273 to i8
  %275 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cTestData, align 8
  %276 = load i32, i32* %8, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %275, i64 %277
  %279 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %278, i32 0, i32 3
  %280 = load i32, i32* %279, align 8
  %281 = sub nsw i32 %280, 1
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 %282
  store i8 %274, i8* %283, align 1
  %284 = call i32 @SetLastError(i32 -559038737)
  %285 = load i32, i32* %1, align 4
  %286 = load i32, i32* @TRUE, align 4
  %287 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %288 = call i32 @CryptDecrypt(i32 %285, i32 0, i32 %286, i32 0, i8* %287, i64* %3)
  store i32 %288, i32* %2, align 4
  %289 = load i32, i32* %2, align 4
  %290 = icmp ne i32 %289, 0
  %291 = xor i1 %290, true
  %292 = zext i1 %291 to i32
  %293 = call i32 (i32, i8*, ...) @ok(i32 %292, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  %294 = call i32 (...) @GetLastError()
  %295 = load i32, i32* @NTE_BAD_DATA, align 4
  %296 = icmp eq i32 %294, %295
  %297 = zext i1 %296 to i32
  %298 = call i32 (...) @GetLastError()
  %299 = call i32 (i32, i8*, ...) @ok(i32 %297, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %298)
  %300 = load i64, i64* %3, align 8
  %301 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cTestData, align 8
  %302 = load i32, i32* %8, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %301, i64 %303
  %305 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %304, i32 0, i32 3
  %306 = load i32, i32* %305, align 8
  %307 = sext i32 %306 to i64
  %308 = icmp eq i64 %300, %307
  %309 = zext i1 %308 to i32
  %310 = load i64, i64* %3, align 8
  %311 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cTestData, align 8
  %312 = load i32, i32* %8, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %311, i64 %313
  %315 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %314, i32 0, i32 3
  %316 = load i32, i32* %315, align 8
  %317 = call i32 (i32, i8*, ...) @ok(i32 %309, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i64 %310, i32 %316)
  %318 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %319 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cTestData, align 8
  %320 = load i32, i32* %8, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %319, i64 %321
  %323 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %322, i32 0, i32 4
  %324 = load i32*, i32** %323, align 8
  %325 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cTestData, align 8
  %326 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %325, i64 1
  %327 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %326, i32 0, i32 2
  %328 = load i64, i64* %327, align 8
  %329 = trunc i64 %328 to i32
  %330 = call i64 @memcmp(i8* %318, i32* %324, i32 %329)
  %331 = icmp eq i64 %330, 0
  %332 = zext i1 %331 to i32
  %333 = load i32, i32* %8, align 4
  %334 = call i32 (i32, i8*, ...) @ok(i32 %332, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %333)
  %335 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cTestData, align 8
  %336 = load i32, i32* %8, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %335, i64 %337
  %339 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %338, i32 0, i32 3
  %340 = load i32, i32* %339, align 8
  %341 = sext i32 %340 to i64
  store i64 %341, i64* %3, align 8
  %342 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %343 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %344 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cTestData, align 8
  %345 = load i32, i32* %8, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %344, i64 %346
  %348 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %347, i32 0, i32 3
  %349 = load i32, i32* %348, align 8
  %350 = sext i32 %349 to i64
  %351 = call i32 @memcpy(i8* %342, i8* %343, i64 %350)
  %352 = load i32, i32* %1, align 4
  %353 = load i32, i32* @TRUE, align 4
  %354 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %355 = call i32 @CryptDecrypt(i32 %352, i32 0, i32 %353, i32 0, i8* %354, i64* %3)
  store i32 %355, i32* %2, align 4
  %356 = load i32, i32* %2, align 4
  %357 = call i32 (...) @GetLastError()
  %358 = call i32 (i32, i8*, ...) @ok(i32 %356, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %357)
  %359 = load i64, i64* %3, align 8
  %360 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cTestData, align 8
  %361 = load i32, i32* %8, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %360, i64 %362
  %364 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %363, i32 0, i32 2
  %365 = load i64, i64* %364, align 8
  %366 = icmp eq i64 %359, %365
  %367 = zext i1 %366 to i32
  %368 = load i64, i64* %3, align 8
  %369 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cTestData, align 8
  %370 = load i32, i32* %8, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %369, i64 %371
  %373 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %372, i32 0, i32 2
  %374 = load i64, i64* %373, align 8
  %375 = call i32 (i32, i8*, ...) @ok(i32 %367, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i64 %368, i64 %374)
  %376 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %377 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cTestData, align 8
  %378 = load i32, i32* %8, align 4
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %377, i64 %379
  %381 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %380, i32 0, i32 4
  %382 = load i32*, i32** %381, align 8
  %383 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cTestData, align 8
  %384 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %383, i64 1
  %385 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %384, i32 0, i32 2
  %386 = load i64, i64* %385, align 8
  %387 = trunc i64 %386 to i32
  %388 = call i64 @memcmp(i8* %376, i32* %382, i32 %387)
  %389 = icmp eq i64 %388, 0
  %390 = zext i1 %389 to i32
  %391 = load i32, i32* %8, align 4
  %392 = call i32 (i32, i8*, ...) @ok(i32 %390, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %391)
  %393 = load i64, i64* %3, align 8
  %394 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cTestData, align 8
  %395 = load i32, i32* %8, align 4
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %394, i64 %396
  %398 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %397, i32 0, i32 2
  %399 = load i64, i64* %398, align 8
  %400 = icmp ne i64 %393, %399
  br i1 %400, label %418, label %401

401:                                              ; preds = %227
  %402 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %403 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cTestData, align 8
  %404 = load i32, i32* %8, align 4
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %403, i64 %405
  %407 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %406, i32 0, i32 4
  %408 = load i32*, i32** %407, align 8
  %409 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cTestData, align 8
  %410 = load i32, i32* %8, align 4
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %409, i64 %411
  %413 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %412, i32 0, i32 2
  %414 = load i64, i64* %413, align 8
  %415 = trunc i64 %414 to i32
  %416 = call i64 @memcmp(i8* %402, i32* %408, i32 %415)
  %417 = icmp ne i64 %416, 0
  br i1 %417, label %418, label %436

418:                                              ; preds = %401, %227
  %419 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cTestData, align 8
  %420 = load i32, i32* %8, align 4
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %419, i64 %421
  %423 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %422, i32 0, i32 4
  %424 = load i32*, i32** %423, align 8
  %425 = bitcast i32* %424 to i8*
  %426 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cTestData, align 8
  %427 = load i32, i32* %8, align 4
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %426, i64 %428
  %430 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %429, i32 0, i32 1
  %431 = load i64, i64* %430, align 8
  %432 = call i32 @printBytes(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* %425, i64 %431)
  %433 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %434 = load i64, i64* %3, align 8
  %435 = call i32 @printBytes(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* %433, i64 %434)
  br label %436

436:                                              ; preds = %418, %401
  br label %437

437:                                              ; preds = %436
  %438 = load i32, i32* %8, align 4
  %439 = add nsw i32 %438, 1
  store i32 %439, i32* %8, align 4
  br label %76

440:                                              ; preds = %76
  %441 = load i32, i32* %1, align 4
  %442 = call i32 @CryptDestroyKey(i32 %441)
  store i32 %442, i32* %2, align 4
  %443 = load i32, i32* %2, align 4
  %444 = call i32 (...) @GetLastError()
  %445 = call i32 (i32, i8*, ...) @ok(i32 %443, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %444)
  %446 = load i32, i32* @CALG_DES, align 4
  %447 = call i32 @derive_key(i32 %446, i32* %1, i32 56)
  %448 = load i64, i64* @CRYPT_MODE_ECB, align 8
  store i64 %448, i64* %4, align 8
  %449 = load i32, i32* %1, align 4
  %450 = load i32, i32* @KP_MODE, align 4
  %451 = bitcast i64* %4 to i32*
  %452 = call i32 @CryptSetKeyParam(i32 %449, i32 %450, i32* %451, i32 0)
  store i32 %452, i32* %2, align 4
  %453 = load i32, i32* %2, align 4
  %454 = call i32 (...) @GetLastError()
  %455 = call i32 (i32, i8*, ...) @ok(i32 %453, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %454)
  store i32 0, i32* %8, align 4
  br label %456

456:                                              ; preds = %466, %440
  %457 = load i32, i32* %8, align 4
  %458 = sext i32 %457 to i64
  %459 = icmp ult i64 %458, 16
  br i1 %459, label %460, label %469

460:                                              ; preds = %456
  %461 = load i32, i32* %8, align 4
  %462 = trunc i32 %461 to i8
  %463 = load i32, i32* %8, align 4
  %464 = sext i32 %463 to i64
  %465 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 %464
  store i8 %462, i8* %465, align 1
  br label %466

466:                                              ; preds = %460
  %467 = load i32, i32* %8, align 4
  %468 = add nsw i32 %467, 1
  store i32 %468, i32* %8, align 4
  br label %456

469:                                              ; preds = %456
  store i64 13, i64* %3, align 8
  %470 = load i32, i32* %1, align 4
  %471 = load i32, i32* @TRUE, align 4
  %472 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %473 = call i32 @CryptEncrypt(i32 %470, i32 0, i32 %471, i32 0, i8* %472, i64* %3, i32 16)
  store i32 %473, i32* %2, align 4
  %474 = load i32, i32* %2, align 4
  %475 = call i32 (...) @GetLastError()
  %476 = call i32 (i32, i8*, ...) @ok(i32 %474, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %475)
  %477 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %478 = call i64 @memcmp(i8* %477, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @test_des.des, i64 0, i64 0), i32 64)
  %479 = icmp ne i64 %478, 0
  br i1 %479, label %480, label %499

480:                                              ; preds = %469
  %481 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %482 = call i64 @memcmp(i8* %481, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @test_des.des_old_behavior, i64 0, i64 0), i32 64)
  %483 = icmp ne i64 %482, 0
  br i1 %483, label %484, label %494

484:                                              ; preds = %480
  %485 = load i64, i64* @STRONG_PROV, align 8
  %486 = icmp ne i64 %485, 0
  br i1 %486, label %487, label %492

487:                                              ; preds = %484
  %488 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %489 = call i64 @memcmp(i8* %488, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @test_des.des_old_strong, i64 0, i64 0), i32 64)
  %490 = icmp ne i64 %489, 0
  %491 = xor i1 %490, true
  br label %492

492:                                              ; preds = %487, %484
  %493 = phi i1 [ false, %484 ], [ %491, %487 ]
  br label %494

494:                                              ; preds = %492, %480
  %495 = phi i1 [ true, %480 ], [ %493, %492 ]
  %496 = zext i1 %495 to i32
  %497 = call i64 @broken(i32 %496)
  %498 = icmp ne i64 %497, 0
  br label %499

499:                                              ; preds = %494, %469
  %500 = phi i1 [ true, %469 ], [ %498, %494 ]
  %501 = zext i1 %500 to i32
  %502 = call i32 (i32, i8*, ...) @ok(i32 %501, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %503 = load i32, i32* %1, align 4
  %504 = call i32 @CryptDestroyKey(i32 %503)
  store i32 %504, i32* %2, align 4
  %505 = load i32, i32* %2, align 4
  %506 = call i32 (...) @GetLastError()
  %507 = call i32 (i32, i8*, ...) @ok(i32 %505, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %506)
  br label %508

508:                                              ; preds = %499, %13
  ret void
}

declare dso_local i32 @derive_key(i32, i32*, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @CryptSetKeyParam(i32, i32, i32*, i32) #1

declare dso_local i32 @CryptGetKeyParam(i32, i32, i32*, i64*, i32) #1

declare dso_local i32 @CryptEncrypt(i32, i32, i32, i32, i8*, i64*, i32) #1

declare dso_local i64 @memcmp(i8*, i32*, i32) #1

declare dso_local i32 @CryptDecrypt(i32, i32, i32, i32, i8*, i64*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @printBytes(i8*, i8*, i64) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @CryptDestroyKey(i32) #1

declare dso_local i64 @broken(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
