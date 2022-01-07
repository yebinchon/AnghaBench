; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/shlwapi/extr_assoc.c_SHLWAPI_ParamAToW.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/shlwapi/extr_assoc.c_SHLWAPI_ParamAToW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CP_ACP = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32*, i32, i32**)* @SHLWAPI_ParamAToW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SHLWAPI_ParamAToW(i64 %0, i32* %1, i32 %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32**, align 8
  %10 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32** %3, i32*** %9, align 8
  %11 = load i64, i64* %6, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %44

13:                                               ; preds = %4
  %14 = load i32, i32* @CP_ACP, align 4
  %15 = load i64, i64* %6, align 8
  %16 = call i32 @MultiByteToWideChar(i32 %14, i32 0, i64 %15, i32 -1, i32* null, i32 0)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = load i32*, i32** %7, align 8
  %22 = load i32**, i32*** %9, align 8
  store i32* %21, i32** %22, align 8
  br label %37

23:                                               ; preds = %13
  %24 = call i32 (...) @GetProcessHeap()
  %25 = load i32, i32* %10, align 4
  %26 = sext i32 %25 to i64
  %27 = mul i64 %26, 4
  %28 = trunc i64 %27 to i32
  %29 = call i32* @HeapAlloc(i32 %24, i32 0, i32 %28)
  %30 = load i32**, i32*** %9, align 8
  store i32* %29, i32** %30, align 8
  %31 = load i32**, i32*** %9, align 8
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %23
  %35 = load i32, i32* @FALSE, align 4
  store i32 %35, i32* %5, align 4
  br label %48

36:                                               ; preds = %23
  br label %37

37:                                               ; preds = %36, %20
  %38 = load i32, i32* @CP_ACP, align 4
  %39 = load i64, i64* %6, align 8
  %40 = load i32**, i32*** %9, align 8
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @MultiByteToWideChar(i32 %38, i32 0, i64 %39, i32 -1, i32* %41, i32 %42)
  br label %46

44:                                               ; preds = %4
  %45 = load i32**, i32*** %9, align 8
  store i32* null, i32** %45, align 8
  br label %46

46:                                               ; preds = %44, %37
  %47 = load i32, i32* @TRUE, align 4
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %46, %34
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i32 @MultiByteToWideChar(i32, i32, i64, i32, i32*, i32) #1

declare dso_local i32* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
