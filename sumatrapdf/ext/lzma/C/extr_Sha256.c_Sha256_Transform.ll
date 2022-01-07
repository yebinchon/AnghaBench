; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lzma/C/extr_Sha256.c_Sha256_Transform.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lzma/C/extr_Sha256.c_Sha256_Transform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i64*)* @Sha256_Transform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Sha256_Transform(i64* %0, i64* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca [16 x i64], align 16
  %6 = alloca i32, align 4
  %7 = alloca [8 x i64], align 16
  %8 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  store i64* %1, i64** %4, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %21, %2
  %10 = load i32, i32* %6, align 4
  %11 = icmp ult i32 %10, 8
  br i1 %11, label %12, label %24

12:                                               ; preds = %9
  %13 = load i64*, i64** %3, align 8
  %14 = load i32, i32* %6, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i64, i64* %13, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds [8 x i64], [8 x i64]* %7, i64 0, i64 %19
  store i64 %17, i64* %20, align 8
  br label %21

21:                                               ; preds = %12
  %22 = load i32, i32* %6, align 4
  %23 = add i32 %22, 1
  store i32 %23, i32* %6, align 4
  br label %9

24:                                               ; preds = %9
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %39, %24
  %26 = load i32, i32* %6, align 4
  %27 = icmp ult i32 %26, 64
  br i1 %27, label %28, label %42

28:                                               ; preds = %25
  store i32 0, i32* %8, align 4
  br label %29

29:                                               ; preds = %35, %28
  %30 = load i32, i32* %8, align 4
  %31 = icmp ult i32 %30, 16
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @R(i32 %33)
  br label %35

35:                                               ; preds = %32
  %36 = load i32, i32* %8, align 4
  %37 = add i32 %36, 1
  store i32 %37, i32* %8, align 4
  br label %29

38:                                               ; preds = %29
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %6, align 4
  %41 = add i32 %40, 16
  store i32 %41, i32* %6, align 4
  br label %25

42:                                               ; preds = %25
  store i32 0, i32* %6, align 4
  br label %43

43:                                               ; preds = %57, %42
  %44 = load i32, i32* %6, align 4
  %45 = icmp ult i32 %44, 8
  br i1 %45, label %46, label %60

46:                                               ; preds = %43
  %47 = load i32, i32* %6, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds [8 x i64], [8 x i64]* %7, i64 0, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = load i64*, i64** %3, align 8
  %52 = load i32, i32* %6, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %55, %50
  store i64 %56, i64* %54, align 8
  br label %57

57:                                               ; preds = %46
  %58 = load i32, i32* %6, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %6, align 4
  br label %43

60:                                               ; preds = %43
  ret void
}

declare dso_local i32 @R(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
