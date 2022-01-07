; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/odbccp32/extr_misc.c_test_SQLGetPrivateProfileStringW.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/odbccp32/extr_misc.c_test_SQLGetPrivateProfileStringW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_SQLGetPrivateProfileStringW.testing = internal global [8 x i8] c"testing\00", align 1
@test_SQLGetPrivateProfileStringW.wineodbc = internal global [9 x i8] c"wineodbc\00", align 1
@test_SQLGetPrivateProfileStringW.defaultval = internal global [8 x i8] c"default\00", align 1
@test_SQLGetPrivateProfileStringW.odbcini = internal global [9 x i8] c"ODBC.INI\00", align 1
@test_SQLGetPrivateProfileStringW.abcdini = internal global [9 x i8] c"abcd.INI\00", align 1
@test_SQLGetPrivateProfileStringW.wine = internal global [5 x i8] c"wine\00", align 1
@test_SQLGetPrivateProfileStringW.value = internal global [6 x i8] c"value\00", align 1
@test_SQLGetPrivateProfileStringW.empty = internal global [1 x i8] zeroinitializer, align 1
@test_SQLGetPrivateProfileStringW.defaultX = internal global [8 x i8] c"default\00", align 1
@test_SQLGetPrivateProfileStringW.def = internal global [4 x i8] c"def\00", align 1
@test_SQLGetPrivateProfileStringW.value0 = internal global [16 x i8] c"value0123456789\00", align 16
@test_SQLGetPrivateProfileStringW.testingvalue = internal global [14 x i8] c"testing\00value\00", align 1
@.str = private unnamed_addr constant [41 x i8] c"SQLGetPrivateProfileStringW returned %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"incorrect string '%s'\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"wineodbc\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"testing\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"value0123456789\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"abcd.ini\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"SQLWritePrivateProfileString failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@HKEY_CURRENT_USER = common dso_local global i32 0, align 4
@abcd_key = common dso_local global i32 0, align 4
@KEY_READ = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [22 x i8] c"RegOpenKeyExW failed\0A\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"RegDeleteKeyW failed\0A\00", align 1
@abcdini_key = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_SQLGetPrivateProfileStringW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SQLGetPrivateProfileStringW() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = bitcast [256 x i8]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %5, i8 0, i64 256, i1 false)
  %6 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %7 = call i32 @lstrcpyW(i8* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_SQLGetPrivateProfileStringW.wine, i64 0, i64 0))
  %8 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %9 = call i32 @SQLGetPrivateProfileStringW(i8* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_SQLGetPrivateProfileStringW.testing, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_SQLGetPrivateProfileStringW.defaultval, i64 0, i64 0), i8* %8, i32 256, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_SQLGetPrivateProfileStringW.odbcini, i64 0, i64 0))
  store i32 %9, i32* %1, align 4
  %10 = load i32, i32* %1, align 4
  %11 = icmp eq i32 %10, 0
  %12 = zext i1 %11 to i32
  %13 = load i32, i32* %1, align 4
  %14 = call i32 (i32, i8*, ...) @ok(i32 %12, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %16 = call i32 @lstrcmpW(i8* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_SQLGetPrivateProfileStringW.wine, i64 0, i64 0))
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %21 = call i32 @wine_dbgstr_w(i8* %20)
  %22 = call i32 (i32, i8*, ...) @ok(i32 %19, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %24 = call i32 @lstrcpyW(i8* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_SQLGetPrivateProfileStringW.wine, i64 0, i64 0))
  %25 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %26 = call i32 @SQLGetPrivateProfileStringW(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_SQLGetPrivateProfileStringW.wineodbc, i64 0, i64 0), i8* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_SQLGetPrivateProfileStringW.defaultval, i64 0, i64 0), i8* %25, i32 256, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_SQLGetPrivateProfileStringW.odbcini, i64 0, i64 0))
  store i32 %26, i32* %1, align 4
  %27 = load i32, i32* %1, align 4
  %28 = icmp eq i32 %27, 0
  %29 = zext i1 %28 to i32
  %30 = load i32, i32* %1, align 4
  %31 = call i32 (i32, i8*, ...) @ok(i32 %29, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %33 = call i32 @lstrcmpW(i8* %32, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @test_SQLGetPrivateProfileStringW.empty, i64 0, i64 0))
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %38 = call i32 @wine_dbgstr_w(i8* %37)
  %39 = call i32 (i32, i8*, ...) @ok(i32 %36, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %41 = call i32 @lstrcpyW(i8* %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @test_SQLGetPrivateProfileStringW.value, i64 0, i64 0))
  %42 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %43 = call i32 @SQLGetPrivateProfileStringW(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_SQLGetPrivateProfileStringW.wineodbc, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_SQLGetPrivateProfileStringW.testing, i64 0, i64 0), i8* null, i8* %42, i32 256, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_SQLGetPrivateProfileStringW.odbcini, i64 0, i64 0))
  store i32 %43, i32* %1, align 4
  %44 = load i32, i32* %1, align 4
  %45 = icmp eq i32 %44, 0
  %46 = zext i1 %45 to i32
  %47 = load i32, i32* %1, align 4
  %48 = call i32 (i32, i8*, ...) @ok(i32 %46, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %50 = call i32 @lstrcmpW(i8* %49, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @test_SQLGetPrivateProfileStringW.empty, i64 0, i64 0))
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %55 = call i32 @wine_dbgstr_w(i8* %54)
  %56 = call i32 (i32, i8*, ...) @ok(i32 %53, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  %57 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %58 = call i32 @SQLGetPrivateProfileStringW(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_SQLGetPrivateProfileStringW.wineodbc, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_SQLGetPrivateProfileStringW.testing, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_SQLGetPrivateProfileStringW.defaultX, i64 0, i64 0), i8* %57, i32 256, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_SQLGetPrivateProfileStringW.odbcini, i64 0, i64 0))
  store i32 %58, i32* %1, align 4
  %59 = load i32, i32* %1, align 4
  %60 = call i32 @lstrlenW(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_SQLGetPrivateProfileStringW.defaultX, i64 0, i64 0))
  %61 = icmp eq i32 %59, %60
  %62 = zext i1 %61 to i32
  %63 = load i32, i32* %1, align 4
  %64 = call i32 (i32, i8*, ...) @ok(i32 %62, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %63)
  %65 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %66 = call i32 @lstrcmpW(i8* %65, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_SQLGetPrivateProfileStringW.defaultX, i64 0, i64 0))
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  %70 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %71 = call i32 @wine_dbgstr_w(i8* %70)
  %72 = call i32 (i32, i8*, ...) @ok(i32 %69, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  %73 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %74 = call i32 @SQLGetPrivateProfileStringW(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_SQLGetPrivateProfileStringW.wineodbc, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_SQLGetPrivateProfileStringW.testing, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_SQLGetPrivateProfileStringW.defaultX, i64 0, i64 0), i8* %73, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_SQLGetPrivateProfileStringW.odbcini, i64 0, i64 0))
  store i32 %74, i32* %1, align 4
  %75 = load i32, i32* %1, align 4
  %76 = call i32 @lstrlenW(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @test_SQLGetPrivateProfileStringW.def, i64 0, i64 0))
  %77 = icmp eq i32 %75, %76
  %78 = zext i1 %77 to i32
  %79 = load i32, i32* %1, align 4
  %80 = call i32 (i32, i8*, ...) @ok(i32 %78, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %79)
  %81 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %82 = call i32 @lstrcmpW(i8* %81, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @test_SQLGetPrivateProfileStringW.def, i64 0, i64 0))
  %83 = icmp ne i32 %82, 0
  %84 = xor i1 %83, true
  %85 = zext i1 %84 to i32
  %86 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %87 = call i32 @wine_dbgstr_w(i8* %86)
  %88 = call i32 (i32, i8*, ...) @ok(i32 %85, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %87)
  %89 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %90 = call i32 @SQLGetPrivateProfileStringW(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_SQLGetPrivateProfileStringW.wineodbc, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_SQLGetPrivateProfileStringW.testing, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_SQLGetPrivateProfileStringW.defaultX, i64 0, i64 0), i8* %89, i32 8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_SQLGetPrivateProfileStringW.odbcini, i64 0, i64 0))
  store i32 %90, i32* %1, align 4
  %91 = load i32, i32* %1, align 4
  %92 = call i32 @lstrlenW(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_SQLGetPrivateProfileStringW.defaultX, i64 0, i64 0))
  %93 = icmp eq i32 %91, %92
  %94 = zext i1 %93 to i32
  %95 = load i32, i32* %1, align 4
  %96 = call i32 (i32, i8*, ...) @ok(i32 %94, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %95)
  %97 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %98 = call i32 @lstrcmpW(i8* %97, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_SQLGetPrivateProfileStringW.defaultX, i64 0, i64 0))
  %99 = icmp ne i32 %98, 0
  %100 = xor i1 %99, true
  %101 = zext i1 %100 to i32
  %102 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %103 = call i32 @wine_dbgstr_w(i8* %102)
  %104 = call i32 (i32, i8*, ...) @ok(i32 %101, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %103)
  %105 = call i32 @SQLGetPrivateProfileStringW(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_SQLGetPrivateProfileStringW.wineodbc, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_SQLGetPrivateProfileStringW.testing, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_SQLGetPrivateProfileStringW.defaultX, i64 0, i64 0), i8* null, i32 256, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_SQLGetPrivateProfileStringW.odbcini, i64 0, i64 0))
  store i32 %105, i32* %1, align 4
  %106 = load i32, i32* %1, align 4
  %107 = icmp eq i32 %106, 0
  %108 = zext i1 %107 to i32
  %109 = load i32, i32* %1, align 4
  %110 = call i32 (i32, i8*, ...) @ok(i32 %108, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %109)
  %111 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %112 = call i32 @lstrcpyW(i8* %111, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @test_SQLGetPrivateProfileStringW.value, i64 0, i64 0))
  %113 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %114 = call i32 @SQLGetPrivateProfileStringW(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_SQLGetPrivateProfileStringW.wineodbc, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_SQLGetPrivateProfileStringW.testing, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_SQLGetPrivateProfileStringW.defaultX, i64 0, i64 0), i8* %113, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_SQLGetPrivateProfileStringW.odbcini, i64 0, i64 0))
  store i32 %114, i32* %1, align 4
  %115 = load i32, i32* %1, align 4
  %116 = icmp eq i32 %115, 0
  %117 = zext i1 %116 to i32
  %118 = load i32, i32* %1, align 4
  %119 = call i32 (i32, i8*, ...) @ok(i32 %117, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %118)
  %120 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %121 = call i32 @lstrcmpW(i8* %120, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @test_SQLGetPrivateProfileStringW.value, i64 0, i64 0))
  %122 = icmp ne i32 %121, 0
  %123 = xor i1 %122, true
  %124 = zext i1 %123 to i32
  %125 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %126 = call i32 @wine_dbgstr_w(i8* %125)
  %127 = call i32 (i32, i8*, ...) @ok(i32 %124, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %126)
  %128 = call i32 @SQLWritePrivateProfileString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  store i32 %128, i32* %1, align 4
  %129 = load i32, i32* %1, align 4
  %130 = call i32 (i32, i8*, ...) @ok(i32 %129, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  %131 = load i32, i32* %1, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %281

133:                                              ; preds = %0
  %134 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %135 = call i32 @SQLGetPrivateProfileStringW(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_SQLGetPrivateProfileStringW.wineodbc, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_SQLGetPrivateProfileStringW.testing, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_SQLGetPrivateProfileStringW.defaultX, i64 0, i64 0), i8* %134, i32 256, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_SQLGetPrivateProfileStringW.abcdini, i64 0, i64 0))
  store i32 %135, i32* %1, align 4
  %136 = load i32, i32* %1, align 4
  %137 = call i32 @lstrlenW(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @test_SQLGetPrivateProfileStringW.value0, i64 0, i64 0))
  %138 = icmp eq i32 %136, %137
  %139 = zext i1 %138 to i32
  %140 = load i32, i32* %1, align 4
  %141 = call i32 (i32, i8*, ...) @ok(i32 %139, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %140)
  %142 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %143 = call i32 @lstrcmpW(i8* %142, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @test_SQLGetPrivateProfileStringW.value0, i64 0, i64 0))
  %144 = icmp ne i32 %143, 0
  %145 = xor i1 %144, true
  %146 = zext i1 %145 to i32
  %147 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %148 = call i32 @wine_dbgstr_w(i8* %147)
  %149 = call i32 (i32, i8*, ...) @ok(i32 %146, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %148)
  %150 = call i32 @SQLGetPrivateProfileStringW(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_SQLGetPrivateProfileStringW.wineodbc, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_SQLGetPrivateProfileStringW.testing, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_SQLGetPrivateProfileStringW.defaultX, i64 0, i64 0), i8* null, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_SQLGetPrivateProfileStringW.abcdini, i64 0, i64 0))
  store i32 %150, i32* %1, align 4
  %151 = load i32, i32* %1, align 4
  %152 = icmp eq i32 %151, 0
  %153 = zext i1 %152 to i32
  %154 = load i32, i32* %1, align 4
  %155 = call i32 (i32, i8*, ...) @ok(i32 %153, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %154)
  %156 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %157 = call i32 @SQLGetPrivateProfileStringW(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_SQLGetPrivateProfileStringW.wineodbc, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_SQLGetPrivateProfileStringW.testing, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_SQLGetPrivateProfileStringW.defaultX, i64 0, i64 0), i8* %156, i32 7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_SQLGetPrivateProfileStringW.abcdini, i64 0, i64 0))
  store i32 %157, i32* %1, align 4
  %158 = load i32, i32* %1, align 4
  %159 = icmp eq i32 %158, 6
  %160 = zext i1 %159 to i32
  %161 = load i32, i32* %1, align 4
  %162 = call i32 (i32, i8*, ...) @ok(i32 %160, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %161)
  %163 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %164 = call i32 @lstrcpyW(i8* %163, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_SQLGetPrivateProfileStringW.wine, i64 0, i64 0))
  %165 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %166 = call i32 @SQLGetPrivateProfileStringW(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_SQLGetPrivateProfileStringW.wineodbc, i64 0, i64 0), i8* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @test_SQLGetPrivateProfileStringW.empty, i64 0, i64 0), i8* %165, i32 10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_SQLGetPrivateProfileStringW.abcdini, i64 0, i64 0))
  store i32 %166, i32* %1, align 4
  %167 = load i32, i32* %1, align 4
  %168 = call i32 @lstrlenW(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_SQLGetPrivateProfileStringW.testing, i64 0, i64 0))
  %169 = add nsw i32 %168, 1
  %170 = icmp eq i32 %167, %169
  %171 = zext i1 %170 to i32
  %172 = load i32, i32* %1, align 4
  %173 = call i32 (i32, i8*, ...) @ok(i32 %171, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %172)
  %174 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %175 = call i32 @lstrcmpW(i8* %174, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_SQLGetPrivateProfileStringW.testing, i64 0, i64 0))
  %176 = icmp ne i32 %175, 0
  %177 = xor i1 %176, true
  %178 = zext i1 %177 to i32
  %179 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %180 = call i32 @wine_dbgstr_w(i8* %179)
  %181 = call i32 (i32, i8*, ...) @ok(i32 %178, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %180)
  %182 = call i32 @SQLWritePrivateProfileString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  store i32 %182, i32* %1, align 4
  %183 = load i32, i32* %1, align 4
  %184 = call i32 (i32, i8*, ...) @ok(i32 %183, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  %185 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %186 = call i32 @lstrcpyW(i8* %185, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_SQLGetPrivateProfileStringW.wine, i64 0, i64 0))
  %187 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %188 = call i32 @SQLGetPrivateProfileStringW(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_SQLGetPrivateProfileStringW.wineodbc, i64 0, i64 0), i8* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @test_SQLGetPrivateProfileStringW.empty, i64 0, i64 0), i8* %187, i32 256, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_SQLGetPrivateProfileStringW.abcdini, i64 0, i64 0))
  store i32 %188, i32* %1, align 4
  %189 = load i32, i32* %1, align 4
  %190 = call i32 @lstrlenW(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_SQLGetPrivateProfileStringW.testing, i64 0, i64 0))
  %191 = call i32 @lstrlenW(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @test_SQLGetPrivateProfileStringW.value, i64 0, i64 0))
  %192 = add nsw i32 %190, %191
  %193 = add nsw i32 %192, 2
  %194 = icmp eq i32 %189, %193
  %195 = zext i1 %194 to i32
  %196 = load i32, i32* %1, align 4
  %197 = call i32 (i32, i8*, ...) @ok(i32 %195, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %196)
  %198 = load i32, i32* %1, align 4
  %199 = call i32 @lstrlenW(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_SQLGetPrivateProfileStringW.testing, i64 0, i64 0))
  %200 = call i32 @lstrlenW(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @test_SQLGetPrivateProfileStringW.value, i64 0, i64 0))
  %201 = add nsw i32 %199, %200
  %202 = add nsw i32 %201, 2
  %203 = icmp eq i32 %198, %202
  br i1 %203, label %204, label %214

