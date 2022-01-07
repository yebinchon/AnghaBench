; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_text.c_test_CharToOem_OemToChar.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_text.c_test_CharToOem_OemToChar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i8, i8, i8 }

@test_CharToOem_OemToChar.helloWorldW = internal constant [12 x i8] c"Hello World\00", align 1
@test_CharToOem_OemToChar.emptyW = internal constant [1 x i8] zeroinitializer, align 1
@test_CharToOem_OemToChar.helloWorld = internal constant [12 x i8] c"Hello World\00", align 1
@test_CharToOem_OemToChar.tests = internal constant [4 x %struct.anon] [%struct.anon { i8 -127, i8 -127, i8 -127 }, %struct.anon { i8 -128, i8 -127, i8 -127 }, %struct.anon { i8 -127, i8 -128, i8 -127 }, %struct.anon { i8 -128, i8 -128, i8 -128 }], align 1
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"test %d: expected %d, got %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"test %d: got '%s'\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"%02x: returns FALSE\0A\00", align 1
@CP_OEMCP = common dso_local global i32 0, align 4
@MB_PRECOMPOSED = common dso_local global i32 0, align 4
@MB_USEGLYPHCHARS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"%02x: got %04x expected %04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_CharToOem_OemToChar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_CharToOem_OemToChar() #0 {
  %1 = alloca i8, align 1
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [64 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca [64 x i8], align 16
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca [64 x i8], align 16
  %17 = alloca i8*, align 8
  store i32 0, i32* %2, align 4
  br label %18

18:                                               ; preds = %189, %0
  %19 = load i32, i32* %2, align 4
  %20 = sext i32 %19 to i64
  %21 = icmp ult i64 %20, 4
  br i1 %21, label %22, label %192

22:                                               ; preds = %18
  %23 = load i32, i32* %2, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [4 x %struct.anon], [4 x %struct.anon]* @test_CharToOem_OemToChar.tests, i64 0, i64 %24
  %26 = getelementptr inbounds %struct.anon, %struct.anon* %25, i32 0, i32 2
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @test_CharToOem_OemToChar.helloWorld, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)
  store i8* %31, i8** %6, align 8
  %32 = load i32, i32* %2, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [4 x %struct.anon], [4 x %struct.anon]* @test_CharToOem_OemToChar.tests, i64 0, i64 %33
  %35 = getelementptr inbounds %struct.anon, %struct.anon* %34, i32 0, i32 0
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @test_CharToOem_OemToChar.helloWorld, i64 0, i64 0), i8* null
  store i8* %40, i8** %7, align 8
  %41 = load i32, i32* %2, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [4 x %struct.anon], [4 x %struct.anon]* @test_CharToOem_OemToChar.tests, i64 0, i64 %42
  %44 = getelementptr inbounds %struct.anon, %struct.anon* %43, i32 0, i32 1
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %22
  %49 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  br label %51

50:                                               ; preds = %22
  br label %51

