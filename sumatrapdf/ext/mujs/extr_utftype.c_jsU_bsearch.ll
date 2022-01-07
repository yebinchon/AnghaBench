; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_utftype.c_jsU_bsearch.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_utftype.c_jsU_bsearch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64* (i64, i64*, i32, i32)* @bsearch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64* @bsearch(i64 %0, i64* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i64* %1, i64** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  br label %12

12:                                               ; preds = %36, %4
  %13 = load i32, i32* %8, align 4
  %14 = icmp sgt i32 %13, 1
  br i1 %14, label %15, label %37

15:                                               ; preds = %12
  %16 = load i32, i32* %8, align 4
  %17 = sdiv i32 %16, 2
  store i32 %17, i32* %11, align 4
  %18 = load i64*, i64** %7, align 8
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* %9, align 4
  %21 = mul nsw i32 %19, %20
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %18, i64 %22
  store i64* %23, i64** %10, align 8
  %24 = load i64, i64* %6, align 8
  %25 = load i64*, i64** %10, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sge i64 %24, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %15
  %30 = load i64*, i64** %10, align 8
  store i64* %30, i64** %7, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %11, align 4
  %33 = sub nsw i32 %31, %32
  store i32 %33, i32* %8, align 4
  br label %36

34:                                               ; preds = %15
  %35 = load i32, i32* %11, align 4
  store i32 %35, i32* %8, align 4
  br label %36

36:                                               ; preds = %34, %29
  br label %12

37:                                               ; preds = %12
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %37
  %41 = load i64, i64* %6, align 8
  %42 = load i64*, i64** %7, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp sge i64 %41, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i64*, i64** %7, align 8
  store i64* %47, i64** %5, align 8
  br label %49

48:                                               ; preds = %40, %37
  store i64* null, i64** %5, align 8
  br label %49

49:                                               ; preds = %48, %46
  %50 = load i64*, i64** %5, align 8
  ret i64* %50
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
