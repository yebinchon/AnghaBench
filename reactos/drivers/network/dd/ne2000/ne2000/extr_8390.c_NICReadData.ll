; ModuleID = '/home/carl/AnghaBench/reactos/drivers/network/dd/ne2000/ne2000/extr_8390.c_NICReadData.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/network/dd/ne2000/ne2000/extr_8390.c_NICReadData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @NICReadData(i32 %0, i64* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i64* %1, i64** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %8, align 4
  %12 = and i32 %11, 1
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %8, align 4
  %17 = sub nsw i32 %16, 1
  %18 = call i32 @NICReadDataAlign(i32 %15, i32* %10, i32 %17, i32 2)
  %19 = load i32, i32* %10, align 4
  %20 = ashr i32 %19, 8
  %21 = sext i32 %20 to i64
  %22 = load i64*, i64** %7, align 8
  store i64 %21, i64* %22, align 8
  %23 = load i32, i32* %8, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %8, align 4
  %25 = load i64*, i64** %7, align 8
  %26 = getelementptr inbounds i64, i64* %25, i32 1
  store i64* %26, i64** %7, align 8
  %27 = load i32, i32* %9, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %9, align 4
  br label %29

29:                                               ; preds = %14, %4
  %30 = load i32, i32* %9, align 4
  %31 = and i32 %30, 1
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %58

33:                                               ; preds = %29
  %34 = load i32, i32* %9, align 4
  %35 = and i32 %34, 65534
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i64*, i64** %7, align 8
  %38 = bitcast i64* %37 to i32*
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @NICReadDataAlign(i32 %36, i32* %38, i32 %39, i32 %40)
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %43, %42
  store i32 %44, i32* %8, align 4
  %45 = load i64*, i64** %7, align 8
  %46 = ptrtoint i64* %45 to i32
  %47 = load i32, i32* %10, align 4
  %48 = add nsw i32 %46, %47
  %49 = sext i32 %48 to i64
  %50 = inttoptr i64 %49 to i64*
  store i64* %50, i64** %7, align 8
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @NICReadDataAlign(i32 %51, i32* %10, i32 %52, i32 2)
  %54 = load i32, i32* %10, align 4
  %55 = and i32 %54, 255
  %56 = sext i32 %55 to i64
  %57 = load i64*, i64** %7, align 8
  store i64 %56, i64* %57, align 8
  br label %65

58:                                               ; preds = %29
  %59 = load i32, i32* %6, align 4
  %60 = load i64*, i64** %7, align 8
  %61 = bitcast i64* %60 to i32*
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @NICReadDataAlign(i32 %59, i32* %61, i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %58, %33
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local i32 @NICReadDataAlign(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
