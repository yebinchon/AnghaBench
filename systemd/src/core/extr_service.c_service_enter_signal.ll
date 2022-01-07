; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_service.c_service_enter_signal.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_service.c_service_enter_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, %struct.TYPE_13__, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i64 }

@SERVICE_SUCCESS = common dso_local global i64 0, align 8
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@SERVICE_STOP_WATCHDOG = common dso_local global i32 0, align 4
@SERVICE_STOP_SIGTERM = common dso_local global i32 0, align 4
@SERVICE_STOP_SIGKILL = common dso_local global i32 0, align 4
@SERVICE_FINAL_SIGTERM = common dso_local global i32 0, align 4
@SERVICE_FINAL_SIGKILL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to kill processes: %m\00", align 1
@SERVICE_FAILURE_RESOURCES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, i32, i64)* @service_enter_signal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @service_enter_signal(%struct.TYPE_12__* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %9 = call i32 @assert(%struct.TYPE_12__* %8)
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @SERVICE_SUCCESS, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load i64, i64* %6, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  br label %19

19:                                               ; preds = %15, %3
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %21 = call i32 @UNIT(%struct.TYPE_12__* %20)
  %22 = call i32 @unit_watch_all_pids(i32 %21)
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %24 = call i32 @UNIT(%struct.TYPE_12__* %23)
  %25 = call i32 @unit_enqueue_rewatch_pids(i32 %24)
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %27 = call i32 @UNIT(%struct.TYPE_12__* %26)
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @state_to_kill_operation(%struct.TYPE_12__* %30, i32 %31)
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @unit_kill_context(i32 %27, %struct.TYPE_13__* %29, i32 %32, i32 %35, i32 %38, i32 %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %19
  br label %123

46:                                               ; preds = %19
  %47 = load i32, i32* %7, align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %74

49:                                               ; preds = %46
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %51 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %52 = call i32 @now(i32 %51)
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @SERVICE_STOP_WATCHDOG, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %49
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %58 = call i32 @service_timeout_abort_usec(%struct.TYPE_12__* %57)
  br label %63

59:                                               ; preds = %49
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  br label %63

63:                                               ; preds = %59, %56
  %64 = phi i32 [ %58, %56 ], [ %62, %59 ]
  %65 = call i32 @usec_add(i32 %52, i32 %64)
  %66 = call i32 @service_arm_timer(%struct.TYPE_12__* %50, i32 %65)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  br label %123

70:                                               ; preds = %63
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @service_set_state(%struct.TYPE_12__* %71, i32 %72)
  br label %122

74:                                               ; preds = %46
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* @SERVICE_STOP_WATCHDOG, align 4
  %77 = load i32, i32* @SERVICE_STOP_SIGTERM, align 4
  %78 = call i64 (i32, i32, i32, ...) @IN_SET(i32 %75, i32 %76, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %74
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %80
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %88 = load i32, i32* @SERVICE_STOP_SIGKILL, align 4
  %89 = load i64, i64* @SERVICE_SUCCESS, align 8
  call void @service_enter_signal(%struct.TYPE_12__* %87, i32 %88, i64 %89)
  br label %121

90:                                               ; preds = %80, %74
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* @SERVICE_STOP_WATCHDOG, align 4
  %93 = load i32, i32* @SERVICE_STOP_SIGTERM, align 4
  %94 = load i32, i32* @SERVICE_STOP_SIGKILL, align 4
  %95 = call i64 (i32, i32, i32, ...) @IN_SET(i32 %91, i32 %92, i32 %93, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %90
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %99 = load i64, i64* @SERVICE_SUCCESS, align 8
  %100 = call i32 @service_enter_stop_post(%struct.TYPE_12__* %98, i64 %99)
  br label %120

101:                                              ; preds = %90
  %102 = load i32, i32* %5, align 4
  %103 = load i32, i32* @SERVICE_FINAL_SIGTERM, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %115

105:                                              ; preds = %101
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %105
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %113 = load i32, i32* @SERVICE_FINAL_SIGKILL, align 4
  %114 = load i64, i64* @SERVICE_SUCCESS, align 8
  call void @service_enter_signal(%struct.TYPE_12__* %112, i32 %113, i64 %114)
  br label %119

115:                                              ; preds = %105, %101
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %117 = load i64, i64* @SERVICE_SUCCESS, align 8
  %118 = call i32 @service_enter_dead(%struct.TYPE_12__* %116, i64 %117, i32 1)
  br label %119

119:                                              ; preds = %115, %111
  br label %120

120:                                              ; preds = %119, %97
  br label %121

121:                                              ; preds = %120, %86
  br label %122

122:                                              ; preds = %121, %70
  br label %142

123:                                              ; preds = %69, %45
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %125 = call i32 @UNIT(%struct.TYPE_12__* %124)
  %126 = load i32, i32* %7, align 4
  %127 = call i32 @log_unit_warning_errno(i32 %125, i32 %126, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %128 = load i32, i32* %5, align 4
  %129 = load i32, i32* @SERVICE_STOP_WATCHDOG, align 4
  %130 = load i32, i32* @SERVICE_STOP_SIGTERM, align 4
  %131 = load i32, i32* @SERVICE_STOP_SIGKILL, align 4
  %132 = call i64 (i32, i32, i32, ...) @IN_SET(i32 %128, i32 %129, i32 %130, i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %123
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %136 = load i64, i64* @SERVICE_FAILURE_RESOURCES, align 8
  %137 = call i32 @service_enter_stop_post(%struct.TYPE_12__* %135, i64 %136)
  br label %142

138:                                              ; preds = %123
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %140 = load i64, i64* @SERVICE_FAILURE_RESOURCES, align 8
  %141 = call i32 @service_enter_dead(%struct.TYPE_12__* %139, i64 %140, i32 1)
  br label %142

142:                                              ; preds = %122, %138, %134
  ret void
}

declare dso_local i32 @assert(%struct.TYPE_12__*) #1

declare dso_local i32 @unit_watch_all_pids(i32) #1

declare dso_local i32 @UNIT(%struct.TYPE_12__*) #1

declare dso_local i32 @unit_enqueue_rewatch_pids(i32) #1

declare dso_local i32 @unit_kill_context(i32, %struct.TYPE_13__*, i32, i32, i32, i32) #1

declare dso_local i32 @state_to_kill_operation(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @service_arm_timer(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @usec_add(i32, i32) #1

declare dso_local i32 @now(i32) #1

declare dso_local i32 @service_timeout_abort_usec(%struct.TYPE_12__*) #1

declare dso_local i32 @service_set_state(%struct.TYPE_12__*, i32) #1

declare dso_local i64 @IN_SET(i32, i32, i32, ...) #1

declare dso_local i32 @service_enter_stop_post(%struct.TYPE_12__*, i64) #1

declare dso_local i32 @service_enter_dead(%struct.TYPE_12__*, i64, i32) #1

declare dso_local i32 @log_unit_warning_errno(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