51:                                               ; preds = %50, %48
  %52 = phi i8* [ %49, %48 ], [ null, %50 ]
  store i8* %52, i8** %9, align 8
  %53 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %54 = call i32 @memset(i8* %53, i32 0, i32 64)
  %55 = load i8*, i8** %7, align 8
  %56 = load i8*, i8** %9, align 8
  %57 = call signext i8 @CharToOemA(i8* %55, i8* %56)
  store i8 %57, i8* %1, align 1
  %58 = load i8, i8* %1, align 1
  %59 = sext i8 %58 to i32
  %60 = load i32, i32* %2, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [4 x %struct.anon], [4 x %struct.anon]* @test_CharToOem_OemToChar.tests, i64 0, i64 %61
  %63 = getelementptr inbounds %struct.anon, %struct.anon* %62, i32 0, i32 2
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %59, %65
  %67 = zext i1 %66 to i32
  %68 = load i32, i32* %2, align 4
  %69 = load i32, i32* %2, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [4 x %struct.anon], [4 x %struct.anon]* @test_CharToOem_OemToChar.tests, i64 0, i64 %70
  %72 = getelementptr inbounds %struct.anon, %struct.anon* %71, i32 0, i32 2
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = load i8, i8* %1, align 1
  %76 = sext i8 %75 to i32
  %77 = call i32 (i32, i8*, i32, ...) @ok(i32 %67, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %68, i32 %74, i32 %76)
  %78 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %79 = load i8*, i8** %6, align 8
  %80 = call i32 @strcmp(i8* %78, i8* %79)
  %81 = icmp ne i32 %80, 0
  %82 = xor i1 %81, true
  %83 = zext i1 %82 to i32
  %84 = load i32, i32* %2, align 4
  %85 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %86 = call i32 (i32, i8*, i32, ...) @ok(i32 %83, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %84, i8* %85)
  %87 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %88 = call i32 @memset(i8* %87, i32 0, i32 64)
  %89 = load i8*, i8** %7, align 8
  %90 = load i8*, i8** %9, align 8
  %91 = call signext i8 @CharToOemBuffA(i8* %89, i8* %90, i32 12)
  store i8 %91, i8* %1, align 1
  %92 = load i8, i8* %1, align 1
  %93 = sext i8 %92 to i32
  %94 = load i32, i32* %2, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [4 x %struct.anon], [4 x %struct.anon]* @test_CharToOem_OemToChar.tests, i64 0, i64 %95
  %97 = getelementptr inbounds %struct.anon, %struct.anon* %96, i32 0, i32 2
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp eq i32 %93, %99
  %101 = zext i1 %100 to i32
  %102 = load i32, i32* %2, align 4
  %103 = load i32, i32* %2, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [4 x %struct.anon], [4 x %struct.anon]* @test_CharToOem_OemToChar.tests, i64 0, i64 %104
  %106 = getelementptr inbounds %struct.anon, %struct.anon* %105, i32 0, i32 2
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = load i8, i8* %1, align 1
  %110 = sext i8 %109 to i32
  %111 = call i32 (i32, i8*, i32, ...) @ok(i32 %101, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %102, i32 %108, i32 %110)
  %112 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %113 = load i8*, i8** %6, align 8
  %114 = call i32 @strcmp(i8* %112, i8* %113)
  %115 = icmp ne i32 %114, 0
  %116 = xor i1 %115, true
  %117 = zext i1 %116 to i32
  %118 = load i32, i32* %2, align 4
  %119 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %120 = call i32 (i32, i8*, i32, ...) @ok(i32 %117, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %118, i8* %119)
  %121 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %122 = call i32 @memset(i8* %121, i32 0, i32 64)
  %123 = load i8*, i8** %7, align 8
  %124 = load i8*, i8** %9, align 8
  %125 = call signext i8 @OemToCharA(i8* %123, i8* %124)
  store i8 %125, i8* %1, align 1
  %126 = load i8, i8* %1, align 1
  %127 = sext i8 %126 to i32
  %128 = load i32, i32* %2, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [4 x %struct.anon], [4 x %struct.anon]* @test_CharToOem_OemToChar.tests, i64 0, i64 %129
  %131 = getelementptr inbounds %struct.anon, %struct.anon* %130, i32 0, i32 2
  %132 = load i8, i8* %131, align 1
  %133 = sext i8 %132 to i32
  %134 = icmp eq i32 %127, %133
  %135 = zext i1 %134 to i32
  %136 = load i32, i32* %2, align 4
  %137 = load i32, i32* %2, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [4 x %struct.anon], [4 x %struct.anon]* @test_CharToOem_OemToChar.tests, i64 0, i64 %138
  %140 = getelementptr inbounds %struct.anon, %struct.anon* %139, i32 0, i32 2
  %141 = load i8, i8* %140, align 1
  %142 = sext i8 %141 to i32
  %143 = load i8, i8* %1, align 1
  %144 = sext i8 %143 to i32
  %145 = call i32 (i32, i8*, i32, ...) @ok(i32 %135, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %136, i32 %142, i32 %144)
  %146 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %147 = load i8*, i8** %6, align 8
  %148 = call i32 @strcmp(i8* %146, i8* %147)
  %149 = icmp ne i32 %148, 0
  %150 = xor i1 %149, true
  %151 = zext i1 %150 to i32
  %152 = load i32, i32* %2, align 4
  %153 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %154 = call i32 (i32, i8*, i32, ...) @ok(i32 %151, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %152, i8* %153)
  %155 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %156 = call i32 @memset(i8* %155, i32 0, i32 64)
  %157 = load i8*, i8** %7, align 8
  %158 = load i8*, i8** %9, align 8
  %159 = call signext i8 @OemToCharBuffA(i8* %157, i8* %158, i32 12)
  store i8 %159, i8* %1, align 1
  %160 = load i8, i8* %1, align 1
  %161 = sext i8 %160 to i32
  %162 = load i32, i32* %2, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds [4 x %struct.anon], [4 x %struct.anon]* @test_CharToOem_OemToChar.tests, i64 0, i64 %163
  %165 = getelementptr inbounds %struct.anon, %struct.anon* %164, i32 0, i32 2
  %166 = load i8, i8* %165, align 1
  %167 = sext i8 %166 to i32
  %168 = icmp eq i32 %161, %167
  %169 = zext i1 %168 to i32
  %170 = load i32, i32* %2, align 4
  %171 = load i32, i32* %2, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds [4 x %struct.anon], [4 x %struct.anon]* @test_CharToOem_OemToChar.tests, i64 0, i64 %172
  %174 = getelementptr inbounds %struct.anon, %struct.anon* %173, i32 0, i32 2
  %175 = load i8, i8* %174, align 1
  %176 = sext i8 %175 to i32
  %177 = load i8, i8* %1, align 1
  %178 = sext i8 %177 to i32
  %179 = call i32 (i32, i8*, i32, ...) @ok(i32 %169, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %170, i32 %176, i32 %178)
  %180 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %181 = load i8*, i8** %6, align 8
  %182 = call i32 @strcmp(i8* %180, i8* %181)
  %183 = icmp ne i32 %182, 0
  %184 = xor i1 %183, true
  %185 = zext i1 %184 to i32
  %186 = load i32, i32* %2, align 4
  %187 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %188 = call i32 (i32, i8*, i32, ...) @ok(i32 %185, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %186, i8* %187)
  br label %189