204:                                              ; preds = %133
  %205 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %206 = call i32 @memcmp(i8* %205, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @test_SQLGetPrivateProfileStringW.testingvalue, i64 0, i64 0), i32 14)
  %207 = icmp ne i32 %206, 0
  %208 = xor i1 %207, true
  %209 = zext i1 %208 to i32
  %210 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %211 = load i32, i32* %1, align 4
  %212 = call i32 @wine_dbgstr_wn(i8* %210, i32 %211)
  %213 = call i32 (i32, i8*, ...) @ok(i32 %209, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %212)
  br label %214

214:                                              ; preds = %204, %133
  %215 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %216 = call i32 @lstrcpyW(i8* %215, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @test_SQLGetPrivateProfileStringW.value, i64 0, i64 0))
  %217 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %218 = call i32 @SQLGetPrivateProfileStringW(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_SQLGetPrivateProfileStringW.wineodbc, i64 0, i64 0), i8* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @test_SQLGetPrivateProfileStringW.empty, i64 0, i64 0), i8* %217, i32 10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_SQLGetPrivateProfileStringW.abcdini, i64 0, i64 0))
  store i32 %218, i32* %1, align 4
  %219 = load i32, i32* %1, align 4
  %220 = call i32 @lstrlenW(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_SQLGetPrivateProfileStringW.testing, i64 0, i64 0))
  %221 = add nsw i32 %220, 1
  %222 = icmp eq i32 %219, %221
  %223 = zext i1 %222 to i32
  %224 = load i32, i32* %1, align 4
  %225 = call i32 (i32, i8*, ...) @ok(i32 %223, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %224)
  %226 = load i32, i32* %1, align 4
  %227 = call i32 @lstrlenW(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_SQLGetPrivateProfileStringW.testing, i64 0, i64 0))
  %228 = add nsw i32 %227, 1
  %229 = icmp sge i32 %226, %228
  br i1 %229, label %230, label %239

