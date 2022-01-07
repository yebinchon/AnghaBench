; ModuleID = '/home/carl/AnghaBench/tengine/src/event/extr_ngx_event.c_ngx_process_events_and_timers.c'
source_filename = "/home/carl/AnghaBench/tengine/src/event/extr_ngx_event.c_ngx_process_events_and_timers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@ngx_timer_resolution = common dso_local global i64 0, align 8
@NGX_TIMER_INFINITE = common dso_local global i32 0, align 4
@NGX_UPDATE_TIME = common dso_local global i32 0, align 4
@ngx_use_accept_mutex = common dso_local global i64 0, align 8
@ngx_accept_disabled = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@ngx_accept_mutex_held = common dso_local global i64 0, align 8
@NGX_POST_EVENTS = common dso_local global i32 0, align 4
@ngx_accept_mutex_delay = common dso_local global i32 0, align 4
@ngx_current_msec = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_EVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"timer delta: %M\00", align 1
@ngx_posted_accept_events = common dso_local global i32 0, align 4
@ngx_accept_mutex = common dso_local global i32 0, align 4
@ngx_posted_events = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ngx_process_events_and_timers(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %6 = load i64, i64* @ngx_timer_resolution, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* @NGX_TIMER_INFINITE, align 4
  store i32 %9, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %13

10:                                               ; preds = %1
  %11 = call i32 (...) @ngx_event_find_timer()
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* @NGX_UPDATE_TIME, align 4
  store i32 %12, i32* %3, align 4
  br label %13

13:                                               ; preds = %10, %8
  %14 = load i64, i64* @ngx_use_accept_mutex, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %48

16:                                               ; preds = %13
  %17 = load i64, i64* @ngx_accept_disabled, align 8
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i64, i64* @ngx_accept_disabled, align 8
  %21 = add nsw i64 %20, -1
  store i64 %21, i64* @ngx_accept_disabled, align 8
  br label %47

22:                                               ; preds = %16
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %24 = call i64 @ngx_trylock_accept_mutex(%struct.TYPE_6__* %23)
  %25 = load i64, i64* @NGX_ERROR, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %77

28:                                               ; preds = %22
  %29 = load i64, i64* @ngx_accept_mutex_held, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load i32, i32* @NGX_POST_EVENTS, align 4
  %33 = load i32, i32* %3, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %3, align 4
  br label %46

35:                                               ; preds = %28
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @NGX_TIMER_INFINITE, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @ngx_accept_mutex_delay, align 4
  %42 = icmp sgt i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %39, %35
  %44 = load i32, i32* @ngx_accept_mutex_delay, align 4
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %43, %39
  br label %46

46:                                               ; preds = %45, %31
  br label %47

47:                                               ; preds = %46, %19
  br label %48

48:                                               ; preds = %47, %13
  %49 = load i32, i32* @ngx_current_msec, align 4
  store i32 %49, i32* %5, align 4
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* %3, align 4
  %53 = call i32 @ngx_process_events(%struct.TYPE_6__* %50, i32 %51, i32 %52)
  %54 = load i32, i32* @ngx_current_msec, align 4
  %55 = load i32, i32* %5, align 4
  %56 = sub nsw i32 %54, %55
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @ngx_log_debug1(i32 %57, i32 %60, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %61)
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %64 = call i32 @ngx_event_process_posted(%struct.TYPE_6__* %63, i32* @ngx_posted_accept_events)
  %65 = load i64, i64* @ngx_accept_mutex_held, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %48
  %68 = call i32 @ngx_shmtx_unlock(i32* @ngx_accept_mutex)
  br label %69

69:                                               ; preds = %67, %48
  %70 = load i32, i32* %5, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = call i32 (...) @ngx_event_expire_timers()
  br label %74

74:                                               ; preds = %72, %69
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %76 = call i32 @ngx_event_process_posted(%struct.TYPE_6__* %75, i32* @ngx_posted_events)
  br label %77

77:                                               ; preds = %74, %27
  ret void
}

declare dso_local i32 @ngx_event_find_timer(...) #1

declare dso_local i64 @ngx_trylock_accept_mutex(%struct.TYPE_6__*) #1

declare dso_local i32 @ngx_process_events(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @ngx_event_process_posted(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @ngx_shmtx_unlock(i32*) #1

declare dso_local i32 @ngx_event_expire_timers(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
