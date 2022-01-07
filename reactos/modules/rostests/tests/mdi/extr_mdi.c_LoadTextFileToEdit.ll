; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/tests/mdi/extr_mdi.c_LoadTextFileToEdit.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/tests/mdi/extr_mdi.c_LoadTextFileToEdit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@GENERIC_READ = common dso_local global i32 0, align 4
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@GPTR = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LoadTextFileToEdit(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* @FALSE, align 4
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @GENERIC_READ, align 4
  %13 = load i32, i32* @FILE_SHARE_READ, align 4
  %14 = load i32, i32* @OPEN_EXISTING, align 4
  %15 = call i64 @CreateFile(i32 %11, i32 %12, i32 %13, i32* null, i32 %14, i32 0, i32* null)
  store i64 %15, i64* %5, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %56

19:                                               ; preds = %2
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @GetFileSize(i64 %20, i32* null)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, -1
  br i1 %23, label %24, label %53

24:                                               ; preds = %19
  %25 = load i32, i32* @GPTR, align 4
  %26 = load i32, i32* %7, align 4
  %27 = add nsw i32 %26, 1
  %28 = call i64* @GlobalAlloc(i32 %25, i32 %27)
  store i64* %28, i64** %8, align 8
  %29 = load i64*, i64** %8, align 8
  %30 = icmp ne i64* %29, null
  br i1 %30, label %31, label %52

31:                                               ; preds = %24
  %32 = load i64, i64* %5, align 8
  %33 = load i64*, i64** %8, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i64 @ReadFile(i64 %32, i64* %33, i32 %34, i32* %9, i32* null)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %31
  %38 = load i64*, i64** %8, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %38, i64 %40
  store i64 0, i64* %41, align 8
  %42 = load i32, i32* %3, align 4
  %43 = load i64*, i64** %8, align 8
  %44 = call i64 @SetWindowText(i32 %42, i64* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %37
  %47 = load i32, i32* @TRUE, align 4
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %46, %37
  br label %49

49:                                               ; preds = %48, %31
  %50 = load i64*, i64** %8, align 8
  %51 = call i32 @GlobalFree(i64* %50)
  br label %52

52:                                               ; preds = %49, %24
  br label %53

53:                                               ; preds = %52, %19
  %54 = load i64, i64* %5, align 8
  %55 = call i32 @CloseHandle(i64 %54)
  br label %56

56:                                               ; preds = %53, %2
  %57 = load i32, i32* %6, align 4
  ret i32 %57
}

declare dso_local i64 @CreateFile(i32, i32, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @GetFileSize(i64, i32*) #1

declare dso_local i64* @GlobalAlloc(i32, i32) #1

declare dso_local i64 @ReadFile(i64, i64*, i32, i32*, i32*) #1

declare dso_local i64 @SetWindowText(i32, i64*) #1

declare dso_local i32 @GlobalFree(i64*) #1

declare dso_local i32 @CloseHandle(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
