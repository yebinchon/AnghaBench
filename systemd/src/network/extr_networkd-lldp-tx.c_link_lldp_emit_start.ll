; ModuleID = '/home/carl/AnghaBench/systemd/src/network/extr_networkd-lldp-tx.c_link_lldp_emit_start.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/extr_networkd-lldp-tx.c_link_lldp_emit_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, %struct.TYPE_9__*, i32, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64 }

@LLDP_EMIT_NO = common dso_local global i64 0, align 8
@LLDP_TX_FAST_INIT = common dso_local global i32 0, align 4
@LLDP_FAST_TX_USEC = common dso_local global i64 0, align 8
@LLDP_JITTER_USEC = common dso_local global i64 0, align 8
@on_lldp_timer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"lldp-tx\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @link_lldp_emit_start(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %8 = call i32 @assert(%struct.TYPE_10__* %7)
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 3
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %12 = icmp ne %struct.TYPE_8__* %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %1
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 3
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @LLDP_EMIT_NO, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %13, %1
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %23 = call i32 @link_lldp_emit_stop(%struct.TYPE_10__* %22)
  store i32 0, i32* %2, align 4
  br label %83

24:                                               ; preds = %13
  %25 = load i32, i32* @LLDP_TX_FAST_INIT, align 4
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  %28 = call i32 (...) @clock_boottime_or_monotonic()
  %29 = call i64 @now(i32 %28)
  %30 = load i64, i64* @LLDP_FAST_TX_USEC, align 8
  %31 = call i64 @usec_add(i64 %29, i64 %30)
  %32 = call i64 (...) @random_u64()
  %33 = load i64, i64* @LLDP_JITTER_USEC, align 8
  %34 = srem i64 %32, %33
  %35 = call i64 @usec_add(i64 %31, i64 %34)
  store i64 %35, i64* %4, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %60

40:                                               ; preds = %24
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @sd_event_source_get_time(i64 %43, i64* %6)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i32, i32* %5, align 4
  store i32 %48, i32* %2, align 4
  br label %83

49:                                               ; preds = %40
  %50 = load i64, i64* %6, align 8
  %51 = load i64, i64* %4, align 8
  %52 = icmp sle i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store i32 0, i32* %2, align 4
  br label %83

54:                                               ; preds = %49
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %4, align 8
  %59 = call i32 @sd_event_source_set_time(i64 %57, i64 %58)
  store i32 %59, i32* %2, align 4
  br label %83

60:                                               ; preds = %24
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = call i32 (...) @clock_boottime_or_monotonic()
  %69 = load i64, i64* %4, align 8
  %70 = load i32, i32* @on_lldp_timer, align 4
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %72 = call i32 @sd_event_add_time(i32 %65, i64* %67, i32 %68, i64 %69, i32 0, i32 %70, %struct.TYPE_10__* %71)
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %5, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %60
  %76 = load i32, i32* %5, align 4
  store i32 %76, i32* %2, align 4
  br label %83

77:                                               ; preds = %60
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @sd_event_source_set_description(i64 %80, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %82

82:                                               ; preds = %77
  store i32 0, i32* %2, align 4
  br label %83

83:                                               ; preds = %82, %75, %54, %53, %47, %21
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i32 @assert(%struct.TYPE_10__*) #1

declare dso_local i32 @link_lldp_emit_stop(%struct.TYPE_10__*) #1

declare dso_local i64 @usec_add(i64, i64) #1

declare dso_local i64 @now(i32) #1

declare dso_local i32 @clock_boottime_or_monotonic(...) #1

declare dso_local i64 @random_u64(...) #1

declare dso_local i32 @sd_event_source_get_time(i64, i64*) #1

declare dso_local i32 @sd_event_source_set_time(i64, i64) #1

declare dso_local i32 @sd_event_add_time(i32, i64*, i32, i64, i32, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @sd_event_source_set_description(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
