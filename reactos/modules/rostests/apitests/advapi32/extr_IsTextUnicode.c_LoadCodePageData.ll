; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/advapi32/extr_IsTextUnicode.c_LoadCodePageData.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/advapi32/extr_IsTextUnicode.c_LoadCodePageData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"%s\\c_%lu.nls\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"%s\\l_intl.nls\00", align 1
@GENERIC_READ = common dso_local global i32 0, align 4
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @LoadCodePageData(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %10 = load i32, i32* @MAX_PATH, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %3, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %4, align 8
  %14 = load i32, i32* @MAX_PATH, align 4
  %15 = zext i32 %14 to i64
  %16 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %5, align 8
  store i32* null, i32** %7, align 8
  %17 = load i32, i32* @MAX_PATH, align 4
  %18 = call i32 @GetSystemDirectoryA(i8* %16, i32 %17)
  %19 = load i32, i32* %2, align 4
  %20 = icmp ne i32 %19, -1
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = trunc i64 %11 to i32
  %23 = load i32, i32* %2, align 4
  %24 = call i32 (i8*, i32, i8*, i8*, ...) @StringCbPrintfA(i8* %13, i32 %22, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %16, i32 %23)
  br label %28

25:                                               ; preds = %1
  %26 = trunc i64 %11 to i32
  %27 = call i32 (i8*, i32, i8*, i8*, ...) @StringCbPrintfA(i8* %13, i32 %26, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %16)
  br label %28

28:                                               ; preds = %25, %21
  %29 = load i32, i32* @GENERIC_READ, align 4
  %30 = load i32, i32* @FILE_SHARE_READ, align 4
  %31 = load i32, i32* @OPEN_EXISTING, align 4
  %32 = call i64 @CreateFile(i8* %13, i32 %29, i32 %30, i32* null, i32 %31, i32 0, i32* null)
  store i64 %32, i64* %6, align 8
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %28
  %37 = load i64, i64* %6, align 8
  %38 = call i32 @GetFileSize(i64 %37, i32* null)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = call i32* @malloc(i32 %39)
  store i32* %40, i32** %7, align 8
  %41 = load i64, i64* %6, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @ReadFile(i64 %41, i32* %42, i32 %43, i32* %8, i32* null)
  %45 = load i64, i64* %6, align 8
  %46 = call i32 @CloseHandle(i64 %45)
  br label %47

47:                                               ; preds = %36, %28
  %48 = load i32*, i32** %7, align 8
  %49 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %49)
  ret i32* %48
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GetSystemDirectoryA(i8*, i32) #2

declare dso_local i32 @StringCbPrintfA(i8*, i32, i8*, i8*, ...) #2

declare dso_local i64 @CreateFile(i8*, i32, i32, i32*, i32, i32, i32*) #2

declare dso_local i32 @GetFileSize(i64, i32*) #2

declare dso_local i32* @malloc(i32) #2

declare dso_local i32 @ReadFile(i64, i32*, i32, i32*, i32*) #2

declare dso_local i32 @CloseHandle(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
