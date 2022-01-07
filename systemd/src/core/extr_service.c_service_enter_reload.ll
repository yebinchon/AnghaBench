; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_service.c_service_enter_reload.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_service.c_service_enter_reload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, i32, i32, i64, i64* }

@SERVICE_SUCCESS = common dso_local global i32 0, align 4
@SERVICE_EXEC_RELOAD = common dso_local global i64 0, align 8
@EXEC_APPLY_SANDBOXING = common dso_local global i32 0, align 4
@EXEC_APPLY_CHROOT = common dso_local global i32 0, align 4
@EXEC_IS_CONTROL = common dso_local global i32 0, align 4
@EXEC_CONTROL_CGROUP = common dso_local global i32 0, align 4
@SERVICE_RELOAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Failed to run 'reload' task: %m\00", align 1
@SERVICE_FAILURE_RESOURCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*)* @service_enter_reload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @service_enter_reload(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %4 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %5 = call i32 @assert(%struct.TYPE_9__* %4)
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %7 = call i32 @service_unwatch_control_pid(%struct.TYPE_9__* %6)
  %8 = load i32, i32* @SERVICE_SUCCESS, align 4
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 1
  store i32 %8, i32* %10, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 5
  %13 = load i64*, i64** %12, align 8
  %14 = load i64, i64* @SERVICE_EXEC_RELOAD, align 8
  %15 = getelementptr inbounds i64, i64* %13, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 4
  store i64 %16, i64* %18, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %51

23:                                               ; preds = %1
  %24 = load i64, i64* @SERVICE_EXEC_RELOAD, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 4
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @EXEC_APPLY_SANDBOXING, align 4
  %35 = load i32, i32* @EXEC_APPLY_CHROOT, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @EXEC_IS_CONTROL, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @EXEC_CONTROL_CGROUP, align 4
  %40 = or i32 %38, %39
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 2
  %43 = call i32 @service_spawn(%struct.TYPE_9__* %27, i64 %30, i32 %33, i32 %40, i32* %42)
  store i32 %43, i32* %3, align 4
  %44 = load i32, i32* %3, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %23
  br label %56

47:                                               ; preds = %23
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %49 = load i32, i32* @SERVICE_RELOAD, align 4
  %50 = call i32 @service_set_state(%struct.TYPE_9__* %48, i32 %49)
  br label %55

51:                                               ; preds = %1
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %53 = load i32, i32* @SERVICE_SUCCESS, align 4
  %54 = call i32 @service_enter_running(%struct.TYPE_9__* %52, i32 %53)
  br label %55

55:                                               ; preds = %51, %47
  br label %67

56:                                               ; preds = %46
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %58 = call i32 @UNIT(%struct.TYPE_9__* %57)
  %59 = load i32, i32* %3, align 4
  %60 = call i32 @log_unit_warning_errno(i32 %58, i32 %59, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %61 = load i32, i32* @SERVICE_FAILURE_RESOURCES, align 4
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 8
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %65 = load i32, i32* @SERVICE_SUCCESS, align 4
  %66 = call i32 @service_enter_running(%struct.TYPE_9__* %64, i32 %65)
  br label %67

67:                                               ; preds = %56, %55
  ret void
}

declare dso_local i32 @assert(%struct.TYPE_9__*) #1

declare dso_local i32 @service_unwatch_control_pid(%struct.TYPE_9__*) #1

declare dso_local i32 @service_spawn(%struct.TYPE_9__*, i64, i32, i32, i32*) #1

declare dso_local i32 @service_set_state(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @service_enter_running(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @log_unit_warning_errno(i32, i32, i8*) #1

declare dso_local i32 @UNIT(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
