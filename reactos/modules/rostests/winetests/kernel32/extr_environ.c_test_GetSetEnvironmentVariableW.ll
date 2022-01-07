; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_environ.c_test_GetSetEnvironmentVariableW.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_environ.c_test_GetSetEnvironmentVariableW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_GetSetEnvironmentVariableW.name = internal constant [13 x i8] c"SomeWildName\00", align 1
@test_GetSetEnvironmentVariableW.value = internal constant [14 x i8] c"SomeWildValue\00", align 1
@test_GetSetEnvironmentVariableW.name_cased = internal constant [13 x i8] c"sOMEwILDnAME\00", align 1
@test_GetSetEnvironmentVariableW.empty_strW = internal constant [1 x i8] zeroinitializer, align 1
@test_GetSetEnvironmentVariableW.fooW = internal constant [4 x i8] c"foo\00", align 1
@FALSE = common dso_local global i64 0, align 8
@ERROR_CALL_NOT_IMPLEMENTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"SetEnvironmentVariableW is not implemented\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [62 x i8] c"unexpected error in SetEnvironmentVariableW, GetLastError=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"should return length with terminating 0 ret_size=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"Expected untouched or empty buffer, got \22%s\22\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"should touch the buffer\0A\00", align 1
@.str.5 = private unnamed_addr constant [56 x i8] c"should return length without terminating 0 ret_size=%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"should erase existing variable\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"should not touch the buffer\0A\00", align 1
@ERROR_ENVVAR_NOT_FOUND = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [58 x i8] c"should not find variable but ret_size=%d GetLastError=%d\0A\00", align 1
@.str.9 = private unnamed_addr constant [54 x i8] c"should not fail with empty value but GetLastError=%d\0A\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"should copy an empty string\0A\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_GetSetEnvironmentVariableW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GetSetEnvironmentVariableW() #0 {
  %1 = alloca [256 x i8], align 16
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = call i64 @SetEnvironmentVariableW(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @test_GetSetEnvironmentVariableW.name, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @test_GetSetEnvironmentVariableW.value, i64 0, i64 0))
  store i64 %4, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = load i64, i64* @FALSE, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %14

8:                                                ; preds = %0
  %9 = call i64 (...) @GetLastError()
  %10 = load i64, i64* @ERROR_CALL_NOT_IMPLEMENTED, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = call i32 @win_skip(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %183

14:                                               ; preds = %8, %0
  %15 = load i64, i64* %2, align 8
  %16 = load i64, i64* @TRUE, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i64 (...) @GetLastError()
  %20 = call i32 (i32, i8*, ...) @ok(i32 %18, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i64 %19)
  %21 = call i64 @GetEnvironmentVariableW(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @test_GetSetEnvironmentVariableW.name, i64 0, i64 0), i8* null, i64 0)
  store i64 %21, i64* %3, align 8
  %22 = load i64, i64* %3, align 8
  %23 = call i64 @lstrlenW(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @test_GetSetEnvironmentVariableW.value, i64 0, i64 0))
  %24 = add nsw i64 %23, 1
  %25 = icmp eq i64 %22, %24
  %26 = zext i1 %25 to i32
  %27 = load i64, i64* %3, align 8
  %28 = call i32 (i32, i8*, ...) @ok(i32 %26, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i64 %27)
  %29 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %30 = call i32 @lstrcpyW(i8* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @test_GetSetEnvironmentVariableW.fooW, i64 0, i64 0))
  %31 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %32 = call i64 @lstrlenW(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @test_GetSetEnvironmentVariableW.value, i64 0, i64 0))
  %33 = call i64 @GetEnvironmentVariableW(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @test_GetSetEnvironmentVariableW.name, i64 0, i64 0), i8* %31, i64 %32)
  store i64 %33, i64* %3, align 8
  %34 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %35 = call i64 @lstrcmpW(i8* %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @test_GetSetEnvironmentVariableW.fooW, i64 0, i64 0))
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %14
  %38 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %39 = call i64 @lstrlenW(i8* %38)
  %40 = icmp eq i64 %39, 0
  br label %41

