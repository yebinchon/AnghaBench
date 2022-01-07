; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_scope.c_scope_enter_signal.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_scope.c_scope_enter_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, i64, i32 }

@SCOPE_SUCCESS = common dso_local global i64 0, align 8
@SCOPE_STOP_SIGTERM = common dso_local global i32 0, align 4
@KILL_KILL = common dso_local global i32 0, align 4
@KILL_TERMINATE_AND_LOG = common dso_local global i32 0, align 4
@KILL_TERMINATE = common dso_local global i32 0, align 4
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@SCOPE_STOP_SIGKILL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to kill processes: %m\00", align 1
@SCOPE_FAILURE_RESOURCES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i32, i64)* @scope_enter_signal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scope_enter_signal(%struct.TYPE_9__* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %10 = call i32 @assert(%struct.TYPE_9__* %9)
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SCOPE_SUCCESS, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load i64, i64* %6, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  br label %20

20:                                               ; preds = %16, %3
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %22 = call i32 @UNIT(%struct.TYPE_9__* %21)
  %23 = call i32 @unit_watch_all_pids(i32 %22)
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %25 = call i32 @UNIT(%struct.TYPE_9__* %24)
  %26 = call i32 @unit_enqueue_rewatch_pids(i32 %25)
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @SCOPE_STOP_SIGTERM, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %20
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %32 = call i64 @bus_scope_send_request_stop(%struct.TYPE_9__* %31)
  %33 = icmp sgt i64 %32, 0
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %30, %20
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i32 1, i32* %8, align 4
  br label %67

39:                                               ; preds = %35
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %41 = call i32 @UNIT(%struct.TYPE_9__* %40)
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 3
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @SCOPE_STOP_SIGTERM, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = load i32, i32* @KILL_KILL, align 4
  br label %60

49:                                               ; preds = %39
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i32, i32* @KILL_TERMINATE_AND_LOG, align 4
  br label %58

56:                                               ; preds = %49
  %57 = load i32, i32* @KILL_TERMINATE, align 4
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi i32 [ %55, %54 ], [ %57, %56 ]
  br label %60

60:                                               ; preds = %58, %47
  %61 = phi i32 [ %48, %47 ], [ %59, %58 ]
  %62 = call i32 @unit_kill_context(i32 %41, i32* %43, i32 %61, i32 -1, i32 -1, i32 0)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %100

66:                                               ; preds = %60
  br label %67

67:                                               ; preds = %66, %38
  %68 = load i32, i32* %8, align 4
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %86

70:                                               ; preds = %67
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %72 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %73 = call i32 @now(i32 %72)
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @usec_add(i32 %73, i32 %76)
  %78 = call i32 @scope_arm_timer(%struct.TYPE_9__* %71, i32 %77)
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %70
  br label %100

82:                                               ; preds = %70
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %84 = load i32, i32* %5, align 4
  %85 = call i32 @scope_set_state(%struct.TYPE_9__* %83, i32 %84)
  br label %99

86:                                               ; preds = %67
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* @SCOPE_STOP_SIGTERM, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %86
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %92 = load i32, i32* @SCOPE_STOP_SIGKILL, align 4
  %93 = load i64, i64* @SCOPE_SUCCESS, align 8
  call void @scope_enter_signal(%struct.TYPE_9__* %91, i32 %92, i64 %93)
  br label %98

94:                                               ; preds = %86
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %96 = load i64, i64* @SCOPE_SUCCESS, align 8
  %97 = call i32 @scope_enter_dead(%struct.TYPE_9__* %95, i64 %96)
  br label %98

98:                                               ; preds = %94, %90
  br label %99

99:                                               ; preds = %98, %82
  br label %108

100:                                              ; preds = %81, %65
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %102 = call i32 @UNIT(%struct.TYPE_9__* %101)
  %103 = load i32, i32* %8, align 4
  %104 = call i32 @log_unit_warning_errno(i32 %102, i32 %103, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %106 = load i64, i64* @SCOPE_FAILURE_RESOURCES, align 8
  %107 = call i32 @scope_enter_dead(%struct.TYPE_9__* %105, i64 %106)
  br label %108

108:                                              ; preds = %100, %99
  ret void
}

declare dso_local i32 @assert(%struct.TYPE_9__*) #1

declare dso_local i32 @unit_watch_all_pids(i32) #1

declare dso_local i32 @UNIT(%struct.TYPE_9__*) #1

declare dso_local i32 @unit_enqueue_rewatch_pids(i32) #1

declare dso_local i64 @bus_scope_send_request_stop(%struct.TYPE_9__*) #1

declare dso_local i32 @unit_kill_context(i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @scope_arm_timer(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @usec_add(i32, i32) #1

declare dso_local i32 @now(i32) #1

declare dso_local i32 @scope_set_state(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @scope_enter_dead(%struct.TYPE_9__*, i64) #1

declare dso_local i32 @log_unit_warning_errno(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
