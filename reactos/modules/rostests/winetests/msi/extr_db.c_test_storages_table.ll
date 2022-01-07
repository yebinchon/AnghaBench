; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_db.c_test_storages_table.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_db.c_test_storages_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"failed to create db\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed to commit database\0A\00", align 1
@msifileW = common dso_local global i32 0, align 4
@MSIDBOPEN_TRANSACT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Failed to open database\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"SELECT * FROM `_Storages`\00", align 1
@MSICOLINFO_TYPES = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"failed to get column info hrecord\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"s62\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"wrong hrecord type\0A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"V0\00", align 1
@MSICOLINFO_NAMES = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"Name\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"Data\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"storage.bin\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"stgname\00", align 1
@.str.12 = private unnamed_addr constant [46 x i8] c"Failed to add stream data to the hrecord: %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [55 x i8] c"INSERT INTO `_Storages` (`Name`, `Data`) VALUES (?, ?)\00", align 1
@.str.14 = private unnamed_addr constant [35 x i8] c"Failed to open database hview: %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"Failed to execute hview: %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [39 x i8] c"SELECT `Name`, `Data` FROM `_Storages`\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"Failed to fetch hrecord: %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"Failed to get string: %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [30 x i8] c"Expected \22stgname\22, got \22%s\22\0A\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"apple\00", align 1
@ERROR_INVALID_DATA = common dso_local global i8* null, align 8
@.str.21 = private unnamed_addr constant [37 x i8] c"Expected ERROR_INVALID_DATA, got %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [38 x i8] c"Expected buf to be unchanged, got %s\0A\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"Expected 0, got %d\0A\00", align 1
@ERROR_NO_MORE_ITEMS = common dso_local global i8* null, align 8
@.str.24 = private unnamed_addr constant [38 x i8] c"Expected ERROR_NO_MORE_ITEMS, got %d\0A\00", align 1
@CP_ACP = common dso_local global i32 0, align 4
@msifile = common dso_local global i8* null, align 8
@STGM_DIRECT = common dso_local global i32 0, align 4
@STGM_READ = common dso_local global i32 0, align 4
@STGM_SHARE_DENY_WRITE = common dso_local global i32 0, align 4
@S_OK = common dso_local global i8* null, align 8
@.str.25 = private unnamed_addr constant [25 x i8] c"Expected S_OK, got %08x\0A\00", align 1
@.str.26 = private unnamed_addr constant [27 x i8] c"Expected non-NULL storage\0A\00", align 1
@STGM_SHARE_EXCLUSIVE = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [26 x i8] c"Expected non-NULL stream\0A\00", align 1
@.str.28 = private unnamed_addr constant [23 x i8] c"Expected S_OK, got %d\0A\00", align 1
@.str.29 = private unnamed_addr constant [20 x i8] c"Expected 8, got %d\0A\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"stgdata\00", align 1
@.str.31 = private unnamed_addr constant [30 x i8] c"Expected \22stgdata\22, got \22%s\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_storages_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_storages_table() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = load i32, i32* @MAX_PATH, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %7, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %8, align 8
  %19 = load i32, i32* @MAX_PATH, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %9, align 8
  %22 = load i32, i32* @MAX_PATH, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %10, align 8
  %25 = call i32 (...) @create_db()
  store i32 %25, i32* %1, align 4
  %26 = load i32, i32* %1, align 4
  %27 = call i32 (i32, i8*, ...) @ok(i32 %26, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* %1, align 4
  %29 = call i8* @MsiDatabaseCommit(i32 %28)
  store i8* %29, i8** %14, align 8
  %30 = load i8*, i8** %14, align 8
  %31 = load i8*, i8** @ERROR_SUCCESS, align 8
  %32 = icmp eq i8* %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 (i32, i8*, ...) @ok(i32 %33, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* %1, align 4
  %36 = call i32 @MsiCloseHandle(i32 %35)
  %37 = load i32, i32* @msifileW, align 4
  %38 = load i32, i32* @MSIDBOPEN_TRANSACT, align 4
  %39 = call i8* @MsiOpenDatabaseW(i32 %37, i32 %38, i32* %1)
  store i8* %39, i8** %14, align 8
  %40 = load i8*, i8** %14, align 8
  %41 = load i8*, i8** @ERROR_SUCCESS, align 8
  %42 = icmp eq i8* %40, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 (i32, i8*, ...) @ok(i32 %43, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %45 = load i32, i32* %1, align 4
  %46 = load i32, i32* @MSICOLINFO_TYPES, align 4
  %47 = call i32 @get_column_info(i32 %45, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %46)
  store i32 %47, i32* %3, align 4
  %48 = load i32, i32* %3, align 4
  %49 = call i32 (i32, i8*, ...) @ok(i32 %48, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @check_record(i32 %50, i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %52 = call i32 (i32, i8*, ...) @ok(i32 %51, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @check_record(i32 %53, i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %55 = call i32 (i32, i8*, ...) @ok(i32 %54, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %56 = load i32, i32* %3, align 4
  %57 = call i32 @MsiCloseHandle(i32 %56)
  %58 = load i32, i32* %1, align 4
  %59 = load i32, i32* @MSICOLINFO_NAMES, align 4
  %60 = call i32 @get_column_info(i32 %58, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %59)
  store i32 %60, i32* %3, align 4
  %61 = load i32, i32* %3, align 4
  %62 = call i32 (i32, i8*, ...) @ok(i32 %61, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %63 = load i32, i32* %3, align 4
  %64 = call i32 @check_record(i32 %63, i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %65 = call i32 (i32, i8*, ...) @ok(i32 %64, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %66 = load i32, i32* %3, align 4
  %67 = call i32 @check_record(i32 %66, i32 2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %68 = call i32 (i32, i8*, ...) @ok(i32 %67, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %69 = load i32, i32* %3, align 4
  %70 = call i32 @MsiCloseHandle(i32 %69)
  %71 = call i32 @create_storage(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  %72 = call i32 @MsiCreateRecord(i32 2)
  store i32 %72, i32* %3, align 4
  %73 = load i32, i32* %3, align 4
  %74 = call i32 @MsiRecordSetStringA(i32 %73, i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  %75 = load i32, i32* %3, align 4
  %76 = call i8* @MsiRecordSetStreamA(i32 %75, i32 2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  store i8* %76, i8** %14, align 8
  %77 = load i8*, i8** %14, align 8
  %78 = load i8*, i8** @ERROR_SUCCESS, align 8
  %79 = icmp eq i8* %77, %78
  %80 = zext i1 %79 to i32
  %81 = load i8*, i8** %14, align 8
  %82 = call i32 (i32, i8*, ...) @ok(i32 %80, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.12, i64 0, i64 0), i8* %81)
  %83 = call i32 @DeleteFileA(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  store i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.13, i64 0, i64 0), i8** %11, align 8
  %84 = load i32, i32* %1, align 4
  %85 = load i8*, i8** %11, align 8
  %86 = call i8* @MsiDatabaseOpenViewA(i32 %84, i8* %85, i32* %2)
  store i8* %86, i8** %14, align 8
  %87 = load i8*, i8** %14, align 8
  %88 = load i8*, i8** @ERROR_SUCCESS, align 8
  %89 = icmp eq i8* %87, %88
  %90 = zext i1 %89 to i32
  %91 = load i8*, i8** %14, align 8
  %92 = call i32 (i32, i8*, ...) @ok(i32 %90, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i64 0, i64 0), i8* %91)
  %93 = load i32, i32* %2, align 4
  %94 = load i32, i32* %3, align 4
  %95 = call i8* @MsiViewExecute(i32 %93, i32 %94)
  store i8* %95, i8** %14, align 8
  %96 = load i8*, i8** %14, align 8
  %97 = load i8*, i8** @ERROR_SUCCESS, align 8
  %98 = icmp eq i8* %96, %97
  %99 = zext i1 %98 to i32
  %100 = load i8*, i8** %14, align 8
  %101 = call i32 (i32, i8*, ...) @ok(i32 %99, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i64 0, i64 0), i8* %100)
  %102 = load i32, i32* %3, align 4
  %103 = call i32 @MsiCloseHandle(i32 %102)
  %104 = load i32, i32* %2, align 4
  %105 = call i32 @MsiViewClose(i32 %104)
  %106 = load i32, i32* %2, align 4
  %107 = call i32 @MsiCloseHandle(i32 %106)
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.16, i64 0, i64 0), i8** %11, align 8
  %108 = load i32, i32* %1, align 4
  %109 = load i8*, i8** %11, align 8
  %110 = call i8* @MsiDatabaseOpenViewA(i32 %108, i8* %109, i32* %2)
  store i8* %110, i8** %14, align 8
  %111 = load i8*, i8** %14, align 8
  %112 = load i8*, i8** @ERROR_SUCCESS, align 8
  %113 = icmp eq i8* %111, %112
  %114 = zext i1 %113 to i32
  %115 = load i8*, i8** %14, align 8
  %116 = call i32 (i32, i8*, ...) @ok(i32 %114, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i64 0, i64 0), i8* %115)
  %117 = load i32, i32* %2, align 4
  %118 = call i8* @MsiViewExecute(i32 %117, i32 0)
  store i8* %118, i8** %14, align 8
  %119 = load i8*, i8** %14, align 8
  %120 = load i8*, i8** @ERROR_SUCCESS, align 8
  %121 = icmp eq i8* %119, %120
  %122 = zext i1 %121 to i32
  %123 = load i8*, i8** %14, align 8
  %124 = call i32 (i32, i8*, ...) @ok(i32 %122, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i64 0, i64 0), i8* %123)
  %125 = load i32, i32* %2, align 4
  %126 = call i8* @MsiViewFetch(i32 %125, i32* %3)
  store i8* %126, i8** %14, align 8
  %127 = load i8*, i8** %14, align 8
  %128 = load i8*, i8** @ERROR_SUCCESS, align 8
  %129 = icmp eq i8* %127, %128
  %130 = zext i1 %129 to i32
  %131 = load i8*, i8** %14, align 8
  %132 = call i32 (i32, i8*, ...) @ok(i32 %130, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i64 0, i64 0), i8* %131)
  %133 = load i32, i32* @MAX_PATH, align 4
  store i32 %133, i32* %13, align 4
  %134 = load i32, i32* %3, align 4
  %135 = call i8* @MsiRecordGetStringA(i32 %134, i32 1, i8* %18, i32* %13)
  store i8* %135, i8** %14, align 8
  %136 = load i8*, i8** %14, align 8
  %137 = load i8*, i8** @ERROR_SUCCESS, align 8
  %138 = icmp eq i8* %136, %137
  %139 = zext i1 %138 to i32
  %140 = load i8*, i8** %14, align 8
  %141 = call i32 (i32, i8*, ...) @ok(i32 %139, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.18, i64 0, i64 0), i8* %140)
  %142 = call i32 @lstrcmpA(i8* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  %143 = icmp ne i32 %142, 0
  %144 = xor i1 %143, true
  %145 = zext i1 %144 to i32
  %146 = call i32 (i32, i8*, ...) @ok(i32 %145, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.19, i64 0, i64 0), i8* %18)
  %147 = load i32, i32* @MAX_PATH, align 4
  store i32 %147, i32* %13, align 4
  %148 = call i32 @lstrcpyA(i8* %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0))
  %149 = load i32, i32* %3, align 4
  %150 = call i8* @MsiRecordReadStream(i32 %149, i32 2, i8* %21, i32* %13)
  store i8* %150, i8** %14, align 8
  %151 = load i8*, i8** %14, align 8
  %152 = load i8*, i8** @ERROR_INVALID_DATA, align 8
  %153 = icmp eq i8* %151, %152
  %154 = zext i1 %153 to i32
  %155 = load i8*, i8** %14, align 8
  %156 = call i32 (i32, i8*, ...) @ok(i32 %154, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.21, i64 0, i64 0), i8* %155)
  %157 = call i32 @lstrcmpA(i8* %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0))
  %158 = icmp ne i32 %157, 0
  %159 = xor i1 %158, true
  %160 = zext i1 %159 to i32
  %161 = call i32 (i32, i8*, ...) @ok(i32 %160, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.22, i64 0, i64 0), i8* %21)
  %162 = load i32, i32* %13, align 4
  %163 = icmp eq i32 %162, 0
  %164 = zext i1 %163 to i32
  %165 = load i32, i32* %13, align 4
  %166 = call i32 (i32, i8*, ...) @ok(i32 %164, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i64 0, i64 0), i32 %165)
  %167 = load i32, i32* %3, align 4
  %168 = call i32 @MsiCloseHandle(i32 %167)
  %169 = load i32, i32* %2, align 4
  %170 = call i8* @MsiViewFetch(i32 %169, i32* %3)
  store i8* %170, i8** %14, align 8
  %171 = load i8*, i8** %14, align 8
  %172 = load i8*, i8** @ERROR_NO_MORE_ITEMS, align 8
  %173 = icmp eq i8* %171, %172
  %174 = zext i1 %173 to i32
  %175 = load i8*, i8** %14, align 8
  %176 = call i32 (i32, i8*, ...) @ok(i32 %174, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.24, i64 0, i64 0), i8* %175)
  %177 = load i32, i32* %2, align 4
  %178 = call i32 @MsiViewClose(i32 %177)
  %179 = load i32, i32* %2, align 4
  %180 = call i32 @MsiCloseHandle(i32 %179)
  %181 = load i32, i32* %1, align 4
  %182 = call i8* @MsiDatabaseCommit(i32 %181)
  %183 = load i32, i32* %1, align 4
  %184 = call i32 @MsiCloseHandle(i32 %183)
  %185 = load i32, i32* @CP_ACP, align 4
  %186 = load i8*, i8** @msifile, align 8
  %187 = load i32, i32* @MAX_PATH, align 4
  %188 = call i32 @MultiByteToWideChar(i32 %185, i32 0, i8* %186, i32 -1, i32* %24, i32 %187)
  %189 = load i32, i32* @STGM_DIRECT, align 4
  %190 = load i32, i32* @STGM_READ, align 4
  %191 = or i32 %189, %190
  %192 = load i32, i32* @STGM_SHARE_DENY_WRITE, align 4
  %193 = or i32 %191, %192
  %194 = call i8* @StgOpenStorage(i32* %24, i32* null, i32 %193, i32* null, i32 0, i32** %4)
  store i8* %194, i8** %12, align 8
  %195 = load i8*, i8** %12, align 8
  %196 = load i8*, i8** @S_OK, align 8
  %197 = icmp eq i8* %195, %196
  %198 = zext i1 %197 to i32
  %199 = load i8*, i8** %12, align 8
  %200 = call i32 (i32, i8*, ...) @ok(i32 %198, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.25, i64 0, i64 0), i8* %199)
  %201 = load i32*, i32** %4, align 8
  %202 = icmp ne i32* %201, null
  %203 = zext i1 %202 to i32
  %204 = call i32 (i32, i8*, ...) @ok(i32 %203, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.26, i64 0, i64 0))
  %205 = load i32, i32* @CP_ACP, align 4
  %206 = load i32, i32* @MAX_PATH, align 4
  %207 = call i32 @MultiByteToWideChar(i32 %205, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i32 -1, i32* %24, i32 %206)
  %208 = load i32*, i32** %4, align 8
  %209 = load i32, i32* @STGM_READ, align 4
  %210 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %211 = or i32 %209, %210
  %212 = call i8* @IStorage_OpenStorage(i32* %208, i32* %24, i32* null, i32 %211, i32* null, i32 0, i32** %5)
  store i8* %212, i8** %12, align 8
  %213 = load i8*, i8** %12, align 8
  %214 = load i8*, i8** @S_OK, align 8
  %215 = icmp eq i8* %213, %214
  %216 = zext i1 %215 to i32
  %217 = load i8*, i8** %12, align 8
  %218 = call i32 (i32, i8*, ...) @ok(i32 %216, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.25, i64 0, i64 0), i8* %217)
  %219 = load i32*, i32** %5, align 8
  %220 = icmp ne i32* %219, null
  %221 = zext i1 %220 to i32
  %222 = call i32 (i32, i8*, ...) @ok(i32 %221, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.26, i64 0, i64 0))
  %223 = load i32, i32* @CP_ACP, align 4
  %224 = load i32, i32* @MAX_PATH, align 4
  %225 = call i32 @MultiByteToWideChar(i32 %223, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32 -1, i32* %24, i32 %224)
  %226 = load i32*, i32** %5, align 8
  %227 = load i32, i32* @STGM_READ, align 4
  %228 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %229 = or i32 %227, %228
  %230 = call i8* @IStorage_OpenStream(i32* %226, i32* %24, i32* null, i32 %229, i32 0, i32** %6)
  store i8* %230, i8** %12, align 8
  %231 = load i8*, i8** %12, align 8
  %232 = load i8*, i8** @S_OK, align 8
  %233 = icmp eq i8* %231, %232
  %234 = zext i1 %233 to i32
  %235 = load i8*, i8** %12, align 8
  %236 = call i32 (i32, i8*, ...) @ok(i32 %234, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.25, i64 0, i64 0), i8* %235)
  %237 = load i32*, i32** %6, align 8
  %238 = icmp ne i32* %237, null
  %239 = zext i1 %238 to i32
  %240 = call i32 (i32, i8*, ...) @ok(i32 %239, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.27, i64 0, i64 0))
  %241 = load i32*, i32** %6, align 8
  %242 = load i32, i32* @MAX_PATH, align 4
  %243 = call i8* @IStream_Read(i32* %241, i8* %21, i32 %242, i32* %13)
  store i8* %243, i8** %12, align 8
  %244 = load i8*, i8** %12, align 8
  %245 = load i8*, i8** @S_OK, align 8
  %246 = icmp eq i8* %244, %245
  %247 = zext i1 %246 to i32
  %248 = load i8*, i8** %12, align 8
  %249 = call i32 (i32, i8*, ...) @ok(i32 %247, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.28, i64 0, i64 0), i8* %248)
  %250 = load i32, i32* %13, align 4
  %251 = icmp eq i32 %250, 8
  %252 = zext i1 %251 to i32
  %253 = load i32, i32* %13, align 4
  %254 = call i32 (i32, i8*, ...) @ok(i32 %252, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.29, i64 0, i64 0), i32 %253)
  %255 = call i32 @lstrcmpA(i8* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i64 0, i64 0))
  %256 = icmp ne i32 %255, 0
  %257 = xor i1 %256, true
  %258 = zext i1 %257 to i32
  %259 = call i32 (i32, i8*, ...) @ok(i32 %258, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.31, i64 0, i64 0), i8* %21)
  %260 = load i32*, i32** %6, align 8
  %261 = call i32 @IStream_Release(i32* %260)
  %262 = load i32*, i32** %5, align 8
  %263 = call i32 @IStorage_Release(i32* %262)
  %264 = load i32*, i32** %4, align 8
  %265 = call i32 @IStorage_Release(i32* %264)
  %266 = load i8*, i8** @msifile, align 8
  %267 = call i32 @DeleteFileA(i8* %266)
  %268 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %268)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @create_db(...) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i8* @MsiDatabaseCommit(i32) #2