41:                                               ; preds = %37, %14
  %42 = phi i1 [ true, %14 ], [ %40, %37 ]
  %43 = zext i1 %42 to i32
  %44 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %45 = call i32 @ok_w(i32 %43, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i8* %44)
  %46 = load i64, i64* %3, align 8
  %47 = call i64 @lstrlenW(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @test_GetSetEnvironmentVariableW.value, i64 0, i64 0))
  %48 = add nsw i64 %47, 1
  %49 = icmp eq i64 %46, %48
  %50 = zext i1 %49 to i32
  %51 = load i64, i64* %3, align 8
  %52 = call i32 (i32, i8*, ...) @ok(i32 %50, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i64 %51)
  %53 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %54 = call i32 @lstrcpyW(i8* %53, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @test_GetSetEnvironmentVariableW.fooW, i64 0, i64 0))
  %55 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %56 = call i64 @lstrlenW(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @test_GetSetEnvironmentVariableW.value, i64 0, i64 0))
  %57 = add nsw i64 %56, 1
  %58 = call i64 @GetEnvironmentVariableW(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @test_GetSetEnvironmentVariableW.name, i64 0, i64 0), i8* %55, i64 %57)
  store i64 %58, i64* %3, align 8
  %59 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %60 = call i64 @lstrcmpW(i8* %59, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @test_GetSetEnvironmentVariableW.value, i64 0, i64 0))
  %61 = icmp eq i64 %60, 0
  %62 = zext i1 %61 to i32
  %63 = call i32 (i32, i8*, ...) @ok(i32 %62, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %64 = load i64, i64* %3, align 8
  %65 = call i64 @lstrlenW(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @test_GetSetEnvironmentVariableW.value, i64 0, i64 0))
  %66 = icmp eq i64 %64, %65
  %67 = zext i1 %66 to i32
  %68 = load i64, i64* %3, align 8
  %69 = call i32 (i32, i8*, ...) @ok(i32 %67, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.5, i64 0, i64 0), i64 %68)
  %70 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %71 = call i32 @lstrcpyW(i8* %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @test_GetSetEnvironmentVariableW.fooW, i64 0, i64 0))
  %72 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %73 = call i64 @lstrlenW(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @test_GetSetEnvironmentVariableW.value, i64 0, i64 0))
  %74 = add nsw i64 %73, 1
  %75 = call i64 @GetEnvironmentVariableW(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @test_GetSetEnvironmentVariableW.name_cased, i64 0, i64 0), i8* %72, i64 %74)
  store i64 %75, i64* %3, align 8
  %76 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %77 = call i64 @lstrcmpW(i8* %76, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @test_GetSetEnvironmentVariableW.value, i64 0, i64 0))
  %78 = icmp eq i64 %77, 0
  %79 = zext i1 %78 to i32
  %80 = call i32 (i32, i8*, ...) @ok(i32 %79, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %81 = load i64, i64* %3, align 8
  %82 = call i64 @lstrlenW(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @test_GetSetEnvironmentVariableW.value, i64 0, i64 0))
  %83 = icmp eq i64 %81, %82
  %84 = zext i1 %83 to i32
  %85 = load i64, i64* %3, align 8
  %86 = call i32 (i32, i8*, ...) @ok(i32 %84, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.5, i64 0, i64 0), i64 %85)
  %87 = call i64 @SetEnvironmentVariableW(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @test_GetSetEnvironmentVariableW.name_cased, i64 0, i64 0), i8* null)
  store i64 %87, i64* %2, align 8
  %88 = load i64, i64* %2, align 8
  %89 = load i64, i64* @TRUE, align 8
  %90 = icmp eq i64 %88, %89
  %91 = zext i1 %90 to i32
  %92 = call i32 (i32, i8*, ...) @ok(i32 %91, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  %93 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %94 = call i32 @lstrcpyW(i8* %93, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @test_GetSetEnvironmentVariableW.fooW, i64 0, i64 0))
  %95 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %96 = call i64 @lstrlenW(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @test_GetSetEnvironmentVariableW.value, i64 0, i64 0))
  %97 = add nsw i64 %96, 1
  %98 = call i64 @GetEnvironmentVariableW(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @test_GetSetEnvironmentVariableW.name, i64 0, i64 0), i8* %95, i64 %97)
  store i64 %98, i64* %3, align 8
  %99 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %100 = call i64 @lstrcmpW(i8* %99, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @test_GetSetEnvironmentVariableW.fooW, i64 0, i64 0))
  %101 = icmp eq i64 %100, 0
  %102 = zext i1 %101 to i32
  %103 = call i32 (i32, i8*, ...) @ok(i32 %102, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  %104 = load i64, i64* %3, align 8
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %41
  %107 = call i64 (...) @GetLastError()
  %108 = load i64, i64* @ERROR_ENVVAR_NOT_FOUND, align 8
  %109 = icmp eq i64 %107, %108
  br label %110

110:                                              ; preds = %106, %41
  %111 = phi i1 [ false, %41 ], [ %109, %106 ]
  %112 = zext i1 %111 to i32
  %113 = load i64, i64* %3, align 8
  %114 = call i64 (...) @GetLastError()
  %115 = call i32 (i32, i8*, ...) @ok(i32 %112, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.8, i64 0, i64 0), i64 %113, i64 %114)
  %116 = call i64 @SetEnvironmentVariableW(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @test_GetSetEnvironmentVariableW.name, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @test_GetSetEnvironmentVariableW.value, i64 0, i64 0))
  store i64 %116, i64* %2, align 8
  %117 = load i64, i64* %2, align 8
  %118 = load i64, i64* @TRUE, align 8
  %119 = icmp eq i64 %117, %118
  %120 = zext i1 %119 to i32
  %121 = call i64 (...) @GetLastError()
  %122 = call i32 (i32, i8*, ...) @ok(i32 %120, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i64 %121)
  %123 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %124 = call i32 @lstrcpyW(i8* %123, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @test_GetSetEnvironmentVariableW.fooW, i64 0, i64 0))
  %125 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %126 = call i64 @lstrlenW(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @test_GetSetEnvironmentVariableW.value, i64 0, i64 0))
  %127 = add nsw i64 %126, 1
  %128 = call i64 @GetEnvironmentVariableW(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @test_GetSetEnvironmentVariableW.name, i64 0, i64 0), i8* %125, i64 %127)
  store i64 %128, i64* %3, align 8
  %129 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %130 = call i64 @lstrcmpW(i8* %129, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @test_GetSetEnvironmentVariableW.value, i64 0, i64 0))
  %131 = icmp eq i64 %130, 0
  %132 = zext i1 %131 to i32
  %133 = call i32 (i32, i8*, ...) @ok(i32 %132, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %134 = load i64, i64* %3, align 8
  %135 = call i64 @lstrlenW(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @test_GetSetEnvironmentVariableW.value, i64 0, i64 0))
  %136 = icmp eq i64 %134, %135
  %137 = zext i1 %136 to i32
  %138 = load i64, i64* %3, align 8
  %139 = call i32 (i32, i8*, ...) @ok(i32 %137, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.5, i64 0, i64 0), i64 %138)
  %140 = call i64 @SetEnvironmentVariableW(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @test_GetSetEnvironmentVariableW.name_cased, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @test_GetSetEnvironmentVariableW.empty_strW, i64 0, i64 0))
  store i64 %140, i64* %2, align 8
  %141 = load i64, i64* %2, align 8
  %142 = load i64, i64* @TRUE, align 8
  %143 = icmp eq i64 %141, %142
  %144 = zext i1 %143 to i32
  %145 = call i64 (...) @GetLastError()
  %146 = call i32 (i32, i8*, ...) @ok(i32 %144, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9, i64 0, i64 0), i64 %145)
  %147 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %148 = call i32 @lstrcpyW(i8* %147, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @test_GetSetEnvironmentVariableW.fooW, i64 0, i64 0))
  %149 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %150 = call i64 @lstrlenW(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @test_GetSetEnvironmentVariableW.value, i64 0, i64 0))
  %151 = add nsw i64 %150, 1
  %152 = call i64 @GetEnvironmentVariableW(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @test_GetSetEnvironmentVariableW.name, i64 0, i64 0), i8* %149, i64 %151)
  store i64 %152, i64* %3, align 8
  %153 = load i64, i64* %3, align 8
  %154 = icmp eq i64 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %110
  %156 = call i64 (...) @GetLastError()
  %157 = load i64, i64* @ERROR_ENVVAR_NOT_FOUND, align 8
  %158 = icmp eq i64 %156, %157
  br label %159

