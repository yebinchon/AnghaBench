; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_string.c_test_StrCatChainW.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_string.c_test_StrCatChainW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_StrCatChainW.deadbeefW = internal constant [9 x i8] c"DeAdBeEf\00", align 1
@test_StrCatChainW.deadW = internal constant [5 x i8] c"DeAd\00", align 1
@test_StrCatChainW.beefW = internal constant [5 x i8] c"BeEf\00", align 1
@.str = private unnamed_addr constant [43 x i8] c"Expected StrCatChainW to return 0, got %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Expected buf[0] = 0x1111, got %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Expected StrCatChainW to return 8, got %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Buffer contains wrong data\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"Expected StrCatChainW to return 4, got %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [68 x i8] c"Windows2000/XP behaviour detected for StrCatChainW, skipping tests\0A\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"Expected StrCatChainW to return 3, got %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"String is not nullterminated\0A\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"Expected buf[4] = 0x1111, got %x\0A\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"Expected buf[0] = 'D', got %x\0A\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"Expected buf[1] = 'B', got %x\0A\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"Expected buf[2] = 'e', got %x\0A\00", align 1
@.str.12 = private unnamed_addr constant [44 x i8] c"Expected StrCatChainW to return 10, got %u\0A\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"Expected buf[5] = 'e', got %x\0A\00", align 1
@.str.14 = private unnamed_addr constant [43 x i8] c"Expected StrCatChainW to return 6, got %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_StrCatChainW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_StrCatChainW() #0 {
  %1 = alloca [33 x i8], align 16
  %2 = alloca i32, align 4
  %3 = call i32 @pStrCatChainW(i8* null, i32 0, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_StrCatChainW.beefW, i64 0, i64 0))
  store i32 %3, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp eq i32 %4, 0
  %6 = zext i1 %5 to i32
  %7 = load i32, i32* %2, align 4
  %8 = call i32 (i32, i8*, ...) @ok(i32 %6, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = getelementptr inbounds [33 x i8], [33 x i8]* %1, i64 0, i64 0
  %10 = call i32 @memset(i8* %9, i32 17, i32 33)
  %11 = getelementptr inbounds [33 x i8], [33 x i8]* %1, i64 0, i64 0
  %12 = call i32 @pStrCatChainW(i8* %11, i32 0, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_StrCatChainW.beefW, i64 0, i64 0))
  store i32 %12, i32* %2, align 4
  %13 = load i32, i32* %2, align 4
  %14 = icmp eq i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = load i32, i32* %2, align 4
  %17 = call i32 (i32, i8*, ...) @ok(i32 %15, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = getelementptr inbounds [33 x i8], [33 x i8]* %1, i64 0, i64 0
  %19 = load i8, i8* %18, align 16
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 4369
  %22 = zext i1 %21 to i32
  %23 = getelementptr inbounds [33 x i8], [33 x i8]* %1, i64 0, i64 0
  %24 = load i8, i8* %23, align 16
  %25 = sext i8 %24 to i32
  %26 = call i32 (i32, i8*, ...) @ok(i32 %22, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = getelementptr inbounds [33 x i8], [33 x i8]* %1, i64 0, i64 0
  %28 = call i32 @memcpy(i8* %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_StrCatChainW.deadbeefW, i64 0, i64 0), i32 9)
  %29 = getelementptr inbounds [33 x i8], [33 x i8]* %1, i64 0, i64 0
  %30 = call i32 @pStrCatChainW(i8* %29, i32 0, i32 -1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_StrCatChainW.beefW, i64 0, i64 0))
  store i32 %30, i32* %2, align 4
  %31 = load i32, i32* %2, align 4
  %32 = icmp eq i32 %31, 8
  %33 = zext i1 %32 to i32
  %34 = load i32, i32* %2, align 4
  %35 = call i32 (i32, i8*, ...) @ok(i32 %33, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  %36 = getelementptr inbounds [33 x i8], [33 x i8]* %1, i64 0, i64 0
  %37 = call i32 @memcmp(i8* %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_StrCatChainW.deadbeefW, i64 0, i64 0), i32 9)
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = call i32 (i32, i8*, ...) @ok(i32 %40, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %42 = getelementptr inbounds [33 x i8], [33 x i8]* %1, i64 0, i64 0
  %43 = call i32 @memset(i8* %42, i32 17, i32 33)
  %44 = getelementptr inbounds [33 x i8], [33 x i8]* %1, i64 0, i64 0
  %45 = call i32 @pStrCatChainW(i8* %44, i32 32, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_StrCatChainW.deadW, i64 0, i64 0))
  store i32 %45, i32* %2, align 4
  %46 = load i32, i32* %2, align 4
  %47 = icmp eq i32 %46, 4
  %48 = zext i1 %47 to i32
  %49 = load i32, i32* %2, align 4
  %50 = call i32 (i32, i8*, ...) @ok(i32 %48, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %49)
  %51 = getelementptr inbounds [33 x i8], [33 x i8]* %1, i64 0, i64 0
  %52 = call i32 @memcmp(i8* %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_StrCatChainW.deadW, i64 0, i64 0), i32 5)
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = call i32 (i32, i8*, ...) @ok(i32 %55, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %57 = getelementptr inbounds [33 x i8], [33 x i8]* %1, i64 0, i64 0
  %58 = call i32 @pStrCatChainW(i8* %57, i32 32, i32 -1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_StrCatChainW.beefW, i64 0, i64 0))
  store i32 %58, i32* %2, align 4
  %59 = load i32, i32* %2, align 4
  %60 = icmp eq i32 %59, 8
  %61 = zext i1 %60 to i32
  %62 = load i32, i32* %2, align 4
  %63 = call i32 (i32, i8*, ...) @ok(i32 %61, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %62)
  %64 = getelementptr inbounds [33 x i8], [33 x i8]* %1, i64 0, i64 0
  %65 = call i32 @memcmp(i8* %64, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_StrCatChainW.deadbeefW, i64 0, i64 0), i32 9)
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  %68 = zext i1 %67 to i32
  %69 = call i32 (i32, i8*, ...) @ok(i32 %68, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %70 = getelementptr inbounds [33 x i8], [33 x i8]* %1, i64 0, i64 0
  %71 = call i32 @memset(i8* %70, i32 17, i32 33)
  %72 = getelementptr inbounds [33 x i8], [33 x i8]* %1, i64 0, i64 0
  %73 = call i32 @pStrCatChainW(i8* %72, i32 32, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_StrCatChainW.deadW, i64 0, i64 0))
  store i32 %73, i32* %2, align 4
  %74 = load i32, i32* %2, align 4
  %75 = icmp eq i32 %74, 4
  %76 = zext i1 %75 to i32
  %77 = load i32, i32* %2, align 4
  %78 = call i32 (i32, i8*, ...) @ok(i32 %76, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %77)
  %79 = getelementptr inbounds [33 x i8], [33 x i8]* %1, i64 0, i64 0
  %80 = call i32 @memcmp(i8* %79, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_StrCatChainW.deadW, i64 0, i64 0), i32 5)
  %81 = icmp ne i32 %80, 0
  %82 = xor i1 %81, true
  %83 = zext i1 %82 to i32
  %84 = call i32 (i32, i8*, ...) @ok(i32 %83, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %85 = getelementptr inbounds [33 x i8], [33 x i8]* %1, i64 0, i64 0
  %86 = call i32 @pStrCatChainW(i8* %85, i32 32, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_StrCatChainW.beefW, i64 0, i64 0))
  store i32 %86, i32* %2, align 4
  %87 = load i32, i32* %2, align 4
  %88 = icmp eq i32 %87, 8
  %89 = zext i1 %88 to i32
  %90 = load i32, i32* %2, align 4
  %91 = call i32 (i32, i8*, ...) @ok(i32 %89, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %90)
  %92 = getelementptr inbounds [33 x i8], [33 x i8]* %1, i64 0, i64 0
  %93 = call i32 @memcmp(i8* %92, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_StrCatChainW.deadbeefW, i64 0, i64 0), i32 9)
  %94 = icmp ne i32 %93, 0
  %95 = xor i1 %94, true
  %96 = zext i1 %95 to i32
  %97 = call i32 (i32, i8*, ...) @ok(i32 %96, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %98 = getelementptr inbounds [33 x i8], [33 x i8]* %1, i64 0, i64 0
  %99 = call i32 @memset(i8* %98, i32 17, i32 33)
  %100 = getelementptr inbounds [33 x i8], [33 x i8]* %1, i64 0, i64 0
  %101 = call i32 @pStrCatChainW(i8* %100, i32 5, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_StrCatChainW.deadW, i64 0, i64 0))
  store i32 %101, i32* %2, align 4
  %102 = load i32, i32* %2, align 4
  %103 = icmp eq i32 %102, 4
  %104 = zext i1 %103 to i32
  %105 = load i32, i32* %2, align 4
  %106 = call i32 (i32, i8*, ...) @ok(i32 %104, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %105)
  %107 = getelementptr inbounds [33 x i8], [33 x i8]* %1, i64 0, i64 0
  %108 = call i32 @memcmp(i8* %107, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_StrCatChainW.deadW, i64 0, i64 0), i32 5)
  %109 = icmp ne i32 %108, 0
  %110 = xor i1 %109, true
  %111 = zext i1 %110 to i32
  %112 = call i32 (i32, i8*, ...) @ok(i32 %111, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %113 = getelementptr inbounds [33 x i8], [33 x i8]* %1, i64 0, i64 0
  %114 = call i32 @memset(i8* %113, i32 17, i32 33)
  %115 = getelementptr inbounds [33 x i8], [33 x i8]* %1, i64 0, i64 0
  %116 = call i32 @pStrCatChainW(i8* %115, i32 4, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_StrCatChainW.deadW, i64 0, i64 0))
  store i32 %116, i32* %2, align 4
  %117 = load i32, i32* %2, align 4
  %118 = icmp eq i32 %117, 4
  br i1 %118, label %119, label %121

