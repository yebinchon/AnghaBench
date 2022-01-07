; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_db.c_test_msiinsert.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_db.c_test_msiinsert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@msifile = common dso_local global i32 0, align 4
@msifileW = common dso_local global i32 0, align 4
@MSIDBOPEN_CREATE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"MsiOpenDatabase failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [86 x i8] c"CREATE TABLE `phone` ( `id` INT, `name` CHAR(32), `number` CHAR(32) PRIMARY KEY `id`)\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"MsiDatabaseOpenView failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"MsiViewExecute failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"MsiViewClose failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"MsiCloseHandle failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"SELECT * FROM phone WHERE number = '8675309'\00", align 1
@ERROR_NO_MORE_ITEMS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [29 x i8] c"MsiViewFetch produced items\0A\00", align 1
@.str.8 = private unnamed_addr constant [76 x i8] c"INSERT INTO `phone` ( `id`, `name`, `number` )VALUES('1', 'Abe', '8675309')\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"MsiViewFetch failed: %u\0A\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"SELECT * FROM `phone` WHERE `id` = 1\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"MsiViewFetch failed\0A\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"record count wrong\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [18 x i8] c"field 0 not null\0A\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"field 1 contents wrong\0A\00", align 1
@.str.15 = private unnamed_addr constant [30 x i8] c"field 2 content fetch failed\0A\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"Abe\00", align 1
@.str.17 = private unnamed_addr constant [27 x i8] c"field 2 content incorrect\0A\00", align 1
@.str.18 = private unnamed_addr constant [30 x i8] c"field 3 content fetch failed\0A\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"8675309\00", align 1
@.str.20 = private unnamed_addr constant [27 x i8] c"field 3 content incorrect\0A\00", align 1
@.str.21 = private unnamed_addr constant [39 x i8] c"SELECT * FROM `phone` WHERE `id` >= 10\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"hrec should be null\0A\00", align 1
@.str.23 = private unnamed_addr constant [37 x i8] c"SELECT * FROM `phone` WHERE `id` < 0\00", align 1
@.str.24 = private unnamed_addr constant [38 x i8] c"SELECT * FROM `phone` WHERE `id` <= 0\00", align 1
@.str.25 = private unnamed_addr constant [38 x i8] c"SELECT * FROM `phone` WHERE `id` <> 1\00", align 1
@.str.26 = private unnamed_addr constant [38 x i8] c"SELECT * FROM `phone` WHERE `id` > 10\00", align 1
@.str.27 = private unnamed_addr constant [59 x i8] c"INSERT INTO `phone` ( `id`, `name`, `number` )VALUES(?, ?)\00", align 1
@ERROR_BAD_QUERY_SYNTAX = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [28 x i8] c"MsiRecordSetInteger failed\0A\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"Adam\00", align 1
@.str.30 = private unnamed_addr constant [27 x i8] c"MsiRecordSetString failed\0A\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"96905305\00", align 1
@.str.32 = private unnamed_addr constant [62 x i8] c"INSERT INTO `phone` ( `id`, `name`, `number` )VALUES(?, ?, ?)\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@.str.33 = private unnamed_addr constant [26 x i8] c"MsiDatabaseCommit failed\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.34 = private unnamed_addr constant [32 x i8] c"file didn't exist after commit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_msiinsert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_msiinsert() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca [80 x i8], align 16
  %8 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %9 = load i32, i32* @msifile, align 4
  %10 = call i32 @DeleteFileA(i32 %9)
  %11 = load i32, i32* @msifileW, align 4
  %12 = load i32, i32* @MSIDBOPEN_CREATE, align 4
  %13 = call i32 @MsiOpenDatabaseW(i32 %11, i32 %12, i32* %1)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @ERROR_SUCCESS, align 4
  %16 = icmp eq i32 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 (i32, i8*, ...) @ok(i32 %17, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  %19 = load i32, i32* %1, align 4
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @MsiDatabaseOpenViewA(i32 %19, i8* %20, i32* %2)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @ERROR_SUCCESS, align 4
  %24 = icmp eq i32 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 (i32, i8*, ...) @ok(i32 %25, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %27 = load i32, i32* %2, align 4
  %28 = call i32 @MsiViewExecute(i32 %27, i32 0)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @ERROR_SUCCESS, align 4
  %31 = icmp eq i32 %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 (i32, i8*, ...) @ok(i32 %32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %34 = load i32, i32* %2, align 4
  %35 = call i32 @MsiViewClose(i32 %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @ERROR_SUCCESS, align 4
  %38 = icmp eq i32 %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 (i32, i8*, ...) @ok(i32 %39, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %41 = load i32, i32* %2, align 4
  %42 = call i32 @MsiCloseHandle(i32 %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @ERROR_SUCCESS, align 4
  %45 = icmp eq i32 %43, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 (i32, i8*, ...) @ok(i32 %46, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i8** %6, align 8
  %48 = load i32, i32* %1, align 4
  %49 = load i8*, i8** %6, align 8
  %50 = call i32 @MsiDatabaseOpenViewA(i32 %48, i8* %49, i32* %3)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @ERROR_SUCCESS, align 4
  %53 = icmp eq i32 %51, %52
  %54 = zext i1 %53 to i32
  %55 = call i32 (i32, i8*, ...) @ok(i32 %54, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %56 = load i32, i32* %3, align 4
  %57 = call i32 @MsiViewExecute(i32 %56, i32 0)
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @ERROR_SUCCESS, align 4
  %60 = icmp eq i32 %58, %59
  %61 = zext i1 %60 to i32
  %62 = call i32 (i32, i8*, ...) @ok(i32 %61, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %63 = load i32, i32* %3, align 4
  %64 = call i32 @MsiViewFetch(i32 %63, i32* %4)
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @ERROR_NO_MORE_ITEMS, align 4
  %67 = icmp eq i32 %65, %66
  %68 = zext i1 %67 to i32
  %69 = call i32 (i32, i8*, ...) @ok(i32 %68, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  store i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.8, i64 0, i64 0), i8** %6, align 8
  %70 = load i32, i32* %1, align 4
  %71 = load i8*, i8** %6, align 8
  %72 = call i32 @MsiDatabaseOpenViewA(i32 %70, i8* %71, i32* %2)
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @ERROR_SUCCESS, align 4
  %75 = icmp eq i32 %73, %74
  %76 = zext i1 %75 to i32
  %77 = call i32 (i32, i8*, ...) @ok(i32 %76, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %78 = load i32, i32* %2, align 4
  %79 = call i32 @MsiViewExecute(i32 %78, i32 0)
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* @ERROR_SUCCESS, align 4
  %82 = icmp eq i32 %80, %81
  %83 = zext i1 %82 to i32
  %84 = call i32 (i32, i8*, ...) @ok(i32 %83, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %85 = load i32, i32* %2, align 4
  %86 = call i32 @MsiViewClose(i32 %85)
  store i32 %86, i32* %5, align 4
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* @ERROR_SUCCESS, align 4
  %89 = icmp eq i32 %87, %88
  %90 = zext i1 %89 to i32
  %91 = call i32 (i32, i8*, ...) @ok(i32 %90, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %92 = load i32, i32* %2, align 4
  %93 = call i32 @MsiCloseHandle(i32 %92)
  store i32 %93, i32* %5, align 4
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* @ERROR_SUCCESS, align 4
  %96 = icmp eq i32 %94, %95
  %97 = zext i1 %96 to i32
  %98 = call i32 (i32, i8*, ...) @ok(i32 %97, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %99 = load i32, i32* %3, align 4
  %100 = call i32 @MsiViewFetch(i32 %99, i32* %4)
  store i32 %100, i32* %5, align 4
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* @ERROR_NO_MORE_ITEMS, align 4
  %103 = icmp eq i32 %101, %102
  %104 = zext i1 %103 to i32
  %105 = call i32 (i32, i8*, ...) @ok(i32 %104, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  %106 = load i32, i32* %3, align 4
  %107 = call i32 @MsiViewExecute(i32 %106, i32 0)
  store i32 %107, i32* %5, align 4
  %108 = load i32, i32* %5, align 4
  %109 = load i32, i32* @ERROR_SUCCESS, align 4
  %110 = icmp eq i32 %108, %109
  %111 = zext i1 %110 to i32
  %112 = call i32 (i32, i8*, ...) @ok(i32 %111, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %113 = load i32, i32* %3, align 4
  %114 = call i32 @MsiViewFetch(i32 %113, i32* %4)
  store i32 %114, i32* %5, align 4
  %115 = load i32, i32* %5, align 4
  %116 = load i32, i32* @ERROR_SUCCESS, align 4
  %117 = icmp eq i32 %115, %116
  %118 = zext i1 %117 to i32
  %119 = load i32, i32* %5, align 4
  %120 = call i32 (i32, i8*, ...) @ok(i32 %118, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 %119)
  %121 = load i32, i32* %4, align 4
  %122 = call i32 @MsiCloseHandle(i32 %121)
  store i32 %122, i32* %5, align 4
  %123 = load i32, i32* %5, align 4
  %124 = load i32, i32* @ERROR_SUCCESS, align 4
  %125 = icmp eq i32 %123, %124
  %126 = zext i1 %125 to i32
  %127 = call i32 (i32, i8*, ...) @ok(i32 %126, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %128 = load i32, i32* %3, align 4
  %129 = call i32 @MsiViewClose(i32 %128)
  store i32 %129, i32* %5, align 4
  %130 = load i32, i32* %5, align 4
  %131 = load i32, i32* @ERROR_SUCCESS, align 4
  %132 = icmp eq i32 %130, %131
  %133 = zext i1 %132 to i32
  %134 = call i32 (i32, i8*, ...) @ok(i32 %133, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %135 = load i32, i32* %3, align 4
  %136 = call i32 @MsiCloseHandle(i32 %135)
  store i32 %136, i32* %5, align 4
  %137 = load i32, i32* %5, align 4
  %138 = load i32, i32* @ERROR_SUCCESS, align 4
  %139 = icmp eq i32 %137, %138
  %140 = zext i1 %139 to i32
  %141 = call i32 (i32, i8*, ...) @ok(i32 %140, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0), i8** %6, align 8
  %142 = load i32, i32* %1, align 4
  %143 = load i8*, i8** %6, align 8
  %144 = call i32 @do_query(i32 %142, i8* %143, i32* %4)
  store i32 %144, i32* %5, align 4
  %145 = load i32, i32* %5, align 4
  %146 = load i32, i32* @ERROR_SUCCESS, align 4
  %147 = icmp eq i32 %145, %146
  %148 = zext i1 %147 to i32
  %149 = call i32 (i32, i8*, ...) @ok(i32 %148, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0))
  %150 = load i32, i32* %4, align 4
  %151 = call i32 @MsiRecordGetFieldCount(i32 %150)
  store i32 %151, i32* %5, align 4
  %152 = load i32, i32* %5, align 4
  %153 = icmp eq i32 %152, 3
  %154 = zext i1 %153 to i32
  %155 = call i32 (i32, i8*, ...) @ok(i32 %154, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0))
  %156 = load i32, i32* %4, align 4
  %157 = call i32 @MsiRecordIsNull(i32 %156, i32 0)
  store i32 %157, i32* %5, align 4
  %158 = load i32, i32* %5, align 4
  %159 = load i32, i32* @FALSE, align 4
  %160 = icmp eq i32 %158, %159
  %161 = zext i1 %160 to i32
  %162 = call i32 (i32, i8*, ...) @ok(i32 %161, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0))
  %163 = load i32, i32* %4, align 4
  %164 = call i32 @MsiRecordGetInteger(i32 %163, i32 1)
  store i32 %164, i32* %5, align 4
  %165 = load i32, i32* %5, align 4
  %166 = icmp eq i32 %165, 1
  %167 = zext i1 %166 to i32
  %168 = call i32 (i32, i8*, ...) @ok(i32 %167, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0))
  store i32 80, i32* %8, align 4
  %169 = load i32, i32* %4, align 4
  %170 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %171 = call i32 @MsiRecordGetStringA(i32 %169, i32 2, i8* %170, i32* %8)
  store i32 %171, i32* %5, align 4
  %172 = load i32, i32* %5, align 4
  %173 = load i32, i32* @ERROR_SUCCESS, align 4
  %174 = icmp eq i32 %172, %173
  %175 = zext i1 %174 to i32
  %176 = call i32 (i32, i8*, ...) @ok(i32 %175, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.15, i64 0, i64 0))
  %177 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %178 = call i32 @strcmp(i8* %177, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0))
  %179 = icmp ne i32 %178, 0
  %180 = xor i1 %179, true
  %181 = zext i1 %180 to i32
  %182 = call i32 (i32, i8*, ...) @ok(i32 %181, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.17, i64 0, i64 0))
  store i32 80, i32* %8, align 4
  %183 = load i32, i32* %4, align 4
  %184 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %185 = call i32 @MsiRecordGetStringA(i32 %183, i32 3, i8* %184, i32* %8)
  store i32 %185, i32* %5, align 4
  %186 = load i32, i32* %5, align 4
  %187 = load i32, i32* @ERROR_SUCCESS, align 4
  %188 = icmp eq i32 %186, %187
  %189 = zext i1 %188 to i32
  %190 = call i32 (i32, i8*, ...) @ok(i32 %189, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.18, i64 0, i64 0))
  %191 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %192 = call i32 @strcmp(i8* %191, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0))
  %193 = icmp ne i32 %192, 0
  %194 = xor i1 %193, true
  %195 = zext i1 %194 to i32
  %196 = call i32 (i32, i8*, ...) @ok(i32 %195, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.20, i64 0, i64 0))
  %197 = load i32, i32* %4, align 4
  %198 = call i32 @MsiCloseHandle(i32 %197)
  store i32 %198, i32* %5, align 4
  %199 = load i32, i32* %5, align 4
  %200 = load i32, i32* @ERROR_SUCCESS, align 4
  %201 = icmp eq i32 %199, %200
  %202 = zext i1 %201 to i32
  %203 = call i32 (i32, i8*, ...) @ok(i32 %202, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  store i32 100, i32* %4, align 4
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21, i64 0, i64 0), i8** %6, align 8
  %204 = load i32, i32* %1, align 4
  %205 = load i8*, i8** %6, align 8
  %206 = call i32 @do_query(i32 %204, i8* %205, i32* %4)
  store i32 %206, i32* %5, align 4
  %207 = load i32, i32* %5, align 4
  %208 = load i32, i32* @ERROR_NO_MORE_ITEMS, align 4
  %209 = icmp eq i32 %207, %208
  %210 = zext i1 %209 to i32
  %211 = call i32 (i32, i8*, ...) @ok(i32 %210, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0))
  %212 = load i32, i32* %4, align 4
  %213 = icmp eq i32 %212, 0
  %214 = zext i1 %213 to i32
  %215 = call i32 (i32, i8*, ...) @ok(i32 %214, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i64 0, i64 0))
  %216 = load i32, i32* %4, align 4
  %217 = call i32 @MsiCloseHandle(i32 %216)
  store i32 %217, i32* %5, align 4
  %218 = load i32, i32* %5, align 4
  %219 = load i32, i32* @ERROR_SUCCESS, align 4
  %220 = icmp eq i32 %218, %219
  %221 = zext i1 %220 to i32
  %222 = call i32 (i32, i8*, ...) @ok(i32 %221, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.23, i64 0, i64 0), i8** %6, align 8
  %223 = load i32, i32* %1, align 4
  %224 = load i8*, i8** %6, align 8
  %225 = call i32 @do_query(i32 %223, i8* %224, i32* %4)
  store i32 %225, i32* %5, align 4
  %226 = load i32, i32* %5, align 4
  %227 = load i32, i32* @ERROR_NO_MORE_ITEMS, align 4
  %228 = icmp eq i32 %226, %227
  %229 = zext i1 %228 to i32
  %230 = call i32 (i32, i8*, ...) @ok(i32 %229, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0))
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.24, i64 0, i64 0), i8** %6, align 8
  %231 = load i32, i32* %1, align 4
  %232 = load i8*, i8** %6, align 8
  %233 = call i32 @do_query(i32 %231, i8* %232, i32* %4)
  store i32 %233, i32* %5, align 4
  %234 = load i32, i32* %5, align 4
  %235 = load i32, i32* @ERROR_NO_MORE_ITEMS, align 4
  %236 = icmp eq i32 %234, %235
  %237 = zext i1 %236 to i32
  %238 = call i32 (i32, i8*, ...) @ok(i32 %237, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0))
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.25, i64 0, i64 0), i8** %6, align 8
  %239 = load i32, i32* %1, align 4
  %240 = load i8*, i8** %6, align 8
  %241 = call i32 @do_query(i32 %239, i8* %240, i32* %4)
  store i32 %241, i32* %5, align 4
  %242 = load i32, i32* %5, align 4
  %243 = load i32, i32* @ERROR_NO_MORE_ITEMS, align 4
  %244 = icmp eq i32 %242, %243
  %245 = zext i1 %244 to i32
  %246 = call i32 (i32, i8*, ...) @ok(i32 %245, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0))
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.26, i64 0, i64 0), i8** %6, align 8
  %247 = load i32, i32* %1, align 4
  %248 = load i8*, i8** %6, align 8
  %249 = call i32 @do_query(i32 %247, i8* %248, i32* %4)
  store i32 %249, i32* %5, align 4
  %250 = load i32, i32* %5, align 4
  %251 = load i32, i32* @ERROR_NO_MORE_ITEMS, align 4
  %252 = icmp eq i32 %250, %251
  %253 = zext i1 %252 to i32
  %254 = call i32 (i32, i8*, ...) @ok(i32 %253, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0))
  store i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.27, i64 0, i64 0), i8** %6, align 8
  %255 = load i32, i32* %1, align 4
  %256 = load i8*, i8** %6, align 8
  %257 = call i32 @MsiDatabaseOpenViewA(i32 %255, i8* %256, i32* %2)
  store i32 %257, i32* %5, align 4
  %258 = load i32, i32* %5, align 4
  %259 = load i32, i32* @ERROR_BAD_QUERY_SYNTAX, align 4
  %260 = icmp eq i32 %258, %259
  %261 = zext i1 %260 to i32
  %262 = call i32 (i32, i8*, ...) @ok(i32 %261, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %263 = call i32 @MsiCreateRecord(i32 4)
  store i32 %263, i32* %4, align 4
  %264 = load i32, i32* %4, align 4
  %265 = call i32 @MsiRecordSetInteger(i32 %264, i32 1, i32 2)
  store i32 %265, i32* %5, align 4
  %266 = load i32, i32* %5, align 4
  %267 = load i32, i32* @ERROR_SUCCESS, align 4
  %268 = icmp eq i32 %266, %267
  %269 = zext i1 %268 to i32
  %270 = call i32 (i32, i8*, ...) @ok(i32 %269, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.28, i64 0, i64 0))
  %271 = load i32, i32* %4, align 4
  %272 = call i32 @MsiRecordSetStringA(i32 %271, i32 2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0))
  store i32 %272, i32* %5, align 4
  %273 = load i32, i32* %5, align 4
  %274 = load i32, i32* @ERROR_SUCCESS, align 4
  %275 = icmp eq i32 %273, %274
  %276 = zext i1 %275 to i32
  %277 = call i32 (i32, i8*, ...) @ok(i32 %276, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.30, i64 0, i64 0))
  %278 = load i32, i32* %4, align 4
  %279 = call i32 @MsiRecordSetStringA(i32 %278, i32 3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i64 0, i64 0))
  store i32 %279, i32* %5, align 4
  %280 = load i32, i32* %5, align 4
  %281 = load i32, i32* @ERROR_SUCCESS, align 4
  %282 = icmp eq i32 %280, %281
  %283 = zext i1 %282 to i32
  %284 = call i32 (i32, i8*, ...) @ok(i32 %283, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.30, i64 0, i64 0))
  store i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.32, i64 0, i64 0), i8** %6, align 8
  %285 = load i32, i32* %1, align 4
  %286 = load i8*, i8** %6, align 8
  %287 = call i32 @MsiDatabaseOpenViewA(i32 %285, i8* %286, i32* %2)
  store i32 %287, i32* %5, align 4
  %288 = load i32, i32* %5, align 4
  %289 = load i32, i32* @ERROR_SUCCESS, align 4
  %290 = icmp eq i32 %288, %289
  %291 = zext i1 %290 to i32
  %292 = call i32 (i32, i8*, ...) @ok(i32 %291, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %293 = load i32, i32* %5, align 4
  %294 = load i32, i32* @ERROR_SUCCESS, align 4
  %295 = icmp eq i32 %293, %294
  br i1 %295, label %296, label %319

296:                                              ; preds = %0
  %297 = load i32, i32* %2, align 4
  %298 = load i32, i32* %4, align 4
  %299 = call i32 @MsiViewExecute(i32 %297, i32 %298)
  store i32 %299, i32* %5, align 4
  %300 = load i32, i32* %5, align 4
  %301 = load i32, i32* @ERROR_SUCCESS, align 4
  %302 = icmp eq i32 %300, %301
  %303 = zext i1 %302 to i32
  %304 = call i32 (i32, i8*, ...) @ok(i32 %303, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %305 = load i32, i32* %2, align 4
  %306 = call i32 @MsiViewClose(i32 %305)
  store i32 %306, i32* %5, align 4
  %307 = load i32, i32* %5, align 4
  %308 = load i32, i32* @ERROR_SUCCESS, align 4
  %309 = icmp eq i32 %307, %308
  %310 = zext i1 %309 to i32
  %311 = call i32 (i32, i8*, ...) @ok(i32 %310, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %312 = load i32, i32* %2, align 4
  %313 = call i32 @MsiCloseHandle(i32 %312)
  store i32 %313, i32* %5, align 4
  %314 = load i32, i32* %5, align 4
  %315 = load i32, i32* @ERROR_SUCCESS, align 4
  %316 = icmp eq i32 %314, %315
  %317 = zext i1 %316 to i32
  %318 = call i32 (i32, i8*, ...) @ok(i32 %317, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  br label %319

319:                                              ; preds = %296, %0
  %320 = load i32, i32* %4, align 4
  %321 = call i32 @MsiCloseHandle(i32 %320)
  store i32 %321, i32* %5, align 4
  %322 = load i32, i32* %5, align 4
  %323 = load i32, i32* @ERROR_SUCCESS, align 4
  %324 = icmp eq i32 %322, %323
  %325 = zext i1 %324 to i32
  %326 = call i32 (i32, i8*, ...) @ok(i32 %325, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %327 = call i32 @MsiViewFetch(i32 0, i32* null)
  store i32 %327, i32* %5, align 4
  %328 = load i32, i32* %5, align 4
  %329 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %330 = icmp eq i32 %328, %329
  %331 = zext i1 %330 to i32
  %332 = call i32 (i32, i8*, ...) @ok(i32 %331, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0))
  %333 = load i32, i32* %1, align 4
  %334 = call i32 @MsiDatabaseCommit(i32 %333)
  store i32 %334, i32* %5, align 4
  %335 = load i32, i32* %5, align 4
  %336 = load i32, i32* @ERROR_SUCCESS, align 4
  %337 = icmp eq i32 %335, %336
  %338 = zext i1 %337 to i32
  %339 = call i32 (i32, i8*, ...) @ok(i32 %338, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.33, i64 0, i64 0))
  %340 = load i32, i32* %1, align 4
  %341 = call i32 @MsiCloseHandle(i32 %340)
  store i32 %341, i32* %5, align 4
  %342 = load i32, i32* %5, align 4
  %343 = load i32, i32* @ERROR_SUCCESS, align 4
  %344 = icmp eq i32 %342, %343
  %345 = zext i1 %344 to i32
  %346 = call i32 (i32, i8*, ...) @ok(i32 %345, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %347 = load i32, i32* @msifile, align 4
  %348 = call i32 @DeleteFileA(i32 %347)
  store i32 %348, i32* %5, align 4
  %349 = load i32, i32* %5, align 4
  %350 = load i32, i32* @TRUE, align 4
  %351 = icmp eq i32 %349, %350
  %352 = zext i1 %351 to i32
  %353 = call i32 (i32, i8*, ...) @ok(i32 %352, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.34, i64 0, i64 0))
  ret void
}

declare dso_local i32 @DeleteFileA(i32) #1

declare dso_local i32 @MsiOpenDatabaseW(i32, i32, i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @MsiDatabaseOpenViewA(i32, i8*, i32*) #1

declare dso_local i32 @MsiViewExecute(i32, i32) #1

declare dso_local i32 @MsiViewClose(i32) #1

declare dso_local i32 @MsiCloseHandle(i32) #1

declare dso_local i32 @MsiViewFetch(i32, i32*) #1

declare dso_local i32 @do_query(i32, i8*, i32*) #1

declare dso_local i32 @MsiRecordGetFieldCount(i32) #1

declare dso_local i32 @MsiRecordIsNull(i32, i32) #1

declare dso_local i32 @MsiRecordGetInteger(i32, i32) #1

declare dso_local i32 @MsiRecordGetStringA(i32, i32, i8*, i32*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @MsiCreateRecord(i32) #1

declare dso_local i32 @MsiRecordSetInteger(i32, i32, i32) #1

declare dso_local i32 @MsiRecordSetStringA(i32, i32, i8*) #1

declare dso_local i32 @MsiDatabaseCommit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
