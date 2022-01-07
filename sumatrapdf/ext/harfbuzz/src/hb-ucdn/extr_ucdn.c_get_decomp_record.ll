; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/harfbuzz/src/hb-ucdn/extr_ucdn.c_get_decomp_record.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/harfbuzz/src/hb-ucdn/extr_ucdn.c_get_decomp_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@decomp_index0 = common dso_local global i32* null, align 8
@DECOMP_SHIFT1 = common dso_local global i32 0, align 4
@DECOMP_SHIFT2 = common dso_local global i32 0, align 4
@decomp_index1 = common dso_local global i32* null, align 8
@decomp_index2 = common dso_local global i32* null, align 8
@decomp_data = common dso_local global i16* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16* (i32)* @get_decomp_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i16* @get_decomp_record(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp sge i32 %5, 1114112
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %48

8:                                                ; preds = %1
  %9 = load i32*, i32** @decomp_index0, align 8
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @DECOMP_SHIFT1, align 4
  %12 = load i32, i32* @DECOMP_SHIFT2, align 4
  %13 = add nsw i32 %11, %12
  %14 = ashr i32 %10, %13
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %9, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @DECOMP_SHIFT1, align 4
  %19 = shl i32 %17, %18
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* @DECOMP_SHIFT2, align 4
  %22 = ashr i32 %20, %21
  %23 = load i32, i32* @DECOMP_SHIFT1, align 4
  %24 = shl i32 1, %23
  %25 = sub nsw i32 %24, 1
  %26 = and i32 %22, %25
  store i32 %26, i32* %4, align 4
  %27 = load i32*, i32** @decomp_index1, align 8
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %28, %29
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %27, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @DECOMP_SHIFT2, align 4
  %35 = shl i32 %33, %34
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* %2, align 4
  %37 = load i32, i32* @DECOMP_SHIFT2, align 4
  %38 = shl i32 1, %37
  %39 = sub nsw i32 %38, 1
  %40 = and i32 %36, %39
  store i32 %40, i32* %4, align 4
  %41 = load i32*, i32** @decomp_index2, align 8
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* %4, align 4
  %44 = add nsw i32 %42, %43
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %41, i64 %45
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %8, %7
  %49 = load i16*, i16** @decomp_data, align 8
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i16, i16* %49, i64 %51
  ret i16* %52
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
