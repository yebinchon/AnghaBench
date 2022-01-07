; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_manager.c_manager_check_finished.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_manager.c_manager_check_finished.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i32*, i64, i32 }

@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@JOBS_IN_PROGRESS_WAIT_USEC = common dso_local global i64 0, align 8
@MANAGER_TIMESTAMP_FINISH = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @manager_check_finished(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %3 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %4 = call i32 @assert(%struct.TYPE_14__* %3)
  %5 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %6 = call i64 @MANAGER_IS_RELOADING(%struct.TYPE_14__* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %63

9:                                                ; preds = %1
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %11 = call i32 @MANAGER_IS_RUNNING(%struct.TYPE_14__* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  br label %63

14:                                               ; preds = %9
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %16 = call i32 @manager_check_basic_target(%struct.TYPE_14__* %15)
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @hashmap_size(i32 %19)
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %14
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %22
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %32 = call i64 @now(i32 %31)
  %33 = load i64, i64* @JOBS_IN_PROGRESS_WAIT_USEC, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @sd_event_source_set_time(i64 %30, i64 %34)
  br label %36

36:                                               ; preds = %27, %22
  br label %63

37:                                               ; preds = %14
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %39 = call i32 @manager_flip_auto_status(%struct.TYPE_14__* %38, i32 0)
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %41 = call i32 @manager_close_idle_pipe(%struct.TYPE_14__* %40)
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 1
  store i32* null, i32** %43, align 8
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %45 = call i32 @manager_close_ask_password(%struct.TYPE_14__* %44)
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %47 = call i32 @manager_set_first_boot(%struct.TYPE_14__* %46, i32 0)
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %49 = call i64 @MANAGER_IS_FINISHED(%struct.TYPE_14__* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %37
  br label %63

52:                                               ; preds = %37
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @MANAGER_TIMESTAMP_FINISH, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @dual_timestamp_get(i64 %57)
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %60 = call i32 @manager_notify_finished(%struct.TYPE_14__* %59)
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %62 = call i32 @manager_invalidate_startup_units(%struct.TYPE_14__* %61)
  br label %63

63:                                               ; preds = %52, %51, %36, %13, %8
  ret void
}

declare dso_local i32 @assert(%struct.TYPE_14__*) #1

declare dso_local i64 @MANAGER_IS_RELOADING(%struct.TYPE_14__*) #1

declare dso_local i32 @MANAGER_IS_RUNNING(%struct.TYPE_14__*) #1

declare dso_local i32 @manager_check_basic_target(%struct.TYPE_14__*) #1

declare dso_local i64 @hashmap_size(i32) #1

declare dso_local i32 @sd_event_source_set_time(i64, i64) #1

declare dso_local i64 @now(i32) #1

declare dso_local i32 @manager_flip_auto_status(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @manager_close_idle_pipe(%struct.TYPE_14__*) #1

declare dso_local i32 @manager_close_ask_password(%struct.TYPE_14__*) #1

declare dso_local i32 @manager_set_first_boot(%struct.TYPE_14__*, i32) #1

declare dso_local i64 @MANAGER_IS_FINISHED(%struct.TYPE_14__*) #1

declare dso_local i32 @dual_timestamp_get(i64) #1

declare dso_local i32 @manager_notify_finished(%struct.TYPE_14__*) #1

declare dso_local i32 @manager_invalidate_startup_units(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
