; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_package.c_test_MsiSetProperty.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_package.c_test_MsiSetProperty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@ERROR_INSTALL_PACKAGE_REJECTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Not enough rights to perform tests\0A\00", align 1
@msifile = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Expected a valid package %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Prop\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"Val\00", align 1
@ERROR_INVALID_HANDLE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"Expected ERROR_INVALID_HANDLE, got %d\0A\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [42 x i8] c"Expected ERROR_INVALID_PARAMETER, got %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ERROR_FUNCTION_FAILED = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [40 x i8] c"Expected ERROR_FUNCTION_FAILED, got %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"Expected ERROR_SUCCESS, got %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"Expected \22Val\22, got \22%s\22\0A\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"Expected 3, got %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"Nuvo\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"Expected \22Nuvo\22, got \22%s\22\0A\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"Expected 4, got %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"Expected a valid database handle\0A\00", align 1
@.str.15 = private unnamed_addr constant [52 x i8] c"SELECT * FROM `_Property` WHERE `Property` = 'Prop'\00", align 1
@ERROR_BAD_QUERY_SYNTAX = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [41 x i8] c"Expected ERROR_BAD_QUERY_SYNTAX, got %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [51 x i8] c"SELECT * FROM `Property` WHERE `Property` = 'Prop'\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"Expected \22\22, got \22%s\22\0A\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"Expected 0, got %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"BlueTap\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_MsiSetProperty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_MsiSetProperty() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = load i32, i32* @MAX_PATH, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %4, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %5, align 8
  %14 = call i32 (...) @create_package_db()
  %15 = call i32 @package_from_db(i32 %14, i64* %1)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @ERROR_INSTALL_PACKAGE_REJECTED, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %0
  %20 = call i32 @skip(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @msifile, align 4
  %22 = call i32 @DeleteFileA(i32 %21)
  store i32 1, i32* %9, align 4
  br label %222

23:                                               ; preds = %0
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @ERROR_SUCCESS, align 4
  %26 = icmp eq i32 %24, %25
  %27 = zext i1 %26 to i32
  %28 = load i32, i32* %8, align 4
  %29 = call i32 (i32, i8*, ...) @ok(i32 %27, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = call i32 @MsiSetPropertyA(i64 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @ERROR_INVALID_HANDLE, align 4
  %33 = icmp eq i32 %31, %32
  %34 = zext i1 %33 to i32
  %35 = load i32, i32* %8, align 4
  %36 = call i32 (i32, i8*, ...) @ok(i32 %34, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %35)
  %37 = call i32 @MsiSetPropertyA(i64 3735928559, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @ERROR_INVALID_HANDLE, align 4
  %40 = icmp eq i32 %38, %39
  %41 = zext i1 %40 to i32
  %42 = load i32, i32* %8, align 4
  %43 = call i32 (i32, i8*, ...) @ok(i32 %41, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %42)
  %44 = load i64, i64* %1, align 8
  %45 = call i32 @MsiSetPropertyA(i64 %44, i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %48 = icmp eq i32 %46, %47
  %49 = zext i1 %48 to i32
  %50 = load i32, i32* %8, align 4
  %51 = call i32 (i32, i8*, ...) @ok(i32 %49, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i32 %50)
  %52 = load i64, i64* %1, align 8
  %53 = call i32 @MsiSetPropertyA(i64 %52, i8* null, i8* null)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %56 = icmp eq i32 %54, %55
  %57 = zext i1 %56 to i32
  %58 = load i32, i32* %8, align 4
  %59 = call i32 (i32, i8*, ...) @ok(i32 %57, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i32 %58)
  %60 = load i64, i64* %1, align 8
  %61 = call i32 @MsiSetPropertyA(i64 %60, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @ERROR_FUNCTION_FAILED, align 4
  %64 = icmp eq i32 %62, %63
  %65 = zext i1 %64 to i32
  %66 = load i32, i32* %8, align 4
  %67 = call i32 (i32, i8*, ...) @ok(i32 %65, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i32 %66)
  %68 = load i64, i64* %1, align 8
  %69 = call i32 @MsiSetPropertyA(i64 %68, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i8* null)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @ERROR_SUCCESS, align 4
  %72 = icmp eq i32 %70, %71
  %73 = zext i1 %72 to i32
  %74 = load i32, i32* %8, align 4
  %75 = call i32 (i32, i8*, ...) @ok(i32 %73, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i32 %74)
  %76 = load i64, i64* %1, align 8
  %77 = call i32 @MsiSetPropertyA(i64 %76, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @ERROR_SUCCESS, align 4
  %80 = icmp eq i32 %78, %79
  %81 = zext i1 %80 to i32
  %82 = load i32, i32* %8, align 4
  %83 = call i32 (i32, i8*, ...) @ok(i32 %81, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* @MAX_PATH, align 4
  store i32 %84, i32* %7, align 4
  %85 = load i64, i64* %1, align 8
  %86 = call i32 @MsiGetPropertyA(i64 %85, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32* %13, i32* %7)
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* @ERROR_SUCCESS, align 4
  %89 = icmp eq i32 %87, %88
  %90 = zext i1 %89 to i32
  %91 = load i32, i32* %8, align 4
  %92 = call i32 (i32, i8*, ...) @ok(i32 %90, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i32 %91)
  %93 = call i32 @lstrcmpA(i32* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %94 = icmp ne i32 %93, 0
  %95 = xor i1 %94, true
  %96 = zext i1 %95 to i32
  %97 = call i32 (i32, i8*, ...) @ok(i32 %96, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i32* %13)
  %98 = load i32, i32* %7, align 4
  %99 = icmp eq i32 %98, 3
  %100 = zext i1 %99 to i32
  %101 = load i32, i32* %7, align 4
  %102 = call i32 (i32, i8*, ...) @ok(i32 %100, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i32 %101)
  %103 = load i64, i64* %1, align 8
  %104 = call i32 @MsiSetPropertyA(i64 %103, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  store i32 %104, i32* %8, align 4
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* @ERROR_SUCCESS, align 4
  %107 = icmp eq i32 %105, %106
  %108 = zext i1 %107 to i32
  %109 = load i32, i32* %8, align 4
  %110 = call i32 (i32, i8*, ...) @ok(i32 %108, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i32 %109)
  %111 = load i32, i32* @MAX_PATH, align 4
  store i32 %111, i32* %7, align 4
  %112 = load i64, i64* %1, align 8
  %113 = call i32 @MsiGetPropertyA(i64 %112, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32* %13, i32* %7)
  store i32 %113, i32* %8, align 4
  %114 = load i32, i32* %8, align 4
  %115 = load i32, i32* @ERROR_SUCCESS, align 4
  %116 = icmp eq i32 %114, %115
  %117 = zext i1 %116 to i32
  %118 = load i32, i32* %8, align 4
  %119 = call i32 (i32, i8*, ...) @ok(i32 %117, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i32 %118)
  %120 = call i32 @lstrcmpA(i32* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %121 = icmp ne i32 %120, 0
  %122 = xor i1 %121, true
  %123 = zext i1 %122 to i32
  %124 = call i32 (i32, i8*, ...) @ok(i32 %123, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0), i32* %13)
  %125 = load i32, i32* %7, align 4
  %126 = icmp eq i32 %125, 4
  %127 = zext i1 %126 to i32
  %128 = load i32, i32* %7, align 4
  %129 = call i32 (i32, i8*, ...) @ok(i32 %127, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i32 %128)
  %130 = load i64, i64* %1, align 8
  %131 = call i64 @MsiGetActiveDatabase(i64 %130)
  store i64 %131, i64* %2, align 8
  %132 = load i64, i64* %2, align 8
  %133 = icmp ne i64 %132, 0
  %134 = zext i1 %133 to i32
  %135 = call i32 (i32, i8*, ...) @ok(i32 %134, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i64 0, i64 0))
  store i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15, i64 0, i64 0), i8** %6, align 8
  %136 = load i64, i64* %2, align 8
  %137 = load i8*, i8** %6, align 8
  %138 = call i32 @do_query(i64 %136, i8* %137, i64* %3)
  store i32 %138, i32* %8, align 4
  %139 = load i32, i32* %8, align 4
  %140 = load i32, i32* @ERROR_BAD_QUERY_SYNTAX, align 4
  %141 = icmp eq i32 %139, %140
  %142 = zext i1 %141 to i32
  %143 = load i32, i32* %8, align 4
  %144 = call i32 (i32, i8*, ...) @ok(i32 %142, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.16, i64 0, i64 0), i32 %143)
  store i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.17, i64 0, i64 0), i8** %6, align 8
  %145 = load i64, i64* %2, align 8
  %146 = load i8*, i8** %6, align 8
  %147 = call i32 @do_query(i64 %145, i8* %146, i64* %3)
  store i32 %147, i32* %8, align 4
  %148 = load i32, i32* %8, align 4
  %149 = load i32, i32* @ERROR_BAD_QUERY_SYNTAX, align 4
  %150 = icmp eq i32 %148, %149
  %151 = zext i1 %150 to i32
  %152 = load i32, i32* %8, align 4
  %153 = call i32 (i32, i8*, ...) @ok(i32 %151, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.16, i64 0, i64 0), i32 %152)
  %154 = load i64, i64* %2, align 8
  %155 = call i32 @MsiCloseHandle(i64 %154)
  %156 = load i64, i64* %1, align 8
  %157 = call i32 @MsiSetPropertyA(i64 %156, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0))
  store i32 %157, i32* %8, align 4
  %158 = load i32, i32* %8, align 4
  %159 = load i32, i32* @ERROR_SUCCESS, align 4
  %160 = icmp eq i32 %158, %159
  %161 = zext i1 %160 to i32
  %162 = load i32, i32* %8, align 4
  %163 = call i32 (i32, i8*, ...) @ok(i32 %161, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i32 %162)
  %164 = load i32, i32* @MAX_PATH, align 4
  store i32 %164, i32* %7, align 4
  %165 = load i64, i64* %1, align 8
  %166 = call i32 @MsiGetPropertyA(i64 %165, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32* %13, i32* %7)
  store i32 %166, i32* %8, align 4
  %167 = load i32, i32* %8, align 4
  %168 = load i32, i32* @ERROR_SUCCESS, align 4
  %169 = icmp eq i32 %167, %168
  %170 = zext i1 %169 to i32
  %171 = load i32, i32* %8, align 4
  %172 = call i32 (i32, i8*, ...) @ok(i32 %170, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i32 %171)
  %173 = call i32 @lstrcmpA(i32* %13, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0))
  %174 = icmp ne i32 %173, 0
  %175 = xor i1 %174, true
  %176 = zext i1 %175 to i32
  %177 = call i32 (i32, i8*, ...) @ok(i32 %176, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0), i32* %13)
  %178 = load i32, i32* %7, align 4
  %179 = icmp eq i32 %178, 0
  %180 = zext i1 %179 to i32
  %181 = load i32, i32* %7, align 4
  %182 = call i32 (i32, i8*, ...) @ok(i32 %180, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0), i32 %181)
  %183 = load i64, i64* %1, align 8
  %184 = call i32 @MsiSetPropertyA(i64 %183, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i64 0, i64 0))
  store i32 %184, i32* %8, align 4
  %185 = load i32, i32* %8, align 4
  %186 = load i32, i32* @ERROR_SUCCESS, align 4
  %187 = icmp eq i32 %185, %186
  %188 = zext i1 %187 to i32
  %189 = load i32, i32* %8, align 4
  %190 = call i32 (i32, i8*, ...) @ok(i32 %188, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i32 %189)
  %191 = load i64, i64* %1, align 8
  %192 = call i32 @MsiSetPropertyA(i64 %191, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* null)
  store i32 %192, i32* %8, align 4
  %193 = load i32, i32* %8, align 4
  %194 = load i32, i32* @ERROR_SUCCESS, align 4
  %195 = icmp eq i32 %193, %194
  %196 = zext i1 %195 to i32
  %197 = load i32, i32* %8, align 4
  %198 = call i32 (i32, i8*, ...) @ok(i32 %196, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i32 %197)
  %199 = load i32, i32* @MAX_PATH, align 4
  store i32 %199, i32* %7, align 4
  %200 = load i64, i64* %1, align 8
  %201 = call i32 @MsiGetPropertyA(i64 %200, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32* %13, i32* %7)
  store i32 %201, i32* %8, align 4
  %202 = load i32, i32* %8, align 4
  %203 = load i32, i32* @ERROR_SUCCESS, align 4
  %204 = icmp eq i32 %202, %203
  %205 = zext i1 %204 to i32
  %206 = load i32, i32* %8, align 4
  %207 = call i32 (i32, i8*, ...) @ok(i32 %205, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i32 %206)
  %208 = call i32 @lstrcmpA(i32* %13, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0))
  %209 = icmp ne i32 %208, 0
  %210 = xor i1 %209, true
  %211 = zext i1 %210 to i32
  %212 = call i32 (i32, i8*, ...) @ok(i32 %211, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0), i32* %13)
  %213 = load i32, i32* %7, align 4
  %214 = icmp eq i32 %213, 0
  %215 = zext i1 %214 to i32
  %216 = load i32, i32* %7, align 4
  %217 = call i32 (i32, i8*, ...) @ok(i32 %215, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0), i32 %216)
  %218 = load i64, i64* %1, align 8
  %219 = call i32 @MsiCloseHandle(i64 %218)
  %220 = load i32, i32* @msifile, align 4
  %221 = call i32 @DeleteFileA(i32 %220)
  store i32 0, i32* %9, align 4
  br label %222

222:                                              ; preds = %23, %19
  %223 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %223)
  %224 = load i32, i32* %9, align 4
  switch i32 %224, label %226 [
    i32 0, label %225
    i32 1, label %225
  ]

225:                                              ; preds = %222, %222
  ret void

226:                                              ; preds = %222
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @package_from_db(i32, i64*) #2

declare dso_local i32 @create_package_db(...) #2

declare dso_local i32 @skip(i8*) #2

declare dso_local i32 @DeleteFileA(i32) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @MsiSetPropertyA(i64, i8*, i8*) #2

declare dso_local i32 @MsiGetPropertyA(i64, i8*, i32*, i32*) #2

declare dso_local i32 @lstrcmpA(i32*, i8*) #2

declare dso_local i64 @MsiGetActiveDatabase(i64) #2

declare dso_local i32 @do_query(i64, i8*, i64*) #2

declare dso_local i32 @MsiCloseHandle(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
