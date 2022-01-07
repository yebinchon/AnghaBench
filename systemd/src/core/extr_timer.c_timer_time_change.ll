; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_timer.c_timer_time_change.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_timer.c_timer_time_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@TIMER_WAITING = common dso_local global i64 0, align 8
@CLOCK_REALTIME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Time change, triggering activation.\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Time change, recalculating next elapse.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @timer_time_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @timer_time_change(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = call %struct.TYPE_7__* @TIMER(i32* %5)
  store %struct.TYPE_7__* %6, %struct.TYPE_7__** %3, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 @assert(i32* %7)
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @TIMER_WAITING, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %44

15:                                               ; preds = %1
  %16 = load i32, i32* @CLOCK_REALTIME, align 4
  %17 = call i64 @now(i32 %16)
  store i64 %17, i64* %4, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %4, align 8
  %23 = icmp sgt i64 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %15
  %25 = load i64, i64* %4, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  store i64 %25, i64* %28, align 8
  br label %29

29:                                               ; preds = %24, %15
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load i32*, i32** %2, align 8
  %36 = call i32 @log_unit_debug(i32* %35, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %38 = call i32 @timer_enter_running(%struct.TYPE_7__* %37)
  br label %44

39:                                               ; preds = %29
  %40 = load i32*, i32** %2, align 8
  %41 = call i32 @log_unit_debug(i32* %40, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %43 = call i32 @timer_enter_waiting(%struct.TYPE_7__* %42, i32 1)
  br label %44

44:                                               ; preds = %14, %39, %34
  ret void
}

declare dso_local %struct.TYPE_7__* @TIMER(i32*) #1

declare dso_local i32 @assert(i32*) #1

declare dso_local i64 @now(i32) #1

declare dso_local i32 @log_unit_debug(i32*, i8*) #1

declare dso_local i32 @timer_enter_running(%struct.TYPE_7__*) #1

declare dso_local i32 @timer_enter_waiting(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
