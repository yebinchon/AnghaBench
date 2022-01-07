; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_parser.c_make_flagged_int.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_parser.c_make_flagged_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64*, i64)* @make_flagged_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @make_flagged_int(i64 %0, i64* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64* %1, i64** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i64, i64* @FALSE, align 8
  store i64 %9, i64* %7, align 8
  store i32 28, i32* %8, align 4
  br label %10

10:                                               ; preds = %43, %3
  %11 = load i32, i32* %8, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %46

13:                                               ; preds = %10
  %14 = load i64, i64* %7, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %13
  %17 = load i64, i64* %4, align 8
  %18 = load i32, i32* %8, align 4
  %19 = zext i32 %18 to i64
  %20 = shl i64 1, %19
  %21 = icmp uge i64 %17, %20
  br i1 %21, label %22, label %42

22:                                               ; preds = %16, %13
  %23 = load i64, i64* %4, align 8
  %24 = load i32, i32* %8, align 4
  %25 = zext i32 %24 to i64
  %26 = lshr i64 %23, %25
  %27 = or i64 128, %26
  %28 = load i64*, i64** %5, align 8
  %29 = load i64, i64* %6, align 8
  %30 = add i64 %29, 1
  store i64 %30, i64* %6, align 8
  %31 = getelementptr inbounds i64, i64* %28, i64 %29
  store i64 %27, i64* %31, align 8
  %32 = load i64, i64* %4, align 8
  %33 = load i32, i32* %8, align 4
  %34 = zext i32 %33 to i64
  %35 = lshr i64 %32, %34
  %36 = load i32, i32* %8, align 4
  %37 = zext i32 %36 to i64
  %38 = shl i64 %35, %37
  %39 = load i64, i64* %4, align 8
  %40 = sub i64 %39, %38
  store i64 %40, i64* %4, align 8
  %41 = load i64, i64* @TRUE, align 8
  store i64 %41, i64* %7, align 8
  br label %42

42:                                               ; preds = %22, %16
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %8, align 4
  %45 = sub nsw i32 %44, 7
  store i32 %45, i32* %8, align 4
  br label %10

46:                                               ; preds = %10
  %47 = load i64, i64* %4, align 8
  %48 = load i64*, i64** %5, align 8
  %49 = load i64, i64* %6, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %6, align 8
  %51 = getelementptr inbounds i64, i64* %48, i64 %49
  store i64 %47, i64* %51, align 8
  %52 = load i64, i64* %6, align 8
  ret i64 %52
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
