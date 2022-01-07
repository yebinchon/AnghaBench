; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_volume.c_test_GetVolumePathNameA.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_volume.c_test_GetVolumePathNameA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i8*, i8*, i64, i64, i64 }

@MAX_PATH = common dso_local global i32 0, align 4
@ERROR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"C:\\\00", align 1
@ERROR_FILENAME_EXCED_RANGE = common dso_local global i64 0, align 8
@NO_ERROR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"c:\\\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"C::\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"\\\\$$$\00", align 1
@ERROR_INVALID_NAME = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [20 x i8] c"C:\\windows\\system32\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"C:\\windows\\system32\\AnInvalidFolder\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"\\\\?\\C:\\AnInvalidFolder\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"\\\\?\\C:\\\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"\\\\?\\InvalidDrive:\\AnInvalidFolder\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"\\\\?\\InvalidDrive:\\\00", align 1
@.str.11 = private unnamed_addr constant [63 x i8] c"\\\\?\\Volume{00000000-00-0000-0000-000000000000}\\AnInvalidFolder\00", align 1
@.str.12 = private unnamed_addr constant [48 x i8] c"\\\\?\\Volume{00000000-00-0000-0000-000000000000}\\\00", align 1
@.str.13 = private unnamed_addr constant [44 x i8] c"\\\\ReallyBogus\\InvalidDrive:\\AnInvalidFolder\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"\\\\ReallyBogus\\InvalidDrive:\\\00", align 1
@ERROR_MORE_DATA = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [4 x i8] c"M::\00", align 1
@ERROR_FILE_NOT_FOUND = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [30 x i8] c"InvalidDrive:\\AnInvalidFolder\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"%CurrentDrive%\\\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"\\??\\CdRom0\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"\\??\\ReallyBogus\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"C:\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"\\\\?\\C:\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"\\\\?\\c:\\AnInvalidFolder\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"\\\\?\\c:\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"C:/\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"M:/\00", align 1
@.str.26 = private unnamed_addr constant [27 x i8] c"C:ABC:DEF:\\AnInvalidFolder\00", align 1
@.str.27 = private unnamed_addr constant [27 x i8] c"?:ABC:DEF:\\AnInvalidFolder\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"?:\\\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"relative/path\00", align 1
@.str.30 = private unnamed_addr constant [26 x i8] c"/unix-style/absolute/path\00", align 1
@.str.31 = private unnamed_addr constant [19 x i8] c"\\??\\C:\\NonExistent\00", align 1
@.str.32 = private unnamed_addr constant [19 x i8] c"\\??\\M:\\NonExistent\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"somefile:def\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"s:omefile\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"S:\\\00", align 1
@.str.36 = private unnamed_addr constant [49 x i8] c"Failed to obtain the current working directory.\0A\00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c"CurrentDrive\00", align 1
@.str.38 = private unnamed_addr constant [70 x i8] c"Failed to set an environment variable for the current working drive.\0A\00", align 1
@.str.39 = private unnamed_addr constant [44 x i8] c"GetVolumePathName test %d %s unexpectedly.\0A\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"failed\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"succeeded\00", align 1
@.str.42 = private unnamed_addr constant [72 x i8] c"GetVolumePathName test %d unexpectedly returned path %s (expected %s).\0A\00", align 1
@.str.43 = private unnamed_addr constant [77 x i8] c"GetVolumePathName test %d unexpectedly returned error 0x%x (expected 0x%x).\0A\00", align 1
@.str.44 = private unnamed_addr constant [63 x i8] c"GetVolumePathName test %d corrupted byte after end of buffer.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_GetVolumePathNameA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GetVolumePathNameA() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca [42 x %struct.anon], align 16
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = load i32, i32* @MAX_PATH, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %1, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %2, align 8
  %18 = load i32, i32* @MAX_PATH, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %3, align 8
  %21 = getelementptr inbounds [42 x %struct.anon], [42 x %struct.anon]* %4, i64 0, i64 0
  %22 = getelementptr inbounds %struct.anon, %struct.anon* %21, i32 0, i32 0
  store i8* null, i8** %22, align 8
  %23 = getelementptr inbounds %struct.anon, %struct.anon* %21, i32 0, i32 1
  store i8* null, i8** %23, align 8
  %24 = getelementptr inbounds %struct.anon, %struct.anon* %21, i32 0, i32 2
  store i64 0, i64* %24, align 8
  %25 = getelementptr inbounds %struct.anon, %struct.anon* %21, i32 0, i32 3
  %26 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  store i64 %26, i64* %25, align 8
  %27 = getelementptr inbounds %struct.anon, %struct.anon* %21, i32 0, i32 4
  store i64 3735928559, i64* %27, align 8
  %28 = getelementptr inbounds %struct.anon, %struct.anon* %21, i64 1
  %29 = getelementptr inbounds %struct.anon, %struct.anon* %28, i32 0, i32 0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %29, align 8
  %30 = getelementptr inbounds %struct.anon, %struct.anon* %28, i32 0, i32 1
  store i8* null, i8** %30, align 8
  %31 = getelementptr inbounds %struct.anon, %struct.anon* %28, i32 0, i32 2
  store i64 0, i64* %31, align 8
  %32 = getelementptr inbounds %struct.anon, %struct.anon* %28, i32 0, i32 3
  %33 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  store i64 %33, i64* %32, align 8
  %34 = getelementptr inbounds %struct.anon, %struct.anon* %28, i32 0, i32 4
  store i64 3735928559, i64* %34, align 8
  %35 = getelementptr inbounds %struct.anon, %struct.anon* %28, i64 1
  %36 = getelementptr inbounds %struct.anon, %struct.anon* %35, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %36, align 8
  %37 = getelementptr inbounds %struct.anon, %struct.anon* %35, i32 0, i32 1
  store i8* null, i8** %37, align 8
  %38 = getelementptr inbounds %struct.anon, %struct.anon* %35, i32 0, i32 2
  store i64 0, i64* %38, align 8
  %39 = getelementptr inbounds %struct.anon, %struct.anon* %35, i32 0, i32 3
  %40 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  store i64 %40, i64* %39, align 8
  %41 = getelementptr inbounds %struct.anon, %struct.anon* %35, i32 0, i32 4
  %42 = load i64, i64* @ERROR_FILENAME_EXCED_RANGE, align 8
  store i64 %42, i64* %41, align 8
  %43 = getelementptr inbounds %struct.anon, %struct.anon* %35, i64 1
  %44 = getelementptr inbounds %struct.anon, %struct.anon* %43, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %44, align 8
  %45 = getelementptr inbounds %struct.anon, %struct.anon* %43, i32 0, i32 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %45, align 8
  %46 = getelementptr inbounds %struct.anon, %struct.anon* %43, i32 0, i32 2
  store i64 0, i64* %46, align 8
  %47 = getelementptr inbounds %struct.anon, %struct.anon* %43, i32 0, i32 3
  %48 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  store i64 %48, i64* %47, align 8
  %49 = getelementptr inbounds %struct.anon, %struct.anon* %43, i32 0, i32 4
  %50 = load i64, i64* @ERROR_FILENAME_EXCED_RANGE, align 8
  store i64 %50, i64* %49, align 8
  %51 = getelementptr inbounds %struct.anon, %struct.anon* %43, i64 1
  %52 = getelementptr inbounds %struct.anon, %struct.anon* %51, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %52, align 8
  %53 = getelementptr inbounds %struct.anon, %struct.anon* %51, i32 0, i32 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %53, align 8
  %54 = getelementptr inbounds %struct.anon, %struct.anon* %51, i32 0, i32 2
  store i64 1, i64* %54, align 8
  %55 = getelementptr inbounds %struct.anon, %struct.anon* %51, i32 0, i32 3
  %56 = load i64, i64* @ERROR_FILENAME_EXCED_RANGE, align 8
  store i64 %56, i64* %55, align 8
  %57 = getelementptr inbounds %struct.anon, %struct.anon* %51, i32 0, i32 4
  %58 = load i64, i64* @NO_ERROR, align 8
  store i64 %58, i64* %57, align 8
  %59 = getelementptr inbounds %struct.anon, %struct.anon* %51, i64 1
  %60 = getelementptr inbounds %struct.anon, %struct.anon* %59, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %60, align 8
  %61 = getelementptr inbounds %struct.anon, %struct.anon* %59, i32 0, i32 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %61, align 8
  %62 = getelementptr inbounds %struct.anon, %struct.anon* %59, i32 0, i32 2
  store i64 %15, i64* %62, align 8
  %63 = getelementptr inbounds %struct.anon, %struct.anon* %59, i32 0, i32 3
  %64 = load i64, i64* @NO_ERROR, align 8
  store i64 %64, i64* %63, align 8
  %65 = getelementptr inbounds %struct.anon, %struct.anon* %59, i32 0, i32 4
  %66 = load i64, i64* @NO_ERROR, align 8
  store i64 %66, i64* %65, align 8
  %67 = getelementptr inbounds %struct.anon, %struct.anon* %59, i64 1
  %68 = getelementptr inbounds %struct.anon, %struct.anon* %67, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %68, align 8
  %69 = getelementptr inbounds %struct.anon, %struct.anon* %67, i32 0, i32 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %69, align 8
  %70 = getelementptr inbounds %struct.anon, %struct.anon* %67, i32 0, i32 2
  store i64 %15, i64* %70, align 8
  %71 = getelementptr inbounds %struct.anon, %struct.anon* %67, i32 0, i32 3
  %72 = load i64, i64* @NO_ERROR, align 8
  store i64 %72, i64* %71, align 8
  %73 = getelementptr inbounds %struct.anon, %struct.anon* %67, i32 0, i32 4
  %74 = load i64, i64* @NO_ERROR, align 8
  store i64 %74, i64* %73, align 8
  %75 = getelementptr inbounds %struct.anon, %struct.anon* %67, i64 1
  %76 = getelementptr inbounds %struct.anon, %struct.anon* %75, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %76, align 8
  %77 = getelementptr inbounds %struct.anon, %struct.anon* %75, i32 0, i32 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %77, align 8
  %78 = getelementptr inbounds %struct.anon, %struct.anon* %75, i32 0, i32 2
  store i64 %15, i64* %78, align 8
  %79 = getelementptr inbounds %struct.anon, %struct.anon* %75, i32 0, i32 3
  %80 = load i64, i64* @NO_ERROR, align 8
  store i64 %80, i64* %79, align 8
  %81 = getelementptr inbounds %struct.anon, %struct.anon* %75, i32 0, i32 4
  %82 = load i64, i64* @NO_ERROR, align 8
  store i64 %82, i64* %81, align 8
  %83 = getelementptr inbounds %struct.anon, %struct.anon* %75, i64 1
  %84 = getelementptr inbounds %struct.anon, %struct.anon* %83, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8** %84, align 8
  %85 = getelementptr inbounds %struct.anon, %struct.anon* %83, i32 0, i32 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %85, align 8
  %86 = getelementptr inbounds %struct.anon, %struct.anon* %83, i32 0, i32 2
  store i64 1, i64* %86, align 8
  %87 = getelementptr inbounds %struct.anon, %struct.anon* %83, i32 0, i32 3
  %88 = load i64, i64* @ERROR_INVALID_NAME, align 8
  store i64 %88, i64* %87, align 8
  %89 = getelementptr inbounds %struct.anon, %struct.anon* %83, i32 0, i32 4
  %90 = load i64, i64* @ERROR_FILENAME_EXCED_RANGE, align 8
  store i64 %90, i64* %89, align 8
  %91 = getelementptr inbounds %struct.anon, %struct.anon* %83, i64 1
  %92 = getelementptr inbounds %struct.anon, %struct.anon* %91, i32 0, i32 0
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8** %92, align 8
  %93 = getelementptr inbounds %struct.anon, %struct.anon* %91, i32 0, i32 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %93, align 8
  %94 = getelementptr inbounds %struct.anon, %struct.anon* %91, i32 0, i32 2
  store i64 %15, i64* %94, align 8
  %95 = getelementptr inbounds %struct.anon, %struct.anon* %91, i32 0, i32 3
  %96 = load i64, i64* @NO_ERROR, align 8
  store i64 %96, i64* %95, align 8
  %97 = getelementptr inbounds %struct.anon, %struct.anon* %91, i32 0, i32 4
  %98 = load i64, i64* @NO_ERROR, align 8
  store i64 %98, i64* %97, align 8
  %99 = getelementptr inbounds %struct.anon, %struct.anon* %91, i64 1
  %100 = getelementptr inbounds %struct.anon, %struct.anon* %99, i32 0, i32 0
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i8** %100, align 8
  %101 = getelementptr inbounds %struct.anon, %struct.anon* %99, i32 0, i32 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %101, align 8
  %102 = getelementptr inbounds %struct.anon, %struct.anon* %99, i32 0, i32 2
  store i64 %15, i64* %102, align 8
  %103 = getelementptr inbounds %struct.anon, %struct.anon* %99, i32 0, i32 3
  %104 = load i64, i64* @NO_ERROR, align 8
  store i64 %104, i64* %103, align 8
  %105 = getelementptr inbounds %struct.anon, %struct.anon* %99, i32 0, i32 4
  %106 = load i64, i64* @NO_ERROR, align 8
  store i64 %106, i64* %105, align 8
  %107 = getelementptr inbounds %struct.anon, %struct.anon* %99, i64 1
  %108 = getelementptr inbounds %struct.anon, %struct.anon* %107, i32 0, i32 0
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i8** %108, align 8
  %109 = getelementptr inbounds %struct.anon, %struct.anon* %107, i32 0, i32 1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8** %109, align 8
  %110 = getelementptr inbounds %struct.anon, %struct.anon* %107, i32 0, i32 2
  store i64 %15, i64* %110, align 8
  %111 = getelementptr inbounds %struct.anon, %struct.anon* %107, i32 0, i32 3
  %112 = load i64, i64* @NO_ERROR, align 8
  store i64 %112, i64* %111, align 8
  %113 = getelementptr inbounds %struct.anon, %struct.anon* %107, i32 0, i32 4
  %114 = load i64, i64* @NO_ERROR, align 8
  store i64 %114, i64* %113, align 8
  %115 = getelementptr inbounds %struct.anon, %struct.anon* %107, i64 1
  %116 = getelementptr inbounds %struct.anon, %struct.anon* %115, i32 0, i32 0
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0), i8** %116, align 8
  %117 = getelementptr inbounds %struct.anon, %struct.anon* %115, i32 0, i32 1
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i8** %117, align 8
  %118 = getelementptr inbounds %struct.anon, %struct.anon* %115, i32 0, i32 2
  store i64 %15, i64* %118, align 8
  %119 = getelementptr inbounds %struct.anon, %struct.anon* %115, i32 0, i32 3
  %120 = load i64, i64* @ERROR_INVALID_NAME, align 8
  store i64 %120, i64* %119, align 8
  %121 = getelementptr inbounds %struct.anon, %struct.anon* %115, i32 0, i32 4
  %122 = load i64, i64* @NO_ERROR, align 8
  store i64 %122, i64* %121, align 8
  %123 = getelementptr inbounds %struct.anon, %struct.anon* %115, i64 1
  %124 = getelementptr inbounds %struct.anon, %struct.anon* %123, i32 0, i32 0
  store i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.11, i64 0, i64 0), i8** %124, align 8
  %125 = getelementptr inbounds %struct.anon, %struct.anon* %123, i32 0, i32 1
  store i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.12, i64 0, i64 0), i8** %125, align 8
  %126 = getelementptr inbounds %struct.anon, %struct.anon* %123, i32 0, i32 2
  store i64 %15, i64* %126, align 8
  %127 = getelementptr inbounds %struct.anon, %struct.anon* %123, i32 0, i32 3
  %128 = load i64, i64* @ERROR_INVALID_NAME, align 8
  store i64 %128, i64* %127, align 8
  %129 = getelementptr inbounds %struct.anon, %struct.anon* %123, i32 0, i32 4
  %130 = load i64, i64* @NO_ERROR, align 8
  store i64 %130, i64* %129, align 8
  %131 = getelementptr inbounds %struct.anon, %struct.anon* %123, i64 1
  %132 = getelementptr inbounds %struct.anon, %struct.anon* %131, i32 0, i32 0
  store i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13, i64 0, i64 0), i8** %132, align 8
  %133 = getelementptr inbounds %struct.anon, %struct.anon* %131, i32 0, i32 1
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i8** %133, align 8
  %134 = getelementptr inbounds %struct.anon, %struct.anon* %131, i32 0, i32 2
  store i64 %15, i64* %134, align 8
  %135 = getelementptr inbounds %struct.anon, %struct.anon* %131, i32 0, i32 3
  %136 = load i64, i64* @ERROR_INVALID_NAME, align 8
  store i64 %136, i64* %135, align 8
  %137 = getelementptr inbounds %struct.anon, %struct.anon* %131, i32 0, i32 4
  %138 = load i64, i64* @NO_ERROR, align 8
  store i64 %138, i64* %137, align 8
  %139 = getelementptr inbounds %struct.anon, %struct.anon* %131, i64 1
  %140 = getelementptr inbounds %struct.anon, %struct.anon* %139, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %140, align 8
  %141 = getelementptr inbounds %struct.anon, %struct.anon* %139, i32 0, i32 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %141, align 8
  %142 = getelementptr inbounds %struct.anon, %struct.anon* %139, i32 0, i32 2
  store i64 4, i64* %142, align 8
  %143 = getelementptr inbounds %struct.anon, %struct.anon* %139, i32 0, i32 3
  %144 = load i64, i64* @NO_ERROR, align 8
  store i64 %144, i64* %143, align 8
  %145 = getelementptr inbounds %struct.anon, %struct.anon* %139, i32 0, i32 4
  %146 = load i64, i64* @ERROR_MORE_DATA, align 8
  store i64 %146, i64* %145, align 8
  %147 = getelementptr inbounds %struct.anon, %struct.anon* %139, i64 1
  %148 = getelementptr inbounds %struct.anon, %struct.anon* %147, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i8** %148, align 8
  %149 = getelementptr inbounds %struct.anon, %struct.anon* %147, i32 0, i32 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %149, align 8
  %150 = getelementptr inbounds %struct.anon, %struct.anon* %147, i32 0, i32 2
  store i64 4, i64* %150, align 8
  %151 = getelementptr inbounds %struct.anon, %struct.anon* %147, i32 0, i32 3
  %152 = load i64, i64* @ERROR_FILE_NOT_FOUND, align 8
  store i64 %152, i64* %151, align 8
  %153 = getelementptr inbounds %struct.anon, %struct.anon* %147, i32 0, i32 4
  %154 = load i64, i64* @ERROR_MORE_DATA, align 8
  store i64 %154, i64* %153, align 8
  %155 = getelementptr inbounds %struct.anon, %struct.anon* %147, i64 1
  %156 = getelementptr inbounds %struct.anon, %struct.anon* %155, i32 0, i32 0
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.16, i64 0, i64 0), i8** %156, align 8
  %157 = getelementptr inbounds %struct.anon, %struct.anon* %155, i32 0, i32 1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i8** %157, align 8
  %158 = getelementptr inbounds %struct.anon, %struct.anon* %155, i32 0, i32 2
  store i64 %15, i64* %158, align 8
  %159 = getelementptr inbounds %struct.anon, %struct.anon* %155, i32 0, i32 3
  %160 = load i64, i64* @NO_ERROR, align 8
  store i64 %160, i64* %159, align 8
  %161 = getelementptr inbounds %struct.anon, %struct.anon* %155, i32 0, i32 4
  %162 = load i64, i64* @NO_ERROR, align 8
  store i64 %162, i64* %161, align 8
  %163 = getelementptr inbounds %struct.anon, %struct.anon* %155, i64 1
  %164 = getelementptr inbounds %struct.anon, %struct.anon* %163, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0), i8** %164, align 8
  %165 = getelementptr inbounds %struct.anon, %struct.anon* %163, i32 0, i32 1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i8** %165, align 8
  %166 = getelementptr inbounds %struct.anon, %struct.anon* %163, i32 0, i32 2
  store i64 %15, i64* %166, align 8
  %167 = getelementptr inbounds %struct.anon, %struct.anon* %163, i32 0, i32 3
  %168 = load i64, i64* @NO_ERROR, align 8
  store i64 %168, i64* %167, align 8
  %169 = getelementptr inbounds %struct.anon, %struct.anon* %163, i32 0, i32 4
  %170 = load i64, i64* @NO_ERROR, align 8
  store i64 %170, i64* %169, align 8
  %171 = getelementptr inbounds %struct.anon, %struct.anon* %163, i64 1
  %172 = getelementptr inbounds %struct.anon, %struct.anon* %171, i32 0, i32 0
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0), i8** %172, align 8
  %173 = getelementptr inbounds %struct.anon, %struct.anon* %171, i32 0, i32 1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i8** %173, align 8
  %174 = getelementptr inbounds %struct.anon, %struct.anon* %171, i32 0, i32 2
  store i64 %15, i64* %174, align 8
  %175 = getelementptr inbounds %struct.anon, %struct.anon* %171, i32 0, i32 3
  %176 = load i64, i64* @NO_ERROR, align 8
  store i64 %176, i64* %175, align 8
  %177 = getelementptr inbounds %struct.anon, %struct.anon* %171, i32 0, i32 4
  %178 = load i64, i64* @NO_ERROR, align 8
  store i64 %178, i64* %177, align 8
  %179 = getelementptr inbounds %struct.anon, %struct.anon* %171, i64 1
  %180 = getelementptr inbounds %struct.anon, %struct.anon* %179, i32 0, i32 0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), i8** %180, align 8
  %181 = getelementptr inbounds %struct.anon, %struct.anon* %179, i32 0, i32 1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), i8** %181, align 8
  %182 = getelementptr inbounds %struct.anon, %struct.anon* %179, i32 0, i32 2
  store i64 2, i64* %182, align 8
  %183 = getelementptr inbounds %struct.anon, %struct.anon* %179, i32 0, i32 3
  %184 = load i64, i64* @ERROR_FILENAME_EXCED_RANGE, align 8
  store i64 %184, i64* %183, align 8
  %185 = getelementptr inbounds %struct.anon, %struct.anon* %179, i32 0, i32 4
  %186 = load i64, i64* @NO_ERROR, align 8
  store i64 %186, i64* %185, align 8
  %187 = getelementptr inbounds %struct.anon, %struct.anon* %179, i64 1
  %188 = getelementptr inbounds %struct.anon, %struct.anon* %187, i32 0, i32 0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), i8** %188, align 8
  %189 = getelementptr inbounds %struct.anon, %struct.anon* %187, i32 0, i32 1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), i8** %189, align 8
  %190 = getelementptr inbounds %struct.anon, %struct.anon* %187, i32 0, i32 2
  store i64 3, i64* %190, align 8
  %191 = getelementptr inbounds %struct.anon, %struct.anon* %187, i32 0, i32 3
  %192 = load i64, i64* @NO_ERROR, align 8
  store i64 %192, i64* %191, align 8
  %193 = getelementptr inbounds %struct.anon, %struct.anon* %187, i32 0, i32 4
  %194 = load i64, i64* @ERROR_FILENAME_EXCED_RANGE, align 8
  store i64 %194, i64* %193, align 8
  %195 = getelementptr inbounds %struct.anon, %struct.anon* %187, i64 1
  %196 = getelementptr inbounds %struct.anon, %struct.anon* %195, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %196, align 8
  %197 = getelementptr inbounds %struct.anon, %struct.anon* %195, i32 0, i32 1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), i8** %197, align 8
  %198 = getelementptr inbounds %struct.anon, %struct.anon* %195, i32 0, i32 2
  store i64 2, i64* %198, align 8
  %199 = getelementptr inbounds %struct.anon, %struct.anon* %195, i32 0, i32 3
  %200 = load i64, i64* @ERROR_FILENAME_EXCED_RANGE, align 8
  store i64 %200, i64* %199, align 8
  %201 = getelementptr inbounds %struct.anon, %struct.anon* %195, i32 0, i32 4
  %202 = load i64, i64* @NO_ERROR, align 8
  store i64 %202, i64* %201, align 8
  %203 = getelementptr inbounds %struct.anon, %struct.anon* %195, i64 1
  %204 = getelementptr inbounds %struct.anon, %struct.anon* %203, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %204, align 8
  %205 = getelementptr inbounds %struct.anon, %struct.anon* %203, i32 0, i32 1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), i8** %205, align 8
  %206 = getelementptr inbounds %struct.anon, %struct.anon* %203, i32 0, i32 2
  store i64 3, i64* %206, align 8
  %207 = getelementptr inbounds %struct.anon, %struct.anon* %203, i32 0, i32 3
  %208 = load i64, i64* @NO_ERROR, align 8
  store i64 %208, i64* %207, align 8
  %209 = getelementptr inbounds %struct.anon, %struct.anon* %203, i32 0, i32 4
  %210 = load i64, i64* @ERROR_FILENAME_EXCED_RANGE, align 8
  store i64 %210, i64* %209, align 8
  %211 = getelementptr inbounds %struct.anon, %struct.anon* %203, i64 1
  %212 = getelementptr inbounds %struct.anon, %struct.anon* %211, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %212, align 8
  %213 = getelementptr inbounds %struct.anon, %struct.anon* %211, i32 0, i32 1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), i8** %213, align 8
  %214 = getelementptr inbounds %struct.anon, %struct.anon* %211, i32 0, i32 2
  store i64 2, i64* %214, align 8
  %215 = getelementptr inbounds %struct.anon, %struct.anon* %211, i32 0, i32 3
  %216 = load i64, i64* @ERROR_FILENAME_EXCED_RANGE, align 8
  store i64 %216, i64* %215, align 8
  %217 = getelementptr inbounds %struct.anon, %struct.anon* %211, i32 0, i32 4
  %218 = load i64, i64* @NO_ERROR, align 8
  store i64 %218, i64* %217, align 8
  %219 = getelementptr inbounds %struct.anon, %struct.anon* %211, i64 1
  %220 = getelementptr inbounds %struct.anon, %struct.anon* %219, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %220, align 8
  %221 = getelementptr inbounds %struct.anon, %struct.anon* %219, i32 0, i32 1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), i8** %221, align 8
  %222 = getelementptr inbounds %struct.anon, %struct.anon* %219, i32 0, i32 2
  store i64 3, i64* %222, align 8
  %223 = getelementptr inbounds %struct.anon, %struct.anon* %219, i32 0, i32 3
  %224 = load i64, i64* @NO_ERROR, align 8
  store i64 %224, i64* %223, align 8
  %225 = getelementptr inbounds %struct.anon, %struct.anon* %219, i32 0, i32 4
  %226 = load i64, i64* @ERROR_FILENAME_EXCED_RANGE, align 8
  store i64 %226, i64* %225, align 8
  %227 = getelementptr inbounds %struct.anon, %struct.anon* %219, i64 1
  %228 = getelementptr inbounds %struct.anon, %struct.anon* %227, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %228, align 8
  %229 = getelementptr inbounds %struct.anon, %struct.anon* %227, i32 0, i32 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %229, align 8
  %230 = getelementptr inbounds %struct.anon, %struct.anon* %227, i32 0, i32 2
  store i64 4, i64* %230, align 8
  %231 = getelementptr inbounds %struct.anon, %struct.anon* %227, i32 0, i32 3
  %232 = load i64, i64* @NO_ERROR, align 8
  store i64 %232, i64* %231, align 8
  %233 = getelementptr inbounds %struct.anon, %struct.anon* %227, i32 0, i32 4
  %234 = load i64, i64* @ERROR_MORE_DATA, align 8
  store i64 %234, i64* %233, align 8
  %235 = getelementptr inbounds %struct.anon, %struct.anon* %227, i64 1
  %236 = getelementptr inbounds %struct.anon, %struct.anon* %235, i32 0, i32 0
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i8** %236, align 8
  %237 = getelementptr inbounds %struct.anon, %struct.anon* %235, i32 0, i32 1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), i8** %237, align 8
  %238 = getelementptr inbounds %struct.anon, %struct.anon* %235, i32 0, i32 2
  store i64 3, i64* %238, align 8
  %239 = getelementptr inbounds %struct.anon, %struct.anon* %235, i32 0, i32 3
  %240 = load i64, i64* @NO_ERROR, align 8
  store i64 %240, i64* %239, align 8
  %241 = getelementptr inbounds %struct.anon, %struct.anon* %235, i32 0, i32 4
  %242 = load i64, i64* @ERROR_FILENAME_EXCED_RANGE, align 8
  store i64 %242, i64* %241, align 8
  %243 = getelementptr inbounds %struct.anon, %struct.anon* %235, i64 1
  %244 = getelementptr inbounds %struct.anon, %struct.anon* %243, i32 0, i32 0
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i8** %244, align 8
  %245 = getelementptr inbounds %struct.anon, %struct.anon* %243, i32 0, i32 1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0), i8** %245, align 8
  %246 = getelementptr inbounds %struct.anon, %struct.anon* %243, i32 0, i32 2
  store i64 3, i64* %246, align 8
  %247 = getelementptr inbounds %struct.anon, %struct.anon* %243, i32 0, i32 3
  %248 = load i64, i64* @ERROR_FILENAME_EXCED_RANGE, align 8
  store i64 %248, i64* %247, align 8
  %249 = getelementptr inbounds %struct.anon, %struct.anon* %243, i32 0, i32 4
  %250 = load i64, i64* @NO_ERROR, align 8
  store i64 %250, i64* %249, align 8
  %251 = getelementptr inbounds %struct.anon, %struct.anon* %243, i64 1
  %252 = getelementptr inbounds %struct.anon, %struct.anon* %251, i32 0, i32 0
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i8** %252, align 8
  %253 = getelementptr inbounds %struct.anon, %struct.anon* %251, i32 0, i32 1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0), i8** %253, align 8
  %254 = getelementptr inbounds %struct.anon, %struct.anon* %251, i32 0, i32 2
  store i64 6, i64* %254, align 8
  %255 = getelementptr inbounds %struct.anon, %struct.anon* %251, i32 0, i32 3
  %256 = load i64, i64* @ERROR_FILENAME_EXCED_RANGE, align 8
  store i64 %256, i64* %255, align 8
  %257 = getelementptr inbounds %struct.anon, %struct.anon* %251, i32 0, i32 4
  %258 = load i64, i64* @NO_ERROR, align 8
  store i64 %258, i64* %257, align 8
  %259 = getelementptr inbounds %struct.anon, %struct.anon* %251, i64 1
  %260 = getelementptr inbounds %struct.anon, %struct.anon* %259, i32 0, i32 0
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i8** %260, align 8
  %261 = getelementptr inbounds %struct.anon, %struct.anon* %259, i32 0, i32 1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0), i8** %261, align 8
  %262 = getelementptr inbounds %struct.anon, %struct.anon* %259, i32 0, i32 2
  store i64 7, i64* %262, align 8
  %263 = getelementptr inbounds %struct.anon, %struct.anon* %259, i32 0, i32 3
  %264 = load i64, i64* @NO_ERROR, align 8
  store i64 %264, i64* %263, align 8
  %265 = getelementptr inbounds %struct.anon, %struct.anon* %259, i32 0, i32 4
  %266 = load i64, i64* @ERROR_FILENAME_EXCED_RANGE, align 8
  store i64 %266, i64* %265, align 8
  %267 = getelementptr inbounds %struct.anon, %struct.anon* %259, i64 1
  %268 = getelementptr inbounds %struct.anon, %struct.anon* %267, i32 0, i32 0
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i8** %268, align 8
  %269 = getelementptr inbounds %struct.anon, %struct.anon* %267, i32 0, i32 1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0), i8** %269, align 8
  %270 = getelementptr inbounds %struct.anon, %struct.anon* %267, i32 0, i32 2
  store i64 7, i64* %270, align 8
  %271 = getelementptr inbounds %struct.anon, %struct.anon* %267, i32 0, i32 3
  %272 = load i64, i64* @NO_ERROR, align 8
  store i64 %272, i64* %271, align 8
  %273 = getelementptr inbounds %struct.anon, %struct.anon* %267, i32 0, i32 4
  %274 = load i64, i64* @ERROR_FILENAME_EXCED_RANGE, align 8
  store i64 %274, i64* %273, align 8
  %275 = getelementptr inbounds %struct.anon, %struct.anon* %267, i64 1
  %276 = getelementptr inbounds %struct.anon, %struct.anon* %275, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0), i8** %276, align 8
  %277 = getelementptr inbounds %struct.anon, %struct.anon* %275, i32 0, i32 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %277, align 8
  %278 = getelementptr inbounds %struct.anon, %struct.anon* %275, i32 0, i32 2
  store i64 4, i64* %278, align 8
  %279 = getelementptr inbounds %struct.anon, %struct.anon* %275, i32 0, i32 3
  %280 = load i64, i64* @NO_ERROR, align 8
  store i64 %280, i64* %279, align 8
  %281 = getelementptr inbounds %struct.anon, %struct.anon* %275, i32 0, i32 4
  %282 = load i64, i64* @ERROR_MORE_DATA, align 8
  store i64 %282, i64* %281, align 8
  %283 = getelementptr inbounds %struct.anon, %struct.anon* %275, i64 1
  %284 = getelementptr inbounds %struct.anon, %struct.anon* %283, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0), i8** %284, align 8
  %285 = getelementptr inbounds %struct.anon, %struct.anon* %283, i32 0, i32 1
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %285, align 8
  %286 = getelementptr inbounds %struct.anon, %struct.anon* %283, i32 0, i32 2
  store i64 4, i64* %286, align 8
  %287 = getelementptr inbounds %struct.anon, %struct.anon* %283, i32 0, i32 3
  %288 = load i64, i64* @ERROR_FILE_NOT_FOUND, align 8
  store i64 %288, i64* %287, align 8
  %289 = getelementptr inbounds %struct.anon, %struct.anon* %283, i32 0, i32 4
  %290 = load i64, i64* @ERROR_MORE_DATA, align 8
  store i64 %290, i64* %289, align 8
  %291 = getelementptr inbounds %struct.anon, %struct.anon* %283, i64 1
  %292 = getelementptr inbounds %struct.anon, %struct.anon* %291, i32 0, i32 0
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.26, i64 0, i64 0), i8** %292, align 8
  %293 = getelementptr inbounds %struct.anon, %struct.anon* %291, i32 0, i32 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %293, align 8
  %294 = getelementptr inbounds %struct.anon, %struct.anon* %291, i32 0, i32 2
  store i64 4, i64* %294, align 8
  %295 = getelementptr inbounds %struct.anon, %struct.anon* %291, i32 0, i32 3
  %296 = load i64, i64* @NO_ERROR, align 8
  store i64 %296, i64* %295, align 8
  %297 = getelementptr inbounds %struct.anon, %struct.anon* %291, i32 0, i32 4
  %298 = load i64, i64* @ERROR_MORE_DATA, align 8
  store i64 %298, i64* %297, align 8
  %299 = getelementptr inbounds %struct.anon, %struct.anon* %291, i64 1
  %300 = getelementptr inbounds %struct.anon, %struct.anon* %299, i32 0, i32 0
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.27, i64 0, i64 0), i8** %300, align 8
  %301 = getelementptr inbounds %struct.anon, %struct.anon* %299, i32 0, i32 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i64 0, i64 0), i8** %301, align 8
  %302 = getelementptr inbounds %struct.anon, %struct.anon* %299, i32 0, i32 2
  store i64 %15, i64* %302, align 8
  %303 = getelementptr inbounds %struct.anon, %struct.anon* %299, i32 0, i32 3
  %304 = load i64, i64* @ERROR_FILE_NOT_FOUND, align 8
  store i64 %304, i64* %303, align 8
  %305 = getelementptr inbounds %struct.anon, %struct.anon* %299, i32 0, i32 4
  %306 = load i64, i64* @NO_ERROR, align 8
  store i64 %306, i64* %305, align 8
  %307 = getelementptr inbounds %struct.anon, %struct.anon* %299, i64 1
  %308 = getelementptr inbounds %struct.anon, %struct.anon* %307, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i64 0, i64 0), i8** %308, align 8
  %309 = getelementptr inbounds %struct.anon, %struct.anon* %307, i32 0, i32 1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i8** %309, align 8
  %310 = getelementptr inbounds %struct.anon, %struct.anon* %307, i32 0, i32 2
  store i64 %15, i64* %310, align 8
  %311 = getelementptr inbounds %struct.anon, %struct.anon* %307, i32 0, i32 3
  %312 = load i64, i64* @NO_ERROR, align 8
  store i64 %312, i64* %311, align 8
  %313 = getelementptr inbounds %struct.anon, %struct.anon* %307, i32 0, i32 4
  %314 = load i64, i64* @NO_ERROR, align 8
  store i64 %314, i64* %313, align 8
  %315 = getelementptr inbounds %struct.anon, %struct.anon* %307, i64 1
  %316 = getelementptr inbounds %struct.anon, %struct.anon* %315, i32 0, i32 0
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.30, i64 0, i64 0), i8** %316, align 8
  %317 = getelementptr inbounds %struct.anon, %struct.anon* %315, i32 0, i32 1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i8** %317, align 8
  %318 = getelementptr inbounds %struct.anon, %struct.anon* %315, i32 0, i32 2
  store i64 %15, i64* %318, align 8
  %319 = getelementptr inbounds %struct.anon, %struct.anon* %315, i32 0, i32 3
  %320 = load i64, i64* @NO_ERROR, align 8
  store i64 %320, i64* %319, align 8
  %321 = getelementptr inbounds %struct.anon, %struct.anon* %315, i32 0, i32 4
  %322 = load i64, i64* @NO_ERROR, align 8
  store i64 %322, i64* %321, align 8
  %323 = getelementptr inbounds %struct.anon, %struct.anon* %315, i64 1
  %324 = getelementptr inbounds %struct.anon, %struct.anon* %323, i32 0, i32 0
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.31, i64 0, i64 0), i8** %324, align 8
  %325 = getelementptr inbounds %struct.anon, %struct.anon* %323, i32 0, i32 1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i8** %325, align 8
  %326 = getelementptr inbounds %struct.anon, %struct.anon* %323, i32 0, i32 2
  store i64 %15, i64* %326, align 8
  %327 = getelementptr inbounds %struct.anon, %struct.anon* %323, i32 0, i32 3
  %328 = load i64, i64* @NO_ERROR, align 8
  store i64 %328, i64* %327, align 8
  %329 = getelementptr inbounds %struct.anon, %struct.anon* %323, i32 0, i32 4
  %330 = load i64, i64* @NO_ERROR, align 8
  store i64 %330, i64* %329, align 8
  %331 = getelementptr inbounds %struct.anon, %struct.anon* %323, i64 1
  %332 = getelementptr inbounds %struct.anon, %struct.anon* %331, i32 0, i32 0
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.32, i64 0, i64 0), i8** %332, align 8
  %333 = getelementptr inbounds %struct.anon, %struct.anon* %331, i32 0, i32 1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i8** %333, align 8
  %334 = getelementptr inbounds %struct.anon, %struct.anon* %331, i32 0, i32 2
  store i64 %15, i64* %334, align 8
  %335 = getelementptr inbounds %struct.anon, %struct.anon* %331, i32 0, i32 3
  %336 = load i64, i64* @NO_ERROR, align 8
  store i64 %336, i64* %335, align 8
  %337 = getelementptr inbounds %struct.anon, %struct.anon* %331, i32 0, i32 4
  %338 = load i64, i64* @NO_ERROR, align 8
  store i64 %338, i64* %337, align 8
  %339 = getelementptr inbounds %struct.anon, %struct.anon* %331, i64 1
  %340 = getelementptr inbounds %struct.anon, %struct.anon* %339, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i64 0, i64 0), i8** %340, align 8
  %341 = getelementptr inbounds %struct.anon, %struct.anon* %339, i32 0, i32 1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i8** %341, align 8
  %342 = getelementptr inbounds %struct.anon, %struct.anon* %339, i32 0, i32 2
  store i64 %15, i64* %342, align 8
  %343 = getelementptr inbounds %struct.anon, %struct.anon* %339, i32 0, i32 3
  %344 = load i64, i64* @NO_ERROR, align 8
  store i64 %344, i64* %343, align 8
  %345 = getelementptr inbounds %struct.anon, %struct.anon* %339, i32 0, i32 4
  %346 = load i64, i64* @NO_ERROR, align 8
  store i64 %346, i64* %345, align 8
  %347 = getelementptr inbounds %struct.anon, %struct.anon* %339, i64 1
  %348 = getelementptr inbounds %struct.anon, %struct.anon* %347, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i64 0, i64 0), i8** %348, align 8
  %349 = getelementptr inbounds %struct.anon, %struct.anon* %347, i32 0, i32 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i64 0, i64 0), i8** %349, align 8
  %350 = getelementptr inbounds %struct.anon, %struct.anon* %347, i32 0, i32 2
  store i64 %15, i64* %350, align 8
  %351 = getelementptr inbounds %struct.anon, %struct.anon* %347, i32 0, i32 3
  %352 = load i64, i64* @ERROR_FILE_NOT_FOUND, align 8
  store i64 %352, i64* %351, align 8
  %353 = getelementptr inbounds %struct.anon, %struct.anon* %347, i32 0, i32 4
  %354 = load i64, i64* @NO_ERROR, align 8
  store i64 %354, i64* %353, align 8
  %355 = trunc i64 %19 to i32
  %356 = call i64 @GetCurrentDirectoryA(i32 %355, i8* %20)
  store i64 %356, i64* %5, align 8
  %357 = load i64, i64* %5, align 8
  %358 = trunc i64 %357 to i32
  %359 = call i32 (i32, i8*, ...) @ok(i32 %358, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.36, i64 0, i64 0))
  %360 = getelementptr inbounds i8, i8* %20, i64 2
  store i8 0, i8* %360, align 2
  %361 = call i64 @SetEnvironmentVariableA(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i64 0, i64 0), i8* %20)
  store i64 %361, i64* %5, align 8
  %362 = load i64, i64* %5, align 8
  %363 = trunc i64 %362 to i32
  %364 = call i32 (i32, i8*, ...) @ok(i32 %363, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.38, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %365

365:                                              ; preds = %536, %0
  %366 = load i32, i32* %8, align 4
  %367 = sext i32 %366 to i64
  %368 = icmp ult i64 %367, 42
  br i1 %368, label %369, label %539

369:                                              ; preds = %365
  %370 = load i32, i32* %8, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds [42 x %struct.anon], [42 x %struct.anon]* %4, i64 0, i64 %371
  %373 = getelementptr inbounds %struct.anon, %struct.anon* %372, i32 0, i32 4
  %374 = load i64, i64* %373, align 8
  %375 = load i64, i64* @NO_ERROR, align 8
  %376 = icmp eq i64 %374, %375
  %377 = zext i1 %376 to i32
  %378 = sext i32 %377 to i64
  store i64 %378, i64* %9, align 8
  %379 = load i32, i32* %8, align 4
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds [42 x %struct.anon], [42 x %struct.anon]* %4, i64 0, i64 %380
  %382 = getelementptr inbounds %struct.anon, %struct.anon* %381, i32 0, i32 1
  %383 = load i8*, i8** %382, align 8
  %384 = icmp ne i8* %383, null
  br i1 %384, label %385, label %386

385:                                              ; preds = %369
  br label %387

386:                                              ; preds = %369
  br label %387

387:                                              ; preds = %386, %385
  %388 = phi i8* [ %17, %385 ], [ null, %386 ]
  store i8* %388, i8** %10, align 8
  %389 = load i32, i32* %8, align 4
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds [42 x %struct.anon], [42 x %struct.anon]* %4, i64 0, i64 %390
  %392 = getelementptr inbounds %struct.anon, %struct.anon* %391, i32 0, i32 3
  %393 = load i64, i64* %392, align 8
  %394 = load i64, i64* @NO_ERROR, align 8
  %395 = icmp eq i64 %393, %394
  %396 = zext i1 %395 to i32
  %397 = sext i32 %396 to i64
  store i64 %397, i64* %11, align 8
  %398 = getelementptr inbounds i8, i8* %17, i64 0
  store i8 0, i8* %398, align 16
  %399 = load i32, i32* %8, align 4
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds [42 x %struct.anon], [42 x %struct.anon]* %4, i64 0, i64 %400
  %402 = getelementptr inbounds %struct.anon, %struct.anon* %401, i32 0, i32 2
  %403 = load i64, i64* %402, align 8
  %404 = icmp ult i64 %403, %15
  br i1 %404, label %405, label %412

405:                                              ; preds = %387
  %406 = load i32, i32* %8, align 4
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds [42 x %struct.anon], [42 x %struct.anon]* %4, i64 0, i64 %407
  %409 = getelementptr inbounds %struct.anon, %struct.anon* %408, i32 0, i32 2
  %410 = load i64, i64* %409, align 8
  %411 = getelementptr inbounds i8, i8* %17, i64 %410
  store i8 17, i8* %411, align 1
  br label %412

412:                                              ; preds = %405, %387
  %413 = call i32 @SetLastError(i32 -559038737)
  %414 = load i32, i32* %8, align 4
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds [42 x %struct.anon], [42 x %struct.anon]* %4, i64 0, i64 %415
  %417 = getelementptr inbounds %struct.anon, %struct.anon* %416, i32 0, i32 0
  %418 = load i8*, i8** %417, align 8
  %419 = load i8*, i8** %10, align 8
  %420 = load i32, i32* %8, align 4
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds [42 x %struct.anon], [42 x %struct.anon]* %4, i64 0, i64 %421
  %423 = getelementptr inbounds %struct.anon, %struct.anon* %422, i32 0, i32 2
  %424 = load i64, i64* %423, align 8
  %425 = call i64 @pGetVolumePathNameA(i8* %418, i8* %419, i64 %424)
  store i64 %425, i64* %5, align 8
  %426 = call i64 (...) @GetLastError()
  store i64 %426, i64* %7, align 8
  %427 = load i64, i64* %5, align 8
  %428 = load i64, i64* %11, align 8
  %429 = icmp eq i64 %427, %428
  br i1 %429, label %437, label %430

430:                                              ; preds = %412
  %431 = load i64, i64* %5, align 8
  %432 = load i64, i64* %9, align 8
  %433 = icmp eq i64 %431, %432
  %434 = zext i1 %433 to i32
  %435 = call i64 @broken(i32 %434)
  %436 = icmp ne i64 %435, 0
  br label %437

437:                                              ; preds = %430, %412
  %438 = phi i1 [ true, %412 ], [ %436, %430 ]
  %439 = zext i1 %438 to i32
  %440 = load i32, i32* %8, align 4
  %441 = load i32, i32* %8, align 4
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds [42 x %struct.anon], [42 x %struct.anon]* %4, i64 0, i64 %442
  %444 = getelementptr inbounds %struct.anon, %struct.anon* %443, i32 0, i32 3
  %445 = load i64, i64* %444, align 8
  %446 = load i64, i64* @NO_ERROR, align 8
  %447 = icmp eq i64 %445, %446
  %448 = zext i1 %447 to i64
  %449 = select i1 %447, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i64 0, i64 0)
  %450 = call i32 (i32, i8*, ...) @ok(i32 %439, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.39, i64 0, i64 0), i32 %440, i8* %449)
  %451 = load i64, i64* %5, align 8
  %452 = icmp ne i64 %451, 0
  br i1 %452, label %453, label %482

