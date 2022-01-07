; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dbuf.c_dbuf_fini.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dbuf.c_dbuf_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32* }
%struct.TYPE_5__ = type { i32, i32 }

@dbuf_hash_table = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@DBUF_MUTEXES = common dso_local global i32 0, align 4
@dbuf_kmem_cache = common dso_local global i32 0, align 4
@dbu_evict_taskq = common dso_local global i32 0, align 4
@dbuf_evict_lock = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i64 0, align 8
@dbuf_evict_thread_exit = common dso_local global i64 0, align 8
@dbuf_evict_cv = common dso_local global i32 0, align 4
@DB_CACHE_MAX = common dso_local global i64 0, align 8
@dbuf_caches = common dso_local global %struct.TYPE_5__* null, align 8
@dbuf_ksp = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dbuf_fini() #0 {
  %1 = alloca %struct.TYPE_4__*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store %struct.TYPE_4__* @dbuf_hash_table, %struct.TYPE_4__** %1, align 8
  %4 = call i32 (...) @dbuf_stats_destroy()
  store i32 0, i32* %2, align 4
  br label %5

5:                                                ; preds = %17, %0
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @DBUF_MUTEXES, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %20

9:                                                ; preds = %5
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  %12 = load i32*, i32** %11, align 8
  %13 = load i32, i32* %2, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = call i32 @mutex_destroy(i32* %15)
  br label %17

17:                                               ; preds = %9
  %18 = load i32, i32* %2, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %2, align 4
  br label %5

20:                                               ; preds = %5
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = add nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = mul i64 %28, 8
  %30 = trunc i64 %29 to i32
  %31 = call i32 @kmem_free(i32 %23, i32 %30)
  %32 = load i32, i32* @dbuf_kmem_cache, align 4
  %33 = call i32 @kmem_cache_destroy(i32 %32)
  %34 = load i32, i32* @dbu_evict_taskq, align 4
  %35 = call i32 @taskq_destroy(i32 %34)
  %36 = call i32 @mutex_enter(i32* @dbuf_evict_lock)
  %37 = load i64, i64* @B_TRUE, align 8
  store i64 %37, i64* @dbuf_evict_thread_exit, align 8
  br label %38

38:                                               ; preds = %41, %20
  %39 = load i64, i64* @dbuf_evict_thread_exit, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = call i32 @cv_signal(i32* @dbuf_evict_cv)
  %43 = call i32 @cv_wait(i32* @dbuf_evict_cv, i32* @dbuf_evict_lock)
  br label %38

44:                                               ; preds = %38
  %45 = call i32 @mutex_exit(i32* @dbuf_evict_lock)
  %46 = call i32 @mutex_destroy(i32* @dbuf_evict_lock)
  %47 = call i32 @cv_destroy(i32* @dbuf_evict_cv)
  store i64 0, i64* %3, align 8
  br label %48

48:                                               ; preds = %64, %44
  %49 = load i64, i64* %3, align 8
  %50 = load i64, i64* @DB_CACHE_MAX, align 8
  %51 = icmp ult i64 %49, %50
  br i1 %51, label %52, label %67

52:                                               ; preds = %48
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** @dbuf_caches, align 8
  %54 = load i64, i64* %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = call i32 @zfs_refcount_destroy(i32* %56)
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** @dbuf_caches, align 8
  %59 = load i64, i64* %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @multilist_destroy(i32 %62)
  br label %64

64:                                               ; preds = %52
  %65 = load i64, i64* %3, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %3, align 8
  br label %48

67:                                               ; preds = %48
  %68 = load i32*, i32** @dbuf_ksp, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load i32*, i32** @dbuf_ksp, align 8
  %72 = call i32 @kstat_delete(i32* %71)
  store i32* null, i32** @dbuf_ksp, align 8
  br label %73

73:                                               ; preds = %70, %67
  ret void
}

declare dso_local i32 @dbuf_stats_destroy(...) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @kmem_free(i32, i32) #1

declare dso_local i32 @kmem_cache_destroy(i32) #1

declare dso_local i32 @taskq_destroy(i32) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @cv_signal(i32*) #1

declare dso_local i32 @cv_wait(i32*, i32*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @cv_destroy(i32*) #1

declare dso_local i32 @zfs_refcount_destroy(i32*) #1

declare dso_local i32 @multilist_destroy(i32) #1

declare dso_local i32 @kstat_delete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
