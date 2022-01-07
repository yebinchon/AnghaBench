; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_db.c_test_insertorder.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_db.c_test_insertorder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"failed to create db\0A\00", align 1
@.str.1 = private unnamed_addr constant [68 x i8] c"CREATE TABLE `T` ( `A` SHORT, `B` SHORT, `C` SHORT PRIMARY KEY `A`)\00", align 1
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"Expected ERROR_SUCCESS, got %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"INSERT INTO `T` ( `A`, `B`, `C` ) VALUES ( 1, 2, 3 )\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"INSERT INTO `T` ( `B`, `C`, `A` ) VALUES ( 4, 5, 6 )\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"INSERT INTO `T` ( `C`, `A`, `B` ) VALUES ( 7, 8, 9 )\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"INSERT INTO `T` ( `A`, `B` ) VALUES ( 10, 11 )\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"INSERT INTO `T` ( `B`, `C` ) VALUES ( 12, 13 )\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"INSERT INTO `T` ( `C` ) VALUES ( 14 )\00", align 1
@ERROR_FUNCTION_FAILED = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [40 x i8] c"Expected ERROR_FUNCTION_FAILED, got %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [46 x i8] c"INSERT INTO `T` ( `A`, `C` ) VALUES ( 1, 14 )\00", align 1
@.str.11 = private unnamed_addr constant [47 x i8] c"INSERT INTO `T` ( `A`, `C` ) VALUES ( 14, 15 )\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"INSERT INTO `T` VALUES ( 16 )\00", align 1
@ERROR_BAD_QUERY_SYNTAX = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [41 x i8] c"Expected ERROR_BAD_QUERY_SYNTAX, got %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"INSERT INTO `T` VALUES ( 17, 18 )\00", align 1
@.str.15 = private unnamed_addr constant [38 x i8] c"INSERT INTO `T` VALUES ( 19, 20, 21 )\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"SELECT * FROM `T`\00", align 1
@ordervals = common dso_local global i64** null, align 8
@.str.17 = private unnamed_addr constant [21 x i8] c"Expected %d, got %d\0A\00", align 1
@ERROR_NO_MORE_ITEMS = common dso_local global i64 0, align 8
@.str.18 = private unnamed_addr constant [38 x i8] c"Expected ERROR_NO_MORE_ITEMS, got %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [34 x i8] c"DELETE FROM `T` WHERE `A` IS NULL\00", align 1
@.str.20 = private unnamed_addr constant [57 x i8] c"INSERT INTO `T` ( `B`, `C` ) VALUES ( 12, 13 ) TEMPORARY\00", align 1
@msifile = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_insertorder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_insertorder() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = call i32 (...) @create_db()
  store i32 %7, i32* %1, align 4
  %8 = load i32, i32* %1, align 4
  %9 = call i32 (i32, i8*, ...) @ok(i32 %8, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  %10 = load i32, i32* %1, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = call i64 @run_query(i32 %10, i32 0, i8* %11)
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @ERROR_SUCCESS, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = load i64, i64* %5, align 8
  %18 = call i32 (i32, i8*, ...) @ok(i32 %16, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i64 %17)
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i8** %4, align 8
  %19 = load i32, i32* %1, align 4
  %20 = load i8*, i8** %4, align 8
  %21 = call i64 @run_query(i32 %19, i32 0, i8* %20)
  store i64 %21, i64* %5, align 8
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* @ERROR_SUCCESS, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = load i64, i64* %5, align 8
  %27 = call i32 (i32, i8*, ...) @ok(i32 %25, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i64 %26)
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), i8** %4, align 8
  %28 = load i32, i32* %1, align 4
  %29 = load i8*, i8** %4, align 8
  %30 = call i64 @run_query(i32 %28, i32 0, i8* %29)
  store i64 %30, i64* %5, align 8
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* @ERROR_SUCCESS, align 8
  %33 = icmp eq i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = load i64, i64* %5, align 8
  %36 = call i32 (i32, i8*, ...) @ok(i32 %34, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i64 %35)
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0), i8** %4, align 8
  %37 = load i32, i32* %1, align 4
  %38 = load i8*, i8** %4, align 8
  %39 = call i64 @run_query(i32 %37, i32 0, i8* %38)
  store i64 %39, i64* %5, align 8
  %40 = load i64, i64* %5, align 8
  %41 = load i64, i64* @ERROR_SUCCESS, align 8
  %42 = icmp eq i64 %40, %41
  %43 = zext i1 %42 to i32
  %44 = load i64, i64* %5, align 8
  %45 = call i32 (i32, i8*, ...) @ok(i32 %43, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i64 %44)
  store i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0), i8** %4, align 8
  %46 = load i32, i32* %1, align 4
  %47 = load i8*, i8** %4, align 8
  %48 = call i64 @run_query(i32 %46, i32 0, i8* %47)
  store i64 %48, i64* %5, align 8
  %49 = load i64, i64* %5, align 8
  %50 = load i64, i64* @ERROR_SUCCESS, align 8
  %51 = icmp eq i64 %49, %50
  %52 = zext i1 %51 to i32
  %53 = load i64, i64* %5, align 8
  %54 = call i32 (i32, i8*, ...) @ok(i32 %52, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i64 %53)
  store i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i64 0, i64 0), i8** %4, align 8
  %55 = load i32, i32* %1, align 4
  %56 = load i8*, i8** %4, align 8
  %57 = call i64 @run_query(i32 %55, i32 0, i8* %56)
  store i64 %57, i64* %5, align 8
  %58 = load i64, i64* %5, align 8
  %59 = load i64, i64* @ERROR_SUCCESS, align 8
  %60 = icmp eq i64 %58, %59
  %61 = zext i1 %60 to i32
  %62 = load i64, i64* %5, align 8
  %63 = call i32 (i32, i8*, ...) @ok(i32 %61, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i64 %62)
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0), i8** %4, align 8
  %64 = load i32, i32* %1, align 4
  %65 = load i8*, i8** %4, align 8
  %66 = call i64 @run_query(i32 %64, i32 0, i8* %65)
  store i64 %66, i64* %5, align 8
  %67 = load i64, i64* %5, align 8
  %68 = load i64, i64* @ERROR_FUNCTION_FAILED, align 8
  %69 = icmp eq i64 %67, %68
  %70 = zext i1 %69 to i32
  %71 = load i64, i64* %5, align 8
  %72 = call i32 (i32, i8*, ...) @ok(i32 %70, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0), i64 %71)
  store i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.10, i64 0, i64 0), i8** %4, align 8
  %73 = load i32, i32* %1, align 4
  %74 = load i8*, i8** %4, align 8
  %75 = call i64 @run_query(i32 %73, i32 0, i8* %74)
  store i64 %75, i64* %5, align 8
  %76 = load i64, i64* %5, align 8
  %77 = load i64, i64* @ERROR_FUNCTION_FAILED, align 8
  %78 = icmp eq i64 %76, %77
  %79 = zext i1 %78 to i32
  %80 = load i64, i64* %5, align 8
  %81 = call i32 (i32, i8*, ...) @ok(i32 %79, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0), i64 %80)
  store i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.11, i64 0, i64 0), i8** %4, align 8
  %82 = load i32, i32* %1, align 4
  %83 = load i8*, i8** %4, align 8
  %84 = call i64 @run_query(i32 %82, i32 0, i8* %83)
  store i64 %84, i64* %5, align 8
  %85 = load i64, i64* %5, align 8
  %86 = load i64, i64* @ERROR_SUCCESS, align 8
  %87 = icmp eq i64 %85, %86
  %88 = zext i1 %87 to i32
  %89 = load i64, i64* %5, align 8
  %90 = call i32 (i32, i8*, ...) @ok(i32 %88, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i64 %89)
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0), i8** %4, align 8
  %91 = load i32, i32* %1, align 4
  %92 = load i8*, i8** %4, align 8
  %93 = call i64 @run_query(i32 %91, i32 0, i8* %92)
  store i64 %93, i64* %5, align 8
  %94 = load i64, i64* %5, align 8
  %95 = load i64, i64* @ERROR_BAD_QUERY_SYNTAX, align 8
  %96 = icmp eq i64 %94, %95
  %97 = zext i1 %96 to i32
  %98 = load i64, i64* %5, align 8
  %99 = call i32 (i32, i8*, ...) @ok(i32 %97, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.13, i64 0, i64 0), i64 %98)
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i64 0, i64 0), i8** %4, align 8
  %100 = load i32, i32* %1, align 4
  %101 = load i8*, i8** %4, align 8
  %102 = call i64 @run_query(i32 %100, i32 0, i8* %101)
  store i64 %102, i64* %5, align 8
  %103 = load i64, i64* %5, align 8
  %104 = load i64, i64* @ERROR_BAD_QUERY_SYNTAX, align 8
  %105 = icmp eq i64 %103, %104
  %106 = zext i1 %105 to i32
  %107 = load i64, i64* %5, align 8
  %108 = call i32 (i32, i8*, ...) @ok(i32 %106, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.13, i64 0, i64 0), i64 %107)
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.15, i64 0, i64 0), i8** %4, align 8
  %109 = load i32, i32* %1, align 4
  %110 = load i8*, i8** %4, align 8
  %111 = call i64 @run_query(i32 %109, i32 0, i8* %110)
  store i64 %111, i64* %5, align 8
  %112 = load i64, i64* %5, align 8
  %113 = load i64, i64* @ERROR_BAD_QUERY_SYNTAX, align 8
  %114 = icmp eq i64 %112, %113
  %115 = zext i1 %114 to i32
  %116 = load i64, i64* %5, align 8
  %117 = call i32 (i32, i8*, ...) @ok(i32 %115, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.13, i64 0, i64 0), i64 %116)
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i64 0, i64 0), i8** %4, align 8
  %118 = load i32, i32* %1, align 4
  %119 = load i8*, i8** %4, align 8
  %120 = call i64 @MsiDatabaseOpenViewA(i32 %118, i8* %119, i32* %2)
  store i64 %120, i64* %5, align 8
  %121 = load i64, i64* %5, align 8
  %122 = load i64, i64* @ERROR_SUCCESS, align 8
  %123 = icmp eq i64 %121, %122
  %124 = zext i1 %123 to i32
  %125 = load i64, i64* %5, align 8
  %126 = call i32 (i32, i8*, ...) @ok(i32 %124, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i64 %125)
  %127 = load i32, i32* %2, align 4
  %128 = call i64 @MsiViewExecute(i32 %127, i32 0)
  store i64 %128, i64* %5, align 8
  %129 = load i64, i64* %5, align 8
  %130 = load i64, i64* @ERROR_SUCCESS, align 8
  %131 = icmp eq i64 %129, %130
  %132 = zext i1 %131 to i32
  %133 = load i64, i64* %5, align 8
  %134 = call i32 (i32, i8*, ...) @ok(i32 %132, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i64 %133)
  store i32 0, i32* %6, align 4
  br label %135