453:                                              ; preds = %437
  %454 = load i32, i32* @MAX_PATH, align 4
  %455 = zext i32 %454 to i64
  %456 = call i8* @llvm.stacksave()
  store i8* %456, i8** %12, align 8
  %457 = alloca i8, i64 %455, align 16
  store i64 %455, i64* %13, align 8
  %458 = load i32, i32* %8, align 4
  %459 = sext i32 %458 to i64
  %460 = getelementptr inbounds [42 x %struct.anon], [42 x %struct.anon]* %4, i64 0, i64 %459
  %461 = getelementptr inbounds %struct.anon, %struct.anon* %460, i32 0, i32 1
  %462 = load i8*, i8** %461, align 8
  %463 = load i32, i32* @MAX_PATH, align 4
  %464 = call i32 @ExpandEnvironmentStringsA(i8* %462, i8* %457, i32 %463)
  %465 = call i64 @strcmp(i8* %17, i8* %457)
  %466 = icmp eq i64 %465, 0
  br i1 %466, label %473, label %467

467:                                              ; preds = %453
  %468 = call i64 @strcasecmp(i8* %17, i8* %457)
  %469 = icmp eq i64 %468, 0
  %470 = zext i1 %469 to i32
  %471 = call i64 @broken(i32 %470)
  %472 = icmp ne i64 %471, 0
  br label %473

