; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_arc_os.c_arc_prune_async.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_arc_os.c_arc_prune_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }

@arc_prune_mtx = common dso_local global i32 0, align 4
@arc_prune_list = common dso_local global i32 0, align 4
@arc_prune_taskq = common dso_local global i32 0, align 4
@arc_prune_task = common dso_local global i32 0, align 4
@TQ_SLEEP = common dso_local global i32 0, align 4
@TASKQID_INVALID = common dso_local global i64 0, align 8
@arcstat_prune = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arc_prune_async(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %2, align 4
  %4 = call i32 @mutex_enter(i32* @arc_prune_mtx)
  %5 = call %struct.TYPE_6__* @list_head(i32* @arc_prune_list)
  store %struct.TYPE_6__* %5, %struct.TYPE_6__** %3, align 8
  br label %6

6:                                                ; preds = %42, %1
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %8 = icmp ne %struct.TYPE_6__* %7, null
  br i1 %8, label %9, label %45

9:                                                ; preds = %6
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %12 = call i32 @zfs_refcount_count(i32* %11)
  %13 = icmp sge i32 %12, 2
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  br label %42

15:                                               ; preds = %9
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @zfs_refcount_add(i32* %17, i32 %20)
  %22 = load i32, i32* %2, align 4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @arc_prune_taskq, align 4
  %26 = load i32, i32* @arc_prune_task, align 4
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %28 = load i32, i32* @TQ_SLEEP, align 4
  %29 = call i64 @taskq_dispatch(i32 %25, i32 %26, %struct.TYPE_6__* %27, i32 %28)
  %30 = load i64, i64* @TASKQID_INVALID, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %15
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @zfs_refcount_remove(i32* %34, i32 %37)
  br label %42

39:                                               ; preds = %15
  %40 = load i32, i32* @arcstat_prune, align 4
  %41 = call i32 @ARCSTAT_BUMP(i32 %40)
  br label %42

42:                                               ; preds = %39, %32, %14
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %44 = call %struct.TYPE_6__* @list_next(i32* @arc_prune_list, %struct.TYPE_6__* %43)
  store %struct.TYPE_6__* %44, %struct.TYPE_6__** %3, align 8
  br label %6

45:                                               ; preds = %6
  %46 = call i32 @mutex_exit(i32* @arc_prune_mtx)
  ret void
}

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local %struct.TYPE_6__* @list_head(i32*) #1

declare dso_local i32 @zfs_refcount_count(i32*) #1

declare dso_local i32 @zfs_refcount_add(i32*, i32) #1

declare dso_local i64 @taskq_dispatch(i32, i32, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @zfs_refcount_remove(i32*, i32) #1

declare dso_local i32 @ARCSTAT_BUMP(i32) #1

declare dso_local %struct.TYPE_6__* @list_next(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @mutex_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
