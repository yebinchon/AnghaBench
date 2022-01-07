; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_db.c_test_viewmodify_assign.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_db.c_test_viewmodify_assign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@msifile = common dso_local global i32 0, align 4
@msifileW = common dso_local global i32 0, align 4
@MSIDBOPEN_CREATE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"MsiOpenDatabase failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"CREATE TABLE `table` (`A` INT, `B` INT PRIMARY KEY `A`)\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"query failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"SELECT * FROM `table`\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"MsiDatabaseOpenView failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"MsiViewExecute failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"MsiCreateRecord failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"failed to set integer\0A\00", align 1
@MSIMODIFY_ASSIGN = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [26 x i8] c"MsiViewModify failed: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"failed to close record\0A\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"MsiViewClose failed\0A\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"MsiCloseHandle failed\0A\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"MsiViewFetch failed\0A\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"Expected 1, got %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"Expected 2, got %d\0A\00", align 1
@ERROR_NO_MORE_ITEMS = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [38 x i8] c"Expected ERROR_NO_MORE_ITEMS, got %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"Expected 4, got %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"MsiOpenDatabase close failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_viewmodify_assign to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_viewmodify_assign() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i64 0, i64* %1, align 8
  store i64 0, i64* %2, align 8
  store i64 0, i64* %3, align 8
  %6 = load i32, i32* @msifile, align 4
  %7 = call i32 @DeleteFileA(i32 %6)
  %8 = load i32, i32* @msifileW, align 4
  %9 = load i32, i32* @MSIDBOPEN_CREATE, align 4
  %10 = call i32 @MsiOpenDatabaseW(i32 %8, i32 %9, i64* %1)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @ERROR_SUCCESS, align 4
  %13 = icmp eq i32 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 (i32, i8*, ...) @ok(i32 %14, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  %16 = load i64, i64* %1, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @run_query(i64 %16, i32 0, i8* %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @ERROR_SUCCESS, align 4
  %21 = icmp eq i32 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 (i32, i8*, ...) @ok(i32 %22, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8** %4, align 8
  %24 = load i64, i64* %1, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 @MsiDatabaseOpenViewA(i64 %24, i8* %25, i64* %2)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @ERROR_SUCCESS, align 4
  %29 = icmp eq i32 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 (i32, i8*, ...) @ok(i32 %30, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %32 = load i64, i64* %2, align 8
  %33 = call i32 @MsiViewExecute(i64 %32, i32 0)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @ERROR_SUCCESS, align 4
  %36 = icmp eq i32 %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 (i32, i8*, ...) @ok(i32 %37, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %39 = call i64 @MsiCreateRecord(i32 2)
  store i64 %39, i64* %3, align 8
  %40 = load i64, i64* %3, align 8
  %41 = icmp ne i64 %40, 0
  %42 = zext i1 %41 to i32
  %43 = call i32 (i32, i8*, ...) @ok(i32 %42, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %44 = load i64, i64* %3, align 8
  %45 = call i32 @MsiRecordSetInteger(i64 %44, i32 1, i32 1)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @ERROR_SUCCESS, align 4
  %48 = icmp eq i32 %46, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 (i32, i8*, ...) @ok(i32 %49, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  %51 = load i64, i64* %3, align 8
  %52 = call i32 @MsiRecordSetInteger(i64 %51, i32 2, i32 2)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @ERROR_SUCCESS, align 4
  %55 = icmp eq i32 %53, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 (i32, i8*, ...) @ok(i32 %56, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  %58 = load i64, i64* %2, align 8
  %59 = load i32, i32* @MSIMODIFY_ASSIGN, align 4
  %60 = load i64, i64* %3, align 8
  %61 = call i32 @MsiViewModify(i64 %58, i32 %59, i64 %60)
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @ERROR_SUCCESS, align 4
  %64 = icmp eq i32 %62, %63
  %65 = zext i1 %64 to i32
  %66 = load i32, i32* %5, align 4
  %67 = call i32 (i32, i8*, ...) @ok(i32 %65, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i32 %66)
  %68 = load i64, i64* %3, align 8
  %69 = call i32 @MsiCloseHandle(i64 %68)
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* @ERROR_SUCCESS, align 4
  %72 = icmp eq i32 %70, %71
  %73 = zext i1 %72 to i32
  %74 = call i32 (i32, i8*, ...) @ok(i32 %73, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  %75 = load i64, i64* %2, align 8
  %76 = call i32 @MsiViewClose(i64 %75)
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* @ERROR_SUCCESS, align 4
  %79 = icmp eq i32 %77, %78
  %80 = zext i1 %79 to i32
  %81 = call i32 (i32, i8*, ...) @ok(i32 %80, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0))
  %82 = load i64, i64* %2, align 8
  %83 = call i32 @MsiCloseHandle(i64 %82)
  store i32 %83, i32* %5, align 4
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* @ERROR_SUCCESS, align 4
  %86 = icmp eq i32 %84, %85
  %87 = zext i1 %86 to i32
  %88 = call i32 (i32, i8*, ...) @ok(i32 %87, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0))
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8** %4, align 8
  %89 = load i64, i64* %1, align 8
  %90 = load i8*, i8** %4, align 8
  %91 = call i32 @MsiDatabaseOpenViewA(i64 %89, i8* %90, i64* %2)
  store i32 %91, i32* %5, align 4
  %92 = load i32, i32* %5, align 4
  %93 = load i32, i32* @ERROR_SUCCESS, align 4
  %94 = icmp eq i32 %92, %93
  %95 = zext i1 %94 to i32
  %96 = call i32 (i32, i8*, ...) @ok(i32 %95, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %97 = load i64, i64* %2, align 8
  %98 = call i32 @MsiViewExecute(i64 %97, i32 0)
  store i32 %98, i32* %5, align 4
  %99 = load i32, i32* %5, align 4
  %100 = load i32, i32* @ERROR_SUCCESS, align 4
  %101 = icmp eq i32 %99, %100
  %102 = zext i1 %101 to i32
  %103 = call i32 (i32, i8*, ...) @ok(i32 %102, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %104 = load i64, i64* %2, align 8
  %105 = call i32 @MsiViewFetch(i64 %104, i64* %3)
  store i32 %105, i32* %5, align 4
  %106 = load i32, i32* %5, align 4
  %107 = load i32, i32* @ERROR_SUCCESS, align 4
  %108 = icmp eq i32 %106, %107
  %109 = zext i1 %108 to i32
  %110 = call i32 (i32, i8*, ...) @ok(i32 %109, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0))
  %111 = load i64, i64* %3, align 8
  %112 = call i32 @MsiRecordGetInteger(i64 %111, i32 1)
  store i32 %112, i32* %5, align 4
  %113 = load i32, i32* %5, align 4
  %114 = icmp eq i32 %113, 1
  %115 = zext i1 %114 to i32
  %116 = load i32, i32* %5, align 4
  %117 = call i32 (i32, i8*, ...) @ok(i32 %115, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i32 %116)
  %118 = load i64, i64* %3, align 8
  %119 = call i32 @MsiRecordGetInteger(i64 %118, i32 2)
  store i32 %119, i32* %5, align 4
  %120 = load i32, i32* %5, align 4
  %121 = icmp eq i32 %120, 2
  %122 = zext i1 %121 to i32
  %123 = load i32, i32* %5, align 4
  %124 = call i32 (i32, i8*, ...) @ok(i32 %122, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 %123)
  %125 = load i64, i64* %3, align 8
  %126 = call i32 @MsiCloseHandle(i64 %125)
  store i32 %126, i32* %5, align 4
  %127 = load i32, i32* %5, align 4
  %128 = load i32, i32* @ERROR_SUCCESS, align 4
  %129 = icmp eq i32 %127, %128
  %130 = zext i1 %129 to i32
  %131 = call i32 (i32, i8*, ...) @ok(i32 %130, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  %132 = load i64, i64* %2, align 8
  %133 = call i32 @MsiViewFetch(i64 %132, i64* %3)
  store i32 %133, i32* %5, align 4
  %134 = load i32, i32* %5, align 4
  %135 = load i32, i32* @ERROR_NO_MORE_ITEMS, align 4
  %136 = icmp eq i32 %134, %135
  %137 = zext i1 %136 to i32
  %138 = load i32, i32* %5, align 4
  %139 = call i32 (i32, i8*, ...) @ok(i32 %137, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.15, i64 0, i64 0), i32 %138)
  %140 = load i64, i64* %2, align 8
  %141 = call i32 @MsiViewClose(i64 %140)
  store i32 %141, i32* %5, align 4
  %142 = load i32, i32* %5, align 4
  %143 = load i32, i32* @ERROR_SUCCESS, align 4
  %144 = icmp eq i32 %142, %143
  %145 = zext i1 %144 to i32
  %146 = call i32 (i32, i8*, ...) @ok(i32 %145, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0))
  %147 = load i64, i64* %2, align 8
  %148 = call i32 @MsiCloseHandle(i64 %147)
  store i32 %148, i32* %5, align 4
  %149 = load i32, i32* %5, align 4
  %150 = load i32, i32* @ERROR_SUCCESS, align 4
  %151 = icmp eq i32 %149, %150
  %152 = zext i1 %151 to i32
  %153 = call i32 (i32, i8*, ...) @ok(i32 %152, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0))
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8** %4, align 8
  %154 = load i64, i64* %1, align 8
  %155 = load i8*, i8** %4, align 8
  %156 = call i32 @MsiDatabaseOpenViewA(i64 %154, i8* %155, i64* %2)
  store i32 %156, i32* %5, align 4
  %157 = load i32, i32* %5, align 4
  %158 = load i32, i32* @ERROR_SUCCESS, align 4
  %159 = icmp eq i32 %157, %158
  %160 = zext i1 %159 to i32
  %161 = call i32 (i32, i8*, ...) @ok(i32 %160, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %162 = load i64, i64* %2, align 8
  %163 = call i32 @MsiViewExecute(i64 %162, i32 0)
  store i32 %163, i32* %5, align 4
  %164 = load i32, i32* %5, align 4
  %165 = load i32, i32* @ERROR_SUCCESS, align 4
  %166 = icmp eq i32 %164, %165
  %167 = zext i1 %166 to i32
  %168 = call i32 (i32, i8*, ...) @ok(i32 %167, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %169 = call i64 @MsiCreateRecord(i32 2)
  store i64 %169, i64* %3, align 8
  %170 = load i64, i64* %3, align 8
  %171 = icmp ne i64 %170, 0
  %172 = zext i1 %171 to i32
  %173 = call i32 (i32, i8*, ...) @ok(i32 %172, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %174 = load i64, i64* %3, align 8
  %175 = call i32 @MsiRecordSetInteger(i64 %174, i32 1, i32 1)
  store i32 %175, i32* %5, align 4
  %176 = load i32, i32* %5, align 4
  %177 = load i32, i32* @ERROR_SUCCESS, align 4
  %178 = icmp eq i32 %176, %177
  %179 = zext i1 %178 to i32
  %180 = call i32 (i32, i8*, ...) @ok(i32 %179, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  %181 = load i64, i64* %3, align 8
  %182 = call i32 @MsiRecordSetInteger(i64 %181, i32 2, i32 4)
  store i32 %182, i32* %5, align 4
  %183 = load i32, i32* %5, align 4
  %184 = load i32, i32* @ERROR_SUCCESS, align 4
  %185 = icmp eq i32 %183, %184
  %186 = zext i1 %185 to i32
  %187 = call i32 (i32, i8*, ...) @ok(i32 %186, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  %188 = load i64, i64* %2, align 8
  %189 = load i32, i32* @MSIMODIFY_ASSIGN, align 4
  %190 = load i64, i64* %3, align 8
  %191 = call i32 @MsiViewModify(i64 %188, i32 %189, i64 %190)
  store i32 %191, i32* %5, align 4
  %192 = load i32, i32* %5, align 4
  %193 = load i32, i32* @ERROR_SUCCESS, align 4
  %194 = icmp eq i32 %192, %193
  %195 = zext i1 %194 to i32
  %196 = load i32, i32* %5, align 4
  %197 = call i32 (i32, i8*, ...) @ok(i32 %195, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i32 %196)
  %198 = load i64, i64* %3, align 8
  %199 = call i32 @MsiCloseHandle(i64 %198)
  store i32 %199, i32* %5, align 4
  %200 = load i32, i32* %5, align 4
  %201 = load i32, i32* @ERROR_SUCCESS, align 4
  %202 = icmp eq i32 %200, %201
  %203 = zext i1 %202 to i32
  %204 = call i32 (i32, i8*, ...) @ok(i32 %203, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  %205 = load i64, i64* %2, align 8
  %206 = call i32 @MsiViewClose(i64 %205)
  store i32 %206, i32* %5, align 4
  %207 = load i32, i32* %5, align 4
  %208 = load i32, i32* @ERROR_SUCCESS, align 4
  %209 = icmp eq i32 %207, %208
  %210 = zext i1 %209 to i32
  %211 = call i32 (i32, i8*, ...) @ok(i32 %210, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0))
  %212 = load i64, i64* %2, align 8
  %213 = call i32 @MsiCloseHandle(i64 %212)
  store i32 %213, i32* %5, align 4
  %214 = load i32, i32* %5, align 4
  %215 = load i32, i32* @ERROR_SUCCESS, align 4
  %216 = icmp eq i32 %214, %215
  %217 = zext i1 %216 to i32
  %218 = call i32 (i32, i8*, ...) @ok(i32 %217, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0))
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8** %4, align 8
  %219 = load i64, i64* %1, align 8
  %220 = load i8*, i8** %4, align 8
  %221 = call i32 @MsiDatabaseOpenViewA(i64 %219, i8* %220, i64* %2)
  store i32 %221, i32* %5, align 4
  %222 = load i32, i32* %5, align 4
  %223 = load i32, i32* @ERROR_SUCCESS, align 4
  %224 = icmp eq i32 %222, %223
  %225 = zext i1 %224 to i32
  %226 = call i32 (i32, i8*, ...) @ok(i32 %225, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %227 = load i64, i64* %2, align 8
  %228 = call i32 @MsiViewExecute(i64 %227, i32 0)
  store i32 %228, i32* %5, align 4
  %229 = load i32, i32* %5, align 4
  %230 = load i32, i32* @ERROR_SUCCESS, align 4
  %231 = icmp eq i32 %229, %230
  %232 = zext i1 %231 to i32
  %233 = call i32 (i32, i8*, ...) @ok(i32 %232, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %234 = load i64, i64* %2, align 8
  %235 = call i32 @MsiViewFetch(i64 %234, i64* %3)
  store i32 %235, i32* %5, align 4
  %236 = load i32, i32* %5, align 4
  %237 = load i32, i32* @ERROR_SUCCESS, align 4
  %238 = icmp eq i32 %236, %237
  %239 = zext i1 %238 to i32
  %240 = call i32 (i32, i8*, ...) @ok(i32 %239, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0))
  %241 = load i64, i64* %3, align 8
  %242 = call i32 @MsiRecordGetInteger(i64 %241, i32 1)
  store i32 %242, i32* %5, align 4
  %243 = load i32, i32* %5, align 4
  %244 = icmp eq i32 %243, 1
  %245 = zext i1 %244 to i32
  %246 = load i32, i32* %5, align 4
  %247 = call i32 (i32, i8*, ...) @ok(i32 %245, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i32 %246)
  %248 = load i64, i64* %3, align 8
  %249 = call i32 @MsiRecordGetInteger(i64 %248, i32 2)
  store i32 %249, i32* %5, align 4
  %250 = load i32, i32* %5, align 4
  %251 = icmp eq i32 %250, 4
  %252 = zext i1 %251 to i32
  %253 = load i32, i32* %5, align 4
  %254 = call i32 (i32, i8*, ...) @ok(i32 %252, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i32 %253)
  %255 = load i64, i64* %3, align 8
  %256 = call i32 @MsiCloseHandle(i64 %255)
  store i32 %256, i32* %5, align 4
  %257 = load i32, i32* %5, align 4
  %258 = load i32, i32* @ERROR_SUCCESS, align 4
  %259 = icmp eq i32 %257, %258
  %260 = zext i1 %259 to i32
  %261 = call i32 (i32, i8*, ...) @ok(i32 %260, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  %262 = load i64, i64* %2, align 8
  %263 = call i32 @MsiViewFetch(i64 %262, i64* %3)
  store i32 %263, i32* %5, align 4
  %264 = load i32, i32* %5, align 4
  %265 = load i32, i32* @ERROR_NO_MORE_ITEMS, align 4
  %266 = icmp eq i32 %264, %265
  %267 = zext i1 %266 to i32
  %268 = load i32, i32* %5, align 4
  %269 = call i32 (i32, i8*, ...) @ok(i32 %267, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.15, i64 0, i64 0), i32 %268)
  %270 = load i64, i64* %2, align 8
  %271 = call i32 @MsiViewClose(i64 %270)
  store i32 %271, i32* %5, align 4
  %272 = load i32, i32* %5, align 4
  %273 = load i32, i32* @ERROR_SUCCESS, align 4
  %274 = icmp eq i32 %272, %273
  %275 = zext i1 %274 to i32
  %276 = call i32 (i32, i8*, ...) @ok(i32 %275, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0))
  %277 = load i64, i64* %2, align 8
  %278 = call i32 @MsiCloseHandle(i64 %277)
  store i32 %278, i32* %5, align 4
  %279 = load i32, i32* %5, align 4
  %280 = load i32, i32* @ERROR_SUCCESS, align 4
  %281 = icmp eq i32 %279, %280
  %282 = zext i1 %281 to i32
  %283 = call i32 (i32, i8*, ...) @ok(i32 %282, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0))
  %284 = load i64, i64* %1, align 8
  %285 = call i32 @MsiCloseHandle(i64 %284)
  store i32 %285, i32* %5, align 4
  %286 = load i32, i32* %5, align 4
  %287 = load i32, i32* @ERROR_SUCCESS, align 4
  %288 = icmp eq i32 %286, %287
  %289 = zext i1 %288 to i32
  %290 = call i32 (i32, i8*, ...) @ok(i32 %289, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.17, i64 0, i64 0))
  ret void
}

declare dso_local i32 @DeleteFileA(i32) #1

declare dso_local i32 @MsiOpenDatabaseW(i32, i32, i64*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @run_query(i64, i32, i8*) #1

declare dso_local i32 @MsiDatabaseOpenViewA(i64, i8*, i64*) #1

declare dso_local i32 @MsiViewExecute(i64, i32) #1

declare dso_local i64 @MsiCreateRecord(i32) #1

declare dso_local i32 @MsiRecordSetInteger(i64, i32, i32) #1

declare dso_local i32 @MsiViewModify(i64, i32, i64) #1

declare dso_local i32 @MsiCloseHandle(i64) #1

declare dso_local i32 @MsiViewClose(i64) #1

declare dso_local i32 @MsiViewFetch(i64, i64*) #1

declare dso_local i32 @MsiRecordGetInteger(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
