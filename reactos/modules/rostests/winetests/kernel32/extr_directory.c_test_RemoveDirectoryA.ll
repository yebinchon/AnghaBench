; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_directory.c_test_RemoveDirectoryA.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_directory.c_test_RemoveDirectoryA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Please Remove Me\00", align 1
@TRUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"CreateDirectoryA should always succeed\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"SetCurrentDirectoryA failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"RemoveDirectoryA succeeded\0A\00", align 1
@ERROR_SHARING_VIOLATION = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [42 x i8] c"Expected ERROR_SHARING_VIOLATION, got %u\0A\00", align 1
@FILE_TRAVERSE = common dso_local global i32 0, align 4
@SYNCHRONIZE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [40 x i8] c"RemoveDirectoryA should always succeed\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@FALSE = common dso_local global i64 0, align 8
@ERROR_INVALID_NAME = common dso_local global i64 0, align 8
@ERROR_PATH_NOT_FOUND = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [68 x i8] c"RemoveDirectoryA with ? wildcard name should fail, ret=%s error=%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c" True\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"False\00", align 1
@.str.10 = private unnamed_addr constant [68 x i8] c"RemoveDirectoryA with * wildcard name should fail, ret=%s error=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_RemoveDirectoryA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_RemoveDirectoryA() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = load i32, i32* @MAX_PATH, align 4
  %6 = zext i32 %5 to i64
  %7 = call i8* @llvm.stacksave()
  store i8* %7, i8** %1, align 8
  %8 = alloca i8, i64 %6, align 16
  store i64 %6, i64* %2, align 8
  %9 = load i32, i32* @MAX_PATH, align 4
  %10 = zext i32 %9 to i64
  %11 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %3, align 8
  %12 = load i32, i32* @MAX_PATH, align 4
  %13 = call i32 @GetTempPathA(i32 %12, i8* %11)
  %14 = call i32 @lstrcatA(i8* %11, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %15 = call i64 @CreateDirectoryA(i8* %11, i32* null)
  store i64 %15, i64* %4, align 8
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* @TRUE, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 (i32, i8*, ...) @ok(i32 %19, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32, i32* @MAX_PATH, align 4
  %22 = call i32 @GetCurrentDirectoryA(i32 %21, i8* %8)
  %23 = call i32 @SetCurrentDirectoryA(i8* %11)
  %24 = call i32 (i32, i8*, ...) @ok(i32 %23, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %25 = call i32 @SetLastError(i32 -559038737)
  %26 = call i64 @RemoveDirectoryA(i8* %11)
  %27 = icmp ne i64 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i32 (i32, i8*, ...) @ok(i32 %29, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %31 = call i64 (...) @GetLastError()
  %32 = load i64, i64* @ERROR_SHARING_VIOLATION, align 8
  %33 = icmp eq i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i64 (...) @GetLastError()
  %36 = call i32 (i32, i8*, ...) @ok(i32 %34, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i64 %35)
  %37 = call %struct.TYPE_8__* (...) @NtCurrentTeb()
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @FILE_TRAVERSE, align 4
  %46 = load i32, i32* @SYNCHRONIZE, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @TEST_GRANTED_ACCESS(i32 %44, i32 %47)
  %49 = call i32 @SetCurrentDirectoryA(i8* %8)
  %50 = call i64 @RemoveDirectoryA(i8* %11)
  store i64 %50, i64* %4, align 8
  %51 = load i64, i64* %4, align 8
  %52 = load i64, i64* @TRUE, align 8
  %53 = icmp eq i64 %51, %52
  %54 = zext i1 %53 to i32
  %55 = call i32 (i32, i8*, ...) @ok(i32 %54, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  %56 = call i32 @lstrcatA(i8* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %57 = call i64 @RemoveDirectoryA(i8* %11)
  store i64 %57, i64* %4, align 8
  %58 = load i64, i64* %4, align 8
  %59 = load i64, i64* @FALSE, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %71

61:                                               ; preds = %0
  %62 = call i64 (...) @GetLastError()
  %63 = load i64, i64* @ERROR_INVALID_NAME, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %69, label %65

65:                                               ; preds = %61
  %66 = call i64 (...) @GetLastError()
  %67 = load i64, i64* @ERROR_PATH_NOT_FOUND, align 8
  %68 = icmp eq i64 %66, %67
  br label %69

69:                                               ; preds = %65, %61
  %70 = phi i1 [ true, %61 ], [ %68, %65 ]
  br label %71

71:                                               ; preds = %69, %0
  %72 = phi i1 [ false, %0 ], [ %70, %69 ]
  %73 = zext i1 %72 to i32
  %74 = load i64, i64* %4, align 8
  %75 = icmp ne i64 %74, 0
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0)
  %78 = call i64 (...) @GetLastError()
  %79 = call i32 (i32, i8*, ...) @ok(i32 %73, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.7, i64 0, i64 0), i8* %77, i64 %78)
  %80 = call i32 @lstrlenA(i8* %11)
  %81 = sub nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %11, i64 %82
  store i8 42, i8* %83, align 1
  %84 = call i64 @RemoveDirectoryA(i8* %11)
  store i64 %84, i64* %4, align 8
  %85 = load i64, i64* %4, align 8
  %86 = load i64, i64* @FALSE, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %98

88:                                               ; preds = %71
  %89 = call i64 (...) @GetLastError()
  %90 = load i64, i64* @ERROR_INVALID_NAME, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %96, label %92

92:                                               ; preds = %88
  %93 = call i64 (...) @GetLastError()
  %94 = load i64, i64* @ERROR_PATH_NOT_FOUND, align 8
  %95 = icmp eq i64 %93, %94
  br label %96

96:                                               ; preds = %92, %88
  %97 = phi i1 [ true, %88 ], [ %95, %92 ]
  br label %98

98:                                               ; preds = %96, %71
  %99 = phi i1 [ false, %71 ], [ %97, %96 ]
  %100 = zext i1 %99 to i32
  %101 = load i64, i64* %4, align 8
  %102 = icmp ne i64 %101, 0
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0)
  %105 = call i64 (...) @GetLastError()
  %106 = call i32 (i32, i8*, ...) @ok(i32 %100, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.10, i64 0, i64 0), i8* %104, i64 %105)
  %107 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %107)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GetTempPathA(i32, i8*) #2

declare dso_local i32 @lstrcatA(i8*, i8*) #2

declare dso_local i64 @CreateDirectoryA(i8*, i32*) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @GetCurrentDirectoryA(i32, i8*) #2

declare dso_local i32 @SetCurrentDirectoryA(i8*) #2

declare dso_local i32 @SetLastError(i32) #2

declare dso_local i64 @RemoveDirectoryA(i8*) #2

declare dso_local i64 @GetLastError(...) #2

declare dso_local i32 @TEST_GRANTED_ACCESS(i32, i32) #2

declare dso_local %struct.TYPE_8__* @NtCurrentTeb(...) #2

declare dso_local i32 @lstrlenA(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