135:                                              ; preds = %212, %0
  %136 = load i32, i32* %6, align 4
  %137 = icmp slt i32 %136, 6
  br i1 %137, label %138, label %215

138:                                              ; preds = %135
  %139 = load i32, i32* %2, align 4
  %140 = call i64 @MsiViewFetch(i32 %139, i32* %3)
  store i64 %140, i64* %5, align 8
  %141 = load i64, i64* %5, align 8
  %142 = load i64, i64* @ERROR_SUCCESS, align 8
  %143 = icmp eq i64 %141, %142
  %144 = zext i1 %143 to i32
  %145 = load i64, i64* %5, align 8
  %146 = call i32 (i32, i8*, ...) @ok(i32 %144, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i64 %145)
  %147 = load i32, i32* %3, align 4
  %148 = call i64 @MsiRecordGetInteger(i32 %147, i32 1)
  store i64 %148, i64* %5, align 8
  %149 = load i64, i64* %5, align 8
  %150 = load i64**, i64*** @ordervals, align 8
  %151 = load i32, i32* %6, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i64*, i64** %150, i64 %152
  %154 = load i64*, i64** %153, align 8
  %155 = getelementptr inbounds i64, i64* %154, i64 0
  %156 = load i64, i64* %155, align 8
  %157 = icmp eq i64 %149, %156
  %158 = zext i1 %157 to i32
  %159 = load i64**, i64*** @ordervals, align 8
  %160 = load i32, i32* %6, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i64*, i64** %159, i64 %161
  %163 = load i64*, i64** %162, align 8
  %164 = getelementptr inbounds i64, i64* %163, i64 0
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* %5, align 8
  %167 = call i32 (i32, i8*, ...) @ok(i32 %158, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0), i64 %165, i64 %166)
  %168 = load i32, i32* %3, align 4
  %169 = call i64 @MsiRecordGetInteger(i32 %168, i32 2)
  store i64 %169, i64* %5, align 8
  %170 = load i64, i64* %5, align 8
  %171 = load i64**, i64*** @ordervals, align 8
  %172 = load i32, i32* %6, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i64*, i64** %171, i64 %173
  %175 = load i64*, i64** %174, align 8
  %176 = getelementptr inbounds i64, i64* %175, i64 1
  %177 = load i64, i64* %176, align 8
  %178 = icmp eq i64 %170, %177
  %179 = zext i1 %178 to i32
  %180 = load i64**, i64*** @ordervals, align 8
  %181 = load i32, i32* %6, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i64*, i64** %180, i64 %182
  %184 = load i64*, i64** %183, align 8
  %185 = getelementptr inbounds i64, i64* %184, i64 1
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* %5, align 8
  %188 = call i32 (i32, i8*, ...) @ok(i32 %179, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0), i64 %186, i64 %187)
  %189 = load i32, i32* %3, align 4
  %190 = call i64 @MsiRecordGetInteger(i32 %189, i32 3)
  store i64 %190, i64* %5, align 8
  %191 = load i64, i64* %5, align 8
  %192 = load i64**, i64*** @ordervals, align 8
  %193 = load i32, i32* %6, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i64*, i64** %192, i64 %194
  %196 = load i64*, i64** %195, align 8
  %197 = getelementptr inbounds i64, i64* %196, i64 2
  %198 = load i64, i64* %197, align 8
  %199 = icmp eq i64 %191, %198
  %200 = zext i1 %199 to i32
  %201 = load i64**, i64*** @ordervals, align 8
  %202 = load i32, i32* %6, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i64*, i64** %201, i64 %203
  %205 = load i64*, i64** %204, align 8
  %206 = getelementptr inbounds i64, i64* %205, i64 2
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* %5, align 8
  %209 = call i32 (i32, i8*, ...) @ok(i32 %200, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0), i64 %207, i64 %208)
  %210 = load i32, i32* %3, align 4
  %211 = call i32 @MsiCloseHandle(i32 %210)
  br label %212

