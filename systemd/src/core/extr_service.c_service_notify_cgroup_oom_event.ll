; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_service.c_service_notify_cgroup_oom_event.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_service.c_service_notify_cgroup_oom_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32 }

@.str = private unnamed_addr constant [55 x i8] c"Process of control group was killed by the OOM killer.\00", align 1
@OOM_CONTINUE = common dso_local global i64 0, align 8
@OOM_STOP = common dso_local global i64 0, align 8
@SERVICE_FAILURE_OOM_KILL = common dso_local global i32 0, align 4
@OOM_KILL = common dso_local global i64 0, align 8
@SERVICE_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @service_notify_cgroup_oom_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @service_notify_cgroup_oom_event(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = call %struct.TYPE_5__* @SERVICE(i32* %4)
  store %struct.TYPE_5__* %5, %struct.TYPE_5__** %3, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = call i32 @log_unit_debug(i32* %6, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @OOM_CONTINUE, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %82

14:                                               ; preds = %1
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %81 [
    i32 140, label %18
    i32 133, label %18
    i32 135, label %18
    i32 134, label %18
    i32 132, label %18
    i32 139, label %40
    i32 136, label %40
    i32 128, label %62
    i32 129, label %62
    i32 130, label %66
    i32 138, label %66
    i32 131, label %77
    i32 137, label %77
  ]

18:                                               ; preds = %14, %14, %14, %14, %14
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @OOM_STOP, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %26 = load i32, i32* @SERVICE_FAILURE_OOM_KILL, align 4
  %27 = call i32 @service_enter_signal(%struct.TYPE_5__* %25, i32 129, i32 %26)
  br label %39

28:                                               ; preds = %18
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @OOM_KILL, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %36 = load i32, i32* @SERVICE_FAILURE_OOM_KILL, align 4
  %37 = call i32 @service_enter_signal(%struct.TYPE_5__* %35, i32 130, i32 %36)
  br label %38

38:                                               ; preds = %34, %28
  br label %39

39:                                               ; preds = %38, %24
  br label %82

40:                                               ; preds = %14, %14
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @OOM_STOP, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %48 = load i32, i32* @SERVICE_FAILURE_OOM_KILL, align 4
  %49 = call i32 @service_enter_stop(%struct.TYPE_5__* %47, i32 %48)
  br label %61

50:                                               ; preds = %40
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @OOM_KILL, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %58 = load i32, i32* @SERVICE_FAILURE_OOM_KILL, align 4
  %59 = call i32 @service_enter_signal(%struct.TYPE_5__* %57, i32 130, i32 %58)
  br label %60

60:                                               ; preds = %56, %50
  br label %61

61:                                               ; preds = %60, %46
  br label %82

62:                                               ; preds = %14, %14
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %64 = load i32, i32* @SERVICE_FAILURE_OOM_KILL, align 4
  %65 = call i32 @service_enter_signal(%struct.TYPE_5__* %63, i32 130, i32 %64)
  br label %82

66:                                               ; preds = %14, %14
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @SERVICE_SUCCESS, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %66
  %73 = load i32, i32* @SERVICE_FAILURE_OOM_KILL, align 4
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 4
  br label %76

76:                                               ; preds = %72, %66
  br label %82

77:                                               ; preds = %14, %14
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %79 = load i32, i32* @SERVICE_FAILURE_OOM_KILL, align 4
  %80 = call i32 @service_enter_signal(%struct.TYPE_5__* %78, i32 138, i32 %79)
  br label %82

81:                                               ; preds = %14
  br label %82

82:                                               ; preds = %13, %81, %77, %76, %62, %61, %39
  ret void
}

declare dso_local %struct.TYPE_5__* @SERVICE(i32*) #1

declare dso_local i32 @log_unit_debug(i32*, i8*) #1

declare dso_local i32 @service_enter_signal(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @service_enter_stop(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
