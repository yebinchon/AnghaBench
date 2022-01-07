; ModuleID = '/home/carl/AnghaBench/tengine/src/os/unix/extr_ngx_process_cycle.c_ngx_worker_process_cycle.c'
source_filename = "/home/carl/AnghaBench/tengine/src/os/unix/extr_ngx_process_cycle.c_ngx_worker_process_cycle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }

@NGX_PROCESS_WORKER = common dso_local global i32 0, align 4
@ngx_process = common dso_local global i32 0, align 4
@ngx_worker = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"worker process\00", align 1
@ngx_exiting = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@NGX_LOG_NOTICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"exiting\00", align 1
@NGX_LOG_DEBUG_EVENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"worker cycle\00", align 1
@ngx_terminate = common dso_local global i64 0, align 8
@ngx_quit = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [25 x i8] c"gracefully shutting down\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"worker process is shutting down\00", align 1
@ngx_reopen = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [15 x i8] c"reopening logs\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i8*)* @ngx_worker_process_cycle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_worker_process_cycle(%struct.TYPE_10__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = ptrtoint i8* %6 to i64
  store i64 %7, i64* %5, align 8
  %8 = load i32, i32* @NGX_PROCESS_WORKER, align 4
  store i32 %8, i32* @ngx_process, align 4
  %9 = load i64, i64* %5, align 8
  store i64 %9, i64* @ngx_worker, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @ngx_worker_process_init(%struct.TYPE_10__* %10, i64 %11)
  %13 = call i32 @ngx_setproctitle(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %79, %2
  %15 = load i32, i32* @ngx_exiting, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %14
  %18 = call i64 (...) @ngx_event_no_timers_left()
  %19 = load i64, i64* @NGX_OK, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %17
  %22 = load i32, i32* @NGX_LOG_NOTICE, align 4
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ngx_log_error(i32 %22, i32 %25, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %28 = call i32 @ngx_worker_process_exit(%struct.TYPE_10__* %27)
  br label %29

29:                                               ; preds = %21, %17
  br label %30

30:                                               ; preds = %29, %14
  %31 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @ngx_log_debug0(i32 %31, i32 %34, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %37 = call i32 @ngx_process_events_and_timers(%struct.TYPE_10__* %36)
  %38 = load i64, i64* @ngx_terminate, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %30
  %41 = load i32, i32* @NGX_LOG_NOTICE, align 4
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @ngx_log_error(i32 %41, i32 %44, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %47 = call i32 @ngx_worker_process_exit(%struct.TYPE_10__* %46)
  br label %48

48:                                               ; preds = %40, %30
  %49 = load i64, i64* @ngx_quit, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %68

51:                                               ; preds = %48
  store i64 0, i64* @ngx_quit, align 8
  %52 = load i32, i32* @NGX_LOG_NOTICE, align 4
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @ngx_log_error(i32 %52, i32 %55, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %57 = call i32 @ngx_setproctitle(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %58 = load i32, i32* @ngx_exiting, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %67, label %60

60:                                               ; preds = %51
  store i32 1, i32* @ngx_exiting, align 4
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %62 = call i32 @ngx_set_shutdown_timer(%struct.TYPE_10__* %61)
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %64 = call i32 @ngx_close_listening_sockets(%struct.TYPE_10__* %63)
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %66 = call i32 @ngx_close_idle_connections(%struct.TYPE_10__* %65)
  br label %67

67:                                               ; preds = %60, %51
  br label %68

68:                                               ; preds = %67, %48
  %69 = load i64, i64* @ngx_reopen, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %68
  store i64 0, i64* @ngx_reopen, align 8
  %72 = load i32, i32* @NGX_LOG_NOTICE, align 4
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @ngx_log_error(i32 %72, i32 %75, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %78 = call i32 @ngx_reopen_files(%struct.TYPE_10__* %77, i32 -1)
  br label %79

79:                                               ; preds = %71, %68
  br label %14
}

declare dso_local i32 @ngx_worker_process_init(%struct.TYPE_10__*, i64) #1

declare dso_local i32 @ngx_setproctitle(i8*) #1

declare dso_local i64 @ngx_event_no_timers_left(...) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*) #1

declare dso_local i32 @ngx_worker_process_exit(%struct.TYPE_10__*) #1

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i32 @ngx_process_events_and_timers(%struct.TYPE_10__*) #1

declare dso_local i32 @ngx_set_shutdown_timer(%struct.TYPE_10__*) #1

declare dso_local i32 @ngx_close_listening_sockets(%struct.TYPE_10__*) #1

declare dso_local i32 @ngx_close_idle_connections(%struct.TYPE_10__*) #1

declare dso_local i32 @ngx_reopen_files(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
