; ModuleID = '/home/carl/AnghaBench/systemd/src/network/extr_networkd-lldp-tx.c_on_lldp_timer.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/extr_networkd-lldp-tx.c_on_lldp_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }

@.str = private unnamed_addr constant [23 x i8] c"Sending LLDP packet...\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Failed to send LLDP packet, ignoring: %m\00", align 1
@LLDP_FAST_TX_USEC = common dso_local global i32 0, align 4
@LLDP_TX_INTERVAL_USEC = common dso_local global i32 0, align 4
@LLDP_JITTER_USEC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Failed to restart LLDP timer: %m\00", align 1
@SD_EVENT_ONESHOT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"Failed to enable LLDP timer: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*)* @on_lldp_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @on_lldp_timer(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %8, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @assert(i8* %15)
  %17 = load i8*, i8** %7, align 8
  %18 = call i32 @assert(i8* %17)
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %20 = call i32 @log_link_debug(%struct.TYPE_6__* %19, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %22 = call i32 @link_send_lldp(%struct.TYPE_6__* %21)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %3
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %27 = load i32, i32* %12, align 4
  %28 = call i32 @log_link_debug_errno(%struct.TYPE_6__* %26, i32 %27, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %29

29:                                               ; preds = %25, %3
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp sgt i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, -1
  store i64 %38, i64* %36, align 8
  br label %39

39:                                               ; preds = %34, %29
  %40 = load i8*, i8** %5, align 8
  %41 = call i32 @sd_event_source_get_event(i8* %40)
  %42 = call i32 (...) @clock_boottime_or_monotonic()
  %43 = call i64 @sd_event_now(i32 %41, i32 %42, i32* %9)
  %44 = icmp sge i64 %43, 0
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert_se(i32 %45)
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp sgt i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %39
  %52 = load i32, i32* @LLDP_FAST_TX_USEC, align 4
  br label %55

53:                                               ; preds = %39
  %54 = load i32, i32* @LLDP_TX_INTERVAL_USEC, align 4
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi i32 [ %52, %51 ], [ %54, %53 ]
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @usec_add(i32 %57, i32 %58)
  %60 = call i64 (...) @random_u64()
  %61 = trunc i64 %60 to i32
  %62 = load i32, i32* @LLDP_JITTER_USEC, align 4
  %63 = srem i32 %61, %62
  %64 = call i32 @usec_add(i32 %59, i32 %63)
  store i32 %64, i32* %11, align 4
  %65 = load i8*, i8** %5, align 8
  %66 = load i32, i32* %11, align 4
  %67 = call i32 @sd_event_source_set_time(i8* %65, i32 %66)
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* %12, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %55
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %72 = load i32, i32* %12, align 4
  %73 = call i32 @log_link_error_errno(%struct.TYPE_6__* %71, i32 %72, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  store i32 %73, i32* %4, align 4
  br label %85

74:                                               ; preds = %55
  %75 = load i8*, i8** %5, align 8
  %76 = load i32, i32* @SD_EVENT_ONESHOT, align 4
  %77 = call i32 @sd_event_source_set_enabled(i8* %75, i32 %76)
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* %12, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %74
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %82 = load i32, i32* %12, align 4
  %83 = call i32 @log_link_error_errno(%struct.TYPE_6__* %81, i32 %82, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  store i32 %83, i32* %4, align 4
  br label %85

84:                                               ; preds = %74
  store i32 0, i32* %4, align 4
  br label %85

85:                                               ; preds = %84, %80, %70
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i32 @log_link_debug(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @link_send_lldp(%struct.TYPE_6__*) #1

declare dso_local i32 @log_link_debug_errno(%struct.TYPE_6__*, i32, i8*) #1

declare dso_local i32 @assert_se(i32) #1

declare dso_local i64 @sd_event_now(i32, i32, i32*) #1

declare dso_local i32 @sd_event_source_get_event(i8*) #1

declare dso_local i32 @clock_boottime_or_monotonic(...) #1

declare dso_local i32 @usec_add(i32, i32) #1

declare dso_local i64 @random_u64(...) #1

declare dso_local i32 @sd_event_source_set_time(i8*, i32) #1

declare dso_local i32 @log_link_error_errno(%struct.TYPE_6__*, i32, i8*) #1

declare dso_local i32 @sd_event_source_set_enabled(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
