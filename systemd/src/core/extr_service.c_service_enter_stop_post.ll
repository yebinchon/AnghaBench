; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_service.c_service_enter_stop_post.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_service.c_service_enter_stop_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, i32, i32, i64, i64* }

@SERVICE_SUCCESS = common dso_local global i64 0, align 8
@SERVICE_EXEC_STOP_POST = common dso_local global i64 0, align 8
@EXEC_APPLY_SANDBOXING = common dso_local global i32 0, align 4
@EXEC_APPLY_CHROOT = common dso_local global i32 0, align 4
@EXEC_APPLY_TTY_STDIN = common dso_local global i32 0, align 4
@EXEC_IS_CONTROL = common dso_local global i32 0, align 4
@EXEC_SETENV_RESULT = common dso_local global i32 0, align 4
@EXEC_CONTROL_CGROUP = common dso_local global i32 0, align 4
@SERVICE_STOP_POST = common dso_local global i32 0, align 4
@SERVICE_FINAL_SIGTERM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed to run 'stop-post' task: %m\00", align 1
@SERVICE_FAILURE_RESOURCES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i64)* @service_enter_stop_post to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @service_enter_stop_post(%struct.TYPE_9__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %7 = call i32 @assert(%struct.TYPE_9__* %6)
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @SERVICE_SUCCESS, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i64, i64* %4, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  store i64 %14, i64* %16, align 8
  br label %17

17:                                               ; preds = %13, %2
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %19 = call i32 @service_unwatch_control_pid(%struct.TYPE_9__* %18)
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %21 = call i32 @UNIT(%struct.TYPE_9__* %20)
  %22 = call i32 @unit_enqueue_rewatch_pids(i32 %21)
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 5
  %25 = load i64*, i64** %24, align 8
  %26 = load i64, i64* @SERVICE_EXEC_STOP_POST, align 8
  %27 = getelementptr inbounds i64, i64* %25, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 4
  store i64 %28, i64* %30, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 4
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %67

35:                                               ; preds = %17
  %36 = load i64, i64* @SERVICE_EXEC_STOP_POST, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 1
  store i64 %36, i64* %38, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 4
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @EXEC_APPLY_SANDBOXING, align 4
  %47 = load i32, i32* @EXEC_APPLY_CHROOT, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @EXEC_APPLY_TTY_STDIN, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @EXEC_IS_CONTROL, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @EXEC_SETENV_RESULT, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @EXEC_CONTROL_CGROUP, align 4
  %56 = or i32 %54, %55
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 2
  %59 = call i32 @service_spawn(%struct.TYPE_9__* %39, i64 %42, i32 %45, i32 %56, i32* %58)
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %35
  br label %73

63:                                               ; preds = %35
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %65 = load i32, i32* @SERVICE_STOP_POST, align 4
  %66 = call i32 @service_set_state(%struct.TYPE_9__* %64, i32 %65)
  br label %72

67:                                               ; preds = %17
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %69 = load i32, i32* @SERVICE_FINAL_SIGTERM, align 4
  %70 = load i64, i64* @SERVICE_SUCCESS, align 8
  %71 = call i32 @service_enter_signal(%struct.TYPE_9__* %68, i32 %69, i64 %70)
  br label %72

72:                                               ; preds = %67, %63
  br label %82

73:                                               ; preds = %62
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %75 = call i32 @UNIT(%struct.TYPE_9__* %74)
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @log_unit_warning_errno(i32 %75, i32 %76, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %79 = load i32, i32* @SERVICE_FINAL_SIGTERM, align 4
  %80 = load i64, i64* @SERVICE_FAILURE_RESOURCES, align 8
  %81 = call i32 @service_enter_signal(%struct.TYPE_9__* %78, i32 %79, i64 %80)
  br label %82

82:                                               ; preds = %73, %72
  ret void
}

declare dso_local i32 @assert(%struct.TYPE_9__*) #1

declare dso_local i32 @service_unwatch_control_pid(%struct.TYPE_9__*) #1

declare dso_local i32 @unit_enqueue_rewatch_pids(i32) #1

declare dso_local i32 @UNIT(%struct.TYPE_9__*) #1

declare dso_local i32 @service_spawn(%struct.TYPE_9__*, i64, i32, i32, i32*) #1

declare dso_local i32 @service_set_state(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @service_enter_signal(%struct.TYPE_9__*, i32, i64) #1

declare dso_local i32 @log_unit_warning_errno(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
