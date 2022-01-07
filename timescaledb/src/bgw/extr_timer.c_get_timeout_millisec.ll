; ModuleID = '/home/carl/AnghaBench/timescaledb/src/bgw/extr_timer.c_get_timeout_millisec.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/bgw/extr_timer.c_get_timeout_millisec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PG_INT64_MAX = common dso_local global i64 0, align 8
@MILLISECS_PER_SEC = common dso_local global i64 0, align 8
@USECS_PER_MILLISEC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32)* @get_timeout_millisec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_timeout_millisec(i32 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i64 0, i64* %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i64 @TIMESTAMP_IS_NOBEGIN(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i64 0, i64* %2, align 8
  br label %35

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = call i64 @TIMESTAMP_IS_NOEND(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = load i64, i64* @PG_INT64_MAX, align 8
  store i64 %15, i64* %2, align 8
  br label %35

16:                                               ; preds = %10
  %17 = call i32 (...) @GetCurrentTimestamp()
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @TimestampDifference(i32 %17, i32 %18, i64* %4, i32* %5)
  %20 = load i64, i64* %4, align 8
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %16
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22, %16
  store i64 0, i64* %2, align 8
  br label %35

26:                                               ; preds = %22
  %27 = load i64, i64* %4, align 8
  %28 = load i64, i64* @MILLISECS_PER_SEC, align 8
  %29 = mul nsw i64 %27, %28
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = load i64, i64* @USECS_PER_MILLISEC, align 8
  %33 = sdiv i64 %31, %32
  %34 = add nsw i64 %29, %33
  store i64 %34, i64* %2, align 8
  br label %35

35:                                               ; preds = %26, %25, %14, %9
  %36 = load i64, i64* %2, align 8
  ret i64 %36
}

declare dso_local i64 @TIMESTAMP_IS_NOBEGIN(i32) #1

declare dso_local i64 @TIMESTAMP_IS_NOEND(i32) #1

declare dso_local i32 @TimestampDifference(i32, i32, i64*, i32*) #1

declare dso_local i32 @GetCurrentTimestamp(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
