; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_ucdn.c_hangul_pair_compose.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_ucdn.c_hangul_pair_compose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SBASE = common dso_local global i64 0, align 8
@SCOUNT = common dso_local global i64 0, align 8
@TBASE = common dso_local global i64 0, align 8
@TCOUNT = common dso_local global i32 0, align 4
@LBASE = common dso_local global i64 0, align 8
@LCOUNT = common dso_local global i64 0, align 8
@VBASE = common dso_local global i64 0, align 8
@VCOUNT = common dso_local global i64 0, align 8
@NCOUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i64, i64)* @hangul_pair_compose to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hangul_pair_compose(i64* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i64* %0, i64** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* @SBASE, align 8
  %12 = icmp sge i64 %10, %11
  br i1 %12, label %13, label %37

13:                                               ; preds = %3
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @SBASE, align 8
  %16 = load i64, i64* @SCOUNT, align 8
  %17 = add nsw i64 %15, %16
  %18 = icmp slt i64 %14, %17
  br i1 %18, label %19, label %37

19:                                               ; preds = %13
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* @TBASE, align 8
  %22 = icmp sge i64 %20, %21
  br i1 %22, label %23, label %37

23:                                               ; preds = %19
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* @TBASE, align 8
  %26 = load i32, i32* @TCOUNT, align 4
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %25, %27
  %29 = icmp slt i64 %24, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %23
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* @TBASE, align 8
  %34 = sub nsw i64 %32, %33
  %35 = add nsw i64 %31, %34
  %36 = load i64*, i64** %5, align 8
  store i64 %35, i64* %36, align 8
  store i32 3, i32* %4, align 4
  br label %79

37:                                               ; preds = %23, %19, %13, %3
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* @LBASE, align 8
  %40 = icmp sge i64 %38, %39
  br i1 %40, label %41, label %78

41:                                               ; preds = %37
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* @LBASE, align 8
  %44 = load i64, i64* @LCOUNT, align 8
  %45 = add nsw i64 %43, %44
  %46 = icmp slt i64 %42, %45
  br i1 %46, label %47, label %78

47:                                               ; preds = %41
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* @VBASE, align 8
  %50 = icmp sge i64 %48, %49
  br i1 %50, label %51, label %78

51:                                               ; preds = %47
  %52 = load i64, i64* %7, align 8
  %53 = load i64, i64* @VBASE, align 8
  %54 = load i64, i64* @VCOUNT, align 8
  %55 = add nsw i64 %53, %54
  %56 = icmp slt i64 %52, %55
  br i1 %56, label %57, label %78

57:                                               ; preds = %51
  %58 = load i64, i64* %6, align 8
  %59 = load i64, i64* @LBASE, align 8
  %60 = sub nsw i64 %58, %59
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %8, align 4
  %62 = load i64, i64* %7, align 8
  %63 = load i64, i64* @VBASE, align 8
  %64 = sub nsw i64 %62, %63
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %9, align 4
  %66 = load i64, i64* @SBASE, align 8
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* @NCOUNT, align 4
  %69 = mul nsw i32 %67, %68
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %66, %70
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* @TCOUNT, align 4
  %74 = mul nsw i32 %72, %73
  %75 = sext i32 %74 to i64
  %76 = add nsw i64 %71, %75
  %77 = load i64*, i64** %5, align 8
  store i64 %76, i64* %77, align 8
  store i32 2, i32* %4, align 4
  br label %79

78:                                               ; preds = %51, %47, %41, %37
  store i32 0, i32* %4, align 4
  br label %79

79:                                               ; preds = %78, %57, %30
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
