; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/tests/nptest/extr_npclient.c_main.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/tests/nptest/extr_npclient.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"\\\\.\\pipe\\mynamedpipe\00", align 1
@GENERIC_READ = common dso_local global i32 0, align 4
@GENERIC_WRITE = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@ERROR_PIPE_BUSY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"Could not open pipe\00", align 1
@PIPE_READMODE_MESSAGE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"SetNamedPipeHandleState\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"default message\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"WriteFile\00", align 1
@ERROR_MORE_DATA = common dso_local global i64 0, align 8
@STD_OUTPUT_HANDLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [512 x i8], align 16
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  br label %14

14:                                               ; preds = %2, %37
  %15 = load i8*, i8** %13, align 8
  %16 = load i32, i32* @GENERIC_READ, align 4
  %17 = load i32, i32* @GENERIC_WRITE, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @OPEN_EXISTING, align 4
  %20 = call i64 @CreateFile(i8* %15, i32 %18, i32 0, i32* null, i32 %19, i32 0, i32* null)
  store i64 %20, i64* %6, align 8
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %14
  br label %38

25:                                               ; preds = %14
  %26 = call i64 (...) @GetLastError()
  %27 = load i64, i64* @ERROR_PIPE_BUSY, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = call i32 @MyErrExit(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %25
  %32 = load i8*, i8** %13, align 8
  %33 = call i32 @WaitNamedPipe(i8* %32, i32 20000)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %31
  %36 = call i32 @MyErrExit(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %31
  br label %14

38:                                               ; preds = %24
  %39 = load i64, i64* @PIPE_READMODE_MESSAGE, align 8
  store i64 %39, i64* %12, align 8
  %40 = load i64, i64* %6, align 8
  %41 = call i64 @SetNamedPipeHandleState(i64 %40, i64* %12, i32* null, i32* null)
  store i64 %41, i64* %9, align 8
  %42 = load i64, i64* %9, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %38
  %45 = call i32 @MyErrExit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %38
  %47 = load i32, i32* %4, align 4
  %48 = icmp sgt i32 %47, 1
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load i8**, i8*** %5, align 8
  %51 = getelementptr inbounds i8*, i8** %50, i64 1
  %52 = load i8*, i8** %51, align 8
  br label %54

53:                                               ; preds = %46
  br label %54

54:                                               ; preds = %53, %49
  %55 = phi i8* [ %52, %49 ], [ getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), %53 ]
  store i8* %55, i8** %7, align 8
  %56 = load i64, i64* %6, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = load i8*, i8** %7, align 8
  %59 = call i64 @strlen(i8* %58)
  %60 = add nsw i64 %59, 1
  %61 = call i64 @WriteFile(i64 %56, i8* %57, i64 %60, i64* %11, i32* null)
  store i64 %61, i64* %9, align 8
  %62 = load i64, i64* %9, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %54
  %65 = call i32 @MyErrExit(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64, %54
  br label %67

67:                                               ; preds = %87, %66
  %68 = load i64, i64* %6, align 8
  %69 = getelementptr inbounds [512 x i8], [512 x i8]* %8, i64 0, i64 0
  %70 = call i64 @ReadFile(i64 %68, i8* %69, i32 512, i64* %10, i32* null)
  store i64 %70, i64* %9, align 8
  %71 = load i64, i64* %9, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %67
  %74 = call i64 (...) @GetLastError()
  %75 = load i64, i64* @ERROR_MORE_DATA, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  br label %91

78:                                               ; preds = %73, %67
  %79 = load i32, i32* @STD_OUTPUT_HANDLE, align 4
  %80 = call i64 @GetStdHandle(i32 %79)
  %81 = getelementptr inbounds [512 x i8], [512 x i8]* %8, i64 0, i64 0
  %82 = load i64, i64* %10, align 8
  %83 = call i64 @WriteFile(i64 %80, i8* %81, i64 %82, i64* %11, i32* null)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %78
  br label %91

86:                                               ; preds = %78
  br label %87

87:                                               ; preds = %86
  %88 = load i64, i64* %9, align 8
  %89 = icmp ne i64 %88, 0
  %90 = xor i1 %89, true
  br i1 %90, label %67, label %91

91:                                               ; preds = %87, %85, %77
  %92 = load i64, i64* %6, align 8
  %93 = call i32 @CloseHandle(i64 %92)
  ret i32 0
}

declare dso_local i64 @CreateFile(i8*, i32, i32, i32*, i32, i32, i32*) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @MyErrExit(i8*) #1

declare dso_local i32 @WaitNamedPipe(i8*, i32) #1

declare dso_local i64 @SetNamedPipeHandleState(i64, i64*, i32*, i32*) #1

declare dso_local i64 @WriteFile(i64, i8*, i64, i64*, i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @ReadFile(i64, i8*, i32, i64*, i32*) #1

declare dso_local i64 @GetStdHandle(i32) #1

declare dso_local i32 @CloseHandle(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
