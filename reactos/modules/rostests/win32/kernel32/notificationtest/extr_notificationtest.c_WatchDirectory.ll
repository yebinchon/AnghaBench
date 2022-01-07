; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/win32/kernel32/notificationtest/extr_notificationtest.c_WatchDirectory.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/win32/kernel32/notificationtest/extr_notificationtest.c_WatchDirectory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_MAX_FNAME = common dso_local global i32 0, align 4
@_MAX_EXT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@FILE_NOTIFY_CHANGE_FILE_NAME = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [55 x i8] c"\0A ERROR: FindFirstChangeNotification function failed.\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@FILE_NOTIFY_CHANGE_DIR_NAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [60 x i8] c"\0A ERROR: Unexpected NULL from FindFirstChangeNotification.\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"\0AWaiting for notification...\0A\00", align 1
@INFINITE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [54 x i8] c"\0A ERROR: FindNextChangeNotification function failed.\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"\0ANo changes in the timeout period.\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"\0A ERROR: Unhandled dwWaitStatus.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @WatchDirectory(i64* %0) #0 {
  %2 = alloca i64*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [2 x i32*], align 16
  %5 = alloca [4 x i64], align 16
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64* %0, i64** %2, align 8
  %9 = load i32, i32* @_MAX_FNAME, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %6, align 8
  %12 = alloca i64, i64 %10, align 16
  store i64 %10, i64* %7, align 8
  %13 = load i32, i32* @_MAX_EXT, align 4
  %14 = zext i32 %13 to i64
  %15 = alloca i64, i64 %14, align 16
  store i64 %14, i64* %8, align 8
  %16 = load i64*, i64** %2, align 8
  %17 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0
  %18 = load i32, i32* @_MAX_FNAME, align 4
  %19 = load i32, i32* @_MAX_EXT, align 4
  %20 = call i32 @_tsplitpath_s(i64* %16, i64* %17, i32 4, i32* null, i32 0, i64* %12, i32 %18, i64* %15, i32 %19)
  %21 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 2
  store i64 92, i64* %21, align 16
  %22 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 3
  store i64 0, i64* %22, align 8
  %23 = load i64*, i64** %2, align 8
  %24 = load i64, i64* @FALSE, align 8
  %25 = load i32, i32* @FILE_NOTIFY_CHANGE_FILE_NAME, align 4
  %26 = call i32* @FindFirstChangeNotification(i64* %23, i64 %24, i32 %25)
  %27 = getelementptr inbounds [2 x i32*], [2 x i32*]* %4, i64 0, i64 0
  store i32* %26, i32** %27, align 16
  %28 = getelementptr inbounds [2 x i32*], [2 x i32*]* %4, i64 0, i64 0
  %29 = load i32*, i32** %28, align 16
  %30 = load i32*, i32** @INVALID_HANDLE_VALUE, align 8
  %31 = icmp eq i32* %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %1
  %33 = call i32 @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %34 = call i32 (...) @GetLastError()
  %35 = call i32 @ExitProcess(i32 %34)
  br label %36

36:                                               ; preds = %32, %1
  %37 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0
  %38 = load i64, i64* @TRUE, align 8
  %39 = load i32, i32* @FILE_NOTIFY_CHANGE_DIR_NAME, align 4
  %40 = call i32* @FindFirstChangeNotification(i64* %37, i64 %38, i32 %39)
  %41 = getelementptr inbounds [2 x i32*], [2 x i32*]* %4, i64 0, i64 1
  store i32* %40, i32** %41, align 8
  %42 = getelementptr inbounds [2 x i32*], [2 x i32*]* %4, i64 0, i64 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i32*, i32** @INVALID_HANDLE_VALUE, align 8
  %45 = icmp eq i32* %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %36
  %47 = call i32 @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %48 = call i32 (...) @GetLastError()
  %49 = call i32 @ExitProcess(i32 %48)
  br label %50

50:                                               ; preds = %46, %36
  %51 = getelementptr inbounds [2 x i32*], [2 x i32*]* %4, i64 0, i64 0
  %52 = load i32*, i32** %51, align 16
  %53 = icmp eq i32* %52, null
  br i1 %53, label %58, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds [2 x i32*], [2 x i32*]* %4, i64 0, i64 1
  %56 = load i32*, i32** %55, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %54, %50
  %59 = call i32 @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0))
  %60 = call i32 (...) @GetLastError()
  %61 = call i32 @ExitProcess(i32 %60)
  br label %62

62:                                               ; preds = %58, %54
  br label %63

63:                                               ; preds = %105, %62
  %64 = load i64, i64* @TRUE, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %106

66:                                               ; preds = %63
  %67 = call i32 @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %68 = getelementptr inbounds [2 x i32*], [2 x i32*]* %4, i64 0, i64 0
  %69 = load i64, i64* @FALSE, align 8
  %70 = load i32, i32* @INFINITE, align 4
  %71 = call i32 @WaitForMultipleObjects(i32 2, i32** %68, i64 %69, i32 %70)
  store i32 %71, i32* %3, align 4
  %72 = load i32, i32* %3, align 4
  switch i32 %72, label %101 [
    i32 129, label %73
    i32 130, label %86
    i32 128, label %99
  ]

73:                                               ; preds = %66
  %74 = load i64*, i64** %2, align 8
  %75 = call i32 @RefreshDirectory(i64* %74)
  %76 = getelementptr inbounds [2 x i32*], [2 x i32*]* %4, i64 0, i64 0
  %77 = load i32*, i32** %76, align 16
  %78 = call i64 @FindNextChangeNotification(i32* %77)
  %79 = load i64, i64* @FALSE, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %73
  %82 = call i32 @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0))
  %83 = call i32 (...) @GetLastError()
  %84 = call i32 @ExitProcess(i32 %83)
  br label %85

85:                                               ; preds = %81, %73
  br label %105

86:                                               ; preds = %66
  %87 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0
  %88 = call i32 @RefreshTree(i64* %87)
  %89 = getelementptr inbounds [2 x i32*], [2 x i32*]* %4, i64 0, i64 1
  %90 = load i32*, i32** %89, align 8
  %91 = call i64 @FindNextChangeNotification(i32* %90)
  %92 = load i64, i64* @FALSE, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %86
  %95 = call i32 @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0))
  %96 = call i32 (...) @GetLastError()
  %97 = call i32 @ExitProcess(i32 %96)
  br label %98

98:                                               ; preds = %94, %86
  br label %105

99:                                               ; preds = %66
  %100 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  br label %105

101:                                              ; preds = %66
  %102 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  %103 = call i32 (...) @GetLastError()
  %104 = call i32 @ExitProcess(i32 %103)
  br label %105

105:                                              ; preds = %101, %99, %98, %85
  br label %63

106:                                              ; preds = %63
  %107 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %107)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @_tsplitpath_s(i64*, i64*, i32, i32*, i32, i64*, i32, i64*, i32) #2

declare dso_local i32* @FindFirstChangeNotification(i64*, i64, i32) #2

declare dso_local i32 @printf(i8*) #2

declare dso_local i32 @ExitProcess(i32) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i32 @WaitForMultipleObjects(i32, i32**, i64, i32) #2

declare dso_local i32 @RefreshDirectory(i64*) #2

declare dso_local i64 @FindNextChangeNotification(i32*) #2

declare dso_local i32 @RefreshTree(i64*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
