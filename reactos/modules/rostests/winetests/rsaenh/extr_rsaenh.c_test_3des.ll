; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/rsaenh/extr_rsaenh.c_test_3des.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/rsaenh/extr_rsaenh.c_test_3des.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32, i32, i32, i32* }

@test_3des.des3 = internal constant [16 x i32] [i32 123, i32 186, i32 221, i32 162, i32 57, i32 211, i32 123, i32 179, i32 199, i32 81, i32 129, i32 65, i32 83, i32 232, i32 207, i32 235], align 16
@CALG_3DES = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"3DES encryption failed!\0A\00", align 1
@cTestData = common dso_local global %struct.TYPE_2__* null, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"length incorrect, got %d, expected %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"decryption incorrect %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"expected\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"got\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"CryptDecrypt should failed!\0A\00", align 1
@NTE_BAD_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_3des to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_3des() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [16 x i8], align 16
  %5 = alloca [16 x i8], align 16
  %6 = alloca [16 x i8], align 16
  %7 = alloca i32, align 4
  %8 = load i32, i32* @CALG_3DES, align 4
  %9 = call i32 @derive_key(i32 %8, i32* %1, i32 0)
  store i32 %9, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %0
  br label %405

13:                                               ; preds = %0
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %24, %13
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = icmp ult i64 %16, 16
  br i1 %17, label %18, label %27

18:                                               ; preds = %14
  %19 = load i32, i32* %7, align 4
  %20 = trunc i32 %19 to i8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 %22
  store i8 %20, i8* %23, align 1
  br label %24

24:                                               ; preds = %18
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %7, align 4
  br label %14

