; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_db.c_test_alter.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_db.c_test_alter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"failed to create db\0A\00", align 1
@.str.1 = private unnamed_addr constant [95 x i8] c"CREATE TABLE `T` ( `B` SHORT NOT NULL TEMPORARY, `C` CHAR(255) TEMPORARY PRIMARY KEY `C`) HOLD\00", align 1
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"failed to add table\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@MSICONDITION_FALSE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [24 x i8] c"wrong return condition\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"ALTER TABLE `T` HOLD\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"failed to hold table %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"ALTER TABLE `T` FREE\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"failed to free table\0A\00", align 1
@ERROR_BAD_QUERY_SYNTAX = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [18 x i8] c"SELECT * FROM `T`\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"Expected ERROR_BAD_QUERY_SYNTAX, got %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [61 x i8] c"CREATE TABLE `U` ( `A` INTEGER, `B` INTEGER PRIMARY KEY `B`)\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"Expected ERROR_SUCCESS, got %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"ALTER TABLE `U` HOLD\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"ALTER TABLE `U` ADD `C`\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"ALTER TABLE `U` ADD `C` INTEGER\00", align 1
@.str.16 = private unnamed_addr constant [42 x i8] c"ALTER TABLE `U` ADD `D` INTEGER TEMPORARY\00", align 1
@.str.17 = private unnamed_addr constant [61 x i8] c"INSERT INTO `U` ( `A`, `B`, `C`, `D` ) VALUES ( 1, 2, 3, 4 )\00", align 1
@.str.18 = private unnamed_addr constant [47 x i8] c"ALTER TABLE `U` ADD `D` INTEGER TEMPORARY HOLD\00", align 1
@.str.19 = private unnamed_addr constant [61 x i8] c"INSERT INTO `U` ( `A`, `B`, `C`, `D` ) VALUES ( 5, 6, 7, 8 )\00", align 1
@.str.20 = private unnamed_addr constant [32 x i8] c"SELECT * FROM `U` WHERE `D` = 8\00", align 1
@.str.21 = private unnamed_addr constant [47 x i8] c"ALTER TABLE `U` ADD `D` INTEGER TEMPORARY FREE\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"ALTER COLUMN `D` FREE\00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c"ALTER TABLE `U` FREE\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"SELECT * FROM `U`\00", align 1
@.str.25 = private unnamed_addr constant [64 x i8] c"INSERT INTO `U` ( `A`, `B`, `C`, `D` ) VALUES ( 9, 10, 11, 12 )\00", align 1
@.str.26 = private unnamed_addr constant [47 x i8] c"ALTER TABLE `U` ADD `E` INTEGER TEMPORARY HOLD\00", align 1
@.str.27 = private unnamed_addr constant [65 x i8] c"INSERT INTO `U` ( `A`, `B`, `C`, `E` ) VALUES ( 13, 14, 15, 16 )\00", align 1
@.str.28 = private unnamed_addr constant [33 x i8] c"SELECT * FROM `U` WHERE `E` = 16\00", align 1
@.str.29 = private unnamed_addr constant [65 x i8] c"INSERT INTO `U` ( `A`, `B`, `C`, `E` ) VALUES ( 17, 18, 19, 20 )\00", align 1
@.str.30 = private unnamed_addr constant [33 x i8] c"SELECT * FROM `U` WHERE `E` = 20\00", align 1
@.str.31 = private unnamed_addr constant [65 x i8] c"INSERT INTO `U` ( `A`, `B`, `C`, `E` ) VALUES ( 20, 21, 22, 23 )\00", align 1
@msifile = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_alter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_alter() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i32 0, i32* %2, align 4
  %5 = call i32 (...) @create_db()
  store i32 %5, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call i32 (i32, i8*, ...) @ok(i32 %6, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  %8 = load i32, i32* %2, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = call i64 @run_query(i32 %8, i32 0, i8* %9)
  store i64 %10, i64* %4, align 8
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* @ERROR_SUCCESS, align 8
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 (i32, i8*, ...) @ok(i32 %14, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %16 = load i32, i32* %2, align 4
  %17 = call i64 @MsiDatabaseIsTablePersistentA(i32 %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i64 %17, i64* %1, align 8
  %18 = load i64, i64* %1, align 8
  %19 = load i64, i64* @MSICONDITION_FALSE, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 (i32, i8*, ...) @ok(i32 %21, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8** %3, align 8
  %23 = load i32, i32* %2, align 4
  %24 = load i8*, i8** %3, align 8
  %25 = call i64 @run_query(i32 %23, i32 0, i8* %24)
  store i64 %25, i64* %4, align 8
  %26 = load i64, i64* %4, align 8
  %27 = load i64, i64* @ERROR_SUCCESS, align 8
  %28 = icmp eq i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = load i64, i64* %4, align 8
  %31 = call i32 (i32, i8*, ...) @ok(i32 %29, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i64 %30)
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i8** %3, align 8
  %32 = load i32, i32* %2, align 4
  %33 = load i8*, i8** %3, align 8
  %34 = call i64 @run_query(i32 %32, i32 0, i8* %33)
  store i64 %34, i64* %4, align 8
  %35 = load i64, i64* %4, align 8
  %36 = load i64, i64* @ERROR_SUCCESS, align 8
  %37 = icmp eq i64 %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 (i32, i8*, ...) @ok(i32 %38, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i8** %3, align 8
  %40 = load i32, i32* %2, align 4
  %41 = load i8*, i8** %3, align 8
  %42 = call i64 @run_query(i32 %40, i32 0, i8* %41)
  store i64 %42, i64* %4, align 8
  %43 = load i64, i64* %4, align 8
  %44 = load i64, i64* @ERROR_SUCCESS, align 8
  %45 = icmp eq i64 %43, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 (i32, i8*, ...) @ok(i32 %46, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i8** %3, align 8
  %48 = load i32, i32* %2, align 4
  %49 = load i8*, i8** %3, align 8
  %50 = call i64 @run_query(i32 %48, i32 0, i8* %49)
  store i64 %50, i64* %4, align 8
  %51 = load i64, i64* %4, align 8
  %52 = load i64, i64* @ERROR_BAD_QUERY_SYNTAX, align 8
  %53 = icmp eq i64 %51, %52
  %54 = zext i1 %53 to i32
  %55 = call i32 (i32, i8*, ...) @ok(i32 %54, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8** %3, align 8
  %56 = load i32, i32* %2, align 4
  %57 = load i8*, i8** %3, align 8
  %58 = call i64 @run_query(i32 %56, i32 0, i8* %57)
  store i64 %58, i64* %4, align 8
  %59 = load i64, i64* %4, align 8
  %60 = load i64, i64* @ERROR_BAD_QUERY_SYNTAX, align 8
  %61 = icmp eq i64 %59, %60
  %62 = zext i1 %61 to i32
  %63 = load i64, i64* %4, align 8
  %64 = call i32 (i32, i8*, ...) @ok(i32 %62, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i64 %63)
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i8** %3, align 8
  %65 = load i32, i32* %2, align 4
  %66 = load i8*, i8** %3, align 8
  %67 = call i64 @run_query(i32 %65, i32 0, i8* %66)
  store i64 %67, i64* %4, align 8
  %68 = load i64, i64* %4, align 8
  %69 = load i64, i64* @ERROR_BAD_QUERY_SYNTAX, align 8
  %70 = icmp eq i64 %68, %69
  %71 = zext i1 %70 to i32
  %72 = load i64, i64* %4, align 8
  %73 = call i32 (i32, i8*, ...) @ok(i32 %71, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0), i64 %72)
  store i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.11, i64 0, i64 0), i8** %3, align 8
  %74 = load i32, i32* %2, align 4
  %75 = load i8*, i8** %3, align 8
  %76 = call i64 @run_query(i32 %74, i32 0, i8* %75)
  store i64 %76, i64* %4, align 8
  %77 = load i64, i64* %4, align 8
  %78 = load i64, i64* @ERROR_SUCCESS, align 8
  %79 = icmp eq i64 %77, %78
  %80 = zext i1 %79 to i32
  %81 = load i64, i64* %4, align 8
  %82 = call i32 (i32, i8*, ...) @ok(i32 %80, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0), i64 %81)
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0), i8** %3, align 8
  %83 = load i32, i32* %2, align 4
  %84 = load i8*, i8** %3, align 8
  %85 = call i64 @run_query(i32 %83, i32 0, i8* %84)
  store i64 %85, i64* %4, align 8
  %86 = load i64, i64* %4, align 8
  %87 = load i64, i64* @ERROR_SUCCESS, align 8
  %88 = icmp eq i64 %86, %87
  %89 = zext i1 %88 to i32
  %90 = call i32 (i32, i8*, ...) @ok(i32 %89, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i8** %3, align 8
  %91 = load i32, i32* %2, align 4
  %92 = load i8*, i8** %3, align 8
  %93 = call i64 @run_query(i32 %91, i32 0, i8* %92)
  store i64 %93, i64* %4, align 8
  %94 = load i64, i64* %4, align 8
  %95 = load i64, i64* @ERROR_BAD_QUERY_SYNTAX, align 8
  %96 = icmp eq i64 %94, %95
  %97 = zext i1 %96 to i32
  %98 = load i64, i64* %4, align 8
  %99 = call i32 (i32, i8*, ...) @ok(i32 %97, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0), i64 %98)
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i64 0, i64 0), i8** %3, align 8
  %100 = load i32, i32* %2, align 4
  %101 = load i8*, i8** %3, align 8
  %102 = call i64 @run_query(i32 %100, i32 0, i8* %101)
  store i64 %102, i64* %4, align 8
  %103 = load i64, i64* %4, align 8
  %104 = load i64, i64* @ERROR_SUCCESS, align 8
  %105 = icmp eq i64 %103, %104
  %106 = zext i1 %105 to i32
  %107 = load i64, i64* %4, align 8
  %108 = call i32 (i32, i8*, ...) @ok(i32 %106, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0), i64 %107)
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i64 0, i64 0), i8** %3, align 8
  %109 = load i32, i32* %2, align 4
  %110 = load i8*, i8** %3, align 8
  %111 = call i64 @run_query(i32 %109, i32 0, i8* %110)
  store i64 %111, i64* %4, align 8
  %112 = load i64, i64* %4, align 8
  %113 = load i64, i64* @ERROR_BAD_QUERY_SYNTAX, align 8
  %114 = icmp eq i64 %112, %113
  %115 = zext i1 %114 to i32
  %116 = load i64, i64* %4, align 8
  %117 = call i32 (i32, i8*, ...) @ok(i32 %115, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0), i64 %116)
  store i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.16, i64 0, i64 0), i8** %3, align 8
  %118 = load i32, i32* %2, align 4
  %119 = load i8*, i8** %3, align 8
  %120 = call i64 @run_query(i32 %118, i32 0, i8* %119)
  store i64 %120, i64* %4, align 8
  %121 = load i64, i64* %4, align 8
  %122 = load i64, i64* @ERROR_SUCCESS, align 8
  %123 = icmp eq i64 %121, %122
  %124 = zext i1 %123 to i32
  %125 = load i64, i64* %4, align 8
  %126 = call i32 (i32, i8*, ...) @ok(i32 %124, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0), i64 %125)
  store i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.17, i64 0, i64 0), i8** %3, align 8
  %127 = load i32, i32* %2, align 4
  %128 = load i8*, i8** %3, align 8
  %129 = call i64 @run_query(i32 %127, i32 0, i8* %128)
  store i64 %129, i64* %4, align 8
  %130 = load i64, i64* %4, align 8
  %131 = load i64, i64* @ERROR_SUCCESS, align 8
  %132 = icmp eq i64 %130, %131
  %133 = zext i1 %132 to i32
  %134 = load i64, i64* %4, align 8
  %135 = call i32 (i32, i8*, ...) @ok(i32 %133, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0), i64 %134)
  store i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.18, i64 0, i64 0), i8** %3, align 8
  %136 = load i32, i32* %2, align 4
  %137 = load i8*, i8** %3, align 8
  %138 = call i64 @run_query(i32 %136, i32 0, i8* %137)
  store i64 %138, i64* %4, align 8
  %139 = load i64, i64* %4, align 8
  %140 = load i64, i64* @ERROR_BAD_QUERY_SYNTAX, align 8
  %141 = icmp eq i64 %139, %140
  %142 = zext i1 %141 to i32
  %143 = load i64, i64* %4, align 8
  %144 = call i32 (i32, i8*, ...) @ok(i32 %142, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0), i64 %143)
  store i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.19, i64 0, i64 0), i8** %3, align 8
  %145 = load i32, i32* %2, align 4
  %146 = load i8*, i8** %3, align 8
  %147 = call i64 @run_query(i32 %145, i32 0, i8* %146)
  store i64 %147, i64* %4, align 8
  %148 = load i64, i64* %4, align 8
  %149 = load i64, i64* @ERROR_SUCCESS, align 8
  %150 = icmp eq i64 %148, %149
  %151 = zext i1 %150 to i32
  %152 = load i64, i64* %4, align 8
  %153 = call i32 (i32, i8*, ...) @ok(i32 %151, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0), i64 %152)
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.20, i64 0, i64 0), i8** %3, align 8
  %154 = load i32, i32* %2, align 4
  %155 = load i8*, i8** %3, align 8
  %156 = call i64 @run_query(i32 %154, i32 0, i8* %155)
  store i64 %156, i64* %4, align 8
  %157 = load i64, i64* %4, align 8
  %158 = load i64, i64* @ERROR_SUCCESS, align 8
  %159 = icmp eq i64 %157, %158
  %160 = zext i1 %159 to i32
  %161 = load i64, i64* %4, align 8
  %162 = call i32 (i32, i8*, ...) @ok(i32 %160, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0), i64 %161)
  store i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.21, i64 0, i64 0), i8** %3, align 8
  %163 = load i32, i32* %2, align 4
  %164 = load i8*, i8** %3, align 8
  %165 = call i64 @run_query(i32 %163, i32 0, i8* %164)
  store i64 %165, i64* %4, align 8
  %166 = load i64, i64* %4, align 8
  %167 = load i64, i64* @ERROR_BAD_QUERY_SYNTAX, align 8
  %168 = icmp eq i64 %166, %167
  %169 = zext i1 %168 to i32
  %170 = load i64, i64* %4, align 8
  %171 = call i32 (i32, i8*, ...) @ok(i32 %169, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0), i64 %170)
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.22, i64 0, i64 0), i8** %3, align 8
  %172 = load i32, i32* %2, align 4
  %173 = load i8*, i8** %3, align 8
  %174 = call i64 @run_query(i32 %172, i32 0, i8* %173)
  store i64 %174, i64* %4, align 8
  %175 = load i64, i64* %4, align 8
  %176 = load i64, i64* @ERROR_BAD_QUERY_SYNTAX, align 8
  %177 = icmp eq i64 %175, %176
  %178 = zext i1 %177 to i32
  %179 = load i64, i64* %4, align 8
  %180 = call i32 (i32, i8*, ...) @ok(i32 %178, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0), i64 %179)
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.23, i64 0, i64 0), i8** %3, align 8
  %181 = load i32, i32* %2, align 4
  %182 = load i8*, i8** %3, align 8
  %183 = call i64 @run_query(i32 %181, i32 0, i8* %182)
  store i64 %183, i64* %4, align 8
  %184 = load i64, i64* %4, align 8
  %185 = load i64, i64* @ERROR_SUCCESS, align 8
  %186 = icmp eq i64 %184, %185
  %187 = zext i1 %186 to i32
  %188 = load i64, i64* %4, align 8
  %189 = call i32 (i32, i8*, ...) @ok(i32 %187, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0), i64 %188)
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i64 0, i64 0), i8** %3, align 8
  %190 = load i32, i32* %2, align 4
  %191 = load i8*, i8** %3, align 8
  %192 = call i64 @run_query(i32 %190, i32 0, i8* %191)
  store i64 %192, i64* %4, align 8
  %193 = load i64, i64* %4, align 8
  %194 = load i64, i64* @ERROR_SUCCESS, align 8
  %195 = icmp eq i64 %193, %194
  %196 = zext i1 %195 to i32
  %197 = load i64, i64* %4, align 8
  %198 = call i32 (i32, i8*, ...) @ok(i32 %196, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0), i64 %197)
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.20, i64 0, i64 0), i8** %3, align 8
  %199 = load i32, i32* %2, align 4
  %200 = load i8*, i8** %3, align 8
  %201 = call i64 @run_query(i32 %199, i32 0, i8* %200)
  store i64 %201, i64* %4, align 8
  %202 = load i64, i64* %4, align 8
  %203 = load i64, i64* @ERROR_BAD_QUERY_SYNTAX, align 8
  %204 = icmp eq i64 %202, %203
  %205 = zext i1 %204 to i32
  %206 = load i64, i64* %4, align 8
  %207 = call i32 (i32, i8*, ...) @ok(i32 %205, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0), i64 %206)
  store i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.25, i64 0, i64 0), i8** %3, align 8
  %208 = load i32, i32* %2, align 4
  %209 = load i8*, i8** %3, align 8
  %210 = call i64 @run_query(i32 %208, i32 0, i8* %209)
  store i64 %210, i64* %4, align 8
  %211 = load i64, i64* %4, align 8
  %212 = load i64, i64* @ERROR_BAD_QUERY_SYNTAX, align 8
  %213 = icmp eq i64 %211, %212
  %214 = zext i1 %213 to i32
  %215 = load i64, i64* %4, align 8
  %216 = call i32 (i32, i8*, ...) @ok(i32 %214, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0), i64 %215)
  store i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.26, i64 0, i64 0), i8** %3, align 8
  %217 = load i32, i32* %2, align 4
  %218 = load i8*, i8** %3, align 8
  %219 = call i64 @run_query(i32 %217, i32 0, i8* %218)
  store i64 %219, i64* %4, align 8
  %220 = load i64, i64* %4, align 8
  %221 = load i64, i64* @ERROR_SUCCESS, align 8
  %222 = icmp eq i64 %220, %221
  %223 = zext i1 %222 to i32
  %224 = load i64, i64* %4, align 8
  %225 = call i32 (i32, i8*, ...) @ok(i32 %223, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0), i64 %224)
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0), i8** %3, align 8
  %226 = load i32, i32* %2, align 4
  %227 = load i8*, i8** %3, align 8
  %228 = call i64 @run_query(i32 %226, i32 0, i8* %227)
  store i64 %228, i64* %4, align 8
  %229 = load i64, i64* %4, align 8
  %230 = load i64, i64* @ERROR_SUCCESS, align 8
  %231 = icmp eq i64 %229, %230
  %232 = zext i1 %231 to i32
  %233 = load i64, i64* %4, align 8
  %234 = call i32 (i32, i8*, ...) @ok(i32 %232, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0), i64 %233)
  store i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.27, i64 0, i64 0), i8** %3, align 8
  %235 = load i32, i32* %2, align 4
  %236 = load i8*, i8** %3, align 8
  %237 = call i64 @run_query(i32 %235, i32 0, i8* %236)
  store i64 %237, i64* %4, align 8
  %238 = load i64, i64* %4, align 8
  %239 = load i64, i64* @ERROR_SUCCESS, align 8
  %240 = icmp eq i64 %238, %239
  %241 = zext i1 %240 to i32
  %242 = load i64, i64* %4, align 8
  %243 = call i32 (i32, i8*, ...) @ok(i32 %241, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0), i64 %242)
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.28, i64 0, i64 0), i8** %3, align 8
  %244 = load i32, i32* %2, align 4
  %245 = load i8*, i8** %3, align 8
  %246 = call i64 @run_query(i32 %244, i32 0, i8* %245)
  store i64 %246, i64* %4, align 8
  %247 = load i64, i64* %4, align 8
  %248 = load i64, i64* @ERROR_SUCCESS, align 8
  %249 = icmp eq i64 %247, %248
  %250 = zext i1 %249 to i32
  %251 = load i64, i64* %4, align 8
  %252 = call i32 (i32, i8*, ...) @ok(i32 %250, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0), i64 %251)
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.23, i64 0, i64 0), i8** %3, align 8
  %253 = load i32, i32* %2, align 4
  %254 = load i8*, i8** %3, align 8
  %255 = call i64 @run_query(i32 %253, i32 0, i8* %254)
  store i64 %255, i64* %4, align 8
  %256 = load i64, i64* %4, align 8
  %257 = load i64, i64* @ERROR_SUCCESS, align 8
  %258 = icmp eq i64 %256, %257
  %259 = zext i1 %258 to i32
  %260 = load i64, i64* %4, align 8
  %261 = call i32 (i32, i8*, ...) @ok(i32 %259, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0), i64 %260)
  store i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.29, i64 0, i64 0), i8** %3, align 8
  %262 = load i32, i32* %2, align 4
  %263 = load i8*, i8** %3, align 8
  %264 = call i64 @run_query(i32 %262, i32 0, i8* %263)
  store i64 %264, i64* %4, align 8
  %265 = load i64, i64* %4, align 8
  %266 = load i64, i64* @ERROR_SUCCESS, align 8
  %267 = icmp eq i64 %265, %266
  %268 = zext i1 %267 to i32
  %269 = load i64, i64* %4, align 8
  %270 = call i32 (i32, i8*, ...) @ok(i32 %268, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0), i64 %269)
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.30, i64 0, i64 0), i8** %3, align 8
  %271 = load i32, i32* %2, align 4
  %272 = load i8*, i8** %3, align 8
  %273 = call i64 @run_query(i32 %271, i32 0, i8* %272)
  store i64 %273, i64* %4, align 8
  %274 = load i64, i64* %4, align 8
  %275 = load i64, i64* @ERROR_SUCCESS, align 8
  %276 = icmp eq i64 %274, %275
  %277 = zext i1 %276 to i32
  %278 = load i64, i64* %4, align 8
  %279 = call i32 (i32, i8*, ...) @ok(i32 %277, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0), i64 %278)
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.23, i64 0, i64 0), i8** %3, align 8
  %280 = load i32, i32* %2, align 4
  %281 = load i8*, i8** %3, align 8
  %282 = call i64 @run_query(i32 %280, i32 0, i8* %281)
  store i64 %282, i64* %4, align 8
  %283 = load i64, i64* %4, align 8
  %284 = load i64, i64* @ERROR_SUCCESS, align 8
  %285 = icmp eq i64 %283, %284
  %286 = zext i1 %285 to i32
  %287 = load i64, i64* %4, align 8
  %288 = call i32 (i32, i8*, ...) @ok(i32 %286, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0), i64 %287)
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i64 0, i64 0), i8** %3, align 8
  %289 = load i32, i32* %2, align 4
  %290 = load i8*, i8** %3, align 8
  %291 = call i64 @run_query(i32 %289, i32 0, i8* %290)
  store i64 %291, i64* %4, align 8
  %292 = load i64, i64* %4, align 8
  %293 = load i64, i64* @ERROR_SUCCESS, align 8
  %294 = icmp eq i64 %292, %293
  %295 = zext i1 %294 to i32
  %296 = load i64, i64* %4, align 8
  %297 = call i32 (i32, i8*, ...) @ok(i32 %295, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0), i64 %296)
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.30, i64 0, i64 0), i8** %3, align 8
  %298 = load i32, i32* %2, align 4
  %299 = load i8*, i8** %3, align 8
  %300 = call i64 @run_query(i32 %298, i32 0, i8* %299)
  store i64 %300, i64* %4, align 8
  %301 = load i64, i64* %4, align 8
  %302 = load i64, i64* @ERROR_BAD_QUERY_SYNTAX, align 8
  %303 = icmp eq i64 %301, %302
  %304 = zext i1 %303 to i32
  %305 = load i64, i64* %4, align 8
  %306 = call i32 (i32, i8*, ...) @ok(i32 %304, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0), i64 %305)
  store i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.31, i64 0, i64 0), i8** %3, align 8
  %307 = load i32, i32* %2, align 4
  %308 = load i8*, i8** %3, align 8
  %309 = call i64 @run_query(i32 %307, i32 0, i8* %308)
  store i64 %309, i64* %4, align 8
  %310 = load i64, i64* %4, align 8
  %311 = load i64, i64* @ERROR_BAD_QUERY_SYNTAX, align 8
  %312 = icmp eq i64 %310, %311
  %313 = zext i1 %312 to i32
  %314 = load i64, i64* %4, align 8
  %315 = call i32 (i32, i8*, ...) @ok(i32 %313, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0), i64 %314)
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.23, i64 0, i64 0), i8** %3, align 8
  %316 = load i32, i32* %2, align 4
  %317 = load i8*, i8** %3, align 8
  %318 = call i64 @run_query(i32 %316, i32 0, i8* %317)
  store i64 %318, i64* %4, align 8
  %319 = load i64, i64* %4, align 8
  %320 = load i64, i64* @ERROR_SUCCESS, align 8
  %321 = icmp eq i64 %319, %320
  %322 = zext i1 %321 to i32
  %323 = load i64, i64* %4, align 8
  %324 = call i32 (i32, i8*, ...) @ok(i32 %322, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0), i64 %323)
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i64 0, i64 0), i8** %3, align 8
  %325 = load i32, i32* %2, align 4
  %326 = load i8*, i8** %3, align 8
  %327 = call i64 @run_query(i32 %325, i32 0, i8* %326)
  store i64 %327, i64* %4, align 8
  %328 = load i64, i64* %4, align 8
  %329 = load i64, i64* @ERROR_SUCCESS, align 8
  %330 = icmp eq i64 %328, %329
  %331 = zext i1 %330 to i32
  %332 = load i64, i64* %4, align 8
  %333 = call i32 (i32, i8*, ...) @ok(i32 %331, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0), i64 %332)
  %334 = load i32, i32* %2, align 4
  %335 = call i32 @MsiCloseHandle(i32 %334)
  %336 = load i32, i32* @msifile, align 4
  %337 = call i32 @DeleteFileA(i32 %336)
  ret void
}

declare dso_local i32 @create_db(...) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @run_query(i32, i32, i8*) #1

declare dso_local i64 @MsiDatabaseIsTablePersistentA(i32, i8*) #1

declare dso_local i32 @MsiCloseHandle(i32) #1

declare dso_local i32 @DeleteFileA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
