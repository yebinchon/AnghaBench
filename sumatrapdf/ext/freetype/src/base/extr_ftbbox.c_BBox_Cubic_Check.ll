; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/freetype/src/base/extr_ftbbox.c_BBox_Cubic_Check.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/freetype/src/base/extr_ftbbox.c_BBox_Cubic_Check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i64, i64, i64*, i64*)* @BBox_Cubic_Check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @BBox_Cubic_Check(i64 %0, i64 %1, i64 %2, i64 %3, i64* %4, i64* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  store i64* %5, i64** %12, align 8
  %13 = load i64, i64* %8, align 8
  %14 = load i64*, i64** %12, align 8
  %15 = load i64, i64* %14, align 8
  %16 = icmp sgt i64 %13, %15
  br i1 %16, label %22, label %17

17:                                               ; preds = %6
  %18 = load i64, i64* %9, align 8
  %19 = load i64*, i64** %12, align 8
  %20 = load i64, i64* %19, align 8
  %21 = icmp sgt i64 %18, %20
  br i1 %21, label %22, label %43

22:                                               ; preds = %17, %6
  %23 = load i64, i64* %7, align 8
  %24 = load i64*, i64** %12, align 8
  %25 = load i64, i64* %24, align 8
  %26 = sub nsw i64 %23, %25
  %27 = load i64, i64* %8, align 8
  %28 = load i64*, i64** %12, align 8
  %29 = load i64, i64* %28, align 8
  %30 = sub nsw i64 %27, %29
  %31 = load i64, i64* %9, align 8
  %32 = load i64*, i64** %12, align 8
  %33 = load i64, i64* %32, align 8
  %34 = sub nsw i64 %31, %33
  %35 = load i64, i64* %10, align 8
  %36 = load i64*, i64** %12, align 8
  %37 = load i64, i64* %36, align 8
  %38 = sub nsw i64 %35, %37
  %39 = call i64 @cubic_peak(i64 %26, i64 %30, i64 %34, i64 %38)
  %40 = load i64*, i64** %12, align 8
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %41, %39
  store i64 %42, i64* %40, align 8
  br label %43

43:                                               ; preds = %22, %17
  %44 = load i64, i64* %8, align 8
  %45 = load i64*, i64** %11, align 8
  %46 = load i64, i64* %45, align 8
  %47 = icmp slt i64 %44, %46
  br i1 %47, label %53, label %48

48:                                               ; preds = %43
  %49 = load i64, i64* %9, align 8
  %50 = load i64*, i64** %11, align 8
  %51 = load i64, i64* %50, align 8
  %52 = icmp slt i64 %49, %51
  br i1 %52, label %53, label %74

53:                                               ; preds = %48, %43
  %54 = load i64*, i64** %11, align 8
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %7, align 8
  %57 = sub nsw i64 %55, %56
  %58 = load i64*, i64** %11, align 8
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %8, align 8
  %61 = sub nsw i64 %59, %60
  %62 = load i64*, i64** %11, align 8
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %9, align 8
  %65 = sub nsw i64 %63, %64
  %66 = load i64*, i64** %11, align 8
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %10, align 8
  %69 = sub nsw i64 %67, %68
  %70 = call i64 @cubic_peak(i64 %57, i64 %61, i64 %65, i64 %69)
  %71 = load i64*, i64** %11, align 8
  %72 = load i64, i64* %71, align 8
  %73 = sub nsw i64 %72, %70
  store i64 %73, i64* %71, align 8
  br label %74

74:                                               ; preds = %53, %48
  ret void
}

declare dso_local i64 @cubic_peak(i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