27:                                               ; preds = %14
  store i32 13, i32* %3, align 4
  %28 = load i32, i32* %1, align 4
  %29 = load i32, i32* @TRUE, align 4
  %30 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %31 = call i32 @CryptEncrypt(i32 %28, i32 0, i32 %29, i32 0, i8* %30, i32* %3, i32 16)
  store i32 %31, i32* %2, align 4
  %32 = load i32, i32* %2, align 4
  %33 = call i32 (...) @GetLastError()
  %34 = call i32 (i32, i8*, ...) @ok(i32 %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %36 = call i64 @memcmp(i8* %35, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @test_3des.des3, i64 0, i64 0), i32 64)
  %37 = icmp ne i64 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i32 (i32, i8*, ...) @ok(i32 %39, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* %1, align 4
  %42 = load i32, i32* @TRUE, align 4
  %43 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %44 = call i32 @CryptDecrypt(i32 %41, i32 0, i32 %42, i32 0, i8* %43, i32* %3)
  store i32 %44, i32* %2, align 4
  %45 = load i32, i32* %2, align 4
  %46 = call i32 (...) @GetLastError()
  %47 = call i32 (i32, i8*, ...) @ok(i32 %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %46)
  store i32 0, i32* %7, align 4
  br label %48

48:                                               ; preds = %396, %27
  %49 = load i32, i32* %7, align 4
  %50 = icmp slt i32 %49, 4
  br i1 %50, label %51, label %399

51:                                               ; preds = %48
  %52 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cTestData, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cTestData, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @memcpy(i8* %52, i8* %58, i32 %64)
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cTestData, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %3, align 4
  %72 = load i32, i32* %1, align 4
  %73 = load i32, i32* @TRUE, align 4
  %74 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cTestData, align 8
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @CryptEncrypt(i32 %72, i32 0, i32 %73, i32 0, i8* %74, i32* %3, i32 %80)
  store i32 %81, i32* %2, align 4
  %82 = load i32, i32* %2, align 4
  %83 = call i32 (...) @GetLastError()
  %84 = call i32 (i32, i8*, ...) @ok(i32 %82, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* %3, align 4
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cTestData, align 8
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = icmp eq i32 %85, %91
  %93 = zext i1 %92 to i32
  %94 = load i32, i32* %3, align 4
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cTestData, align 8
  %96 = load i32, i32* %7, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  %101 = call i32 (i32, i8*, ...) @ok(i32 %93, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %94, i32 %100)
  %102 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %103 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cTestData, align 8
  %105 = load i32, i32* %7, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @memcpy(i8* %102, i8* %103, i32 %109)
  %111 = load i32, i32* %1, align 4
  %112 = load i32, i32* @TRUE, align 4
  %113 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %114 = call i32 @CryptDecrypt(i32 %111, i32 0, i32 %112, i32 0, i8* %113, i32* %3)
  store i32 %114, i32* %2, align 4
  %115 = load i32, i32* %2, align 4
  %116 = call i32 (...) @GetLastError()
  %117 = call i32 (i32, i8*, ...) @ok(i32 %115, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %116)
  %118 = load i32, i32* %3, align 4
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cTestData, align 8
  %120 = load i32, i32* %7, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = icmp eq i32 %118, %124
  %126 = zext i1 %125 to i32
  %127 = load i32, i32* %3, align 4
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cTestData, align 8
  %129 = load i32, i32* %7, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = call i32 (i32, i8*, ...) @ok(i32 %126, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %127, i32 %133)
  %135 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cTestData, align 8
  %137 = load i32, i32* %7, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 4
  %141 = load i32*, i32** %140, align 8
  %142 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cTestData, align 8
  %143 = load i32, i32* %7, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = call i64 @memcmp(i8* %135, i32* %141, i32 %147)
  %149 = icmp eq i64 %148, 0
  %150 = zext i1 %149 to i32
  %151 = load i32, i32* %7, align 4
  %152 = call i32 (i32, i8*, ...) @ok(i32 %150, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %151)
  %153 = load i32, i32* %3, align 4
  %154 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cTestData, align 8
  %155 = load i32, i32* %7, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = icmp ne i32 %153, %159
  br i1 %160, label %177, label %161

161:                                              ; preds = %51
  %162 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %163 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cTestData, align 8
  %164 = load i32, i32* %7, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 4
  %168 = load i32*, i32** %167, align 8
  %169 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cTestData, align 8
  %170 = load i32, i32* %7, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 4
  %175 = call i64 @memcmp(i8* %162, i32* %168, i32 %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %195

177:                                              ; preds = %161, %51
  %178 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cTestData, align 8
  %179 = load i32, i32* %7, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 4
  %183 = load i32*, i32** %182, align 8
  %184 = bitcast i32* %183 to i8*
  %185 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cTestData, align 8
  %186 = load i32, i32* %7, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 8
  %191 = call i32 @printBytes(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* %184, i32 %190)
  %192 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %193 = load i32, i32* %3, align 4
  %194 = call i32 @printBytes(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %192, i32 %193)
  br label %195

195:                                              ; preds = %177, %161
  %196 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cTestData, align 8
  %197 = load i32, i32* %7, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %196, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 8
  store i32 %201, i32* %3, align 4
  %202 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %203 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %204 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cTestData, align 8
  %205 = load i32, i32* %7, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %204, i64 %206
  %208 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %207, i32 0, i32 3
  %209 = load i32, i32* %208, align 8
  %210 = call i32 @memcpy(i8* %202, i8* %203, i32 %209)
  %211 = load i32, i32* %1, align 4
  %212 = load i32, i32* @FALSE, align 4
  %213 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %214 = call i32 @CryptDecrypt(i32 %211, i32 0, i32 %212, i32 0, i8* %213, i32* %3)
  store i32 %214, i32* %2, align 4
  %215 = load i32, i32* %2, align 4
  %216 = call i32 (...) @GetLastError()
  %217 = call i32 (i32, i8*, ...) @ok(i32 %215, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %216)
  %218 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %219 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %220 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cTestData, align 8
  %221 = load i32, i32* %7, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %220, i64 %222
  %224 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 8
  %226 = call i32 @memcpy(i8* %218, i8* %219, i32 %225)
  %227 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cTestData, align 8
  %228 = load i32, i32* %7, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %227, i64 %229
  %231 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %230, i32 0, i32 3
  %232 = load i32, i32* %231, align 8
  %233 = sub nsw i32 %232, 1
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 %234
  %236 = load i8, i8* %235, align 1
  %237 = zext i8 %236 to i32
  %238 = xor i32 %237, -1
  %239 = trunc i32 %238 to i8
  %240 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cTestData, align 8
  %241 = load i32, i32* %7, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %240, i64 %242
  %244 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %243, i32 0, i32 3
  %245 = load i32, i32* %244, align 8
  %246 = sub nsw i32 %245, 1
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 %247
  store i8 %239, i8* %248, align 1
  %249 = call i32 @SetLastError(i32 -559038737)
  %250 = load i32, i32* %1, align 4
  %251 = load i32, i32* @TRUE, align 4
  %252 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %253 = call i32 @CryptDecrypt(i32 %250, i32 0, i32 %251, i32 0, i8* %252, i32* %3)
  store i32 %253, i32* %2, align 4
  %254 = load i32, i32* %2, align 4
  %255 = icmp ne i32 %254, 0
  %256 = xor i1 %255, true
  %257 = zext i1 %256 to i32
  %258 = call i32 (i32, i8*, ...) @ok(i32 %257, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  %259 = call i32 (...) @GetLastError()
  %260 = load i32, i32* @NTE_BAD_DATA, align 4
  %261 = icmp eq i32 %259, %260
  %262 = zext i1 %261 to i32
  %263 = call i32 (...) @GetLastError()
  %264 = call i32 (i32, i8*, ...) @ok(i32 %262, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %263)
  %265 = load i32, i32* %3, align 4
  %266 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cTestData, align 8
  %267 = load i32, i32* %7, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %266, i64 %268
  %270 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %269, i32 0, i32 3
  %271 = load i32, i32* %270, align 8
  %272 = icmp eq i32 %265, %271
  %273 = zext i1 %272 to i32
  %274 = load i32, i32* %3, align 4
  %275 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cTestData, align 8
  %276 = load i32, i32* %7, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %275, i64 %277
  %279 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %278, i32 0, i32 3
  %280 = load i32, i32* %279, align 8
  %281 = call i32 (i32, i8*, ...) @ok(i32 %273, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %274, i32 %280)
  %282 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %283 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cTestData, align 8
  %284 = load i32, i32* %7, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %283, i64 %285
  %287 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %286, i32 0, i32 4
  %288 = load i32*, i32** %287, align 8
  %289 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cTestData, align 8
  %290 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %289, i64 1
  %291 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %290, i32 0, i32 2
  %292 = load i32, i32* %291, align 4
  %293 = call i64 @memcmp(i8* %282, i32* %288, i32 %292)
  %294 = icmp eq i64 %293, 0
  %295 = zext i1 %294 to i32
  %296 = load i32, i32* %7, align 4
  %297 = call i32 (i32, i8*, ...) @ok(i32 %295, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %296)
  %298 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cTestData, align 8
  %299 = load i32, i32* %7, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %298, i64 %300
  %302 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %301, i32 0, i32 3
  %303 = load i32, i32* %302, align 8
  store i32 %303, i32* %3, align 4
  %304 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %305 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %306 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cTestData, align 8
  %307 = load i32, i32* %7, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %306, i64 %308
  %310 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %309, i32 0, i32 3
  %311 = load i32, i32* %310, align 8
  %312 = call i32 @memcpy(i8* %304, i8* %305, i32 %311)
  %313 = load i32, i32* %1, align 4
  %314 = load i32, i32* @TRUE, align 4
  %315 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %316 = call i32 @CryptDecrypt(i32 %313, i32 0, i32 %314, i32 0, i8* %315, i32* %3)
  store i32 %316, i32* %2, align 4
  %317 = load i32, i32* %2, align 4
  %318 = call i32 (...) @GetLastError()
  %319 = call i32 (i32, i8*, ...) @ok(i32 %317, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %318)
  %320 = load i32, i32* %3, align 4
  %321 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cTestData, align 8
  %322 = load i32, i32* %7, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %321, i64 %323
  %325 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %324, i32 0, i32 2
  %326 = load i32, i32* %325, align 4
  %327 = icmp eq i32 %320, %326
  %328 = zext i1 %327 to i32
  %329 = load i32, i32* %3, align 4
  %330 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cTestData, align 8
  %331 = load i32, i32* %7, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %330, i64 %332
  %334 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %333, i32 0, i32 2
  %335 = load i32, i32* %334, align 4
  %336 = call i32 (i32, i8*, ...) @ok(i32 %328, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %329, i32 %335)
  %337 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %338 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cTestData, align 8
  %339 = load i32, i32* %7, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %338, i64 %340
  %342 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %341, i32 0, i32 4
  %343 = load i32*, i32** %342, align 8
  %344 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cTestData, align 8
  %345 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %344, i64 1
  %346 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %345, i32 0, i32 2
  %347 = load i32, i32* %346, align 4
  %348 = call i64 @memcmp(i8* %337, i32* %343, i32 %347)
  %349 = icmp eq i64 %348, 0
  %350 = zext i1 %349 to i32
  %351 = load i32, i32* %7, align 4
  %352 = call i32 (i32, i8*, ...) @ok(i32 %350, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %351)
  %353 = load i32, i32* %3, align 4
  %354 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cTestData, align 8
  %355 = load i32, i32* %7, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %354, i64 %356
  %358 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %357, i32 0, i32 2
  %359 = load i32, i32* %358, align 4
  %360 = icmp ne i32 %353, %359
  br i1 %360, label %377, label %361

361:                                              ; preds = %195
  %362 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %363 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cTestData, align 8
  %364 = load i32, i32* %7, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %363, i64 %365
  %367 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %366, i32 0, i32 4
  %368 = load i32*, i32** %367, align 8
  %369 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cTestData, align 8
  %370 = load i32, i32* %7, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %369, i64 %371
  %373 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %372, i32 0, i32 2
  %374 = load i32, i32* %373, align 4
  %375 = call i64 @memcmp(i8* %362, i32* %368, i32 %374)
  %376 = icmp ne i64 %375, 0
  br i1 %376, label %377, label %395

377:                                              ; preds = %361, %195
  %378 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cTestData, align 8
  %379 = load i32, i32* %7, align 4
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %378, i64 %380
  %382 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %381, i32 0, i32 4
  %383 = load i32*, i32** %382, align 8
  %384 = bitcast i32* %383 to i8*
  %385 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cTestData, align 8
  %386 = load i32, i32* %7, align 4
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %385, i64 %387
  %389 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %388, i32 0, i32 1
  %390 = load i32, i32* %389, align 8
  %391 = call i32 @printBytes(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* %384, i32 %390)
  %392 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %393 = load i32, i32* %3, align 4
  %394 = call i32 @printBytes(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %392, i32 %393)
  br label %395

395:                                              ; preds = %377, %361
  br label %396

396:                                              ; preds = %395
  %397 = load i32, i32* %7, align 4
  %398 = add nsw i32 %397, 1
  store i32 %398, i32* %7, align 4
  br label %48

399:                                              ; preds = %48
  %400 = load i32, i32* %1, align 4
  %401 = call i32 @CryptDestroyKey(i32 %400)
  store i32 %401, i32* %2, align 4
  %402 = load i32, i32* %2, align 4
  %403 = call i32 (...) @GetLastError()
  %404 = call i32 (i32, i8*, ...) @ok(i32 %402, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %403)
  br label %405

405:                                              ; preds = %399, %12
  ret void
}

declare dso_local i32 @derive_key(i32, i32*, i32) #1

declare dso_local i32 @CryptEncrypt(i32, i32, i32, i32, i8*, i32*, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @GetLastError(...) #1

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