189:                                              ; preds = %51
  %190 = load i32, i32* %2, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %2, align 4
  br label %18

192:                                              ; preds = %18
  store i32 0, i32* %2, align 4
  br label %193

193:                                              ; preds = %296, %192
  %194 = load i32, i32* %2, align 4
  %195 = sext i32 %194 to i64
  %196 = icmp ult i64 %195, 4
  br i1 %196, label %197, label %299

197:                                              ; preds = %193
  %198 = load i32, i32* %2, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds [4 x %struct.anon], [4 x %struct.anon]* @test_CharToOem_OemToChar.tests, i64 0, i64 %199
  %201 = getelementptr inbounds %struct.anon, %struct.anon* %200, i32 0, i32 2
  %202 = load i8, i8* %201, align 1
  %203 = sext i8 %202 to i32
  %204 = icmp ne i32 %203, 0
  %205 = zext i1 %204 to i64
  %206 = select i1 %204, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @test_CharToOem_OemToChar.helloWorld, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)
  store i8* %206, i8** %10, align 8
  %207 = load i32, i32* %2, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds [4 x %struct.anon], [4 x %struct.anon]* @test_CharToOem_OemToChar.tests, i64 0, i64 %208
  %210 = getelementptr inbounds %struct.anon, %struct.anon* %209, i32 0, i32 0
  %211 = load i8, i8* %210, align 1
  %212 = sext i8 %211 to i32
  %213 = icmp ne i32 %212, 0
  %214 = zext i1 %213 to i64
  %215 = select i1 %213, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @test_CharToOem_OemToChar.helloWorldW, i64 0, i64 0), i8* null
  store i8* %215, i8** %11, align 8
  %216 = load i32, i32* %2, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds [4 x %struct.anon], [4 x %struct.anon]* @test_CharToOem_OemToChar.tests, i64 0, i64 %217
  %219 = getelementptr inbounds %struct.anon, %struct.anon* %218, i32 0, i32 1
  %220 = load i8, i8* %219, align 1
  %221 = sext i8 %220 to i32
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %225

223:                                              ; preds = %197
  %224 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  br label %226

225:                                              ; preds = %197
  br label %226

