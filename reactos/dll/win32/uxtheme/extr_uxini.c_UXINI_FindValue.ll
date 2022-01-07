; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/uxtheme/extr_uxini.c_UXINI_FindValue.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/uxtheme/extr_uxini.c_UXINI_FindValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LOCALE_SYSTEM_DEFAULT = common dso_local global i32 0, align 4
@NORM_IGNORECASE = common dso_local global i32 0, align 4
@CSTR_EQUAL = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @UXINI_FindValue(i32 %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  br label %12

12:                                               ; preds = %29, %4
  %13 = load i32, i32* %6, align 4
  %14 = load i32*, i32** %8, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = call i32 @UXINI_GetNextValue(i32 %13, i32* %11, i32* %14, i32* %15)
  store i32 %16, i32* %10, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %12
  %19 = load i32, i32* @LOCALE_SYSTEM_DEFAULT, align 4
  %20 = load i32, i32* @NORM_IGNORECASE, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i64 @CompareStringW(i32 %19, i32 %20, i32 %21, i32 %22, i32 %23, i32 -1)
  %25 = load i64, i64* @CSTR_EQUAL, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %18
  %28 = load i32, i32* @TRUE, align 4
  store i32 %28, i32* %5, align 4
  br label %32

29:                                               ; preds = %18
  br label %12

30:                                               ; preds = %12
  %31 = load i32, i32* @FALSE, align 4
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %30, %27
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local i32 @UXINI_GetNextValue(i32, i32*, i32*, i32*) #1

declare dso_local i64 @CompareStringW(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
