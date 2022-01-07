; ModuleID = '/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb_is_prime.c'
source_filename = "/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb_is_prime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stb_is_prime(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp ult i32 %6, 2
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %58

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  store i32 1, i32* %2, align 4
  br label %58

13:                                               ; preds = %9
  %14 = load i32, i32* %3, align 4
  %15 = and i32 %14, 1
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %58

18:                                               ; preds = %13
  %19 = load i32, i32* %3, align 4
  %20 = urem i32 %19, 3
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load i32, i32* %3, align 4
  %24 = icmp eq i32 %23, 3
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %2, align 4
  br label %58

26:                                               ; preds = %18
  store i32 5, i32* %4, align 4
  br label %27

27:                                               ; preds = %54, %26
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = mul i32 %28, %29
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %3, align 4
  %33 = icmp ule i32 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp ugt i32 %35, %36
  br label %38

38:                                               ; preds = %34, %27
  %39 = phi i1 [ false, %27 ], [ %37, %34 ]
  br i1 %39, label %40, label %57

40:                                               ; preds = %38
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* %4, align 4
  %43 = urem i32 %41, %42
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  store i32 0, i32* %2, align 4
  br label %58

46:                                               ; preds = %40
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* %4, align 4
  %49 = add i32 %48, 2
  %50 = urem i32 %47, %49
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  store i32 0, i32* %2, align 4
  br label %58

53:                                               ; preds = %46
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %4, align 4
  %56 = add i32 %55, 6
  store i32 %56, i32* %4, align 4
  br label %27

57:                                               ; preds = %38
  store i32 1, i32* %2, align 4
  br label %58

58:                                               ; preds = %57, %52, %45, %22, %17, %12, %8
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