230:                                              ; preds = %214
  %231 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %232 = call i32 @lstrcmpW(i8* %231, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_SQLGetPrivateProfileStringW.testing, i64 0, i64 0))
  %233 = icmp ne i32 %232, 0
  %234 = xor i1 %233, true
  %235 = zext i1 %234 to i32
  %236 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %237 = call i32 @wine_dbgstr_w(i8* %236)
  %238 = call i32 (i32, i8*, ...) @ok(i32 %235, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %237)
  br label %239

239:                                              ; preds = %230, %214
  %240 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %241 = call i32 @lstrcpyW(i8* %240, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @test_SQLGetPrivateProfileStringW.value, i64 0, i64 0))
  %242 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %243 = call i32 @SQLGetPrivateProfileStringW(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_SQLGetPrivateProfileStringW.wineodbc, i64 0, i64 0), i8* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @test_SQLGetPrivateProfileStringW.empty, i64 0, i64 0), i8* %242, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_SQLGetPrivateProfileStringW.abcdini, i64 0, i64 0))
  store i32 %243, i32* %1, align 4
  %244 = load i32, i32* %1, align 4
  %245 = icmp eq i32 %244, 0
  %246 = zext i1 %245 to i32
  %247 = load i32, i32* %1, align 4
  %248 = call i32 (i32, i8*, ...) @ok(i32 %246, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %247)
  %249 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %250 = load i32, i32* @abcd_key, align 4
  %251 = load i32, i32* @KEY_READ, align 4
  %252 = call i32 @RegOpenKeyExW(i32 %249, i32 %250, i32 0, i32 %251, i32* %4)
  store i32 %252, i32* %3, align 4
  %253 = load i32, i32* %3, align 4
  %254 = load i32, i32* @ERROR_SUCCESS, align 4
  %255 = icmp eq i32 %253, %254
  %256 = zext i1 %255 to i32
  %257 = call i32 (i32, i8*, ...) @ok(i32 %256, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  %258 = load i32, i32* %3, align 4
  %259 = load i32, i32* @ERROR_SUCCESS, align 4
  %260 = icmp eq i32 %258, %259
  br i1 %260, label %261, label %272

261:                                              ; preds = %239
  %262 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %263 = load i32, i32* @abcd_key, align 4
  %264 = call i32 @RegDeleteKeyW(i32 %262, i32 %263)
  store i32 %264, i32* %3, align 4
  %265 = load i32, i32* %3, align 4
  %266 = load i32, i32* @ERROR_SUCCESS, align 4
  %267 = icmp eq i32 %265, %266
  %268 = zext i1 %267 to i32
  %269 = call i32 (i32, i8*, ...) @ok(i32 %268, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0))
  %270 = load i32, i32* %4, align 4
  %271 = call i32 @RegCloseKey(i32 %270)
  br label %272