473:                                              ; preds = %467, %453
  %474 = phi i1 [ true, %453 ], [ %472, %467 ]
  %475 = zext i1 %474 to i32
  %476 = sext i32 %475 to i64
  store i64 %476, i64* %6, align 8
  %477 = load i64, i64* %6, align 8
  %478 = trunc i64 %477 to i32
  %479 = load i32, i32* %8, align 4
  %480 = call i32 (i32, i8*, ...) @ok(i32 %478, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.42, i64 0, i64 0), i32 %479, i8* %17, i8* %457)
  %481 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %481)
  br label %515

482:                                              ; preds = %437
  %483 = load i64, i64* %7, align 8
  %484 = load i32, i32* %8, align 4
  %485 = sext i32 %484 to i64
  %486 = getelementptr inbounds [42 x %struct.anon], [42 x %struct.anon]* %4, i64 0, i64 %485
  %487 = getelementptr inbounds %struct.anon, %struct.anon* %486, i32 0, i32 3
  %488 = load i64, i64* %487, align 8
  %489 = icmp eq i64 %483, %488
  br i1 %489, label %501, label %490

490:                                              ; preds = %482
  %491 = load i64, i64* %7, align 8
  %492 = load i32, i32* %8, align 4
  %493 = sext i32 %492 to i64
  %494 = getelementptr inbounds [42 x %struct.anon], [42 x %struct.anon]* %4, i64 0, i64 %493
  %495 = getelementptr inbounds %struct.anon, %struct.anon* %494, i32 0, i32 4
  %496 = load i64, i64* %495, align 8
  %497 = icmp eq i64 %491, %496
  %498 = zext i1 %497 to i32
  %499 = call i64 @broken(i32 %498)
  %500 = icmp ne i64 %499, 0
  br label %501

