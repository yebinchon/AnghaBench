; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/advpack/extr_install.c_test_RunSetupCommand.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/advpack/extr_install.c_test_RunSetupCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"Install\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"Dir\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"Title\00", align 1
@E_INVALIDARG = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [31 x i8] c"Expected E_INVALIDARG, got %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"winver.exe\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"idontexist.exe\00", align 1
@ERROR_FILE_NOT_FOUND = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [59 x i8] c"Expected HRESULT_FROM_WIN32(ERROR_FILE_NOT_FOUND), got %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"Expected hexe to be NULL\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"Expected TerminateProcess to fail\0A\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"non\\existent\\directory\00", align 1
@ERROR_DIRECTORY = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [54 x i8] c"Expected HRESULT_FROM_WIN32(ERROR_DIRECTORY), got %d\0A\00", align 1
@RSC_FLAG_INF = common dso_local global i32 0, align 4
@RSC_FLAG_QUIET = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [35 x i8] c"Expected a setupapi error, got %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"Expected hexe to be 0xdeadbeef\0A\00", align 1
@S_ASYNCHRONOUS = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [33 x i8] c"Expected S_ASYNCHRONOUS, got %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"Expected hexe to be non-NULL\0A\00", align 1
@.str.15 = private unnamed_addr constant [38 x i8] c"Expected TerminateProcess to succeed\0A\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"one\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"one\\test.inf\00", align 1
@CURR_DIR = common dso_local global i8* null, align 8
@.str.18 = private unnamed_addr constant [14 x i8] c"\\one\\test.inf\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"\\one\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"DefaultInstall\00", align 1
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str.21 = private unnamed_addr constant [32 x i8] c"Expected ERROR_SUCCESS, got %d\0A\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [62 x i8] c"Expected HRESULT_FROM_WIN32(ERROR_INVALID_PARAMETER), got %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"test.inf\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_RunSetupCommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_RunSetupCommand() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = load i32, i32* @MAX_PATH, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %3, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %4, align 8
  %11 = load i32, i32* @MAX_PATH, align 4
  %12 = zext i32 %11 to i64
  %13 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %5, align 8
  %14 = load i32, i32* @MAX_PATH, align 4
  %15 = zext i32 %14 to i64
  %16 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %6, align 8
  %17 = trunc i64 %15 to i32
  %18 = call i32 @GetSystemDirectoryA(i8* %16, i32 %17)
  %19 = call i64 @pRunSetupCommand(i32* null, i8* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32** null, i32 0, i32* null)
  store i64 %19, i64* %1, align 8
  %20 = load i64, i64* %1, align 8
  %21 = load i64, i64* @E_INVALIDARG, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = load i64, i64* %1, align 8
  %25 = call i32 (i32, i8*, ...) @ok(i32 %23, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i64 %24)
  %26 = call i64 @pRunSetupCommand(i32* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32** null, i32 0, i32* null)
  store i64 %26, i64* %1, align 8
  %27 = load i64, i64* %1, align 8
  %28 = load i64, i64* @E_INVALIDARG, align 8
  %29 = icmp eq i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = load i64, i64* %1, align 8
  %32 = call i32 (i32, i8*, ...) @ok(i32 %30, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i64 %31)
  store i32* inttoptr (i64 3735928559 to i32*), i32** %2, align 8
  %33 = call i64 @pRunSetupCommand(i32* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32** %2, i32 0, i32* null)
  store i64 %33, i64* %1, align 8
  %34 = load i64, i64* %1, align 8
  %35 = load i32, i32* @ERROR_FILE_NOT_FOUND, align 4
  %36 = call i64 @HRESULT_FROM_WIN32(i32 %35)
  %37 = icmp eq i64 %34, %36
  %38 = zext i1 %37 to i32
  %39 = load i64, i64* %1, align 8
  %40 = call i32 (i32, i8*, ...) @ok(i32 %38, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.6, i64 0, i64 0), i64 %39)
  %41 = load i32*, i32** %2, align 8
  %42 = icmp eq i32* %41, null
  %43 = zext i1 %42 to i32
  %44 = call i32 (i32, i8*, ...) @ok(i32 %43, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  %45 = load i32*, i32** %2, align 8
  %46 = call i32 @TerminateProcess(i32* %45, i32 0)
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = call i32 (i32, i8*, ...) @ok(i32 %49, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0))
  store i32* inttoptr (i64 3735928559 to i32*), i32** %2, align 8
  %51 = call i64 @pRunSetupCommand(i32* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32** %2, i32 0, i32* null)
  store i64 %51, i64* %1, align 8
  %52 = load i64, i64* %1, align 8
  %53 = load i32, i32* @ERROR_DIRECTORY, align 4
  %54 = call i64 @HRESULT_FROM_WIN32(i32 %53)
  %55 = icmp eq i64 %52, %54
  %56 = zext i1 %55 to i32
  %57 = load i64, i64* %1, align 8
  %58 = call i32 (i32, i8*, ...) @ok(i32 %56, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.10, i64 0, i64 0), i64 %57)
  %59 = load i32*, i32** %2, align 8
  %60 = icmp eq i32* %59, null
  %61 = zext i1 %60 to i32
  %62 = call i32 (i32, i8*, ...) @ok(i32 %61, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  %63 = load i32*, i32** %2, align 8
  %64 = call i32 @TerminateProcess(i32* %63, i32 0)
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  %68 = call i32 (i32, i8*, ...) @ok(i32 %67, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0))
  store i32* inttoptr (i64 3735928559 to i32*), i32** %2, align 8
  %69 = load i32, i32* @RSC_FLAG_INF, align 4
  %70 = load i32, i32* @RSC_FLAG_QUIET, align 4
  %71 = or i32 %69, %70
  %72 = call i64 @pRunSetupCommand(i32* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32** %2, i32 %71, i32* null)
  store i64 %72, i64* %1, align 8
  %73 = load i64, i64* %1, align 8
  %74 = call i32 @is_spapi_err(i64 %73)
  %75 = load i64, i64* %1, align 8
  %76 = call i32 (i32, i8*, ...) @ok(i32 %74, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0), i64 %75)
  %77 = load i32*, i32** %2, align 8
  %78 = icmp eq i32* %77, inttoptr (i64 3735928559 to i32*)
  %79 = zext i1 %78 to i32
  %80 = call i32 (i32, i8*, ...) @ok(i32 %79, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0))
  %81 = load i32*, i32** %2, align 8
  %82 = call i32 @TerminateProcess(i32* %81, i32 0)
  %83 = icmp ne i32 %82, 0
  %84 = xor i1 %83, true
  %85 = zext i1 %84 to i32
  %86 = call i32 (i32, i8*, ...) @ok(i32 %85, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0))
  store i32* inttoptr (i64 3735928559 to i32*), i32** %2, align 8
  %87 = call i64 @pRunSetupCommand(i32* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32** %2, i32 0, i32* null)
  store i64 %87, i64* %1, align 8
  %88 = load i64, i64* %1, align 8
  %89 = load i64, i64* @S_ASYNCHRONOUS, align 8
  %90 = icmp eq i64 %88, %89
  %91 = zext i1 %90 to i32
  %92 = load i64, i64* %1, align 8
  %93 = call i32 (i32, i8*, ...) @ok(i32 %91, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i64 0, i64 0), i64 %92)
  %94 = load i32*, i32** %2, align 8
  %95 = icmp ne i32* %94, null
  %96 = zext i1 %95 to i32
  %97 = call i32 (i32, i8*, ...) @ok(i32 %96, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0))
  %98 = load i32*, i32** %2, align 8
  %99 = call i32 @TerminateProcess(i32* %98, i32 0)
  %100 = call i32 (i32, i8*, ...) @ok(i32 %99, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.15, i64 0, i64 0))
  %101 = call i32 @CreateDirectoryA(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i32* null)
  %102 = call i32 @create_inf_file(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0))
  %103 = load i8*, i8** @CURR_DIR, align 8
  %104 = call i32 @lstrcpyA(i8* %10, i8* %103)
  %105 = call i32 @lstrcatA(i8* %10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0))
  %106 = load i8*, i8** @CURR_DIR, align 8
  %107 = call i32 @lstrcpyA(i8* %13, i8* %106)
  %108 = call i32 @lstrcatA(i8* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0))
  %109 = load i32, i32* @RSC_FLAG_INF, align 4
  %110 = load i32, i32* @RSC_FLAG_QUIET, align 4
  %111 = or i32 %109, %110
  %112 = call i64 @pRunSetupCommand(i32* null, i8* %10, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0), i8* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32** null, i32 %111, i32* null)
  store i64 %112, i64* %1, align 8
  %113 = load i64, i64* %1, align 8
  %114 = load i64, i64* @ERROR_SUCCESS, align 8
  %115 = icmp eq i64 %113, %114
  %116 = zext i1 %115 to i32
  %117 = load i64, i64* %1, align 8
  %118 = call i32 (i32, i8*, ...) @ok(i32 %116, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.21, i64 0, i64 0), i64 %117)
  %119 = load i32, i32* @RSC_FLAG_INF, align 4
  %120 = load i32, i32* @RSC_FLAG_QUIET, align 4
  %121 = or i32 %119, %120
  %122 = call i64 @pRunSetupCommand(i32* null, i8* %10, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0), i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32** null, i32 %121, i32* null)
  store i64 %122, i64* %1, align 8
  %123 = load i64, i64* %1, align 8
  %124 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %125 = call i64 @HRESULT_FROM_WIN32(i32 %124)
  %126 = icmp eq i64 %123, %125
  %127 = zext i1 %126 to i32
  %128 = load i64, i64* %1, align 8
  %129 = call i32 (i32, i8*, ...) @ok(i32 %127, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.22, i64 0, i64 0), i64 %128)
  %130 = load i32, i32* @RSC_FLAG_INF, align 4
  %131 = load i32, i32* @RSC_FLAG_QUIET, align 4
  %132 = or i32 %130, %131
  %133 = call i64 @pRunSetupCommand(i32* null, i8* %10, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32** null, i32 %132, i32* null)
  store i64 %133, i64* %1, align 8
  %134 = load i64, i64* %1, align 8
  %135 = load i64, i64* @ERROR_SUCCESS, align 8
  %136 = icmp eq i64 %134, %135
  %137 = zext i1 %136 to i32
  %138 = load i64, i64* %1, align 8
  %139 = call i32 (i32, i8*, ...) @ok(i32 %137, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.21, i64 0, i64 0), i64 %138)
  %140 = load i32, i32* @RSC_FLAG_INF, align 4
  %141 = load i32, i32* @RSC_FLAG_QUIET, align 4
  %142 = or i32 %140, %141
  %143 = call i64 @pRunSetupCommand(i32* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0), i8* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32** null, i32 %142, i32* null)
  store i64 %143, i64* %1, align 8
  %144 = load i64, i64* %1, align 8
  %145 = load i64, i64* @ERROR_SUCCESS, align 8
  %146 = icmp eq i64 %144, %145
  %147 = zext i1 %146 to i32
  %148 = load i64, i64* %1, align 8
  %149 = call i32 (i32, i8*, ...) @ok(i32 %147, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.21, i64 0, i64 0), i64 %148)
  %150 = load i32, i32* @RSC_FLAG_INF, align 4
  %151 = load i32, i32* @RSC_FLAG_QUIET, align 4
  %152 = or i32 %150, %151
  %153 = call i64 @pRunSetupCommand(i32* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0), i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32** null, i32 %152, i32* null)
  store i64 %153, i64* %1, align 8
  %154 = load i64, i64* %1, align 8
  %155 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %156 = call i64 @HRESULT_FROM_WIN32(i32 %155)
  %157 = icmp eq i64 %154, %156
  %158 = zext i1 %157 to i32
  %159 = load i64, i64* %1, align 8
  %160 = call i32 (i32, i8*, ...) @ok(i32 %158, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.22, i64 0, i64 0), i64 %159)
  %161 = load i32, i32* @RSC_FLAG_INF, align 4
  %162 = load i32, i32* @RSC_FLAG_QUIET, align 4
  %163 = or i32 %161, %162
  %164 = call i64 @pRunSetupCommand(i32* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32** null, i32 %163, i32* null)
  store i64 %164, i64* %1, align 8
  %165 = load i64, i64* %1, align 8
  %166 = load i64, i64* @ERROR_SUCCESS, align 8
  %167 = icmp eq i64 %165, %166
  %168 = zext i1 %167 to i32
  %169 = load i64, i64* %1, align 8
  %170 = call i32 (i32, i8*, ...) @ok(i32 %168, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.21, i64 0, i64 0), i64 %169)
  %171 = load i32, i32* @RSC_FLAG_INF, align 4
  %172 = load i32, i32* @RSC_FLAG_QUIET, align 4
  %173 = or i32 %171, %172
  %174 = call i64 @pRunSetupCommand(i32* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0), i8* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32** null, i32 %173, i32* null)
  store i64 %174, i64* %1, align 8
  %175 = load i64, i64* %1, align 8
  %176 = load i32, i32* @ERROR_FILE_NOT_FOUND, align 4
  %177 = call i64 @HRESULT_FROM_WIN32(i32 %176)
  %178 = icmp eq i64 %175, %177
  %179 = zext i1 %178 to i32
  %180 = load i64, i64* %1, align 8
  %181 = call i32 (i32, i8*, ...) @ok(i32 %179, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.6, i64 0, i64 0), i64 %180)
  %182 = load i32, i32* @RSC_FLAG_INF, align 4
  %183 = load i32, i32* @RSC_FLAG_QUIET, align 4
  %184 = or i32 %182, %183
  %185 = call i64 @pRunSetupCommand(i32* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0), i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32** null, i32 %184, i32* null)
  store i64 %185, i64* %1, align 8
  %186 = load i64, i64* %1, align 8
  %187 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %188 = call i64 @HRESULT_FROM_WIN32(i32 %187)
  %189 = icmp eq i64 %186, %188
  %190 = zext i1 %189 to i32
  %191 = load i64, i64* %1, align 8
  %192 = call i32 (i32, i8*, ...) @ok(i32 %190, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.22, i64 0, i64 0), i64 %191)
  %193 = load i32, i32* @RSC_FLAG_INF, align 4
  %194 = load i32, i32* @RSC_FLAG_QUIET, align 4
  %195 = or i32 %193, %194
  %196 = call i64 @pRunSetupCommand(i32* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32** null, i32 %195, i32* null)
  store i64 %196, i64* %1, align 8
  %197 = load i64, i64* %1, align 8
  %198 = load i32, i32* @ERROR_FILE_NOT_FOUND, align 4
  %199 = call i64 @HRESULT_FROM_WIN32(i32 %198)
  %200 = icmp eq i64 %197, %199
  %201 = zext i1 %200 to i32
  %202 = load i64, i64* %1, align 8
  %203 = call i32 (i32, i8*, ...) @ok(i32 %201, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.6, i64 0, i64 0), i64 %202)
  %204 = call i32 @DeleteFileA(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0))
  %205 = call i32 @RemoveDirectoryA(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0))
  %206 = call i32 @create_inf_file(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i64 0, i64 0))
  %207 = load i8*, i8** @CURR_DIR, align 8
  %208 = load i32, i32* @RSC_FLAG_INF, align 4
  %209 = load i32, i32* @RSC_FLAG_QUIET, align 4
  %210 = or i32 %208, %209
  %211 = call i64 @pRunSetupCommand(i32* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0), i8* %207, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32** null, i32 %210, i32* null)
  store i64 %211, i64* %1, align 8
  %212 = load i64, i64* %1, align 8
  %213 = load i32, i32* @ERROR_FILE_NOT_FOUND, align 4
  %214 = call i64 @HRESULT_FROM_WIN32(i32 %213)
  %215 = icmp eq i64 %212, %214
  %216 = zext i1 %215 to i32
  %217 = load i64, i64* %1, align 8
  %218 = call i32 (i32, i8*, ...) @ok(i32 %216, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.6, i64 0, i64 0), i64 %217)
  %219 = load i32, i32* @RSC_FLAG_INF, align 4
  %220 = load i32, i32* @RSC_FLAG_QUIET, align 4
  %221 = or i32 %219, %220
  %222 = call i64 @pRunSetupCommand(i32* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0), i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32** null, i32 %221, i32* null)
  store i64 %222, i64* %1, align 8
  %223 = load i64, i64* %1, align 8
  %224 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %225 = call i64 @HRESULT_FROM_WIN32(i32 %224)
  %226 = icmp eq i64 %223, %225
  %227 = zext i1 %226 to i32
  %228 = load i64, i64* %1, align 8
  %229 = call i32 (i32, i8*, ...) @ok(i32 %227, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.22, i64 0, i64 0), i64 %228)
  %230 = load i8*, i8** @CURR_DIR, align 8
  %231 = load i32, i32* @RSC_FLAG_INF, align 4
  %232 = load i32, i32* @RSC_FLAG_QUIET, align 4
  %233 = or i32 %231, %232
  %234 = call i64 @pRunSetupCommand(i32* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0), i8* %230, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32** null, i32 %233, i32* null)
  store i64 %234, i64* %1, align 8
  %235 = load i64, i64* %1, align 8
  %236 = load i32, i32* @ERROR_FILE_NOT_FOUND, align 4
  %237 = call i64 @HRESULT_FROM_WIN32(i32 %236)
  %238 = icmp eq i64 %235, %237
  %239 = zext i1 %238 to i32
  %240 = load i64, i64* %1, align 8
  %241 = call i32 (i32, i8*, ...) @ok(i32 %239, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.6, i64 0, i64 0), i64 %240)
  %242 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %242)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GetSystemDirectoryA(i8*, i32) #2

declare dso_local i64 @pRunSetupCommand(i32*, i8*, i8*, i8*, i8*, i32**, i32, i32*) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i64 @HRESULT_FROM_WIN32(i32) #2

declare dso_local i32 @TerminateProcess(i32*, i32) #2

declare dso_local i32 @is_spapi_err(i64) #2

declare dso_local i32 @CreateDirectoryA(i8*, i32*) #2

declare dso_local i32 @create_inf_file(i8*) #2

declare dso_local i32 @lstrcpyA(i8*, i8*) #2

declare dso_local i32 @lstrcatA(i8*, i8*) #2

declare dso_local i32 @DeleteFileA(i8*) #2

declare dso_local i32 @RemoveDirectoryA(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