212:                                              ; preds = %138
  %213 = load i32, i32* %6, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %6, align 4
  br label %135

215:                                              ; preds = %135
  %216 = load i32, i32* %2, align 4
  %217 = call i64 @MsiViewFetch(i32 %216, i32* %3)
  store i64 %217, i64* %5, align 8
  %218 = load i64, i64* %5, align 8
  %219 = load i64, i64* @ERROR_NO_MORE_ITEMS, align 8
  %220 = icmp eq i64 %218, %219
  %221 = zext i1 %220 to i32
  %222 = load i64, i64* %5, align 8
  %223 = call i32 (i32, i8*, ...) @ok(i32 %221, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.18, i64 0, i64 0), i64 %222)
  %224 = load i32, i32* %2, align 4
  %225 = call i32 @MsiViewClose(i32 %224)
  %226 = load i32, i32* %2, align 4
  %227 = call i32 @MsiCloseHandle(i32 %226)
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.19, i64 0, i64 0), i8** %4, align 8
  %228 = load i32, i32* %1, align 4
  %229 = load i8*, i8** %4, align 8
  %230 = call i64 @run_query(i32 %228, i32 0, i8* %229)
  store i64 %230, i64* %5, align 8
  %231 = load i64, i64* %5, align 8
  %232 = load i64, i64* @ERROR_SUCCESS, align 8
  %233 = icmp eq i64 %231, %232
  %234 = zext i1 %233 to i32
  %235 = load i64, i64* %5, align 8
  %236 = call i32 (i32, i8*, ...) @ok(i32 %234, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i64 %235)
  store i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.20, i64 0, i64 0), i8** %4, align 8
  %237 = load i32, i32* %1, align 4
  %238 = load i8*, i8** %4, align 8
  %239 = call i64 @run_query(i32 %237, i32 0, i8* %238)
  store i64 %239, i64* %5, align 8
  %240 = load i64, i64* %5, align 8
  %241 = load i64, i64* @ERROR_SUCCESS, align 8
  %242 = icmp eq i64 %240, %241
  %243 = zext i1 %242 to i32
  %244 = load i64, i64* %5, align 8
  %245 = call i32 (i32, i8*, ...) @ok(i32 %243, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i64 %244)
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i64 0, i64 0), i8** %4, align 8
  %246 = load i32, i32* %1, align 4
  %247 = load i8*, i8** %4, align 8
  %248 = call i64 @MsiDatabaseOpenViewA(i32 %246, i8* %247, i32* %2)
  store i64 %248, i64* %5, align 8
  %249 = load i64, i64* %5, align 8
  %250 = load i64, i64* @ERROR_SUCCESS, align 8
  %251 = icmp eq i64 %249, %250
  %252 = zext i1 %251 to i32
  %253 = load i64, i64* %5, align 8
  %254 = call i32 (i32, i8*, ...) @ok(i32 %252, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i64 %253)
  %255 = load i32, i32* %2, align 4
  %256 = call i64 @MsiViewExecute(i32 %255, i32 0)
  store i64 %256, i64* %5, align 8
  %257 = load i64, i64* %5, align 8
  %258 = load i64, i64* @ERROR_SUCCESS, align 8
  %259 = icmp eq i64 %257, %258
  %260 = zext i1 %259 to i32
  %261 = load i64, i64* %5, align 8
  %262 = call i32 (i32, i8*, ...) @ok(i32 %260, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i64 %261)
  store i32 0, i32* %6, align 4
  br label %263

