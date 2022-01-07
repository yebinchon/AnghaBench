; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_printf.c_test_fprintf.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_printf.c_test_fprintf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_fprintf.file_name = internal constant [12 x i8] c"fprintf.tst\00", align 1
@test_fprintf.utf16_test = internal constant [9 x i8] c"unicode\0A\00", align 1
@.str = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"simple test\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"ret = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"ftell returned %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"contains%cnull\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"%[^\0A] \00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"simple test\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"buf = %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"contains\00null\0A\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"ret =  %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"wt\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"simple test\0D\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"contains\00null\0D\0A\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"unicode\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_fprintf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_fprintf() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca [1024 x i8], align 16
  %3 = alloca i32, align 4
  %4 = call i32* @fopen(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @test_fprintf.file_name, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %4, i32** %1, align 8
  %5 = load i32*, i32** %1, align 8
  %6 = call i32 (i32*, i8*, ...) @fprintf(i32* %5, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp eq i32 %7, 12
  %9 = zext i1 %8 to i32
  %10 = load i32, i32* %3, align 4
  %11 = call i32 (i32, i8*, ...) @ok(i32 %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %10)
  %12 = load i32*, i32** %1, align 8
  %13 = call i32 @ftell(i32* %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp eq i32 %14, 12
  %16 = zext i1 %15 to i32
  %17 = load i32, i32* %3, align 4
  %18 = call i32 (i32, i8*, ...) @ok(i32 %16, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %17)
  %19 = load i32*, i32** %1, align 8
  %20 = call i32 (i32*, i8*, ...) @fprintf(i32* %19, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 0)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = icmp eq i32 %21, 14
  %23 = zext i1 %22 to i32
  %24 = load i32, i32* %3, align 4
  %25 = call i32 (i32, i8*, ...) @ok(i32 %23, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %24)
  %26 = load i32*, i32** %1, align 8
  %27 = call i32 @ftell(i32* %26)
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  %29 = icmp eq i32 %28, 26
  %30 = zext i1 %29 to i32
  %31 = load i32, i32* %3, align 4
  %32 = call i32 (i32, i8*, ...) @ok(i32 %30, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %31)
  %33 = load i32*, i32** %1, align 8
  %34 = call i32 @fwprintf(i32* %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_fprintf.utf16_test, i64 0, i64 0))
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* %3, align 4
  %36 = icmp eq i32 %35, 8
  %37 = zext i1 %36 to i32
  %38 = load i32, i32* %3, align 4
  %39 = call i32 (i32, i8*, ...) @ok(i32 %37, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  %40 = load i32*, i32** %1, align 8
  %41 = call i32 @ftell(i32* %40)
  store i32 %41, i32* %3, align 4
  %42 = load i32, i32* %3, align 4
  %43 = icmp eq i32 %42, 42
  %44 = zext i1 %43 to i32
  %45 = load i32, i32* %3, align 4
  %46 = call i32 (i32, i8*, ...) @ok(i32 %44, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %45)
  %47 = load i32*, i32** %1, align 8
  %48 = call i32 @fclose(i32* %47)
  %49 = call i32* @fopen(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @test_fprintf.file_name, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  store i32* %49, i32** %1, align 8
  %50 = load i32*, i32** %1, align 8
  %51 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %52 = call i32 @fscanf(i32* %50, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* %51)
  store i32 %52, i32* %3, align 4
  %53 = load i32, i32* %3, align 4
  %54 = icmp eq i32 %53, 1
  %55 = zext i1 %54 to i32
  %56 = load i32, i32* %3, align 4
  %57 = call i32 (i32, i8*, ...) @ok(i32 %55, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  %58 = load i32*, i32** %1, align 8
  %59 = call i32 @ftell(i32* %58)
  store i32 %59, i32* %3, align 4
  %60 = load i32, i32* %3, align 4
  %61 = icmp eq i32 %60, 12
  %62 = zext i1 %61 to i32
  %63 = load i32, i32* %3, align 4
  %64 = call i32 (i32, i8*, ...) @ok(i32 %62, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %63)
  %65 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %66 = call i32 @strcmp(i8* %65, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  %70 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %71 = call i32 (i32, i8*, ...) @ok(i32 %69, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* %70)
  %72 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %73 = load i32*, i32** %1, align 8
  %74 = call i32 @fgets(i8* %72, i32 1024, i32* %73)
  %75 = load i32*, i32** %1, align 8
  %76 = call i32 @ftell(i32* %75)
  store i32 %76, i32* %3, align 4
  %77 = load i32, i32* %3, align 4
  %78 = icmp eq i32 %77, 26
  %79 = zext i1 %78 to i32
  %80 = load i32, i32* %3, align 4
  %81 = call i32 (i32, i8*, ...) @ok(i32 %79, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %80)
  %82 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %83 = call i32 (i8*, ...) @memcmp(i8* %82, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i32 14)
  %84 = icmp ne i32 %83, 0
  %85 = xor i1 %84, true
  %86 = zext i1 %85 to i32
  %87 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %88 = call i32 (i32, i8*, ...) @ok(i32 %86, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* %87)
  %89 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %90 = call i32 @memset(i8* %89, i32 0, i32 1024)
  %91 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %92 = load i32*, i32** %1, align 8
  %93 = call i32 @fgets(i8* %91, i32 1024, i32* %92)
  %94 = load i32*, i32** %1, align 8
  %95 = call i32 @ftell(i32* %94)
  store i32 %95, i32* %3, align 4
  %96 = load i32, i32* %3, align 4
  %97 = icmp eq i32 %96, 41
  %98 = zext i1 %97 to i32
  %99 = load i32, i32* %3, align 4
  %100 = call i32 (i32, i8*, ...) @ok(i32 %98, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i32 %99)
  %101 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %102 = call i32 (i8*, ...) @memcmp(i8* %101, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_fprintf.utf16_test, i64 0, i64 0), i64 9)
  %103 = icmp ne i32 %102, 0
  %104 = xor i1 %103, true
  %105 = zext i1 %104 to i32
  %106 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %107 = call i8* @wine_dbgstr_w(i8* %106)
  %108 = call i32 (i32, i8*, ...) @ok(i32 %105, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* %107)
  %109 = load i32*, i32** %1, align 8
  %110 = call i32 @fclose(i32* %109)
  %111 = call i32* @fopen(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @test_fprintf.file_name, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  store i32* %111, i32** %1, align 8
  %112 = load i32*, i32** %1, align 8
  %113 = call i32 (i32*, i8*, ...) @fprintf(i32* %112, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32 %113, i32* %3, align 4
  %114 = load i32, i32* %3, align 4
  %115 = icmp eq i32 %114, 12
  %116 = zext i1 %115 to i32
  %117 = load i32, i32* %3, align 4
  %118 = call i32 (i32, i8*, ...) @ok(i32 %116, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %117)
  %119 = load i32*, i32** %1, align 8
  %120 = call i32 @ftell(i32* %119)
  store i32 %120, i32* %3, align 4
  %121 = load i32, i32* %3, align 4
  %122 = icmp eq i32 %121, 13
  %123 = zext i1 %122 to i32
  %124 = load i32, i32* %3, align 4
  %125 = call i32 (i32, i8*, ...) @ok(i32 %123, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %124)
  %126 = load i32*, i32** %1, align 8
  %127 = call i32 (i32*, i8*, ...) @fprintf(i32* %126, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 0)
  store i32 %127, i32* %3, align 4
  %128 = load i32, i32* %3, align 4
  %129 = icmp eq i32 %128, 14
  %130 = zext i1 %129 to i32
  %131 = load i32, i32* %3, align 4
  %132 = call i32 (i32, i8*, ...) @ok(i32 %130, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %131)
  %133 = load i32*, i32** %1, align 8
  %134 = call i32 @ftell(i32* %133)
  store i32 %134, i32* %3, align 4
  %135 = load i32, i32* %3, align 4
  %136 = icmp eq i32 %135, 28
  %137 = zext i1 %136 to i32
  %138 = load i32, i32* %3, align 4
  %139 = call i32 (i32, i8*, ...) @ok(i32 %137, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %138)
  %140 = load i32*, i32** %1, align 8
  %141 = call i32 @fwprintf(i32* %140, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_fprintf.utf16_test, i64 0, i64 0))
  store i32 %141, i32* %3, align 4
  %142 = load i32, i32* %3, align 4
  %143 = icmp eq i32 %142, 8
  %144 = zext i1 %143 to i32
  %145 = load i32, i32* %3, align 4
  %146 = call i32 (i32, i8*, ...) @ok(i32 %144, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %145)
  %147 = load i32*, i32** %1, align 8
  %148 = call i32 @ftell(i32* %147)
  store i32 %148, i32* %3, align 4
  %149 = load i32, i32* %3, align 4
  %150 = icmp eq i32 %149, 37
  %151 = zext i1 %150 to i32
  %152 = load i32, i32* %3, align 4
  %153 = call i32 (i32, i8*, ...) @ok(i32 %151, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %152)
  %154 = load i32*, i32** %1, align 8
  %155 = call i32 @fclose(i32* %154)
  %156 = call i32* @fopen(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @test_fprintf.file_name, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  store i32* %156, i32** %1, align 8
  %157 = load i32*, i32** %1, align 8
  %158 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %159 = call i32 @fscanf(i32* %157, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* %158)
  store i32 %159, i32* %3, align 4
  %160 = load i32, i32* %3, align 4
  %161 = icmp eq i32 %160, 1
  %162 = zext i1 %161 to i32
  %163 = load i32, i32* %3, align 4
  %164 = call i32 (i32, i8*, ...) @ok(i32 %162, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %163)
  %165 = load i32*, i32** %1, align 8
  %166 = call i32 @ftell(i32* %165)
  store i32 %166, i32* %3, align 4
  %167 = load i32, i32* %3, align 4
  %168 = icmp eq i32 %167, 13
  %169 = zext i1 %168 to i32
  %170 = load i32, i32* %3, align 4
  %171 = call i32 (i32, i8*, ...) @ok(i32 %169, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %170)
  %172 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %173 = call i32 @strcmp(i8* %172, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0))
  %174 = icmp ne i32 %173, 0
  %175 = xor i1 %174, true
  %176 = zext i1 %175 to i32
  %177 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %178 = call i32 (i32, i8*, ...) @ok(i32 %176, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* %177)
  %179 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %180 = load i32*, i32** %1, align 8
  %181 = call i32 @fgets(i8* %179, i32 1024, i32* %180)
  %182 = load i32*, i32** %1, align 8
  %183 = call i32 @ftell(i32* %182)
  store i32 %183, i32* %3, align 4
  %184 = load i32, i32* %3, align 4
  %185 = icmp eq i32 %184, 28
  %186 = zext i1 %185 to i32
  %187 = load i32, i32* %3, align 4
  %188 = call i32 (i32, i8*, ...) @ok(i32 %186, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %187)
  %189 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %190 = call i32 (i8*, ...) @memcmp(i8* %189, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i32 15)
  %191 = icmp ne i32 %190, 0
  %192 = xor i1 %191, true
  %193 = zext i1 %192 to i32
  %194 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %195 = call i32 (i32, i8*, ...) @ok(i32 %193, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* %194)
  %196 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %197 = load i32*, i32** %1, align 8
  %198 = call i32 @fgets(i8* %196, i32 1024, i32* %197)
  %199 = load i32*, i32** %1, align 8
  %200 = call i32 @ftell(i32* %199)
  store i32 %200, i32* %3, align 4
  %201 = load i32, i32* %3, align 4
  %202 = icmp eq i32 %201, 37
  %203 = zext i1 %202 to i32
  %204 = load i32, i32* %3, align 4
  %205 = call i32 (i32, i8*, ...) @ok(i32 %203, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i32 %204)
  %206 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %207 = call i32 @strcmp(i8* %206, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0))
  %208 = icmp ne i32 %207, 0
  %209 = xor i1 %208, true
  %210 = zext i1 %209 to i32
  %211 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %212 = call i32 (i32, i8*, ...) @ok(i32 %210, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* %211)
  %213 = load i32*, i32** %1, align 8
  %214 = call i32 @fclose(i32* %213)
  %215 = call i32 @unlink(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @test_fprintf.file_name, i64 0, i64 0))
  ret void
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @ftell(i32*) #1

declare dso_local i32 @fwprintf(i32*, i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @fscanf(i32*, i8*, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @fgets(i8*, i32, i32*) #1

declare dso_local i32 @memcmp(i8*, ...) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i8* @wine_dbgstr_w(i8*) #1

declare dso_local i32 @unlink(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
