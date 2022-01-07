; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/bzip2/extr_huffman.c_BZ2_hbAssignCodes.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/bzip2/extr_huffman.c_BZ2_hbAssignCodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BZ2_hbAssignCodes(i64* %0, i64* %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i64* %0, i64** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  store i64 0, i64* %12, align 8
  %14 = load i64, i64* %8, align 8
  store i64 %14, i64* %11, align 8
  br label %15

15:                                               ; preds = %45, %5
  %16 = load i64, i64* %11, align 8
  %17 = load i64, i64* %9, align 8
  %18 = icmp sle i64 %16, %17
  br i1 %18, label %19, label %48

19:                                               ; preds = %15
  store i64 0, i64* %13, align 8
  br label %20

20:                                               ; preds = %39, %19
  %21 = load i64, i64* %13, align 8
  %22 = load i64, i64* %10, align 8
  %23 = icmp slt i64 %21, %22
  br i1 %23, label %24, label %42

24:                                               ; preds = %20
  %25 = load i64*, i64** %7, align 8
  %26 = load i64, i64* %13, align 8
  %27 = getelementptr inbounds i64, i64* %25, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %11, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %24
  %32 = load i64, i64* %12, align 8
  %33 = load i64*, i64** %6, align 8
  %34 = load i64, i64* %13, align 8
  %35 = getelementptr inbounds i64, i64* %33, i64 %34
  store i64 %32, i64* %35, align 8
  %36 = load i64, i64* %12, align 8
  %37 = add nsw i64 %36, 1
  store i64 %37, i64* %12, align 8
  br label %38

38:                                               ; preds = %31, %24
  br label %39

39:                                               ; preds = %38
  %40 = load i64, i64* %13, align 8
  %41 = add nsw i64 %40, 1
  store i64 %41, i64* %13, align 8
  br label %20

42:                                               ; preds = %20
  %43 = load i64, i64* %12, align 8
  %44 = shl i64 %43, 1
  store i64 %44, i64* %12, align 8
  br label %45

45:                                               ; preds = %42
  %46 = load i64, i64* %11, align 8
  %47 = add nsw i64 %46, 1
  store i64 %47, i64* %11, align 8
  br label %15

48:                                               ; preds = %15
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
