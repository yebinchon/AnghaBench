; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/devutils/nls2txt/extr_nls.c_NLS_ReadFile.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/devutils/nls2txt/extr_nls.c_NLS_ReadFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GENERIC_READ = common dso_local global i32 0, align 4
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @NLS_ReadFile(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = load i32, i32* @GENERIC_READ, align 4
  %12 = load i32, i32* @FILE_SHARE_READ, align 4
  %13 = load i32, i32* @OPEN_EXISTING, align 4
  %14 = call i64 @CreateFile(i32* %10, i32 %11, i32 %12, i32* null, i32 %13, i32 0, i32* null)
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %45

18:                                               ; preds = %2
  %19 = load i64, i64* %6, align 8
  %20 = call i32 @GetFileSize(i64 %19, i32* null)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call i32* @malloc(i32 %21)
  store i32* %22, i32** %7, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %42

25:                                               ; preds = %18
  %26 = load i64, i64* %6, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i64 @ReadFile(i64 %26, i32* %27, i32 %28, i32* %8, i32* null)
  %30 = load i64, i64* @FALSE, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %25
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @NLS_InitCodePageTable(i32* %33, i32 %34)
  %36 = load i64, i64* %6, align 8
  %37 = call i32 @CloseHandle(i64 %36)
  %38 = load i32*, i32** %7, align 8
  store i32* %38, i32** %3, align 8
  br label %46

39:                                               ; preds = %25
  %40 = load i32*, i32** %7, align 8
  %41 = call i32 @free(i32* %40)
  br label %42

42:                                               ; preds = %39, %18
  %43 = load i64, i64* %6, align 8
  %44 = call i32 @CloseHandle(i64 %43)
  br label %45

45:                                               ; preds = %42, %2
  store i32* null, i32** %3, align 8
  br label %46

46:                                               ; preds = %45, %32
  %47 = load i32*, i32** %3, align 8
  ret i32* %47
}

declare dso_local i64 @CreateFile(i32*, i32, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @GetFileSize(i64, i32*) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i64 @ReadFile(i64, i32*, i32, i32*, i32*) #1

declare dso_local i32 @NLS_InitCodePageTable(i32*, i32) #1

declare dso_local i32 @CloseHandle(i64) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
