; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_..av1_unpack.h_leb128_expected.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_..av1_unpack.h_leb128_expected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @leb128_expected to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @leb128_expected(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp ult i32 %4, 128
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %20

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = icmp ult i32 %8, 16384
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  store i32 2, i32* %2, align 4
  br label %20

11:                                               ; preds = %7
  %12 = load i32, i32* %3, align 4
  %13 = icmp ult i32 %12, 2097152
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i32 3, i32* %2, align 4
  br label %20

15:                                               ; preds = %11
  %16 = load i32, i32* %3, align 4
  %17 = icmp ult i32 %16, 268435456
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i32 4, i32* %2, align 4
  br label %20

19:                                               ; preds = %15
  store i32 5, i32* %2, align 4
  br label %20

20:                                               ; preds = %19, %18, %14, %10, %6
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
