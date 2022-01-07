; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_record.c_test_fieldzero.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_record.c_test_fieldzero.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Expected a valid handle\0A\00", align 1
@MSI_NULL_INTEGER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Expected MSI_NULL_INTEGER, got %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"apple\00", align 1
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"Expected ERROR_SUCCESS, got %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Expected \22\22, got \22%s\22\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"Expected 0, got %d\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [23 x i8] c"Expected TRUE, got %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"Expected 42, got %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"bologna\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"Expected \22bologna\22, got \22%s\22\0A\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"Expected 7, got %d\0A\00", align 1
@msifileW = common dso_local global i32 0, align 4
@MSIDBOPEN_CREATE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [24 x i8] c"MsiOpenDatabase failed\0A\00", align 1
@.str.13 = private unnamed_addr constant [86 x i8] c"CREATE TABLE `drone` ( `id` INT, `name` CHAR(32), `number` CHAR(32) PRIMARY KEY `id`)\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"MsiViewClose failed\0A\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"MsiCloseHandle failed\0A\00", align 1
@.str.16 = private unnamed_addr constant [76 x i8] c"INSERT INTO `drone` ( `id`, `name`, `number` )VALUES('1', 'Abe', '8675309')\00", align 1
@.str.17 = private unnamed_addr constant [28 x i8] c"MsiDatabaseOpenView failed\0A\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"MsiViewExecute failed\0A\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"drone\00", align 1
@.str.20 = private unnamed_addr constant [28 x i8] c"Expected \22drone\22, got \22%s\22\0A\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"Expected 5, got %d\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [24 x i8] c"Expected FALSE, got %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"nosuchtable\00", align 1
@ERROR_INVALID_TABLE = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [38 x i8] c"Expected ERROR_INVALID_TABLE, got %d\0A\00", align 1
@.str.25 = private unnamed_addr constant [37 x i8] c"SELECT * FROM `drone` WHERE `id` = 1\00", align 1
@.str.26 = private unnamed_addr constant [33 x i8] c"Expected non-NULL value, got %d\0A\00", align 1
@msifile = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_fieldzero to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_fieldzero() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = load i32, i32* @MAX_PATH, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %4, align 8
  %12 = alloca i32, i64 %10, align 16
  store i64 %10, i64* %5, align 8
  %13 = call i64 @MsiCreateRecord(i32 1)
  store i64 %13, i64* %3, align 8
  %14 = load i64, i64* %3, align 8
  %15 = icmp ne i64 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 (i32, i8*, ...) @ok(i32 %16, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %18 = load i64, i64* %3, align 8
  %19 = call i32 @MsiRecordGetInteger(i64 %18, i32 0)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @MSI_NULL_INTEGER, align 4
  %22 = icmp eq i32 %20, %21
  %23 = zext i1 %22 to i32
  %24 = load i32, i32* %8, align 4
  %25 = call i32 (i32, i8*, ...) @ok(i32 %23, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* @MAX_PATH, align 4
  store i32 %26, i32* %7, align 4
  %27 = call i32 @lstrcpyA(i32* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %28 = load i64, i64* %3, align 8
  %29 = call i32 @MsiRecordGetStringA(i64 %28, i32 0, i32* %12, i32* %7)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @ERROR_SUCCESS, align 4
  %32 = icmp eq i32 %30, %31
  %33 = zext i1 %32 to i32
  %34 = load i32, i32* %8, align 4
  %35 = call i32 (i32, i8*, ...) @ok(i32 %33, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %34)
  %36 = call i32 @lstrcmpA(i32* %12, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0))
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i32 (i32, i8*, ...) @ok(i32 %39, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32* %12)
  %41 = load i32, i32* %7, align 4
  %42 = icmp eq i32 %41, 0
  %43 = zext i1 %42 to i32
  %44 = load i32, i32* %7, align 4
  %45 = call i32 (i32, i8*, ...) @ok(i32 %43, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 %44)
  %46 = load i64, i64* %3, align 8
  %47 = call i32 @MsiRecordIsNull(i64 %46, i32 0)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @TRUE, align 4
  %50 = icmp eq i32 %48, %49
  %51 = zext i1 %50 to i32
  %52 = load i32, i32* %8, align 4
  %53 = call i32 (i32, i8*, ...) @ok(i32 %51, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 %52)
  %54 = load i64, i64* %3, align 8
  %55 = call i32 @MsiRecordGetInteger(i64 %54, i32 1)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @MSI_NULL_INTEGER, align 4
  %58 = icmp eq i32 %56, %57
  %59 = zext i1 %58 to i32
  %60 = load i32, i32* %8, align 4
  %61 = call i32 (i32, i8*, ...) @ok(i32 %59, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = load i64, i64* %3, align 8
  %63 = call i32 @MsiRecordSetInteger(i64 %62, i32 1, i32 42)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* @ERROR_SUCCESS, align 4
  %66 = icmp eq i32 %64, %65
  %67 = zext i1 %66 to i32
  %68 = load i32, i32* %8, align 4
  %69 = call i32 (i32, i8*, ...) @ok(i32 %67, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %68)
  %70 = load i64, i64* %3, align 8
  %71 = call i32 @MsiRecordGetInteger(i64 %70, i32 0)
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* @MSI_NULL_INTEGER, align 4
  %74 = icmp eq i32 %72, %73
  %75 = zext i1 %74 to i32
  %76 = load i32, i32* %8, align 4
  %77 = call i32 (i32, i8*, ...) @ok(i32 %75, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* @MAX_PATH, align 4
  store i32 %78, i32* %7, align 4
  %79 = call i32 @lstrcpyA(i32* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %80 = load i64, i64* %3, align 8
  %81 = call i32 @MsiRecordGetStringA(i64 %80, i32 0, i32* %12, i32* %7)
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* @ERROR_SUCCESS, align 4
  %84 = icmp eq i32 %82, %83
  %85 = zext i1 %84 to i32
  %86 = load i32, i32* %8, align 4
  %87 = call i32 (i32, i8*, ...) @ok(i32 %85, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %86)
  %88 = call i32 @lstrcmpA(i32* %12, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0))
  %89 = icmp ne i32 %88, 0
  %90 = xor i1 %89, true
  %91 = zext i1 %90 to i32
  %92 = call i32 (i32, i8*, ...) @ok(i32 %91, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32* %12)
  %93 = load i32, i32* %7, align 4
  %94 = icmp eq i32 %93, 0
  %95 = zext i1 %94 to i32
  %96 = load i32, i32* %7, align 4
  %97 = call i32 (i32, i8*, ...) @ok(i32 %95, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 %96)
  %98 = load i64, i64* %3, align 8
  %99 = call i32 @MsiRecordIsNull(i64 %98, i32 0)
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* @TRUE, align 4
  %102 = icmp eq i32 %100, %101
  %103 = zext i1 %102 to i32
  %104 = load i32, i32* %8, align 4
  %105 = call i32 (i32, i8*, ...) @ok(i32 %103, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 %104)
  %106 = load i64, i64* %3, align 8
  %107 = call i32 @MsiRecordGetInteger(i64 %106, i32 1)
  store i32 %107, i32* %8, align 4
  %108 = load i32, i32* %8, align 4
  %109 = icmp eq i32 %108, 42
  %110 = zext i1 %109 to i32
  %111 = load i32, i32* %8, align 4
  %112 = call i32 (i32, i8*, ...) @ok(i32 %110, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 %111)
  %113 = load i64, i64* %3, align 8
  %114 = call i32 @MsiRecordSetStringA(i64 %113, i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  store i32 %114, i32* %8, align 4
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* @ERROR_SUCCESS, align 4
  %117 = icmp eq i32 %115, %116
  %118 = zext i1 %117 to i32
  %119 = load i32, i32* %8, align 4
  %120 = call i32 (i32, i8*, ...) @ok(i32 %118, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %119)
  %121 = load i64, i64* %3, align 8
  %122 = call i32 @MsiRecordGetInteger(i64 %121, i32 0)
  store i32 %122, i32* %8, align 4
  %123 = load i32, i32* %8, align 4
  %124 = load i32, i32* @MSI_NULL_INTEGER, align 4
  %125 = icmp eq i32 %123, %124
  %126 = zext i1 %125 to i32
  %127 = load i32, i32* %8, align 4
  %128 = call i32 (i32, i8*, ...) @ok(i32 %126, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %127)
  %129 = load i32, i32* @MAX_PATH, align 4
  store i32 %129, i32* %7, align 4
  %130 = call i32 @lstrcpyA(i32* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %131 = load i64, i64* %3, align 8
  %132 = call i32 @MsiRecordGetStringA(i64 %131, i32 0, i32* %12, i32* %7)
  store i32 %132, i32* %8, align 4
  %133 = load i32, i32* %8, align 4
  %134 = load i32, i32* @ERROR_SUCCESS, align 4
  %135 = icmp eq i32 %133, %134
  %136 = zext i1 %135 to i32
  %137 = load i32, i32* %8, align 4
  %138 = call i32 (i32, i8*, ...) @ok(i32 %136, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %137)
  %139 = call i32 @lstrcmpA(i32* %12, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0))
  %140 = icmp ne i32 %139, 0
  %141 = xor i1 %140, true
  %142 = zext i1 %141 to i32
  %143 = call i32 (i32, i8*, ...) @ok(i32 %142, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32* %12)
  %144 = load i32, i32* %7, align 4
  %145 = icmp eq i32 %144, 0
  %146 = zext i1 %145 to i32
  %147 = load i32, i32* %7, align 4
  %148 = call i32 (i32, i8*, ...) @ok(i32 %146, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 %147)
  %149 = load i64, i64* %3, align 8
  %150 = call i32 @MsiRecordIsNull(i64 %149, i32 0)
  store i32 %150, i32* %8, align 4
  %151 = load i32, i32* %8, align 4
  %152 = load i32, i32* @TRUE, align 4
  %153 = icmp eq i32 %151, %152
  %154 = zext i1 %153 to i32
  %155 = load i32, i32* %8, align 4
  %156 = call i32 (i32, i8*, ...) @ok(i32 %154, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 %155)
  %157 = load i32, i32* @MAX_PATH, align 4
  store i32 %157, i32* %7, align 4
  %158 = call i32 @lstrcpyA(i32* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %159 = load i64, i64* %3, align 8
  %160 = call i32 @MsiRecordGetStringA(i64 %159, i32 1, i32* %12, i32* %7)
  store i32 %160, i32* %8, align 4
  %161 = load i32, i32* %8, align 4
  %162 = load i32, i32* @ERROR_SUCCESS, align 4
  %163 = icmp eq i32 %161, %162
  %164 = zext i1 %163 to i32
  %165 = load i32, i32* %8, align 4
  %166 = call i32 (i32, i8*, ...) @ok(i32 %164, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %165)
  %167 = call i32 @lstrcmpA(i32* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  %168 = icmp ne i32 %167, 0
  %169 = xor i1 %168, true
  %170 = zext i1 %169 to i32
  %171 = call i32 (i32, i8*, ...) @ok(i32 %170, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0), i32* %12)
  %172 = load i32, i32* %7, align 4
  %173 = icmp eq i32 %172, 7
  %174 = zext i1 %173 to i32
  %175 = load i32, i32* %7, align 4
  %176 = call i32 (i32, i8*, ...) @ok(i32 %174, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i32 %175)
  %177 = load i64, i64* %3, align 8
  %178 = call i32 @MsiCloseHandle(i64 %177)
  %179 = load i32, i32* @msifileW, align 4
  %180 = load i32, i32* @MSIDBOPEN_CREATE, align 4
  %181 = call i32 @MsiOpenDatabaseW(i32 %179, i32 %180, i64* %1)
  store i32 %181, i32* %8, align 4
  %182 = load i32, i32* %8, align 4
  %183 = load i32, i32* @ERROR_SUCCESS, align 4
  %184 = icmp eq i32 %182, %183
  %185 = zext i1 %184 to i32
  %186 = call i32 (i32, i8*, ...) @ok(i32 %185, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0))
  store i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.13, i64 0, i64 0), i8** %6, align 8
  %187 = load i64, i64* %1, align 8
  %188 = load i8*, i8** %6, align 8
  %189 = call i32 @MsiDatabaseOpenViewA(i64 %187, i8* %188, i64* %2)
  store i32 %189, i32* %8, align 4
  %190 = load i32, i32* %8, align 4
  %191 = load i32, i32* @ERROR_SUCCESS, align 4
  %192 = icmp eq i32 %190, %191
  %193 = zext i1 %192 to i32
  %194 = load i32, i32* %8, align 4
  %195 = call i32 (i32, i8*, ...) @ok(i32 %193, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %194)
  %196 = load i64, i64* %2, align 8
  %197 = call i32 @MsiViewExecute(i64 %196, i32 0)
  store i32 %197, i32* %8, align 4
  %198 = load i32, i32* %8, align 4
  %199 = load i32, i32* @ERROR_SUCCESS, align 4
  %200 = icmp eq i32 %198, %199
  %201 = zext i1 %200 to i32
  %202 = load i32, i32* %8, align 4
  %203 = call i32 (i32, i8*, ...) @ok(i32 %201, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %202)
  %204 = load i64, i64* %2, align 8
  %205 = call i32 @MsiViewClose(i64 %204)
  store i32 %205, i32* %8, align 4
  %206 = load i32, i32* %8, align 4
  %207 = load i32, i32* @ERROR_SUCCESS, align 4
  %208 = icmp eq i32 %206, %207
  %209 = zext i1 %208 to i32
  %210 = call i32 (i32, i8*, ...) @ok(i32 %209, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0))
  %211 = load i64, i64* %2, align 8
  %212 = call i32 @MsiCloseHandle(i64 %211)
  store i32 %212, i32* %8, align 4
  %213 = load i32, i32* %8, align 4
  %214 = load i32, i32* @ERROR_SUCCESS, align 4
  %215 = icmp eq i32 %213, %214
  %216 = zext i1 %215 to i32
  %217 = call i32 (i32, i8*, ...) @ok(i32 %216, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0))
  store i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.16, i64 0, i64 0), i8** %6, align 8
  %218 = load i64, i64* %1, align 8
  %219 = load i8*, i8** %6, align 8
  %220 = call i32 @MsiDatabaseOpenViewA(i64 %218, i8* %219, i64* %2)
  store i32 %220, i32* %8, align 4
  %221 = load i32, i32* %8, align 4
  %222 = load i32, i32* @ERROR_SUCCESS, align 4
  %223 = icmp eq i32 %221, %222
  %224 = zext i1 %223 to i32
  %225 = call i32 (i32, i8*, ...) @ok(i32 %224, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i64 0, i64 0))
  %226 = load i64, i64* %2, align 8
  %227 = call i32 @MsiViewExecute(i64 %226, i32 0)
  store i32 %227, i32* %8, align 4
  %228 = load i32, i32* %8, align 4
  %229 = load i32, i32* @ERROR_SUCCESS, align 4
  %230 = icmp eq i32 %228, %229
  %231 = zext i1 %230 to i32
  %232 = call i32 (i32, i8*, ...) @ok(i32 %231, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0))
  %233 = load i64, i64* %2, align 8
  %234 = call i32 @MsiViewClose(i64 %233)
  store i32 %234, i32* %8, align 4
  %235 = load i32, i32* %8, align 4
  %236 = load i32, i32* @ERROR_SUCCESS, align 4
  %237 = icmp eq i32 %235, %236
  %238 = zext i1 %237 to i32
  %239 = call i32 (i32, i8*, ...) @ok(i32 %238, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0))
  %240 = load i64, i64* %2, align 8
  %241 = call i32 @MsiCloseHandle(i64 %240)
  store i32 %241, i32* %8, align 4
  %242 = load i32, i32* %8, align 4
  %243 = load i32, i32* @ERROR_SUCCESS, align 4
  %244 = icmp eq i32 %242, %243
  %245 = zext i1 %244 to i32
  %246 = call i32 (i32, i8*, ...) @ok(i32 %245, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0))
  %247 = load i64, i64* %1, align 8
  %248 = call i32 @MsiDatabaseGetPrimaryKeysA(i64 %247, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), i64* %3)
  store i32 %248, i32* %8, align 4
  %249 = load i32, i32* %8, align 4
  %250 = load i32, i32* @ERROR_SUCCESS, align 4
  %251 = icmp eq i32 %249, %250
  %252 = zext i1 %251 to i32
  %253 = load i32, i32* %8, align 4
  %254 = call i32 (i32, i8*, ...) @ok(i32 %252, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %253)
  %255 = load i64, i64* %3, align 8
  %256 = call i32 @MsiRecordGetInteger(i64 %255, i32 0)
  store i32 %256, i32* %8, align 4
  %257 = load i32, i32* %8, align 4
  %258 = load i32, i32* @MSI_NULL_INTEGER, align 4
  %259 = icmp eq i32 %257, %258
  %260 = zext i1 %259 to i32
  %261 = load i32, i32* %8, align 4
  %262 = call i32 (i32, i8*, ...) @ok(i32 %260, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %261)
  %263 = load i32, i32* @MAX_PATH, align 4
  store i32 %263, i32* %7, align 4
  %264 = call i32 @lstrcpyA(i32* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %265 = load i64, i64* %3, align 8
  %266 = call i32 @MsiRecordGetStringA(i64 %265, i32 0, i32* %12, i32* %7)
  store i32 %266, i32* %8, align 4
  %267 = load i32, i32* %8, align 4
  %268 = load i32, i32* @ERROR_SUCCESS, align 4
  %269 = icmp eq i32 %267, %268
  %270 = zext i1 %269 to i32
  %271 = load i32, i32* %8, align 4
  %272 = call i32 (i32, i8*, ...) @ok(i32 %270, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %271)
  %273 = call i32 @lstrcmpA(i32* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0))
  %274 = icmp ne i32 %273, 0
  %275 = xor i1 %274, true
  %276 = zext i1 %275 to i32
  %277 = call i32 (i32, i8*, ...) @ok(i32 %276, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.20, i64 0, i64 0), i32* %12)
  %278 = load i32, i32* %7, align 4
  %279 = icmp eq i32 %278, 5
  %280 = zext i1 %279 to i32
  %281 = load i32, i32* %7, align 4
  %282 = call i32 (i32, i8*, ...) @ok(i32 %280, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i64 0, i64 0), i32 %281)
  %283 = load i64, i64* %3, align 8
  %284 = call i32 @MsiRecordIsNull(i64 %283, i32 0)
  store i32 %284, i32* %8, align 4
  %285 = load i32, i32* %8, align 4
  %286 = load i32, i32* @FALSE, align 4
  %287 = icmp eq i32 %285, %286
  %288 = zext i1 %287 to i32
  %289 = load i32, i32* %8, align 4
  %290 = call i32 (i32, i8*, ...) @ok(i32 %288, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.22, i64 0, i64 0), i32 %289)
  %291 = load i64, i64* %3, align 8
  %292 = call i32 @MsiCloseHandle(i64 %291)
  %293 = load i64, i64* %1, align 8
  %294 = call i32 @MsiDatabaseGetPrimaryKeysA(i64 %293, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i64 0, i64 0), i64* %3)
  store i32 %294, i32* %8, align 4
  %295 = load i32, i32* %8, align 4
  %296 = load i32, i32* @ERROR_INVALID_TABLE, align 4
  %297 = icmp eq i32 %295, %296
  %298 = zext i1 %297 to i32
  %299 = load i32, i32* %8, align 4
  %300 = call i32 (i32, i8*, ...) @ok(i32 %298, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.24, i64 0, i64 0), i32 %299)
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.25, i64 0, i64 0), i8** %6, align 8
  %301 = load i64, i64* %1, align 8
  %302 = load i8*, i8** %6, align 8
  %303 = call i32 @MsiDatabaseOpenViewA(i64 %301, i8* %302, i64* %2)
  store i32 %303, i32* %8, align 4
  %304 = load i32, i32* %8, align 4
  %305 = load i32, i32* @ERROR_SUCCESS, align 4
  %306 = icmp eq i32 %304, %305
  %307 = zext i1 %306 to i32
  %308 = load i32, i32* %8, align 4
  %309 = call i32 (i32, i8*, ...) @ok(i32 %307, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %308)
  %310 = load i64, i64* %2, align 8
  %311 = call i32 @MsiViewExecute(i64 %310, i32 0)
  store i32 %311, i32* %8, align 4
  %312 = load i32, i32* %8, align 4
  %313 = load i32, i32* @ERROR_SUCCESS, align 4
  %314 = icmp eq i32 %312, %313
  %315 = zext i1 %314 to i32
  %316 = load i32, i32* %8, align 4
  %317 = call i32 (i32, i8*, ...) @ok(i32 %315, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %316)
  %318 = load i64, i64* %2, align 8
  %319 = call i32 @MsiViewFetch(i64 %318, i64* %3)
  store i32 %319, i32* %8, align 4
  %320 = load i32, i32* %8, align 4
  %321 = load i32, i32* @ERROR_SUCCESS, align 4
  %322 = icmp eq i32 %320, %321
  %323 = zext i1 %322 to i32
  %324 = load i32, i32* %8, align 4
  %325 = call i32 (i32, i8*, ...) @ok(i32 %323, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %324)
  %326 = load i64, i64* %3, align 8
  %327 = call i32 @MsiRecordGetInteger(i64 %326, i32 0)
  store i32 %327, i32* %8, align 4
  %328 = load i32, i32* %8, align 4
  %329 = load i32, i32* @MSI_NULL_INTEGER, align 4
  %330 = icmp ne i32 %328, %329
  br i1 %330, label %331, label %334

