; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_arc.c_arc_remove_prune_callback.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_arc.c_arc_remove_prune_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@B_FALSE = common dso_local global i64 0, align 8
@arc_prune_mtx = common dso_local global i32 0, align 4
@arc_prune_list = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i64 0, align 8
@arc_prune_taskq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arc_remove_prune_callback(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %4 = load i64, i64* @B_FALSE, align 8
  store i64 %4, i64* %3, align 8
  %5 = call i32 @mutex_enter(i32* @arc_prune_mtx)
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %7 = call i32 @list_remove(i32* @arc_prune_list, %struct.TYPE_5__* %6)
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = call i64 @zfs_refcount_remove(i32* %9, i32* @arc_prune_list)
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i64, i64* @B_TRUE, align 8
  store i64 %13, i64* %3, align 8
  br label %14

14:                                               ; preds = %12, %1
  %15 = call i32 @mutex_exit(i32* @arc_prune_mtx)
  %16 = load i64, i64* %3, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load i32, i32* @arc_prune_taskq, align 4
  %20 = call i32 @taskq_wait_outstanding(i32 %19, i32 0)
  br label %21

21:                                               ; preds = %18, %14
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = call i32 @zfs_refcount_count(i32* %23)
  %25 = call i32 @ASSERT0(i32 %24)
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = call i32 @zfs_refcount_destroy(i32* %27)
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %30 = call i32 @kmem_free(%struct.TYPE_5__* %29, i32 4)
  ret void
}

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @list_remove(i32*, %struct.TYPE_5__*) #1

declare dso_local i64 @zfs_refcount_remove(i32*, i32*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @taskq_wait_outstanding(i32, i32) #1

declare dso_local i32 @ASSERT0(i32) #1

declare dso_local i32 @zfs_refcount_count(i32*) #1

declare dso_local i32 @zfs_refcount_destroy(i32*) #1

declare dso_local i32 @kmem_free(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
