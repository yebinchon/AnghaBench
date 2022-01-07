; ModuleID = '/home/carl/AnghaBench/reactos/ntoskrnl/kd/i386/extr_kdmemsup.c_KdpTranslateAddress.c'
source_filename = "/home/carl/AnghaBench/reactos/ntoskrnl/kd/i386/extr_kdmemsup.c_KdpTranslateAddress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_SIZE = common dso_local global i32 0, align 4
@PDE_PRESENT_BIT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@PDE_PS_BIT = common dso_local global i32 0, align 4
@CR4_PAGE_SIZE_BIT = common dso_local global i32 0, align 4
@BIG_PAGE_SIZE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_TABLE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @KdpTranslateAddress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @KdpTranslateAddress(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %12 = call i32 (...) @__readcr3()
  store i32 %12, i32* %6, align 4
  %13 = call i32 (...) @__readcr4()
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @PAGE_SIZE, align 4
  %16 = sub nsw i32 %15, 1
  %17 = xor i32 %16, -1
  %18 = and i32 %14, %17
  %19 = sext i32 %18 to i64
  %20 = load i32, i32* %4, align 4
  %21 = ashr i32 %20, 22
  %22 = sext i32 %21 to i64
  %23 = mul i64 %22, 4
  %24 = add i64 %19, %23
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @KdpPhysRead(i32 %26, i32 4)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @PDE_PRESENT_BIT, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %2
  %33 = load i32, i32* @FALSE, align 4
  store i32 %33, i32* %3, align 4
  br label %95

34:                                               ; preds = %2
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @PDE_PS_BIT, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %57

39:                                               ; preds = %34
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @CR4_PAGE_SIZE_BIT, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %39
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @BIG_PAGE_SIZE, align 4
  %47 = sub nsw i32 %46, 1
  %48 = xor i32 %47, -1
  %49 = and i32 %45, %48
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @BIG_PAGE_SIZE, align 4
  %52 = sub nsw i32 %51, 1
  %53 = and i32 %50, %52
  %54 = add nsw i32 %49, %53
  %55 = load i32*, i32** %5, align 8
  store i32 %54, i32* %55, align 4
  %56 = load i32, i32* @TRUE, align 4
  store i32 %56, i32* %3, align 4
  br label %95

57:                                               ; preds = %39, %34
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @PAGE_SIZE, align 4
  %60 = sub nsw i32 %59, 1
  %61 = xor i32 %60, -1
  %62 = and i32 %58, %61
  %63 = sext i32 %62 to i64
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @PAGE_SHIFT, align 4
  %66 = ashr i32 %64, %65
  %67 = load i32, i32* @PAGE_TABLE_MASK, align 4
  %68 = and i32 %66, %67
  %69 = sext i32 %68 to i64
  %70 = mul i64 %69, 4
  %71 = add i64 %63, %70
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @KdpPhysRead(i32 %73, i32 4)
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* @PDE_PRESENT_BIT, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %92

79:                                               ; preds = %57
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* @PAGE_SIZE, align 4
  %82 = sub nsw i32 %81, 1
  %83 = xor i32 %82, -1
  %84 = and i32 %80, %83
  %85 = load i32, i32* %4, align 4
  %86 = load i32, i32* @PAGE_SIZE, align 4
  %87 = sub nsw i32 %86, 1
  %88 = and i32 %85, %87
  %89 = add nsw i32 %84, %88
  %90 = load i32*, i32** %5, align 8
  store i32 %89, i32* %90, align 4
  %91 = load i32, i32* @TRUE, align 4
  store i32 %91, i32* %3, align 4
  br label %95

92:                                               ; preds = %57
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* @FALSE, align 4
  store i32 %94, i32* %3, align 4
  br label %95

95:                                               ; preds = %93, %79, %44, %32
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i32 @__readcr3(...) #1

declare dso_local i32 @__readcr4(...) #1

declare dso_local i32 @KdpPhysRead(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
