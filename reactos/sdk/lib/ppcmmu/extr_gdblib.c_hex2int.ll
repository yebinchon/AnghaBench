; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/ppcmmu/extr_gdblib.c_hex2int.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/ppcmmu/extr_gdblib.c_hex2int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hex2int(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp sge i32 %4, 97
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  %7 = load i32, i32* %3, align 4
  %8 = icmp sle i32 %7, 102
  br i1 %8, label %9, label %13

9:                                                ; preds = %6
  %10 = load i32, i32* %3, align 4
  %11 = add nsw i32 %10, 10
  %12 = sub nsw i32 %11, 97
  store i32 %12, i32* %2, align 4
  br label %26

13:                                               ; preds = %6, %1
  %14 = load i32, i32* %3, align 4
  %15 = icmp sge i32 %14, 65
  br i1 %15, label %16, label %23

16:                                               ; preds = %13
  %17 = load i32, i32* %3, align 4
  %18 = icmp sle i32 %17, 70
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 %20, 10
  %22 = sub nsw i32 %21, 65
  store i32 %22, i32* %2, align 4
  br label %26

23:                                               ; preds = %16, %13
  %24 = load i32, i32* %3, align 4
  %25 = sub nsw i32 %24, 48
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %23, %19, %9
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
