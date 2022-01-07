; ModuleID = '/home/carl/AnghaBench/timescaledb/src/bgw/extr_timer.c_wait_using_wait_latch.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/bgw/extr_timer.c_wait_using_wait_latch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [31 x i8] c"get_timeout_millisec underflow\00", align 1
@MAX_TIMEOUT = common dso_local global i64 0, align 8
@INT_MAX = common dso_local global i64 0, align 8
@MyLatch = common dso_local global i32 0, align 4
@WL_LATCH_SET = common dso_local global i32 0, align 4
@WL_TIMEOUT = common dso_local global i32 0, align 4
@WL_POSTMASTER_DEATH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @wait_using_wait_latch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_using_wait_latch(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i64 @get_timeout_millisec(i32 %5)
  store i64 %6, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = icmp sge i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %10

10:                                               ; preds = %9, %1
  %11 = phi i1 [ false, %1 ], [ true, %9 ]
  %12 = zext i1 %11 to i32
  %13 = call i32 @Assert(i32 %12)
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* @MAX_TIMEOUT, align 8
  %16 = icmp sgt i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %10
  %18 = load i64, i64* @MAX_TIMEOUT, align 8
  store i64 %18, i64* %4, align 8
  br label %19

19:                                               ; preds = %17, %10
  %20 = load i64, i64* %4, align 8
  %21 = load i64, i64* @INT_MAX, align 8
  %22 = icmp sgt i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i64, i64* @INT_MAX, align 8
  store i64 %24, i64* %4, align 8
  br label %25

25:                                               ; preds = %23, %19
  %26 = load i32, i32* @MyLatch, align 4
  %27 = load i32, i32* @WL_LATCH_SET, align 4
  %28 = load i32, i32* @WL_TIMEOUT, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @WL_POSTMASTER_DEATH, align 4
  %31 = or i32 %29, %30
  %32 = load i64, i64* %4, align 8
  %33 = call i32 @WaitLatchCompat(i32 %26, i32 %31, i64 %32)
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* @MyLatch, align 4
  %35 = call i32 @ResetLatch(i32 %34)
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @WL_POSTMASTER_DEATH, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %25
  %41 = call i32 (...) @on_postmaster_death()
  br label %42

42:                                               ; preds = %40, %25
  ret i32 1
}

declare dso_local i64 @get_timeout_millisec(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @WaitLatchCompat(i32, i32, i64) #1

declare dso_local i32 @ResetLatch(i32) #1

declare dso_local i32 @on_postmaster_death(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
