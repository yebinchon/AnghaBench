; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_file.c_test_pipes.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_file.c_test_pipes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@O_BINARY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"pipe failed with errno %d\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"tests/file.c\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"pipes\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@_P_NOWAIT = common dso_local global i32 0, align 4
@proc_handles = common dso_local global i64* null, align 8
@.str.4 = private unnamed_addr constant [24 x i8] c"unable to close %d: %d\0A\00", align 1
@N_TEST_MESSAGES = common dso_local global i32 0, align 4
@pipe_string = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [14 x i8] c"i %d, got %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"expected to read '%s', got '%s'\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"expected to read 0 bytes, got %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"fread() returned %d: ferror=%d\0A\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"got '%s' expected '%s'\0A\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"fread() returned %d instead of 0\0A\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"got ferror() = %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"feof() is false!\0A\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"unable to close the pipe: %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"\0D\0A\0Dab\0D\0A\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"write returned %d, errno = %d\0A\00", align 1
@O_TEXT = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [30 x i8] c"read returned %d, expected 1\0A\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"buf[0] = %x, expected '\\n'\0A\00", align 1
@.str.19 = private unnamed_addr constant [28 x i8] c"buf[0] = %x, expected '\\r'\0A\00", align 1
@.str.20 = private unnamed_addr constant [27 x i8] c"buf[0] = %x, expected 'a'\0A\00", align 1
@.str.21 = private unnamed_addr constant [27 x i8] c"buf[0] = %x, expected 'b'\0A\00", align 1
@.str.22 = private unnamed_addr constant [28 x i8] c"buf[1] = %x, expected '\\n'\0A\00", align 1
@p_fopen_s = common dso_local global i64 0, align 8
@.str.23 = private unnamed_addr constant [4 x i8] c"a\00b\00", align 1
@_O_WTEXT = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [30 x i8] c"read returned %d, expected 2\0A\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"a\00bz\00", align 1
@.str.26 = private unnamed_addr constant [30 x i8] c"read returned incorrect data\0A\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@.str.28 = private unnamed_addr constant [30 x i8] c"read returned %d, expected 0\0A\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"\00z\00", align 1
@.str.30 = private unnamed_addr constant [28 x i8] c"unicode mode tests on pipe\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @test_pipes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_pipes(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [2 x i32], align 4
  %4 = alloca [12 x i8], align 1
  %5 = alloca [12 x i8], align 1
  %6 = alloca i32*, align 8
  %7 = alloca [6 x i8*], align 16
  %8 = alloca [4096 x i8], align 16
  %9 = alloca [4096 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %12 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %13 = load i32, i32* @O_BINARY, align 4
  %14 = call i64 @_pipe(i32* %12, i32 1024, i32 %13)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @errno, align 4
  %18 = call i32 (i32, i8*, ...) @ok(i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %17)
  br label %391

19:                                               ; preds = %1
  %20 = load i8*, i8** %2, align 8
  %21 = call i8* @get_base_name(i8* %20)
  %22 = getelementptr inbounds [6 x i8*], [6 x i8*]* %7, i64 0, i64 0
  store i8* %21, i8** %22, align 16
  %23 = getelementptr inbounds [6 x i8*], [6 x i8*]* %7, i64 0, i64 1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8** %23, align 8
  %24 = getelementptr inbounds [6 x i8*], [6 x i8*]* %7, i64 0, i64 2
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %24, align 16
  %25 = getelementptr inbounds [12 x i8], [12 x i8]* %4, i64 0, i64 0
  %26 = getelementptr inbounds [6 x i8*], [6 x i8*]* %7, i64 0, i64 3
  store i8* %25, i8** %26, align 8
  %27 = getelementptr inbounds [12 x i8], [12 x i8]* %4, i64 0, i64 0
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @sprintf(i8* %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %29)
  %31 = getelementptr inbounds [12 x i8], [12 x i8]* %5, i64 0, i64 0
  %32 = getelementptr inbounds [6 x i8*], [6 x i8*]* %7, i64 0, i64 4
  store i8* %31, i8** %32, align 16
  %33 = getelementptr inbounds [12 x i8], [12 x i8]* %5, i64 0, i64 0
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @sprintf(i8* %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %35)
  %37 = getelementptr inbounds [6 x i8*], [6 x i8*]* %7, i64 0, i64 5
  store i8* null, i8** %37, align 8
  %38 = load i32, i32* @_P_NOWAIT, align 4
  %39 = load i8*, i8** %2, align 8
  %40 = getelementptr inbounds [6 x i8*], [6 x i8*]* %7, i64 0, i64 0
  %41 = call i64 @_spawnvp(i32 %38, i8* %39, i8** %40)
  %42 = load i64*, i64** @proc_handles, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 0
  store i64 %41, i64* %43, align 8
  %44 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @close(i32 %45)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @errno, align 4
  %54 = call i32 (i32, i8*, ...) @ok(i32 %50, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %52, i32 %53)
  store i32 0, i32* %11, align 4
  br label %55

55:                                               ; preds = %87, %19
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* @N_TEST_MESSAGES, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %90

59:                                               ; preds = %55
  %60 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %63 = call i32 @read(i32 %61, i8* %62, i32 4095)
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = load i8*, i8** @pipe_string, align 8
  %66 = call i32 @strlen(i8* %65)
  %67 = icmp eq i32 %64, %66
  %68 = zext i1 %67 to i32
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* %10, align 4
  %71 = call i32 (i32, i8*, ...) @ok(i32 %68, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %69, i32 %70)
  %72 = load i32, i32* %10, align 4
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %59
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 %76
  store i8 0, i8* %77, align 1
  br label %78

78:                                               ; preds = %74, %59
  %79 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %80 = load i8*, i8** @pipe_string, align 8
  %81 = call i64 @strcmp(i8* %79, i8* %80)
  %82 = icmp eq i64 %81, 0
  %83 = zext i1 %82 to i32
  %84 = load i8*, i8** @pipe_string, align 8
  %85 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %86 = call i32 (i32, i8*, ...) @ok(i32 %83, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i8* %84, i8* %85)
  br label %87

87:                                               ; preds = %78
  %88 = load i32, i32* %11, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %11, align 4
  br label %55

90:                                               ; preds = %55
  %91 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %94 = call i32 @read(i32 %92, i8* %93, i32 4095)
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* %10, align 4
  %96 = icmp eq i32 %95, 0
  %97 = zext i1 %96 to i32
  %98 = load i32, i32* %10, align 4
  %99 = call i32 (i32, i8*, ...) @ok(i32 %97, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i32 %98)
  %100 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @close(i32 %101)
  store i32 %102, i32* %11, align 4
  %103 = load i32, i32* %11, align 4
  %104 = icmp ne i32 %103, 0
  %105 = xor i1 %104, true
  %106 = zext i1 %105 to i32
  %107 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @errno, align 4
  %110 = call i32 (i32, i8*, ...) @ok(i32 %106, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %108, i32 %109)
  %111 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %112 = load i32, i32* @O_BINARY, align 4
  %113 = call i64 @_pipe(i32* %111, i32 1024, i32 %112)
  %114 = icmp slt i64 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %90
  %116 = load i32, i32* @errno, align 4
  %117 = call i32 (i32, i8*, ...) @ok(i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %116)
  br label %391

118:                                              ; preds = %90
  %119 = getelementptr inbounds [6 x i8*], [6 x i8*]* %7, i64 0, i64 1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8** %119, align 8
  %120 = getelementptr inbounds [6 x i8*], [6 x i8*]* %7, i64 0, i64 2
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %120, align 16
  %121 = getelementptr inbounds [12 x i8], [12 x i8]* %4, i64 0, i64 0
  %122 = getelementptr inbounds [6 x i8*], [6 x i8*]* %7, i64 0, i64 3
  store i8* %121, i8** %122, align 8
  %123 = getelementptr inbounds [12 x i8], [12 x i8]* %4, i64 0, i64 0
  %124 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @sprintf(i8* %123, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %125)
  %127 = getelementptr inbounds [12 x i8], [12 x i8]* %5, i64 0, i64 0
  %128 = getelementptr inbounds [6 x i8*], [6 x i8*]* %7, i64 0, i64 4
  store i8* %127, i8** %128, align 16
  %129 = getelementptr inbounds [12 x i8], [12 x i8]* %5, i64 0, i64 0
  %130 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 1
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @sprintf(i8* %129, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %131)
  %133 = getelementptr inbounds [6 x i8*], [6 x i8*]* %7, i64 0, i64 5
  store i8* null, i8** %133, align 8
  %134 = load i32, i32* @_P_NOWAIT, align 4
  %135 = load i8*, i8** %2, align 8
  %136 = getelementptr inbounds [6 x i8*], [6 x i8*]* %7, i64 0, i64 0
  %137 = call i64 @_spawnvp(i32 %134, i8* %135, i8** %136)
  %138 = load i64*, i64** @proc_handles, align 8
  %139 = getelementptr inbounds i64, i64* %138, i64 1
  store i64 %137, i64* %139, align 8
  %140 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 1
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @close(i32 %141)
  store i32 %142, i32* %11, align 4
  %143 = load i32, i32* %11, align 4
  %144 = icmp ne i32 %143, 0
  %145 = xor i1 %144, true
  %146 = zext i1 %145 to i32
  %147 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 1
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @errno, align 4
  %150 = call i32 (i32, i8*, ...) @ok(i32 %146, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %148, i32 %149)
  %151 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %152 = load i32, i32* %151, align 4
  %153 = call i32* @fdopen(i32 %152, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  store i32* %153, i32** %6, align 8
  %154 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  store i8 0, i8* %154, align 16
  store i32 0, i32* %11, align 4
  br label %155

155:                                              ; preds = %163, %118
  %156 = load i32, i32* %11, align 4
  %157 = load i32, i32* @N_TEST_MESSAGES, align 4
  %158 = icmp slt i32 %156, %157
  br i1 %158, label %159, label %166

159:                                              ; preds = %155
  %160 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  %161 = load i8*, i8** @pipe_string, align 8
  %162 = call i32 @strcat(i8* %160, i8* %161)
  br label %163

163:                                              ; preds = %159
  %164 = load i32, i32* %11, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %11, align 4
  br label %155

166:                                              ; preds = %155
  %167 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %168 = load i32*, i32** %6, align 8
  %169 = call i32 @fread(i8* %167, i32 1, i32 4095, i32* %168)
  store i32 %169, i32* %10, align 4
  %170 = load i32, i32* %10, align 4
  %171 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  %172 = call i32 @strlen(i8* %171)
  %173 = icmp eq i32 %170, %172
  %174 = zext i1 %173 to i32
  %175 = load i32, i32* %10, align 4
  %176 = load i32*, i32** %6, align 8
  %177 = call i32 @ferror(i32* %176)
  %178 = call i32 (i32, i8*, ...) @ok(i32 %174, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i32 %175, i32 %177)
  %179 = load i32, i32* %10, align 4
  %180 = icmp sgt i32 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %166
  %182 = load i32, i32* %10, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 %183
  store i8 0, i8* %184, align 1
  br label %185

185:                                              ; preds = %181, %166
  %186 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %187 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  %188 = call i64 @strcmp(i8* %186, i8* %187)
  %189 = icmp eq i64 %188, 0
  %190 = zext i1 %189 to i32
  %191 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %192 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  %193 = call i32 (i32, i8*, ...) @ok(i32 %190, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i8* %191, i8* %192)
  %194 = call i32 @Sleep(i32 100)
  %195 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %196 = load i32*, i32** %6, align 8
  %197 = call i32 @fread(i8* %195, i32 1, i32 4095, i32* %196)
  store i32 %197, i32* %10, align 4
  %198 = load i32, i32* %10, align 4
  %199 = icmp eq i32 %198, 0
  %200 = zext i1 %199 to i32
  %201 = load i32, i32* %10, align 4
  %202 = call i32 (i32, i8*, ...) @ok(i32 %200, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0), i32 %201)
  %203 = load i32*, i32** %6, align 8
  %204 = call i32 @ferror(i32* %203)
  %205 = icmp eq i32 %204, 0
  %206 = zext i1 %205 to i32
  %207 = load i32*, i32** %6, align 8
  %208 = call i32 @ferror(i32* %207)
  %209 = call i32 (i32, i8*, ...) @ok(i32 %206, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0), i32 %208)
  %210 = load i32*, i32** %6, align 8
  %211 = call i32 @feof(i32* %210)
  %212 = call i32 (i32, i8*, ...) @ok(i32 %211, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0))
  %213 = load i32*, i32** %6, align 8
  %214 = call i32 @fclose(i32* %213)
  store i32 %214, i32* %11, align 4
  %215 = load i32, i32* %11, align 4
  %216 = icmp ne i32 %215, 0
  %217 = xor i1 %216, true
  %218 = zext i1 %217 to i32
  %219 = load i32, i32* @errno, align 4
  %220 = call i32 (i32, i8*, ...) @ok(i32 %218, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i32 %219)
  %221 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %222 = load i32, i32* @O_BINARY, align 4
  %223 = call i64 @_pipe(i32* %221, i32 1024, i32 %222)
  %224 = icmp slt i64 %223, 0
  br i1 %224, label %225, label %228

