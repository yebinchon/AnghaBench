; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_service.c_service_arm_timer.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_service.c_service_arm_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.TYPE_10__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@SD_EVENT_ONESHOT = common dso_local global i32 0, align 4
@USEC_INFINITY = common dso_local global i32 0, align 4
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@service_dispatch_timer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"service-timer\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32)* @service_arm_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @service_arm_timer(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %8 = call i32 @assert(%struct.TYPE_9__* %7)
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %2
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @sd_event_source_set_time(i64 %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %13
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %3, align 4
  br label %57

23:                                               ; preds = %13
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* @SD_EVENT_ONESHOT, align 4
  %28 = call i32 @sd_event_source_set_enabled(i64 %26, i32 %27)
  store i32 %28, i32* %3, align 4
  br label %57

29:                                               ; preds = %2
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @USEC_INFINITY, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %57

34:                                               ; preds = %29
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %36 = call %struct.TYPE_10__* @UNIT(%struct.TYPE_9__* %35)
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @service_dispatch_timer, align 4
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %47 = call i32 @sd_event_add_time(i32 %40, i64* %42, i32 %43, i32 %44, i32 0, i32 %45, %struct.TYPE_9__* %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %34
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %3, align 4
  br label %57

52:                                               ; preds = %34
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @sd_event_source_set_description(i64 %55, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %52, %50, %33, %23, %21
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @assert(%struct.TYPE_9__*) #1

declare dso_local i32 @sd_event_source_set_time(i64, i32) #1

declare dso_local i32 @sd_event_source_set_enabled(i64, i32) #1

declare dso_local i32 @sd_event_add_time(i32, i64*, i32, i32, i32, i32, %struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_10__* @UNIT(%struct.TYPE_9__*) #1

declare dso_local i32 @sd_event_source_set_description(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
