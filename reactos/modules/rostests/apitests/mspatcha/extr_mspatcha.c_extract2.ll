; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/mspatcha/extr_mspatcha.c_extract2.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/mspatcha/extr_mspatcha.c_extract2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@temp_path = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"mpa\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"GetTempFileNameA failed %lu\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@GENERIC_WRITE = common dso_local global i32 0, align 4
@CREATE_ALWAYS = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_NORMAL = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"CreateFileA failed %lu\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"WriteFile failed %lu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @extract2(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i32, i32* @temp_path, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @GetTempFileNameA(i32 %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 0, i8* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = call i32 (...) @GetLastError()
  %17 = call i32 @ok(i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* @FALSE, align 4
  store i32 %18, i32* %4, align 4
  br label %59

19:                                               ; preds = %3
  %20 = load i8*, i8** %5, align 8
  %21 = load i32, i32* @GENERIC_WRITE, align 4
  %22 = load i32, i32* @CREATE_ALWAYS, align 4
  %23 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %24 = call i64 @CreateFileA(i8* %20, i32 %21, i32 0, i32* null, i32 %22, i32 %23, i32* null)
  store i64 %24, i64* %8, align 8
  %25 = load i64, i64* %8, align 8
  %26 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %19
  %29 = call i32 (...) @GetLastError()
  %30 = call i32 @ok(i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %29)
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 @DeleteFileA(i8* %31)
  %33 = load i32, i32* @FALSE, align 4
  store i32 %33, i32* %4, align 4
  br label %59

34:                                               ; preds = %19
  %35 = load i64, i64* %8, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = load i64, i64* %7, align 8
  %38 = call i32 @WriteFile(i64 %35, i8* %36, i64 %37, i64* %10, i32* null)
  store i32 %38, i32* %9, align 4
  %39 = load i64, i64* %8, align 8
  %40 = call i32 @CloseHandle(i64 %39)
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %34
  %44 = load i64, i64* %10, align 8
  %45 = load i64, i64* %7, align 8
  %46 = icmp eq i64 %44, %45
  br label %47

47:                                               ; preds = %43, %34
  %48 = phi i1 [ false, %34 ], [ %46, %43 ]
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %47
  %53 = call i32 (...) @GetLastError()
  %54 = call i32 @ok(i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %53)
  %55 = load i8*, i8** %5, align 8
  %56 = call i32 @DeleteFileA(i8* %55)
  br label %57

57:                                               ; preds = %52, %47
  %58 = load i32, i32* %9, align 4
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %57, %28, %15
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @GetTempFileNameA(i32, i8*, i32, i8*) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i64 @CreateFileA(i8*, i32, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @DeleteFileA(i8*) #1

declare dso_local i32 @WriteFile(i64, i8*, i64, i64*, i32*) #1

declare dso_local i32 @CloseHandle(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
