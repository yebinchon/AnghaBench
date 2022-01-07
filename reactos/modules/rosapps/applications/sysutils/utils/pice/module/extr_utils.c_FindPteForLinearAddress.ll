; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_utils.c_FindPteForLinearAddress.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_utils.c_FindPteForLinearAddress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@_PAGE_SIZE = common dso_local global i32 0, align 4
@_PAGE_PRESENT = common dso_local global i32 0, align 4
@_PAGE_4M = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @FindPteForLinearAddress(i32 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* @FALSE, align 4
  store i32 %8, i32* %6, align 4
  %9 = call i64 (...) @IoGetCurrentProcess()
  store i64 %9, i64* %7, align 8
  %10 = call i32 (...) @ENTER_FUNC()
  %11 = load i32, i32* @_PAGE_SIZE, align 4
  %12 = sub nsw i32 %11, 1
  %13 = xor i32 %12, -1
  %14 = load i32, i32* %3, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %3, align 4
  %16 = load i64, i64* %7, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %48

18:                                               ; preds = %1
  %19 = load i32, i32* %3, align 4
  %20 = call i32* @ADDR_TO_PDE(i32 %19)
  store i32* %20, i32** %4, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %47

23:                                               ; preds = %18
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @_PAGE_PRESENT, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %47

29:                                               ; preds = %23
  %30 = load i32*, i32** %4, align 8
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @_PAGE_4M, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %44, label %35

35:                                               ; preds = %29
  %36 = load i32, i32* %3, align 4
  %37 = call i32* @ADDR_TO_PTE(i32 %36)
  store i32* %37, i32** %5, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = call i32 (...) @LEAVE_FUNC()
  %42 = load i32*, i32** %5, align 8
  store i32* %42, i32** %2, align 8
  br label %50

43:                                               ; preds = %35
  br label %46

44:                                               ; preds = %29
  %45 = call i32 (...) @LEAVE_FUNC()
  store i32* null, i32** %2, align 8
  br label %50

46:                                               ; preds = %43
  br label %47

47:                                               ; preds = %46, %23, %18
  br label %48

48:                                               ; preds = %47, %1
  %49 = call i32 (...) @LEAVE_FUNC()
  store i32* null, i32** %2, align 8
  br label %50

50:                                               ; preds = %48, %44, %40
  %51 = load i32*, i32** %2, align 8
  ret i32* %51
}

declare dso_local i64 @IoGetCurrentProcess(...) #1

declare dso_local i32 @ENTER_FUNC(...) #1

declare dso_local i32* @ADDR_TO_PDE(i32) #1

declare dso_local i32* @ADDR_TO_PTE(i32) #1

declare dso_local i32 @LEAVE_FUNC(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
