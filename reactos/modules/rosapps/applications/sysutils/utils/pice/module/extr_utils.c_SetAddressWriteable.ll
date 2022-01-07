; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_utils.c_SetAddressWriteable.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_utils.c_SetAddressWriteable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_PAGE_PRESENT = common dso_local global i32 0, align 4
@_PAGE_4M = common dso_local global i32 0, align 4
@_PAGE_PSE = common dso_local global i32 0, align 4
@_PAGE_RW = common dso_local global i32 0, align 4
@FLUSH_TLB = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @SetAddressWriteable(i32 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i32* @ADDR_TO_PDE(i32 %8)
  store i32* %9, i32** %6, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %74

12:                                               ; preds = %2
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @_PAGE_PRESENT, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %74

18:                                               ; preds = %12
  %19 = load i32*, i32** %6, align 8
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @_PAGE_4M, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %56, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* %4, align 4
  %26 = call i32* @ADDR_TO_PTE(i32 %25)
  store i32* %26, i32** %7, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %55

29:                                               ; preds = %24
  %30 = load i32*, i32** %7, align 8
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @_PAGE_PRESENT, align 4
  %33 = load i32, i32* @_PAGE_PSE, align 4
  %34 = or i32 %32, %33
  %35 = and i32 %31, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %54

37:                                               ; preds = %29
  %38 = load i64, i64* %5, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load i32, i32* @_PAGE_RW, align 4
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %41
  store i32 %44, i32* %42, align 4
  br label %51

45:                                               ; preds = %37
  %46 = load i32, i32* @_PAGE_RW, align 4
  %47 = xor i32 %46, -1
  %48 = load i32*, i32** %7, align 8
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, %47
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %45, %40
  %52 = load i32, i32* @FLUSH_TLB, align 4
  %53 = load i64, i64* @TRUE, align 8
  store i64 %53, i64* %3, align 8
  br label %76

54:                                               ; preds = %29
  br label %55

55:                                               ; preds = %54, %24
  br label %73

56:                                               ; preds = %18
  %57 = load i64, i64* %5, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %56
  %60 = load i32, i32* @_PAGE_RW, align 4
  %61 = load i32*, i32** %6, align 8
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %60
  store i32 %63, i32* %61, align 4
  br label %70

64:                                               ; preds = %56
  %65 = load i32, i32* @_PAGE_RW, align 4
  %66 = xor i32 %65, -1
  %67 = load i32*, i32** %6, align 8
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, %66
  store i32 %69, i32* %67, align 4
  br label %70

70:                                               ; preds = %64, %59
  %71 = load i32, i32* @FLUSH_TLB, align 4
  %72 = load i64, i64* @TRUE, align 8
  store i64 %72, i64* %3, align 8
  br label %76

73:                                               ; preds = %55
  br label %74

74:                                               ; preds = %73, %12, %2
  %75 = load i64, i64* @FALSE, align 8
  store i64 %75, i64* %3, align 8
  br label %76

76:                                               ; preds = %74, %70, %51
  %77 = load i64, i64* %3, align 8
  ret i64 %77
}

declare dso_local i32* @ADDR_TO_PDE(i32) #1

declare dso_local i32* @ADDR_TO_PTE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
