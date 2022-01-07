; ModuleID = '/home/carl/AnghaBench/tengine/src/os/unix/extr_ngx_process_cycle.c_ngx_cache_manager_process_cycle.c'
source_filename = "/home/carl/AnghaBench/tengine/src/os/unix/extr_ngx_process_cycle.c_ngx_cache_manager_process_cycle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i8**, i32, i32 }

@NGX_PROCESS_HELPER = common dso_local global i32 0, align 4
@ngx_process = common dso_local global i32 0, align 4
@ngx_use_accept_mutex = common dso_local global i64 0, align 8
@ngx_terminate = common dso_local global i64 0, align 8
@ngx_quit = common dso_local global i64 0, align 8
@NGX_LOG_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"exiting\00", align 1
@ngx_reopen = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"reopening logs\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, i8*)* @ngx_cache_manager_process_cycle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_cache_manager_process_cycle(%struct.TYPE_12__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca [4 x i8*], align 16
  %7 = alloca %struct.TYPE_11__, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %9, %struct.TYPE_13__** %5, align 8
  %10 = load i32, i32* @NGX_PROCESS_HELPER, align 4
  store i32 %10, i32* @ngx_process, align 4
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %12 = call i32 @ngx_close_listening_sockets(%struct.TYPE_12__* %11)
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  store i32 512, i32* %14, align 4
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %16 = call i32 @ngx_worker_process_init(%struct.TYPE_12__* %15, i32 -1)
  %17 = call i32 @ngx_memzero(%struct.TYPE_11__* %7, i32 16)
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 2
  store i32 %20, i32* %21, align 4
  %22 = getelementptr inbounds [4 x i8*], [4 x i8*]* %6, i64 0, i64 0
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  store i8** %22, i8*** %23, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  store i32 %26, i32* %27, align 8
  %28 = getelementptr inbounds [4 x i8*], [4 x i8*]* %6, i64 0, i64 3
  store i8* inttoptr (i64 -1 to i8*), i8** %28, align 8
  store i64 0, i64* @ngx_use_accept_mutex, align 8
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ngx_setproctitle(i32 %31)
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ngx_add_timer(%struct.TYPE_11__* %7, i32 %35)
  br label %37

37:                                               ; preds = %61, %2
  %38 = load i64, i64* @ngx_terminate, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = load i64, i64* @ngx_quit, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %40, %37
  %44 = load i32, i32* @NGX_LOG_NOTICE, align 4
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @ngx_log_error(i32 %44, i32 %47, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %49 = call i32 @exit(i32 0) #3
  unreachable

50:                                               ; preds = %40
  %51 = load i64, i64* @ngx_reopen, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %50
  store i64 0, i64* @ngx_reopen, align 8
  %54 = load i32, i32* @NGX_LOG_NOTICE, align 4
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @ngx_log_error(i32 %54, i32 %57, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %60 = call i32 @ngx_reopen_files(%struct.TYPE_12__* %59, i32 -1)
  br label %61

61:                                               ; preds = %53, %50
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %63 = call i32 @ngx_process_events_and_timers(%struct.TYPE_12__* %62)
  br label %37
}

declare dso_local i32 @ngx_close_listening_sockets(%struct.TYPE_12__*) #1

declare dso_local i32 @ngx_worker_process_init(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @ngx_memzero(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @ngx_setproctitle(i32) #1

declare dso_local i32 @ngx_add_timer(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @ngx_reopen_files(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @ngx_process_events_and_timers(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