225:                                              ; preds = %185
  %226 = load i32, i32* @errno, align 4
  %227 = call i32 (i32, i8*, ...) @ok(i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %226)
  br label %391

228:                                              ; preds = %185
  %229 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 1
  %230 = load i32, i32* %229, align 4
  %231 = call i32 @write(i32 %230, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), i32 7)
  store i32 %231, i32* %10, align 4
  %232 = load i32, i32* %10, align 4
  %233 = icmp eq i32 %232, 7
  %234 = zext i1 %233 to i32
  %235 = load i32, i32* %10, align 4
  %236 = load i32, i32* @errno, align 4
  %237 = call i32 (i32, i8*, ...) @ok(i32 %234, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.16, i64 0, i64 0), i32 %235, i32 %236)
  %238 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %239 = load i32, i32* %238, align 4
  %240 = load i32, i32* @O_TEXT, align 4
  %241 = call i32 @setmode(i32 %239, i32 %240)
  %242 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %243 = load i32, i32* %242, align 4
  %244 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %245 = call i32 @read(i32 %243, i8* %244, i32 1)
  store i32 %245, i32* %10, align 4
  %246 = load i32, i32* %10, align 4
  %247 = icmp eq i32 %246, 1
  %248 = zext i1 %247 to i32
  %249 = load i32, i32* %10, align 4
  %250 = call i32 (i32, i8*, ...) @ok(i32 %248, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.17, i64 0, i64 0), i32 %249)
  %251 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %252 = load i8, i8* %251, align 16
  %253 = sext i8 %252 to i32
  %254 = icmp eq i32 %253, 10
  %255 = zext i1 %254 to i32
  %256 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %257 = load i8, i8* %256, align 16
  %258 = sext i8 %257 to i32
  %259 = call i32 (i32, i8*, ...) @ok(i32 %255, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i64 0, i64 0), i32 %258)
  %260 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %261 = load i32, i32* %260, align 4
  %262 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %263 = call i32 @read(i32 %261, i8* %262, i32 1)
  store i32 %263, i32* %10, align 4
  %264 = load i32, i32* %10, align 4
  %265 = icmp eq i32 %264, 1
  %266 = zext i1 %265 to i32
  %267 = load i32, i32* %10, align 4
  %268 = call i32 (i32, i8*, ...) @ok(i32 %266, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.17, i64 0, i64 0), i32 %267)
  %269 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %270 = load i8, i8* %269, align 16
  %271 = sext i8 %270 to i32
  %272 = icmp eq i32 %271, 13
  %273 = zext i1 %272 to i32
  %274 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %275 = load i8, i8* %274, align 16
  %276 = sext i8 %275 to i32
  %277 = call i32 (i32, i8*, ...) @ok(i32 %273, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.19, i64 0, i64 0), i32 %276)
  %278 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %279 = load i32, i32* %278, align 4
  %280 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %281 = call i32 @read(i32 %279, i8* %280, i32 1)
  store i32 %281, i32* %10, align 4
  %282 = load i32, i32* %10, align 4
  %283 = icmp eq i32 %282, 1
  %284 = zext i1 %283 to i32
  %285 = load i32, i32* %10, align 4
  %286 = call i32 (i32, i8*, ...) @ok(i32 %284, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.17, i64 0, i64 0), i32 %285)
  %287 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %288 = load i8, i8* %287, align 16
  %289 = sext i8 %288 to i32
  %290 = icmp eq i32 %289, 97
  %291 = zext i1 %290 to i32
  %292 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %293 = load i8, i8* %292, align 16
  %294 = sext i8 %293 to i32
  %295 = call i32 (i32, i8*, ...) @ok(i32 %291, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.20, i64 0, i64 0), i32 %294)
  %296 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %297 = load i32, i32* %296, align 4
  %298 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %299 = call i32 @read(i32 %297, i8* %298, i32 2)
  store i32 %299, i32* %10, align 4
  %300 = load i32, i32* %10, align 4
  %301 = icmp eq i32 %300, 2
  %302 = zext i1 %301 to i32
  %303 = load i32, i32* %10, align 4
  %304 = call i32 (i32, i8*, ...) @ok(i32 %302, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.17, i64 0, i64 0), i32 %303)
  %305 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %306 = load i8, i8* %305, align 16
  %307 = sext i8 %306 to i32
  %308 = icmp eq i32 %307, 98
  %309 = zext i1 %308 to i32
  %310 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %311 = load i8, i8* %310, align 16
  %312 = sext i8 %311 to i32
  %313 = call i32 (i32, i8*, ...) @ok(i32 %309, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.21, i64 0, i64 0), i32 %312)
  %314 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 1
  %315 = load i8, i8* %314, align 1
  %316 = sext i8 %315 to i32
  %317 = icmp eq i32 %316, 10
  %318 = zext i1 %317 to i32
  %319 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 1
  %320 = load i8, i8* %319, align 1
  %321 = sext i8 %320 to i32
  %322 = call i32 (i32, i8*, ...) @ok(i32 %318, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.22, i64 0, i64 0), i32 %321)
  %323 = load i64, i64* @p_fopen_s, align 8
  %324 = icmp ne i64 %323, 0
  br i1 %324, label %325, label %382

