; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/regtests/gdi/extr_xlate.c_iXlateFromRGB.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/regtests/gdi/extr_xlate.c_iXlateFromRGB.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @iXlateFromRGB to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iXlateFromRGB(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @GetRValue(i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @GetGValue(i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @GetBValue(i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %4, align 4
  switch i32 %15, label %62 [
    i32 134, label %16
    i32 129, label %21
    i32 128, label %21
    i32 136, label %21
    i32 135, label %38
    i32 132, label %55
    i32 130, label %55
    i32 133, label %57
    i32 131, label %57
  ]

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 16777215, i32 0
  store i32 %20, i32* %3, align 4
  br label %63

21:                                               ; preds = %2, %2, %2
  %22 = load i32, i32* %6, align 4
  %23 = and i32 %22, 248
  %24 = ashr i32 %23, 3
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %7, align 4
  %26 = and i32 %25, 248
  %27 = ashr i32 %26, 3
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %8, align 4
  %29 = and i32 %28, 248
  %30 = ashr i32 %29, 3
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %6, align 4
  %32 = shl i32 %31, 10
  %33 = load i32, i32* %7, align 4
  %34 = shl i32 %33, 5
  %35 = or i32 %32, %34
  %36 = load i32, i32* %8, align 4
  %37 = or i32 %35, %36
  store i32 %37, i32* %3, align 4
  br label %63

38:                                               ; preds = %2
  %39 = load i32, i32* %6, align 4
  %40 = and i32 %39, 248
  %41 = ashr i32 %40, 3
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %7, align 4
  %43 = and i32 %42, 252
  %44 = ashr i32 %43, 2
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %8, align 4
  %46 = and i32 %45, 248
  %47 = ashr i32 %46, 3
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %6, align 4
  %49 = shl i32 %48, 11
  %50 = load i32, i32* %7, align 4
  %51 = shl i32 %50, 5
  %52 = or i32 %49, %51
  %53 = load i32, i32* %8, align 4
  %54 = or i32 %52, %53
  store i32 %54, i32* %3, align 4
  br label %63

55:                                               ; preds = %2, %2
  %56 = load i32, i32* %5, align 4
  store i32 %56, i32* %3, align 4
  br label %63

57:                                               ; preds = %2, %2
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @RGB(i32 %58, i32 %59, i32 %60)
  store i32 %61, i32* %3, align 4
  br label %63

62:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %62, %57, %55, %38, %21, %16
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @GetRValue(i32) #1

declare dso_local i32 @GetGValue(i32) #1

declare dso_local i32 @GetBValue(i32) #1

declare dso_local i32 @RGB(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