159:                                              ; preds = %155, %110
  %160 = phi i1 [ false, %110 ], [ %158, %155 ]
  %161 = zext i1 %160 to i32
  %162 = load i64, i64* %3, align 8
  %163 = call i64 (...) @GetLastError()
  %164 = call i32 (i32, i8*, ...) @ok(i32 %161, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.8, i64 0, i64 0), i64 %162, i64 %163)
  %165 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %166 = call i64 @lstrcmpW(i8* %165, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @test_GetSetEnvironmentVariableW.empty_strW, i64 0, i64 0))
  %167 = icmp eq i64 %166, 0
  %168 = zext i1 %167 to i32
  %169 = call i32 (i32, i8*, ...) @ok(i32 %168, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0))
  %170 = call i64 @GetEnvironmentVariableW(i8* null, i8* null, i64 0)
  store i64 %170, i64* %3, align 8
  %171 = load i64, i64* %3, align 8
  %172 = icmp eq i64 %171, 0
  br i1 %172, label %173, label %177

173:                                              ; preds = %159
  %174 = call i64 (...) @GetLastError()
  %175 = load i64, i64* @ERROR_ENVVAR_NOT_FOUND, align 8
  %176 = icmp eq i64 %174, %175
  br label %177

177:                                              ; preds = %173, %159
  %178 = phi i1 [ false, %159 ], [ %176, %173 ]
  %179 = zext i1 %178 to i32
  %180 = load i64, i64* %3, align 8
  %181 = call i64 (...) @GetLastError()
  %182 = call i32 (i32, i8*, ...) @ok(i32 %179, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.8, i64 0, i64 0), i64 %180, i64 %181)
  br label %183

183:                                              ; preds = %177, %12
  ret void
}

declare dso_local i64 @SetEnvironmentVariableW(i8*, i8*) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @win_skip(i8*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @GetEnvironmentVariableW(i8*, i8*, i64) #1

declare dso_local i64 @lstrlenW(i8*) #1

declare dso_local i32 @lstrcpyW(i8*, i8*) #1

declare dso_local i32 @ok_w(i32, i8*, i8*) #1

declare dso_local i64 @lstrcmpW(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
