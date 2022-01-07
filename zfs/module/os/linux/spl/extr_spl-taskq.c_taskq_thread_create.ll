; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/spl/extr_spl-taskq.c_taskq_thread_create.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/spl/extr_spl-taskq.c_taskq_thread_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32*, i32, %struct.TYPE_9__*, i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@taskq_thread_create.last_used_cpu = internal global i32 0, align 4
@KM_PUSHPAGE = common dso_local global i32 0, align 4
@TASKQID_INVALID = common dso_local global i32 0, align 4
@taskq_thread = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@spl_taskq_thread_bind = common dso_local global i64 0, align 8
@spl_taskq_thread_priority = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (%struct.TYPE_9__*)* @taskq_thread_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @taskq_thread_create(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %5 = load i32, i32* @KM_PUSHPAGE, align 4
  %6 = call %struct.TYPE_8__* @kmem_alloc(i32 32, i32 %5)
  store %struct.TYPE_8__* %6, %struct.TYPE_8__** %4, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 4
  %9 = call i32 @INIT_LIST_HEAD(i32* %8)
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 3
  %12 = call i32 @INIT_LIST_HEAD(i32* %11)
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 2
  store %struct.TYPE_9__* %13, %struct.TYPE_9__** %15, align 8
  %16 = load i32, i32* @TASKQID_INVALID, align 4
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 8
  %19 = load i32, i32* @taskq_thread, align 4
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32* @spl_kthread_create(i32 %19, %struct.TYPE_8__* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  store i32* %24, i32** %26, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %1
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %33 = call i32 @kmem_free(%struct.TYPE_8__* %32, i32 32)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %2, align 8
  br label %65

34:                                               ; preds = %1
  %35 = load i64, i64* @spl_taskq_thread_bind, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %34
  %38 = load i32, i32* @taskq_thread_create.last_used_cpu, align 4
  %39 = add nsw i32 %38, 1
  %40 = call i32 (...) @num_online_cpus()
  %41 = srem i32 %39, %40
  store i32 %41, i32* @taskq_thread_create.last_used_cpu, align 4
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* @taskq_thread_create.last_used_cpu, align 4
  %46 = call i32 @kthread_bind(i32* %44, i32 %45)
  br label %47

47:                                               ; preds = %37, %34
  %48 = load i64, i64* @spl_taskq_thread_priority, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %47
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @PRIO_TO_NICE(i32 %56)
  %58 = call i32 @set_user_nice(i32* %53, i32 %57)
  br label %59

59:                                               ; preds = %50, %47
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @wake_up_process(i32* %62)
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_8__* %64, %struct.TYPE_8__** %2, align 8
  br label %65

65:                                               ; preds = %59, %31
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  ret %struct.TYPE_8__* %66
}

declare dso_local %struct.TYPE_8__* @kmem_alloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32* @spl_kthread_create(i32, %struct.TYPE_8__*, i8*, i32) #1

declare dso_local i32 @kmem_free(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @num_online_cpus(...) #1

declare dso_local i32 @kthread_bind(i32*, i32) #1

declare dso_local i32 @set_user_nice(i32*, i32) #1

declare dso_local i32 @PRIO_TO_NICE(i32) #1

declare dso_local i32 @wake_up_process(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
