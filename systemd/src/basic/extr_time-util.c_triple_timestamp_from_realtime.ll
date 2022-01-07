; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_time-util.c_triple_timestamp_from_realtime.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_time-util.c_triple_timestamp_from_realtime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i64 }

@USEC_INFINITY = common dso_local global i64 0, align 8
@CLOCK_REALTIME = common dso_local global i32 0, align 4
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@CLOCK_BOOTTIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @triple_timestamp_from_realtime(%struct.TYPE_5__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %8 = call i32 @assert(%struct.TYPE_5__* %7)
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @USEC_INFINITY, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i64, i64* %5, align 8
  %14 = icmp sle i64 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %12, %2
  %16 = load i64, i64* %5, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  store i64 %16, i64* %20, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 2
  store i64 %16, i64* %22, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  store %struct.TYPE_5__* %23, %struct.TYPE_5__** %3, align 8
  br label %52

24:                                               ; preds = %12
  %25 = load i64, i64* %5, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 2
  store i64 %25, i64* %27, align 8
  %28 = load i32, i32* @CLOCK_REALTIME, align 4
  %29 = call i64 @now(i32 %28)
  %30 = load i64, i64* %5, align 8
  %31 = sub nsw i64 %29, %30
  store i64 %31, i64* %6, align 8
  %32 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %33 = call i64 @now(i32 %32)
  %34 = load i64, i64* %6, align 8
  %35 = call i64 @usec_sub_signed(i64 %33, i64 %34)
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  store i64 %35, i64* %37, align 8
  %38 = call i64 (...) @clock_boottime_supported()
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %24
  %41 = load i32, i32* @CLOCK_BOOTTIME, align 4
  %42 = call i64 @now(i32 %41)
  %43 = load i64, i64* %6, align 8
  %44 = call i64 @usec_sub_signed(i64 %42, i64 %43)
  br label %47

45:                                               ; preds = %24
  %46 = load i64, i64* @USEC_INFINITY, align 8
  br label %47

47:                                               ; preds = %45, %40
  %48 = phi i64 [ %44, %40 ], [ %46, %45 ]
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  store %struct.TYPE_5__* %51, %struct.TYPE_5__** %3, align 8
  br label %52

52:                                               ; preds = %47, %15
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  ret %struct.TYPE_5__* %53
}

declare dso_local i32 @assert(%struct.TYPE_5__*) #1

declare dso_local i64 @now(i32) #1

declare dso_local i64 @usec_sub_signed(i64, i64) #1

declare dso_local i64 @clock_boottime_supported(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
