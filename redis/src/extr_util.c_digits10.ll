; ModuleID = '/home/carl/AnghaBench/redis/src/extr_util.c_digits10.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_util.c_digits10.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @digits10(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp slt i32 %4, 10
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %64

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = icmp slt i32 %8, 100
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  store i32 2, i32* %2, align 4
  br label %64

11:                                               ; preds = %7
  %12 = load i32, i32* %3, align 4
  %13 = icmp slt i32 %12, 1000
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i32 3, i32* %2, align 4
  br label %64

15:                                               ; preds = %11
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = icmp ult i64 %17, 1000000000000
  br i1 %18, label %19, label %57

19:                                               ; preds = %15
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = icmp ult i64 %21, 100000000
  br i1 %22, label %23, label %41

23:                                               ; preds = %19
  %24 = load i32, i32* %3, align 4
  %25 = icmp slt i32 %24, 1000000
  br i1 %25, label %26, label %35

26:                                               ; preds = %23
  %27 = load i32, i32* %3, align 4
  %28 = icmp slt i32 %27, 10000
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i32 4, i32* %2, align 4
  br label %64

30:                                               ; preds = %26
  %31 = load i32, i32* %3, align 4
  %32 = icmp sge i32 %31, 100000
  %33 = zext i1 %32 to i32
  %34 = add nsw i32 5, %33
  store i32 %34, i32* %2, align 4
  br label %64

35:                                               ; preds = %23
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = icmp uge i64 %37, 10000000
  %39 = zext i1 %38 to i32
  %40 = add nsw i32 7, %39
  store i32 %40, i32* %2, align 4
  br label %64

41:                                               ; preds = %19
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = icmp ult i64 %43, 10000000000
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  %46 = load i32, i32* %3, align 4
  %47 = sext i32 %46 to i64
  %48 = icmp uge i64 %47, 1000000000
  %49 = zext i1 %48 to i32
  %50 = add nsw i32 9, %49
  store i32 %50, i32* %2, align 4
  br label %64

51:                                               ; preds = %41
  %52 = load i32, i32* %3, align 4
  %53 = sext i32 %52 to i64
  %54 = icmp uge i64 %53, 100000000000
  %55 = zext i1 %54 to i32
  %56 = add nsw i32 11, %55
  store i32 %56, i32* %2, align 4
  br label %64

57:                                               ; preds = %15
  %58 = load i32, i32* %3, align 4
  %59 = sext i32 %58 to i64
  %60 = udiv i64 %59, 1000000000000
  %61 = trunc i64 %60 to i32
  %62 = call i32 @digits10(i32 %61)
  %63 = add nsw i32 12, %62
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %57, %51, %45, %35, %30, %29, %14, %10, %6
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
