; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_registry.c_test_string_termination.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_registry.c_test_string_termination.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_string_termination.string = internal constant [11 x i8] c"FullString\00", align 1
@hkey_main = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"string_termination\00", align 1
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Expected ERROR_SUCCESS, got %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"stringtest\00", align 1
@REG_SZ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"RegSetValueExA failed: %d\0A\00", align 1
@ERROR_MORE_DATA = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"RegQueryValueExA returned: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"RegQueryValueExA failed: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"wrong size %u != %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"wrong size: %u != %u\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"bad string: %s/%u != %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"buffer overflow at %u %02x\0A\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"RegEnumValueA failed: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"wrong name: %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_string_termination to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_string_termination() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [11 x i8], align 1
  %4 = alloca [11 x i32], align 16
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = load i32, i32* @hkey_main, align 4
  %9 = call i32 @RegCreateKeyA(i32 %8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32* %1)
  store i32 %9, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @ERROR_SUCCESS, align 4
  %12 = icmp eq i32 %10, %11
  %13 = zext i1 %12 to i32
  %14 = load i32, i32* %2, align 4
  %15 = call i32 (i32, i8*, ...) @ok(i32 %13, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %14)
  store i64 10, i64* %5, align 8
  %16 = load i32, i32* %1, align 4
  %17 = load i32, i32* @REG_SZ, align 4
  %18 = load i64, i64* %5, align 8
  %19 = call i32 @RegSetValueExA(i32 %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 0, i32 %17, i32* bitcast ([11 x i8]* @test_string_termination.string to i32*), i64 %18)
  store i32 %19, i32* %2, align 4
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* @ERROR_SUCCESS, align 4
  %22 = icmp eq i32 %20, %21
  %23 = zext i1 %22 to i32
  %24 = load i32, i32* %2, align 4
  %25 = call i32 (i32, i8*, ...) @ok(i32 %23, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %24)
  %26 = load i64, i64* %5, align 8
  store i64 %26, i64* %6, align 8
  %27 = load i32, i32* %1, align 4
  %28 = getelementptr inbounds [11 x i32], [11 x i32]* %4, i64 0, i64 0
  %29 = call i32 @RegQueryValueExA(i32 %27, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32* null, i32* null, i32* %28, i64* %6)
  store i32 %29, i32* %2, align 4
  %30 = load i32, i32* %2, align 4
  %31 = load i32, i32* @ERROR_MORE_DATA, align 4
  %32 = icmp eq i32 %30, %31
  %33 = zext i1 %32 to i32
  %34 = load i32, i32* %2, align 4
  %35 = call i32 (i32, i8*, ...) @ok(i32 %33, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %34)
  store i64 9, i64* %5, align 8
  %36 = load i32, i32* %1, align 4
  %37 = load i32, i32* @REG_SZ, align 4
  %38 = load i64, i64* %5, align 8
  %39 = call i32 @RegSetValueExA(i32 %36, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 0, i32 %37, i32* bitcast ([11 x i8]* @test_string_termination.string to i32*), i64 %38)
  store i32 %39, i32* %2, align 4
  %40 = load i32, i32* %2, align 4
  %41 = load i32, i32* @ERROR_SUCCESS, align 4
  %42 = icmp eq i32 %40, %41
  %43 = zext i1 %42 to i32
  %44 = load i32, i32* %2, align 4
  %45 = call i32 (i32, i8*, ...) @ok(i32 %43, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %44)
  store i64 0, i64* %6, align 8
  %46 = load i32, i32* %1, align 4
  %47 = call i32 @RegQueryValueExA(i32 %46, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32* null, i32* null, i32* null, i64* %6)
  store i32 %47, i32* %2, align 4
  %48 = load i32, i32* %2, align 4
  %49 = load i32, i32* @ERROR_SUCCESS, align 4
  %50 = icmp eq i32 %48, %49
  %51 = zext i1 %50 to i32
  %52 = load i32, i32* %2, align 4
  %53 = call i32 (i32, i8*, ...) @ok(i32 %51, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %52)
  %54 = load i64, i64* %6, align 8
  %55 = load i64, i64* %5, align 8
  %56 = icmp eq i64 %54, %55
  %57 = zext i1 %56 to i32
  %58 = load i64, i64* %6, align 8
  %59 = load i64, i64* %5, align 8
  %60 = call i32 (i32, i8*, ...) @ok(i32 %57, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i64 %58, i64 %59)
  %61 = load i64, i64* %5, align 8
  store i64 %61, i64* %6, align 8
  %62 = getelementptr inbounds [11 x i32], [11 x i32]* %4, i64 0, i64 0
  %63 = call i32 @memset(i32* %62, i32 189, i32 44)
  %64 = load i32, i32* %1, align 4
  %65 = getelementptr inbounds [11 x i32], [11 x i32]* %4, i64 0, i64 0
  %66 = call i32 @RegQueryValueExA(i32 %64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32* null, i32* null, i32* %65, i64* %6)
  store i32 %66, i32* %2, align 4
  %67 = load i32, i32* %2, align 4
  %68 = load i32, i32* @ERROR_SUCCESS, align 4
  %69 = icmp eq i32 %67, %68
  %70 = zext i1 %69 to i32
  %71 = load i32, i32* %2, align 4
  %72 = call i32 (i32, i8*, ...) @ok(i32 %70, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %71)
  %73 = load i64, i64* %6, align 8
  %74 = load i64, i64* %5, align 8
  %75 = icmp eq i64 %73, %74
  %76 = zext i1 %75 to i32
  %77 = load i64, i64* %6, align 8
  %78 = load i64, i64* %5, align 8
  %79 = call i32 (i32, i8*, ...) @ok(i32 %76, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i64 %77, i64 %78)
  %80 = getelementptr inbounds [11 x i32], [11 x i32]* %4, i64 0, i64 0
  %81 = load i64, i64* %6, align 8
  %82 = call i64 @memcmp(i32* %80, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @test_string_termination.string, i64 0, i64 0), i64 %81)
  %83 = icmp eq i64 %82, 0
  %84 = zext i1 %83 to i32
  %85 = getelementptr inbounds [11 x i32], [11 x i32]* %4, i64 0, i64 0
  %86 = bitcast i32* %85 to i8*
  %87 = load i64, i64* %6, align 8
  %88 = call i32 @wine_debugstr_an(i8* %86, i64 %87)
  %89 = load i64, i64* %6, align 8
  %90 = call i32 (i32, i8*, ...) @ok(i32 %84, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 %88, i64 %89, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @test_string_termination.string, i64 0, i64 0))
  %91 = load i64, i64* %5, align 8
  %92 = getelementptr inbounds [11 x i32], [11 x i32]* %4, i64 0, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = icmp eq i32 %93, 189
  %95 = zext i1 %94 to i32
  %96 = load i64, i64* %5, align 8
  %97 = load i64, i64* %5, align 8
  %98 = getelementptr inbounds [11 x i32], [11 x i32]* %4, i64 0, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = call i32 (i32, i8*, ...) @ok(i32 %95, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i64 %96, i32 %99)
  %101 = load i64, i64* %5, align 8
  %102 = add i64 %101, 1
  store i64 %102, i64* %6, align 8
  %103 = getelementptr inbounds [11 x i32], [11 x i32]* %4, i64 0, i64 0
  %104 = call i32 @memset(i32* %103, i32 189, i32 44)
  %105 = load i32, i32* %1, align 4
  %106 = getelementptr inbounds [11 x i32], [11 x i32]* %4, i64 0, i64 0
  %107 = call i32 @RegQueryValueExA(i32 %105, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32* null, i32* null, i32* %106, i64* %6)
  store i32 %107, i32* %2, align 4
  %108 = load i32, i32* %2, align 4
  %109 = load i32, i32* @ERROR_SUCCESS, align 4
  %110 = icmp eq i32 %108, %109
  %111 = zext i1 %110 to i32
  %112 = load i32, i32* %2, align 4
  %113 = call i32 (i32, i8*, ...) @ok(i32 %111, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %112)
  %114 = load i64, i64* %6, align 8
  %115 = load i64, i64* %5, align 8
  %116 = icmp eq i64 %114, %115
  %117 = zext i1 %116 to i32
  %118 = load i64, i64* %6, align 8
  %119 = load i64, i64* %5, align 8
  %120 = call i32 (i32, i8*, ...) @ok(i32 %117, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i64 %118, i64 %119)
  %121 = getelementptr inbounds [11 x i32], [11 x i32]* %4, i64 0, i64 0
  %122 = load i64, i64* %6, align 8
  %123 = call i64 @memcmp(i32* %121, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @test_string_termination.string, i64 0, i64 0), i64 %122)
  %124 = icmp eq i64 %123, 0
  %125 = zext i1 %124 to i32
  %126 = getelementptr inbounds [11 x i32], [11 x i32]* %4, i64 0, i64 0
  %127 = bitcast i32* %126 to i8*
  %128 = load i64, i64* %6, align 8
  %129 = call i32 @wine_debugstr_an(i8* %127, i64 %128)
  %130 = load i64, i64* %6, align 8
  %131 = call i32 (i32, i8*, ...) @ok(i32 %125, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 %129, i64 %130, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @test_string_termination.string, i64 0, i64 0))
  %132 = load i64, i64* %5, align 8
  %133 = getelementptr inbounds [11 x i32], [11 x i32]* %4, i64 0, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = icmp eq i32 %134, 0
  %136 = zext i1 %135 to i32
  %137 = load i64, i64* %5, align 8
  %138 = load i64, i64* %5, align 8
  %139 = getelementptr inbounds [11 x i32], [11 x i32]* %4, i64 0, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = call i32 (i32, i8*, ...) @ok(i32 %136, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i64 %137, i32 %140)
  %142 = load i64, i64* %5, align 8
  store i64 %142, i64* %6, align 8
  %143 = getelementptr inbounds [11 x i32], [11 x i32]* %4, i64 0, i64 0
  %144 = call i32 @memset(i32* %143, i32 189, i32 44)
  store i64 11, i64* %7, align 8
  %145 = load i32, i32* %1, align 4
  %146 = getelementptr inbounds [11 x i8], [11 x i8]* %3, i64 0, i64 0
  %147 = getelementptr inbounds [11 x i32], [11 x i32]* %4, i64 0, i64 0
  %148 = call i32 @RegEnumValueA(i32 %145, i32 0, i8* %146, i64* %7, i32* null, i32* null, i32* %147, i64* %6)
  store i32 %148, i32* %2, align 4
  %149 = load i32, i32* %2, align 4
  %150 = load i32, i32* @ERROR_SUCCESS, align 4
  %151 = icmp eq i32 %149, %150
  %152 = zext i1 %151 to i32
  %153 = load i32, i32* %2, align 4
  %154 = call i32 (i32, i8*, ...) @ok(i32 %152, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 %153)
  %155 = getelementptr inbounds [11 x i8], [11 x i8]* %3, i64 0, i64 0
  %156 = call i64 @strcmp(i8* %155, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %157 = icmp eq i64 %156, 0
  %158 = zext i1 %157 to i32
  %159 = getelementptr inbounds [11 x i8], [11 x i8]* %3, i64 0, i64 0
  %160 = call i32 (i32, i8*, ...) @ok(i32 %158, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i8* %159)
  %161 = load i64, i64* %6, align 8
  %162 = load i64, i64* %5, align 8
  %163 = icmp eq i64 %161, %162
  %164 = zext i1 %163 to i32
  %165 = load i64, i64* %6, align 8
  %166 = load i64, i64* %5, align 8
  %167 = call i32 (i32, i8*, ...) @ok(i32 %164, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i64 %165, i64 %166)
  %168 = getelementptr inbounds [11 x i32], [11 x i32]* %4, i64 0, i64 0
  %169 = load i64, i64* %6, align 8
  %170 = call i64 @memcmp(i32* %168, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @test_string_termination.string, i64 0, i64 0), i64 %169)
  %171 = icmp eq i64 %170, 0
  %172 = zext i1 %171 to i32
  %173 = getelementptr inbounds [11 x i32], [11 x i32]* %4, i64 0, i64 0
  %174 = bitcast i32* %173 to i8*
  %175 = load i64, i64* %6, align 8
  %176 = call i32 @wine_debugstr_an(i8* %174, i64 %175)
  %177 = load i64, i64* %6, align 8
  %178 = call i32 (i32, i8*, ...) @ok(i32 %172, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 %176, i64 %177, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @test_string_termination.string, i64 0, i64 0))
  %179 = load i64, i64* %5, align 8
  %180 = getelementptr inbounds [11 x i32], [11 x i32]* %4, i64 0, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = icmp eq i32 %181, 189
  %183 = zext i1 %182 to i32
  %184 = load i64, i64* %5, align 8
  %185 = load i64, i64* %5, align 8
  %186 = getelementptr inbounds [11 x i32], [11 x i32]* %4, i64 0, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = call i32 (i32, i8*, ...) @ok(i32 %183, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i64 %184, i32 %187)
  %189 = load i64, i64* %5, align 8
  %190 = add i64 %189, 1
  store i64 %190, i64* %6, align 8
  %191 = getelementptr inbounds [11 x i32], [11 x i32]* %4, i64 0, i64 0
  %192 = call i32 @memset(i32* %191, i32 189, i32 44)
  store i64 11, i64* %7, align 8
  %193 = load i32, i32* %1, align 4
  %194 = getelementptr inbounds [11 x i8], [11 x i8]* %3, i64 0, i64 0
  %195 = getelementptr inbounds [11 x i32], [11 x i32]* %4, i64 0, i64 0
  %196 = call i32 @RegEnumValueA(i32 %193, i32 0, i8* %194, i64* %7, i32* null, i32* null, i32* %195, i64* %6)
  store i32 %196, i32* %2, align 4
  %197 = load i32, i32* %2, align 4
  %198 = load i32, i32* @ERROR_SUCCESS, align 4
  %199 = icmp eq i32 %197, %198
  %200 = zext i1 %199 to i32
  %201 = load i32, i32* %2, align 4
  %202 = call i32 (i32, i8*, ...) @ok(i32 %200, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 %201)
  %203 = getelementptr inbounds [11 x i8], [11 x i8]* %3, i64 0, i64 0
  %204 = call i64 @strcmp(i8* %203, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %205 = icmp eq i64 %204, 0
  %206 = zext i1 %205 to i32
  %207 = getelementptr inbounds [11 x i8], [11 x i8]* %3, i64 0, i64 0
  %208 = call i32 (i32, i8*, ...) @ok(i32 %206, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i8* %207)
  %209 = load i64, i64* %6, align 8
  %210 = load i64, i64* %5, align 8
  %211 = icmp eq i64 %209, %210
  %212 = zext i1 %211 to i32
  %213 = load i64, i64* %6, align 8
  %214 = load i64, i64* %5, align 8
  %215 = call i32 (i32, i8*, ...) @ok(i32 %212, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i64 %213, i64 %214)
  %216 = getelementptr inbounds [11 x i32], [11 x i32]* %4, i64 0, i64 0
  %217 = load i64, i64* %6, align 8
  %218 = call i64 @memcmp(i32* %216, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @test_string_termination.string, i64 0, i64 0), i64 %217)
  %219 = icmp eq i64 %218, 0
  %220 = zext i1 %219 to i32
  %221 = getelementptr inbounds [11 x i32], [11 x i32]* %4, i64 0, i64 0
  %222 = bitcast i32* %221 to i8*
  %223 = load i64, i64* %6, align 8
  %224 = call i32 @wine_debugstr_an(i8* %222, i64 %223)
  %225 = load i64, i64* %6, align 8
  %226 = call i32 (i32, i8*, ...) @ok(i32 %220, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 %224, i64 %225, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @test_string_termination.string, i64 0, i64 0))
  %227 = load i64, i64* %5, align 8
  %228 = getelementptr inbounds [11 x i32], [11 x i32]* %4, i64 0, i64 %227
  %229 = load i32, i32* %228, align 4
  %230 = icmp eq i32 %229, 0
  %231 = zext i1 %230 to i32
  %232 = load i64, i64* %5, align 8
  %233 = load i64, i64* %5, align 8
  %234 = getelementptr inbounds [11 x i32], [11 x i32]* %4, i64 0, i64 %233
  %235 = load i32, i32* %234, align 4
  %236 = call i32 (i32, i8*, ...) @ok(i32 %231, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i64 %232, i32 %235)
  %237 = load i32, i32* %1, align 4
  %238 = call i32 @RegDeleteKeyA(i32 %237, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0))
  %239 = load i32, i32* %1, align 4
  %240 = call i32 @RegCloseKey(i32 %239)
  ret void
}

declare dso_local i32 @RegCreateKeyA(i32, i8*, i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @RegSetValueExA(i32, i8*, i32, i32, i32*, i64) #1

declare dso_local i32 @RegQueryValueExA(i32, i8*, i32*, i32*, i32*, i64*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @memcmp(i32*, i8*, i64) #1

declare dso_local i32 @wine_debugstr_an(i8*, i64) #1

declare dso_local i32 @RegEnumValueA(i32, i32, i8*, i64*, i32*, i32*, i32*, i64*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @RegDeleteKeyA(i32, i8*) #1

declare dso_local i32 @RegCloseKey(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
