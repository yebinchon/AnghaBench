; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_db.c_test_temporary_table.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_db.c_test_temporary_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MSICONDITION_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"wrong return condition\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"failed to create db\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"_Tables\00", align 1
@MSICONDITION_NONE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [9 x i8] c"_Columns\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"_Storages\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"_Streams\00", align 1
@.str.6 = private unnamed_addr constant [70 x i8] c"CREATE TABLE `P` ( `B` SHORT NOT NULL, `C` CHAR(255) PRIMARY KEY `C`)\00", align 1
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [21 x i8] c"failed to add table\0A\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@MSICONDITION_TRUE = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [76 x i8] c"CREATE TABLE `P2` ( `B` SHORT NOT NULL, `C` CHAR(255) PRIMARY KEY `C`) HOLD\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"P2\00", align 1
@.str.11 = private unnamed_addr constant [95 x i8] c"CREATE TABLE `T` ( `B` SHORT NOT NULL TEMPORARY, `C` CHAR(255) TEMPORARY PRIMARY KEY `C`) HOLD\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@MSICONDITION_FALSE = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [91 x i8] c"CREATE TABLE `T2` ( `B` SHORT NOT NULL TEMPORARY, `C` CHAR(255) TEMPORARY PRIMARY KEY `C`)\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"SELECT * FROM `T2`\00", align 1
@ERROR_BAD_QUERY_SYNTAX = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [41 x i8] c"Expected ERROR_BAD_QUERY_SYNTAX, got %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"T2\00", align 1
@.str.17 = private unnamed_addr constant [81 x i8] c"CREATE TABLE `T3` ( `B` SHORT NOT NULL TEMPORARY, `C` CHAR(255) PRIMARY KEY `C`)\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"T3\00", align 1
@.str.19 = private unnamed_addr constant [81 x i8] c"CREATE TABLE `T4` ( `B` SHORT NOT NULL, `C` CHAR(255) TEMPORARY PRIMARY KEY `C`)\00", align 1
@ERROR_FUNCTION_FAILED = common dso_local global i64 0, align 8
@.str.20 = private unnamed_addr constant [3 x i8] c"T4\00", align 1
@.str.21 = private unnamed_addr constant [86 x i8] c"CREATE TABLE `T5` ( `B` SHORT NOT NULL TEMP, `C` CHAR(255) TEMP PRIMARY KEY `C`) HOLD\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"select * from `T`\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"failed to query table\0A\00", align 1
@MSICOLINFO_TYPES = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [27 x i8] c"failed to get column info\0A\00", align 1
@.str.25 = private unnamed_addr constant [22 x i8] c"failed to get string\0A\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"G255\00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c"wrong column type\0A\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"j2\00", align 1
@.str.29 = private unnamed_addr constant [43 x i8] c"select * from `_Tables` where `Name` = 'T'\00", align 1
@.str.30 = private unnamed_addr constant [35 x i8] c"temporary table exists in _Tables\0A\00", align 1
@.str.31 = private unnamed_addr constant [62 x i8] c"select * from `_Columns` where `Table` = 'T' AND `Name` = 'B'\00", align 1
@ERROR_NO_MORE_ITEMS = common dso_local global i64 0, align 8
@.str.32 = private unnamed_addr constant [36 x i8] c"temporary table exists in _Columns\0A\00", align 1
@.str.33 = private unnamed_addr constant [62 x i8] c"select * from `_Columns` where `Table` = 'T' AND `Name` = 'C'\00", align 1
@msifile = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_temporary_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_temporary_table() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [16 x i8], align 16
  %8 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %9 = call i64 @MsiDatabaseIsTablePersistentA(i32 0, i8* null)
  store i64 %9, i64* %1, align 8
  %10 = load i64, i64* %1, align 8
  %11 = load i64, i64* @MSICONDITION_ERROR, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 (i32, i8*, ...) @ok(i32 %13, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 (...) @create_db()
  store i32 %15, i32* %2, align 4
  %16 = load i32, i32* %2, align 4
  %17 = call i32 (i32, i8*, ...) @ok(i32 %16, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i32, i32* %2, align 4
  %19 = call i64 @MsiDatabaseIsTablePersistentA(i32 %18, i8* null)
  store i64 %19, i64* %1, align 8
  %20 = load i64, i64* %1, align 8
  %21 = load i64, i64* @MSICONDITION_ERROR, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 (i32, i8*, ...) @ok(i32 %23, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* %2, align 4
  %26 = call i64 @MsiDatabaseIsTablePersistentA(i32 %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store i64 %26, i64* %1, align 8
  %27 = load i64, i64* %1, align 8
  %28 = load i64, i64* @MSICONDITION_NONE, align 8
  %29 = icmp eq i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 (i32, i8*, ...) @ok(i32 %30, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* %2, align 4
  %33 = call i64 @MsiDatabaseIsTablePersistentA(i32 %32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  store i64 %33, i64* %1, align 8
  %34 = load i64, i64* %1, align 8
  %35 = load i64, i64* @MSICONDITION_NONE, align 8
  %36 = icmp eq i64 %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 (i32, i8*, ...) @ok(i32 %37, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* %2, align 4
  %40 = call i64 @MsiDatabaseIsTablePersistentA(i32 %39, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  store i64 %40, i64* %1, align 8
  %41 = load i64, i64* %1, align 8
  %42 = load i64, i64* @MSICONDITION_NONE, align 8
  %43 = icmp eq i64 %41, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 (i32, i8*, ...) @ok(i32 %44, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* %2, align 4
  %47 = call i64 @MsiDatabaseIsTablePersistentA(i32 %46, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  store i64 %47, i64* %1, align 8
  %48 = load i64, i64* %1, align 8
  %49 = load i64, i64* @MSICONDITION_NONE, align 8
  %50 = icmp eq i64 %48, %49
  %51 = zext i1 %50 to i32
  %52 = call i32 (i32, i8*, ...) @ok(i32 %51, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.6, i64 0, i64 0), i8** %5, align 8
  %53 = load i32, i32* %2, align 4
  %54 = load i8*, i8** %5, align 8
  %55 = call i64 @run_query(i32 %53, i32 0, i8* %54)
  store i64 %55, i64* %6, align 8
  %56 = load i64, i64* %6, align 8
  %57 = load i64, i64* @ERROR_SUCCESS, align 8
  %58 = icmp eq i64 %56, %57
  %59 = zext i1 %58 to i32
  %60 = call i32 (i32, i8*, ...) @ok(i32 %59, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  %61 = load i32, i32* %2, align 4
  %62 = call i64 @MsiDatabaseIsTablePersistentA(i32 %61, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  store i64 %62, i64* %1, align 8
  %63 = load i64, i64* %1, align 8
  %64 = load i64, i64* @MSICONDITION_TRUE, align 8
  %65 = icmp eq i64 %63, %64
  %66 = zext i1 %65 to i32
  %67 = call i32 (i32, i8*, ...) @ok(i32 %66, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.9, i64 0, i64 0), i8** %5, align 8
  %68 = load i32, i32* %2, align 4
  %69 = load i8*, i8** %5, align 8
  %70 = call i64 @run_query(i32 %68, i32 0, i8* %69)
  store i64 %70, i64* %6, align 8
  %71 = load i64, i64* %6, align 8
  %72 = load i64, i64* @ERROR_SUCCESS, align 8
  %73 = icmp eq i64 %71, %72
  %74 = zext i1 %73 to i32
  %75 = call i32 (i32, i8*, ...) @ok(i32 %74, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  %76 = load i32, i32* %2, align 4
  %77 = call i64 @MsiDatabaseIsTablePersistentA(i32 %76, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  store i64 %77, i64* %1, align 8
  %78 = load i64, i64* %1, align 8
  %79 = load i64, i64* @MSICONDITION_TRUE, align 8
  %80 = icmp eq i64 %78, %79
  %81 = zext i1 %80 to i32
  %82 = call i32 (i32, i8*, ...) @ok(i32 %81, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.11, i64 0, i64 0), i8** %5, align 8
  %83 = load i32, i32* %2, align 4
  %84 = load i8*, i8** %5, align 8
  %85 = call i64 @run_query(i32 %83, i32 0, i8* %84)
  store i64 %85, i64* %6, align 8
  %86 = load i64, i64* %6, align 8
  %87 = load i64, i64* @ERROR_SUCCESS, align 8
  %88 = icmp eq i64 %86, %87
  %89 = zext i1 %88 to i32
  %90 = call i32 (i32, i8*, ...) @ok(i32 %89, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  %91 = load i32, i32* %2, align 4
  %92 = call i64 @MsiDatabaseIsTablePersistentA(i32 %91, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  store i64 %92, i64* %1, align 8
  %93 = load i64, i64* %1, align 8
  %94 = load i64, i64* @MSICONDITION_FALSE, align 8
  %95 = icmp eq i64 %93, %94
  %96 = zext i1 %95 to i32
  %97 = call i32 (i32, i8*, ...) @ok(i32 %96, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.13, i64 0, i64 0), i8** %5, align 8
  %98 = load i32, i32* %2, align 4
  %99 = load i8*, i8** %5, align 8
  %100 = call i64 @run_query(i32 %98, i32 0, i8* %99)
  store i64 %100, i64* %6, align 8
  %101 = load i64, i64* %6, align 8
  %102 = load i64, i64* @ERROR_SUCCESS, align 8
  %103 = icmp eq i64 %101, %102
  %104 = zext i1 %103 to i32
  %105 = call i32 (i32, i8*, ...) @ok(i32 %104, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i8** %5, align 8
  %106 = load i32, i32* %2, align 4
  %107 = load i8*, i8** %5, align 8
  %108 = call i64 @MsiDatabaseOpenViewA(i32 %106, i8* %107, i32* %3)
  store i64 %108, i64* %6, align 8
  %109 = load i64, i64* %6, align 8
  %110 = load i64, i64* @ERROR_BAD_QUERY_SYNTAX, align 8
  %111 = icmp eq i64 %109, %110
  %112 = zext i1 %111 to i32
  %113 = load i64, i64* %6, align 8
  %114 = call i32 (i32, i8*, ...) @ok(i32 %112, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.15, i64 0, i64 0), i64 %113)
  %115 = load i32, i32* %2, align 4
  %116 = call i64 @MsiDatabaseIsTablePersistentA(i32 %115, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0))
  store i64 %116, i64* %1, align 8
  %117 = load i64, i64* %1, align 8
  %118 = load i64, i64* @MSICONDITION_NONE, align 8
  %119 = icmp eq i64 %117, %118
  %120 = zext i1 %119 to i32
  %121 = call i32 (i32, i8*, ...) @ok(i32 %120, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.17, i64 0, i64 0), i8** %5, align 8
  %122 = load i32, i32* %2, align 4
  %123 = load i8*, i8** %5, align 8
  %124 = call i64 @run_query(i32 %122, i32 0, i8* %123)
  store i64 %124, i64* %6, align 8
  %125 = load i64, i64* %6, align 8
  %126 = load i64, i64* @ERROR_SUCCESS, align 8
  %127 = icmp eq i64 %125, %126
  %128 = zext i1 %127 to i32
  %129 = call i32 (i32, i8*, ...) @ok(i32 %128, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  %130 = load i32, i32* %2, align 4
  %131 = call i64 @MsiDatabaseIsTablePersistentA(i32 %130, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0))
  store i64 %131, i64* %1, align 8
  %132 = load i64, i64* %1, align 8
  %133 = load i64, i64* @MSICONDITION_TRUE, align 8
  %134 = icmp eq i64 %132, %133
  %135 = zext i1 %134 to i32
  %136 = call i32 (i32, i8*, ...) @ok(i32 %135, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.19, i64 0, i64 0), i8** %5, align 8
  %137 = load i32, i32* %2, align 4
  %138 = load i8*, i8** %5, align 8
  %139 = call i64 @run_query(i32 %137, i32 0, i8* %138)
  store i64 %139, i64* %6, align 8
  %140 = load i64, i64* %6, align 8
  %141 = load i64, i64* @ERROR_FUNCTION_FAILED, align 8
  %142 = icmp eq i64 %140, %141
  %143 = zext i1 %142 to i32
  %144 = call i32 (i32, i8*, ...) @ok(i32 %143, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  %145 = load i32, i32* %2, align 4
  %146 = call i64 @MsiDatabaseIsTablePersistentA(i32 %145, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0))
  store i64 %146, i64* %1, align 8
  %147 = load i64, i64* %1, align 8
  %148 = load i64, i64* @MSICONDITION_NONE, align 8
  %149 = icmp eq i64 %147, %148
  %150 = zext i1 %149 to i32
  %151 = call i32 (i32, i8*, ...) @ok(i32 %150, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.21, i64 0, i64 0), i8** %5, align 8
  %152 = load i32, i32* %2, align 4
  %153 = load i8*, i8** %5, align 8
  %154 = call i64 @run_query(i32 %152, i32 0, i8* %153)
  store i64 %154, i64* %6, align 8
  %155 = load i64, i64* %6, align 8
  %156 = load i64, i64* @ERROR_BAD_QUERY_SYNTAX, align 8
  %157 = icmp eq i64 %155, %156
  %158 = zext i1 %157 to i32
  %159 = call i32 (i32, i8*, ...) @ok(i32 %158, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i64 0, i64 0), i8** %5, align 8
  %160 = load i32, i32* %2, align 4
  %161 = load i8*, i8** %5, align 8
  %162 = call i64 @MsiDatabaseOpenViewA(i32 %160, i8* %161, i32* %3)
  store i64 %162, i64* %6, align 8
  %163 = load i64, i64* %6, align 8
  %164 = load i64, i64* @ERROR_SUCCESS, align 8
  %165 = icmp eq i64 %163, %164
  %166 = zext i1 %165 to i32
  %167 = call i32 (i32, i8*, ...) @ok(i32 %166, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i64 0, i64 0))
  %168 = load i32, i32* %3, align 4
  %169 = load i32, i32* @MSICOLINFO_TYPES, align 4
  %170 = call i64 @MsiViewGetColumnInfo(i32 %168, i32 %169, i32* %4)
  store i64 %170, i64* %6, align 8
  %171 = load i64, i64* %6, align 8
  %172 = load i64, i64* @ERROR_SUCCESS, align 8
  %173 = icmp eq i64 %171, %172
  %174 = zext i1 %173 to i32
  %175 = call i32 (i32, i8*, ...) @ok(i32 %174, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.24, i64 0, i64 0))
  store i32 16, i32* %8, align 4
  %176 = load i32, i32* %4, align 4
  %177 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %178 = call i64 @MsiRecordGetStringA(i32 %176, i32 1, i8* %177, i32* %8)
  store i64 %178, i64* %6, align 8
  %179 = load i64, i64* %6, align 8
  %180 = load i64, i64* @ERROR_SUCCESS, align 8
  %181 = icmp eq i64 %179, %180
  %182 = zext i1 %181 to i32
  %183 = call i32 (i32, i8*, ...) @ok(i32 %182, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.25, i64 0, i64 0))
  %184 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %185 = call i64 @strcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0), i8* %184)
  %186 = icmp eq i64 0, %185
  %187 = zext i1 %186 to i32
  %188 = call i32 (i32, i8*, ...) @ok(i32 %187, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.27, i64 0, i64 0))
  store i32 16, i32* %8, align 4
  %189 = load i32, i32* %4, align 4
  %190 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %191 = call i64 @MsiRecordGetStringA(i32 %189, i32 2, i8* %190, i32* %8)
  store i64 %191, i64* %6, align 8
  %192 = load i64, i64* %6, align 8
  %193 = load i64, i64* @ERROR_SUCCESS, align 8
  %194 = icmp eq i64 %192, %193
  %195 = zext i1 %194 to i32
  %196 = call i32 (i32, i8*, ...) @ok(i32 %195, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.25, i64 0, i64 0))
  %197 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %198 = call i64 @strcmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0), i8* %197)
  %199 = icmp eq i64 0, %198
  %200 = zext i1 %199 to i32
  %201 = call i32 (i32, i8*, ...) @ok(i32 %200, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.27, i64 0, i64 0))
  %202 = load i32, i32* %4, align 4
  %203 = call i32 @MsiCloseHandle(i32 %202)
  %204 = load i32, i32* %3, align 4
  %205 = call i32 @MsiViewClose(i32 %204)
  %206 = load i32, i32* %3, align 4
  %207 = call i32 @MsiCloseHandle(i32 %206)
  store i32 0, i32* %4, align 4
  %208 = load i32, i32* %2, align 4
  %209 = call i64 @do_query(i32 %208, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.29, i64 0, i64 0), i32* %4)
  store i64 %209, i64* %6, align 8
  %210 = load i64, i64* %6, align 8
  %211 = load i64, i64* @ERROR_SUCCESS, align 8
  %212 = icmp eq i64 %210, %211
  %213 = zext i1 %212 to i32
  %214 = call i32 (i32, i8*, ...) @ok(i32 %213, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.30, i64 0, i64 0))
  %215 = load i32, i32* %4, align 4
  %216 = call i32 @MsiCloseHandle(i32 %215)
  store i32 0, i32* %4, align 4
  %217 = load i32, i32* %2, align 4
  %218 = call i64 @do_query(i32 %217, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.31, i64 0, i64 0), i32* %4)
  store i64 %218, i64* %6, align 8
  %219 = load i64, i64* %6, align 8
  %220 = load i64, i64* @ERROR_NO_MORE_ITEMS, align 8
  %221 = icmp eq i64 %219, %220
  %222 = zext i1 %221 to i32
  %223 = call i32 (i32, i8*, ...) @ok(i32 %222, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.32, i64 0, i64 0))
  %224 = load i32, i32* %4, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %229

226:                                              ; preds = %0
  %227 = load i32, i32* %4, align 4
  %228 = call i32 @MsiCloseHandle(i32 %227)
  br label %229

229:                                              ; preds = %226, %0
  %230 = load i32, i32* %2, align 4
  %231 = call i64 @do_query(i32 %230, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.33, i64 0, i64 0), i32* %4)
  store i64 %231, i64* %6, align 8
  %232 = load i64, i64* %6, align 8
  %233 = load i64, i64* @ERROR_NO_MORE_ITEMS, align 8
  %234 = icmp eq i64 %232, %233
  %235 = zext i1 %234 to i32
  %236 = call i32 (i32, i8*, ...) @ok(i32 %235, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.32, i64 0, i64 0))
  %237 = load i32, i32* %4, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %242

239:                                              ; preds = %229
  %240 = load i32, i32* %4, align 4
  %241 = call i32 @MsiCloseHandle(i32 %240)
  br label %242

242:                                              ; preds = %239, %229
  %243 = load i32, i32* %2, align 4
  %244 = call i32 @MsiCloseHandle(i32 %243)
  %245 = load i32, i32* @msifile, align 4
  %246 = call i32 @DeleteFileA(i32 %245)
  ret void
}

declare dso_local i64 @MsiDatabaseIsTablePersistentA(i32, i8*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @create_db(...) #1

declare dso_local i64 @run_query(i32, i32, i8*) #1

declare dso_local i64 @MsiDatabaseOpenViewA(i32, i8*, i32*) #1

declare dso_local i64 @MsiViewGetColumnInfo(i32, i32, i32*) #1

declare dso_local i64 @MsiRecordGetStringA(i32, i32, i8*, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @MsiCloseHandle(i32) #1

declare dso_local i32 @MsiViewClose(i32) #1

declare dso_local i64 @do_query(i32, i8*, i32*) #1

declare dso_local i32 @DeleteFileA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