263:                                              ; preds = %340, %215
  %264 = load i32, i32* %6, align 4
  %265 = icmp slt i32 %264, 6
  br i1 %265, label %266, label %343

266:                                              ; preds = %263
  %267 = load i32, i32* %2, align 4
  %268 = call i64 @MsiViewFetch(i32 %267, i32* %3)
  store i64 %268, i64* %5, align 8
  %269 = load i64, i64* %5, align 8
  %270 = load i64, i64* @ERROR_SUCCESS, align 8
  %271 = icmp eq i64 %269, %270
  %272 = zext i1 %271 to i32
  %273 = load i64, i64* %5, align 8
  %274 = call i32 (i32, i8*, ...) @ok(i32 %272, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i64 %273)
  %275 = load i32, i32* %3, align 4
  %276 = call i64 @MsiRecordGetInteger(i32 %275, i32 1)
  store i64 %276, i64* %5, align 8
  %277 = load i64, i64* %5, align 8
  %278 = load i64**, i64*** @ordervals, align 8
  %279 = load i32, i32* %6, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i64*, i64** %278, i64 %280
  %282 = load i64*, i64** %281, align 8
  %283 = getelementptr inbounds i64, i64* %282, i64 0
  %284 = load i64, i64* %283, align 8
  %285 = icmp eq i64 %277, %284
  %286 = zext i1 %285 to i32
  %287 = load i64**, i64*** @ordervals, align 8
  %288 = load i32, i32* %6, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i64*, i64** %287, i64 %289
  %291 = load i64*, i64** %290, align 8
  %292 = getelementptr inbounds i64, i64* %291, i64 0
  %293 = load i64, i64* %292, align 8
  %294 = load i64, i64* %5, align 8
  %295 = call i32 (i32, i8*, ...) @ok(i32 %286, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0), i64 %293, i64 %294)
  %296 = load i32, i32* %3, align 4
  %297 = call i64 @MsiRecordGetInteger(i32 %296, i32 2)
  store i64 %297, i64* %5, align 8
  %298 = load i64, i64* %5, align 8
  %299 = load i64**, i64*** @ordervals, align 8
  %300 = load i32, i32* %6, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i64*, i64** %299, i64 %301
  %303 = load i64*, i64** %302, align 8
  %304 = getelementptr inbounds i64, i64* %303, i64 1
  %305 = load i64, i64* %304, align 8
  %306 = icmp eq i64 %298, %305
  %307 = zext i1 %306 to i32
  %308 = load i64**, i64*** @ordervals, align 8
  %309 = load i32, i32* %6, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds i64*, i64** %308, i64 %310
  %312 = load i64*, i64** %311, align 8
  %313 = getelementptr inbounds i64, i64* %312, i64 1
  %314 = load i64, i64* %313, align 8
  %315 = load i64, i64* %5, align 8
  %316 = call i32 (i32, i8*, ...) @ok(i32 %307, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0), i64 %314, i64 %315)
  %317 = load i32, i32* %3, align 4
  %318 = call i64 @MsiRecordGetInteger(i32 %317, i32 3)
  store i64 %318, i64* %5, align 8
  %319 = load i64, i64* %5, align 8
  %320 = load i64**, i64*** @ordervals, align 8
  %321 = load i32, i32* %6, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds i64*, i64** %320, i64 %322
  %324 = load i64*, i64** %323, align 8
  %325 = getelementptr inbounds i64, i64* %324, i64 2
  %326 = load i64, i64* %325, align 8
  %327 = icmp eq i64 %319, %326
  %328 = zext i1 %327 to i32
  %329 = load i64**, i64*** @ordervals, align 8
  %330 = load i32, i32* %6, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds i64*, i64** %329, i64 %331
  %333 = load i64*, i64** %332, align 8
  %334 = getelementptr inbounds i64, i64* %333, i64 2
  %335 = load i64, i64* %334, align 8
  %336 = load i64, i64* %5, align 8
  %337 = call i32 (i32, i8*, ...) @ok(i32 %328, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0), i64 %335, i64 %336)
  %338 = load i32, i32* %3, align 4
  %339 = call i32 @MsiCloseHandle(i32 %338)
  br label %340

