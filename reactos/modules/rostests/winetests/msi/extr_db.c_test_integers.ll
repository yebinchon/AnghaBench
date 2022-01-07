; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_db.c_test_integers.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_db.c_test_integers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@msifileW = common dso_local global i32 0, align 4
@MSIDBOPEN_CREATE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"MsiOpenDatabase failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [190 x i8] c"CREATE TABLE `integers` ( `one` SHORT, `two` INT, `three` INTEGER, `four` LONG, `five` SHORT NOT NULL, `six` INT NOT NULL, `seven` INTEGER NOT NULL, `eight` LONG NOT NULL PRIMARY KEY `one`)\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"MsiDatabaseOpenView failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"MsiViewExecute failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"MsiViewClose failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"MsiCloseHandle failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"SELECT * FROM `integers`\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"Expected ERROR_SUCCESS, got %d\0A\00", align 1
@MSICOLINFO_NAMES = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [20 x i8] c"Expected 8, got %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"one\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"Expected one\0A\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"two\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"Expected two\0A\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"three\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"Expected three\0A\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"four\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"Expected four\0A\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"five\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"Expected five\0A\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"six\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"Expected six\0A\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"seven\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"Expected seven\0A\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"eight\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"Expected eight\0A\00", align 1
@MSICOLINFO_TYPES = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [3 x i8] c"I2\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"Expected I2\0A\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"I4\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"Expected I4\0A\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"i2\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"Expected i2\0A\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"i4\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"Expected i4\0A\00", align 1
@.str.33 = private unnamed_addr constant [128 x i8] c"INSERT INTO `integers` ( `one`, `two`, `three`, `four`, `five`, `six`, `seven`, `eight` )VALUES('', '', '', '', '', '', '', '')\00", align 1
@ERROR_FUNCTION_FAILED = common dso_local global i32 0, align 4
@.str.34 = private unnamed_addr constant [40 x i8] c"Expected ERROR_FUNCTION_FAILED, got %d\0A\00", align 1
@ERROR_NO_MORE_ITEMS = common dso_local global i32 0, align 4
@.str.35 = private unnamed_addr constant [38 x i8] c"Expected ERROR_NO_MORE_ITEMS, got %d\0A\00", align 1
@.str.36 = private unnamed_addr constant [24 x i8] c"record count wrong: %d\0A\00", align 1
@.str.37 = private unnamed_addr constant [134 x i8] c"INSERT INTO `integers` ( `one`, `two`, `three`, `four`, `five`, `six`, `seven`, `eight` )VALUES('', '2', '', '4', '5', '6', '7', '8')\00", align 1
@MSI_NULL_INTEGER = common dso_local global i32 0, align 4
@.str.38 = private unnamed_addr constant [35 x i8] c"Expected MSI_NULL_INTEGER, got %d\0A\00", align 1
@.str.39 = private unnamed_addr constant [20 x i8] c"Expected 2, got %d\0A\00", align 1
@.str.40 = private unnamed_addr constant [20 x i8] c"Expected 4, got %d\0A\00", align 1
@.str.41 = private unnamed_addr constant [20 x i8] c"Expected 5, got %d\0A\00", align 1
@.str.42 = private unnamed_addr constant [20 x i8] c"Expected 6, got %d\0A\00", align 1
@.str.43 = private unnamed_addr constant [20 x i8] c"Expected 7, got %d\0A\00", align 1
@.str.44 = private unnamed_addr constant [26 x i8] c"MsiDatabaseCommit failed\0A\00", align 1
@msifile = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.45 = private unnamed_addr constant [32 x i8] c"file didn't exist after commit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_integers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_integers() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %8 = load i32, i32* @msifileW, align 4
  %9 = load i32, i32* @MSIDBOPEN_CREATE, align 4
  %10 = call i32 @MsiOpenDatabaseW(i32 %8, i32 %9, i32* %1)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @ERROR_SUCCESS, align 4
  %13 = icmp eq i32 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 (i32, i8*, ...) @ok(i32 %14, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i8* getelementptr inbounds ([190 x i8], [190 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  %16 = load i32, i32* %1, align 4
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @MsiDatabaseOpenViewA(i32 %16, i8* %17, i32* %2)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @ERROR_SUCCESS, align 4
  %21 = icmp eq i32 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 (i32, i8*, ...) @ok(i32 %22, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %24 = load i32, i32* %2, align 4
  %25 = call i32 @MsiViewExecute(i32 %24, i32 0)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @ERROR_SUCCESS, align 4
  %28 = icmp eq i32 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 (i32, i8*, ...) @ok(i32 %29, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %31 = load i32, i32* %2, align 4
  %32 = call i32 @MsiViewClose(i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @ERROR_SUCCESS, align 4
  %35 = icmp eq i32 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 (i32, i8*, ...) @ok(i32 %36, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %38 = load i32, i32* %2, align 4
  %39 = call i32 @MsiCloseHandle(i32 %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @ERROR_SUCCESS, align 4
  %42 = icmp eq i32 %40, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 (i32, i8*, ...) @ok(i32 %43, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i8** %6, align 8
  %45 = load i32, i32* %1, align 4
  %46 = load i8*, i8** %6, align 8
  %47 = call i32 @MsiDatabaseOpenViewA(i32 %45, i8* %46, i32* %2)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @ERROR_SUCCESS, align 4
  %50 = icmp eq i32 %48, %49
  %51 = zext i1 %50 to i32
  %52 = load i32, i32* %7, align 4
  %53 = call i32 (i32, i8*, ...) @ok(i32 %51, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* %2, align 4
  %55 = load i32, i32* @MSICOLINFO_NAMES, align 4
  %56 = call i32 @MsiViewGetColumnInfo(i32 %54, i32 %55, i32* %3)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @ERROR_SUCCESS, align 4
  %59 = icmp eq i32 %57, %58
  %60 = zext i1 %59 to i32
  %61 = load i32, i32* %7, align 4
  %62 = call i32 (i32, i8*, ...) @ok(i32 %60, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* %3, align 4
  %64 = call i32 @MsiRecordGetFieldCount(i32 %63)
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* %4, align 4
  %66 = icmp eq i32 %65, 8
  %67 = zext i1 %66 to i32
  %68 = load i32, i32* %4, align 4
  %69 = call i32 (i32, i8*, ...) @ok(i32 %67, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* %3, align 4
  %71 = call i32 @check_record(i32 %70, i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %72 = call i32 (i32, i8*, ...) @ok(i32 %71, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  %73 = load i32, i32* %3, align 4
  %74 = call i32 @check_record(i32 %73, i32 2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0))
  %75 = call i32 (i32, i8*, ...) @ok(i32 %74, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0))
  %76 = load i32, i32* %3, align 4
  %77 = call i32 @check_record(i32 %76, i32 3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0))
  %78 = call i32 (i32, i8*, ...) @ok(i32 %77, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0))
  %79 = load i32, i32* %3, align 4
  %80 = call i32 @check_record(i32 %79, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0))
  %81 = call i32 (i32, i8*, ...) @ok(i32 %80, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0))
  %82 = load i32, i32* %3, align 4
  %83 = call i32 @check_record(i32 %82, i32 5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0))
  %84 = call i32 (i32, i8*, ...) @ok(i32 %83, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0))
  %85 = load i32, i32* %3, align 4
  %86 = call i32 @check_record(i32 %85, i32 6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0))
  %87 = call i32 (i32, i8*, ...) @ok(i32 %86, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0))
  %88 = load i32, i32* %3, align 4
  %89 = call i32 @check_record(i32 %88, i32 7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0))
  %90 = call i32 (i32, i8*, ...) @ok(i32 %89, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i64 0, i64 0))
  %91 = load i32, i32* %3, align 4
  %92 = call i32 @check_record(i32 %91, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0))
  %93 = call i32 (i32, i8*, ...) @ok(i32 %92, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i64 0, i64 0))
  %94 = load i32, i32* %3, align 4
  %95 = call i32 @MsiCloseHandle(i32 %94)
  %96 = load i32, i32* %2, align 4
  %97 = load i32, i32* @MSICOLINFO_TYPES, align 4
  %98 = call i32 @MsiViewGetColumnInfo(i32 %96, i32 %97, i32* %3)
  store i32 %98, i32* %7, align 4
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* @ERROR_SUCCESS, align 4
  %101 = icmp eq i32 %99, %100
  %102 = zext i1 %101 to i32
  %103 = load i32, i32* %7, align 4
  %104 = call i32 (i32, i8*, ...) @ok(i32 %102, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* %3, align 4
  %106 = call i32 @MsiRecordGetFieldCount(i32 %105)
  store i32 %106, i32* %4, align 4
  %107 = load i32, i32* %4, align 4
  %108 = icmp eq i32 %107, 8
  %109 = zext i1 %108 to i32
  %110 = load i32, i32* %4, align 4
  %111 = call i32 (i32, i8*, ...) @ok(i32 %109, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i32 %110)
  %112 = load i32, i32* %3, align 4
  %113 = call i32 @check_record(i32 %112, i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0))
  %114 = call i32 (i32, i8*, ...) @ok(i32 %113, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i64 0, i64 0))
  %115 = load i32, i32* %3, align 4
  %116 = call i32 @check_record(i32 %115, i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0))
  %117 = call i32 (i32, i8*, ...) @ok(i32 %116, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i64 0, i64 0))
  %118 = load i32, i32* %3, align 4
  %119 = call i32 @check_record(i32 %118, i32 3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0))
  %120 = call i32 (i32, i8*, ...) @ok(i32 %119, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i64 0, i64 0))
  %121 = load i32, i32* %3, align 4
  %122 = call i32 @check_record(i32 %121, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0))
  %123 = call i32 (i32, i8*, ...) @ok(i32 %122, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i64 0, i64 0))
  %124 = load i32, i32* %3, align 4
  %125 = call i32 @check_record(i32 %124, i32 5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i64 0, i64 0))
  %126 = call i32 (i32, i8*, ...) @ok(i32 %125, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i64 0, i64 0))
  %127 = load i32, i32* %3, align 4
  %128 = call i32 @check_record(i32 %127, i32 6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i64 0, i64 0))
  %129 = call i32 (i32, i8*, ...) @ok(i32 %128, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i64 0, i64 0))
  %130 = load i32, i32* %3, align 4
  %131 = call i32 @check_record(i32 %130, i32 7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i64 0, i64 0))
  %132 = call i32 (i32, i8*, ...) @ok(i32 %131, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i64 0, i64 0))
  %133 = load i32, i32* %3, align 4
  %134 = call i32 @check_record(i32 %133, i32 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i64 0, i64 0))
  %135 = call i32 (i32, i8*, ...) @ok(i32 %134, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.32, i64 0, i64 0))
  %136 = load i32, i32* %3, align 4
  %137 = call i32 @MsiCloseHandle(i32 %136)
  %138 = load i32, i32* %2, align 4
  %139 = call i32 @MsiViewClose(i32 %138)
  %140 = load i32, i32* %2, align 4
  %141 = call i32 @MsiCloseHandle(i32 %140)
  store i8* getelementptr inbounds ([128 x i8], [128 x i8]* @.str.33, i64 0, i64 0), i8** %6, align 8
  %142 = load i32, i32* %1, align 4
  %143 = load i8*, i8** %6, align 8
  %144 = call i32 @MsiDatabaseOpenViewA(i32 %142, i8* %143, i32* %2)
  store i32 %144, i32* %7, align 4
  %145 = load i32, i32* %7, align 4
  %146 = load i32, i32* @ERROR_SUCCESS, align 4
  %147 = icmp eq i32 %145, %146
  %148 = zext i1 %147 to i32
  %149 = load i32, i32* %7, align 4
  %150 = call i32 (i32, i8*, ...) @ok(i32 %148, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 %149)
  %151 = load i32, i32* %2, align 4
  %152 = call i32 @MsiViewExecute(i32 %151, i32 0)
  store i32 %152, i32* %7, align 4
  %153 = load i32, i32* %7, align 4
  %154 = load i32, i32* @ERROR_FUNCTION_FAILED, align 4
  %155 = icmp eq i32 %153, %154
  %156 = zext i1 %155 to i32
  %157 = load i32, i32* %7, align 4
  %158 = call i32 (i32, i8*, ...) @ok(i32 %156, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.34, i64 0, i64 0), i32 %157)
  %159 = load i32, i32* %2, align 4
  %160 = call i32 @MsiViewClose(i32 %159)
  %161 = load i32, i32* %2, align 4
  %162 = call i32 @MsiCloseHandle(i32 %161)
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i8** %6, align 8
  %163 = load i32, i32* %1, align 4
  %164 = load i8*, i8** %6, align 8
  %165 = call i32 @do_query(i32 %163, i8* %164, i32* %3)
  store i32 %165, i32* %7, align 4
  %166 = load i32, i32* %7, align 4
  %167 = load i32, i32* @ERROR_NO_MORE_ITEMS, align 4
  %168 = icmp eq i32 %166, %167
  %169 = zext i1 %168 to i32
  %170 = load i32, i32* %7, align 4
  %171 = call i32 (i32, i8*, ...) @ok(i32 %169, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.35, i64 0, i64 0), i32 %170)
  %172 = load i32, i32* %3, align 4
  %173 = call i32 @MsiRecordGetFieldCount(i32 %172)
  store i32 %173, i32* %7, align 4
  %174 = load i32, i32* %7, align 4
  %175 = icmp eq i32 %174, -1
  %176 = zext i1 %175 to i32
  %177 = load i32, i32* %7, align 4
  %178 = call i32 (i32, i8*, ...) @ok(i32 %176, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.36, i64 0, i64 0), i32 %177)
  %179 = load i32, i32* %3, align 4
  %180 = call i32 @MsiCloseHandle(i32 %179)
  store i8* getelementptr inbounds ([134 x i8], [134 x i8]* @.str.37, i64 0, i64 0), i8** %6, align 8
  %181 = load i32, i32* %1, align 4
  %182 = load i8*, i8** %6, align 8
  %183 = call i32 @MsiDatabaseOpenViewA(i32 %181, i8* %182, i32* %2)
  store i32 %183, i32* %7, align 4
  %184 = load i32, i32* %7, align 4
  %185 = load i32, i32* @ERROR_SUCCESS, align 4
  %186 = icmp eq i32 %184, %185
  %187 = zext i1 %186 to i32
  %188 = load i32, i32* %7, align 4
  %189 = call i32 (i32, i8*, ...) @ok(i32 %187, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 %188)
  %190 = load i32, i32* %2, align 4
  %191 = call i32 @MsiViewExecute(i32 %190, i32 0)
  store i32 %191, i32* %7, align 4
  %192 = load i32, i32* %7, align 4
  %193 = load i32, i32* @ERROR_SUCCESS, align 4
  %194 = icmp eq i32 %192, %193
  %195 = zext i1 %194 to i32
  %196 = load i32, i32* %7, align 4
  %197 = call i32 (i32, i8*, ...) @ok(i32 %195, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 %196)
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i8** %6, align 8
  %198 = load i32, i32* %1, align 4
  %199 = load i8*, i8** %6, align 8
  %200 = call i32 @do_query(i32 %198, i8* %199, i32* %3)
  store i32 %200, i32* %7, align 4
  %201 = load i32, i32* %7, align 4
  %202 = load i32, i32* @ERROR_SUCCESS, align 4
  %203 = icmp eq i32 %201, %202
  %204 = zext i1 %203 to i32
  %205 = load i32, i32* %7, align 4
  %206 = call i32 (i32, i8*, ...) @ok(i32 %204, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 %205)
  %207 = load i32, i32* %3, align 4
  %208 = call i32 @MsiRecordGetFieldCount(i32 %207)
  store i32 %208, i32* %7, align 4
  %209 = load i32, i32* %7, align 4
  %210 = icmp eq i32 %209, 8
  %211 = zext i1 %210 to i32
  %212 = load i32, i32* %7, align 4
  %213 = call i32 (i32, i8*, ...) @ok(i32 %211, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.36, i64 0, i64 0), i32 %212)
  %214 = load i32, i32* %3, align 4
  %215 = call i32 @MsiRecordGetInteger(i32 %214, i32 1)
  store i32 %215, i32* %5, align 4
  %216 = load i32, i32* %5, align 4
  %217 = load i32, i32* @MSI_NULL_INTEGER, align 4
  %218 = icmp eq i32 %216, %217
  %219 = zext i1 %218 to i32
  %220 = load i32, i32* %5, align 4
  %221 = call i32 (i32, i8*, ...) @ok(i32 %219, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.38, i64 0, i64 0), i32 %220)
  %222 = load i32, i32* %3, align 4
  %223 = call i32 @MsiRecordGetInteger(i32 %222, i32 3)
  store i32 %223, i32* %5, align 4
  %224 = load i32, i32* %5, align 4
  %225 = load i32, i32* @MSI_NULL_INTEGER, align 4
  %226 = icmp eq i32 %224, %225
  %227 = zext i1 %226 to i32
  %228 = load i32, i32* %5, align 4
  %229 = call i32 (i32, i8*, ...) @ok(i32 %227, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.38, i64 0, i64 0), i32 %228)
  %230 = load i32, i32* %3, align 4
  %231 = call i32 @MsiRecordGetInteger(i32 %230, i32 2)
  store i32 %231, i32* %5, align 4
  %232 = load i32, i32* %5, align 4
  %233 = icmp eq i32 %232, 2
  %234 = zext i1 %233 to i32
  %235 = load i32, i32* %5, align 4
  %236 = call i32 (i32, i8*, ...) @ok(i32 %234, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.39, i64 0, i64 0), i32 %235)
  %237 = load i32, i32* %3, align 4
  %238 = call i32 @MsiRecordGetInteger(i32 %237, i32 4)
  store i32 %238, i32* %5, align 4
  %239 = load i32, i32* %5, align 4
  %240 = icmp eq i32 %239, 4
  %241 = zext i1 %240 to i32
  %242 = load i32, i32* %5, align 4
  %243 = call i32 (i32, i8*, ...) @ok(i32 %241, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.40, i64 0, i64 0), i32 %242)
  %244 = load i32, i32* %3, align 4
  %245 = call i32 @MsiRecordGetInteger(i32 %244, i32 5)
  store i32 %245, i32* %5, align 4
  %246 = load i32, i32* %5, align 4
  %247 = icmp eq i32 %246, 5
  %248 = zext i1 %247 to i32
  %249 = load i32, i32* %5, align 4
  %250 = call i32 (i32, i8*, ...) @ok(i32 %248, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.41, i64 0, i64 0), i32 %249)
  %251 = load i32, i32* %3, align 4
  %252 = call i32 @MsiRecordGetInteger(i32 %251, i32 6)
  store i32 %252, i32* %5, align 4
  %253 = load i32, i32* %5, align 4
  %254 = icmp eq i32 %253, 6
  %255 = zext i1 %254 to i32
  %256 = load i32, i32* %5, align 4
  %257 = call i32 (i32, i8*, ...) @ok(i32 %255, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.42, i64 0, i64 0), i32 %256)
  %258 = load i32, i32* %3, align 4
  %259 = call i32 @MsiRecordGetInteger(i32 %258, i32 7)
  store i32 %259, i32* %5, align 4
  %260 = load i32, i32* %5, align 4
  %261 = icmp eq i32 %260, 7
  %262 = zext i1 %261 to i32
  %263 = load i32, i32* %5, align 4
  %264 = call i32 (i32, i8*, ...) @ok(i32 %262, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.43, i64 0, i64 0), i32 %263)
  %265 = load i32, i32* %3, align 4
  %266 = call i32 @MsiRecordGetInteger(i32 %265, i32 8)
  store i32 %266, i32* %5, align 4
  %267 = load i32, i32* %5, align 4
  %268 = icmp eq i32 %267, 8
  %269 = zext i1 %268 to i32
  %270 = load i32, i32* %5, align 4
  %271 = call i32 (i32, i8*, ...) @ok(i32 %269, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i32 %270)
  %272 = load i32, i32* %3, align 4
  %273 = call i32 @MsiCloseHandle(i32 %272)
  %274 = load i32, i32* %2, align 4
  %275 = call i32 @MsiViewClose(i32 %274)
  %276 = load i32, i32* %2, align 4
  %277 = call i32 @MsiCloseHandle(i32 %276)
  %278 = load i32, i32* %1, align 4
  %279 = call i32 @MsiDatabaseCommit(i32 %278)
  store i32 %279, i32* %7, align 4
  %280 = load i32, i32* %7, align 4
  %281 = load i32, i32* @ERROR_SUCCESS, align 4
  %282 = icmp eq i32 %280, %281
  %283 = zext i1 %282 to i32
  %284 = call i32 (i32, i8*, ...) @ok(i32 %283, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.44, i64 0, i64 0))
  %285 = load i32, i32* %1, align 4
  %286 = call i32 @MsiCloseHandle(i32 %285)
  store i32 %286, i32* %7, align 4
  %287 = load i32, i32* %7, align 4
  %288 = load i32, i32* @ERROR_SUCCESS, align 4
  %289 = icmp eq i32 %287, %288
  %290 = zext i1 %289 to i32
  %291 = call i32 (i32, i8*, ...) @ok(i32 %290, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %292 = load i32, i32* @msifile, align 4
  %293 = call i32 @DeleteFileA(i32 %292)
  store i32 %293, i32* %7, align 4
  %294 = load i32, i32* %7, align 4
  %295 = load i32, i32* @TRUE, align 4
  %296 = icmp eq i32 %294, %295
  %297 = zext i1 %296 to i32
  %298 = call i32 (i32, i8*, ...) @ok(i32 %297, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.45, i64 0, i64 0))
  ret void
}

declare dso_local i32 @MsiOpenDatabaseW(i32, i32, i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @MsiDatabaseOpenViewA(i32, i8*, i32*) #1

declare dso_local i32 @MsiViewExecute(i32, i32) #1

declare dso_local i32 @MsiViewClose(i32) #1

declare dso_local i32 @MsiCloseHandle(i32) #1

declare dso_local i32 @MsiViewGetColumnInfo(i32, i32, i32*) #1

declare dso_local i32 @MsiRecordGetFieldCount(i32) #1

declare dso_local i32 @check_record(i32, i32, i8*) #1

declare dso_local i32 @do_query(i32, i8*, i32*) #1

declare dso_local i32 @MsiRecordGetInteger(i32, i32) #1

declare dso_local i32 @MsiDatabaseCommit(i32) #1

declare dso_local i32 @DeleteFileA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
