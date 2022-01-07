; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_arc.c_l2arc_write_interval.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_arc.c_l2arc_write_interval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@l2arc_feed_again = common dso_local global i64 0, align 8
@hz = common dso_local global i32 0, align 4
@l2arc_feed_min_ms = common dso_local global i32 0, align 4
@l2arc_feed_secs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @l2arc_write_interval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2arc_write_interval(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i64, i64* @l2arc_feed_again, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %5, align 4
  %15 = sdiv i32 %14, 2
  %16 = icmp sgt i32 %13, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load i32, i32* @hz, align 4
  %19 = load i32, i32* @l2arc_feed_min_ms, align 4
  %20 = mul nsw i32 %18, %19
  %21 = sdiv i32 %20, 1000
  store i32 %21, i32* %7, align 4
  br label %26

22:                                               ; preds = %12, %3
  %23 = load i32, i32* @hz, align 4
  %24 = load i32, i32* @l2arc_feed_secs, align 4
  %25 = mul nsw i32 %23, %24
  store i32 %25, i32* %7, align 4
  br label %26

26:                                               ; preds = %22, %17
  %27 = call i32 (...) @ddi_get_lbolt()
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %29, %30
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %32, %33
  %35 = call i32 @MIN(i32 %31, i32 %34)
  %36 = call i32 @MAX(i32 %28, i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  ret i32 %37
}

declare dso_local i32 @ddi_get_lbolt(...) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
