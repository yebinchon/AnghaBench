; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/tests/p_dup_handle/extr_p_dup_handle.c_main.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/tests/p_dup_handle/extr_p_dup_handle.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"%lu: Starting\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@DUPLICATE_SAME_ACCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"%lu: Could not duplicate my own process handle.\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s %p\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"%lu: Could not create child process.\0A\00", align 1
@INFINITE = common dso_local global i32 0, align 4
@WAIT_OBJECT_0 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [53 x i8] c"%lu: Failed to wait for child process to terminate.\0A\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"%lu: Could not duplicate my handle into the parent.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_6__, align 4
  %9 = alloca %struct.TYPE_6__, align 4
  %10 = alloca [1000 x i8], align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = load i32, i32* @stderr, align 4
  %12 = call i32 (...) @GetCurrentProcessId()
  %13 = call i32 @fprintf(i32 %11, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* %4, align 4
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load i8**, i8*** %5, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 1
  %19 = load i8*, i8** %18, align 8
  %20 = call i64 @atoi(i8* %19)
  store i64 %20, i64* %6, align 8
  br label %34

21:                                               ; preds = %2
  %22 = call i64 (...) @GetCurrentProcess()
  %23 = call i64 (...) @GetCurrentProcess()
  %24 = call i64 (...) @GetCurrentProcess()
  %25 = load i32, i32* @TRUE, align 4
  %26 = load i32, i32* @DUPLICATE_SAME_ACCESS, align 4
  %27 = call i32 @DuplicateHandle(i64 %22, i64 %23, i64 %24, i64* %6, i32 0, i32 %25, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %21
  %30 = load i32, i32* @stderr, align 4
  %31 = call i32 (...) @GetCurrentProcessId()
  %32 = call i32 @fprintf(i32 %30, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  store i32 101, i32* %3, align 4
  br label %80

33:                                               ; preds = %21
  br label %34

34:                                               ; preds = %33, %16
  %35 = load i32, i32* %4, align 4
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %66

37:                                               ; preds = %34
  %38 = call i32 @memset(%struct.TYPE_6__* %8, i32 0, i32 4)
  %39 = call i32 @memset(%struct.TYPE_6__* %9, i32 0, i32 4)
  %40 = getelementptr inbounds [1000 x i8], [1000 x i8]* %10, i64 0, i64 0
  %41 = load i8**, i8*** %5, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 0
  %43 = load i8*, i8** %42, align 8
  %44 = load i64, i64* %6, align 8
  %45 = call i32 @sprintf(i8* %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %43, i64 %44)
  %46 = getelementptr inbounds [1000 x i8], [1000 x i8]* %10, i64 0, i64 0
  %47 = load i32, i32* @TRUE, align 4
  %48 = call i32 @CreateProcess(i32* null, i8* %46, i32* null, i32* null, i32 %47, i32 0, i32* null, i32* null, %struct.TYPE_6__* %8, %struct.TYPE_6__* %9)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %37
  %51 = load i32, i32* @stderr, align 4
  %52 = call i32 (...) @GetCurrentProcessId()
  %53 = call i32 @fprintf(i32 %51, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %52)
  store i32 5, i32* %3, align 4
  br label %80

54:                                               ; preds = %37
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @INFINITE, align 4
  %58 = call i64 @WaitForSingleObject(i32 %56, i32 %57)
  %59 = load i64, i64* @WAIT_OBJECT_0, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %54
  %62 = load i32, i32* @stderr, align 4
  %63 = call i32 (...) @GetCurrentProcessId()
  %64 = call i32 @fprintf(i32 %62, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), i32 %63)
  store i32 6, i32* %3, align 4
  br label %80

65:                                               ; preds = %54
  br label %79

66:                                               ; preds = %34
  %67 = call i64 (...) @GetCurrentProcess()
  %68 = call i64 (...) @GetCurrentProcess()
  %69 = load i64, i64* %6, align 8
  %70 = load i32, i32* @TRUE, align 4
  %71 = load i32, i32* @DUPLICATE_SAME_ACCESS, align 4
  %72 = call i32 @DuplicateHandle(i64 %67, i64 %68, i64 %69, i64* %7, i32 0, i32 %70, i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %66
  %75 = load i32, i32* @stderr, align 4
  %76 = call i32 (...) @GetCurrentProcessId()
  %77 = call i32 @fprintf(i32 %75, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0), i32 %76)
  store i32 102, i32* %3, align 4
  br label %80

78:                                               ; preds = %66
  br label %79

79:                                               ; preds = %78, %65
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %79, %74, %61, %50, %29
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i32 @GetCurrentProcessId(...) #1

declare dso_local i64 @atoi(i8*) #1

declare dso_local i32 @DuplicateHandle(i64, i64, i64, i64*, i32, i32, i32) #1

declare dso_local i64 @GetCurrentProcess(...) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i64) #1

declare dso_local i32 @CreateProcess(i32*, i8*, i32*, i32*, i32, i32, i32*, i32*, %struct.TYPE_6__*, %struct.TYPE_6__*) #1

declare dso_local i64 @WaitForSingleObject(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