272:                                              ; preds = %261, %239
  %273 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %274 = load i32, i32* @abcdini_key, align 4
  %275 = call i32 @RegDeleteKeyW(i32 %273, i32 %274)
  store i32 %275, i32* %3, align 4
  %276 = load i32, i32* %3, align 4
  %277 = load i32, i32* @ERROR_SUCCESS, align 4
  %278 = icmp eq i32 %276, %277
  %279 = zext i1 %278 to i32
  %280 = call i32 (i32, i8*, ...) @ok(i32 %279, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0))
  br label %281

281:                                              ; preds = %272, %0
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @lstrcpyW(i8*, i8*) #2

declare dso_local i32 @SQLGetPrivateProfileStringW(i8*, i8*, i8*, i8*, i32, i8*) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @lstrcmpW(i8*, i8*) #2

declare dso_local i32 @wine_dbgstr_w(i8*) #2

declare dso_local i32 @lstrlenW(i8*) #2

declare dso_local i32 @SQLWritePrivateProfileString(i8*, i8*, i8*, i8*) #2

declare dso_local i32 @memcmp(i8*, i8*, i32) #2

declare dso_local i32 @wine_dbgstr_wn(i8*, i32) #2

declare dso_local i32 @RegOpenKeyExW(i32, i32, i32, i32, i32*) #2

declare dso_local i32 @RegDeleteKeyW(i32, i32) #2

declare dso_local i32 @RegCloseKey(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