declare dso_local i32 @MsiCloseHandle(i32) #2

declare dso_local i8* @MsiOpenDatabaseW(i32, i32, i32*) #2

declare dso_local i32 @get_column_info(i32, i8*, i32) #2

declare dso_local i32 @check_record(i32, i32, i8*) #2

declare dso_local i32 @create_storage(i8*) #2

declare dso_local i32 @MsiCreateRecord(i32) #2

declare dso_local i32 @MsiRecordSetStringA(i32, i32, i8*) #2

declare dso_local i8* @MsiRecordSetStreamA(i32, i32, i8*) #2

declare dso_local i32 @DeleteFileA(i8*) #2

declare dso_local i8* @MsiDatabaseOpenViewA(i32, i8*, i32*) #2

declare dso_local i8* @MsiViewExecute(i32, i32) #2

declare dso_local i32 @MsiViewClose(i32) #2

declare dso_local i8* @MsiViewFetch(i32, i32*) #2

declare dso_local i8* @MsiRecordGetStringA(i32, i32, i8*, i32*) #2

declare dso_local i32 @lstrcmpA(i8*, i8*) #2

declare dso_local i32 @lstrcpyA(i8*, i8*) #2

declare dso_local i8* @MsiRecordReadStream(i32, i32, i8*, i32*) #2

declare dso_local i32 @MultiByteToWideChar(i32, i32, i8*, i32, i32*, i32) #2

declare dso_local i8* @StgOpenStorage(i32*, i32*, i32, i32*, i32, i32**) #2

declare dso_local i8* @IStorage_OpenStorage(i32*, i32*, i32*, i32, i32*, i32, i32**) #2

declare dso_local i8* @IStorage_OpenStream(i32*, i32*, i32*, i32, i32, i32**) #2

declare dso_local i8* @IStream_Read(i32*, i8*, i32, i32*) #2

declare dso_local i32 @IStream_Release(i32*) #2

declare dso_local i32 @IStorage_Release(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