226:                                              ; preds = %225, %223
  %227 = phi i8* [ %224, %223 ], [ null, %225 ]
  store i8* %227, i8** %13, align 8
  %228 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %229 = call i32 @memset(i8* %228, i32 0, i32 64)
  %230 = load i8*, i8** %11, align 8
  %231 = load i8*, i8** %13, align 8
  %232 = call signext i8 @CharToOemW(i8* %230, i8* %231)
  store i8 %232, i8* %1, align 1
  %233 = load i8, i8* %1, align 1
  %234 = sext i8 %233 to i32
  %235 = load i32, i32* %2, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds [4 x %struct.anon], [4 x %struct.anon]* @test_CharToOem_OemToChar.tests, i64 0, i64 %236
  %238 = getelementptr inbounds %struct.anon, %struct.anon* %237, i32 0, i32 2
  %239 = load i8, i8* %238, align 1
  %240 = sext i8 %239 to i32
  %241 = icmp eq i32 %234, %240
  %242 = zext i1 %241 to i32
  %243 = load i32, i32* %2, align 4
  %244 = load i32, i32* %2, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds [4 x %struct.anon], [4 x %struct.anon]* @test_CharToOem_OemToChar.tests, i64 0, i64 %245
  %247 = getelementptr inbounds %struct.anon, %struct.anon* %246, i32 0, i32 2
  %248 = load i8, i8* %247, align 1
  %249 = sext i8 %248 to i32
  %250 = load i8, i8* %1, align 1
  %251 = sext i8 %250 to i32
  %252 = call i32 (i32, i8*, i32, ...) @ok(i32 %242, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %243, i32 %249, i32 %251)
  %253 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %254 = load i8*, i8** %10, align 8
  %255 = call i32 @strcmp(i8* %253, i8* %254)
  %256 = icmp ne i32 %255, 0
  %257 = xor i1 %256, true
  %258 = zext i1 %257 to i32
  %259 = load i32, i32* %2, align 4
  %260 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %261 = call i32 (i32, i8*, i32, ...) @ok(i32 %258, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %259, i8* %260)
  %262 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %263 = call i32 @memset(i8* %262, i32 0, i32 64)
  %264 = load i8*, i8** %11, align 8
  %265 = load i8*, i8** %13, align 8
  %266 = call signext i8 @CharToOemBuffW(i8* %264, i8* %265, i32 12)
  store i8 %266, i8* %1, align 1
  %267 = load i8, i8* %1, align 1
  %268 = sext i8 %267 to i32
  %269 = load i32, i32* %2, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds [4 x %struct.anon], [4 x %struct.anon]* @test_CharToOem_OemToChar.tests, i64 0, i64 %270
  %272 = getelementptr inbounds %struct.anon, %struct.anon* %271, i32 0, i32 2
  %273 = load i8, i8* %272, align 1
  %274 = sext i8 %273 to i32
  %275 = icmp eq i32 %268, %274
  %276 = zext i1 %275 to i32
  %277 = load i32, i32* %2, align 4
  %278 = load i32, i32* %2, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds [4 x %struct.anon], [4 x %struct.anon]* @test_CharToOem_OemToChar.tests, i64 0, i64 %279
  %281 = getelementptr inbounds %struct.anon, %struct.anon* %280, i32 0, i32 2
  %282 = load i8, i8* %281, align 1
  %283 = sext i8 %282 to i32
  %284 = load i8, i8* %1, align 1
  %285 = sext i8 %284 to i32
  %286 = call i32 (i32, i8*, i32, ...) @ok(i32 %276, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %277, i32 %283, i32 %285)
  %287 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %288 = load i8*, i8** %10, align 8
  %289 = call i32 @strcmp(i8* %287, i8* %288)
  %290 = icmp ne i32 %289, 0
  %291 = xor i1 %290, true
  %292 = zext i1 %291 to i32
  %293 = load i32, i32* %2, align 4
  %294 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %295 = call i32 (i32, i8*, i32, ...) @ok(i32 %292, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %293, i8* %294)
  br label %296

296:                                              ; preds = %226
  %297 = load i32, i32* %2, align 4
  %298 = add nsw i32 %297, 1
  store i32 %298, i32* %2, align 4
  br label %193

299:                                              ; preds = %193
  store i32 0, i32* %2, align 4
  br label %300

300:                                              ; preds = %405, %299
  %301 = load i32, i32* %2, align 4
  %302 = sext i32 %301 to i64
  %303 = icmp ult i64 %302, 4
  br i1 %303, label %304, label %408

304:                                              ; preds = %300
  %305 = load i32, i32* %2, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds [4 x %struct.anon], [4 x %struct.anon]* @test_CharToOem_OemToChar.tests, i64 0, i64 %306
  %308 = getelementptr inbounds %struct.anon, %struct.anon* %307, i32 0, i32 2
  %309 = load i8, i8* %308, align 1
  %310 = sext i8 %309 to i32
  %311 = icmp ne i32 %310, 0
  %312 = zext i1 %311 to i64
  %313 = select i1 %311, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @test_CharToOem_OemToChar.helloWorldW, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @test_CharToOem_OemToChar.emptyW, i64 0, i64 0)
  store i8* %313, i8** %14, align 8
  %314 = load i32, i32* %2, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds [4 x %struct.anon], [4 x %struct.anon]* @test_CharToOem_OemToChar.tests, i64 0, i64 %315
  %317 = getelementptr inbounds %struct.anon, %struct.anon* %316, i32 0, i32 0
  %318 = load i8, i8* %317, align 1
  %319 = sext i8 %318 to i32
  %320 = icmp ne i32 %319, 0
  %321 = zext i1 %320 to i64
  %322 = select i1 %320, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @test_CharToOem_OemToChar.helloWorld, i64 0, i64 0), i8* null
  store i8* %322, i8** %15, align 8
  %323 = load i32, i32* %2, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds [4 x %struct.anon], [4 x %struct.anon]* @test_CharToOem_OemToChar.tests, i64 0, i64 %324
  %326 = getelementptr inbounds %struct.anon, %struct.anon* %325, i32 0, i32 1
  %327 = load i8, i8* %326, align 1
  %328 = sext i8 %327 to i32
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %332

