; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_mount.c_mount_enter_signal.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_mount.c_mount_enter_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, %struct.TYPE_11__, i32, i32 }
%struct.TYPE_11__ = type { i64 }

@MOUNT_SUCCESS = common dso_local global i64 0, align 8
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@MOUNT_REMOUNTING_SIGTERM = common dso_local global i32 0, align 4
@MOUNT_REMOUNTING_SIGKILL = common dso_local global i32 0, align 4
@MOUNT_UNMOUNTING_SIGTERM = common dso_local global i32 0, align 4
@MOUNT_UNMOUNTING_SIGKILL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to kill processes: %m\00", align 1
@MOUNT_FAILURE_RESOURCES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i32, i64)* @mount_enter_signal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mount_enter_signal(%struct.TYPE_10__* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %9 = call i32 @assert(%struct.TYPE_10__* %8)
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @MOUNT_SUCCESS, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load i64, i64* %6, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  br label %19

19:                                               ; preds = %15, %3
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %21 = call i32 @UNIT(%struct.TYPE_10__* %20)
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 1
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @state_to_kill_operation(i32 %24)
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @unit_kill_context(i32 %21, %struct.TYPE_11__* %23, i32 %25, i32 -1, i32 %28, i32 0)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %19
  br label %98

33:                                               ; preds = %19
  %34 = load i32, i32* %7, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %52

36:                                               ; preds = %33
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %38 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %39 = call i32 @now(i32 %38)
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @usec_add(i32 %39, i32 %42)
  %44 = call i32 @mount_arm_timer(%struct.TYPE_10__* %37, i32 %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %36
  br label %98

48:                                               ; preds = %36
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @mount_set_state(%struct.TYPE_10__* %49, i32 %50)
  br label %97

52:                                               ; preds = %33
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @MOUNT_REMOUNTING_SIGTERM, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %66

56:                                               ; preds = %52
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %56
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %64 = load i32, i32* @MOUNT_REMOUNTING_SIGKILL, align 4
  %65 = load i64, i64* @MOUNT_SUCCESS, align 8
  call void @mount_enter_signal(%struct.TYPE_10__* %63, i32 %64, i64 %65)
  br label %96

66:                                               ; preds = %56, %52
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @MOUNT_REMOUNTING_SIGTERM, align 4
  %69 = load i32, i32* @MOUNT_REMOUNTING_SIGKILL, align 4
  %70 = call i64 @IN_SET(i32 %67, i32 %68, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %66
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %74 = load i64, i64* @MOUNT_SUCCESS, align 8
  %75 = call i32 @mount_enter_mounted(%struct.TYPE_10__* %73, i64 %74)
  br label %95

76:                                               ; preds = %66
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* @MOUNT_UNMOUNTING_SIGTERM, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %90

80:                                               ; preds = %76
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %80
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %88 = load i32, i32* @MOUNT_UNMOUNTING_SIGKILL, align 4
  %89 = load i64, i64* @MOUNT_SUCCESS, align 8
  call void @mount_enter_signal(%struct.TYPE_10__* %87, i32 %88, i64 %89)
  br label %94

90:                                               ; preds = %80, %76
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %92 = load i64, i64* @MOUNT_SUCCESS, align 8
  %93 = call i32 @mount_enter_dead_or_mounted(%struct.TYPE_10__* %91, i64 %92)
  br label %94

94:                                               ; preds = %90, %86
  br label %95

95:                                               ; preds = %94, %72
  br label %96

96:                                               ; preds = %95, %62
  br label %97

97:                                               ; preds = %96, %48
  br label %106

98:                                               ; preds = %47, %32
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %100 = call i32 @UNIT(%struct.TYPE_10__* %99)
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @log_unit_warning_errno(i32 %100, i32 %101, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %104 = load i64, i64* @MOUNT_FAILURE_RESOURCES, align 8
  %105 = call i32 @mount_enter_dead_or_mounted(%struct.TYPE_10__* %103, i64 %104)
  br label %106

106:                                              ; preds = %98, %97
  ret void
}

declare dso_local i32 @assert(%struct.TYPE_10__*) #1

declare dso_local i32 @unit_kill_context(i32, %struct.TYPE_11__*, i32, i32, i32, i32) #1

declare dso_local i32 @UNIT(%struct.TYPE_10__*) #1

declare dso_local i32 @state_to_kill_operation(i32) #1

declare dso_local i32 @mount_arm_timer(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @usec_add(i32, i32) #1

declare dso_local i32 @now(i32) #1

declare dso_local i32 @mount_set_state(%struct.TYPE_10__*, i32) #1

declare dso_local i64 @IN_SET(i32, i32, i32) #1

declare dso_local i32 @mount_enter_mounted(%struct.TYPE_10__*, i64) #1

declare dso_local i32 @mount_enter_dead_or_mounted(%struct.TYPE_10__*, i64) #1

declare dso_local i32 @log_unit_warning_errno(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
