; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_shlfileop.c_test_sh_path_prepare.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_shlfileop.c_test_sh_path_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"testdir2\00\00", align 1
@SHPPFW_NONE = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"res == 0x%08x, expected S_OK\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"testdir2\\test4.txt\00\00", align 1
@SHPPFW_IGNOREFILENAME = common dso_local global i32 0, align 4
@SHPPFW_DIRCREATE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"nonexistent\\\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"nonexistent\\ exists but shouldn't\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"test1.txt\00\00", align 1
@ERROR_DIRECTORY = common dso_local global i32 0, align 4
@ERROR_PATH_NOT_FOUND = common dso_local global i32 0, align 4
@ERROR_INVALID_NAME = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [28 x i8] c"Unexpected result : 0x%08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"test1.txt\\\00\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c".\\testdir2\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c".\\testdir2\\test4.txt\00", align 1
@.str.10 = private unnamed_addr constant [66 x i8] c"res == 0x%08x, expected HRESULT_FROM_WIN32(ERROR_PATH_NOT_FOUND)\0A\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c".\\testdir2\\test4.txt\\\00", align 1
@.str.12 = private unnamed_addr constant [44 x i8] c".\\testdir2\\test4.txt\\ exists but shouldn't\0A\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"nonexistent\00\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"nonexistent\\notreal\00\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"nonexistent\\notreal\00", align 1
@.str.16 = private unnamed_addr constant [42 x i8] c"nonexistent\\notreal exists but shouldn't\0A\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"testdir2\\test4.txt\\\00\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"testdir2\\test4.txt\\\00", align 1
@.str.19 = private unnamed_addr constant [45 x i8] c"testdir2\\test4.txt doesn't exist but should\0A\00", align 1
@.str.20 = private unnamed_addr constant [46 x i8] c"nonexistent\\notreal doesn't exist but should\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@CP_ACP = common dso_local global i32 0, align 4
@WC_NO_BEST_FIT_CHARS = common dso_local global i32 0, align 4
@UNICODE_PATH = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [55 x i8] c"Could not convert Unicode path name to multibyte (%d)\0A\00", align 1
@.str.22 = private unnamed_addr constant [90 x i8] c"Could not find unique multibyte representation for directory name using default codepage\0A\00", align 1
@.str.23 = private unnamed_addr constant [64 x i8] c"res == %08x, expected HRESULT_FROM_WIN32(ERROR_PATH_NOT_FOUND)\0A\00", align 1
@.str.24 = private unnamed_addr constant [43 x i8] c"unicode path was created but shouldn't be\0A\00", align 1
@.str.25 = private unnamed_addr constant [28 x i8] c"res == %08x, expected S_OK\0A\00", align 1
@.str.26 = private unnamed_addr constant [37 x i8] c"unicode path should've been created\0A\00", align 1
@.str.27 = private unnamed_addr constant [28 x i8] c"ret == %08x, expected S_OK\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_sh_path_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_sh_path_prepare() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = load i32, i32* @MAX_PATH, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %2, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %3, align 8
  %11 = load i32, i32* @MAX_PATH, align 4
  %12 = zext i32 %11 to i64
  %13 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %4, align 8
  %14 = call i32 @set_curr_dir_path(i8* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @SHPPFW_NONE, align 4
  %16 = call i64 @SHPathPrepareForWriteA(i32 0, i32 0, i8* %10, i32 %15)
  store i64 %16, i64* %1, align 8
  %17 = load i64, i64* %1, align 8
  %18 = load i64, i64* @S_OK, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = load i64, i64* %1, align 8
  %22 = call i32 (i32, i8*, ...) @ok(i32 %20, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %21)
  %23 = call i32 @set_curr_dir_path(i8* %10, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %24 = load i32, i32* @SHPPFW_IGNOREFILENAME, align 4
  %25 = call i64 @SHPathPrepareForWriteA(i32 0, i32 0, i8* %10, i32 %24)
  store i64 %25, i64* %1, align 8
  %26 = load i64, i64* %1, align 8
  %27 = load i64, i64* @S_OK, align 8
  %28 = icmp eq i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = load i64, i64* %1, align 8
  %31 = call i32 (i32, i8*, ...) @ok(i32 %29, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %30)
  %32 = call i32 @set_curr_dir_path(i8* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @SHPPFW_DIRCREATE, align 4
  %34 = call i64 @SHPathPrepareForWriteA(i32 0, i32 0, i8* %10, i32 %33)
  store i64 %34, i64* %1, align 8
  %35 = load i64, i64* %1, align 8
  %36 = load i64, i64* @S_OK, align 8
  %37 = icmp eq i64 %35, %36
  %38 = zext i1 %37 to i32
  %39 = load i64, i64* %1, align 8
  %40 = call i32 (i32, i8*, ...) @ok(i32 %38, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %39)
  %41 = call i32 @set_curr_dir_path(i8* %10, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %42 = load i32, i32* @SHPPFW_IGNOREFILENAME, align 4
  %43 = load i32, i32* @SHPPFW_DIRCREATE, align 4
  %44 = or i32 %42, %43
  %45 = call i64 @SHPathPrepareForWriteA(i32 0, i32 0, i8* %10, i32 %44)
  store i64 %45, i64* %1, align 8
  %46 = load i64, i64* %1, align 8
  %47 = load i64, i64* @S_OK, align 8
  %48 = icmp eq i64 %46, %47
  %49 = zext i1 %48 to i32
  %50 = load i64, i64* %1, align 8
  %51 = call i32 (i32, i8*, ...) @ok(i32 %49, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %50)
  %52 = call i32 @file_exists(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = call i32 (i32, i8*, ...) @ok(i32 %55, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %57 = call i32 @set_curr_dir_path(i8* %10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %58 = load i32, i32* @SHPPFW_NONE, align 4
  %59 = call i64 @SHPathPrepareForWriteA(i32 0, i32 0, i8* %10, i32 %58)
  store i64 %59, i64* %1, align 8
  %60 = load i64, i64* %1, align 8
  %61 = load i32, i32* @ERROR_DIRECTORY, align 4
  %62 = call i64 @HRESULT_FROM_WIN32(i32 %61)
  %63 = icmp eq i64 %60, %62
  br i1 %63, label %74, label %64

64:                                               ; preds = %0
  %65 = load i64, i64* %1, align 8
  %66 = load i32, i32* @ERROR_PATH_NOT_FOUND, align 4
  %67 = call i64 @HRESULT_FROM_WIN32(i32 %66)
  %68 = icmp eq i64 %65, %67
  br i1 %68, label %74, label %69

69:                                               ; preds = %64
  %70 = load i64, i64* %1, align 8
  %71 = load i32, i32* @ERROR_INVALID_NAME, align 4
  %72 = call i64 @HRESULT_FROM_WIN32(i32 %71)
  %73 = icmp eq i64 %70, %72
  br label %74

74:                                               ; preds = %69, %64, %0
  %75 = phi i1 [ true, %64 ], [ true, %0 ], [ %73, %69 ]
  %76 = zext i1 %75 to i32
  %77 = load i64, i64* %1, align 8
  %78 = call i32 (i32, i8*, ...) @ok(i32 %76, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i64 %77)
  %79 = load i32, i32* @SHPPFW_DIRCREATE, align 4
  %80 = call i64 @SHPathPrepareForWriteA(i32 0, i32 0, i8* %10, i32 %79)
  store i64 %80, i64* %1, align 8
  %81 = load i64, i64* %1, align 8
  %82 = load i32, i32* @ERROR_DIRECTORY, align 4
  %83 = call i64 @HRESULT_FROM_WIN32(i32 %82)
  %84 = icmp eq i64 %81, %83
  br i1 %84, label %95, label %85

85:                                               ; preds = %74
  %86 = load i64, i64* %1, align 8
  %87 = load i32, i32* @ERROR_PATH_NOT_FOUND, align 4
  %88 = call i64 @HRESULT_FROM_WIN32(i32 %87)
  %89 = icmp eq i64 %86, %88
  br i1 %89, label %95, label %90

90:                                               ; preds = %85
  %91 = load i64, i64* %1, align 8
  %92 = load i32, i32* @ERROR_INVALID_NAME, align 4
  %93 = call i64 @HRESULT_FROM_WIN32(i32 %92)
  %94 = icmp eq i64 %91, %93
  br label %95

95:                                               ; preds = %90, %85, %74
  %96 = phi i1 [ true, %85 ], [ true, %74 ], [ %94, %90 ]
  %97 = zext i1 %96 to i32
  %98 = load i64, i64* %1, align 8
  %99 = call i32 (i32, i8*, ...) @ok(i32 %97, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i64 %98)
  %100 = call i32 @set_curr_dir_path(i8* %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %101 = load i32, i32* @SHPPFW_NONE, align 4
  %102 = call i64 @SHPathPrepareForWriteA(i32 0, i32 0, i8* %10, i32 %101)
  store i64 %102, i64* %1, align 8
  %103 = load i64, i64* %1, align 8
  %104 = load i32, i32* @ERROR_DIRECTORY, align 4
  %105 = call i64 @HRESULT_FROM_WIN32(i32 %104)
  %106 = icmp eq i64 %103, %105
  br i1 %106, label %117, label %107

107:                                              ; preds = %95
  %108 = load i64, i64* %1, align 8
  %109 = load i32, i32* @ERROR_PATH_NOT_FOUND, align 4
  %110 = call i64 @HRESULT_FROM_WIN32(i32 %109)
  %111 = icmp eq i64 %108, %110
  br i1 %111, label %117, label %112

112:                                              ; preds = %107
  %113 = load i64, i64* %1, align 8
  %114 = load i32, i32* @ERROR_INVALID_NAME, align 4
  %115 = call i64 @HRESULT_FROM_WIN32(i32 %114)
  %116 = icmp eq i64 %113, %115
  br label %117

117:                                              ; preds = %112, %107, %95
  %118 = phi i1 [ true, %107 ], [ true, %95 ], [ %116, %112 ]
  %119 = zext i1 %118 to i32
  %120 = load i64, i64* %1, align 8
  %121 = call i32 (i32, i8*, ...) @ok(i32 %119, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i64 %120)
  %122 = load i32, i32* @SHPPFW_DIRCREATE, align 4
  %123 = call i64 @SHPathPrepareForWriteA(i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32 %122)
  store i64 %123, i64* %1, align 8
  %124 = load i64, i64* %1, align 8
  %125 = load i64, i64* @S_OK, align 8
  %126 = icmp eq i64 %124, %125
  %127 = zext i1 %126 to i32
  %128 = load i64, i64* %1, align 8
  %129 = call i32 (i32, i8*, ...) @ok(i32 %127, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %128)
  %130 = load i32, i32* @SHPPFW_DIRCREATE, align 4
  %131 = call i64 @SHPathPrepareForWriteA(i32 0, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i32 %130)
  store i64 %131, i64* %1, align 8
  %132 = load i64, i64* %1, align 8
  %133 = load i32, i32* @ERROR_PATH_NOT_FOUND, align 4
  %134 = call i64 @HRESULT_FROM_WIN32(i32 %133)
  %135 = icmp eq i64 %132, %134
  %136 = zext i1 %135 to i32
  %137 = load i64, i64* %1, align 8
  %138 = call i32 (i32, i8*, ...) @ok(i32 %136, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.10, i64 0, i64 0), i64 %137)
  %139 = call i32 @file_exists(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0))
  %140 = icmp ne i32 %139, 0
  %141 = xor i1 %140, true
  %142 = zext i1 %141 to i32
  %143 = call i32 (i32, i8*, ...) @ok(i32 %142, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12, i64 0, i64 0))
  %144 = call i32 @set_curr_dir_path(i8* %10, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0))
  %145 = load i32, i32* @SHPPFW_NONE, align 4
  %146 = call i64 @SHPathPrepareForWriteA(i32 0, i32 0, i8* %10, i32 %145)
  store i64 %146, i64* %1, align 8
  %147 = load i64, i64* %1, align 8
  %148 = load i32, i32* @ERROR_PATH_NOT_FOUND, align 4
  %149 = call i64 @HRESULT_FROM_WIN32(i32 %148)
  %150 = icmp eq i64 %147, %149
  %151 = zext i1 %150 to i32
  %152 = load i64, i64* %1, align 8
  %153 = call i32 (i32, i8*, ...) @ok(i32 %151, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.10, i64 0, i64 0), i64 %152)
  %154 = call i32 @set_curr_dir_path(i8* %10, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0))
  %155 = load i32, i32* @SHPPFW_IGNOREFILENAME, align 4
  %156 = call i64 @SHPathPrepareForWriteA(i32 0, i32 0, i8* %10, i32 %155)
  store i64 %156, i64* %1, align 8
  %157 = load i64, i64* %1, align 8
  %158 = load i32, i32* @ERROR_PATH_NOT_FOUND, align 4
  %159 = call i64 @HRESULT_FROM_WIN32(i32 %158)
  %160 = icmp eq i64 %157, %159
  %161 = zext i1 %160 to i32
  %162 = load i64, i64* %1, align 8
  %163 = call i32 (i32, i8*, ...) @ok(i32 %161, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.10, i64 0, i64 0), i64 %162)
  %164 = call i32 @file_exists(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0))
  %165 = icmp ne i32 %164, 0
  %166 = xor i1 %165, true
  %167 = zext i1 %166 to i32
  %168 = call i32 (i32, i8*, ...) @ok(i32 %167, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.16, i64 0, i64 0))
  %169 = call i32 @file_exists(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %170 = icmp ne i32 %169, 0
  %171 = xor i1 %170, true
  %172 = zext i1 %171 to i32
  %173 = call i32 (i32, i8*, ...) @ok(i32 %172, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %174 = call i32 @set_curr_dir_path(i8* %10, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0))
  %175 = load i32, i32* @SHPPFW_IGNOREFILENAME, align 4
  %176 = load i32, i32* @SHPPFW_DIRCREATE, align 4
  %177 = or i32 %175, %176
  %178 = call i64 @SHPathPrepareForWriteA(i32 0, i32 0, i8* %10, i32 %177)
  store i64 %178, i64* %1, align 8
  %179 = load i64, i64* %1, align 8
  %180 = load i64, i64* @S_OK, align 8
  %181 = icmp eq i64 %179, %180
  %182 = zext i1 %181 to i32
  %183 = load i64, i64* %1, align 8
  %184 = call i32 (i32, i8*, ...) @ok(i32 %182, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %183)
  %185 = call i32 @file_exists(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i64 0, i64 0))
  %186 = call i32 (i32, i8*, ...) @ok(i32 %185, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.19, i64 0, i64 0))
  %187 = call i32 @set_curr_dir_path(i8* %10, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0))
  %188 = load i32, i32* @SHPPFW_DIRCREATE, align 4
  %189 = call i64 @SHPathPrepareForWriteA(i32 0, i32 0, i8* %10, i32 %188)
  store i64 %189, i64* %1, align 8
  %190 = load i64, i64* %1, align 8
  %191 = load i64, i64* @S_OK, align 8
  %192 = icmp eq i64 %190, %191
  %193 = zext i1 %192 to i32
  %194 = load i64, i64* %1, align 8
  %195 = call i32 (i32, i8*, ...) @ok(i32 %193, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %194)
  %196 = call i32 @file_exists(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0))
  %197 = call i32 (i32, i8*, ...) @ok(i32 %196, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.20, i64 0, i64 0))
  %198 = call i32 @SetLastError(i32 -559038737)
  %199 = load i64, i64* @FALSE, align 8
  store i64 %199, i64* %5, align 8
  %200 = load i32, i32* @CP_ACP, align 4
  %201 = load i32, i32* @WC_NO_BEST_FIT_CHARS, align 4
  %202 = load i32, i32* @UNICODE_PATH, align 4
  %203 = trunc i64 %12 to i32
  %204 = call i64 @WideCharToMultiByte(i32 %200, i32 %201, i32 %202, i32 -1, i8* %13, i32 %203, i32* null, i64* %5)
  %205 = icmp eq i64 %204, 0
  br i1 %205, label %206, label %209

