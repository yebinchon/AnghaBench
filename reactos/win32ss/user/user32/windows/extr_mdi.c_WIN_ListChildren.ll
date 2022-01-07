; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/user32/windows/extr_mdi.c_WIN_ListChildren.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/user32/windows/extr_mdi.c_WIN_ListChildren.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@ERROR_NOT_ENOUGH_MEMORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64* @WIN_ListChildren(i64 %0) #0 {
  %2 = alloca i64*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 0, i32* %4, align 4
  store i64* null, i64** %5, align 8
  %8 = load i64, i64* %3, align 8
  %9 = load i32, i32* @FALSE, align 4
  %10 = call i32 @NtUserBuildHwndList(i32* null, i64 %8, i32 %9, i32 0, i32 0, i64* null, i32* %4)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @NT_SUCCESS(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i64* null, i64** %2, align 8
  br label %51

15:                                               ; preds = %1
  %16 = call i32 (...) @GetProcessHeap()
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %4, align 4
  %19 = add nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = mul i64 8, %20
  %22 = trunc i64 %21 to i32
  %23 = call i64* @HeapAlloc(i32 %17, i32 0, i32 %22)
  store i64* %23, i64** %5, align 8
  %24 = load i64*, i64** %5, align 8
  %25 = icmp ne i64* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %15
  %27 = load i32, i32* @ERROR_NOT_ENOUGH_MEMORY, align 4
  %28 = call i32 @SetLastError(i32 %27)
  store i64* null, i64** %2, align 8
  br label %51

29:                                               ; preds = %15
  %30 = load i64, i64* %3, align 8
  %31 = load i32, i32* @FALSE, align 4
  %32 = load i64*, i64** %5, align 8
  %33 = call i32 @NtUserBuildHwndList(i32* null, i64 %30, i32 %31, i32 0, i32 0, i64* %32, i32* %4)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @NT_SUCCESS(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %45, label %37

37:                                               ; preds = %29
  %38 = load i64*, i64** %5, align 8
  %39 = icmp ne i64* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load i32, i32* %6, align 4
  %42 = load i64*, i64** %5, align 8
  %43 = call i32 @HeapFree(i32 %41, i32 0, i64* %42)
  br label %44

44:                                               ; preds = %40, %37
  store i64* null, i64** %2, align 8
  br label %51

45:                                               ; preds = %29
  %46 = load i64*, i64** %5, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  store i64 0, i64* %49, align 8
  %50 = load i64*, i64** %5, align 8
  store i64* %50, i64** %2, align 8
  br label %51

51:                                               ; preds = %45, %44, %26, %14
  %52 = load i64*, i64** %2, align 8
  ret i64* %52
}

declare dso_local i32 @NtUserBuildHwndList(i32*, i64, i32, i32, i32, i64*, i32*) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i64* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @HeapFree(i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
