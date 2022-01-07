; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_db.c_test_try_transform.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_db.c_test_try_transform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@msifile = common dso_local global i8* null, align 8
@mstfile = common dso_local global i8* null, align 8
@msifileW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to create package db\0A\00", align 1
@.str.1 = private unnamed_addr constant [78 x i8] c"CREATE TABLE `MOO` ( `NOO` SHORT NOT NULL, `OOO` CHAR(255) PRIMARY KEY `NOO`)\00", align 1
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"failed to add table\0A\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"INSERT INTO `MOO` ( `NOO`, `OOO` ) VALUES ( 1, 'a' )\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"failed to add row\0A\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"INSERT INTO `MOO` ( `NOO`, `OOO` ) VALUES ( 2, 'b' )\00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"INSERT INTO `MOO` ( `NOO`, `OOO` ) VALUES ( 3, 'c' )\00", align 1
@.str.7 = private unnamed_addr constant [77 x i8] c"CREATE TABLE `BINARY` ( `ID` SHORT NOT NULL, `BLOB` OBJECT PRIMARY KEY `ID`)\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"failed to set integer\0A\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"testdata.bin\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"lamyon\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"failed to set stream\0A\00", align 1
@.str.12 = private unnamed_addr constant [54 x i8] c"INSERT INTO `BINARY` ( `ID`, `BLOB` ) VALUES ( ?, ? )\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"failed to add row with blob\0A\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"Failed to commit database\0A\00", align 1
@MSIDBOPEN_DIRECT = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [27 x i8] c"Failed to create database\0A\00", align 1
@.str.16 = private unnamed_addr constant [41 x i8] c"return code %d, should be ERROR_SUCCESS\0A\00", align 1
@.str.17 = private unnamed_addr constant [63 x i8] c"select `BAR`,`CAR` from `AAR` where `BAR` = 1 AND `CAR` = 'vw'\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"select query failed\0A\00", align 1
@.str.19 = private unnamed_addr constant [64 x i8] c"select `BAR`,`CAR` from `AAR` where `BAR` = 2 AND `CAR` = 'bmw'\00", align 1
@.str.20 = private unnamed_addr constant [62 x i8] c"select `NOO`,`OOO` from `MOO` where `NOO` = 1 AND `OOO` = 'c'\00", align 1
@.str.21 = private unnamed_addr constant [62 x i8] c"select `NOO`,`OOO` from `MOO` where `NOO` = 2 AND `OOO` = 'b'\00", align 1
@.str.22 = private unnamed_addr constant [36 x i8] c"select * from `MOO` where `NOO` = 3\00", align 1
@ERROR_NO_MORE_ITEMS = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [43 x i8] c"select `BLOB` from `BINARY` where `ID` = 1\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"read stream failed\0A\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"naengmyon\00", align 1
@.str.26 = private unnamed_addr constant [23 x i8] c"stream data was wrong\0A\00", align 1
@.str.27 = private unnamed_addr constant [28 x i8] c"stream data was wrong size\0A\00", align 1
@.str.28 = private unnamed_addr constant [20 x i8] c"select * from `MOO`\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"open view failed\0A\00", align 1
@.str.30 = private unnamed_addr constant [21 x i8] c"view execute failed\0A\00", align 1
@.str.31 = private unnamed_addr constant [19 x i8] c"view fetch failed\0A\00", align 1
@.str.32 = private unnamed_addr constant [20 x i8] c"Expected 1, got %d\0A\00", align 1
@.str.33 = private unnamed_addr constant [26 x i8] c"record get string failed\0A\00", align 1
@.str.34 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.35 = private unnamed_addr constant [20 x i8] c"Expected c, got %s\0A\00", align 1
@.str.36 = private unnamed_addr constant [29 x i8] c"Expected 0x80000000, got %d\0A\00", align 1
@.str.37 = private unnamed_addr constant [20 x i8] c"Expected 5, got %d\0A\00", align 1
@.str.38 = private unnamed_addr constant [20 x i8] c"Expected 2, got %d\0A\00", align 1
@.str.39 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.40 = private unnamed_addr constant [20 x i8] c"Expected b, got %s\0A\00", align 1
@.str.41 = private unnamed_addr constant [22 x i8] c"view fetch succeeded\0A\00", align 1
@ERROR_INSTALL_PACKAGE_REJECTED = common dso_local global i32 0, align 4
@.str.42 = private unnamed_addr constant [36 x i8] c"Not enough rights to perform tests\0A\00", align 1
@.str.43 = private unnamed_addr constant [32 x i8] c"Expected ERROR_SUCCESS, got %u\0A\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"prop\00", align 1
@.str.45 = private unnamed_addr constant [32 x i8] c"Expected ERROR_SUCCESS, got %d\0A\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c"val\00", align 1
@.str.47 = private unnamed_addr constant [22 x i8] c"Expected val, got %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_try_transform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_try_transform() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i64 0, i64* %4, align 8
  %10 = load i32, i32* @MAX_PATH, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %8, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %9, align 8
  %14 = load i8*, i8** @msifile, align 8
  %15 = call i32 @DeleteFileA(i8* %14)
  %16 = load i8*, i8** @mstfile, align 8
  %17 = call i32 @DeleteFileA(i8* %16)
  %18 = load i32, i32* @msifileW, align 4
  %19 = call i64 @create_package_db(i32 %18)
  store i64 %19, i64* %1, align 8
  %20 = load i64, i64* %1, align 8
  %21 = trunc i64 %20 to i32
  %22 = call i32 (i32, i8*, ...) @ok(i32 %21, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  %23 = load i64, i64* %1, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @run_query(i64 %23, i64 0, i8* %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @ERROR_SUCCESS, align 4
  %28 = icmp eq i32 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 (i32, i8*, ...) @ok(i32 %29, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i8** %5, align 8
  %31 = load i64, i64* %1, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = call i32 @run_query(i64 %31, i64 0, i8* %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @ERROR_SUCCESS, align 4
  %36 = icmp eq i32 %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 (i32, i8*, ...) @ok(i32 %37, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0), i8** %5, align 8
  %39 = load i64, i64* %1, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = call i32 @run_query(i64 %39, i64 0, i8* %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @ERROR_SUCCESS, align 4
  %44 = icmp eq i32 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 (i32, i8*, ...) @ok(i32 %45, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0), i8** %5, align 8
  %47 = load i64, i64* %1, align 8
  %48 = load i8*, i8** %5, align 8
  %49 = call i32 @run_query(i64 %47, i64 0, i8* %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @ERROR_SUCCESS, align 4
  %52 = icmp eq i32 %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 (i32, i8*, ...) @ok(i32 %53, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  store i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.7, i64 0, i64 0), i8** %5, align 8
  %55 = load i64, i64* %1, align 8
  %56 = load i8*, i8** %5, align 8
  %57 = call i32 @run_query(i64 %55, i64 0, i8* %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @ERROR_SUCCESS, align 4
  %60 = icmp eq i32 %58, %59
  %61 = zext i1 %60 to i32
  %62 = call i32 (i32, i8*, ...) @ok(i32 %61, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %63 = call i64 @MsiCreateRecord(i32 2)
  store i64 %63, i64* %3, align 8
  %64 = load i64, i64* %3, align 8
  %65 = call i32 @MsiRecordSetInteger(i64 %64, i32 1, i32 2)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @ERROR_SUCCESS, align 4
  %68 = icmp eq i32 %66, %67
  %69 = zext i1 %68 to i32
  %70 = call i32 (i32, i8*, ...) @ok(i32 %69, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0))
  %71 = call i32 @write_file(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i32 6)
  %72 = load i64, i64* %3, align 8
  %73 = call i32 @MsiRecordSetStreamA(i64 %72, i32 2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @ERROR_SUCCESS, align 4
  %76 = icmp eq i32 %74, %75
  %77 = zext i1 %76 to i32
  %78 = call i32 (i32, i8*, ...) @ok(i32 %77, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0))
  store i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.12, i64 0, i64 0), i8** %5, align 8
  %79 = load i64, i64* %1, align 8
  %80 = load i64, i64* %3, align 8
  %81 = load i8*, i8** %5, align 8
  %82 = call i32 @run_query(i64 %79, i64 %80, i8* %81)
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* @ERROR_SUCCESS, align 4
  %85 = icmp eq i32 %83, %84
  %86 = zext i1 %85 to i32
  %87 = call i32 (i32, i8*, ...) @ok(i32 %86, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0))
  %88 = load i64, i64* %3, align 8
  %89 = call i32 @MsiCloseHandle(i64 %88)
  %90 = load i64, i64* %1, align 8
  %91 = call i32 @MsiDatabaseCommit(i64 %90)
  store i32 %91, i32* %6, align 4
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* @ERROR_SUCCESS, align 4
  %94 = icmp eq i32 %92, %93
  %95 = zext i1 %94 to i32
  %96 = call i32 (i32, i8*, ...) @ok(i32 %95, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0))
  %97 = load i64, i64* %1, align 8
  %98 = call i32 @MsiCloseHandle(i64 %97)
  %99 = call i32 @DeleteFileA(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  %100 = call i32 (...) @generate_transform_manual()
  %101 = load i32, i32* @msifileW, align 4
  %102 = load i32, i32* @MSIDBOPEN_DIRECT, align 4
  %103 = call i32 @MsiOpenDatabaseW(i32 %101, i32 %102, i64* %1)
  store i32 %103, i32* %6, align 4
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* @ERROR_SUCCESS, align 4
  %106 = icmp eq i32 %104, %105
  %107 = zext i1 %106 to i32
  %108 = call i32 (i32, i8*, ...) @ok(i32 %107, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i64 0, i64 0))
  %109 = load i64, i64* %1, align 8
  %110 = load i8*, i8** @mstfile, align 8
  %111 = call i32 @MsiDatabaseApplyTransformA(i64 %109, i8* %110, i32 0)
  store i32 %111, i32* %6, align 4
  %112 = load i32, i32* %6, align 4
  %113 = load i32, i32* @ERROR_SUCCESS, align 4
  %114 = icmp eq i32 %112, %113
  %115 = zext i1 %114 to i32
  %116 = load i32, i32* %6, align 4
  %117 = call i32 (i32, i8*, ...) @ok(i32 %115, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.16, i64 0, i64 0), i32 %116)
  %118 = load i64, i64* %1, align 8
  %119 = call i32 @MsiDatabaseCommit(i64 %118)
  store i32 %119, i32* %6, align 4
  %120 = load i32, i32* %6, align 4
  %121 = load i32, i32* @ERROR_SUCCESS, align 4
  %122 = icmp eq i32 %120, %121
  %123 = zext i1 %122 to i32
  %124 = call i32 (i32, i8*, ...) @ok(i32 %123, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0))
  store i64 0, i64* %3, align 8
  store i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.17, i64 0, i64 0), i8** %5, align 8
  %125 = load i64, i64* %1, align 8
  %126 = load i8*, i8** %5, align 8
  %127 = call i32 @do_query(i64 %125, i8* %126, i64* %3)
  store i32 %127, i32* %6, align 4
  %128 = load i32, i32* %6, align 4
  %129 = load i32, i32* @ERROR_SUCCESS, align 4
  %130 = icmp eq i32 %128, %129
  %131 = zext i1 %130 to i32
  %132 = call i32 (i32, i8*, ...) @ok(i32 %131, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i64 0, i64 0))
  %133 = load i64, i64* %3, align 8
  %134 = call i32 @MsiCloseHandle(i64 %133)
  store i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19, i64 0, i64 0), i8** %5, align 8
  store i64 0, i64* %3, align 8
  %135 = load i64, i64* %1, align 8
  %136 = load i8*, i8** %5, align 8
  %137 = call i32 @do_query(i64 %135, i8* %136, i64* %3)
  store i32 %137, i32* %6, align 4
  %138 = load i32, i32* %6, align 4
  %139 = load i32, i32* @ERROR_SUCCESS, align 4
  %140 = icmp eq i32 %138, %139
  %141 = zext i1 %140 to i32
  %142 = call i32 (i32, i8*, ...) @ok(i32 %141, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i64 0, i64 0))
  %143 = load i64, i64* %3, align 8
  %144 = call i32 @MsiCloseHandle(i64 %143)
  store i64 0, i64* %3, align 8
  store i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.20, i64 0, i64 0), i8** %5, align 8
  %145 = load i64, i64* %1, align 8
  %146 = load i8*, i8** %5, align 8
  %147 = call i32 @do_query(i64 %145, i8* %146, i64* %3)
  store i32 %147, i32* %6, align 4
  %148 = load i32, i32* %6, align 4
  %149 = load i32, i32* @ERROR_SUCCESS, align 4
  %150 = icmp eq i32 %148, %149
  %151 = zext i1 %150 to i32
  %152 = call i32 (i32, i8*, ...) @ok(i32 %151, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i64 0, i64 0))
  %153 = load i64, i64* %3, align 8
  %154 = call i32 @MsiCloseHandle(i64 %153)
  store i64 0, i64* %3, align 8
  store i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.21, i64 0, i64 0), i8** %5, align 8
  %155 = load i64, i64* %1, align 8
  %156 = load i8*, i8** %5, align 8
  %157 = call i32 @do_query(i64 %155, i8* %156, i64* %3)
  store i32 %157, i32* %6, align 4
  %158 = load i32, i32* %6, align 4
  %159 = load i32, i32* @ERROR_SUCCESS, align 4
  %160 = icmp eq i32 %158, %159
  %161 = zext i1 %160 to i32
  %162 = call i32 (i32, i8*, ...) @ok(i32 %161, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i64 0, i64 0))
  %163 = load i64, i64* %3, align 8
  %164 = call i32 @MsiCloseHandle(i64 %163)
  store i64 0, i64* %3, align 8
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.22, i64 0, i64 0), i8** %5, align 8
  %165 = load i64, i64* %1, align 8
  %166 = load i8*, i8** %5, align 8
  %167 = call i32 @do_query(i64 %165, i8* %166, i64* %3)
  store i32 %167, i32* %6, align 4
  %168 = load i32, i32* %6, align 4
  %169 = load i32, i32* @ERROR_NO_MORE_ITEMS, align 4
  %170 = icmp eq i32 %168, %169
  %171 = zext i1 %170 to i32
  %172 = call i32 (i32, i8*, ...) @ok(i32 %171, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i64 0, i64 0))
  %173 = load i64, i64* %3, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %0
  %176 = load i64, i64* %3, align 8
  %177 = call i32 @MsiCloseHandle(i64 %176)
  br label %178

