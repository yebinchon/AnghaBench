; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_pool.c_dsl_pool_open_impl.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_pool.c_dsl_pool_open_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i8*, i32, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32* }

@KM_SLEEP = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@dsl_dataset_t = common dso_local global i32 0, align 4
@ds_dirty_link = common dso_local global i32 0, align 4
@zilog_t = common dso_local global i32 0, align 4
@zl_dirty_link = common dso_local global i32 0, align 4
@dsl_dir_t = common dso_local global i32 0, align 4
@dd_dirty_link = common dso_local global i32 0, align 4
@dsl_sync_task_t = common dso_local global i32 0, align 4
@dst_node = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"dp_sync_taskq\00", align 1
@zfs_sync_taskq_batch_pct = common dso_local global i32 0, align 4
@minclsyspri = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@TASKQ_THREADS_CPU_PCT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"dp_zil_clean_taskq\00", align 1
@zfs_zil_clean_taskq_nthr_pct = common dso_local global i32 0, align 4
@zfs_zil_clean_taskq_minalloc = common dso_local global i32 0, align 4
@zfs_zil_clean_taskq_maxalloc = common dso_local global i32 0, align 4
@TASKQ_PREPOPULATE = common dso_local global i32 0, align 4
@MUTEX_DEFAULT = common dso_local global i32 0, align 4
@CV_DEFAULT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"z_iput\00", align 1
@max_ncpus = common dso_local global i32 0, align 4
@defclsyspri = common dso_local global i32 0, align 4
@TASKQ_DYNAMIC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"z_unlinked_drain\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_5__* (i32*, i32)* @dsl_pool_open_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_5__* @dsl_pool_open_impl(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32*, i32** %3, align 8
  %8 = call i32* @spa_get_rootblkptr(i32* %7)
  store i32* %8, i32** %6, align 8
  %9 = load i32, i32* @KM_SLEEP, align 4
  %10 = call %struct.TYPE_5__* @kmem_zalloc(i32 80, i32 %9)
  store %struct.TYPE_5__* %10, %struct.TYPE_5__** %5, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 13
  store i32* %11, i32** %13, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 12
  store i32 %15, i32* %17, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 11
  %20 = load i32, i32* @B_TRUE, align 4
  %21 = call i32 @rrw_init(i32* %19, i32 %20)
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @txg_init(%struct.TYPE_5__* %22, i32 %23)
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @mmp_init(i32* %25)
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 10
  %29 = load i32*, i32** %3, align 8
  %30 = load i32, i32* @dsl_dataset_t, align 4
  %31 = load i32, i32* @ds_dirty_link, align 4
  %32 = call i32 @offsetof(i32 %30, i32 %31)
  %33 = call i32 @txg_list_create(i32* %28, i32* %29, i32 %32)
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 9
  %36 = load i32*, i32** %3, align 8
  %37 = load i32, i32* @zilog_t, align 4
  %38 = load i32, i32* @zl_dirty_link, align 4
  %39 = call i32 @offsetof(i32 %37, i32 %38)
  %40 = call i32 @txg_list_create(i32* %35, i32* %36, i32 %39)
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 8
  %43 = load i32*, i32** %3, align 8
  %44 = load i32, i32* @dsl_dir_t, align 4
  %45 = load i32, i32* @dd_dirty_link, align 4
  %46 = call i32 @offsetof(i32 %44, i32 %45)
  %47 = call i32 @txg_list_create(i32* %42, i32* %43, i32 %46)
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 7
  %50 = load i32*, i32** %3, align 8
  %51 = load i32, i32* @dsl_sync_task_t, align 4
  %52 = load i32, i32* @dst_node, align 4
  %53 = call i32 @offsetof(i32 %51, i32 %52)
  %54 = call i32 @txg_list_create(i32* %49, i32* %50, i32 %53)
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 6
  %57 = load i32*, i32** %3, align 8
  %58 = load i32, i32* @dsl_sync_task_t, align 4
  %59 = load i32, i32* @dst_node, align 4
  %60 = call i32 @offsetof(i32 %58, i32 %59)
  %61 = call i32 @txg_list_create(i32* %56, i32* %57, i32 %60)
  %62 = load i32, i32* @zfs_sync_taskq_batch_pct, align 4
  %63 = load i32, i32* @minclsyspri, align 4
  %64 = load i32, i32* @INT_MAX, align 4
  %65 = load i32, i32* @TASKQ_THREADS_CPU_PCT, align 4
  %66 = call i8* @taskq_create(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %62, i32 %63, i32 1, i32 %64, i32 %65)
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 5
  store i8* %66, i8** %68, align 8
  %69 = load i32, i32* @zfs_zil_clean_taskq_nthr_pct, align 4
  %70 = load i32, i32* @minclsyspri, align 4
  %71 = load i32, i32* @zfs_zil_clean_taskq_minalloc, align 4
  %72 = load i32, i32* @zfs_zil_clean_taskq_maxalloc, align 4
  %73 = load i32, i32* @TASKQ_PREPOPULATE, align 4
  %74 = load i32, i32* @TASKQ_THREADS_CPU_PCT, align 4
  %75 = or i32 %73, %74
  %76 = call i8* @taskq_create(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %69, i32 %70, i32 %71, i32 %72, i32 %75)
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 4
  store i8* %76, i8** %78, align 8
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 3
  %81 = load i32, i32* @MUTEX_DEFAULT, align 4
  %82 = call i32 @mutex_init(i32* %80, i32* null, i32 %81, i32* null)
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 2
  %85 = load i32, i32* @CV_DEFAULT, align 4
  %86 = call i32 @cv_init(i32* %84, i32* null, i32 %85, i32* null)
  %87 = load i32, i32* @max_ncpus, align 4
  %88 = load i32, i32* @defclsyspri, align 4
  %89 = load i32, i32* @max_ncpus, align 4
  %90 = mul nsw i32 %89, 8
  %91 = load i32, i32* @INT_MAX, align 4
  %92 = load i32, i32* @TASKQ_PREPOPULATE, align 4
  %93 = load i32, i32* @TASKQ_DYNAMIC, align 4
  %94 = or i32 %92, %93
  %95 = call i8* @taskq_create(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %87, i32 %88, i32 %90, i32 %91, i32 %94)
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 1
  store i8* %95, i8** %97, align 8
  %98 = load i32, i32* @max_ncpus, align 4
  %99 = load i32, i32* @defclsyspri, align 4
  %100 = load i32, i32* @max_ncpus, align 4
  %101 = load i32, i32* @INT_MAX, align 4
  %102 = load i32, i32* @TASKQ_PREPOPULATE, align 4
  %103 = load i32, i32* @TASKQ_DYNAMIC, align 4
  %104 = or i32 %102, %103
  %105 = call i8* @taskq_create(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %98, i32 %99, i32 %100, i32 %101, i32 %104)
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  store i8* %105, i8** %107, align 8
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  ret %struct.TYPE_5__* %108
}

declare dso_local i32* @spa_get_rootblkptr(i32*) #1

declare dso_local %struct.TYPE_5__* @kmem_zalloc(i32, i32) #1

declare dso_local i32 @rrw_init(i32*, i32) #1

declare dso_local i32 @txg_init(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @mmp_init(i32*) #1

declare dso_local i32 @txg_list_create(i32*, i32*, i32) #1

declare dso_local i32 @offsetof(i32, i32) #1

declare dso_local i8* @taskq_create(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mutex_init(i32*, i32*, i32, i32*) #1

declare dso_local i32 @cv_init(i32*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
