; ModuleID = '/home/carl/AnghaBench/systemd/src/time-wait-sync/extr_time-wait-sync.c_process_inotify_event.c'
source_filename = "/home/carl/AnghaBench/systemd/src/time-wait-sync/extr_time-wait-sync.c_process_inotify_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i32 }
%struct.inotify_event = type { i64, i32 }

@IN_DELETE_SELF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_5__*, %struct.inotify_event*)* @process_inotify_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_inotify_event(i32* %0, %struct.TYPE_5__* %1, %struct.inotify_event* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.inotify_event*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  store %struct.inotify_event* %2, %struct.inotify_event** %6, align 8
  %7 = load %struct.inotify_event*, %struct.inotify_event** %6, align 8
  %8 = getelementptr inbounds %struct.inotify_event, %struct.inotify_event* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %9, %12
  br i1 %13, label %14, label %23

14:                                               ; preds = %3
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %21 = call i32 @update_notify_run_systemd_timesync(%struct.TYPE_5__* %20)
  br label %22

22:                                               ; preds = %19, %14
  br label %54

23:                                               ; preds = %3
  %24 = load %struct.inotify_event*, %struct.inotify_event** %6, align 8
  %25 = getelementptr inbounds %struct.inotify_event, %struct.inotify_event* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %26, %29
  br i1 %30, label %31, label %53

31:                                               ; preds = %23
  %32 = load %struct.inotify_event*, %struct.inotify_event** %6, align 8
  %33 = getelementptr inbounds %struct.inotify_event, %struct.inotify_event* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @IN_DELETE_SELF, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %31
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @inotify_rm_watch(i32 %41, i64 %44)
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  store i64 -1, i64* %47, align 8
  br label %52

48:                                               ; preds = %31
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %50 = load i32*, i32** %4, align 8
  %51 = call i32 @clock_state_update(%struct.TYPE_5__* %49, i32* %50)
  br label %52

52:                                               ; preds = %48, %38
  br label %53

53:                                               ; preds = %52, %23
  br label %54

54:                                               ; preds = %53, %22
  ret void
}

declare dso_local i32 @update_notify_run_systemd_timesync(%struct.TYPE_5__*) #1

declare dso_local i32 @inotify_rm_watch(i32, i64) #1

declare dso_local i32 @clock_state_update(%struct.TYPE_5__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
