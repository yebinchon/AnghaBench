; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/rsaenh/extr_rsaenh.c_test_3des112.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/rsaenh/extr_rsaenh.c_test_3des112.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32, i32, i32, i32* }

@test_3des112.des112 = internal constant [16 x i32] [i32 142, i32 12, i32 60, i32 163, i32 5, i32 136, i32 95, i32 122, i32 50, i32 161, i32 6, i32 82, i32 100, i32 210, i32 68, i32 28], align 16
@CALG_3DES_112 = common dso_local global i32 0, align 4
@NTE_BAD_ALGID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%08x\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"3DES_112 encryption failed!\0A\00", align 1
@cTestData = common dso_local global %struct.TYPE_2__* null, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"length incorrect, got %d, expected %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"decryption incorrect %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"expected\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"got\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"CryptDecrypt should failed!\0A\00", align 1
@NTE_BAD_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_3des112 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_3des112() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [16 x i8], align 16
  %5 = alloca [16 x i8], align 16
  %6 = alloca [16 x i8], align 16
  %7 = alloca i32, align 4
  %8 = load i32, i32* @CALG_3DES_112, align 4
  %9 = call i32 @derive_key(i32 %8, i32* %1, i32 0)
  store i32 %9, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %0
  %13 = call i32 (...) @GetLastError()
  %14 = load i32, i32* @NTE_BAD_ALGID, align 4
  %15 = icmp eq i32 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 (...) @GetLastError()
  %18 = call i32 (i32, i8*, ...) @ok(i32 %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %17)
  br label %409

19:                                               ; preds = %0
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %30, %19
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = icmp ult i64 %22, 16
  br i1 %23, label %24, label %33

24:                                               ; preds = %20
  %25 = load i32, i32* %7, align 4
  %26 = trunc i32 %25 to i8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 %28
  store i8 %26, i8* %29, align 1
  br label %30

30:                                               ; preds = %24
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %7, align 4
  br label %20

