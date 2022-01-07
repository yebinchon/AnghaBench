; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_path.c_test_RtlGetFullPathName_U.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_path.c_test_RtlGetFullPathName_U.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test = type { i8*, i8*, i8*, i8*, i8* }

@test_RtlGetFullPathName_U.emptyW = internal constant [1 x i8] zeroinitializer, align 1
@test_RtlGetFullPathName_U.deadbeefW = internal constant [9 x i8] c"deadbeef\00", align 1
@test_RtlGetFullPathName_U.tests = internal constant [21 x %struct.test] [%struct.test { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* null, i8* null }, %struct.test { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* null, i8* null }, %struct.test { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* null, i8* null }, %struct.test { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* null, i8* null }, %struct.test { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i8* null, i8* null, i8* null }, %struct.test { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i8* null, i8* null, i8* null }, %struct.test { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i8* null, i8* null, i8* null }, %struct.test { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i8* null, i8* null }, %struct.test { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* null, i8* null }, %struct.test { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* null, i8* null }, %struct.test { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* null, i8* null }, %struct.test { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* null, i8* null }, %struct.test { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* null, i8* null }, %struct.test { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* null, i8* null }, %struct.test { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* null, i8* null }, %struct.test { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* null, i8* null }, %struct.test { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0) }, %struct.test { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i8* null, i8* null, i8* null }, %struct.test { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0) }, %struct.test { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* null, i8* null }, %struct.test zeroinitializer], align 16
@.str = private unnamed_addr constant [8 x i8] c"c:/test\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"c:\\test\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"c:/test     \00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"c:/test.\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"c:/test  ....   ..   \00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"c:/test/  ....   ..   \00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"c:\\test\\\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"c:/test/..\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"c:\\\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"c:/test/.. \00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"c:/TEST\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"c:\\TEST\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"TEST\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"c:/test/file\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"c:\\test\\file\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"c:/test./file\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"c:/test.. /file\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"c:\\test.. \\file\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"c:/test/././file\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"c:/test\\.\\.\\file\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"c:/test/\\.\\.\\file\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"c:/test\\\\.\\.\\file\00", align 1
@.str.24 = private unnamed_addr constant [24 x i8] c"c:/test\\test1\\..\\.\\file\00", align 1
@.str.25 = private unnamed_addr constant [21 x i8] c"c:///test\\.\\.\\file//\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"c:\\test\\file\\\00", align 1
@.str.27 = private unnamed_addr constant [24 x i8] c"c:///test\\..\\file\\..\\//\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"c:/test../file\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"c:\\test.\\file\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"c:\\test..\\file\00", align 1
@MAX_PATH = common dso_local global i32 0, align 4
@.str.31 = private unnamed_addr constant [51 x i8] c"Expected RtlGetFullPathName_U to return 0, got %u\0A\00", align 1
@.str.32 = private unnamed_addr constant [52 x i8] c"Expected the output buffer to be untouched, got %s\0A\00", align 1
@.str.33 = private unnamed_addr constant [52 x i8] c"Expected file part pointer to be untouched, got %p\0A\00", align 1
@.str.34 = private unnamed_addr constant [29 x i8] c"Wrong result %d/%d for \22%s\22\0A\00", align 1
@STATUS_SUCCESS = common dso_local global i64 0, align 8
@.str.35 = private unnamed_addr constant [31 x i8] c"RtlUnicodeToMultiByteN failed\0A\00", align 1
@.str.36 = private unnamed_addr constant [24 x i8] c"Got \22%s\22 expected \22%s\22\0A\00", align 1
@.str.37 = private unnamed_addr constant [24 x i8] c"Got NULL expected \22%s\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_RtlGetFullPathName_U to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_RtlGetFullPathName_U() #0 {
  %1 = alloca %struct.test*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = load i32, i32* @MAX_PATH, align 4
  %12 = mul nsw i32 2, %11
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %2, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %3, align 8
  %16 = load i32, i32* @MAX_PATH, align 4
  %17 = zext i32 %16 to i64
  %18 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %4, align 8
  %19 = load i32, i32* @MAX_PATH, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %5, align 8
  %22 = load i32, i32* @MAX_PATH, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %6, align 8
  store i8* inttoptr (i64 3735928559 to i8*), i8** %8, align 8
  %25 = call i32 @lstrcpyW(i8* %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_RtlGetFullPathName_U.deadbeefW, i64 0, i64 0))
  %26 = load i32, i32* @MAX_PATH, align 4
  %27 = call i32 @pRtlGetFullPathName_U(i8* null, i32 %26, i8* %18, i8** %8)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = load i32, i32* %7, align 4
  %33 = call i32 (i32, i8*, ...) @ok(i32 %31, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.31, i64 0, i64 0), i32 %32)
  %34 = call i32 @lstrcmpW(i8* %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_RtlGetFullPathName_U.deadbeefW, i64 0, i64 0))
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i8* @wine_dbgstr_w(i8* %18)
  %39 = call i32 (i32, i8*, ...) @ok(i32 %37, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.32, i64 0, i64 0), i8* %38)
  %40 = load i8*, i8** %8, align 8
  %41 = icmp eq i8* %40, inttoptr (i64 3735928559 to i8*)
  br i1 %41, label %45, label %42

