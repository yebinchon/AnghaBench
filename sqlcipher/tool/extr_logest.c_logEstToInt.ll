; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_logest.c_logEstToInt.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_logest.c_logEstToInt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @logEstToInt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @logEstToInt(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %5, 10
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %40

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = srem i32 %9, 10
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %3, align 4
  %12 = sdiv i32 %11, 10
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp sge i32 %13, 5
  br i1 %14, label %15, label %18

15:                                               ; preds = %8
  %16 = load i32, i32* %4, align 4
  %17 = sub nsw i32 %16, 2
  store i32 %17, i32* %4, align 4
  br label %25

18:                                               ; preds = %8
  %19 = load i32, i32* %4, align 4
  %20 = icmp sge i32 %19, 1
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32, i32* %4, align 4
  %23 = sub nsw i32 %22, 1
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %21, %18
  br label %25

25:                                               ; preds = %24, %15
  %26 = load i32, i32* %3, align 4
  %27 = icmp sge i32 %26, 3
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %29, 8
  %31 = load i32, i32* %3, align 4
  %32 = sub nsw i32 %31, 3
  %33 = shl i32 %30, %32
  store i32 %33, i32* %2, align 4
  br label %40

34:                                               ; preds = %25
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %35, 8
  %37 = load i32, i32* %3, align 4
  %38 = sub nsw i32 3, %37
  %39 = ashr i32 %36, %38
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %34, %28, %7
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
