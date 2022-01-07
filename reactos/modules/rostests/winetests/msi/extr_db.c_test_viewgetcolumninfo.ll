; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_db.c_test_viewgetcolumninfo.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_db.c_test_viewgetcolumninfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"failed to create db\0A\00", align 1
@.str.1 = private unnamed_addr constant [267 x i8] c"CREATE TABLE `Properties` ( `Property` CHAR(255),   `Value` CHAR(1),   `Intvalue` INT,   `Integervalue` INTEGER,   `Shortvalue` SHORT,   `Longvalue` LONG,   `Longcharvalue` LONGCHAR,   `Charvalue` CHAR,   `Localizablevalue` CHAR LOCALIZABLE   PRIMARY KEY `Property`)\00", align 1
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"Failed to create table\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"select * from `Properties`\00", align 1
@MSICOLINFO_TYPES = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"failed to get column info record\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"S255\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"wrong record type\0A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"S1\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"I2\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"I4\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"S0\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"L0\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"Properties\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"_columns table wrong\0A\00", align 1
@MSICOLINFO_NAMES = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [9 x i8] c"Property\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"Value\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"Intvalue\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"Integervalue\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"Shortvalue\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"Longvalue\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"Longcharvalue\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"Charvalue\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"Localizablevalue\00", align 1
@.str.23 = private unnamed_addr constant [77 x i8] c"CREATE TABLE `Binary` ( `Name` CHAR(255), `Data` OBJECT  PRIMARY KEY `Name`)\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"select * from `Binary`\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"V0\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"Binary\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"Name\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"Data\00", align 1
@.str.29 = private unnamed_addr constant [97 x i8] c"CREATE TABLE `UIText` ( `Key` CHAR(72) NOT NULL, `Text` CHAR(255) LOCALIZABLE PRIMARY KEY `Key`)\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"UIText\00", align 1
@.str.31 = private unnamed_addr constant [23 x i8] c"select * from `UIText`\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"Key\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"Text\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"s72\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"L255\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_viewgetcolumninfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_viewgetcolumninfo() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  %4 = call i32 (...) @create_db()
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* %1, align 4
  %6 = call i32 @ok(i32 %5, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* %1, align 4
  %8 = call i64 @run_query(i32 %7, i32 0, i8* getelementptr inbounds ([267 x i8], [267 x i8]* @.str.1, i64 0, i64 0))
  store i64 %8, i64* %3, align 8
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* @ERROR_SUCCESS, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @ok(i32 %12, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %14 = load i32, i32* %1, align 4
  %15 = load i32, i32* @MSICOLINFO_TYPES, align 4
  %16 = call i32 @get_column_info(i32 %14, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %15)
  store i32 %16, i32* %2, align 4
  %17 = load i32, i32* %2, align 4
  %18 = call i32 @ok(i32 %17, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @check_record(i32 %19, i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %21 = call i32 @ok(i32 %20, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %22 = load i32, i32* %2, align 4
  %23 = call i32 @check_record(i32 %22, i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %24 = call i32 @ok(i32 %23, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %25 = load i32, i32* %2, align 4
  %26 = call i32 @check_record(i32 %25, i32 3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  %27 = call i32 @ok(i32 %26, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %28 = load i32, i32* %2, align 4
  %29 = call i32 @check_record(i32 %28, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  %30 = call i32 @ok(i32 %29, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %31 = load i32, i32* %2, align 4
  %32 = call i32 @check_record(i32 %31, i32 5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  %33 = call i32 @ok(i32 %32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %34 = load i32, i32* %2, align 4
  %35 = call i32 @check_record(i32 %34, i32 6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  %36 = call i32 @ok(i32 %35, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %37 = load i32, i32* %2, align 4
  %38 = call i32 @check_record(i32 %37, i32 7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  %39 = call i32 @ok(i32 %38, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %40 = load i32, i32* %2, align 4
  %41 = call i32 @check_record(i32 %40, i32 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  %42 = call i32 @ok(i32 %41, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %43 = load i32, i32* %2, align 4
  %44 = call i32 @check_record(i32 %43, i32 9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  %45 = call i32 @ok(i32 %44, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %46 = load i32, i32* %2, align 4
  %47 = call i32 @MsiCloseHandle(i32 %46)
  %48 = load i32, i32* %1, align 4
  %49 = call i32 @get_columns_table_type(i32 %48, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i32 1)
  %50 = icmp eq i32 15871, %49
  %51 = zext i1 %50 to i32
  %52 = call i32 @ok(i32 %51, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0))
  %53 = load i32, i32* %1, align 4
  %54 = call i32 @get_columns_table_type(i32 %53, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i32 2)
  %55 = icmp eq i32 7425, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 @ok(i32 %56, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0))
  %58 = load i32, i32* %1, align 4
  %59 = call i32 @get_columns_table_type(i32 %58, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i32 3)
  %60 = icmp eq i32 5378, %59
  %61 = zext i1 %60 to i32
  %62 = call i32 @ok(i32 %61, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0))
  %63 = load i32, i32* %1, align 4
  %64 = call i32 @get_columns_table_type(i32 %63, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i32 4)
  %65 = icmp eq i32 5378, %64
  %66 = zext i1 %65 to i32
  %67 = call i32 @ok(i32 %66, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0))
  %68 = load i32, i32* %1, align 4
  %69 = call i32 @get_columns_table_type(i32 %68, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i32 5)
  %70 = icmp eq i32 5378, %69
  %71 = zext i1 %70 to i32
  %72 = call i32 @ok(i32 %71, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0))
  %73 = load i32, i32* %1, align 4
  %74 = call i32 @get_columns_table_type(i32 %73, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i32 6)
  %75 = icmp eq i32 4356, %74
  %76 = zext i1 %75 to i32
  %77 = call i32 @ok(i32 %76, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0))
  %78 = load i32, i32* %1, align 4
  %79 = call i32 @get_columns_table_type(i32 %78, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i32 7)
  %80 = icmp eq i32 7424, %79
  %81 = zext i1 %80 to i32
  %82 = call i32 @ok(i32 %81, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0))
  %83 = load i32, i32* %1, align 4
  %84 = call i32 @get_columns_table_type(i32 %83, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i32 8)
  %85 = icmp eq i32 7424, %84
  %86 = zext i1 %85 to i32
  %87 = call i32 @ok(i32 %86, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0))
  %88 = load i32, i32* %1, align 4
  %89 = call i32 @get_columns_table_type(i32 %88, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i32 9)
  %90 = icmp eq i32 7936, %89
  %91 = zext i1 %90 to i32
  %92 = call i32 @ok(i32 %91, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0))
  %93 = load i32, i32* %1, align 4
  %94 = load i32, i32* @MSICOLINFO_NAMES, align 4
  %95 = call i32 @get_column_info(i32 %93, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %94)
  store i32 %95, i32* %2, align 4
  %96 = load i32, i32* %2, align 4
  %97 = call i32 @ok(i32 %96, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %98 = load i32, i32* %2, align 4
  %99 = call i32 @check_record(i32 %98, i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0))
  %100 = call i32 @ok(i32 %99, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %101 = load i32, i32* %2, align 4
  %102 = call i32 @check_record(i32 %101, i32 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0))
  %103 = call i32 @ok(i32 %102, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %104 = load i32, i32* %2, align 4
  %105 = call i32 @check_record(i32 %104, i32 3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0))
  %106 = call i32 @ok(i32 %105, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %107 = load i32, i32* %2, align 4
  %108 = call i32 @check_record(i32 %107, i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0))
  %109 = call i32 @ok(i32 %108, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %110 = load i32, i32* %2, align 4
  %111 = call i32 @check_record(i32 %110, i32 5, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0))
  %112 = call i32 @ok(i32 %111, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %113 = load i32, i32* %2, align 4
  %114 = call i32 @check_record(i32 %113, i32 6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0))
  %115 = call i32 @ok(i32 %114, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %116 = load i32, i32* %2, align 4
  %117 = call i32 @check_record(i32 %116, i32 7, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0))
  %118 = call i32 @ok(i32 %117, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %119 = load i32, i32* %2, align 4
  %120 = call i32 @check_record(i32 %119, i32 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0))
  %121 = call i32 @ok(i32 %120, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %122 = load i32, i32* %2, align 4
  %123 = call i32 @check_record(i32 %122, i32 9, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i64 0, i64 0))
  %124 = call i32 @ok(i32 %123, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %125 = load i32, i32* %2, align 4
  %126 = call i32 @MsiCloseHandle(i32 %125)
  %127 = load i32, i32* %1, align 4
  %128 = call i64 @run_query(i32 %127, i32 0, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.23, i64 0, i64 0))
  store i64 %128, i64* %3, align 8
  %129 = load i64, i64* %3, align 8
  %130 = load i64, i64* @ERROR_SUCCESS, align 8
  %131 = icmp eq i64 %129, %130
  %132 = zext i1 %131 to i32
  %133 = call i32 @ok(i32 %132, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %134 = load i32, i32* %1, align 4
  %135 = load i32, i32* @MSICOLINFO_TYPES, align 4
  %136 = call i32 @get_column_info(i32 %134, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.24, i64 0, i64 0), i32 %135)
  store i32 %136, i32* %2, align 4
  %137 = load i32, i32* %2, align 4
  %138 = call i32 @ok(i32 %137, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %139 = load i32, i32* %2, align 4
  %140 = call i32 @check_record(i32 %139, i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %141 = call i32 @ok(i32 %140, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %142 = load i32, i32* %2, align 4
  %143 = call i32 @check_record(i32 %142, i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0))
  %144 = call i32 @ok(i32 %143, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %145 = load i32, i32* %2, align 4
  %146 = call i32 @MsiCloseHandle(i32 %145)
  %147 = load i32, i32* %1, align 4
  %148 = call i32 @get_columns_table_type(i32 %147, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i64 0, i64 0), i32 1)
  %149 = icmp eq i32 15871, %148
  %150 = zext i1 %149 to i32
  %151 = call i32 @ok(i32 %150, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0))
  %152 = load i32, i32* %1, align 4
  %153 = call i32 @get_columns_table_type(i32 %152, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i64 0, i64 0), i32 2)
  %154 = icmp eq i32 6400, %153
  %155 = zext i1 %154 to i32
  %156 = call i32 @ok(i32 %155, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0))
  %157 = load i32, i32* %1, align 4
  %158 = load i32, i32* @MSICOLINFO_NAMES, align 4
  %159 = call i32 @get_column_info(i32 %157, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.24, i64 0, i64 0), i32 %158)
  store i32 %159, i32* %2, align 4
  %160 = load i32, i32* %2, align 4
  %161 = call i32 @ok(i32 %160, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %162 = load i32, i32* %2, align 4
  %163 = call i32 @check_record(i32 %162, i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0))
  %164 = call i32 @ok(i32 %163, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %165 = load i32, i32* %2, align 4
  %166 = call i32 @check_record(i32 %165, i32 2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0))
  %167 = call i32 @ok(i32 %166, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %168 = load i32, i32* %2, align 4
  %169 = call i32 @MsiCloseHandle(i32 %168)
  %170 = load i32, i32* %1, align 4
  %171 = call i64 @run_query(i32 %170, i32 0, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.29, i64 0, i64 0))
  store i64 %171, i64* %3, align 8
  %172 = load i64, i64* %3, align 8
  %173 = load i64, i64* @ERROR_SUCCESS, align 8
  %174 = icmp eq i64 %172, %173
  %175 = zext i1 %174 to i32
  %176 = call i32 @ok(i32 %175, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %177 = load i32, i32* %1, align 4
  %178 = call i32 @get_columns_table_type(i32 %177, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i64 0, i64 0), i32 1)
  %179 = icmp eq i32 11592, %178
  %180 = zext i1 %179 to i32
  %181 = call i32 @ok(i32 %180, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0))
  %182 = load i32, i32* %1, align 4
  %183 = call i32 @get_columns_table_type(i32 %182, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i64 0, i64 0), i32 2)
  %184 = icmp eq i32 8191, %183
  %185 = zext i1 %184 to i32
  %186 = call i32 @ok(i32 %185, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0))
  %187 = load i32, i32* %1, align 4
  %188 = load i32, i32* @MSICOLINFO_NAMES, align 4
  %189 = call i32 @get_column_info(i32 %187, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.31, i64 0, i64 0), i32 %188)
  store i32 %189, i32* %2, align 4
  %190 = load i32, i32* %2, align 4
  %191 = call i32 @ok(i32 %190, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %192 = load i32, i32* %2, align 4
  %193 = call i32 @check_record(i32 %192, i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0))
  %194 = call i32 @ok(i32 %193, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %195 = load i32, i32* %2, align 4
  %196 = call i32 @check_record(i32 %195, i32 2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i64 0, i64 0))
  %197 = call i32 @ok(i32 %196, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %198 = load i32, i32* %2, align 4
  %199 = call i32 @MsiCloseHandle(i32 %198)
  %200 = load i32, i32* %1, align 4
  %201 = load i32, i32* @MSICOLINFO_TYPES, align 4
  %202 = call i32 @get_column_info(i32 %200, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.31, i64 0, i64 0), i32 %201)
  store i32 %202, i32* %2, align 4
  %203 = load i32, i32* %2, align 4
  %204 = call i32 @ok(i32 %203, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %205 = load i32, i32* %2, align 4
  %206 = call i32 @check_record(i32 %205, i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i64 0, i64 0))
  %207 = call i32 @ok(i32 %206, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %208 = load i32, i32* %2, align 4
  %209 = call i32 @check_record(i32 %208, i32 2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i64 0, i64 0))
  %210 = call i32 @ok(i32 %209, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %211 = load i32, i32* %2, align 4
  %212 = call i32 @MsiCloseHandle(i32 %211)
  %213 = load i32, i32* %1, align 4
  %214 = call i32 @MsiCloseHandle(i32 %213)
  ret void
}

declare dso_local i32 @create_db(...) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i64 @run_query(i32, i32, i8*) #1

declare dso_local i32 @get_column_info(i32, i8*, i32) #1

declare dso_local i32 @check_record(i32, i32, i8*) #1

declare dso_local i32 @MsiCloseHandle(i32) #1

declare dso_local i32 @get_columns_table_type(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
