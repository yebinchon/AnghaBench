; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lzma/C/extr_LzmaEnc.c_LzmaEnc_InitPriceTables.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lzma/C/extr_LzmaEnc.c_LzmaEnc_InitPriceTables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kNumMoveReducingBits = common dso_local global i32 0, align 4
@kBitModelTotal = common dso_local global i32 0, align 4
@kNumBitPriceShiftBits = common dso_local global i32 0, align 4
@kNumBitModelTotalBits = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @LzmaEnc_InitPriceTables(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %8 = load i32, i32* @kNumMoveReducingBits, align 4
  %9 = shl i32 1, %8
  %10 = sdiv i32 %9, 2
  store i32 %10, i32* %3, align 4
  br label %11

11:                                               ; preds = %53, %1
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @kBitModelTotal, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %58

15:                                               ; preds = %11
  %16 = load i32, i32* @kNumBitPriceShiftBits, align 4
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %3, align 4
  store i32 %17, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %37, %15
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %40

22:                                               ; preds = %18
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = mul nsw i32 %23, %24
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %6, align 4
  %27 = shl i32 %26, 1
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %31, %22
  %29 = load i32, i32* %5, align 4
  %30 = icmp sge i32 %29, 65536
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = load i32, i32* %5, align 4
  %33 = ashr i32 %32, 1
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %6, align 4
  br label %28

36:                                               ; preds = %28
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %7, align 4
  br label %18

40:                                               ; preds = %18
  %41 = load i32, i32* @kNumBitModelTotalBits, align 4
  %42 = load i32, i32* %4, align 4
  %43 = shl i32 %41, %42
  %44 = sub nsw i32 %43, 15
  %45 = load i32, i32* %6, align 4
  %46 = sub nsw i32 %44, %45
  %47 = load i32*, i32** %2, align 8
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* @kNumMoveReducingBits, align 4
  %50 = ashr i32 %48, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %47, i64 %51
  store i32 %46, i32* %52, align 4
  br label %53

53:                                               ; preds = %40
  %54 = load i32, i32* @kNumMoveReducingBits, align 4
  %55 = shl i32 1, %54
  %56 = load i32, i32* %3, align 4
  %57 = add nsw i32 %56, %55
  store i32 %57, i32* %3, align 4
  br label %11

58:                                               ; preds = %11
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
