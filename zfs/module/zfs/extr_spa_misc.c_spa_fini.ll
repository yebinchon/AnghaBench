; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_spa_misc.c_spa_fini.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_spa_misc.c_spa_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@spa_namespace_avl = common dso_local global i32 0, align 4
@spa_spare_avl = common dso_local global i32 0, align 4
@spa_l2cache_avl = common dso_local global i32 0, align 4
@spa_namespace_cv = common dso_local global i32 0, align 4
@spa_namespace_lock = common dso_local global i32 0, align 4
@spa_spare_lock = common dso_local global i32 0, align 4
@spa_l2cache_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @spa_fini() #0 {
  %1 = call i32 (...) @l2arc_stop()
  %2 = call i32 (...) @spa_evict_all()
  %3 = call i32 (...) @vdev_file_fini()
  %4 = call i32 (...) @vdev_cache_stat_fini()
  %5 = call i32 (...) @vdev_mirror_stat_fini()
  %6 = call i32 (...) @vdev_raidz_math_fini()
  %7 = call i32 (...) @zil_fini()
  %8 = call i32 (...) @dmu_fini()
  %9 = call i32 (...) @zio_fini()
  %10 = call i32 (...) @ddt_fini()
  %11 = call i32 (...) @metaslab_stat_fini()
  %12 = call i32 (...) @zfs_btree_fini()
  %13 = call i32 (...) @unique_fini()
  %14 = call i32 (...) @zfs_refcount_fini()
  %15 = call i32 (...) @fm_fini()
  %16 = call i32 (...) @scan_fini()
  %17 = call i32 (...) @qat_fini()
  %18 = call i32 (...) @spa_import_progress_destroy()
  %19 = call i32 @avl_destroy(i32* @spa_namespace_avl)
  %20 = call i32 @avl_destroy(i32* @spa_spare_avl)
  %21 = call i32 @avl_destroy(i32* @spa_l2cache_avl)
  %22 = call i32 @cv_destroy(i32* @spa_namespace_cv)
  %23 = call i32 @mutex_destroy(i32* @spa_namespace_lock)
  %24 = call i32 @mutex_destroy(i32* @spa_spare_lock)
  %25 = call i32 @mutex_destroy(i32* @spa_l2cache_lock)
  ret void
}

declare dso_local i32 @l2arc_stop(...) #1

declare dso_local i32 @spa_evict_all(...) #1

declare dso_local i32 @vdev_file_fini(...) #1

declare dso_local i32 @vdev_cache_stat_fini(...) #1

declare dso_local i32 @vdev_mirror_stat_fini(...) #1

declare dso_local i32 @vdev_raidz_math_fini(...) #1

declare dso_local i32 @zil_fini(...) #1

declare dso_local i32 @dmu_fini(...) #1

declare dso_local i32 @zio_fini(...) #1

declare dso_local i32 @ddt_fini(...) #1

declare dso_local i32 @metaslab_stat_fini(...) #1

declare dso_local i32 @zfs_btree_fini(...) #1

declare dso_local i32 @unique_fini(...) #1

declare dso_local i32 @zfs_refcount_fini(...) #1

declare dso_local i32 @fm_fini(...) #1

declare dso_local i32 @scan_fini(...) #1

declare dso_local i32 @qat_fini(...) #1

declare dso_local i32 @spa_import_progress_destroy(...) #1

declare dso_local i32 @avl_destroy(i32*) #1

declare dso_local i32 @cv_destroy(i32*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
