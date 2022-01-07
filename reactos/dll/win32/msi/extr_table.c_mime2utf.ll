; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_table.c_mime2utf.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_table.c_mime2utf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mime2utf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mime2utf(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp slt i32 %4, 10
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load i32, i32* %3, align 4
  %8 = add nsw i32 %7, 48
  store i32 %8, i32* %2, align 4
  br label %29

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = icmp slt i32 %10, 36
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = load i32, i32* %3, align 4
  %14 = sub nsw i32 %13, 10
  %15 = add nsw i32 %14, 65
  store i32 %15, i32* %2, align 4
  br label %29

16:                                               ; preds = %9
  %17 = load i32, i32* %3, align 4
  %18 = icmp slt i32 %17, 62
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = load i32, i32* %3, align 4
  %21 = sub nsw i32 %20, 10
  %22 = sub nsw i32 %21, 26
  %23 = add nsw i32 %22, 97
  store i32 %23, i32* %2, align 4
  br label %29

24:                                               ; preds = %16
  %25 = load i32, i32* %3, align 4
  %26 = icmp eq i32 %25, 62
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32 46, i32* %2, align 4
  br label %29

28:                                               ; preds = %24
  store i32 95, i32* %2, align 4
  br label %29

29:                                               ; preds = %28, %27, %19, %12, %6
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
