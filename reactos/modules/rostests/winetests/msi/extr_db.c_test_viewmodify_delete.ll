; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_db.c_test_viewmodify_delete.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_db.c_test_viewmodify_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@msifile = common dso_local global i32 0, align 4
@msifileW = common dso_local global i32 0, align 4
@MSIDBOPEN_CREATE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Expected ERROR_SUCCESS, got %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [86 x i8] c"CREATE TABLE `phone` ( `id` INT, `name` CHAR(32), `number` CHAR(32) PRIMARY KEY `id`)\00", align 1
@.str.2 = private unnamed_addr constant [77 x i8] c"INSERT INTO `phone` ( `id`, `name`, `number` )VALUES('1', 'Alan', '5030581')\00", align 1
@.str.3 = private unnamed_addr constant [77 x i8] c"INSERT INTO `phone` ( `id`, `name`, `number` )VALUES('2', 'Barry', '928440')\00", align 1
@.str.4 = private unnamed_addr constant [78 x i8] c"INSERT INTO `phone` ( `id`, `name`, `number` )VALUES('3', 'Cindy', '2937550')\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"SELECT * FROM `phone` WHERE `id` <= 2\00", align 1
@MSIMODIFY_DELETE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"SELECT * FROM `phone`\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"Expected 3, got %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"Cindy\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"Expected Cindy, got %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"2937550\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"Expected 2937550, got %s\0A\00", align 1
@ERROR_NO_MORE_ITEMS = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [38 x i8] c"Expected ERROR_NO_MORE_ITEMS, got %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_viewmodify_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_viewmodify_delete() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca [256 x i8], align 16
  %7 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %8 = load i32, i32* @msifile, align 4
  %9 = call i32 @DeleteFileA(i32 %8)
  %10 = load i32, i32* @msifileW, align 4
  %11 = load i32, i32* @MSIDBOPEN_CREATE, align 4
  %12 = call i32 @MsiOpenDatabaseW(i32 %10, i32 %11, i32* %1)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @ERROR_SUCCESS, align 4
  %15 = icmp eq i32 %13, %14
  %16 = zext i1 %15 to i32
  %17 = load i32, i32* %4, align 4
  %18 = call i32 (i32, i8*, ...) @ok(i32 %16, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %17)
  store i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  %19 = load i32, i32* %1, align 4
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @run_query(i32 %19, i32 0, i8* %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @ERROR_SUCCESS, align 4
  %24 = icmp eq i32 %22, %23
  %25 = zext i1 %24 to i32
  %26 = load i32, i32* %4, align 4
  %27 = call i32 (i32, i8*, ...) @ok(i32 %25, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %26)
  store i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  %28 = load i32, i32* %1, align 4
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 @run_query(i32 %28, i32 0, i8* %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @ERROR_SUCCESS, align 4
  %33 = icmp eq i32 %31, %32
  %34 = zext i1 %33 to i32
  %35 = load i32, i32* %4, align 4
  %36 = call i32 (i32, i8*, ...) @ok(i32 %34, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %35)
  store i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.3, i64 0, i64 0), i8** %5, align 8
  %37 = load i32, i32* %1, align 4
  %38 = load i8*, i8** %5, align 8
  %39 = call i32 @run_query(i32 %37, i32 0, i8* %38)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @ERROR_SUCCESS, align 4
  %42 = icmp eq i32 %40, %41
  %43 = zext i1 %42 to i32
  %44 = load i32, i32* %4, align 4
  %45 = call i32 (i32, i8*, ...) @ok(i32 %43, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %44)
  store i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.4, i64 0, i64 0), i8** %5, align 8
  %46 = load i32, i32* %1, align 4
  %47 = load i8*, i8** %5, align 8
  %48 = call i32 @run_query(i32 %46, i32 0, i8* %47)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @ERROR_SUCCESS, align 4
  %51 = icmp eq i32 %49, %50
  %52 = zext i1 %51 to i32
  %53 = load i32, i32* %4, align 4
  %54 = call i32 (i32, i8*, ...) @ok(i32 %52, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %53)
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i8** %5, align 8
  %55 = load i32, i32* %1, align 4
  %56 = load i8*, i8** %5, align 8
  %57 = call i32 @MsiDatabaseOpenViewA(i32 %55, i8* %56, i32* %2)
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @ERROR_SUCCESS, align 4
  %60 = icmp eq i32 %58, %59
  %61 = zext i1 %60 to i32
  %62 = load i32, i32* %4, align 4
  %63 = call i32 (i32, i8*, ...) @ok(i32 %61, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* %2, align 4
  %65 = call i32 @MsiViewExecute(i32 %64, i32 0)
  store i32 %65, i32* %4, align 4
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @ERROR_SUCCESS, align 4
  %68 = icmp eq i32 %66, %67
  %69 = zext i1 %68 to i32
  %70 = load i32, i32* %4, align 4
  %71 = call i32 (i32, i8*, ...) @ok(i32 %69, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* %2, align 4
  %73 = call i32 @MsiViewFetch(i32 %72, i32* %3)
  store i32 %73, i32* %4, align 4
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* @ERROR_SUCCESS, align 4
  %76 = icmp eq i32 %74, %75
  %77 = zext i1 %76 to i32
  %78 = load i32, i32* %4, align 4
  %79 = call i32 (i32, i8*, ...) @ok(i32 %77, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* %2, align 4
  %81 = load i32, i32* @MSIMODIFY_DELETE, align 4
  %82 = load i32, i32* %3, align 4
  %83 = call i32 @MsiViewModify(i32 %80, i32 %81, i32 %82)
  store i32 %83, i32* %4, align 4
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* @ERROR_SUCCESS, align 4
  %86 = icmp eq i32 %84, %85
  %87 = zext i1 %86 to i32
  %88 = load i32, i32* %4, align 4
  %89 = call i32 (i32, i8*, ...) @ok(i32 %87, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* %3, align 4
  %91 = call i32 @MsiCloseHandle(i32 %90)
  store i32 %91, i32* %4, align 4
  %92 = load i32, i32* %4, align 4
  %93 = load i32, i32* @ERROR_SUCCESS, align 4
  %94 = icmp eq i32 %92, %93
  %95 = zext i1 %94 to i32
  %96 = load i32, i32* %4, align 4
  %97 = call i32 (i32, i8*, ...) @ok(i32 %95, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %96)
  %98 = load i32, i32* %2, align 4
  %99 = call i32 @MsiViewFetch(i32 %98, i32* %3)
  store i32 %99, i32* %4, align 4
  %100 = load i32, i32* %4, align 4
  %101 = load i32, i32* @ERROR_SUCCESS, align 4
  %102 = icmp eq i32 %100, %101
  %103 = zext i1 %102 to i32
  %104 = load i32, i32* %4, align 4
  %105 = call i32 (i32, i8*, ...) @ok(i32 %103, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %104)
  %106 = load i32, i32* %2, align 4
  %107 = load i32, i32* @MSIMODIFY_DELETE, align 4
  %108 = load i32, i32* %3, align 4
  %109 = call i32 @MsiViewModify(i32 %106, i32 %107, i32 %108)
  store i32 %109, i32* %4, align 4
  %110 = load i32, i32* %4, align 4
  %111 = load i32, i32* @ERROR_SUCCESS, align 4
  %112 = icmp eq i32 %110, %111
  %113 = zext i1 %112 to i32
  %114 = load i32, i32* %4, align 4
  %115 = call i32 (i32, i8*, ...) @ok(i32 %113, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %114)
  %116 = load i32, i32* %3, align 4
  %117 = call i32 @MsiCloseHandle(i32 %116)
  store i32 %117, i32* %4, align 4
  %118 = load i32, i32* %4, align 4
  %119 = load i32, i32* @ERROR_SUCCESS, align 4
  %120 = icmp eq i32 %118, %119
  %121 = zext i1 %120 to i32
  %122 = load i32, i32* %4, align 4
  %123 = call i32 (i32, i8*, ...) @ok(i32 %121, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %122)
  %124 = load i32, i32* %2, align 4
  %125 = call i32 @MsiViewClose(i32 %124)
  store i32 %125, i32* %4, align 4
  %126 = load i32, i32* %4, align 4
  %127 = load i32, i32* @ERROR_SUCCESS, align 4
  %128 = icmp eq i32 %126, %127
  %129 = zext i1 %128 to i32
  %130 = load i32, i32* %4, align 4
  %131 = call i32 (i32, i8*, ...) @ok(i32 %129, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %130)
  %132 = load i32, i32* %2, align 4
  %133 = call i32 @MsiCloseHandle(i32 %132)
  store i32 %133, i32* %4, align 4
  %134 = load i32, i32* %4, align 4
  %135 = load i32, i32* @ERROR_SUCCESS, align 4
  %136 = icmp eq i32 %134, %135
  %137 = zext i1 %136 to i32
  %138 = load i32, i32* %4, align 4
  %139 = call i32 (i32, i8*, ...) @ok(i32 %137, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %138)
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i8** %5, align 8
  %140 = load i32, i32* %1, align 4
  %141 = load i8*, i8** %5, align 8
  %142 = call i32 @MsiDatabaseOpenViewA(i32 %140, i8* %141, i32* %2)
  store i32 %142, i32* %4, align 4
  %143 = load i32, i32* %4, align 4
  %144 = load i32, i32* @ERROR_SUCCESS, align 4
  %145 = icmp eq i32 %143, %144
  %146 = zext i1 %145 to i32
  %147 = load i32, i32* %4, align 4
  %148 = call i32 (i32, i8*, ...) @ok(i32 %146, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %147)
  %149 = load i32, i32* %2, align 4
  %150 = call i32 @MsiViewExecute(i32 %149, i32 0)
  store i32 %150, i32* %4, align 4
  %151 = load i32, i32* %4, align 4
  %152 = load i32, i32* @ERROR_SUCCESS, align 4
  %153 = icmp eq i32 %151, %152
  %154 = zext i1 %153 to i32
  %155 = load i32, i32* %4, align 4
  %156 = call i32 (i32, i8*, ...) @ok(i32 %154, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %155)
  %157 = load i32, i32* %2, align 4
  %158 = call i32 @MsiViewFetch(i32 %157, i32* %3)
  store i32 %158, i32* %4, align 4
  %159 = load i32, i32* %4, align 4
  %160 = load i32, i32* @ERROR_SUCCESS, align 4
  %161 = icmp eq i32 %159, %160
  %162 = zext i1 %161 to i32
  %163 = load i32, i32* %4, align 4
  %164 = call i32 (i32, i8*, ...) @ok(i32 %162, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %163)
  %165 = load i32, i32* %3, align 4
  %166 = call i32 @MsiRecordGetInteger(i32 %165, i32 1)
  store i32 %166, i32* %4, align 4
  %167 = load i32, i32* %4, align 4
  %168 = icmp eq i32 %167, 3
  %169 = zext i1 %168 to i32
  %170 = load i32, i32* %4, align 4
  %171 = call i32 (i32, i8*, ...) @ok(i32 %169, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i32 %170)
  store i32 256, i32* %7, align 4
  %172 = load i32, i32* %3, align 4
  %173 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %174 = call i32 @MsiRecordGetStringA(i32 %172, i32 2, i8* %173, i32* %7)
  store i32 %174, i32* %4, align 4
  %175 = load i32, i32* %4, align 4
  %176 = load i32, i32* @ERROR_SUCCESS, align 4
  %177 = icmp eq i32 %175, %176
  %178 = zext i1 %177 to i32
  %179 = load i32, i32* %4, align 4
  %180 = call i32 (i32, i8*, ...) @ok(i32 %178, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %179)
  %181 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %182 = call i32 @lstrcmpA(i8* %181, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %183 = icmp ne i32 %182, 0
  %184 = xor i1 %183, true
  %185 = zext i1 %184 to i32
  %186 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %187 = call i32 (i32, i8*, ...) @ok(i32 %185, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i8* %186)
  store i32 256, i32* %7, align 4
  %188 = load i32, i32* %3, align 4
  %189 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %190 = call i32 @MsiRecordGetStringA(i32 %188, i32 3, i8* %189, i32* %7)
  store i32 %190, i32* %4, align 4
  %191 = load i32, i32* %4, align 4
  %192 = load i32, i32* @ERROR_SUCCESS, align 4
  %193 = icmp eq i32 %191, %192
  %194 = zext i1 %193 to i32
  %195 = load i32, i32* %4, align 4
  %196 = call i32 (i32, i8*, ...) @ok(i32 %194, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %195)
  %197 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %198 = call i32 @lstrcmpA(i8* %197, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  %199 = icmp ne i32 %198, 0
  %200 = xor i1 %199, true
  %201 = zext i1 %200 to i32
  %202 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %203 = call i32 (i32, i8*, ...) @ok(i32 %201, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0), i8* %202)
  %204 = load i32, i32* %3, align 4
  %205 = call i32 @MsiCloseHandle(i32 %204)
  store i32 %205, i32* %4, align 4
  %206 = load i32, i32* %4, align 4
  %207 = load i32, i32* @ERROR_SUCCESS, align 4
  %208 = icmp eq i32 %206, %207
  %209 = zext i1 %208 to i32
  %210 = load i32, i32* %4, align 4
  %211 = call i32 (i32, i8*, ...) @ok(i32 %209, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %210)
  %212 = load i32, i32* %2, align 4
  %213 = call i32 @MsiViewFetch(i32 %212, i32* %3)
  store i32 %213, i32* %4, align 4
  %214 = load i32, i32* %4, align 4
  %215 = load i32, i32* @ERROR_NO_MORE_ITEMS, align 4
  %216 = icmp eq i32 %214, %215
  %217 = zext i1 %216 to i32
  %218 = load i32, i32* %4, align 4
  %219 = call i32 (i32, i8*, ...) @ok(i32 %217, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i64 0, i64 0), i32 %218)
  %220 = load i32, i32* %2, align 4
  %221 = call i32 @MsiViewClose(i32 %220)
  store i32 %221, i32* %4, align 4
  %222 = load i32, i32* %4, align 4
  %223 = load i32, i32* @ERROR_SUCCESS, align 4
  %224 = icmp eq i32 %222, %223
  %225 = zext i1 %224 to i32
  %226 = load i32, i32* %4, align 4
  %227 = call i32 (i32, i8*, ...) @ok(i32 %225, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %226)
  %228 = load i32, i32* %2, align 4
  %229 = call i32 @MsiCloseHandle(i32 %228)
  store i32 %229, i32* %4, align 4
  %230 = load i32, i32* %4, align 4
  %231 = load i32, i32* @ERROR_SUCCESS, align 4
  %232 = icmp eq i32 %230, %231
  %233 = zext i1 %232 to i32
  %234 = load i32, i32* %4, align 4
  %235 = call i32 (i32, i8*, ...) @ok(i32 %233, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %234)
  %236 = load i32, i32* %1, align 4
  %237 = call i32 @MsiCloseHandle(i32 %236)
  store i32 %237, i32* %4, align 4
  %238 = load i32, i32* %4, align 4
  %239 = load i32, i32* @ERROR_SUCCESS, align 4
  %240 = icmp eq i32 %238, %239
  %241 = zext i1 %240 to i32
  %242 = load i32, i32* %4, align 4
  %243 = call i32 (i32, i8*, ...) @ok(i32 %241, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %242)
  ret void
}

declare dso_local i32 @DeleteFileA(i32) #1

declare dso_local i32 @MsiOpenDatabaseW(i32, i32, i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @run_query(i32, i32, i8*) #1

declare dso_local i32 @MsiDatabaseOpenViewA(i32, i8*, i32*) #1

declare dso_local i32 @MsiViewExecute(i32, i32) #1

declare dso_local i32 @MsiViewFetch(i32, i32*) #1

declare dso_local i32 @MsiViewModify(i32, i32, i32) #1

declare dso_local i32 @MsiCloseHandle(i32) #1

declare dso_local i32 @MsiViewClose(i32) #1

declare dso_local i32 @MsiRecordGetInteger(i32, i32) #1

declare dso_local i32 @MsiRecordGetStringA(i32, i32, i8*, i32*) #1

declare dso_local i32 @lstrcmpA(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
