; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_ucdn.c_hangul_pair_decompose.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_ucdn.c_hangul_pair_decompose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SBASE = common dso_local global i32 0, align 4
@SCOUNT = common dso_local global i32 0, align 4
@TCOUNT = common dso_local global i32 0, align 4
@TBASE = common dso_local global i32 0, align 4
@LBASE = common dso_local global i32 0, align 4
@NCOUNT = common dso_local global i32 0, align 4
@VBASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32*)* @hangul_pair_decompose to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hangul_pair_decompose(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @SBASE, align 4
  %11 = sub nsw i32 %9, %10
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @SCOUNT, align 4
  %17 = icmp sge i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14, %3
  store i32 0, i32* %4, align 4
  br label %54

19:                                               ; preds = %14
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @TCOUNT, align 4
  %22 = srem i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %19
  %25 = load i32, i32* @SBASE, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @TCOUNT, align 4
  %28 = sdiv i32 %26, %27
  %29 = load i32, i32* @TCOUNT, align 4
  %30 = mul nsw i32 %28, %29
  %31 = add nsw i32 %25, %30
  %32 = load i32*, i32** %6, align 8
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* @TBASE, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @TCOUNT, align 4
  %36 = srem i32 %34, %35
  %37 = add nsw i32 %33, %36
  %38 = load i32*, i32** %7, align 8
  store i32 %37, i32* %38, align 4
  store i32 3, i32* %4, align 4
  br label %54

39:                                               ; preds = %19
  %40 = load i32, i32* @LBASE, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @NCOUNT, align 4
  %43 = sdiv i32 %41, %42
  %44 = add nsw i32 %40, %43
  %45 = load i32*, i32** %6, align 8
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* @VBASE, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @NCOUNT, align 4
  %49 = srem i32 %47, %48
  %50 = load i32, i32* @TCOUNT, align 4
  %51 = sdiv i32 %49, %50
  %52 = add nsw i32 %46, %51
  %53 = load i32*, i32** %7, align 8
  store i32 %52, i32* %53, align 4
  store i32 2, i32* %4, align 4
  br label %54

54:                                               ; preds = %39, %24, %18
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
