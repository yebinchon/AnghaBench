; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_arc.c_arc_fini.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_arc.c_arc_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@B_TRUE = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@arc_initialized = common dso_local global i32 0, align 4
@arc_ksp = common dso_local global i32* null, align 8
@arc_prune_taskq = common dso_local global i32 0, align 4
@arc_prune_mtx = common dso_local global i32 0, align 4
@arc_prune_list = common dso_local global i32 0, align 4
@arc_adjust_zthr = common dso_local global i32 0, align 4
@arc_reap_zthr = common dso_local global i32 0, align 4
@arc_adjust_lock = common dso_local global i32 0, align 4
@arc_adjust_waiters_cv = common dso_local global i32 0, align 4
@arc_loaned_bytes = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arc_fini() #0 {
  %1 = alloca %struct.TYPE_5__*, align 8
  %2 = load i32, i32* @B_TRUE, align 4
  %3 = call i32 @arc_flush(i32* null, i32 %2)
  %4 = load i32, i32* @B_FALSE, align 4
  store i32 %4, i32* @arc_initialized, align 4
  %5 = load i32*, i32** @arc_ksp, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = load i32*, i32** @arc_ksp, align 8
  %9 = call i32 @kstat_delete(i32* %8)
  store i32* null, i32** @arc_ksp, align 8
  br label %10

10:                                               ; preds = %7, %0
  %11 = load i32, i32* @arc_prune_taskq, align 4
  %12 = call i32 @taskq_wait(i32 %11)
  %13 = load i32, i32* @arc_prune_taskq, align 4
  %14 = call i32 @taskq_destroy(i32 %13)
  %15 = call i32 @mutex_enter(i32* @arc_prune_mtx)
  br label %16

16:                                               ; preds = %19, %10
  %17 = call %struct.TYPE_5__* @list_head(i32* @arc_prune_list)
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %1, align 8
  %18 = icmp ne %struct.TYPE_5__* %17, null
  br i1 %18, label %19, label %30

19:                                               ; preds = %16
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %21 = call i32 @list_remove(i32* @arc_prune_list, %struct.TYPE_5__* %20)
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = call i32 @zfs_refcount_remove(i32* %23, i32* @arc_prune_list)
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = call i32 @zfs_refcount_destroy(i32* %26)
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %29 = call i32 @kmem_free(%struct.TYPE_5__* %28, i32 4)
  br label %16

30:                                               ; preds = %16
  %31 = call i32 @mutex_exit(i32* @arc_prune_mtx)
  %32 = call i32 @list_destroy(i32* @arc_prune_list)
  %33 = call i32 @mutex_destroy(i32* @arc_prune_mtx)
  %34 = load i32, i32* @arc_adjust_zthr, align 4
  %35 = call i32 @zthr_cancel(i32 %34)
  %36 = load i32, i32* @arc_reap_zthr, align 4
  %37 = call i32 @zthr_cancel(i32 %36)
  %38 = call i32 @mutex_destroy(i32* @arc_adjust_lock)
  %39 = call i32 @cv_destroy(i32* @arc_adjust_waiters_cv)
  %40 = call i32 (...) @buf_fini()
  %41 = call i32 (...) @arc_state_fini()
  %42 = load i32, i32* @arc_adjust_zthr, align 4
  %43 = call i32 @zthr_destroy(i32 %42)
  %44 = load i32, i32* @arc_reap_zthr, align 4
  %45 = call i32 @zthr_destroy(i32 %44)
  %46 = load i32, i32* @arc_loaned_bytes, align 4
  %47 = call i32 @ASSERT0(i32 %46)
  ret void
}

declare dso_local i32 @arc_flush(i32*, i32) #1

declare dso_local i32 @kstat_delete(i32*) #1

declare dso_local i32 @taskq_wait(i32) #1

declare dso_local i32 @taskq_destroy(i32) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local %struct.TYPE_5__* @list_head(i32*) #1

declare dso_local i32 @list_remove(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @zfs_refcount_remove(i32*, i32*) #1

declare dso_local i32 @zfs_refcount_destroy(i32*) #1

declare dso_local i32 @kmem_free(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @list_destroy(i32*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @zthr_cancel(i32) #1

declare dso_local i32 @cv_destroy(i32*) #1

declare dso_local i32 @buf_fini(...) #1

declare dso_local i32 @arc_state_fini(...) #1

declare dso_local i32 @zthr_destroy(i32) #1

declare dso_local i32 @ASSERT0(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
