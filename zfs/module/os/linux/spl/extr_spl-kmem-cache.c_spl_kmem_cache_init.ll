; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/spl/extr_spl-kmem-cache.c_spl_kmem_cache_init.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/spl/extr_spl-kmem-cache.c_spl_kmem_cache_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@spl_kmem_cache_sem = common dso_local global i32 0, align 4
@spl_kmem_cache_list = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"spl_kmem_cache\00", align 1
@spl_kmem_cache_kmem_threads = common dso_local global i32 0, align 4
@maxclsyspri = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@TASKQ_PREPOPULATE = common dso_local global i32 0, align 4
@TASKQ_DYNAMIC = common dso_local global i32 0, align 4
@spl_kmem_cache_taskq = common dso_local global i32 0, align 4
@spl_kmem_cache_shrinker = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spl_kmem_cache_init() #0 {
  %1 = call i32 @init_rwsem(i32* @spl_kmem_cache_sem)
  %2 = call i32 @INIT_LIST_HEAD(i32* @spl_kmem_cache_list)
  %3 = load i32, i32* @spl_kmem_cache_kmem_threads, align 4
  %4 = load i32, i32* @maxclsyspri, align 4
  %5 = load i32, i32* @spl_kmem_cache_kmem_threads, align 4
  %6 = mul nsw i32 %5, 8
  %7 = load i32, i32* @INT_MAX, align 4
  %8 = load i32, i32* @TASKQ_PREPOPULATE, align 4
  %9 = load i32, i32* @TASKQ_DYNAMIC, align 4
  %10 = or i32 %8, %9
  %11 = call i32 @taskq_create(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %3, i32 %4, i32 %6, i32 %7, i32 %10)
  store i32 %11, i32* @spl_kmem_cache_taskq, align 4
  %12 = call i32 @spl_register_shrinker(i32* @spl_kmem_cache_shrinker)
  ret i32 0
}

declare dso_local i32 @init_rwsem(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @taskq_create(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @spl_register_shrinker(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
