; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/regedit/extr_regedit.c_delete_tree.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/regedit/extr_regedit.c_delete_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@delete_tree.empty = internal constant [1 x i8] zeroinitializer, align 1
@KEY_READ = common dso_local global i32 0, align 4
@ERROR_NOT_ENOUGH_MEMORY = common dso_local global i64 0, align 8
@ERROR_NO_MORE_ITEMS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i8*)* @delete_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @delete_tree(i32 %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i8* null, i8** %8, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = load i32, i32* @KEY_READ, align 4
  %14 = call i64 @RegOpenKeyExA(i32 %11, i8* %12, i32 0, i32 %13, i32* %6)
  store i64 %14, i64* %7, align 8
  %15 = load i64, i64* %7, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i64, i64* %7, align 8
  store i64 %18, i64* %3, align 8
  br label %67

19:                                               ; preds = %2
  %20 = load i32, i32* %6, align 4
  %21 = call i64 @RegQueryInfoKeyA(i32 %20, i32* null, i32* null, i32* null, i32* null, i64* %9, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null)
  store i64 %21, i64* %7, align 8
  %22 = load i64, i64* %7, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %60

25:                                               ; preds = %19
  %26 = load i64, i64* %9, align 8
  %27 = add nsw i64 %26, 1
  store i64 %27, i64* %9, align 8
  %28 = call i32 (...) @GetProcessHeap()
  %29 = load i64, i64* %9, align 8
  %30 = call i8* @HeapAlloc(i32 %28, i32 0, i64 %29)
  store i8* %30, i8** %8, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %25
  %34 = load i64, i64* @ERROR_NOT_ENOUGH_MEMORY, align 8
  store i64 %34, i64* %7, align 8
  br label %60

35:                                               ; preds = %25
  br label %36

36:                                               ; preds = %56, %35
  %37 = load i64, i64* %9, align 8
  store i64 %37, i64* %10, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load i8*, i8** %8, align 8
  %40 = call i64 @RegEnumKeyExA(i32 %38, i32 0, i8* %39, i64* %10, i32* null, i32* null, i32* null, i32* null)
  store i64 %40, i64* %7, align 8
  %41 = load i64, i64* %7, align 8
  %42 = load i64, i64* @ERROR_NO_MORE_ITEMS, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  br label %57

45:                                               ; preds = %36
  %46 = load i64, i64* %7, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  br label %60

49:                                               ; preds = %45
  %50 = load i32, i32* %6, align 4
  %51 = load i8*, i8** %8, align 8
  %52 = call i64 @delete_tree(i32 %50, i8* %51)
  store i64 %52, i64* %7, align 8
  %53 = load i64, i64* %7, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %60

56:                                               ; preds = %49
  br label %36

57:                                               ; preds = %44
  %58 = load i32, i32* %6, align 4
  %59 = call i64 @RegDeleteKeyA(i32 %58, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @delete_tree.empty, i64 0, i64 0))
  store i64 %59, i64* %7, align 8
  br label %60

60:                                               ; preds = %57, %55, %48, %33, %24
  %61 = call i32 (...) @GetProcessHeap()
  %62 = load i8*, i8** %8, align 8
  %63 = call i32 @HeapFree(i32 %61, i32 0, i8* %62)
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @RegCloseKey(i32 %64)
  %66 = load i64, i64* %7, align 8
  store i64 %66, i64* %3, align 8
  br label %67

67:                                               ; preds = %60, %17
  %68 = load i64, i64* %3, align 8
  ret i64 %68
}

declare dso_local i64 @RegOpenKeyExA(i32, i8*, i32, i32, i32*) #1

declare dso_local i64 @RegQueryInfoKeyA(i32, i32*, i32*, i32*, i32*, i64*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i8* @HeapAlloc(i32, i32, i64) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i64 @RegEnumKeyExA(i32, i32, i8*, i64*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @RegDeleteKeyA(i32, i8*) #1

declare dso_local i32 @HeapFree(i32, i32, i8*) #1

declare dso_local i32 @RegCloseKey(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