119:                                              ; preds = %0
  %120 = call i32 @win_skip(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.5, i64 0, i64 0))
  br label %323

121:                                              ; preds = %0
  %122 = load i32, i32* %2, align 4
  %123 = icmp eq i32 %122, 3
  %124 = zext i1 %123 to i32
  %125 = load i32, i32* %2, align 4
  %126 = call i32 (i32, i8*, ...) @ok(i32 %124, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i32 %125)
  %127 = getelementptr inbounds [33 x i8], [33 x i8]* %1, i64 0, i64 0
  %128 = call i32 @memcmp(i8* %127, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_StrCatChainW.deadW, i64 0, i64 0), i32 3)
  %129 = icmp ne i32 %128, 0
  %130 = xor i1 %129, true
  %131 = zext i1 %130 to i32
  %132 = call i32 (i32, i8*, ...) @ok(i32 %131, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %133 = getelementptr inbounds [33 x i8], [33 x i8]* %1, i64 0, i64 3
  %134 = load i8, i8* %133, align 1
  %135 = icmp ne i8 %134, 0
  %136 = xor i1 %135, true
  %137 = zext i1 %136 to i32
  %138 = call i32 (i32, i8*, ...) @ok(i32 %137, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  %139 = getelementptr inbounds [33 x i8], [33 x i8]* %1, i64 0, i64 4
  %140 = load i8, i8* %139, align 4
  %141 = sext i8 %140 to i32
  %142 = icmp eq i32 %141, 4369
  %143 = zext i1 %142 to i32
  %144 = getelementptr inbounds [33 x i8], [33 x i8]* %1, i64 0, i64 4
  %145 = load i8, i8* %144, align 4
  %146 = sext i8 %145 to i32
  %147 = call i32 (i32, i8*, ...) @ok(i32 %143, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i32 %146)
  %148 = getelementptr inbounds [33 x i8], [33 x i8]* %1, i64 0, i64 0
  %149 = call i32 @pStrCatChainW(i8* %148, i32 4, i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_StrCatChainW.beefW, i64 0, i64 0))
  store i32 %149, i32* %2, align 4
  %150 = load i32, i32* %2, align 4
  %151 = icmp eq i32 %150, 3
  %152 = zext i1 %151 to i32
  %153 = load i32, i32* %2, align 4
  %154 = call i32 (i32, i8*, ...) @ok(i32 %152, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i32 %153)
  %155 = getelementptr inbounds [33 x i8], [33 x i8]* %1, i64 0, i64 0
  %156 = load i8, i8* %155, align 16
  %157 = sext i8 %156 to i32
  %158 = icmp eq i32 %157, 68
  %159 = zext i1 %158 to i32
  %160 = getelementptr inbounds [33 x i8], [33 x i8]* %1, i64 0, i64 0
  %161 = load i8, i8* %160, align 16
  %162 = sext i8 %161 to i32
  %163 = call i32 (i32, i8*, ...) @ok(i32 %159, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i32 %162)
  %164 = getelementptr inbounds [33 x i8], [33 x i8]* %1, i64 0, i64 1
  %165 = load i8, i8* %164, align 1
  %166 = sext i8 %165 to i32
  %167 = icmp eq i32 %166, 66
  %168 = zext i1 %167 to i32
  %169 = getelementptr inbounds [33 x i8], [33 x i8]* %1, i64 0, i64 1
  %170 = load i8, i8* %169, align 1
  %171 = sext i8 %170 to i32
  %172 = call i32 (i32, i8*, ...) @ok(i32 %168, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0), i32 %171)
  %173 = getelementptr inbounds [33 x i8], [33 x i8]* %1, i64 0, i64 2
  %174 = load i8, i8* %173, align 2
  %175 = sext i8 %174 to i32
  %176 = icmp eq i32 %175, 101
  %177 = zext i1 %176 to i32
  %178 = getelementptr inbounds [33 x i8], [33 x i8]* %1, i64 0, i64 2
  %179 = load i8, i8* %178, align 2
  %180 = sext i8 %179 to i32
  %181 = call i32 (i32, i8*, ...) @ok(i32 %177, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0), i32 %180)
  %182 = getelementptr inbounds [33 x i8], [33 x i8]* %1, i64 0, i64 3
  %183 = load i8, i8* %182, align 1
  %184 = icmp ne i8 %183, 0
  %185 = xor i1 %184, true
  %186 = zext i1 %185 to i32
  %187 = call i32 (i32, i8*, ...) @ok(i32 %186, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  %188 = getelementptr inbounds [33 x i8], [33 x i8]* %1, i64 0, i64 4
  %189 = load i8, i8* %188, align 4
  %190 = sext i8 %189 to i32
  %191 = icmp eq i32 %190, 4369
  %192 = zext i1 %191 to i32
  %193 = getelementptr inbounds [33 x i8], [33 x i8]* %1, i64 0, i64 4
  %194 = load i8, i8* %193, align 4
  %195 = sext i8 %194 to i32
  %196 = call i32 (i32, i8*, ...) @ok(i32 %192, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i32 %195)
  %197 = getelementptr inbounds [33 x i8], [33 x i8]* %1, i64 0, i64 0
  %198 = call i32 @memset(i8* %197, i32 17, i32 33)
  %199 = getelementptr inbounds [33 x i8], [33 x i8]* %1, i64 0, i64 0
  %200 = call i32 @memcpy(i8* %199, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_StrCatChainW.deadbeefW, i64 0, i64 0), i32 9)
  %201 = getelementptr inbounds [33 x i8], [33 x i8]* %1, i64 0, i64 0
  %202 = getelementptr inbounds i8, i8* %201, i64 9
  %203 = call i32 @memcpy(i8* %202, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_StrCatChainW.deadW, i64 0, i64 0), i32 5)
  %204 = getelementptr inbounds [33 x i8], [33 x i8]* %1, i64 0, i64 0
  %205 = call i32 @pStrCatChainW(i8* %204, i32 9, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_StrCatChainW.beefW, i64 0, i64 0))
  store i32 %205, i32* %2, align 4
  %206 = load i32, i32* %2, align 4
  %207 = icmp eq i32 %206, 8
  %208 = zext i1 %207 to i32
  %209 = load i32, i32* %2, align 4
  %210 = call i32 (i32, i8*, ...) @ok(i32 %208, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %209)
  %211 = getelementptr inbounds [33 x i8], [33 x i8]* %1, i64 0, i64 0
  %212 = call i32 @memcmp(i8* %211, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_StrCatChainW.deadbeefW, i64 0, i64 0), i32 9)
  %213 = icmp ne i32 %212, 0
  %214 = xor i1 %213, true
  %215 = zext i1 %214 to i32
  %216 = call i32 (i32, i8*, ...) @ok(i32 %215, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %217 = getelementptr inbounds [33 x i8], [33 x i8]* %1, i64 0, i64 0
  %218 = getelementptr inbounds i8, i8* %217, i64 9
  %219 = call i32 @memcmp(i8* %218, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_StrCatChainW.deadW, i64 0, i64 0), i32 5)
  %220 = icmp ne i32 %219, 0
  %221 = xor i1 %220, true
  %222 = zext i1 %221 to i32
  %223 = call i32 (i32, i8*, ...) @ok(i32 %222, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %224 = getelementptr inbounds [33 x i8], [33 x i8]* %1, i64 0, i64 0
  %225 = call i32 @pStrCatChainW(i8* %224, i32 9, i32 9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_StrCatChainW.beefW, i64 0, i64 0))
  store i32 %225, i32* %2, align 4
  %226 = load i32, i32* %2, align 4
  %227 = icmp eq i32 %226, 8
  %228 = zext i1 %227 to i32
  %229 = load i32, i32* %2, align 4
  %230 = call i32 (i32, i8*, ...) @ok(i32 %228, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %229)
  %231 = getelementptr inbounds [33 x i8], [33 x i8]* %1, i64 0, i64 0
  %232 = call i32 @memcmp(i8* %231, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_StrCatChainW.deadbeefW, i64 0, i64 0), i32 9)
  %233 = icmp ne i32 %232, 0
  %234 = xor i1 %233, true
  %235 = zext i1 %234 to i32
  %236 = call i32 (i32, i8*, ...) @ok(i32 %235, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %237 = getelementptr inbounds [33 x i8], [33 x i8]* %1, i64 0, i64 0
  %238 = getelementptr inbounds i8, i8* %237, i64 9
  %239 = call i32 @memcmp(i8* %238, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_StrCatChainW.deadW, i64 0, i64 0), i32 5)
  %240 = icmp ne i32 %239, 0
  %241 = xor i1 %240, true
  %242 = zext i1 %241 to i32
  %243 = call i32 (i32, i8*, ...) @ok(i32 %242, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %244 = getelementptr inbounds [33 x i8], [33 x i8]* %1, i64 0, i64 0
  %245 = call i32 @pStrCatChainW(i8* %244, i32 9, i32 10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_StrCatChainW.beefW, i64 0, i64 0))
  store i32 %245, i32* %2, align 4
  %246 = load i32, i32* %2, align 4
  %247 = icmp eq i32 %246, 10
  %248 = zext i1 %247 to i32
  %249 = load i32, i32* %2, align 4
  %250 = call i32 (i32, i8*, ...) @ok(i32 %248, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12, i64 0, i64 0), i32 %249)
  %251 = getelementptr inbounds [33 x i8], [33 x i8]* %1, i64 0, i64 0
  %252 = call i32 @memcmp(i8* %251, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_StrCatChainW.deadbeefW, i64 0, i64 0), i32 9)
  %253 = icmp ne i32 %252, 0
  %254 = xor i1 %253, true
  %255 = zext i1 %254 to i32
  %256 = call i32 (i32, i8*, ...) @ok(i32 %255, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %257 = getelementptr inbounds [33 x i8], [33 x i8]* %1, i64 0, i64 0
  %258 = getelementptr inbounds i8, i8* %257, i64 9
  %259 = call i32 @memcmp(i8* %258, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_StrCatChainW.deadW, i64 0, i64 0), i32 5)
  %260 = icmp ne i32 %259, 0
  %261 = xor i1 %260, true
  %262 = zext i1 %261 to i32
  %263 = call i32 (i32, i8*, ...) @ok(i32 %262, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %264 = getelementptr inbounds [33 x i8], [33 x i8]* %1, i64 0, i64 0
  %265 = call i32 @memcpy(i8* %264, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_StrCatChainW.deadbeefW, i64 0, i64 0), i32 9)
  %266 = getelementptr inbounds [33 x i8], [33 x i8]* %1, i64 0, i64 0
  %267 = call i32 @pStrCatChainW(i8* %266, i32 5, i32 -1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_StrCatChainW.deadW, i64 0, i64 0))
  store i32 %267, i32* %2, align 4
  %268 = load i32, i32* %2, align 4
  %269 = icmp eq i32 %268, 8
  %270 = zext i1 %269 to i32
  %271 = load i32, i32* %2, align 4
  %272 = call i32 (i32, i8*, ...) @ok(i32 %270, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %271)
  %273 = getelementptr inbounds [33 x i8], [33 x i8]* %1, i64 0, i64 0
  %274 = call i32 @memcmp(i8* %273, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_StrCatChainW.deadbeefW, i64 0, i64 0), i32 9)
  %275 = icmp ne i32 %274, 0
  %276 = xor i1 %275, true
  %277 = zext i1 %276 to i32
  %278 = call i32 (i32, i8*, ...) @ok(i32 %277, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %279 = getelementptr inbounds [33 x i8], [33 x i8]* %1, i64 0, i64 0
  %280 = call i32 @pStrCatChainW(i8* %279, i32 5, i32 5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_StrCatChainW.deadW, i64 0, i64 0))
  store i32 %280, i32* %2, align 4
  %281 = load i32, i32* %2, align 4
  %282 = icmp eq i32 %281, 4
  %283 = zext i1 %282 to i32
  %284 = load i32, i32* %2, align 4
  %285 = call i32 (i32, i8*, ...) @ok(i32 %283, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %284)
  %286 = getelementptr inbounds [33 x i8], [33 x i8]* %1, i64 0, i64 0
  %287 = call i32 @memcmp(i8* %286, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_StrCatChainW.deadW, i64 0, i64 0), i32 5)
  %288 = icmp ne i32 %287, 0
  %289 = xor i1 %288, true
  %290 = zext i1 %289 to i32
  %291 = call i32 (i32, i8*, ...) @ok(i32 %290, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %292 = getelementptr inbounds [33 x i8], [33 x i8]* %1, i64 0, i64 5
  %293 = load i8, i8* %292, align 1
  %294 = sext i8 %293 to i32
  %295 = icmp eq i32 %294, 101
  %296 = zext i1 %295 to i32
  %297 = getelementptr inbounds [33 x i8], [33 x i8]* %1, i64 0, i64 5
  %298 = load i8, i8* %297, align 1
  %299 = sext i8 %298 to i32
  %300 = call i32 (i32, i8*, ...) @ok(i32 %296, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0), i32 %299)
  %301 = getelementptr inbounds [33 x i8], [33 x i8]* %1, i64 0, i64 0
  %302 = call i32 @pStrCatChainW(i8* %301, i32 5, i32 6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_StrCatChainW.deadW, i64 0, i64 0))
  store i32 %302, i32* %2, align 4
  %303 = load i32, i32* %2, align 4
  %304 = icmp eq i32 %303, 6
  %305 = zext i1 %304 to i32
  %306 = load i32, i32* %2, align 4
  %307 = call i32 (i32, i8*, ...) @ok(i32 %305, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.14, i64 0, i64 0), i32 %306)
  %308 = getelementptr inbounds [33 x i8], [33 x i8]* %1, i64 0, i64 0
  %309 = call i32 @memcmp(i8* %308, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_StrCatChainW.deadW, i64 0, i64 0), i32 5)
  %310 = icmp ne i32 %309, 0
  %311 = xor i1 %310, true
  %312 = zext i1 %311 to i32
  %313 = call i32 (i32, i8*, ...) @ok(i32 %312, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %314 = getelementptr inbounds [33 x i8], [33 x i8]* %1, i64 0, i64 5
  %315 = load i8, i8* %314, align 1
  %316 = sext i8 %315 to i32
  %317 = icmp eq i32 %316, 101
  %318 = zext i1 %317 to i32
  %319 = getelementptr inbounds [33 x i8], [33 x i8]* %1, i64 0, i64 5
  %320 = load i8, i8* %319, align 1
  %321 = sext i8 %320 to i32
  %322 = call i32 (i32, i8*, ...) @ok(i32 %318, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0), i32 %321)
  br label %323

323:                                              ; preds = %121, %119
  ret void
}

declare dso_local i32 @pStrCatChainW(i8*, i32, i32, i8*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @win_skip(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