42:                                               ; preds = %0
  %43 = load i8*, i8** %8, align 8
  %44 = icmp eq i8* %43, null
  br label %45

45:                                               ; preds = %42, %0
  %46 = phi i1 [ true, %0 ], [ %44, %42 ]
  %47 = zext i1 %46 to i32
  %48 = load i8*, i8** %8, align 8
  %49 = call i32 (i32, i8*, ...) @ok(i32 %47, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.33, i64 0, i64 0), i8* %48)
  store i8* inttoptr (i64 3735928559 to i8*), i8** %8, align 8
  %50 = call i32 @lstrcpyW(i8* %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_RtlGetFullPathName_U.deadbeefW, i64 0, i64 0))
  %51 = load i32, i32* @MAX_PATH, align 4
  %52 = call i32 @pRtlGetFullPathName_U(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @test_RtlGetFullPathName_U.emptyW, i64 0, i64 0), i32 %51, i8* %18, i8** %8)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = load i32, i32* %7, align 4
  %58 = call i32 (i32, i8*, ...) @ok(i32 %56, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.31, i64 0, i64 0), i32 %57)
  %59 = call i32 @lstrcmpW(i8* %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_RtlGetFullPathName_U.deadbeefW, i64 0, i64 0))
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = call i8* @wine_dbgstr_w(i8* %18)
  %64 = call i32 (i32, i8*, ...) @ok(i32 %62, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.32, i64 0, i64 0), i8* %63)
  %65 = load i8*, i8** %8, align 8
  %66 = icmp eq i8* %65, inttoptr (i64 3735928559 to i8*)
  br i1 %66, label %70, label %67

67:                                               ; preds = %45
  %68 = load i8*, i8** %8, align 8
  %69 = icmp eq i8* %68, null
  br label %70

70:                                               ; preds = %67, %45
  %71 = phi i1 [ true, %45 ], [ %69, %67 ]
  %72 = zext i1 %71 to i32
  %73 = load i8*, i8** %8, align 8
  %74 = call i32 (i32, i8*, ...) @ok(i32 %72, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.33, i64 0, i64 0), i8* %73)
  store %struct.test* getelementptr inbounds ([21 x %struct.test], [21 x %struct.test]* @test_RtlGetFullPathName_U.tests, i64 0, i64 0), %struct.test** %1, align 8
  br label %75

75:                                               ; preds = %225, %70
  %76 = load %struct.test*, %struct.test** %1, align 8
  %77 = getelementptr inbounds %struct.test, %struct.test* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %228

80:                                               ; preds = %75
  %81 = load %struct.test*, %struct.test** %1, align 8
  %82 = getelementptr inbounds %struct.test, %struct.test* %81, i32 0, i32 1
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @strlen(i8* %83)
  %85 = sext i32 %84 to i64
  %86 = mul i64 %85, 1
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %10, align 4
  %88 = trunc i64 %13 to i32
  %89 = load %struct.test*, %struct.test** %1, align 8
  %90 = getelementptr inbounds %struct.test, %struct.test* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = load %struct.test*, %struct.test** %1, align 8
  %93 = getelementptr inbounds %struct.test, %struct.test* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 @strlen(i8* %94)
  %96 = add nsw i32 %95, 1
  %97 = call i32 @pRtlMultiByteToUnicodeN(i8* %15, i32 %88, i32* null, i8* %91, i32 %96)
  %98 = load i32, i32* @MAX_PATH, align 4
  %99 = call i32 @pRtlGetFullPathName_U(i8* %15, i32 %98, i8* %18, i8** %8)
  store i32 %99, i32* %7, align 4
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* %10, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %120, label %103

