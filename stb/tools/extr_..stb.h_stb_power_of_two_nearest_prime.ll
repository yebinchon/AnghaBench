; ModuleID = '/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb_power_of_two_nearest_prime.c'
source_filename = "/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb_power_of_two_nearest_prime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stb_power_of_two_nearest_prime.tab = internal global [32 x i8] c"\00\00\00\00\01\00\FF\00\01\FF\FF\03\FF\00\FF\02\01\00\02\00\FF\FC\FF\05\FF\12\FE\0F\02\FF\02\00", align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stb_power_of_two_nearest_prime(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @stb_power_of_two_nearest_prime.tab, i64 0, i64 0), align 16
  %6 = icmp ne i8 %5, 0
  br i1 %6, label %30, label %7

7:                                                ; preds = %1
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %26, %7
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 32
  br i1 %10, label %11, label %29

11:                                               ; preds = %8
  %12 = load i32, i32* %4, align 4
  %13 = shl i32 1, %12
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [32 x i8], [32 x i8]* @stb_power_of_two_nearest_prime.tab, i64 0, i64 %15
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = mul nsw i32 2, %18
  %20 = add nsw i32 %13, %19
  %21 = sub nsw i32 %20, 1
  %22 = trunc i32 %21 to i8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [32 x i8], [32 x i8]* @stb_power_of_two_nearest_prime.tab, i64 0, i64 %24
  store i8 %22, i8* %25, align 1
  br label %26

26:                                               ; preds = %11
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %4, align 4
  br label %8

29:                                               ; preds = %8
  store i8 2, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @stb_power_of_two_nearest_prime.tab, i64 0, i64 1), align 1
  store i8 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @stb_power_of_two_nearest_prime.tab, i64 0, i64 0), align 16
  br label %30

30:                                               ; preds = %29, %1
  %31 = load i32, i32* %3, align 4
  %32 = icmp sge i32 %31, 32
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 -5, i32* %2, align 4
  br label %40

34:                                               ; preds = %30
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [32 x i8], [32 x i8]* @stb_power_of_two_nearest_prime.tab, i64 0, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %34, %33
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
