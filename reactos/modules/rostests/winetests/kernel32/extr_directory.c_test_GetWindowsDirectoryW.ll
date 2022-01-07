; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_directory.c_test_GetWindowsDirectoryW.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_directory.c_test_GetWindowsDirectoryW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@test_GetWindowsDirectoryW.fooW = internal constant [4 x float] [float 1.020000e+02, float 1.110000e+02, float 1.110000e+02, float 0.000000e+00], align 16
@ERROR_CALL_NOT_IMPLEMENTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"GetWindowsDirectoryW is not implemented\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"should fit into MAX_PATH\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"should not touch the buffer\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"GetWindowsDirectoryW returned %d, expected %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"should touch the buffer\0A\00", align 1
@.str.5 = private unnamed_addr constant [57 x i8] c"returned length should be equal to the length of string\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_GetWindowsDirectoryW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GetWindowsDirectoryW() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = load i32, i32* @MAX_PATH, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %3, align 8
  %9 = alloca float, i64 %7, align 16
  store i64 %7, i64* %4, align 8
  %10 = call i32 @GetWindowsDirectoryW(float* null, i32 0)
  store i32 %10, i32* %2, align 4
  %11 = load i32, i32* %2, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %0
  %14 = call i64 (...) @GetLastError()
  %15 = load i64, i64* @ERROR_CALL_NOT_IMPLEMENTED, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = call i32 @win_skip(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %74

19:                                               ; preds = %13, %0
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* @MAX_PATH, align 4
  %22 = icmp sle i32 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 (i32, i8*, ...) @ok(i32 %23, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %25 = call i32 @lstrcpyW(float* %9, float* getelementptr inbounds ([4 x float], [4 x float]* @test_GetWindowsDirectoryW.fooW, i64 0, i64 0))
  %26 = call i32 @GetWindowsDirectoryW(float* %9, i32 1)
  store i32 %26, i32* %1, align 4
  %27 = call i64 @lstrcmpW(float* %9, float* getelementptr inbounds ([4 x float], [4 x float]* @test_GetWindowsDirectoryW.fooW, i64 0, i64 0))
  %28 = icmp eq i64 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i32 (i32, i8*, ...) @ok(i32 %29, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %31 = load i32, i32* %1, align 4
  %32 = load i32, i32* %2, align 4
  %33 = icmp eq i32 %31, %32
  %34 = zext i1 %33 to i32
  %35 = load i32, i32* %1, align 4
  %36 = load i32, i32* %2, align 4
  %37 = call i32 (i32, i8*, ...) @ok(i32 %34, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %35, i32 %36)
  %38 = call i32 @lstrcpyW(float* %9, float* getelementptr inbounds ([4 x float], [4 x float]* @test_GetWindowsDirectoryW.fooW, i64 0, i64 0))
  %39 = load i32, i32* %2, align 4
  %40 = sub nsw i32 %39, 1
  %41 = call i32 @GetWindowsDirectoryW(float* %9, i32 %40)
  store i32 %41, i32* %1, align 4
  %42 = call i64 @lstrcmpW(float* %9, float* getelementptr inbounds ([4 x float], [4 x float]* @test_GetWindowsDirectoryW.fooW, i64 0, i64 0))
  %43 = icmp eq i64 %42, 0
  %44 = zext i1 %43 to i32
  %45 = call i32 (i32, i8*, ...) @ok(i32 %44, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %46 = load i32, i32* %1, align 4
  %47 = load i32, i32* %2, align 4
  %48 = icmp eq i32 %46, %47
  %49 = zext i1 %48 to i32
  %50 = load i32, i32* %1, align 4
  %51 = load i32, i32* %2, align 4
  %52 = call i32 (i32, i8*, ...) @ok(i32 %49, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %50, i32 %51)
  %53 = call i32 @lstrcpyW(float* %9, float* getelementptr inbounds ([4 x float], [4 x float]* @test_GetWindowsDirectoryW.fooW, i64 0, i64 0))
  %54 = load i32, i32* %2, align 4
  %55 = call i32 @GetWindowsDirectoryW(float* %9, i32 %54)
  store i32 %55, i32* %1, align 4
  %56 = call i64 @lstrcmpW(float* %9, float* getelementptr inbounds ([4 x float], [4 x float]* @test_GetWindowsDirectoryW.fooW, i64 0, i64 0))
  %57 = icmp ne i64 %56, 0
  %58 = zext i1 %57 to i32
  %59 = call i32 (i32, i8*, ...) @ok(i32 %58, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %60 = load i32, i32* %1, align 4
  %61 = call i32 @lstrlenW(float* %9)
  %62 = icmp eq i32 %60, %61
  %63 = zext i1 %62 to i32
  %64 = call i32 (i32, i8*, ...) @ok(i32 %63, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i64 0, i64 0))
  %65 = load i32, i32* %1, align 4
  %66 = load i32, i32* %2, align 4
  %67 = sub nsw i32 %66, 1
  %68 = icmp eq i32 %65, %67
  %69 = zext i1 %68 to i32
  %70 = load i32, i32* %1, align 4
  %71 = load i32, i32* %2, align 4
  %72 = sub nsw i32 %71, 1
  %73 = call i32 (i32, i8*, ...) @ok(i32 %69, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %70, i32 %72)
  store i32 0, i32* %5, align 4
  br label %74

74:                                               ; preds = %19, %17
  %75 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %75)
  %76 = load i32, i32* %5, align 4
  switch i32 %76, label %78 [
    i32 0, label %77
    i32 1, label %77
  ]

77:                                               ; preds = %74, %74
  ret void

78:                                               ; preds = %74
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GetWindowsDirectoryW(float*, i32) #2

declare dso_local i64 @GetLastError(...) #2

declare dso_local i32 @win_skip(i8*) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @lstrcpyW(float*, float*) #2

declare dso_local i64 @lstrcmpW(float*, float*) #2

declare dso_local i32 @lstrlenW(float*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
