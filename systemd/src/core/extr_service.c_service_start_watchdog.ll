; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_service.c_service_start_watchdog.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_service.c_service_start_watchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }

@USEC_INFINITY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed to reset watchdog timer: %m\00", align 1
@SD_EVENT_ONESHOT = common dso_local global i32 0, align 4
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@service_dispatch_watchdog = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to add watchdog timer: %m\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"service-watchdog\00", align 1
@SD_EVENT_PRIORITY_IDLE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"Failed to install watchdog timer: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*)* @service_start_watchdog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @service_start_watchdog(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %5 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %6 = call i32 @assert(%struct.TYPE_14__* %5)
  %7 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %8 = call i32 @service_get_watchdog_usec(%struct.TYPE_14__* %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @USEC_INFINITY, align 4
  %11 = call i64 @IN_SET(i32 %9, i32 0, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %15 = call i32 @service_stop_watchdog(%struct.TYPE_14__* %14)
  br label %89

16:                                               ; preds = %1
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %45

21:                                               ; preds = %16
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @usec_add(i32 %28, i32 %29)
  %31 = call i32 @sd_event_source_set_time(i64 %24, i32 %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %21
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %36 = call %struct.TYPE_15__* @UNIT(%struct.TYPE_14__* %35)
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @log_unit_warning_errno(%struct.TYPE_15__* %36, i32 %37, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %89

39:                                               ; preds = %21
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* @SD_EVENT_ONESHOT, align 4
  %44 = call i32 @sd_event_source_set_enabled(i64 %42, i32 %43)
  store i32 %44, i32* %4, align 4
  br label %81

45:                                               ; preds = %16
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %47 = call %struct.TYPE_15__* @UNIT(%struct.TYPE_14__* %46)
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  %54 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %3, align 4
  %60 = call i32 @usec_add(i32 %58, i32 %59)
  %61 = load i32, i32* @service_dispatch_watchdog, align 4
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %63 = call i32 @sd_event_add_time(i32 %51, i64* %53, i32 %54, i32 %60, i32 0, i32 %61, %struct.TYPE_14__* %62)
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* %4, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %45
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %68 = call %struct.TYPE_15__* @UNIT(%struct.TYPE_14__* %67)
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @log_unit_warning_errno(%struct.TYPE_15__* %68, i32 %69, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %89

71:                                               ; preds = %45
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @sd_event_source_set_description(i64 %74, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i32, i32* @SD_EVENT_PRIORITY_IDLE, align 4
  %80 = call i32 @sd_event_source_set_priority(i64 %78, i32 %79)
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %71, %39
  %82 = load i32, i32* %4, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %81
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %86 = call %struct.TYPE_15__* @UNIT(%struct.TYPE_14__* %85)
  %87 = load i32, i32* %4, align 4
  %88 = call i32 @log_unit_warning_errno(%struct.TYPE_15__* %86, i32 %87, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %89

89:                                               ; preds = %13, %34, %66, %84, %81
  ret void
}

declare dso_local i32 @assert(%struct.TYPE_14__*) #1

declare dso_local i32 @service_get_watchdog_usec(%struct.TYPE_14__*) #1

declare dso_local i64 @IN_SET(i32, i32, i32) #1

declare dso_local i32 @service_stop_watchdog(%struct.TYPE_14__*) #1

declare dso_local i32 @sd_event_source_set_time(i64, i32) #1

declare dso_local i32 @usec_add(i32, i32) #1

declare dso_local i32 @log_unit_warning_errno(%struct.TYPE_15__*, i32, i8*) #1

declare dso_local %struct.TYPE_15__* @UNIT(%struct.TYPE_14__*) #1

declare dso_local i32 @sd_event_source_set_enabled(i64, i32) #1

declare dso_local i32 @sd_event_add_time(i32, i64*, i32, i32, i32, i32, %struct.TYPE_14__*) #1

declare dso_local i32 @sd_event_source_set_description(i64, i8*) #1

declare dso_local i32 @sd_event_source_set_priority(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