325:                                              ; preds = %228
  %326 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 1
  %327 = load i32, i32* %326, align 4
  %328 = call i32 @write(i32 %327, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0), i32 3)
  store i32 %328, i32* %10, align 4
  %329 = load i32, i32* %10, align 4
  %330 = icmp eq i32 %329, 3
  %331 = zext i1 %330 to i32
  %332 = load i32, i32* %10, align 4
  %333 = load i32, i32* @errno, align 4
  %334 = call i32 (i32, i8*, ...) @ok(i32 %331, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.16, i64 0, i64 0), i32 %332, i32 %333)
  %335 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 2
  store i8 122, i8* %335, align 2
  %336 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 3
  store i8 122, i8* %336, align 1
  %337 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %338 = load i32, i32* %337, align 4
  %339 = load i32, i32* @_O_WTEXT, align 4
  %340 = call i32 @setmode(i32 %338, i32 %339)
  %341 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %342 = load i32, i32* %341, align 4
  %343 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %344 = call i32 @read(i32 %342, i8* %343, i32 4)
  store i32 %344, i32* %10, align 4
  %345 = load i32, i32* %10, align 4
  %346 = icmp eq i32 %345, 2
  %347 = zext i1 %346 to i32
  %348 = load i32, i32* %10, align 4
  %349 = call i32 (i32, i8*, ...) @ok(i32 %347, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.24, i64 0, i64 0), i32 %348)
  %350 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %351 = call i32 @memcmp(i8* %350, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0), i32 4)
  %352 = icmp ne i32 %351, 0
  %353 = xor i1 %352, true
  %354 = zext i1 %353 to i32
  %355 = call i32 (i32, i8*, ...) @ok(i32 %354, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.26, i64 0, i64 0))
  %356 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 1
  %357 = load i32, i32* %356, align 4
  %358 = call i32 @write(i32 %357, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i64 0, i64 0), i32 1)
  store i32 %358, i32* %10, align 4
  %359 = load i32, i32* %10, align 4
  %360 = icmp eq i32 %359, 1
  %361 = zext i1 %360 to i32
  %362 = load i32, i32* %10, align 4
  %363 = load i32, i32* @errno, align 4
  %364 = call i32 (i32, i8*, ...) @ok(i32 %361, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.16, i64 0, i64 0), i32 %362, i32 %363)
  %365 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  store i8 122, i8* %365, align 16
  %366 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 1
  store i8 122, i8* %366, align 1
  %367 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %368 = load i32, i32* %367, align 4
  %369 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %370 = call i32 @read(i32 %368, i8* %369, i32 2)
  store i32 %370, i32* %10, align 4
  %371 = load i32, i32* %10, align 4
  %372 = icmp eq i32 %371, 0
  %373 = zext i1 %372 to i32
  %374 = load i32, i32* %10, align 4
  %375 = call i32 (i32, i8*, ...) @ok(i32 %373, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.28, i64 0, i64 0), i32 %374)
  %376 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %377 = call i32 @memcmp(i8* %376, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i64 0, i64 0), i32 2)
  %378 = icmp ne i32 %377, 0
  %379 = xor i1 %378, true
  %380 = zext i1 %379 to i32
  %381 = call i32 (i32, i8*, ...) @ok(i32 %380, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.26, i64 0, i64 0))
  br label %384

382:                                              ; preds = %228
  %383 = call i32 @win_skip(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.30, i64 0, i64 0))
  br label %384

384:                                              ; preds = %382, %325
  %385 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 1
  %386 = load i32, i32* %385, align 4
  %387 = call i32 @close(i32 %386)
  %388 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %389 = load i32, i32* %388, align 4
  %390 = call i32 @close(i32 %389)
  br label %391

391:                                              ; preds = %384, %225, %115, %16
  ret void
}

declare dso_local i64 @_pipe(i32*, i32, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i8* @get_base_name(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i64 @_spawnvp(i32, i8*, i8**) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32* @fdopen(i32, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @fread(i8*, i32, i32, i32*) #1

declare dso_local i32 @ferror(i32*) #1

declare dso_local i32 @Sleep(i32) #1

declare dso_local i32 @feof(i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @setmode(i32, i32) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @win_skip(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