331:                                              ; preds = %0
  %332 = load i32, i32* %8, align 4
  %333 = icmp ne i32 %332, 0
  br label %334

334:                                              ; preds = %331, %0
  %335 = phi i1 [ false, %0 ], [ %333, %331 ]
  %336 = zext i1 %335 to i32
  %337 = load i32, i32* %8, align 4
  %338 = call i32 (i32, i8*, ...) @ok(i32 %336, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.26, i64 0, i64 0), i32 %337)
  %339 = load i64, i64* %3, align 8
  %340 = call i32 @MsiRecordIsNull(i64 %339, i32 0)
  store i32 %340, i32* %8, align 4
  %341 = load i32, i32* %8, align 4
  %342 = load i32, i32* @FALSE, align 4
  %343 = icmp eq i32 %341, %342
  %344 = zext i1 %343 to i32
  %345 = load i32, i32* %8, align 4
  %346 = call i32 (i32, i8*, ...) @ok(i32 %344, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.22, i64 0, i64 0), i32 %345)
  %347 = load i64, i64* %2, align 8
  %348 = call i32 @MsiCloseHandle(i64 %347)
  store i32 %348, i32* %8, align 4
  %349 = load i32, i32* %8, align 4
  %350 = load i32, i32* @ERROR_SUCCESS, align 4
  %351 = icmp eq i32 %349, %350
  %352 = zext i1 %351 to i32
  %353 = call i32 (i32, i8*, ...) @ok(i32 %352, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0))
  %354 = load i64, i64* %3, align 8
  %355 = call i32 @MsiCloseHandle(i64 %354)
  %356 = load i64, i64* %1, align 8
  %357 = call i32 @MsiCloseHandle(i64 %356)
  %358 = load i32, i32* @msifile, align 4
  %359 = call i32 @DeleteFileA(i32 %358)
  %360 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %360)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @MsiCreateRecord(i32) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @MsiRecordGetInteger(i64, i32) #2

declare dso_local i32 @lstrcpyA(i32*, i8*) #2

declare dso_local i32 @MsiRecordGetStringA(i64, i32, i32*, i32*) #2

declare dso_local i32 @lstrcmpA(i32*, i8*) #2

declare dso_local i32 @MsiRecordIsNull(i64, i32) #2

declare dso_local i32 @MsiRecordSetInteger(i64, i32, i32) #2

declare dso_local i32 @MsiRecordSetStringA(i64, i32, i8*) #2

declare dso_local i32 @MsiCloseHandle(i64) #2

declare dso_local i32 @MsiOpenDatabaseW(i32, i32, i64*) #2

declare dso_local i32 @MsiDatabaseOpenViewA(i64, i8*, i64*) #2

declare dso_local i32 @MsiViewExecute(i64, i32) #2

declare dso_local i32 @MsiViewClose(i64) #2

declare dso_local i32 @MsiDatabaseGetPrimaryKeysA(i64, i8*, i64*) #2

declare dso_local i32 @MsiViewFetch(i64, i64*) #2

declare dso_local i32 @DeleteFileA(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
