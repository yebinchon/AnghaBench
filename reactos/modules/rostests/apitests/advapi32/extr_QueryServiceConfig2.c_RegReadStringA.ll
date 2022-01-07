; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/advapi32/extr_QueryServiceConfig2.c_RegReadStringA.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/advapi32/extr_QueryServiceConfig2.c_RegReadStringA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR_SUCCESS = common dso_local global i64 0, align 8
@ERROR_NOT_ENOUGH_MEMORY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32*, i32**)* @RegReadStringA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @RegReadStringA(i32 %0, i32* %1, i32** %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32** %2, i32*** %7, align 8
  %11 = load i32**, i32*** %7, align 8
  store i32* null, i32** %11, align 8
  store i64 0, i64* %9, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = call i64 @RegQueryValueExA(i32 %12, i32* %13, i32 0, i64* %10, i32* null, i64* %9)
  store i64 %14, i64* %8, align 8
  %15 = load i64, i64* %8, align 8
  %16 = load i64, i64* @ERROR_SUCCESS, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i64, i64* %8, align 8
  store i64 %19, i64* %4, align 8
  br label %47

20:                                               ; preds = %3
  %21 = call i32 (...) @GetProcessHeap()
  %22 = load i64, i64* %9, align 8
  %23 = call i32* @HeapAlloc(i32 %21, i32 0, i64 %22)
  %24 = load i32**, i32*** %7, align 8
  store i32* %23, i32** %24, align 8
  %25 = load i32**, i32*** %7, align 8
  %26 = load i32*, i32** %25, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = load i64, i64* @ERROR_NOT_ENOUGH_MEMORY, align 8
  store i64 %29, i64* %4, align 8
  br label %47

30:                                               ; preds = %20
  %31 = load i32, i32* %5, align 4
  %32 = load i32*, i32** %6, align 8
  %33 = load i32**, i32*** %7, align 8
  %34 = load i32*, i32** %33, align 8
  %35 = call i64 @RegQueryValueExA(i32 %31, i32* %32, i32 0, i64* %10, i32* %34, i64* %9)
  store i64 %35, i64* %8, align 8
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* @ERROR_SUCCESS, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %30
  %40 = call i32 (...) @GetProcessHeap()
  %41 = load i32**, i32*** %7, align 8
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @HeapFree(i32 %40, i32 0, i32* %42)
  %44 = load i32**, i32*** %7, align 8
  store i32* null, i32** %44, align 8
  br label %45

45:                                               ; preds = %39, %30
  %46 = load i64, i64* %8, align 8
  store i64 %46, i64* %4, align 8
  br label %47

47:                                               ; preds = %45, %28, %18
  %48 = load i64, i64* %4, align 8
  ret i64 %48
}

declare dso_local i64 @RegQueryValueExA(i32, i32*, i32, i64*, i32*, i64*) #1

declare dso_local i32* @HeapAlloc(i32, i32, i64) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
