; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_directory.c_test_RemoveDirectoryW.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_directory.c_test_RemoveDirectoryW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@test_RemoveDirectoryW.tmp_dir_name = internal constant [17 x i8] c"Please Remove Me\00", align 16
@test_RemoveDirectoryW.questionW = internal constant [2 x i8] c"?\00", align 1
@ERROR_CALL_NOT_IMPLEMENTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"CreateDirectoryW is not available\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"CreateDirectoryW should always succeed\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"SetCurrentDirectoryW failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"RemoveDirectoryW succeeded\0A\00", align 1
@ERROR_SHARING_VIOLATION = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [42 x i8] c"Expected ERROR_SHARING_VIOLATION, got %u\0A\00", align 1
@FILE_TRAVERSE = common dso_local global i32 0, align 4
@SYNCHRONIZE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [40 x i8] c"RemoveDirectoryW should always succeed\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@ERROR_INVALID_NAME = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [76 x i8] c"RemoveDirectoryW with wildcard should fail with error 183, ret=%s error=%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c" True\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"False\00", align 1
@.str.9 = private unnamed_addr constant [83 x i8] c"RemoveDirectoryW with * wildcard name should fail with error 183, ret=%s error=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_RemoveDirectoryW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_RemoveDirectoryW() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = load i32, i32* @MAX_PATH, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %1, align 8
  %9 = alloca i8, i64 %7, align 16
  store i64 %7, i64* %2, align 8
  %10 = load i32, i32* @MAX_PATH, align 4
  %11 = zext i32 %10 to i64
  %12 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %3, align 8
  %13 = load i32, i32* @MAX_PATH, align 4
  %14 = call i32 @GetTempPathW(i32 %13, i8* %12)
  %15 = call i32 @lstrcatW(i8* %12, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @test_RemoveDirectoryW.tmp_dir_name, i64 0, i64 0))
  %16 = call i64 @CreateDirectoryW(i8* %12, i32* null)
  store i64 %16, i64* %4, align 8
  %17 = load i64, i64* %4, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %0
  %20 = call i64 (...) @GetLastError()
  %21 = load i64, i64* @ERROR_CALL_NOT_IMPLEMENTED, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = call i32 @win_skip(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %105

25:                                               ; preds = %19, %0
  %26 = load i64, i64* %4, align 8
  %27 = load i64, i64* @TRUE, align 8
  %28 = icmp eq i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 (i32, i8*, ...) @ok(i32 %29, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @MAX_PATH, align 4
  %32 = call i32 @GetCurrentDirectoryW(i32 %31, i8* %9)
  %33 = call i32 @SetCurrentDirectoryW(i8* %12)
  %34 = call i32 (i32, i8*, ...) @ok(i32 %33, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %35 = call i32 @SetLastError(i32 -559038737)
  %36 = call i64 @RemoveDirectoryW(i8* %12)
  %37 = icmp ne i64 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i32 (i32, i8*, ...) @ok(i32 %39, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %41 = call i64 (...) @GetLastError()
  %42 = load i64, i64* @ERROR_SHARING_VIOLATION, align 8
  %43 = icmp eq i64 %41, %42
  %44 = zext i1 %43 to i32
  %45 = call i64 (...) @GetLastError()
  %46 = call i32 (i32, i8*, ...) @ok(i32 %44, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i64 %45)
  %47 = call %struct.TYPE_8__* (...) @NtCurrentTeb()
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @FILE_TRAVERSE, align 4
  %56 = load i32, i32* @SYNCHRONIZE, align 4
  %57 = or i32 %55, %56
  %58 = call i32 @TEST_GRANTED_ACCESS(i32 %54, i32 %57)
  %59 = call i32 @SetCurrentDirectoryW(i8* %9)
  %60 = call i64 @RemoveDirectoryW(i8* %12)
  store i64 %60, i64* %4, align 8
  %61 = load i64, i64* %4, align 8
  %62 = load i64, i64* @TRUE, align 8
  %63 = icmp eq i64 %61, %62
  %64 = zext i1 %63 to i32
  %65 = call i32 (i32, i8*, ...) @ok(i32 %64, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  %66 = call i32 @lstrcatW(i8* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @test_RemoveDirectoryW.questionW, i64 0, i64 0))
  %67 = call i64 @RemoveDirectoryW(i8* %12)
  store i64 %67, i64* %4, align 8
  %68 = load i64, i64* %4, align 8
  %69 = load i64, i64* @FALSE, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %25
  %72 = call i64 (...) @GetLastError()
  %73 = load i64, i64* @ERROR_INVALID_NAME, align 8
  %74 = icmp eq i64 %72, %73
  br label %75

75:                                               ; preds = %71, %25
  %76 = phi i1 [ false, %25 ], [ %74, %71 ]
  %77 = zext i1 %76 to i32
  %78 = load i64, i64* %4, align 8
  %79 = icmp ne i64 %78, 0
  %80 = zext i1 %79 to i64
  %81 = select i1 %79, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0)
  %82 = call i64 (...) @GetLastError()
  %83 = call i32 (i32, i8*, ...) @ok(i32 %77, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.6, i64 0, i64 0), i8* %81, i64 %82)
  %84 = call i32 @lstrlenW(i8* %12)
  %85 = sub nsw i32 %84, 1
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %12, i64 %86
  store i8 42, i8* %87, align 1
  %88 = call i64 @RemoveDirectoryW(i8* %12)
  store i64 %88, i64* %4, align 8
  %89 = load i64, i64* %4, align 8
  %90 = load i64, i64* @FALSE, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %75
  %93 = call i64 (...) @GetLastError()
  %94 = load i64, i64* @ERROR_INVALID_NAME, align 8
  %95 = icmp eq i64 %93, %94
  br label %96

96:                                               ; preds = %92, %75
  %97 = phi i1 [ false, %75 ], [ %95, %92 ]
  %98 = zext i1 %97 to i32
  %99 = load i64, i64* %4, align 8
  %100 = icmp ne i64 %99, 0
  %101 = zext i1 %100 to i64
  %102 = select i1 %100, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0)
  %103 = call i64 (...) @GetLastError()
  %104 = call i32 (i32, i8*, ...) @ok(i32 %98, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.9, i64 0, i64 0), i8* %102, i64 %103)
  store i32 0, i32* %5, align 4
  br label %105

105:                                              ; preds = %96, %23
  %106 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %106)
  %107 = load i32, i32* %5, align 4
  switch i32 %107, label %109 [
    i32 0, label %108
    i32 1, label %108
  ]

108:                                              ; preds = %105, %105
  ret void

109:                                              ; preds = %105
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GetTempPathW(i32, i8*) #2

declare dso_local i32 @lstrcatW(i8*, i8*) #2

declare dso_local i64 @CreateDirectoryW(i8*, i32*) #2

declare dso_local i64 @GetLastError(...) #2

declare dso_local i32 @win_skip(i8*) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @GetCurrentDirectoryW(i32, i8*) #2

declare dso_local i32 @SetCurrentDirectoryW(i8*) #2

declare dso_local i32 @SetLastError(i32) #2

declare dso_local i64 @RemoveDirectoryW(i8*) #2

declare dso_local i32 @TEST_GRANTED_ACCESS(i32, i32) #2

declare dso_local %struct.TYPE_8__* @NtCurrentTeb(...) #2

declare dso_local i32 @lstrlenW(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
