; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_automation.c_delete_registry_key.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_automation.c_delete_registry_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR_SUCCESS = common dso_local global i64 0, align 8
@ERROR_NOT_ENOUGH_MEMORY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32*, i32)* @delete_registry_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @delete_registry_key(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* null, i32** %9, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i64 @RegOpenKeyExA(i32 %12, i32* %13, i32 0, i32 %14, i32* %10)
  store i64 %15, i64* %8, align 8
  %16 = load i64, i64* %8, align 8
  %17 = load i64, i64* @ERROR_SUCCESS, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i64, i64* %8, align 8
  store i64 %20, i64* %4, align 8
  br label %61

21:                                               ; preds = %3
  %22 = load i32, i32* %10, align 4
  %23 = call i64 @RegQueryInfoKeyA(i32 %22, i32* null, i32* null, i32* null, i32* null, i32* %11, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null)
  store i64 %23, i64* %8, align 8
  %24 = load i64, i64* %8, align 8
  %25 = load i64, i64* @ERROR_SUCCESS, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i64, i64* %8, align 8
  store i64 %28, i64* %4, align 8
  br label %61

29:                                               ; preds = %21
  %30 = call i32 (...) @GetProcessHeap()
  %31 = load i32, i32* %11, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %11, align 4
  %33 = call i32* @HeapAlloc(i32 %30, i32 0, i32 %32)
  store i32* %33, i32** %9, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %29
  %36 = load i64, i64* @ERROR_NOT_ENOUGH_MEMORY, align 8
  store i64 %36, i64* %4, align 8
  br label %61

37:                                               ; preds = %29
  br label %38

38:                                               ; preds = %45, %37
  %39 = load i32, i32* %10, align 4
  %40 = load i32*, i32** %9, align 8
  %41 = load i32, i32* %11, align 4
  %42 = call i64 @RegEnumKeyA(i32 %39, i32 0, i32* %40, i32 %41)
  %43 = load i64, i64* @ERROR_SUCCESS, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %38
  %46 = load i32, i32* %10, align 4
  %47 = load i32*, i32** %9, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i64 @delete_registry_key(i32 %46, i32* %47, i32 %48)
  br label %38

50:                                               ; preds = %38
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @RegCloseKey(i32 %51)
  %53 = call i32 (...) @GetProcessHeap()
  %54 = load i32*, i32** %9, align 8
  %55 = call i32 @HeapFree(i32 %53, i32 0, i32* %54)
  %56 = load i32, i32* %5, align 4
  %57 = load i32*, i32** %6, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @delete_key_portable(i32 %56, i32* %57, i32 %58)
  %60 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %60, i64* %4, align 8
  br label %61

61:                                               ; preds = %50, %35, %27, %19
  %62 = load i64, i64* %4, align 8
  ret i64 %62
}

declare dso_local i64 @RegOpenKeyExA(i32, i32*, i32, i32, i32*) #1

declare dso_local i64 @RegQueryInfoKeyA(i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i64 @RegEnumKeyA(i32, i32, i32*, i32) #1

declare dso_local i32 @RegCloseKey(i32) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

declare dso_local i32 @delete_key_portable(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
