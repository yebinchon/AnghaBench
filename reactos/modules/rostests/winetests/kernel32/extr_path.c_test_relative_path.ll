; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_path.c_test_relative_path.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_path.c_test_relative_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"SetCurrentDirectory error %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"CreateDirectory error %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"foo\\file\00", align 1
@GENERIC_WRITE = common dso_local global i32 0, align 4
@CREATE_ALWAYS = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [28 x i8] c"failed to create temp file\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"bar\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"..\\foo\\file\00", align 1
@INVALID_FILE_ATTRIBUTES = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [28 x i8] c"GetFileAttributes error %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"deadbeef\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"GetLongPathName error %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"expected ., got %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"GetShortPathName error %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"expected .., got %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [30 x i8] c"expected ..\\foo\\file, got %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c".\\..\\foo\\file\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"expected .\\..\\foo\\file, got %s\0A\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"..\\\\foo\\file\00", align 1
@.str.19 = private unnamed_addr constant [31 x i8] c"expected ..\\\\foo\\file, got %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_relative_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_relative_path() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = load i32, i32* @MAX_PATH, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %1, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %2, align 8
  %11 = load i32, i32* @MAX_PATH, align 4
  %12 = zext i32 %11 to i64
  %13 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %3, align 8
  %14 = load i32, i32* @MAX_PATH, align 4
  %15 = zext i32 %14 to i64
  %16 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %6, align 8
  %17 = load i32, i32* @MAX_PATH, align 4
  %18 = call i32 @GetCurrentDirectoryW(i32 %17, i32* %16)
  %19 = load i32, i32* @MAX_PATH, align 4
  %20 = call i32 @GetTempPathA(i32 %19, i8* %10)
  %21 = call i32 @SetCurrentDirectoryA(i8* %10)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i8* (...) @GetLastError()
  %24 = call i32 (i32, i8*, ...) @ok(i32 %22, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %23)
  %25 = call i32 @CreateDirectoryA(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* null)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i8* (...) @GetLastError()
  %28 = call i32 (i32, i8*, ...) @ok(i32 %26, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %27)
  %29 = load i32, i32* @GENERIC_WRITE, align 4
  %30 = load i32, i32* @CREATE_ALWAYS, align 4
  %31 = call i64 @CreateFileA(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %29, i32 0, i32* null, i32 %30, i32 0, i32 0)
  store i64 %31, i64* %4, align 8
  %32 = load i64, i64* %4, align 8
  %33 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %34 = icmp ne i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 (i32, i8*, ...) @ok(i32 %35, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %37 = load i64, i64* %4, align 8
  %38 = call i32 @CloseHandle(i64 %37)
  %39 = call i32 @CreateDirectoryA(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32* null)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i8* (...) @GetLastError()
  %42 = call i32 (i32, i8*, ...) @ok(i32 %40, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %41)
  %43 = call i32 @SetCurrentDirectoryA(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i8* (...) @GetLastError()
  %46 = call i32 (i32, i8*, ...) @ok(i32 %44, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %45)
  %47 = call i32 @GetFileAttributesA(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @INVALID_FILE_ATTRIBUTES, align 4
  %50 = icmp ne i32 %48, %49
  %51 = zext i1 %50 to i32
  %52 = call i8* (...) @GetLastError()
  %53 = call i32 (i32, i8*, ...) @ok(i32 %51, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i8* %52)
  %54 = call i32 @strcpy(i8* %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %55 = load i32, i32* @MAX_PATH, align 4
  %56 = call i32 @pGetLongPathNameA(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i8* %13, i32 %55)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = call i8* (...) @GetLastError()
  %59 = call i32 (i32, i8*, ...) @ok(i32 %57, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i8* %58)
  %60 = call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = call i32 (i32, i8*, ...) @ok(i32 %63, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i8* %13)
  %65 = call i32 @strcpy(i8* %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %66 = load i32, i32* @MAX_PATH, align 4
  %67 = call i32 @GetShortPathNameA(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i8* %13, i32 %66)
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %5, align 4
  %69 = call i8* (...) @GetLastError()
  %70 = call i32 (i32, i8*, ...) @ok(i32 %68, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0), i8* %69)
  %71 = call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %72 = icmp ne i32 %71, 0
  %73 = xor i1 %72, true
  %74 = zext i1 %73 to i32
  %75 = call i32 (i32, i8*, ...) @ok(i32 %74, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i8* %13)
  %76 = call i32 @strcpy(i8* %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %77 = load i32, i32* @MAX_PATH, align 4
  %78 = call i32 @pGetLongPathNameA(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i8* %13, i32 %77)
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* %5, align 4
  %80 = call i8* (...) @GetLastError()
  %81 = call i32 (i32, i8*, ...) @ok(i32 %79, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i8* %80)
  %82 = call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0))
  %83 = icmp ne i32 %82, 0
  %84 = xor i1 %83, true
  %85 = zext i1 %84 to i32
  %86 = call i32 (i32, i8*, ...) @ok(i32 %85, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i8* %13)
  %87 = call i32 @strcpy(i8* %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %88 = load i32, i32* @MAX_PATH, align 4
  %89 = call i32 @GetShortPathNameA(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i8* %13, i32 %88)
  store i32 %89, i32* %5, align 4
  %90 = load i32, i32* %5, align 4
  %91 = call i8* (...) @GetLastError()
  %92 = call i32 (i32, i8*, ...) @ok(i32 %90, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0), i8* %91)
  %93 = call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0))
  %94 = icmp ne i32 %93, 0
  %95 = xor i1 %94, true
  %96 = zext i1 %95 to i32
  %97 = call i32 (i32, i8*, ...) @ok(i32 %96, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i8* %13)
  %98 = call i32 @strcpy(i8* %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %99 = load i32, i32* @MAX_PATH, align 4
  %100 = call i32 @pGetLongPathNameA(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* %13, i32 %99)
  store i32 %100, i32* %5, align 4
  %101 = load i32, i32* %5, align 4
  %102 = call i8* (...) @GetLastError()
  %103 = call i32 (i32, i8*, ...) @ok(i32 %101, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i8* %102)
  %104 = call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %105 = icmp ne i32 %104, 0
  %106 = xor i1 %105, true
  %107 = zext i1 %106 to i32
  %108 = call i32 (i32, i8*, ...) @ok(i32 %107, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.15, i64 0, i64 0), i8* %13)
  %109 = call i32 @strcpy(i8* %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %110 = load i32, i32* @MAX_PATH, align 4
  %111 = call i32 @GetShortPathNameA(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* %13, i32 %110)
  store i32 %111, i32* %5, align 4
  %112 = load i32, i32* %5, align 4
  %113 = call i8* (...) @GetLastError()
  %114 = call i32 (i32, i8*, ...) @ok(i32 %112, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0), i8* %113)
  %115 = call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %116 = icmp ne i32 %115, 0
  %117 = xor i1 %116, true
  %118 = zext i1 %117 to i32
  %119 = call i32 (i32, i8*, ...) @ok(i32 %118, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.15, i64 0, i64 0), i8* %13)
  %120 = call i32 @strcpy(i8* %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %121 = load i32, i32* @MAX_PATH, align 4
  %122 = call i32 @pGetLongPathNameA(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i8* %13, i32 %121)
  store i32 %122, i32* %5, align 4
  %123 = load i32, i32* %5, align 4
  %124 = call i8* (...) @GetLastError()
  %125 = call i32 (i32, i8*, ...) @ok(i32 %123, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i8* %124)
  %126 = call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0))
  %127 = icmp ne i32 %126, 0
  %128 = xor i1 %127, true
  %129 = zext i1 %128 to i32
  %130 = call i32 (i32, i8*, ...) @ok(i32 %129, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i64 0, i64 0), i8* %13)
  %131 = call i32 @strcpy(i8* %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %132 = load i32, i32* @MAX_PATH, align 4
  %133 = call i32 @GetShortPathNameA(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i8* %13, i32 %132)
  store i32 %133, i32* %5, align 4
  %134 = load i32, i32* %5, align 4
  %135 = call i8* (...) @GetLastError()
  %136 = call i32 (i32, i8*, ...) @ok(i32 %134, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0), i8* %135)
  %137 = call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0))
  %138 = icmp ne i32 %137, 0
  %139 = xor i1 %138, true
  %140 = zext i1 %139 to i32
  %141 = call i32 (i32, i8*, ...) @ok(i32 %140, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i64 0, i64 0), i8* %13)
  %142 = call i32 @strcpy(i8* %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %143 = load i32, i32* @MAX_PATH, align 4
  %144 = call i32 @pGetLongPathNameA(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0), i8* %13, i32 %143)
  store i32 %144, i32* %5, align 4
  %145 = load i32, i32* %5, align 4
  %146 = call i8* (...) @GetLastError()
  %147 = call i32 (i32, i8*, ...) @ok(i32 %145, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i8* %146)
  %148 = call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0))
  %149 = icmp ne i32 %148, 0
  %150 = xor i1 %149, true
  %151 = zext i1 %150 to i32
  %152 = call i32 (i32, i8*, ...) @ok(i32 %151, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.19, i64 0, i64 0), i8* %13)
  %153 = call i32 @strcpy(i8* %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %154 = load i32, i32* @MAX_PATH, align 4
  %155 = call i32 @GetShortPathNameA(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0), i8* %13, i32 %154)
  store i32 %155, i32* %5, align 4
  %156 = load i32, i32* %5, align 4
  %157 = call i8* (...) @GetLastError()
  %158 = call i32 (i32, i8*, ...) @ok(i32 %156, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0), i8* %157)
  %159 = call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0))
  %160 = icmp ne i32 %159, 0
  %161 = xor i1 %160, true
  %162 = zext i1 %161 to i32
  %163 = call i32 (i32, i8*, ...) @ok(i32 %162, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.19, i64 0, i64 0), i8* %13)
  %164 = call i32 @SetCurrentDirectoryA(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0))
  %165 = call i32 @DeleteFileA(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %166 = call i32 @RemoveDirectoryA(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %167 = call i32 @RemoveDirectoryA(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %168 = call i32 @SetCurrentDirectoryW(i32* %16)
  %169 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %169)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GetCurrentDirectoryW(i32, i32*) #2

declare dso_local i32 @GetTempPathA(i32, i8*) #2

declare dso_local i32 @SetCurrentDirectoryA(i8*) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i8* @GetLastError(...) #2

declare dso_local i32 @CreateDirectoryA(i8*, i32*) #2

declare dso_local i64 @CreateFileA(i8*, i32, i32, i32*, i32, i32, i32) #2

declare dso_local i32 @CloseHandle(i64) #2

declare dso_local i32 @GetFileAttributesA(i8*) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @pGetLongPathNameA(i8*, i8*, i32) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @GetShortPathNameA(i8*, i8*, i32) #2

declare dso_local i32 @DeleteFileA(i8*) #2

declare dso_local i32 @RemoveDirectoryA(i8*) #2

declare dso_local i32 @SetCurrentDirectoryW(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
