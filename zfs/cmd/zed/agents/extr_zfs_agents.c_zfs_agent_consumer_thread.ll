; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zed/agents/extr_zfs_agents.c_zfs_agent_consumer_thread.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zed/agents/extr_zfs_agents.c_zfs_agent_consumer_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }

@agent_lock = common dso_local global i32 0, align 4
@agent_exiting = common dso_local global i64 0, align 8
@agent_events = common dso_local global i32 0, align 4
@agent_cond = common dso_local global i32 0, align 4
@LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"zfs_agent_consumer_thread: exiting\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @zfs_agent_consumer_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @zfs_agent_consumer_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  store i8* %0, i8** %2, align 8
  br label %4

4:                                                ; preds = %46, %26, %1
  %5 = call i32 @pthread_mutex_lock(i32* @agent_lock)
  br label %6

6:                                                ; preds = %14, %4
  %7 = load i64, i64* @agent_exiting, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %6
  %10 = call i64 @list_is_empty(i32* @agent_events)
  %11 = icmp ne i64 %10, 0
  br label %12

12:                                               ; preds = %9, %6
  %13 = phi i1 [ false, %6 ], [ %11, %9 ]
  br i1 %13, label %14, label %16

14:                                               ; preds = %12
  %15 = call i32 @pthread_cond_wait(i32* @agent_cond, i32* @agent_lock)
  br label %6

16:                                               ; preds = %12
  %17 = load i64, i64* @agent_exiting, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = call i32 @pthread_mutex_unlock(i32* @agent_lock)
  %21 = load i32, i32* @LOG_INFO, align 4
  %22 = call i32 @zed_log_msg(i32 %21, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  ret i8* null

23:                                               ; preds = %16
  %24 = call %struct.TYPE_5__* @list_head(i32* @agent_events)
  store %struct.TYPE_5__* %24, %struct.TYPE_5__** %3, align 8
  %25 = icmp ne %struct.TYPE_5__* %24, null
  br i1 %25, label %26, label %46

26:                                               ; preds = %23
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %28 = call i32 @list_remove(i32* @agent_events, %struct.TYPE_5__* %27)
  %29 = call i32 @pthread_mutex_unlock(i32* @agent_lock)
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @zfs_agent_dispatch(i32 %32, i32 %35, i32 %38)
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @nvlist_free(i32 %42)
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %45 = call i32 @free(%struct.TYPE_5__* %44)
  br label %4

46:                                               ; preds = %23
  %47 = call i32 @pthread_mutex_unlock(i32* @agent_lock)
  br label %4
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i64 @list_is_empty(i32*) #1

declare dso_local i32 @pthread_cond_wait(i32*, i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @zed_log_msg(i32, i8*) #1

declare dso_local %struct.TYPE_5__* @list_head(i32*) #1

declare dso_local i32 @list_remove(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @zfs_agent_dispatch(i32, i32, i32) #1

declare dso_local i32 @nvlist_free(i32) #1

declare dso_local i32 @free(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