178:                                              ; preds = %175, %0
  store i64 0, i64* %3, align 8
  store i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.23, i64 0, i64 0), i8** %5, align 8
  %179 = load i64, i64* %1, align 8
  %180 = load i8*, i8** %5, align 8
  %181 = call i32 @do_query(i64 %179, i8* %180, i64* %3)
  store i32 %181, i32* %6, align 4
  %182 = load i32, i32* %6, align 4
  %183 = load i32, i32* @ERROR_SUCCESS, align 4
  %184 = icmp eq i32 %182, %183
  %185 = zext i1 %184 to i32
  %186 = call i32 (i32, i8*, ...) @ok(i32 %185, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i64 0, i64 0))
  %187 = trunc i64 %11 to i32
  store i32 %187, i32* %7, align 4
  %188 = load i64, i64* %3, align 8
  %189 = call i32 @MsiRecordReadStream(i64 %188, i32 1, i8* %13, i32* %7)
  store i32 %189, i32* %6, align 4
  %190 = load i32, i32* %6, align 4
  %191 = load i32, i32* @ERROR_SUCCESS, align 4
  %192 = icmp eq i32 %190, %191
  %193 = zext i1 %192 to i32
  %194 = call i32 (i32, i8*, ...) @ok(i32 %193, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i64 0, i64 0))
  %195 = call i32 @memcmp(i8* %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i64 0, i64 0), i32 9)
  %196 = icmp ne i32 %195, 0
  %197 = xor i1 %196, true
  %198 = zext i1 %197 to i32
  %199 = call i32 (i32, i8*, ...) @ok(i32 %198, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.26, i64 0, i64 0))
  %200 = load i32, i32* %7, align 4
  %201 = icmp eq i32 %200, 9
  %202 = zext i1 %201 to i32
  %203 = call i32 (i32, i8*, ...) @ok(i32 %202, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.27, i64 0, i64 0))
  %204 = load i64, i64* %3, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %209

