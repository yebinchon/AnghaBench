; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_css-parse.c_isnmstart.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_css-parse.c_isnmstart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @isnmstart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isnmstart(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp eq i32 %3, 92
  br i1 %4, label %28, label %5

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4
  %7 = icmp eq i32 %6, 95
  br i1 %7, label %28, label %8

8:                                                ; preds = %5
  %9 = load i32, i32* %2, align 4
  %10 = icmp sge i32 %9, 97
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = load i32, i32* %2, align 4
  %13 = icmp sle i32 %12, 122
  br i1 %13, label %28, label %14

14:                                               ; preds = %11, %8
  %15 = load i32, i32* %2, align 4
  %16 = icmp sge i32 %15, 65
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i32, i32* %2, align 4
  %19 = icmp sle i32 %18, 90
  br i1 %19, label %28, label %20

20:                                               ; preds = %17, %14
  %21 = load i32, i32* %2, align 4
  %22 = icmp sge i32 %21, 128
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32, i32* %2, align 4
  %25 = icmp sle i32 %24, 255
  br label %26

26:                                               ; preds = %23, %20
  %27 = phi i1 [ false, %20 ], [ %25, %23 ]
  br label %28

28:                                               ; preds = %26, %17, %11, %5, %1
  %29 = phi i1 [ true, %17 ], [ true, %11 ], [ true, %5 ], [ true, %1 ], [ %27, %26 ]
  %30 = zext i1 %29 to i32
  ret i32 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
