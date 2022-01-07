; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_service.c_service_enter_running.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_service.c_service_enter_running.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i64, i64, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }

@SERVICE_SUCCESS = common dso_local global i64 0, align 8
@SERVICE_STOP_SIGTERM = common dso_local global i32 0, align 4
@NOTIFY_RELOADING = common dso_local global i64 0, align 8
@NOTIFY_STOPPING = common dso_local global i64 0, align 8
@SERVICE_RUNNING = common dso_local global i32 0, align 4
@SERVICE_EXITED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*, i64)* @service_enter_running to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @service_enter_running(%struct.TYPE_17__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca i64, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %6 = call i32 @assert(%struct.TYPE_17__* %5)
  %7 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @SERVICE_SUCCESS, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i64, i64* %4, align 8
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  br label %16

16:                                               ; preds = %12, %2
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %18 = call i32 @service_unwatch_control_pid(%struct.TYPE_17__* %17)
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @SERVICE_SUCCESS, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %16
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %26 = load i32, i32* @SERVICE_STOP_SIGTERM, align 4
  %27 = load i64, i64* %4, align 8
  %28 = call i32 @service_enter_signal(%struct.TYPE_17__* %25, i32 %26, i64 %27)
  br label %83

29:                                               ; preds = %16
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %31 = call i64 @service_good(%struct.TYPE_17__* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %68

33:                                               ; preds = %29
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @NOTIFY_RELOADING, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %41 = call i32 @service_enter_reload_by_notify(%struct.TYPE_17__* %40)
  br label %67

42:                                               ; preds = %33
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @NOTIFY_STOPPING, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %50 = call i32 @service_enter_stop_by_notify(%struct.TYPE_17__* %49)
  br label %66

51:                                               ; preds = %42
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %53 = load i32, i32* @SERVICE_RUNNING, align 4
  %54 = call i32 @service_set_state(%struct.TYPE_17__* %52, i32 %53)
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %57 = call %struct.TYPE_15__* @UNIT(%struct.TYPE_17__* %56)
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @usec_add(i32 %60, i32 %63)
  %65 = call i32 @service_arm_timer(%struct.TYPE_17__* %55, i32 %64)
  br label %66

66:                                               ; preds = %51, %48
  br label %67

67:                                               ; preds = %66, %39
  br label %82

68:                                               ; preds = %29
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %75 = load i32, i32* @SERVICE_EXITED, align 4
  %76 = call i32 @service_set_state(%struct.TYPE_17__* %74, i32 %75)
  br label %81

77:                                               ; preds = %68
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %79 = load i64, i64* @SERVICE_SUCCESS, align 8
  %80 = call i32 @service_enter_stop(%struct.TYPE_17__* %78, i64 %79)
  br label %81

81:                                               ; preds = %77, %73
  br label %82

82:                                               ; preds = %81, %67
  br label %83

83:                                               ; preds = %82, %24
  ret void
}

declare dso_local i32 @assert(%struct.TYPE_17__*) #1

declare dso_local i32 @service_unwatch_control_pid(%struct.TYPE_17__*) #1

declare dso_local i32 @service_enter_signal(%struct.TYPE_17__*, i32, i64) #1

declare dso_local i64 @service_good(%struct.TYPE_17__*) #1

declare dso_local i32 @service_enter_reload_by_notify(%struct.TYPE_17__*) #1

declare dso_local i32 @service_enter_stop_by_notify(%struct.TYPE_17__*) #1

declare dso_local i32 @service_set_state(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @service_arm_timer(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @usec_add(i32, i32) #1

declare dso_local %struct.TYPE_15__* @UNIT(%struct.TYPE_17__*) #1

declare dso_local i32 @service_enter_stop(%struct.TYPE_17__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