330:                                              ; preds = %304
  %331 = getelementptr inbounds [64 x i8], [64 x i8]* %16, i64 0, i64 0
  br label %333

332:                                              ; preds = %304
  br label %333

333:                                              ; preds = %332, %330
  %334 = phi i8* [ %331, %330 ], [ null, %332 ]
  store i8* %334, i8** %17, align 8
  %335 = getelementptr inbounds [64 x i8], [64 x i8]* %16, i64 0, i64 0
  %336 = call i32 @memset(i8* %335, i32 0, i32 64)
  %337 = load i8*, i8** %15, align 8
  %338 = load i8*, i8** %17, align 8
  %339 = call signext i8 @OemToCharW(i8* %337, i8* %338)
  store i8 %339, i8* %1, align 1
  %340 = load i8, i8* %1, align 1
  %341 = sext i8 %340 to i32
  %342 = load i32, i32* %2, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds [4 x %struct.anon], [4 x %struct.anon]* @test_CharToOem_OemToChar.tests, i64 0, i64 %343
  %345 = getelementptr inbounds %struct.anon, %struct.anon* %344, i32 0, i32 2
  %346 = load i8, i8* %345, align 1
  %347 = sext i8 %346 to i32
  %348 = icmp eq i32 %341, %347
  %349 = zext i1 %348 to i32
  %350 = load i32, i32* %2, align 4
  %351 = load i32, i32* %2, align 4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds [4 x %struct.anon], [4 x %struct.anon]* @test_CharToOem_OemToChar.tests, i64 0, i64 %352
  %354 = getelementptr inbounds %struct.anon, %struct.anon* %353, i32 0, i32 2
  %355 = load i8, i8* %354, align 1
  %356 = sext i8 %355 to i32
  %357 = load i8, i8* %1, align 1
  %358 = sext i8 %357 to i32
  %359 = call i32 (i32, i8*, i32, ...) @ok(i32 %349, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %350, i32 %356, i32 %358)
  %360 = getelementptr inbounds [64 x i8], [64 x i8]* %16, i64 0, i64 0
  %361 = load i8*, i8** %14, align 8
  %362 = call i32 @lstrcmpW(i8* %360, i8* %361)
  %363 = icmp ne i32 %362, 0
  %364 = xor i1 %363, true
  %365 = zext i1 %364 to i32
  %366 = load i32, i32* %2, align 4
  %367 = getelementptr inbounds [64 x i8], [64 x i8]* %16, i64 0, i64 0
  %368 = call i32 @wine_dbgstr_w(i8* %367)
  %369 = call i32 (i32, i8*, i32, ...) @ok(i32 %365, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %366, i32 %368)
  %370 = getelementptr inbounds [64 x i8], [64 x i8]* %16, i64 0, i64 0
  %371 = call i32 @memset(i8* %370, i32 0, i32 64)
  %372 = load i8*, i8** %15, align 8
  %373 = load i8*, i8** %17, align 8
  %374 = call signext i8 @OemToCharBuffW(i8* %372, i8* %373, i32 12)
  store i8 %374, i8* %1, align 1
  %375 = load i8, i8* %1, align 1
  %376 = sext i8 %375 to i32
  %377 = load i32, i32* %2, align 4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds [4 x %struct.anon], [4 x %struct.anon]* @test_CharToOem_OemToChar.tests, i64 0, i64 %378
  %380 = getelementptr inbounds %struct.anon, %struct.anon* %379, i32 0, i32 2
  %381 = load i8, i8* %380, align 1
  %382 = sext i8 %381 to i32
  %383 = icmp eq i32 %376, %382
  %384 = zext i1 %383 to i32
  %385 = load i32, i32* %2, align 4
  %386 = load i32, i32* %2, align 4
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds [4 x %struct.anon], [4 x %struct.anon]* @test_CharToOem_OemToChar.tests, i64 0, i64 %387
  %389 = getelementptr inbounds %struct.anon, %struct.anon* %388, i32 0, i32 2
  %390 = load i8, i8* %389, align 1
  %391 = sext i8 %390 to i32
  %392 = load i8, i8* %1, align 1
  %393 = sext i8 %392 to i32
  %394 = call i32 (i32, i8*, i32, ...) @ok(i32 %384, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %385, i32 %391, i32 %393)
  %395 = getelementptr inbounds [64 x i8], [64 x i8]* %16, i64 0, i64 0
  %396 = load i8*, i8** %14, align 8
  %397 = call i32 @lstrcmpW(i8* %395, i8* %396)
  %398 = icmp ne i32 %397, 0
  %399 = xor i1 %398, true
  %400 = zext i1 %399 to i32
  %401 = load i32, i32* %2, align 4
  %402 = getelementptr inbounds [64 x i8], [64 x i8]* %16, i64 0, i64 0
  %403 = call i32 @wine_dbgstr_w(i8* %402)
  %404 = call i32 (i32, i8*, i32, ...) @ok(i32 %400, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %401, i32 %403)
  br label %405

