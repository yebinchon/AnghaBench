; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/winprint/extr_main.c_GetWinprintFunc.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/winprint/extr_main.c_GetWinprintFunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [83 x i8] c"Could not determine the path to the Print Processor directory, last error is %lu!\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i32] [i32 92, i32 119, i32 105, i32 110, i32 112, i32 114, i32 105, i32 110, i32 116, i32 46, i32 100, i32 108, i32 108, i32 0], align 4
@ERROR_MOD_NOT_FOUND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"LoadLibraryW failed for %S with error %lu!\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i32] [i32 108, i32 111, i32 99, i32 97, i32 108, i32 115, i32 112, i32 108, i32 46, i32 100, i32 108, i32 108, i32 0], align 4
@.str.4 = private unnamed_addr constant [54 x i8] c"LoadLibraryW failed for localspl.dll with error %lu!\0A\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"GetProcAddress failed for %s with error %lu!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @GetWinprintFunc(i8* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %10 = load i32, i32* @MAX_PATH, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %7, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %8, align 8
  %14 = ptrtoint i8* %13 to i32
  %15 = trunc i64 %11 to i32
  %16 = call i32 @GetPrintProcessorDirectoryW(i32* null, i32* null, i32 1, i32 %14, i32 %15, i32* %4)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %1
  %19 = call i32 (...) @GetLastError()
  %20 = sext i32 %19 to i64
  %21 = inttoptr i64 %20 to i8*
  %22 = call i32 (i8*, i8*, ...) @skip(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i64 0, i64 0), i8* %21)
  store i32* null, i32** %2, align 8
  store i32 1, i32* %9, align 4
  br label %57

23:                                               ; preds = %1
  %24 = call i32 @wcscat(i8* %13, i8* bitcast ([14 x i32]* @.str.1 to i8*))
  %25 = call i32 @LoadLibraryW(i8* %13)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %45, label %28

28:                                               ; preds = %23
  %29 = call i32 (...) @GetLastError()
  %30 = load i32, i32* @ERROR_MOD_NOT_FOUND, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = call i32 (...) @GetLastError()
  %34 = call i32 (i8*, i8*, ...) @skip(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i8* %13, i32 %33)
  store i32* null, i32** %2, align 8
  store i32 1, i32* %9, align 4
  br label %57

35:                                               ; preds = %28
  %36 = call i32 @LoadLibraryW(i8* bitcast ([13 x i32]* @.str.3 to i8*))
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %35
  %40 = call i32 (...) @GetLastError()
  %41 = sext i32 %40 to i64
  %42 = inttoptr i64 %41 to i8*
  %43 = call i32 (i8*, i8*, ...) @skip(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i8* %42)
  store i32* null, i32** %2, align 8
  store i32 1, i32* %9, align 4
  br label %57

44:                                               ; preds = %35
  br label %45

45:                                               ; preds = %44, %23
  %46 = load i32, i32* %5, align 4
  %47 = load i8*, i8** %3, align 8
  %48 = call i32* @GetProcAddress(i32 %46, i8* %47)
  store i32* %48, i32** %6, align 8
  %49 = load i32*, i32** %6, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %55, label %51

51:                                               ; preds = %45
  %52 = load i8*, i8** %3, align 8
  %53 = call i32 (...) @GetLastError()
  %54 = call i32 (i8*, i8*, ...) @skip(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i8* %52, i32 %53)
  store i32* null, i32** %2, align 8
  store i32 1, i32* %9, align 4
  br label %57

55:                                               ; preds = %45
  %56 = load i32*, i32** %6, align 8
  store i32* %56, i32** %2, align 8
  store i32 1, i32* %9, align 4
  br label %57

57:                                               ; preds = %55, %51, %39, %32, %18
  %58 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %58)
  %59 = load i32*, i32** %2, align 8
  ret i32* %59
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GetPrintProcessorDirectoryW(i32*, i32*, i32, i32, i32, i32*) #2

declare dso_local i32 @skip(i8*, i8*, ...) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i32 @wcscat(i8*, i8*) #2

declare dso_local i32 @LoadLibraryW(i8*) #2

declare dso_local i32* @GetProcAddress(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
