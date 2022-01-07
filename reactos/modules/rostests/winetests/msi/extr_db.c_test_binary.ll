; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_db.c_test_binary.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_db.c_test_binary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@msifileW = common dso_local global i32 0, align 4
@MSIDBOPEN_CREATE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Failed to open database\0A\00", align 1
@.str.1 = private unnamed_addr constant [110 x i8] c"CREATE TABLE `Binary` ( `Name` CHAR(72) NOT NULL, `ID` INT NOT NULL, `Data` OBJECT  PRIMARY KEY `Name`, `ID`)\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Cannot create Binary table: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"test.txt\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"Failed to add stream data to the record: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [121 x i8] c"INSERT INTO `Binary` ( `Name`, `ID`, `Data` ) VALUES ( 'encryption.dll.CB4E6205_F99A_4C51_ADD4_184506EFAB87', 10000, ? )\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"Insert into Binary table failed: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"Failed to close record handle\0A\00", align 1
@ERROR_FUNCTION_FAILED = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [8 x i8] c"got %u\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"Failed to close database\0A\00", align 1
@.str.10 = private unnamed_addr constant [75 x i8] c"INSERT INTO `Binary` ( `Name`, `ID`, `Data` ) VALUES ( 'filename1', 1, ? )\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"Failed to commit database\0A\00", align 1
@MSIDBOPEN_READONLY = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [25 x i8] c"SELECT * FROM `_Streams`\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"SELECT query failed: %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"Failed to get string: %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"Binary.filename1.1\00", align 1
@.str.16 = private unnamed_addr constant [39 x i8] c"Expected 'Binary.filename1.1', got %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"Failed to get stream: %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"test.txt\0A\00", align 1
@.str.19 = private unnamed_addr constant [31 x i8] c"Expected 'test.txt\\n', got %s\0A\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"SELECT * FROM `Binary`\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"filename1\00", align 1
@.str.22 = private unnamed_addr constant [30 x i8] c"Expected 'filename1', got %s\0A\00", align 1
@msifile = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_binary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_binary() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i64 0, i64* %1, align 8
  %9 = load i32, i32* @MAX_PATH, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %3, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %4, align 8
  %13 = load i32, i32* @MAX_PATH, align 4
  %14 = zext i32 %13 to i64
  %15 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %5, align 8
  %16 = load i32, i32* @msifileW, align 4
  %17 = load i32, i32* @MSIDBOPEN_CREATE, align 4
  %18 = call i32 @MsiOpenDatabaseW(i32 %16, i32 %17, i64* %1)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @ERROR_SUCCESS, align 4
  %21 = icmp eq i32 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 (i32, i8*, ...) @ok(i32 %22, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  %24 = load i64, i64* %1, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 @run_query(i64 %24, i64 0, i8* %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @ERROR_SUCCESS, align 4
  %29 = icmp eq i32 %27, %28
  %30 = zext i1 %29 to i32
  %31 = load i32, i32* %8, align 4
  %32 = call i32 (i32, i8*, ...) @ok(i32 %30, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %31)
  %33 = call i32 @create_file(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %34 = call i64 @MsiCreateRecord(i32 1)
  store i64 %34, i64* %2, align 8
  %35 = load i64, i64* %2, align 8
  %36 = call i32 @MsiRecordSetStreamA(i64 %35, i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @ERROR_SUCCESS, align 4
  %39 = icmp eq i32 %37, %38
  %40 = zext i1 %39 to i32
  %41 = load i32, i32* %8, align 4
  %42 = call i32 (i32, i8*, ...) @ok(i32 %40, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 %41)
  %43 = call i32 @DeleteFileA(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  store i8* getelementptr inbounds ([121 x i8], [121 x i8]* @.str.5, i64 0, i64 0), i8** %7, align 8
  %44 = load i64, i64* %1, align 8
  %45 = load i64, i64* %2, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = call i32 @run_query(i64 %44, i64 %45, i8* %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @ERROR_SUCCESS, align 4
  %50 = icmp eq i32 %48, %49
  %51 = zext i1 %50 to i32
  %52 = load i32, i32* %8, align 4
  %53 = call i32 (i32, i8*, ...) @ok(i32 %51, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i32 %52)
  %54 = load i64, i64* %2, align 8
  %55 = call i32 @MsiCloseHandle(i64 %54)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @ERROR_SUCCESS, align 4
  %58 = icmp eq i32 %56, %57
  %59 = zext i1 %58 to i32
  %60 = call i32 (i32, i8*, ...) @ok(i32 %59, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  %61 = load i64, i64* %1, align 8
  %62 = call i32 @MsiDatabaseCommit(i64 %61)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @ERROR_FUNCTION_FAILED, align 4
  %65 = icmp eq i32 %63, %64
  %66 = zext i1 %65 to i32
  %67 = load i32, i32* %8, align 4
  %68 = call i32 (i32, i8*, ...) @ok(i32 %66, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 %67)
  %69 = load i64, i64* %1, align 8
  %70 = call i32 @MsiCloseHandle(i64 %69)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @ERROR_SUCCESS, align 4
  %73 = icmp eq i32 %71, %72
  %74 = zext i1 %73 to i32
  %75 = call i32 (i32, i8*, ...) @ok(i32 %74, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0))
  %76 = load i32, i32* @msifileW, align 4
  %77 = load i32, i32* @MSIDBOPEN_CREATE, align 4
  %78 = call i32 @MsiOpenDatabaseW(i32 %76, i32 %77, i64* %1)
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* @ERROR_SUCCESS, align 4
  %81 = icmp eq i32 %79, %80
  %82 = zext i1 %81 to i32
  %83 = call i32 (i32, i8*, ...) @ok(i32 %82, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  %84 = load i64, i64* %1, align 8
  %85 = load i8*, i8** %7, align 8
  %86 = call i32 @run_query(i64 %84, i64 0, i8* %85)
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* @ERROR_SUCCESS, align 4
  %89 = icmp eq i32 %87, %88
  %90 = zext i1 %89 to i32
  %91 = load i32, i32* %8, align 4
  %92 = call i32 (i32, i8*, ...) @ok(i32 %90, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %91)
  %93 = call i32 @create_file(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %94 = call i64 @MsiCreateRecord(i32 1)
  store i64 %94, i64* %2, align 8
  %95 = load i64, i64* %2, align 8
  %96 = call i32 @MsiRecordSetStreamA(i64 %95, i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* @ERROR_SUCCESS, align 4
  %99 = icmp eq i32 %97, %98
  %100 = zext i1 %99 to i32
  %101 = load i32, i32* %8, align 4
  %102 = call i32 (i32, i8*, ...) @ok(i32 %100, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 %101)
  %103 = call i32 @DeleteFileA(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  store i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.10, i64 0, i64 0), i8** %7, align 8
  %104 = load i64, i64* %1, align 8
  %105 = load i64, i64* %2, align 8
  %106 = load i8*, i8** %7, align 8
  %107 = call i32 @run_query(i64 %104, i64 %105, i8* %106)
  store i32 %107, i32* %8, align 4
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* @ERROR_SUCCESS, align 4
  %110 = icmp eq i32 %108, %109
  %111 = zext i1 %110 to i32
  %112 = load i32, i32* %8, align 4
  %113 = call i32 (i32, i8*, ...) @ok(i32 %111, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i32 %112)
  store i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.10, i64 0, i64 0), i8** %7, align 8
  %114 = load i64, i64* %1, align 8
  %115 = load i64, i64* %2, align 8
  %116 = load i8*, i8** %7, align 8
  %117 = call i32 @run_query(i64 %114, i64 %115, i8* %116)
  store i32 %117, i32* %8, align 4
  %118 = load i32, i32* %8, align 4
  %119 = load i32, i32* @ERROR_FUNCTION_FAILED, align 4
  %120 = icmp eq i32 %118, %119
  %121 = zext i1 %120 to i32
  %122 = load i32, i32* %8, align 4
  %123 = call i32 (i32, i8*, ...) @ok(i32 %121, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 %122)
  %124 = load i64, i64* %2, align 8
  %125 = call i32 @MsiCloseHandle(i64 %124)
  store i32 %125, i32* %8, align 4
  %126 = load i32, i32* %8, align 4
  %127 = load i32, i32* @ERROR_SUCCESS, align 4
  %128 = icmp eq i32 %126, %127
  %129 = zext i1 %128 to i32
  %130 = call i32 (i32, i8*, ...) @ok(i32 %129, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  %131 = load i64, i64* %1, align 8
  %132 = call i32 @MsiDatabaseCommit(i64 %131)
  store i32 %132, i32* %8, align 4
  %133 = load i32, i32* %8, align 4
  %134 = load i32, i32* @ERROR_SUCCESS, align 4
  %135 = icmp eq i32 %133, %134
  %136 = zext i1 %135 to i32
  %137 = call i32 (i32, i8*, ...) @ok(i32 %136, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0))
  %138 = load i64, i64* %1, align 8
  %139 = call i32 @MsiCloseHandle(i64 %138)
  store i32 %139, i32* %8, align 4
  %140 = load i32, i32* %8, align 4
  %141 = load i32, i32* @ERROR_SUCCESS, align 4
  %142 = icmp eq i32 %140, %141
  %143 = zext i1 %142 to i32
  %144 = call i32 (i32, i8*, ...) @ok(i32 %143, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0))
  %145 = load i32, i32* @msifileW, align 4
  %146 = load i32, i32* @MSIDBOPEN_READONLY, align 4
  %147 = call i32 @MsiOpenDatabaseW(i32 %145, i32 %146, i64* %1)
  store i32 %147, i32* %8, align 4
  %148 = load i32, i32* %8, align 4
  %149 = load i32, i32* @ERROR_SUCCESS, align 4
  %150 = icmp eq i32 %148, %149
  %151 = zext i1 %150 to i32
  %152 = call i32 (i32, i8*, ...) @ok(i32 %151, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0), i8** %7, align 8
  %153 = load i64, i64* %1, align 8
  %154 = load i8*, i8** %7, align 8
  %155 = call i32 @do_query(i64 %153, i8* %154, i64* %2)
  store i32 %155, i32* %8, align 4
  %156 = load i32, i32* %8, align 4
  %157 = load i32, i32* @ERROR_SUCCESS, align 4
  %158 = icmp eq i32 %156, %157
  %159 = zext i1 %158 to i32
  %160 = load i32, i32* %8, align 4
  %161 = call i32 (i32, i8*, ...) @ok(i32 %159, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0), i32 %160)
  %162 = load i32, i32* @MAX_PATH, align 4
  store i32 %162, i32* %6, align 4
  %163 = load i64, i64* %2, align 8
  %164 = call i32 @MsiRecordGetStringA(i64 %163, i32 1, i8* %12, i32* %6)
  store i32 %164, i32* %8, align 4
  %165 = load i32, i32* %8, align 4
  %166 = load i32, i32* @ERROR_SUCCESS, align 4
  %167 = icmp eq i32 %165, %166
  %168 = zext i1 %167 to i32
  %169 = load i32, i32* %8, align 4
  %170 = call i32 (i32, i8*, ...) @ok(i32 %168, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0), i32 %169)
  %171 = call i32 @lstrcmpA(i8* %12, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0))
  %172 = icmp ne i32 %171, 0
  %173 = xor i1 %172, true
  %174 = zext i1 %173 to i32
  %175 = call i32 (i32, i8*, ...) @ok(i32 %174, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.16, i64 0, i64 0), i8* %12)
  %176 = load i32, i32* @MAX_PATH, align 4
  store i32 %176, i32* %6, align 4
  %177 = load i32, i32* @MAX_PATH, align 4
  %178 = call i32 @memset(i8* %15, i32 0, i32 %177)
  %179 = load i64, i64* %2, align 8
  %180 = call i32 @MsiRecordReadStream(i64 %179, i32 2, i8* %15, i32* %6)
  store i32 %180, i32* %8, align 4
  %181 = load i32, i32* %8, align 4
  %182 = load i32, i32* @ERROR_SUCCESS, align 4
  %183 = icmp eq i32 %181, %182
  %184 = zext i1 %183 to i32
  %185 = load i32, i32* %8, align 4
  %186 = call i32 (i32, i8*, ...) @ok(i32 %184, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i64 0, i64 0), i32 %185)
  %187 = call i32 @lstrcmpA(i8* %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0))
  %188 = icmp ne i32 %187, 0
  %189 = xor i1 %188, true
  %190 = zext i1 %189 to i32
  %191 = call i32 (i32, i8*, ...) @ok(i32 %190, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.19, i64 0, i64 0), i8* %15)
  %192 = load i64, i64* %2, align 8
  %193 = call i32 @MsiCloseHandle(i64 %192)
  store i32 %193, i32* %8, align 4
  %194 = load i32, i32* %8, align 4
  %195 = load i32, i32* @ERROR_SUCCESS, align 4
  %196 = icmp eq i32 %194, %195
  %197 = zext i1 %196 to i32
  %198 = call i32 (i32, i8*, ...) @ok(i32 %197, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i64 0, i64 0), i8** %7, align 8
  %199 = load i64, i64* %1, align 8
  %200 = load i8*, i8** %7, align 8
  %201 = call i32 @do_query(i64 %199, i8* %200, i64* %2)
  store i32 %201, i32* %8, align 4
  %202 = load i32, i32* %8, align 4
  %203 = load i32, i32* @ERROR_SUCCESS, align 4
  %204 = icmp eq i32 %202, %203
  %205 = zext i1 %204 to i32
  %206 = load i32, i32* %8, align 4
  %207 = call i32 (i32, i8*, ...) @ok(i32 %205, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0), i32 %206)
  %208 = load i32, i32* @MAX_PATH, align 4
  store i32 %208, i32* %6, align 4
  %209 = load i64, i64* %2, align 8
  %210 = call i32 @MsiRecordGetStringA(i64 %209, i32 1, i8* %12, i32* %6)
  store i32 %210, i32* %8, align 4
  %211 = load i32, i32* %8, align 4
  %212 = load i32, i32* @ERROR_SUCCESS, align 4
  %213 = icmp eq i32 %211, %212
  %214 = zext i1 %213 to i32
  %215 = load i32, i32* %8, align 4
  %216 = call i32 (i32, i8*, ...) @ok(i32 %214, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0), i32 %215)
  %217 = call i32 @lstrcmpA(i8* %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0))
  %218 = icmp ne i32 %217, 0
  %219 = xor i1 %218, true
  %220 = zext i1 %219 to i32
  %221 = call i32 (i32, i8*, ...) @ok(i32 %220, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.22, i64 0, i64 0), i8* %12)
  %222 = load i32, i32* @MAX_PATH, align 4
  store i32 %222, i32* %6, align 4
  %223 = load i32, i32* @MAX_PATH, align 4
  %224 = call i32 @memset(i8* %15, i32 0, i32 %223)
  %225 = load i64, i64* %2, align 8
  %226 = call i32 @MsiRecordReadStream(i64 %225, i32 3, i8* %15, i32* %6)
  store i32 %226, i32* %8, align 4
  %227 = load i32, i32* %8, align 4
  %228 = load i32, i32* @ERROR_SUCCESS, align 4
  %229 = icmp eq i32 %227, %228
  %230 = zext i1 %229 to i32
  %231 = load i32, i32* %8, align 4
  %232 = call i32 (i32, i8*, ...) @ok(i32 %230, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i64 0, i64 0), i32 %231)
  %233 = call i32 @lstrcmpA(i8* %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0))
  %234 = icmp ne i32 %233, 0
  %235 = xor i1 %234, true
  %236 = zext i1 %235 to i32
  %237 = call i32 (i32, i8*, ...) @ok(i32 %236, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.19, i64 0, i64 0), i8* %15)
  %238 = load i64, i64* %2, align 8
  %239 = call i32 @MsiCloseHandle(i64 %238)
  store i32 %239, i32* %8, align 4
  %240 = load i32, i32* %8, align 4
  %241 = load i32, i32* @ERROR_SUCCESS, align 4
  %242 = icmp eq i32 %240, %241
  %243 = zext i1 %242 to i32
  %244 = call i32 (i32, i8*, ...) @ok(i32 %243, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  %245 = load i64, i64* %1, align 8
  %246 = call i32 @MsiCloseHandle(i64 %245)
  store i32 %246, i32* %8, align 4
  %247 = load i32, i32* %8, align 4
  %248 = load i32, i32* @ERROR_SUCCESS, align 4
  %249 = icmp eq i32 %247, %248
  %250 = zext i1 %249 to i32
  %251 = call i32 (i32, i8*, ...) @ok(i32 %250, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0))
  %252 = load i8*, i8** @msifile, align 8
  %253 = call i32 @DeleteFileA(i8* %252)
  %254 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %254)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @MsiOpenDatabaseW(i32, i32, i64*) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @run_query(i64, i64, i8*) #2

declare dso_local i32 @create_file(i8*) #2

declare dso_local i64 @MsiCreateRecord(i32) #2

declare dso_local i32 @MsiRecordSetStreamA(i64, i32, i8*) #2

declare dso_local i32 @DeleteFileA(i8*) #2

declare dso_local i32 @MsiCloseHandle(i64) #2

declare dso_local i32 @MsiDatabaseCommit(i64) #2

declare dso_local i32 @do_query(i64, i8*, i64*) #2

declare dso_local i32 @MsiRecordGetStringA(i64, i32, i8*, i32*) #2

declare dso_local i32 @lstrcmpA(i8*, i8*) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @MsiRecordReadStream(i64, i32, i8*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