206:                                              ; preds = %178
  %207 = load i64, i64* %3, align 8
  %208 = call i32 @MsiCloseHandle(i64 %207)
  br label %209

209:                                              ; preds = %206, %178
  store i64 0, i64* %3, align 8
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.28, i64 0, i64 0), i8** %5, align 8
  %210 = load i64, i64* %1, align 8
  %211 = load i8*, i8** %5, align 8
  %212 = call i32 @MsiDatabaseOpenViewA(i64 %210, i8* %211, i64* %2)
  store i32 %212, i32* %6, align 4
  %213 = load i32, i32* %6, align 4
  %214 = load i32, i32* @ERROR_SUCCESS, align 4
  %215 = icmp eq i32 %213, %214
  %216 = zext i1 %215 to i32
  %217 = call i32 (i32, i8*, ...) @ok(i32 %216, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i64 0, i64 0))
  %218 = load i64, i64* %2, align 8
  %219 = call i32 @MsiViewExecute(i64 %218, i32 0)
  store i32 %219, i32* %6, align 4
  %220 = load i32, i32* %6, align 4
  %221 = load i32, i32* @ERROR_SUCCESS, align 4
  %222 = icmp eq i32 %220, %221
  %223 = zext i1 %222 to i32
  %224 = call i32 (i32, i8*, ...) @ok(i32 %223, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.30, i64 0, i64 0))
  %225 = load i64, i64* %2, align 8
  %226 = call i32 @MsiViewFetch(i64 %225, i64* %3)
  store i32 %226, i32* %6, align 4
  %227 = load i32, i32* %6, align 4
  %228 = load i32, i32* @ERROR_SUCCESS, align 4
  %229 = icmp eq i32 %227, %228
  %230 = zext i1 %229 to i32
  %231 = call i32 (i32, i8*, ...) @ok(i32 %230, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.31, i64 0, i64 0))
  %232 = load i64, i64* %3, align 8
  %233 = call i32 @MsiRecordGetInteger(i64 %232, i32 1)
  store i32 %233, i32* %6, align 4
  %234 = load i32, i32* %6, align 4
  %235 = icmp eq i32 %234, 1
  %236 = zext i1 %235 to i32
  %237 = load i32, i32* %6, align 4
  %238 = call i32 (i32, i8*, ...) @ok(i32 %236, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.32, i64 0, i64 0), i32 %237)
  %239 = trunc i64 %11 to i32
  store i32 %239, i32* %7, align 4
  %240 = load i64, i64* %3, align 8
  %241 = call i32 @MsiRecordGetStringA(i64 %240, i32 2, i8* %13, i32* %7)
  store i32 %241, i32* %6, align 4
  %242 = load i32, i32* %6, align 4
  %243 = load i32, i32* @ERROR_SUCCESS, align 4
  %244 = icmp eq i32 %242, %243
  %245 = zext i1 %244 to i32
  %246 = call i32 (i32, i8*, ...) @ok(i32 %245, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.33, i64 0, i64 0))
  %247 = call i32 @lstrcmpA(i8* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i64 0, i64 0))
  %248 = icmp ne i32 %247, 0
  %249 = xor i1 %248, true
  %250 = zext i1 %249 to i32
  %251 = call i32 (i32, i8*, ...) @ok(i32 %250, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.35, i64 0, i64 0), i8* %13)
  %252 = load i64, i64* %3, align 8
  %253 = call i32 @MsiRecordGetInteger(i64 %252, i32 3)
  store i32 %253, i32* %6, align 4
  %254 = load i32, i32* %6, align 4
  %255 = icmp eq i32 %254, -2147483648
  %256 = zext i1 %255 to i32
  %257 = load i32, i32* %6, align 4
  %258 = call i32 (i32, i8*, ...) @ok(i32 %256, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.36, i64 0, i64 0), i32 %257)
  %259 = load i64, i64* %3, align 8
  %260 = call i32 @MsiRecordGetInteger(i64 %259, i32 4)
  store i32 %260, i32* %6, align 4
  %261 = load i32, i32* %6, align 4
  %262 = icmp eq i32 %261, 5
  %263 = zext i1 %262 to i32
  %264 = load i32, i32* %6, align 4
  %265 = call i32 (i32, i8*, ...) @ok(i32 %263, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.37, i64 0, i64 0), i32 %264)
  %266 = load i64, i64* %3, align 8
  %267 = call i32 @MsiCloseHandle(i64 %266)
  %268 = load i64, i64* %2, align 8
  %269 = call i32 @MsiViewFetch(i64 %268, i64* %3)
  store i32 %269, i32* %6, align 4
  %270 = load i32, i32* %6, align 4
  %271 = load i32, i32* @ERROR_SUCCESS, align 4
  %272 = icmp eq i32 %270, %271
  %273 = zext i1 %272 to i32
  %274 = call i32 (i32, i8*, ...) @ok(i32 %273, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.31, i64 0, i64 0))
  %275 = load i64, i64* %3, align 8
  %276 = call i32 @MsiRecordGetInteger(i64 %275, i32 1)
  store i32 %276, i32* %6, align 4
  %277 = load i32, i32* %6, align 4
  %278 = icmp eq i32 %277, 2
  %279 = zext i1 %278 to i32
  %280 = load i32, i32* %6, align 4
  %281 = call i32 (i32, i8*, ...) @ok(i32 %279, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.38, i64 0, i64 0), i32 %280)
  %282 = trunc i64 %11 to i32
  store i32 %282, i32* %7, align 4
  %283 = load i64, i64* %3, align 8
  %284 = call i32 @MsiRecordGetStringA(i64 %283, i32 2, i8* %13, i32* %7)
  store i32 %284, i32* %6, align 4
  %285 = load i32, i32* %6, align 4
  %286 = load i32, i32* @ERROR_SUCCESS, align 4
  %287 = icmp eq i32 %285, %286
  %288 = zext i1 %287 to i32
  %289 = call i32 (i32, i8*, ...) @ok(i32 %288, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.33, i64 0, i64 0))
  %290 = call i32 @lstrcmpA(i8* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i64 0, i64 0))
  %291 = icmp ne i32 %290, 0
  %292 = xor i1 %291, true
  %293 = zext i1 %292 to i32
  %294 = call i32 (i32, i8*, ...) @ok(i32 %293, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.40, i64 0, i64 0), i8* %13)
  %295 = load i64, i64* %3, align 8
  %296 = call i32 @MsiRecordGetInteger(i64 %295, i32 3)
  store i32 %296, i32* %6, align 4
  %297 = load i32, i32* %6, align 4
  %298 = icmp eq i32 %297, -2147483648
  %299 = zext i1 %298 to i32
  %300 = load i32, i32* %6, align 4
  %301 = call i32 (i32, i8*, ...) @ok(i32 %299, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.36, i64 0, i64 0), i32 %300)
  %302 = load i64, i64* %3, align 8
  %303 = call i32 @MsiRecordGetInteger(i64 %302, i32 4)
  store i32 %303, i32* %6, align 4
  %304 = load i32, i32* %6, align 4
  %305 = icmp eq i32 %304, -2147483648
  %306 = zext i1 %305 to i32
  %307 = load i32, i32* %6, align 4
  %308 = call i32 (i32, i8*, ...) @ok(i32 %306, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.36, i64 0, i64 0), i32 %307)
  %309 = load i64, i64* %3, align 8
  %310 = call i32 @MsiCloseHandle(i64 %309)
  %311 = load i64, i64* %2, align 8
  %312 = call i32 @MsiViewFetch(i64 %311, i64* %3)
  store i32 %312, i32* %6, align 4
  %313 = load i32, i32* %6, align 4
  %314 = load i32, i32* @ERROR_NO_MORE_ITEMS, align 4
  %315 = icmp eq i32 %313, %314
  %316 = zext i1 %315 to i32
  %317 = call i32 (i32, i8*, ...) @ok(i32 %316, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.41, i64 0, i64 0))
  %318 = load i64, i64* %3, align 8
  %319 = call i32 @MsiCloseHandle(i64 %318)
  %320 = load i64, i64* %2, align 8
  %321 = call i32 @MsiViewClose(i64 %320)
  %322 = load i64, i64* %2, align 8
  %323 = call i32 @MsiCloseHandle(i64 %322)
  %324 = load i64, i64* %1, align 8
  %325 = call i32 @package_from_db(i64 %324, i64* %4)
  store i32 %325, i32* %6, align 4
  %326 = load i32, i32* %6, align 4
  %327 = load i32, i32* @ERROR_INSTALL_PACKAGE_REJECTED, align 4
  %328 = icmp eq i32 %326, %327
  br i1 %328, label %329, label %331