340:                                              ; preds = %266
  %341 = load i32, i32* %6, align 4
  %342 = add nsw i32 %341, 1
  store i32 %342, i32* %6, align 4
  br label %263

343:                                              ; preds = %263
  %344 = load i32, i32* %2, align 4
  %345 = call i64 @MsiViewFetch(i32 %344, i32* %3)
  store i64 %345, i64* %5, align 8
  %346 = load i64, i64* %5, align 8
  %347 = load i64, i64* @ERROR_NO_MORE_ITEMS, align 8
  %348 = icmp eq i64 %346, %347
  %349 = zext i1 %348 to i32
  %350 = load i64, i64* %5, align 8
  %351 = call i32 (i32, i8*, ...) @ok(i32 %349, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.18, i64 0, i64 0), i64 %350)
  %352 = load i32, i32* %2, align 4
  %353 = call i32 @MsiViewClose(i32 %352)
  %354 = load i32, i32* %2, align 4
  %355 = call i32 @MsiCloseHandle(i32 %354)
  %356 = load i32, i32* %1, align 4
  %357 = call i32 @MsiCloseHandle(i32 %356)
  %358 = load i32, i32* @msifile, align 4
  %359 = call i32 @DeleteFileA(i32 %358)
  ret void
}

declare dso_local i32 @create_db(...) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @run_query(i32, i32, i8*) #1

declare dso_local i64 @MsiDatabaseOpenViewA(i32, i8*, i32*) #1

declare dso_local i64 @MsiViewExecute(i32, i32) #1

declare dso_local i64 @MsiViewFetch(i32, i32*) #1

declare dso_local i64 @MsiRecordGetInteger(i32, i32) #1

declare dso_local i32 @MsiCloseHandle(i32) #1

declare dso_local i32 @MsiViewClose(i32) #1

declare dso_local i32 @DeleteFileA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
