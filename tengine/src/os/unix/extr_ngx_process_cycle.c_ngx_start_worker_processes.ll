; ModuleID = '/home/carl/AnghaBench/tengine/src/os/unix/extr_ngx_process_cycle.c_ngx_start_worker_processes.c'
source_filename = "/home/carl/AnghaBench/tengine/src/os/unix/extr_ngx_process_cycle.c_ngx_start_worker_processes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32*, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i64, i32, i32, i32 }

@NGX_LOG_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"start worker processes\00", align 1
@NGX_CMD_OPEN_CHANNEL = common dso_local global i32 0, align 4
@ngx_worker_process_cycle = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"worker process\00", align 1
@ngx_processes = common dso_local global %struct.TYPE_11__* null, align 8
@ngx_process_slot = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i64, i64)* @ngx_start_worker_processes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_start_worker_processes(%struct.TYPE_9__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_10__, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i32, i32* @NGX_LOG_NOTICE, align 4
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @ngx_log_error(i32 %9, i32 %12, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 @ngx_memzero(%struct.TYPE_10__* %8, i32 24)
  %15 = load i32, i32* @NGX_CMD_OPEN_CHANNEL, align 4
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 3
  store i32 %15, i32* %16, align 8
  store i64 0, i64* %7, align 8
  br label %17

17:                                               ; preds = %46, %3
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* %5, align 8
  %20 = icmp slt i64 %18, %19
  br i1 %20, label %21, label %49

21:                                               ; preds = %17
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %23 = load i32, i32* @ngx_worker_process_cycle, align 4
  %24 = load i64, i64* %7, align 8
  %25 = inttoptr i64 %24 to i8*
  %26 = load i64, i64* %6, align 8
  %27 = call i32 @ngx_spawn_process(%struct.TYPE_9__* %22, i32 %23, i8* %25, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i64 %26)
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ngx_processes, align 8
  %29 = load i64, i64* @ngx_process_slot, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 2
  store i32 %32, i32* %33, align 4
  %34 = load i64, i64* @ngx_process_slot, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  store i64 %34, i64* %35, align 8
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ngx_processes, align 8
  %37 = load i64, i64* @ngx_process_slot, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 1
  store i32 %42, i32* %43, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %45 = call i32 @ngx_pass_open_channel(%struct.TYPE_9__* %44, %struct.TYPE_10__* %8)
  br label %46

46:                                               ; preds = %21
  %47 = load i64, i64* %7, align 8
  %48 = add nsw i64 %47, 1
  store i64 %48, i64* %7, align 8
  br label %17

49:                                               ; preds = %17
  ret void
}

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*) #1

declare dso_local i32 @ngx_memzero(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @ngx_spawn_process(%struct.TYPE_9__*, i32, i8*, i8*, i64) #1

declare dso_local i32 @ngx_pass_open_channel(%struct.TYPE_9__*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
