; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_db.c_test_select_markers.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_db.c_test_select_markers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"failed to create db\0A\00", align 1
@.str.1 = private unnamed_addr constant [103 x i8] c"CREATE TABLE `Table` (`One` CHAR(72), `Two` CHAR(72), `Three` SHORT PRIMARY KEY `One`, `Two`, `Three`)\00", align 1
@S_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"cannot create table: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [75 x i8] c"INSERT INTO `Table` ( `One`, `Two`, `Three` ) VALUES ( 'apple', 'one', 1 )\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"cannot add file to the Media table: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [75 x i8] c"INSERT INTO `Table` ( `One`, `Two`, `Three` ) VALUES ( 'apple', 'two', 1 )\00", align 1
@.str.6 = private unnamed_addr constant [75 x i8] c"INSERT INTO `Table` ( `One`, `Two`, `Three` ) VALUES ( 'apple', 'two', 2 )\00", align 1
@.str.7 = private unnamed_addr constant [78 x i8] c"INSERT INTO `Table` ( `One`, `Two`, `Three` ) VALUES ( 'banana', 'three', 3 )\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"apple\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"two\00", align 1
@.str.10 = private unnamed_addr constant [65 x i8] c"SELECT * FROM `Table` WHERE `One`=? AND `Two`=? ORDER BY `Three`\00", align 1
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [32 x i8] c"Expected ERROR_SUCCESS, got %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"Expected apple, got %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"Expected two, got %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"Expected 1, got %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"Expected 2, got %d\0A\00", align 1
@ERROR_NO_MORE_ITEMS = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [38 x i8] c"Expected ERROR_NO_MORE_ITEMS, got %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"one\00", align 1
@.str.18 = private unnamed_addr constant [68 x i8] c"SELECT * FROM `Table` WHERE `Two`<>? AND `Three`>? ORDER BY `Three`\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"banana\00", align 1
@.str.20 = private unnamed_addr constant [25 x i8] c"Expected banana, got %s\0A\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"three\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"Expected three, got %s\0A\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"Expected 3, got %d\0A\00", align 1
@msifile = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_select_markers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_select_markers() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  %10 = load i32, i32* @MAX_PATH, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %8, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %9, align 8
  %14 = call i32 (...) @create_db()
  store i32 %14, i32* %1, align 4
  %15 = load i32, i32* %1, align 4
  %16 = call i32 (i32, i8*, ...) @ok(i32 %15, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* %1, align 4
  %18 = call i32 @run_query(i32 %17, i32 0, i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.1, i64 0, i64 0))
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @S_OK, align 4
  %21 = icmp eq i32 %19, %20
  %22 = zext i1 %21 to i32
  %23 = load i32, i32* %6, align 4
  %24 = call i32 (i32, i8*, ...) @ok(i32 %22, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %1, align 4
  %26 = call i32 @run_query(i32 %25, i32 0, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.3, i64 0, i64 0))
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @S_OK, align 4
  %29 = icmp eq i32 %27, %28
  %30 = zext i1 %29 to i32
  %31 = load i32, i32* %6, align 4
  %32 = call i32 (i32, i8*, ...) @ok(i32 %30, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* %1, align 4
  %34 = call i32 @run_query(i32 %33, i32 0, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.5, i64 0, i64 0))
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @S_OK, align 4
  %37 = icmp eq i32 %35, %36
  %38 = zext i1 %37 to i32
  %39 = load i32, i32* %6, align 4
  %40 = call i32 (i32, i8*, ...) @ok(i32 %38, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* %1, align 4
  %42 = call i32 @run_query(i32 %41, i32 0, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.6, i64 0, i64 0))
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @S_OK, align 4
  %45 = icmp eq i32 %43, %44
  %46 = zext i1 %45 to i32
  %47 = load i32, i32* %6, align 4
  %48 = call i32 (i32, i8*, ...) @ok(i32 %46, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* %1, align 4
  %50 = call i32 @run_query(i32 %49, i32 0, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.7, i64 0, i64 0))
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @S_OK, align 4
  %53 = icmp eq i32 %51, %52
  %54 = zext i1 %53 to i32
  %55 = load i32, i32* %6, align 4
  %56 = call i32 (i32, i8*, ...) @ok(i32 %54, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %55)
  %57 = call i32 @MsiCreateRecord(i32 2)
  store i32 %57, i32* %2, align 4
  %58 = load i32, i32* %2, align 4
  %59 = call i32 @MsiRecordSetStringA(i32 %58, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %60 = load i32, i32* %2, align 4
  %61 = call i32 @MsiRecordSetStringA(i32 %60, i32 2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  store i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.10, i64 0, i64 0), i8** %5, align 8
  %62 = load i32, i32* %1, align 4
  %63 = load i8*, i8** %5, align 8
  %64 = call i32 @MsiDatabaseOpenViewA(i32 %62, i8* %63, i32* %3)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @ERROR_SUCCESS, align 4
  %67 = icmp eq i32 %65, %66
  %68 = zext i1 %67 to i32
  %69 = load i32, i32* %6, align 4
  %70 = call i32 (i32, i8*, ...) @ok(i32 %68, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* %3, align 4
  %72 = load i32, i32* %2, align 4
  %73 = call i32 @MsiViewExecute(i32 %71, i32 %72)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @ERROR_SUCCESS, align 4
  %76 = icmp eq i32 %74, %75
  %77 = zext i1 %76 to i32
  %78 = load i32, i32* %6, align 4
  %79 = call i32 (i32, i8*, ...) @ok(i32 %77, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* %3, align 4
  %81 = call i32 @MsiViewFetch(i32 %80, i32* %4)
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* @ERROR_SUCCESS, align 4
  %84 = icmp eq i32 %82, %83
  %85 = zext i1 %84 to i32
  %86 = load i32, i32* %6, align 4
  %87 = call i32 (i32, i8*, ...) @ok(i32 %85, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* @MAX_PATH, align 4
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %4, align 4
  %90 = call i32 @MsiRecordGetStringA(i32 %89, i32 1, i32* %13, i32* %7)
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* @ERROR_SUCCESS, align 4
  %93 = icmp eq i32 %91, %92
  %94 = zext i1 %93 to i32
  %95 = load i32, i32* %6, align 4
  %96 = call i32 (i32, i8*, ...) @ok(i32 %94, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0), i32 %95)
  %97 = call i32 @lstrcmpA(i32* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %98 = icmp ne i32 %97, 0
  %99 = xor i1 %98, true
  %100 = zext i1 %99 to i32
  %101 = call i32 (i32, i8*, ...) @ok(i32 %100, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0), i32* %13)
  %102 = load i32, i32* @MAX_PATH, align 4
  store i32 %102, i32* %7, align 4
  %103 = load i32, i32* %4, align 4
  %104 = call i32 @MsiRecordGetStringA(i32 %103, i32 2, i32* %13, i32* %7)
  store i32 %104, i32* %6, align 4
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* @ERROR_SUCCESS, align 4
  %107 = icmp eq i32 %105, %106
  %108 = zext i1 %107 to i32
  %109 = load i32, i32* %6, align 4
  %110 = call i32 (i32, i8*, ...) @ok(i32 %108, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0), i32 %109)
  %111 = call i32 @lstrcmpA(i32* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %112 = icmp ne i32 %111, 0
  %113 = xor i1 %112, true
  %114 = zext i1 %113 to i32
  %115 = call i32 (i32, i8*, ...) @ok(i32 %114, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0), i32* %13)
  %116 = load i32, i32* %4, align 4
  %117 = call i32 @MsiRecordGetInteger(i32 %116, i32 3)
  store i32 %117, i32* %6, align 4
  %118 = load i32, i32* %6, align 4
  %119 = icmp eq i32 %118, 1
  %120 = zext i1 %119 to i32
  %121 = load i32, i32* %6, align 4
  %122 = call i32 (i32, i8*, ...) @ok(i32 %120, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 %121)
  %123 = load i32, i32* %4, align 4
  %124 = call i32 @MsiCloseHandle(i32 %123)
  %125 = load i32, i32* %3, align 4
  %126 = call i32 @MsiViewFetch(i32 %125, i32* %4)
  store i32 %126, i32* %6, align 4
  %127 = load i32, i32* %6, align 4
  %128 = load i32, i32* @ERROR_SUCCESS, align 4
  %129 = icmp eq i32 %127, %128
  %130 = zext i1 %129 to i32
  %131 = load i32, i32* %6, align 4
  %132 = call i32 (i32, i8*, ...) @ok(i32 %130, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0), i32 %131)
  %133 = load i32, i32* @MAX_PATH, align 4
  store i32 %133, i32* %7, align 4
  %134 = load i32, i32* %4, align 4
  %135 = call i32 @MsiRecordGetStringA(i32 %134, i32 1, i32* %13, i32* %7)
  store i32 %135, i32* %6, align 4
  %136 = load i32, i32* %6, align 4
  %137 = load i32, i32* @ERROR_SUCCESS, align 4
  %138 = icmp eq i32 %136, %137
  %139 = zext i1 %138 to i32
  %140 = load i32, i32* %6, align 4
  %141 = call i32 (i32, i8*, ...) @ok(i32 %139, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0), i32 %140)
  %142 = call i32 @lstrcmpA(i32* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %143 = icmp ne i32 %142, 0
  %144 = xor i1 %143, true
  %145 = zext i1 %144 to i32
  %146 = call i32 (i32, i8*, ...) @ok(i32 %145, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0), i32* %13)
  %147 = load i32, i32* @MAX_PATH, align 4
  store i32 %147, i32* %7, align 4
  %148 = load i32, i32* %4, align 4
  %149 = call i32 @MsiRecordGetStringA(i32 %148, i32 2, i32* %13, i32* %7)
  store i32 %149, i32* %6, align 4
  %150 = load i32, i32* %6, align 4
  %151 = load i32, i32* @ERROR_SUCCESS, align 4
  %152 = icmp eq i32 %150, %151
  %153 = zext i1 %152 to i32
  %154 = load i32, i32* %6, align 4
  %155 = call i32 (i32, i8*, ...) @ok(i32 %153, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0), i32 %154)
  %156 = call i32 @lstrcmpA(i32* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %157 = icmp ne i32 %156, 0
  %158 = xor i1 %157, true
  %159 = zext i1 %158 to i32
  %160 = call i32 (i32, i8*, ...) @ok(i32 %159, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0), i32* %13)
  %161 = load i32, i32* %4, align 4
  %162 = call i32 @MsiRecordGetInteger(i32 %161, i32 3)
  store i32 %162, i32* %6, align 4
  %163 = load i32, i32* %6, align 4
  %164 = icmp eq i32 %163, 2
  %165 = zext i1 %164 to i32
  %166 = load i32, i32* %6, align 4
  %167 = call i32 (i32, i8*, ...) @ok(i32 %165, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0), i32 %166)
  %168 = load i32, i32* %4, align 4
  %169 = call i32 @MsiCloseHandle(i32 %168)
  %170 = load i32, i32* %3, align 4
  %171 = call i32 @MsiViewFetch(i32 %170, i32* %4)
  store i32 %171, i32* %6, align 4
  %172 = load i32, i32* %6, align 4
  %173 = load i32, i32* @ERROR_NO_MORE_ITEMS, align 4
  %174 = icmp eq i32 %172, %173
  %175 = zext i1 %174 to i32
  %176 = load i32, i32* %6, align 4
  %177 = call i32 (i32, i8*, ...) @ok(i32 %175, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.16, i64 0, i64 0), i32 %176)
  %178 = load i32, i32* %2, align 4
  %179 = call i32 @MsiCloseHandle(i32 %178)
  %180 = load i32, i32* %3, align 4
  %181 = call i32 @MsiViewClose(i32 %180)
  %182 = load i32, i32* %3, align 4
  %183 = call i32 @MsiCloseHandle(i32 %182)
  %184 = call i32 @MsiCreateRecord(i32 2)
  store i32 %184, i32* %2, align 4
  %185 = load i32, i32* %2, align 4
  %186 = call i32 @MsiRecordSetStringA(i32 %185, i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0))
  %187 = load i32, i32* %2, align 4
  %188 = call i32 @MsiRecordSetInteger(i32 %187, i32 2, i32 1)
  store i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.18, i64 0, i64 0), i8** %5, align 8
  %189 = load i32, i32* %1, align 4
  %190 = load i8*, i8** %5, align 8
  %191 = call i32 @MsiDatabaseOpenViewA(i32 %189, i8* %190, i32* %3)
  store i32 %191, i32* %6, align 4
  %192 = load i32, i32* %6, align 4
  %193 = load i32, i32* @ERROR_SUCCESS, align 4
  %194 = icmp eq i32 %192, %193
  %195 = zext i1 %194 to i32
  %196 = load i32, i32* %6, align 4
  %197 = call i32 (i32, i8*, ...) @ok(i32 %195, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0), i32 %196)
  %198 = load i32, i32* %3, align 4
  %199 = load i32, i32* %2, align 4
  %200 = call i32 @MsiViewExecute(i32 %198, i32 %199)
  store i32 %200, i32* %6, align 4
  %201 = load i32, i32* %6, align 4
  %202 = load i32, i32* @ERROR_SUCCESS, align 4
  %203 = icmp eq i32 %201, %202
  %204 = zext i1 %203 to i32
  %205 = load i32, i32* %6, align 4
  %206 = call i32 (i32, i8*, ...) @ok(i32 %204, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0), i32 %205)
  %207 = load i32, i32* %3, align 4
  %208 = call i32 @MsiViewFetch(i32 %207, i32* %4)
  store i32 %208, i32* %6, align 4
  %209 = load i32, i32* %6, align 4
  %210 = load i32, i32* @ERROR_SUCCESS, align 4
  %211 = icmp eq i32 %209, %210
  %212 = zext i1 %211 to i32
  %213 = load i32, i32* %6, align 4
  %214 = call i32 (i32, i8*, ...) @ok(i32 %212, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0), i32 %213)
  %215 = load i32, i32* @MAX_PATH, align 4
  store i32 %215, i32* %7, align 4
  %216 = load i32, i32* %4, align 4
  %217 = call i32 @MsiRecordGetStringA(i32 %216, i32 1, i32* %13, i32* %7)
  store i32 %217, i32* %6, align 4
  %218 = load i32, i32* %6, align 4
  %219 = load i32, i32* @ERROR_SUCCESS, align 4
  %220 = icmp eq i32 %218, %219
  %221 = zext i1 %220 to i32
  %222 = load i32, i32* %6, align 4
  %223 = call i32 (i32, i8*, ...) @ok(i32 %221, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0), i32 %222)
  %224 = call i32 @lstrcmpA(i32* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %225 = icmp ne i32 %224, 0
  %226 = xor i1 %225, true
  %227 = zext i1 %226 to i32
  %228 = call i32 (i32, i8*, ...) @ok(i32 %227, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0), i32* %13)
  %229 = load i32, i32* @MAX_PATH, align 4
  store i32 %229, i32* %7, align 4
  %230 = load i32, i32* %4, align 4
  %231 = call i32 @MsiRecordGetStringA(i32 %230, i32 2, i32* %13, i32* %7)
  store i32 %231, i32* %6, align 4
  %232 = load i32, i32* %6, align 4
  %233 = load i32, i32* @ERROR_SUCCESS, align 4
  %234 = icmp eq i32 %232, %233
  %235 = zext i1 %234 to i32
  %236 = load i32, i32* %6, align 4
  %237 = call i32 (i32, i8*, ...) @ok(i32 %235, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0), i32 %236)
  %238 = call i32 @lstrcmpA(i32* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %239 = icmp ne i32 %238, 0
  %240 = xor i1 %239, true
  %241 = zext i1 %240 to i32
  %242 = call i32 (i32, i8*, ...) @ok(i32 %241, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0), i32* %13)
  %243 = load i32, i32* %4, align 4
  %244 = call i32 @MsiRecordGetInteger(i32 %243, i32 3)
  store i32 %244, i32* %6, align 4
  %245 = load i32, i32* %6, align 4
  %246 = icmp eq i32 %245, 2
  %247 = zext i1 %246 to i32
  %248 = load i32, i32* %6, align 4
  %249 = call i32 (i32, i8*, ...) @ok(i32 %247, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0), i32 %248)
  %250 = load i32, i32* %4, align 4
  %251 = call i32 @MsiCloseHandle(i32 %250)
  %252 = load i32, i32* %3, align 4
  %253 = call i32 @MsiViewFetch(i32 %252, i32* %4)
  store i32 %253, i32* %6, align 4
  %254 = load i32, i32* %6, align 4
  %255 = load i32, i32* @ERROR_SUCCESS, align 4
  %256 = icmp eq i32 %254, %255
  %257 = zext i1 %256 to i32
  %258 = load i32, i32* %6, align 4
  %259 = call i32 (i32, i8*, ...) @ok(i32 %257, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0), i32 %258)
  %260 = load i32, i32* @MAX_PATH, align 4
  store i32 %260, i32* %7, align 4
  %261 = load i32, i32* %4, align 4
  %262 = call i32 @MsiRecordGetStringA(i32 %261, i32 1, i32* %13, i32* %7)
  store i32 %262, i32* %6, align 4
  %263 = load i32, i32* %6, align 4
  %264 = load i32, i32* @ERROR_SUCCESS, align 4
  %265 = icmp eq i32 %263, %264
  %266 = zext i1 %265 to i32
  %267 = load i32, i32* %6, align 4
  %268 = call i32 (i32, i8*, ...) @ok(i32 %266, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0), i32 %267)
  %269 = call i32 @lstrcmpA(i32* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0))
  %270 = icmp ne i32 %269, 0
  %271 = xor i1 %270, true
  %272 = zext i1 %271 to i32
  %273 = call i32 (i32, i8*, ...) @ok(i32 %272, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.20, i64 0, i64 0), i32* %13)
  %274 = load i32, i32* @MAX_PATH, align 4
  store i32 %274, i32* %7, align 4
  %275 = load i32, i32* %4, align 4
  %276 = call i32 @MsiRecordGetStringA(i32 %275, i32 2, i32* %13, i32* %7)
  store i32 %276, i32* %6, align 4
  %277 = load i32, i32* %6, align 4
  %278 = load i32, i32* @ERROR_SUCCESS, align 4
  %279 = icmp eq i32 %277, %278
  %280 = zext i1 %279 to i32
  %281 = load i32, i32* %6, align 4
  %282 = call i32 (i32, i8*, ...) @ok(i32 %280, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0), i32 %281)
  %283 = call i32 @lstrcmpA(i32* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0))
  %284 = icmp ne i32 %283, 0
  %285 = xor i1 %284, true
  %286 = zext i1 %285 to i32
  %287 = call i32 (i32, i8*, ...) @ok(i32 %286, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.22, i64 0, i64 0), i32* %13)
  %288 = load i32, i32* %4, align 4
  %289 = call i32 @MsiRecordGetInteger(i32 %288, i32 3)
  store i32 %289, i32* %6, align 4
  %290 = load i32, i32* %6, align 4
  %291 = icmp eq i32 %290, 3
  %292 = zext i1 %291 to i32
  %293 = load i32, i32* %6, align 4
  %294 = call i32 (i32, i8*, ...) @ok(i32 %292, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i64 0, i64 0), i32 %293)
  %295 = load i32, i32* %4, align 4
  %296 = call i32 @MsiCloseHandle(i32 %295)
  %297 = load i32, i32* %3, align 4
  %298 = call i32 @MsiViewFetch(i32 %297, i32* %4)
  store i32 %298, i32* %6, align 4
  %299 = load i32, i32* %6, align 4
  %300 = load i32, i32* @ERROR_NO_MORE_ITEMS, align 4
  %301 = icmp eq i32 %299, %300
  %302 = zext i1 %301 to i32
  %303 = load i32, i32* %6, align 4
  %304 = call i32 (i32, i8*, ...) @ok(i32 %302, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.16, i64 0, i64 0), i32 %303)
  %305 = load i32, i32* %2, align 4
  %306 = call i32 @MsiCloseHandle(i32 %305)
  %307 = load i32, i32* %3, align 4
  %308 = call i32 @MsiViewClose(i32 %307)
  %309 = load i32, i32* %3, align 4
  %310 = call i32 @MsiCloseHandle(i32 %309)
  %311 = load i32, i32* %1, align 4
  %312 = call i32 @MsiCloseHandle(i32 %311)
  %313 = load i32, i32* @msifile, align 4
  %314 = call i32 @DeleteFileA(i32 %313)
  %315 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %315)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @create_db(...) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @run_query(i32, i32, i8*) #2

declare dso_local i32 @MsiCreateRecord(i32) #2

declare dso_local i32 @MsiRecordSetStringA(i32, i32, i8*) #2

declare dso_local i32 @MsiDatabaseOpenViewA(i32, i8*, i32*) #2

declare dso_local i32 @MsiViewExecute(i32, i32) #2

declare dso_local i32 @MsiViewFetch(i32, i32*) #2

declare dso_local i32 @MsiRecordGetStringA(i32, i32, i32*, i32*) #2

declare dso_local i32 @lstrcmpA(i32*, i8*) #2

declare dso_local i32 @MsiRecordGetInteger(i32, i32) #2

declare dso_local i32 @MsiCloseHandle(i32) #2

declare dso_local i32 @MsiViewClose(i32) #2

declare dso_local i32 @MsiRecordSetInteger(i32, i32, i32) #2

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
