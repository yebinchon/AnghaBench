; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/xps/extr_xps-common.c_unhex.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/xps/extr_xps-common.c_unhex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @unhex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unhex(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp sge i32 %4, 65
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  %7 = load i32, i32* %3, align 4
  %8 = icmp sle i32 %7, 70
  br i1 %8, label %9, label %13

9:                                                ; preds = %6
  %10 = load i32, i32* %3, align 4
  %11 = sub nsw i32 %10, 65
  %12 = add nsw i32 %11, 10
  store i32 %12, i32* %2, align 4
  br label %33

13:                                               ; preds = %6, %1
  %14 = load i32, i32* %3, align 4
  %15 = icmp sge i32 %14, 97
  br i1 %15, label %16, label %23

16:                                               ; preds = %13
  %17 = load i32, i32* %3, align 4
  %18 = icmp sle i32 %17, 102
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load i32, i32* %3, align 4
  %21 = sub nsw i32 %20, 97
  %22 = add nsw i32 %21, 10
  store i32 %22, i32* %2, align 4
  br label %33

23:                                               ; preds = %16, %13
  %24 = load i32, i32* %3, align 4
  %25 = icmp sge i32 %24, 48
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load i32, i32* %3, align 4
  %28 = icmp sle i32 %27, 57
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32, i32* %3, align 4
  %31 = sub nsw i32 %30, 48
  store i32 %31, i32* %2, align 4
  br label %33

32:                                               ; preds = %26, %23
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %29, %19, %9
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
