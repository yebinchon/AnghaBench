; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/regtests/gdi/extr_xlate.c_iXlateToRGB.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/regtests/gdi/extr_xlate.c_iXlateToRGB.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @iXlateToRGB to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iXlateToRGB(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %80 [
    i32 134, label %10
    i32 129, label %15
    i32 128, label %15
    i32 136, label %15
    i32 135, label %41
    i32 132, label %67
    i32 130, label %67
    i32 133, label %69
    i32 131, label %69
  ]

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i32 16777215, i32 0
  store i32 %14, i32* %3, align 4
  br label %81

15:                                               ; preds = %2, %2, %2
  %16 = load i32, i32* %5, align 4
  %17 = and i32 %16, 31744
  %18 = ashr i32 %17, 7
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = ashr i32 %19, 5
  %21 = load i32, i32* %6, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %5, align 4
  %24 = and i32 %23, 992
  %25 = ashr i32 %24, 2
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = ashr i32 %26, 5
  %28 = load i32, i32* %7, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %5, align 4
  %31 = and i32 %30, 31
  %32 = shl i32 %31, 3
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = ashr i32 %33, 5
  %35 = load i32, i32* %8, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @RGB(i32 %37, i32 %38, i32 %39)
  store i32 %40, i32* %3, align 4
  br label %81

41:                                               ; preds = %2
  %42 = load i32, i32* %5, align 4
  %43 = and i32 %42, 63488
  %44 = ashr i32 %43, 8
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = ashr i32 %45, 5
  %47 = load i32, i32* %6, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %5, align 4
  %50 = and i32 %49, 2016
  %51 = ashr i32 %50, 3
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = ashr i32 %52, 6
  %54 = load i32, i32* %7, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %5, align 4
  %57 = and i32 %56, 31
  %58 = shl i32 %57, 3
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = ashr i32 %59, 5
  %61 = load i32, i32* %8, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @RGB(i32 %63, i32 %64, i32 %65)
  store i32 %66, i32* %3, align 4
  br label %81

67:                                               ; preds = %2, %2
  %68 = load i32, i32* %5, align 4
  store i32 %68, i32* %3, align 4
  br label %81

69:                                               ; preds = %2, %2
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @GetRValue(i32 %70)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @GetGValue(i32 %72)
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @GetBValue(i32 %74)
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @RGB(i32 %76, i32 %77, i32 %78)
  store i32 %79, i32* %3, align 4
  br label %81

80:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %80, %69, %67, %41, %15, %10
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @RGB(i32, i32, i32) #1

declare dso_local i32 @GetRValue(i32) #1

declare dso_local i32 @GetGValue(i32) #1

declare dso_local i32 @GetBValue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
