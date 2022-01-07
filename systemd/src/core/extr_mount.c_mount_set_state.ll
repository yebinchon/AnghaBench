; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_mount.c_mount_set_state.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_mount.c_mount_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i32, i32*, i32 }

@_MOUNT_EXEC_COMMAND_INVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Changed %s -> %s\00", align 1
@state_translation_table = common dso_local global i32* null, align 8
@MOUNT_SUCCESS = common dso_local global i64 0, align 8
@UNIT_NOTIFY_RELOAD_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i64)* @mount_set_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mount_set_state(%struct.TYPE_6__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %7 = call i32 @assert(%struct.TYPE_6__* %6)
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* %4, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %15 = call i32 @UNIT(%struct.TYPE_6__* %14)
  %16 = call i32 @bus_unit_send_pending_change_signal(i32 %15, i32 0)
  br label %17

17:                                               ; preds = %13, %2
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %5, align 8
  %21 = load i64, i64* %4, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = load i64, i64* %4, align 8
  %25 = call i32 @MOUNT_STATE_WITH_PROCESS(i64 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %41, label %27

27:                                               ; preds = %17
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @sd_event_source_unref(i32 %30)
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %35 = call i32 @mount_unwatch_control_pid(%struct.TYPE_6__* %34)
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 3
  store i32* null, i32** %37, align 8
  %38 = load i32, i32* @_MOUNT_EXEC_COMMAND_INVALID, align 4
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  br label %41

41:                                               ; preds = %27, %17
  %42 = load i64, i64* %4, align 8
  %43 = load i64, i64* %5, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %41
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %47 = call i32 @UNIT(%struct.TYPE_6__* %46)
  %48 = load i64, i64* %5, align 8
  %49 = call i32 @mount_state_to_string(i64 %48)
  %50 = load i64, i64* %4, align 8
  %51 = call i32 @mount_state_to_string(i64 %50)
  %52 = call i32 @log_unit_debug(i32 %47, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %51)
  br label %53

53:                                               ; preds = %45, %41
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %55 = call i32 @UNIT(%struct.TYPE_6__* %54)
  %56 = load i32*, i32** @state_translation_table, align 8
  %57 = load i64, i64* %5, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** @state_translation_table, align 8
  %61 = load i64, i64* %4, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @MOUNT_SUCCESS, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %53
  br label %72

70:                                               ; preds = %53
  %71 = load i32, i32* @UNIT_NOTIFY_RELOAD_FAILURE, align 4
  br label %72

72:                                               ; preds = %70, %69
  %73 = phi i32 [ 0, %69 ], [ %71, %70 ]
  %74 = call i32 @unit_notify(i32 %55, i32 %59, i32 %63, i32 %73)
  ret void
}

declare dso_local i32 @assert(%struct.TYPE_6__*) #1

declare dso_local i32 @bus_unit_send_pending_change_signal(i32, i32) #1

declare dso_local i32 @UNIT(%struct.TYPE_6__*) #1

declare dso_local i32 @MOUNT_STATE_WITH_PROCESS(i64) #1

declare dso_local i32 @sd_event_source_unref(i32) #1

declare dso_local i32 @mount_unwatch_control_pid(%struct.TYPE_6__*) #1

declare dso_local i32 @log_unit_debug(i32, i8*, i32, i32) #1

declare dso_local i32 @mount_state_to_string(i64) #1

declare dso_local i32 @unit_notify(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