329:                                              ; preds = %209
  %330 = call i32 @skip(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.42, i64 0, i64 0))
  br label %354

331:                                              ; preds = %209
  %332 = load i32, i32* %6, align 4
  %333 = load i32, i32* @ERROR_SUCCESS, align 4
  %334 = icmp eq i32 %332, %333
  %335 = zext i1 %334 to i32
  %336 = load i32, i32* %6, align 4
  %337 = call i32 (i32, i8*, ...) @ok(i32 %335, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.43, i64 0, i64 0), i32 %336)
  %338 = load i32, i32* @MAX_PATH, align 4
  store i32 %338, i32* %7, align 4
  %339 = load i64, i64* %4, align 8
  %340 = call i32 @MsiGetPropertyA(i64 %339, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i64 0, i64 0), i8* %13, i32* %7)
  store i32 %340, i32* %6, align 4
  %341 = load i32, i32* %6, align 4
  %342 = load i32, i32* @ERROR_SUCCESS, align 4
  %343 = icmp eq i32 %341, %342
  %344 = zext i1 %343 to i32
  %345 = load i32, i32* %6, align 4
  %346 = call i32 (i32, i8*, ...) @ok(i32 %344, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.45, i64 0, i64 0), i32 %345)
  %347 = call i32 @lstrcmpA(i8* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.46, i64 0, i64 0))
  %348 = icmp ne i32 %347, 0
  %349 = xor i1 %348, true
  %350 = zext i1 %349 to i32
  %351 = call i32 (i32, i8*, ...) @ok(i32 %350, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.47, i64 0, i64 0), i8* %13)
  %352 = load i64, i64* %4, align 8
  %353 = call i32 @MsiCloseHandle(i64 %352)
  br label %354

