; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd-network/extr_sd-lldp.c_lldp_start_timer.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd-network/extr_sd-lldp.c_lldp_start_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32 }

@on_timer_event = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"lldp-timer\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.TYPE_9__*)* @lldp_start_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lldp_start_timer(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %8 = call i32 @assert(%struct.TYPE_10__* %7)
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %10 = icmp ne %struct.TYPE_9__* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %13 = call i32 @lldp_neighbor_start_ttl(%struct.TYPE_9__* %12)
  br label %14

14:                                               ; preds = %11, %2
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.TYPE_9__* @prioq_peek(i32 %17)
  store %struct.TYPE_9__* %18, %struct.TYPE_9__** %6, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %20 = icmp ne %struct.TYPE_9__* %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %14
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @event_source_disable(i32 %24)
  store i32 %25, i32* %3, align 4
  br label %48

26:                                               ; preds = %14
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %48

32:                                               ; preds = %26
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 1
  %38 = call i32 (...) @clock_boottime_or_monotonic()
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @on_timer_event, align 4
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @event_reset_time(i32 %35, i32* %37, i32 %38, i32 %41, i32 0, i32 %42, %struct.TYPE_10__* %43, i32 %46, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 1)
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %32, %31, %21
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @assert(%struct.TYPE_10__*) #1

declare dso_local i32 @lldp_neighbor_start_ttl(%struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_9__* @prioq_peek(i32) #1

declare dso_local i32 @event_source_disable(i32) #1

declare dso_local i32 @event_reset_time(i32, i32*, i32, i32, i32, i32, %struct.TYPE_10__*, i32, i8*, i32) #1

declare dso_local i32 @clock_boottime_or_monotonic(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
