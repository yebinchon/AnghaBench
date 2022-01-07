; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_path.c_test_GetShortPathNameW.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_path.c_test_GetShortPathNameW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_GetShortPathNameW.extended_prefix = internal constant [5 x i8] c"\\\\?\\\00", align 1
@test_GetShortPathNameW.test_path = internal constant [18 x i8] c"LongDirectoryName\00", align 16
@test_GetShortPathNameW.name = internal constant [5 x i8] c"test\00", align 1
@test_GetShortPathNameW.backSlash = internal constant [2 x i8] c"\\\00", align 1
@test_GetShortPathNameW.a_bcdeW = internal constant [7 x i8] c"a.bcde\00", align 1
@test_GetShortPathNameW.wildW = internal constant [2 x i8] c"*\00", align 1
@MAX_PATH = common dso_local global i32 0, align 4
@ERROR_CALL_NOT_IMPLEMENTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"GetTempPathW is not implemented\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Directory was not created. LastError = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"GetShortPathNameW returned 0.\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"GetShortPathNameW should fail\0A\00", align 1
@ERROR_FILE_NOT_FOUND = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [39 x i8] c"expected ERROR_FILE_NOT_FOUND, got %d\0A\00", align 1
@GENERIC_READ = common dso_local global i32 0, align 4
@GENERIC_WRITE = common dso_local global i32 0, align 4
@CREATE_ALWAYS = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_NORMAL = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [23 x i8] c"File was not created.\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"Cannot delete file.\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"GetShortPathNameW failed: %u.\0A\00", align 1
@ERROR_INVALID_NAME = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [16 x i8] c"wrong error %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"Cannot delete directory.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_GetShortPathNameW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GetShortPathNameW() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = load i32, i32* @MAX_PATH, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %1, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %2, align 8
  %14 = load i32, i32* @MAX_PATH, align 4
  %15 = zext i32 %14 to i64
  %16 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %3, align 8
  %17 = load i32, i32* @MAX_PATH, align 4
  %18 = zext i32 %17 to i64
  %19 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %5, align 8
  %20 = call i32 @SetLastError(i32 -559038737)
  %21 = load i32, i32* @MAX_PATH, align 4
  %22 = call i32 @GetTempPathW(i32 %21, i8* %16)
  %23 = call i64 (...) @GetLastError()
  %24 = load i64, i64* @ERROR_CALL_NOT_IMPLEMENTED, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %0
  %27 = call i32 @win_skip(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  br label %145

28:                                               ; preds = %0
  %29 = call i32 @lstrcpyW(i8* %13, i8* %16)
  %30 = call i32 @lstrcatW(i8* %13, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @test_GetShortPathNameW.test_path, i64 0, i64 0))
  %31 = call i32 @lstrcatW(i8* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @test_GetShortPathNameW.backSlash, i64 0, i64 0))
  %32 = call i32 @CreateDirectoryW(i8* %13, i32* null)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i64 (...) @GetLastError()
  %35 = call i32 (i32, i8*, ...) @ok(i32 %33, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i64 %34)
  %36 = call i32 @lstrcpyW(i8* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_GetShortPathNameW.extended_prefix, i64 0, i64 0))
  %37 = call i32 @lstrcatW(i8* %13, i8* %16)
  %38 = call i32 @lstrcatW(i8* %13, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @test_GetShortPathNameW.test_path, i64 0, i64 0))
  %39 = call i32 @lstrcatW(i8* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @test_GetShortPathNameW.backSlash, i64 0, i64 0))
  %40 = getelementptr inbounds i8, i8* %19, i64 0
  store i8 0, i8* %40, align 16
  %41 = udiv i64 %18, 1
  %42 = trunc i64 %41 to i32
  %43 = call i32 @GetShortPathNameW(i8* %13, i8* %19, i32 %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 (i32, i8*, ...) @ok(i32 %44, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %46 = call i32 @lstrcpyW(i8* %13, i8* %16)
  %47 = call i32 @lstrcatW(i8* %13, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @test_GetShortPathNameW.test_path, i64 0, i64 0))
  %48 = call i32 @lstrcatW(i8* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @test_GetShortPathNameW.backSlash, i64 0, i64 0))
  %49 = call i32 @GetShortPathNameW(i8* %13, i8* %19, i32 0)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 (i32, i8*, ...) @ok(i32 %50, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @GetShortPathNameW(i8* %13, i8* %19, i32 %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %28
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %6, align 4
  %59 = sub nsw i32 %58, 1
  %60 = icmp eq i32 %57, %59
  br label %61

61:                                               ; preds = %56, %28
  %62 = phi i1 [ false, %28 ], [ %60, %56 ]
  %63 = zext i1 %62 to i32
  %64 = call i32 (i32, i8*, ...) @ok(i32 %63, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %65 = call i32 @lstrcatW(i8* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_GetShortPathNameW.name, i64 0, i64 0))
  %66 = call i32 @SetLastError(i32 -559038737)
  %67 = call i32 @GetShortPathNameW(i8* %19, i8* %13, i32 0)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  %72 = call i32 (i32, i8*, ...) @ok(i32 %71, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %73 = call i64 (...) @GetLastError()
  %74 = load i64, i64* @ERROR_FILE_NOT_FOUND, align 8
  %75 = icmp eq i64 %73, %74
  %76 = zext i1 %75 to i32
  %77 = call i64 (...) @GetLastError()
  %78 = call i32 (i32, i8*, ...) @ok(i32 %76, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i64 %77)
  %79 = load i32, i32* @GENERIC_READ, align 4
  %80 = load i32, i32* @GENERIC_WRITE, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @CREATE_ALWAYS, align 4
  %83 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %84 = call i64 @CreateFileW(i8* %19, i32 %81, i32 0, i32* null, i32 %82, i32 %83, i32* null)
  store i64 %84, i64* %7, align 8
  %85 = load i64, i64* %7, align 8
  %86 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %87 = icmp ne i64 %85, %86
  %88 = zext i1 %87 to i32
  %89 = call i32 (i32, i8*, ...) @ok(i32 %88, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %90 = load i64, i64* %7, align 8
  %91 = call i32 @CloseHandle(i64 %90)
  %92 = call i32 @DeleteFileW(i8* %19)
  store i32 %92, i32* %8, align 4
  %93 = load i32, i32* %8, align 4
  %94 = call i32 (i32, i8*, ...) @ok(i32 %93, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %95 = call i32 @lstrlenW(i8* %13)
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %13, i64 %96
  store i8* %97, i8** %4, align 8
  %98 = load i8*, i8** %4, align 8
  %99 = call i32 @lstrcpyW(i8* %98, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @test_GetShortPathNameW.a_bcdeW, i64 0, i64 0))
  %100 = load i32, i32* @GENERIC_READ, align 4
  %101 = load i32, i32* @GENERIC_WRITE, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* @CREATE_ALWAYS, align 4
  %104 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %105 = call i64 @CreateFileW(i8* %13, i32 %102, i32 0, i32* null, i32 %103, i32 %104, i32* null)
  store i64 %105, i64* %7, align 8
  %106 = load i64, i64* %7, align 8
  %107 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %108 = icmp ne i64 %106, %107
  %109 = zext i1 %108 to i32
  %110 = call i32 (i32, i8*, ...) @ok(i32 %109, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %111 = load i64, i64* %7, align 8
  %112 = call i32 @CloseHandle(i64 %111)
  %113 = udiv i64 %18, 1
  %114 = trunc i64 %113 to i32
  %115 = call i32 @GetShortPathNameW(i8* %13, i8* %19, i32 %114)
  store i32 %115, i32* %6, align 4
  %116 = load i32, i32* %6, align 4
  %117 = call i64 (...) @GetLastError()
  %118 = call i32 (i32, i8*, ...) @ok(i32 %116, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i64 %117)
  %119 = load i8*, i8** %4, align 8
  %120 = call i32 @lstrcpyW(i8* %119, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @test_GetShortPathNameW.wildW, i64 0, i64 0))
  %121 = call i32 @SetLastError(i32 -559038737)
  %122 = udiv i64 %18, 1
  %123 = trunc i64 %122 to i32
  %124 = call i32 @GetShortPathNameW(i8* %13, i8* %19, i32 %123)
  store i32 %124, i32* %6, align 4
  %125 = load i32, i32* %6, align 4
  %126 = icmp ne i32 %125, 0
  %127 = xor i1 %126, true
  %128 = zext i1 %127 to i32
  %129 = call i32 (i32, i8*, ...) @ok(i32 %128, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %130 = call i64 (...) @GetLastError()
  %131 = load i64, i64* @ERROR_INVALID_NAME, align 8
  %132 = icmp eq i64 %130, %131
  %133 = zext i1 %132 to i32
  %134 = call i64 (...) @GetLastError()
  %135 = call i32 (i32, i8*, ...) @ok(i32 %133, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i64 %134)
  %136 = load i8*, i8** %4, align 8
  %137 = call i32 @lstrcpyW(i8* %136, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @test_GetShortPathNameW.a_bcdeW, i64 0, i64 0))
  %138 = call i32 @DeleteFileW(i8* %13)
  store i32 %138, i32* %8, align 4
  %139 = load i32, i32* %8, align 4
  %140 = call i32 (i32, i8*, ...) @ok(i32 %139, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %141 = load i8*, i8** %4, align 8
  store i8 0, i8* %141, align 1
  %142 = call i32 @RemoveDirectoryW(i8* %13)
  store i32 %142, i32* %8, align 4
  %143 = load i32, i32* %8, align 4
  %144 = call i32 (i32, i8*, ...) @ok(i32 %143, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %145

145:                                              ; preds = %61, %26
  %146 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %146)
  %147 = load i32, i32* %9, align 4
  switch i32 %147, label %149 [
    i32 0, label %148
    i32 1, label %148
  ]

148:                                              ; preds = %145, %145
  ret void

149:                                              ; preds = %145
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @SetLastError(i32) #2

declare dso_local i32 @GetTempPathW(i32, i8*) #2

declare dso_local i64 @GetLastError(...) #2

declare dso_local i32 @win_skip(i8*) #2

declare dso_local i32 @lstrcpyW(i8*, i8*) #2

declare dso_local i32 @lstrcatW(i8*, i8*) #2

declare dso_local i32 @CreateDirectoryW(i8*, i32*) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @GetShortPathNameW(i8*, i8*, i32) #2

declare dso_local i64 @CreateFileW(i8*, i32, i32, i32*, i32, i32, i32*) #2

declare dso_local i32 @CloseHandle(i64) #2

declare dso_local i32 @DeleteFileW(i8*) #2

declare dso_local i32 @lstrlenW(i8*) #2

declare dso_local i32 @RemoveDirectoryW(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