103:                                              ; preds = %80
  %104 = load %struct.test*, %struct.test** %1, align 8
  %105 = getelementptr inbounds %struct.test, %struct.test* %104, i32 0, i32 3
  %106 = load i8*, i8** %105, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %108, label %118

108:                                              ; preds = %103
  %109 = load i32, i32* %7, align 4
  %110 = sext i32 %109 to i64
  %111 = load %struct.test*, %struct.test** %1, align 8
  %112 = getelementptr inbounds %struct.test, %struct.test* %111, i32 0, i32 3
  %113 = load i8*, i8** %112, align 8
  %114 = call i32 @strlen(i8* %113)
  %115 = sext i32 %114 to i64
  %116 = mul i64 %115, 1
  %117 = icmp eq i64 %110, %116
  br label %118

118:                                              ; preds = %108, %103
  %119 = phi i1 [ false, %103 ], [ %117, %108 ]
  br label %120

120:                                              ; preds = %118, %80
  %121 = phi i1 [ true, %80 ], [ %119, %118 ]
  %122 = zext i1 %121 to i32
  %123 = load i32, i32* %7, align 4
  %124 = load i32, i32* %10, align 4
  %125 = load %struct.test*, %struct.test** %1, align 8
  %126 = getelementptr inbounds %struct.test, %struct.test* %125, i32 0, i32 0
  %127 = load i8*, i8** %126, align 8
  %128 = call i32 (i32, i8*, ...) @ok(i32 %122, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.34, i64 0, i64 0), i32 %123, i32 %124, i8* %127)
  %129 = load i32, i32* @MAX_PATH, align 4
  %130 = call i32 @lstrlenW(i8* %18)
  %131 = add nsw i32 %130, 1
  %132 = sext i32 %131 to i64
  %133 = mul i64 %132, 1
  %134 = trunc i64 %133 to i32
  %135 = call i64 @pRtlUnicodeToMultiByteN(i32* %21, i32 %129, i32* %9, i8* %18, i32 %134)
  %136 = load i64, i64* @STATUS_SUCCESS, align 8
  %137 = icmp eq i64 %135, %136
  %138 = zext i1 %137 to i32
  %139 = call i32 (i32, i8*, ...) @ok(i32 %138, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.35, i64 0, i64 0))
  %140 = load %struct.test*, %struct.test** %1, align 8
  %141 = getelementptr inbounds %struct.test, %struct.test* %140, i32 0, i32 1
  %142 = load i8*, i8** %141, align 8
  %143 = call i32 @lstrcmpA(i32* %21, i8* %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %159

145:                                              ; preds = %120
  %146 = load %struct.test*, %struct.test** %1, align 8
  %147 = getelementptr inbounds %struct.test, %struct.test* %146, i32 0, i32 3
  %148 = load i8*, i8** %147, align 8
  %149 = icmp ne i8* %148, null
  br i1 %149, label %150, label %157

150:                                              ; preds = %145
  %151 = load %struct.test*, %struct.test** %1, align 8
  %152 = getelementptr inbounds %struct.test, %struct.test* %151, i32 0, i32 3
  %153 = load i8*, i8** %152, align 8
  %154 = call i32 @lstrcmpA(i32* %21, i8* %153)
  %155 = icmp ne i32 %154, 0
  %156 = xor i1 %155, true
  br label %157

157:                                              ; preds = %150, %145
  %158 = phi i1 [ false, %145 ], [ %156, %150 ]
  br label %159

159:                                              ; preds = %157, %120
  %160 = phi i1 [ true, %120 ], [ %158, %157 ]
  %161 = zext i1 %160 to i32
  %162 = load %struct.test*, %struct.test** %1, align 8
  %163 = getelementptr inbounds %struct.test, %struct.test* %162, i32 0, i32 1
  %164 = load i8*, i8** %163, align 8
  %165 = call i32 (i32, i8*, ...) @ok(i32 %161, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.36, i64 0, i64 0), i32* %21, i8* %164)
  %166 = load i8*, i8** %8, align 8
  %167 = icmp ne i8* %166, null
  br i1 %167, label %168, label %213

