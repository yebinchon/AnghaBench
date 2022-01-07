; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/tests/mdi/extr_mdi.c_SaveTextFileFromEdit.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/tests/mdi/extr_mdi.c_SaveTextFileFromEdit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@GENERIC_WRITE = common dso_local global i32 0, align 4
@CREATE_ALWAYS = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_NORMAL = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@GPTR = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SaveTextFileFromEdit(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %11 = load i32, i32* @FALSE, align 4
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @GENERIC_WRITE, align 4
  %14 = load i32, i32* @CREATE_ALWAYS, align 4
  %15 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %16 = call i64 @CreateFile(i32 %12, i32 %13, i32 0, i32* null, i32 %14, i32 %15, i32* null)
  store i64 %16, i64* %5, align 8
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %55

20:                                               ; preds = %2
  %21 = load i32, i32* %3, align 4
  %22 = call i64 @GetWindowTextLength(i32 %21)
  store i64 %22, i64* %7, align 8
  %23 = load i64, i64* %7, align 8
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %25, label %52

25:                                               ; preds = %20
  %26 = load i64, i64* %7, align 8
  %27 = add nsw i64 %26, 1
  store i64 %27, i64* %9, align 8
  %28 = load i32, i32* @GPTR, align 4
  %29 = load i64, i64* %9, align 8
  %30 = call i32* @GlobalAlloc(i32 %28, i64 %29)
  store i32* %30, i32** %8, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %51

33:                                               ; preds = %25
  %34 = load i32, i32* %3, align 4
  %35 = load i32*, i32** %8, align 8
  %36 = load i64, i64* %9, align 8
  %37 = call i64 @GetWindowText(i32 %34, i32* %35, i64 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %33
  %40 = load i64, i64* %5, align 8
  %41 = load i32*, i32** %8, align 8
  %42 = load i64, i64* %7, align 8
  %43 = call i64 @WriteFile(i64 %40, i32* %41, i64 %42, i64* %10, i32* null)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* @TRUE, align 4
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %45, %39
  br label %48

48:                                               ; preds = %47, %33
  %49 = load i32*, i32** %8, align 8
  %50 = call i32 @GlobalFree(i32* %49)
  br label %51

51:                                               ; preds = %48, %25
  br label %52

52:                                               ; preds = %51, %20
  %53 = load i64, i64* %5, align 8
  %54 = call i32 @CloseHandle(i64 %53)
  br label %55

55:                                               ; preds = %52, %2
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local i64 @CreateFile(i32, i32, i32, i32*, i32, i32, i32*) #1

declare dso_local i64 @GetWindowTextLength(i32) #1

declare dso_local i32* @GlobalAlloc(i32, i64) #1

declare dso_local i64 @GetWindowText(i32, i32*, i64) #1

declare dso_local i64 @WriteFile(i64, i32*, i64, i64*, i32*) #1

declare dso_local i32 @GlobalFree(i32*) #1

declare dso_local i32 @CloseHandle(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