405:                                              ; preds = %333
  %406 = load i32, i32* %2, align 4
  %407 = add nsw i32 %406, 1
  store i32 %407, i32* %2, align 4
  br label %300

408:                                              ; preds = %300
  store i32 0, i32* %2, align 4
  br label %409

409:                                              ; preds = %437, %408
  %410 = load i32, i32* %2, align 4
  %411 = icmp slt i32 %410, 256
  br i1 %411, label %412, label %440

412:                                              ; preds = %409
  %413 = load i32, i32* %2, align 4
  %414 = trunc i32 %413 to i8
  store i8 %414, i8* %3, align 1
  %415 = call signext i8 @OemToCharBuffW(i8* %3, i8* %4, i32 1)
  store i8 %415, i8* %1, align 1
  %416 = load i8, i8* %1, align 1
  %417 = sext i8 %416 to i32
  %418 = load i32, i32* %2, align 4
  %419 = call i32 (i32, i8*, i32, ...) @ok(i32 %417, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %418)
  %420 = load i32, i32* @CP_OEMCP, align 4
  %421 = load i32, i32* @MB_PRECOMPOSED, align 4
  %422 = load i32, i32* @MB_USEGLYPHCHARS, align 4
  %423 = or i32 %421, %422
  %424 = call i32 @MultiByteToWideChar(i32 %420, i32 %423, i8* %3, i32 1, i8* %5, i32 1)
  %425 = load i8, i8* %4, align 1
  %426 = sext i8 %425 to i32
  %427 = load i8, i8* %5, align 1
  %428 = sext i8 %427 to i32
  %429 = icmp eq i32 %426, %428
  %430 = zext i1 %429 to i32
  %431 = load i32, i32* %2, align 4
  %432 = load i8, i8* %4, align 1
  %433 = sext i8 %432 to i32
  %434 = load i8, i8* %5, align 1
  %435 = sext i8 %434 to i32
  %436 = call i32 (i32, i8*, i32, ...) @ok(i32 %430, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %431, i32 %433, i32 %435)
  br label %437

437:                                              ; preds = %412
  %438 = load i32, i32* %2, align 4
  %439 = add nsw i32 %438, 1
  store i32 %439, i32* %2, align 4
  br label %409

440:                                              ; preds = %409
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local signext i8 @CharToOemA(i8*, i8*) #1

declare dso_local i32 @ok(i32, i8*, i32, ...) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local signext i8 @CharToOemBuffA(i8*, i8*, i32) #1

declare dso_local signext i8 @OemToCharA(i8*, i8*) #1

declare dso_local signext i8 @OemToCharBuffA(i8*, i8*, i32) #1

declare dso_local signext i8 @CharToOemW(i8*, i8*) #1

declare dso_local signext i8 @CharToOemBuffW(i8*, i8*, i32) #1

declare dso_local signext i8 @OemToCharW(i8*, i8*) #1

declare dso_local i32 @lstrcmpW(i8*, i8*) #1

declare dso_local i32 @wine_dbgstr_w(i8*) #1

declare dso_local signext i8 @OemToCharBuffW(i8*, i8*, i32) #1

declare dso_local i32 @MultiByteToWideChar(i32, i32, i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
