; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_service.c_service_enter_start_pre.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_service.c_service_enter_start_pre.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32, i32, i64, i64* }

@SERVICE_EXEC_START_PRE = common dso_local global i64 0, align 8
@EXEC_APPLY_SANDBOXING = common dso_local global i32 0, align 4
@EXEC_APPLY_CHROOT = common dso_local global i32 0, align 4
@EXEC_IS_CONTROL = common dso_local global i32 0, align 4
@EXEC_APPLY_TTY_STDIN = common dso_local global i32 0, align 4
@SERVICE_START_PRE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed to run 'start-pre' task: %m\00", align 1
@SERVICE_FAILURE_RESOURCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*)* @service_enter_start_pre to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @service_enter_start_pre(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %4 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %5 = call i32 @assert(%struct.TYPE_11__* %4)
  %6 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %7 = call i32 @service_unwatch_control_pid(%struct.TYPE_11__* %6)
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 4
  %10 = load i64*, i64** %9, align 8
  %11 = load i64, i64* @SERVICE_EXEC_START_PRE, align 8
  %12 = getelementptr inbounds i64, i64* %10, i64 %11
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 3
  store i64 %13, i64* %15, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %54

20:                                               ; preds = %1
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %22 = call i32 @service_adverse_to_leftover_processes(%struct.TYPE_11__* %21)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %58

26:                                               ; preds = %20
  %27 = load i64, i64* @SERVICE_EXEC_START_PRE, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @EXEC_APPLY_SANDBOXING, align 4
  %38 = load i32, i32* @EXEC_APPLY_CHROOT, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @EXEC_IS_CONTROL, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @EXEC_APPLY_TTY_STDIN, align 4
  %43 = or i32 %41, %42
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 1
  %46 = call i32 @service_spawn(%struct.TYPE_11__* %30, i64 %33, i32 %36, i32 %43, i32* %45)
  store i32 %46, i32* %3, align 4
  %47 = load i32, i32* %3, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %26
  br label %58

50:                                               ; preds = %26
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %52 = load i32, i32* @SERVICE_START_PRE, align 4
  %53 = call i32 @service_set_state(%struct.TYPE_11__* %51, i32 %52)
  br label %57

54:                                               ; preds = %1
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %56 = call i32 @service_enter_start(%struct.TYPE_11__* %55)
  br label %57

57:                                               ; preds = %54, %50
  br label %66

58:                                               ; preds = %49, %25
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %60 = call i32 @UNIT(%struct.TYPE_11__* %59)
  %61 = load i32, i32* %3, align 4
  %62 = call i32 @log_unit_warning_errno(i32 %60, i32 %61, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %64 = load i32, i32* @SERVICE_FAILURE_RESOURCES, align 4
  %65 = call i32 @service_enter_dead(%struct.TYPE_11__* %63, i32 %64, i32 1)
  br label %66

66:                                               ; preds = %58, %57
  ret void
}

declare dso_local i32 @assert(%struct.TYPE_11__*) #1

declare dso_local i32 @service_unwatch_control_pid(%struct.TYPE_11__*) #1

declare dso_local i32 @service_adverse_to_leftover_processes(%struct.TYPE_11__*) #1

declare dso_local i32 @service_spawn(%struct.TYPE_11__*, i64, i32, i32, i32*) #1

declare dso_local i32 @service_set_state(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @service_enter_start(%struct.TYPE_11__*) #1

declare dso_local i32 @log_unit_warning_errno(i32, i32, i8*) #1

declare dso_local i32 @UNIT(%struct.TYPE_11__*) #1

declare dso_local i32 @service_enter_dead(%struct.TYPE_11__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