206:                                              ; preds = %117
  %207 = call i32 (...) @GetLastError()
  %208 = call i32 (i8*, ...) @win_skip(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.21, i64 0, i64 0), i32 %207)
  store i32 1, i32* %6, align 4
  br label %262

209:                                              ; preds = %117
  %210 = load i64, i64* %5, align 8
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %214

212:                                              ; preds = %209
  %213 = call i32 (i8*, ...) @win_skip(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.22, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %262

214:                                              ; preds = %209
  %215 = call i32 @RemoveDirectoryA(i8* %13)
  %216 = load i32, i32* @UNICODE_PATH, align 4
  %217 = load i32, i32* @SHPPFW_NONE, align 4
  %218 = call i64 @SHPathPrepareForWriteW(i32 0, i32 0, i32 %216, i32 %217)
  store i64 %218, i64* %1, align 8
  %219 = load i64, i64* %1, align 8
  %220 = load i32, i32* @ERROR_PATH_NOT_FOUND, align 4
  %221 = call i64 @HRESULT_FROM_WIN32(i32 %220)
  %222 = icmp eq i64 %219, %221
  %223 = zext i1 %222 to i32
  %224 = load i64, i64* %1, align 8
  %225 = call i32 (i32, i8*, ...) @ok(i32 %223, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.23, i64 0, i64 0), i64 %224)
  %226 = call i32 @file_exists(i8* %13)
  %227 = icmp ne i32 %226, 0
  %228 = xor i1 %227, true
  %229 = zext i1 %228 to i32
  %230 = call i32 (i32, i8*, ...) @ok(i32 %229, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.24, i64 0, i64 0))
  %231 = call i32 @RemoveDirectoryA(i8* %13)
  %232 = load i32, i32* @UNICODE_PATH, align 4
  %233 = load i32, i32* @SHPPFW_DIRCREATE, align 4
  %234 = call i64 @SHPathPrepareForWriteW(i32 0, i32 0, i32 %232, i32 %233)
  store i64 %234, i64* %1, align 8
  %235 = load i64, i64* %1, align 8
  %236 = load i64, i64* @S_OK, align 8
  %237 = icmp eq i64 %235, %236
  %238 = zext i1 %237 to i32
  %239 = load i64, i64* %1, align 8
  %240 = call i32 (i32, i8*, ...) @ok(i32 %238, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.25, i64 0, i64 0), i64 %239)
  %241 = call i32 @file_exists(i8* %13)
  %242 = call i32 (i32, i8*, ...) @ok(i32 %241, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.26, i64 0, i64 0))
  %243 = load i32, i32* @UNICODE_PATH, align 4
  %244 = load i32, i32* @SHPPFW_NONE, align 4
  %245 = call i64 @SHPathPrepareForWriteW(i32 0, i32 0, i32 %243, i32 %244)
  store i64 %245, i64* %1, align 8
  %246 = load i64, i64* %1, align 8
  %247 = load i64, i64* @S_OK, align 8
  %248 = icmp eq i64 %246, %247
  %249 = zext i1 %248 to i32
  %250 = load i64, i64* %1, align 8
  %251 = call i32 (i32, i8*, ...) @ok(i32 %249, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.27, i64 0, i64 0), i64 %250)
  %252 = load i32, i32* @UNICODE_PATH, align 4
  %253 = load i32, i32* @SHPPFW_DIRCREATE, align 4
  %254 = call i64 @SHPathPrepareForWriteW(i32 0, i32 0, i32 %252, i32 %253)
  store i64 %254, i64* %1, align 8
  %255 = load i64, i64* %1, align 8
  %256 = load i64, i64* @S_OK, align 8
  %257 = icmp eq i64 %255, %256
  %258 = zext i1 %257 to i32
  %259 = load i64, i64* %1, align 8
  %260 = call i32 (i32, i8*, ...) @ok(i32 %258, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.27, i64 0, i64 0), i64 %259)
  %261 = call i32 @RemoveDirectoryA(i8* %13)
  store i32 0, i32* %6, align 4
  br label %262

262:                                              ; preds = %214, %212, %206
  %263 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %263)
  %264 = load i32, i32* %6, align 4
  switch i32 %264, label %266 [
    i32 0, label %265
    i32 1, label %265
  ]

265:                                              ; preds = %262, %262
  ret void

266:                                              ; preds = %262
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @set_curr_dir_path(i8*, i8*) #2

declare dso_local i64 @SHPathPrepareForWriteA(i32, i32, i8*, i32) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @file_exists(i8*) #2

declare dso_local i64 @HRESULT_FROM_WIN32(i32) #2

declare dso_local i32 @SetLastError(i32) #2

declare dso_local i64 @WideCharToMultiByte(i32, i32, i32, i32, i8*, i32, i32*, i64*) #2

declare dso_local i32 @win_skip(i8*, ...) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i32 @RemoveDirectoryA(i8*) #2

declare dso_local i64 @SHPathPrepareForWriteW(i32, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