354:                                              ; preds = %331, %329
  %355 = load i64, i64* %1, align 8
  %356 = call i32 @MsiCloseHandle(i64 %355)
  %357 = load i8*, i8** @msifile, align 8
  %358 = call i32 @DeleteFileA(i8* %357)
  %359 = load i8*, i8** @mstfile, align 8
  %360 = call i32 @DeleteFileA(i8* %359)
  %361 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %361)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @DeleteFileA(i8*) #2

declare dso_local i64 @create_package_db(i32) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @run_query(i64, i64, i8*) #2

declare dso_local i64 @MsiCreateRecord(i32) #2

declare dso_local i32 @MsiRecordSetInteger(i64, i32, i32) #2

declare dso_local i32 @write_file(i8*, i8*, i32) #2

declare dso_local i32 @MsiRecordSetStreamA(i64, i32, i8*) #2

declare dso_local i32 @MsiCloseHandle(i64) #2

declare dso_local i32 @MsiDatabaseCommit(i64) #2

declare dso_local i32 @generate_transform_manual(...) #2

declare dso_local i32 @MsiOpenDatabaseW(i32, i32, i64*) #2

declare dso_local i32 @MsiDatabaseApplyTransformA(i64, i8*, i32) #2

declare dso_local i32 @do_query(i64, i8*, i64*) #2

declare dso_local i32 @MsiRecordReadStream(i64, i32, i8*, i32*) #2

declare dso_local i32 @memcmp(i8*, i8*, i32) #2

declare dso_local i32 @MsiDatabaseOpenViewA(i64, i8*, i64*) #2

declare dso_local i32 @MsiViewExecute(i64, i32) #2

declare dso_local i32 @MsiViewFetch(i64, i64*) #2

declare dso_local i32 @MsiRecordGetInteger(i64, i32) #2

declare dso_local i32 @MsiRecordGetStringA(i64, i32, i8*, i32*) #2

declare dso_local i32 @lstrcmpA(i8*, i8*) #2

declare dso_local i32 @MsiViewClose(i64) #2

declare dso_local i32 @package_from_db(i64, i64*) #2

declare dso_local i32 @skip(i8*) #2

declare dso_local i32 @MsiGetPropertyA(i64, i8*, i8*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
