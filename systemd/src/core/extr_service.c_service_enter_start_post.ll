; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_service.c_service_enter_start_post.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_service.c_service_enter_start_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32, i32, i64, i64* }

@SERVICE_EXEC_START_POST = common dso_local global i64 0, align 8
@EXEC_APPLY_SANDBOXING = common dso_local global i32 0, align 4
@EXEC_APPLY_CHROOT = common dso_local global i32 0, align 4
@EXEC_IS_CONTROL = common dso_local global i32 0, align 4
@EXEC_CONTROL_CGROUP = common dso_local global i32 0, align 4
@SERVICE_START_POST = common dso_local global i32 0, align 4
@SERVICE_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Failed to run 'start-post' task: %m\00", align 1
@SERVICE_FAILURE_RESOURCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*)* @service_enter_start_post to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @service_enter_start_post(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %4 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %5 = call i32 @assert(%struct.TYPE_11__* %4)
  %6 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %7 = call i32 @service_unwatch_control_pid(%struct.TYPE_11__* %6)
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %9 = call i32 @service_reset_watchdog(%struct.TYPE_11__* %8)
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 4
  %12 = load i64*, i64** %11, align 8
  %13 = load i64, i64* @SERVICE_EXEC_START_POST, align 8
  %14 = getelementptr inbounds i64, i64* %12, i64 %13
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 3
  store i64 %15, i64* %17, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %50

22:                                               ; preds = %1
  %23 = load i64, i64* @SERVICE_EXEC_START_POST, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @EXEC_APPLY_SANDBOXING, align 4
  %34 = load i32, i32* @EXEC_APPLY_CHROOT, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @EXEC_IS_CONTROL, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @EXEC_CONTROL_CGROUP, align 4
  %39 = or i32 %37, %38
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 1
  %42 = call i32 @service_spawn(%struct.TYPE_11__* %26, i64 %29, i32 %32, i32 %39, i32* %41)
  store i32 %42, i32* %3, align 4
  %43 = load i32, i32* %3, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %22
  br label %55

46:                                               ; preds = %22
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %48 = load i32, i32* @SERVICE_START_POST, align 4
  %49 = call i32 @service_set_state(%struct.TYPE_11__* %47, i32 %48)
  br label %54

50:                                               ; preds = %1
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %52 = load i32, i32* @SERVICE_SUCCESS, align 4
  %53 = call i32 @service_enter_running(%struct.TYPE_11__* %51, i32 %52)
  br label %54

54:                                               ; preds = %50, %46
  br label %63

55:                                               ; preds = %45
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %57 = call i32 @UNIT(%struct.TYPE_11__* %56)
  %58 = load i32, i32* %3, align 4
  %59 = call i32 @log_unit_warning_errno(i32 %57, i32 %58, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %61 = load i32, i32* @SERVICE_FAILURE_RESOURCES, align 4
  %62 = call i32 @service_enter_stop(%struct.TYPE_11__* %60, i32 %61)
  br label %63

63:                                               ; preds = %55, %54
  ret void
}

declare dso_local i32 @assert(%struct.TYPE_11__*) #1

declare dso_local i32 @service_unwatch_control_pid(%struct.TYPE_11__*) #1

declare dso_local i32 @service_reset_watchdog(%struct.TYPE_11__*) #1

declare dso_local i32 @service_spawn(%struct.TYPE_11__*, i64, i32, i32, i32*) #1

declare dso_local i32 @service_set_state(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @service_enter_running(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @log_unit_warning_errno(i32, i32, i8*) #1

declare dso_local i32 @UNIT(%struct.TYPE_11__*) #1

declare dso_local i32 @service_enter_stop(%struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