501:                                              ; preds = %490, %482
  %502 = phi i1 [ true, %482 ], [ %500, %490 ]
  %503 = zext i1 %502 to i32
  %504 = sext i32 %503 to i64
  store i64 %504, i64* %6, align 8
  %505 = load i64, i64* %6, align 8
  %506 = trunc i64 %505 to i32
  %507 = load i32, i32* %8, align 4
  %508 = load i64, i64* %7, align 8
  %509 = load i32, i32* %8, align 4
  %510 = sext i32 %509 to i64
  %511 = getelementptr inbounds [42 x %struct.anon], [42 x %struct.anon]* %4, i64 0, i64 %510
  %512 = getelementptr inbounds %struct.anon, %struct.anon* %511, i32 0, i32 3
  %513 = load i64, i64* %512, align 8
  %514 = call i32 (i32, i8*, ...) @ok(i32 %506, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.43, i64 0, i64 0), i32 %507, i64 %508, i64 %513)
  br label %515

515:                                              ; preds = %501, %473
  %516 = load i32, i32* %8, align 4
  %517 = sext i32 %516 to i64
  %518 = getelementptr inbounds [42 x %struct.anon], [42 x %struct.anon]* %4, i64 0, i64 %517
  %519 = getelementptr inbounds %struct.anon, %struct.anon* %518, i32 0, i32 2
  %520 = load i64, i64* %519, align 8
  %521 = icmp ult i64 %520, %15
  br i1 %521, label %522, label %535

