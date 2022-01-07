; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_service.c_service_notify_cgroup_empty_event.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_service.c_service_notify_cgroup_empty_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"Control group is empty.\00", align 1
@SERVICE_NOTIFY = common dso_local global i32 0, align 4
@SERVICE_FAILURE_PROTOCOL = common dso_local global i32 0, align 4
@_fallthrough_ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Daemon never wrote its PID file. Failing.\00", align 1
@SERVICE_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @service_notify_cgroup_empty_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @service_notify_cgroup_empty_event(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = call %struct.TYPE_10__* @SERVICE(i32* %4)
  store %struct.TYPE_10__* %5, %struct.TYPE_10__** %3, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = call i32 @assert(i32* %6)
  %8 = load i32*, i32** %2, align 8
  %9 = call i32 @log_unit_debug(i32* %8, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %95 [
    i32 133, label %13
    i32 132, label %33
    i32 134, label %65
    i32 128, label %69
    i32 129, label %69
    i32 130, label %69
    i32 131, label %82
    i32 135, label %82
    i32 136, label %82
  ]

13:                                               ; preds = %1
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @SERVICE_NOTIFY, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %31

19:                                               ; preds = %13
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %21 = call i32 @main_pid_good(%struct.TYPE_10__* %20)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %19
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %25 = call i32 @control_pid_good(%struct.TYPE_10__* %24)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %29 = load i32, i32* @SERVICE_FAILURE_PROTOCOL, align 4
  %30 = call i32 @service_enter_stop_post(%struct.TYPE_10__* %28, i32 %29)
  br label %96

31:                                               ; preds = %23, %19, %13
  %32 = load i32, i32* @_fallthrough_, align 4
  br label %33

33:                                               ; preds = %1, %31
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %64

38:                                               ; preds = %33
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %40 = call i32 @main_pid_good(%struct.TYPE_10__* %39)
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %64

42:                                               ; preds = %38
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %44 = call i32 @control_pid_good(%struct.TYPE_10__* %43)
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %64

46:                                               ; preds = %42
  %47 = load i32*, i32** %2, align 8
  %48 = call i32 @log_unit_warning(i32* %47, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %50 = call i32 @service_unwatch_pid_file(%struct.TYPE_10__* %49)
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 133
  br i1 %54, label %55, label %59

55:                                               ; preds = %46
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %57 = load i32, i32* @SERVICE_FAILURE_PROTOCOL, align 4
  %58 = call i32 @service_enter_stop_post(%struct.TYPE_10__* %56, i32 %57)
  br label %63

59:                                               ; preds = %46
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %61 = load i32, i32* @SERVICE_FAILURE_PROTOCOL, align 4
  %62 = call i32 @service_enter_stop(%struct.TYPE_10__* %60, i32 %61)
  br label %63

63:                                               ; preds = %59, %55
  br label %64

64:                                               ; preds = %63, %42, %38, %33
  br label %96

65:                                               ; preds = %1
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %67 = load i32, i32* @SERVICE_SUCCESS, align 4
  %68 = call i32 @service_enter_running(%struct.TYPE_10__* %66, i32 %67)
  br label %96

69:                                               ; preds = %1, %1, %1
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %71 = call i32 @main_pid_good(%struct.TYPE_10__* %70)
  %72 = icmp sle i32 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %69
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %75 = call i32 @control_pid_good(%struct.TYPE_10__* %74)
  %76 = icmp sle i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %73
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %79 = load i32, i32* @SERVICE_SUCCESS, align 4
  %80 = call i32 @service_enter_stop_post(%struct.TYPE_10__* %78, i32 %79)
  br label %81

81:                                               ; preds = %77, %73, %69
  br label %96

82:                                               ; preds = %1, %1, %1
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %84 = call i32 @main_pid_good(%struct.TYPE_10__* %83)
  %85 = icmp sle i32 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %82
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %88 = call i32 @control_pid_good(%struct.TYPE_10__* %87)
  %89 = icmp sle i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %86
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %92 = load i32, i32* @SERVICE_SUCCESS, align 4
  %93 = call i32 @service_enter_dead(%struct.TYPE_10__* %91, i32 %92, i32 1)
  br label %94

94:                                               ; preds = %90, %86, %82
  br label %96

95:                                               ; preds = %1
  br label %96

96:                                               ; preds = %95, %94, %81, %65, %64, %27
  ret void
}

declare dso_local %struct.TYPE_10__* @SERVICE(i32*) #1

declare dso_local i32 @assert(i32*) #1

declare dso_local i32 @log_unit_debug(i32*, i8*) #1

declare dso_local i32 @main_pid_good(%struct.TYPE_10__*) #1

declare dso_local i32 @control_pid_good(%struct.TYPE_10__*) #1

declare dso_local i32 @service_enter_stop_post(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @log_unit_warning(i32*, i8*) #1

declare dso_local i32 @service_unwatch_pid_file(%struct.TYPE_10__*) #1

declare dso_local i32 @service_enter_stop(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @service_enter_running(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @service_enter_dead(%struct.TYPE_10__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