168:                                              ; preds = %159
  %169 = load i32, i32* @MAX_PATH, align 4
  %170 = load i8*, i8** %8, align 8
  %171 = load i8*, i8** %8, align 8
  %172 = call i32 @lstrlenW(i8* %171)
  %173 = add nsw i32 %172, 1
  %174 = sext i32 %173 to i64
  %175 = mul i64 %174, 1
  %176 = trunc i64 %175 to i32
  %177 = call i64 @pRtlUnicodeToMultiByteN(i32* %24, i32 %169, i32* %9, i8* %170, i32 %176)
  %178 = load i64, i64* @STATUS_SUCCESS, align 8
  %179 = icmp eq i64 %177, %178
  %180 = zext i1 %179 to i32
  %181 = call i32 (i32, i8*, ...) @ok(i32 %180, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.35, i64 0, i64 0))
  %182 = load %struct.test*, %struct.test** %1, align 8
  %183 = getelementptr inbounds %struct.test, %struct.test* %182, i32 0, i32 2
  %184 = load i8*, i8** %183, align 8
  %185 = icmp ne i8* %184, null
  br i1 %185, label %186, label %192

186:                                              ; preds = %168
  %187 = load %struct.test*, %struct.test** %1, align 8
  %188 = getelementptr inbounds %struct.test, %struct.test* %187, i32 0, i32 2
  %189 = load i8*, i8** %188, align 8
  %190 = call i32 @lstrcmpA(i32* %24, i8* %189)
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %206

192:                                              ; preds = %186, %168
  %193 = load %struct.test*, %struct.test** %1, align 8
  %194 = getelementptr inbounds %struct.test, %struct.test* %193, i32 0, i32 4
  %195 = load i8*, i8** %194, align 8
  %196 = icmp ne i8* %195, null
  br i1 %196, label %197, label %204

197:                                              ; preds = %192
  %198 = load %struct.test*, %struct.test** %1, align 8
  %199 = getelementptr inbounds %struct.test, %struct.test* %198, i32 0, i32 4
  %200 = load i8*, i8** %199, align 8
  %201 = call i32 @lstrcmpA(i32* %24, i8* %200)
  %202 = icmp ne i32 %201, 0
  %203 = xor i1 %202, true
  br label %204

204:                                              ; preds = %197, %192
  %205 = phi i1 [ false, %192 ], [ %203, %197 ]
  br label %206

206:                                              ; preds = %204, %186
  %207 = phi i1 [ true, %186 ], [ %205, %204 ]
  %208 = zext i1 %207 to i32
  %209 = load %struct.test*, %struct.test** %1, align 8
  %210 = getelementptr inbounds %struct.test, %struct.test* %209, i32 0, i32 2
  %211 = load i8*, i8** %210, align 8
  %212 = call i32 (i32, i8*, ...) @ok(i32 %208, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.36, i64 0, i64 0), i32* %24, i8* %211)
  br label %224

213:                                              ; preds = %159
  %214 = load %struct.test*, %struct.test** %1, align 8
  %215 = getelementptr inbounds %struct.test, %struct.test* %214, i32 0, i32 2
  %216 = load i8*, i8** %215, align 8
  %217 = icmp ne i8* %216, null
  %218 = xor i1 %217, true
  %219 = zext i1 %218 to i32
  %220 = load %struct.test*, %struct.test** %1, align 8
  %221 = getelementptr inbounds %struct.test, %struct.test* %220, i32 0, i32 2
  %222 = load i8*, i8** %221, align 8
  %223 = call i32 (i32, i8*, ...) @ok(i32 %219, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.37, i64 0, i64 0), i8* %222)
  br label %224

224:                                              ; preds = %213, %206
  br label %225

225:                                              ; preds = %224
  %226 = load %struct.test*, %struct.test** %1, align 8
  %227 = getelementptr inbounds %struct.test, %struct.test* %226, i32 1
  store %struct.test* %227, %struct.test** %1, align 8
  br label %75

228:                                              ; preds = %75
  %229 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %229)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @lstrcpyW(i8*, i8*) #2

declare dso_local i32 @pRtlGetFullPathName_U(i8*, i32, i8*, i8**) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @lstrcmpW(i8*, i8*) #2

declare dso_local i8* @wine_dbgstr_w(i8*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @pRtlMultiByteToUnicodeN(i8*, i32, i32*, i8*, i32) #2

declare dso_local i64 @pRtlUnicodeToMultiByteN(i32*, i32, i32*, i8*, i32) #2

declare dso_local i32 @lstrlenW(i8*) #2

declare dso_local i32 @lstrcmpA(i32*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