522:                                              ; preds = %515
  %523 = load i32, i32* %8, align 4
  %524 = sext i32 %523 to i64
  %525 = getelementptr inbounds [42 x %struct.anon], [42 x %struct.anon]* %4, i64 0, i64 %524
  %526 = getelementptr inbounds %struct.anon, %struct.anon* %525, i32 0, i32 2
  %527 = load i64, i64* %526, align 8
  %528 = getelementptr inbounds i8, i8* %17, i64 %527
  %529 = load i8, i8* %528, align 1
  %530 = sext i8 %529 to i32
  %531 = icmp eq i32 %530, 17
  %532 = zext i1 %531 to i32
  %533 = load i32, i32* %8, align 4
  %534 = call i32 (i32, i8*, ...) @ok(i32 %532, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.44, i64 0, i64 0), i32 %533)
  br label %535

535:                                              ; preds = %522, %515
  br label %536

536:                                              ; preds = %535
  %537 = load i32, i32* %8, align 4
  %538 = add nsw i32 %537, 1
  store i32 %538, i32* %8, align 4
  br label %365

539:                                              ; preds = %365
  %540 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %540)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @GetCurrentDirectoryA(i32, i8*) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i64 @SetEnvironmentVariableA(i8*, i8*) #2

declare dso_local i32 @SetLastError(i32) #2

declare dso_local i64 @pGetVolumePathNameA(i8*, i8*, i64) #2

declare dso_local i64 @GetLastError(...) #2

declare dso_local i64 @broken(i32) #2

declare dso_local i32 @ExpandEnvironmentStringsA(i8*, i8*, i32) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i64 @strcasecmp(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