33:                                               ; preds = %20
  store i32 13, i32* %3, align 4
  %34 = load i32, i32* %1, align 4
  %35 = load i32, i32* @TRUE, align 4
  %36 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %37 = call i32 @CryptEncrypt(i32 %34, i32 0, i32 %35, i32 0, i8* %36, i32* %3, i32 16)
  store i32 %37, i32* %2, align 4
  %38 = load i32, i32* %2, align 4
  %39 = call i32 (...) @GetLastError()
  %40 = call i32 (i32, i8*, ...) @ok(i32 %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %42 = call i64 @memcmp(i8* %41, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @test_3des112.des112, i64 0, i64 0), i32 64)
  %43 = icmp ne i64 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i32 (i32, i8*, ...) @ok(i32 %45, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* %1, align 4
  %48 = load i32, i32* @TRUE, align 4
  %49 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %50 = call i32 @CryptDecrypt(i32 %47, i32 0, i32 %48, i32 0, i8* %49, i32* %3)
  store i32 %50, i32* %2, align 4
  %51 = load i32, i32* %2, align 4
  %52 = call i32 (...) @GetLastError()
  %53 = call i32 (i32, i8*, ...) @ok(i32 %51, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %52)
  store i32 0, i32* %7, align 4
  br label %54

54:                                               ; preds = %400, %33
  %55 = load i32, i32* %7, align 4
  %56 = icmp slt i32 %55, 4
  br i1 %56, label %57, label %403

57:                                               ; preds = %54
  %58 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cTestData, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cTestData, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @memcpy(i8* %58, i8* %64, i32 %70)
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cTestData, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %3, align 4
  %78 = load i32, i32* %1, align 4
  %79 = load i32, i32* @TRUE, align 4
  %80 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cTestData, align 8
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @CryptEncrypt(i32 %78, i32 0, i32 %79, i32 0, i8* %80, i32* %3, i32 %86)
  store i32 %87, i32* %2, align 4
  %88 = load i32, i32* %2, align 4
  %89 = call i32 (...) @GetLastError()
  %90 = call i32 (i32, i8*, ...) @ok(i32 %88, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* %3, align 4
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cTestData, align 8
  %93 = load i32, i32* %7, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = icmp eq i32 %91, %97
  %99 = zext i1 %98 to i32
  %100 = load i32, i32* %3, align 4
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cTestData, align 8
  %102 = load i32, i32* %7, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  %107 = call i32 (i32, i8*, ...) @ok(i32 %99, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %100, i32 %106)
  %108 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %109 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cTestData, align 8
  %111 = load i32, i32* %7, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @memcpy(i8* %108, i8* %109, i32 %115)
  %117 = load i32, i32* %1, align 4
  %118 = load i32, i32* @TRUE, align 4
  %119 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %120 = call i32 @CryptDecrypt(i32 %117, i32 0, i32 %118, i32 0, i8* %119, i32* %3)
  store i32 %120, i32* %2, align 4
  %121 = load i32, i32* %2, align 4
  %122 = call i32 (...) @GetLastError()
  %123 = call i32 (i32, i8*, ...) @ok(i32 %121, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %122)
  %124 = load i32, i32* %3, align 4
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cTestData, align 8
  %126 = load i32, i32* %7, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = icmp eq i32 %124, %130
  %132 = zext i1 %131 to i32
  %133 = load i32, i32* %3, align 4
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cTestData, align 8
  %135 = load i32, i32* %7, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = call i32 (i32, i8*, ...) @ok(i32 %132, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %133, i32 %139)
  %141 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %142 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cTestData, align 8
  %143 = load i32, i32* %7, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 4
  %147 = load i32*, i32** %146, align 8
  %148 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cTestData, align 8
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i64 1
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = call i64 @memcmp(i8* %141, i32* %147, i32 %151)
  %153 = icmp eq i64 %152, 0
  %154 = zext i1 %153 to i32
  %155 = load i32, i32* %7, align 4
  %156 = call i32 (i32, i8*, ...) @ok(i32 %154, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %155)
  %157 = load i32, i32* %3, align 4
  %158 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cTestData, align 8
  %159 = load i32, i32* %7, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = icmp ne i32 %157, %163
  br i1 %164, label %181, label %165

165:                                              ; preds = %57
  %166 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %167 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cTestData, align 8
  %168 = load i32, i32* %7, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 4
  %172 = load i32*, i32** %171, align 8
  %173 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cTestData, align 8
  %174 = load i32, i32* %7, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 4
  %179 = call i64 @memcmp(i8* %166, i32* %172, i32 %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %199

181:                                              ; preds = %165, %57
  %182 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cTestData, align 8
  %183 = load i32, i32* %7, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i32 0, i32 4
  %187 = load i32*, i32** %186, align 8
  %188 = bitcast i32* %187 to i8*
  %189 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cTestData, align 8
  %190 = load i32, i32* %7, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %189, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 8
  %195 = call i32 @printBytes(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* %188, i32 %194)
  %196 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %197 = load i32, i32* %3, align 4
  %198 = call i32 @printBytes(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %196, i32 %197)
  br label %199

199:                                              ; preds = %181, %165
  %200 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cTestData, align 8
  %201 = load i32, i32* %7, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %200, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %203, i32 0, i32 3
  %205 = load i32, i32* %204, align 8
  store i32 %205, i32* %3, align 4
  %206 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %207 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %208 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cTestData, align 8
  %209 = load i32, i32* %7, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %208, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %211, i32 0, i32 3
  %213 = load i32, i32* %212, align 8
  %214 = call i32 @memcpy(i8* %206, i8* %207, i32 %213)
  %215 = load i32, i32* %1, align 4
  %216 = load i32, i32* @FALSE, align 4
  %217 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %218 = call i32 @CryptDecrypt(i32 %215, i32 0, i32 %216, i32 0, i8* %217, i32* %3)
  store i32 %218, i32* %2, align 4
  %219 = load i32, i32* %2, align 4
  %220 = call i32 (...) @GetLastError()
  %221 = call i32 (i32, i8*, ...) @ok(i32 %219, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %220)
  %222 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %223 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %224 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cTestData, align 8
  %225 = load i32, i32* %7, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %224, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %227, i32 0, i32 3
  %229 = load i32, i32* %228, align 8
  %230 = call i32 @memcpy(i8* %222, i8* %223, i32 %229)
  %231 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cTestData, align 8
  %232 = load i32, i32* %7, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %231, i64 %233
  %235 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %234, i32 0, i32 3
  %236 = load i32, i32* %235, align 8
  %237 = sub nsw i32 %236, 1
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 %238
  %240 = load i8, i8* %239, align 1
  %241 = zext i8 %240 to i32
  %242 = xor i32 %241, -1
  %243 = trunc i32 %242 to i8
  %244 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cTestData, align 8
  %245 = load i32, i32* %7, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %244, i64 %246
  %248 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %247, i32 0, i32 3
  %249 = load i32, i32* %248, align 8
  %250 = sub nsw i32 %249, 1
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 %251
  store i8 %243, i8* %252, align 1
  %253 = call i32 @SetLastError(i32 -559038737)
  %254 = load i32, i32* %1, align 4
  %255 = load i32, i32* @TRUE, align 4
  %256 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %257 = call i32 @CryptDecrypt(i32 %254, i32 0, i32 %255, i32 0, i8* %256, i32* %3)
  store i32 %257, i32* %2, align 4
  %258 = load i32, i32* %2, align 4
  %259 = icmp ne i32 %258, 0
  %260 = xor i1 %259, true
  %261 = zext i1 %260 to i32
  %262 = call i32 (i32, i8*, ...) @ok(i32 %261, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  %263 = call i32 (...) @GetLastError()
  %264 = load i32, i32* @NTE_BAD_DATA, align 4
  %265 = icmp eq i32 %263, %264
  %266 = zext i1 %265 to i32
  %267 = call i32 (...) @GetLastError()
  %268 = call i32 (i32, i8*, ...) @ok(i32 %266, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %267)
  %269 = load i32, i32* %3, align 4
  %270 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cTestData, align 8
  %271 = load i32, i32* %7, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %270, i64 %272
  %274 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %273, i32 0, i32 3
  %275 = load i32, i32* %274, align 8
  %276 = icmp eq i32 %269, %275
  %277 = zext i1 %276 to i32
  %278 = load i32, i32* %3, align 4
  %279 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cTestData, align 8
  %280 = load i32, i32* %7, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %279, i64 %281
  %283 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %282, i32 0, i32 3
  %284 = load i32, i32* %283, align 8
  %285 = call i32 (i32, i8*, ...) @ok(i32 %277, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %278, i32 %284)
  %286 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %287 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cTestData, align 8
  %288 = load i32, i32* %7, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %287, i64 %289
  %291 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %290, i32 0, i32 4
  %292 = load i32*, i32** %291, align 8
  %293 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cTestData, align 8
  %294 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %293, i64 1
  %295 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %294, i32 0, i32 2
  %296 = load i32, i32* %295, align 4
  %297 = call i64 @memcmp(i8* %286, i32* %292, i32 %296)
  %298 = icmp eq i64 %297, 0
  %299 = zext i1 %298 to i32
  %300 = load i32, i32* %7, align 4
  %301 = call i32 (i32, i8*, ...) @ok(i32 %299, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %300)
  %302 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cTestData, align 8
  %303 = load i32, i32* %7, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %302, i64 %304
  %306 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %305, i32 0, i32 3
  %307 = load i32, i32* %306, align 8
  store i32 %307, i32* %3, align 4
  %308 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %309 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %310 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cTestData, align 8
  %311 = load i32, i32* %7, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %310, i64 %312
  %314 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %313, i32 0, i32 3
  %315 = load i32, i32* %314, align 8
  %316 = call i32 @memcpy(i8* %308, i8* %309, i32 %315)
  %317 = load i32, i32* %1, align 4
  %318 = load i32, i32* @TRUE, align 4
  %319 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %320 = call i32 @CryptDecrypt(i32 %317, i32 0, i32 %318, i32 0, i8* %319, i32* %3)
  store i32 %320, i32* %2, align 4
  %321 = load i32, i32* %2, align 4
  %322 = call i32 (...) @GetLastError()
  %323 = call i32 (i32, i8*, ...) @ok(i32 %321, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %322)
  %324 = load i32, i32* %3, align 4
  %325 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cTestData, align 8
  %326 = load i32, i32* %7, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %325, i64 %327
  %329 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %328, i32 0, i32 2
  %330 = load i32, i32* %329, align 4
  %331 = icmp eq i32 %324, %330
  %332 = zext i1 %331 to i32
  %333 = load i32, i32* %3, align 4
  %334 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cTestData, align 8
  %335 = load i32, i32* %7, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %334, i64 %336
  %338 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %337, i32 0, i32 2
  %339 = load i32, i32* %338, align 4
  %340 = call i32 (i32, i8*, ...) @ok(i32 %332, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %333, i32 %339)
  %341 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %342 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cTestData, align 8
  %343 = load i32, i32* %7, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %342, i64 %344
  %346 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %345, i32 0, i32 4
  %347 = load i32*, i32** %346, align 8
  %348 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cTestData, align 8
  %349 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %348, i64 1
  %350 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %349, i32 0, i32 2
  %351 = load i32, i32* %350, align 4
  %352 = call i64 @memcmp(i8* %341, i32* %347, i32 %351)
  %353 = icmp eq i64 %352, 0
  %354 = zext i1 %353 to i32
  %355 = load i32, i32* %7, align 4
  %356 = call i32 (i32, i8*, ...) @ok(i32 %354, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %355)
  %357 = load i32, i32* %3, align 4
  %358 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cTestData, align 8
  %359 = load i32, i32* %7, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %358, i64 %360
  %362 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %361, i32 0, i32 2
  %363 = load i32, i32* %362, align 4
  %364 = icmp ne i32 %357, %363
  br i1 %364, label %381, label %365

365:                                              ; preds = %199
  %366 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %367 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cTestData, align 8
  %368 = load i32, i32* %7, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %367, i64 %369
  %371 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %370, i32 0, i32 4
  %372 = load i32*, i32** %371, align 8
  %373 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cTestData, align 8
  %374 = load i32, i32* %7, align 4
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %373, i64 %375
  %377 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %376, i32 0, i32 2
  %378 = load i32, i32* %377, align 4
  %379 = call i64 @memcmp(i8* %366, i32* %372, i32 %378)
  %380 = icmp ne i64 %379, 0
  br i1 %380, label %381, label %399

381:                                              ; preds = %365, %199
  %382 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cTestData, align 8
  %383 = load i32, i32* %7, align 4
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %382, i64 %384
  %386 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %385, i32 0, i32 4
  %387 = load i32*, i32** %386, align 8
  %388 = bitcast i32* %387 to i8*
  %389 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cTestData, align 8
  %390 = load i32, i32* %7, align 4
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %389, i64 %391
  %393 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %392, i32 0, i32 1
  %394 = load i32, i32* %393, align 8
  %395 = call i32 @printBytes(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* %388, i32 %394)
  %396 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %397 = load i32, i32* %3, align 4
  %398 = call i32 @printBytes(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %396, i32 %397)
  br label %399

399:                                              ; preds = %381, %365
  br label %400

400:                                              ; preds = %399
  %401 = load i32, i32* %7, align 4
  %402 = add nsw i32 %401, 1
  store i32 %402, i32* %7, align 4
  br label %54

403:                                              ; preds = %54
  %404 = load i32, i32* %1, align 4
  %405 = call i32 @CryptDestroyKey(i32 %404)
  store i32 %405, i32* %2, align 4
  %406 = load i32, i32* %2, align 4
  %407 = call i32 (...) @GetLastError()
  %408 = call i32 (i32, i8*, ...) @ok(i32 %406, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %407)
  br label %409

409:                                              ; preds = %403, %12
  ret void
}

declare dso_local i32 @derive_key(i32, i32*, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @CryptEncrypt(i32, i32, i32, i32, i8*, i32*, i32) #1

declare dso_local i64 @memcmp(i8*, i32*, i32) #1

declare dso_local i32 @CryptDecrypt(i32, i32, i32, i32, i8*, i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @printBytes(i8*, i8*, i32) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @CryptDestroyKey(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
