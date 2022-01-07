; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_vdev_removal.c_spa_vdev_remove_top.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_vdev_removal.c_spa_vdev_remove_top.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i32, i32*, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }

@TXG_CONCURRENT_STATES = common dso_local global i64 0, align 8
@TXG_DEFER_SIZE = common dso_local global i64 0, align 8
@FTAG = common dso_local global i32 0, align 4
@VDEV_INITIALIZE_ACTIVE = common dso_local global i32 0, align 4
@VDEV_TRIM_ACTIVE = common dso_local global i32 0, align 4
@SPA_ASYNC_INITIALIZE_RESTART = common dso_local global i32 0, align 4
@SPA_ASYNC_TRIM_RESTART = common dso_local global i32 0, align 4
@SPA_ASYNC_AUTOTRIM_RESTART = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@VDD_DTL = common dso_local global i32 0, align 4
@vdev_remove_initiate_sync = common dso_local global i32 0, align 4
@ZFS_SPACE_CHECK_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i64*)* @spa_vdev_remove_top to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spa_vdev_remove_top(%struct.TYPE_14__* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i64* %1, i64** %5, align 8
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 3
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  store %struct.TYPE_15__* %12, %struct.TYPE_15__** %6, align 8
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %14 = call i32 @spa_vdev_remove_top_check(%struct.TYPE_14__* %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %7, align 4
  store i32 %18, i32* %3, align 4
  br label %98

19:                                               ; preds = %2
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %8, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = call i32 @metaslab_group_passivate(i32* %23)
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %26 = load i64*, i64** %5, align 8
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @TXG_CONCURRENT_STATES, align 8
  %29 = add nsw i64 %27, %28
  %30 = load i64, i64* @TXG_DEFER_SIZE, align 8
  %31 = add nsw i64 %29, %30
  %32 = load i32, i32* @FTAG, align 4
  %33 = call i32 @spa_vdev_config_exit(%struct.TYPE_15__* %25, i32* null, i64 %31, i32 0, i32 %32)
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %35 = call i32 @spa_reset_logs(%struct.TYPE_15__* %34)
  store i32 %35, i32* %7, align 4
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %37 = load i32, i32* @VDEV_INITIALIZE_ACTIVE, align 4
  %38 = call i32 @vdev_initialize_stop_all(%struct.TYPE_14__* %36, i32 %37)
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %40 = load i32, i32* @VDEV_TRIM_ACTIVE, align 4
  %41 = call i32 @vdev_trim_stop_all(%struct.TYPE_14__* %39, i32 %40)
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %43 = call i32 @vdev_autotrim_stop_wait(%struct.TYPE_14__* %42)
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %45 = call i64 @spa_vdev_config_enter(%struct.TYPE_15__* %44)
  %46 = load i64*, i64** %5, align 8
  store i64 %45, i64* %46, align 8
  %47 = load i32, i32* %7, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %19
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %51 = call i32 @spa_vdev_remove_top_check(%struct.TYPE_14__* %50)
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %49, %19
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %52
  %56 = load i32*, i32** %8, align 8
  %57 = call i32 @metaslab_group_activate(i32* %56)
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %59 = load i32, i32* @SPA_ASYNC_INITIALIZE_RESTART, align 4
  %60 = call i32 @spa_async_request(%struct.TYPE_15__* %58, i32 %59)
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %62 = load i32, i32* @SPA_ASYNC_TRIM_RESTART, align 4
  %63 = call i32 @spa_async_request(%struct.TYPE_15__* %61, i32 %62)
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %65 = load i32, i32* @SPA_ASYNC_AUTOTRIM_RESTART, align 4
  %66 = call i32 @spa_async_request(%struct.TYPE_15__* %64, i32 %65)
  %67 = load i32, i32* %7, align 4
  store i32 %67, i32* %3, align 4
  br label %98

68:                                               ; preds = %52
  %69 = load i32, i32* @B_TRUE, align 4
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 8
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %73 = load i32, i32* @VDD_DTL, align 4
  %74 = load i64*, i64** %5, align 8
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @vdev_dirty_leaves(%struct.TYPE_14__* %72, i32 %73, i64 %75)
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %78 = call i32 @vdev_config_dirty(%struct.TYPE_14__* %77)
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i64*, i64** %5, align 8
  %83 = load i64, i64* %82, align 8
  %84 = call i32* @dmu_tx_create_assigned(i32 %81, i64 %83)
  store i32* %84, i32** %9, align 8
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @vdev_remove_initiate_sync, align 4
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = inttoptr i64 %91 to i8*
  %93 = load i32, i32* @ZFS_SPACE_CHECK_NONE, align 4
  %94 = load i32*, i32** %9, align 8
  %95 = call i32 @dsl_sync_task_nowait(i32 %87, i32 %88, i8* %92, i32 0, i32 %93, i32* %94)
  %96 = load i32*, i32** %9, align 8
  %97 = call i32 @dmu_tx_commit(i32* %96)
  store i32 0, i32* %3, align 4
  br label %98

98:                                               ; preds = %68, %55, %17
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i32 @spa_vdev_remove_top_check(%struct.TYPE_14__*) #1

declare dso_local i32 @metaslab_group_passivate(i32*) #1

declare dso_local i32 @spa_vdev_config_exit(%struct.TYPE_15__*, i32*, i64, i32, i32) #1

declare dso_local i32 @spa_reset_logs(%struct.TYPE_15__*) #1

declare dso_local i32 @vdev_initialize_stop_all(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @vdev_trim_stop_all(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @vdev_autotrim_stop_wait(%struct.TYPE_14__*) #1

declare dso_local i64 @spa_vdev_config_enter(%struct.TYPE_15__*) #1

declare dso_local i32 @metaslab_group_activate(i32*) #1

declare dso_local i32 @spa_async_request(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @vdev_dirty_leaves(%struct.TYPE_14__*, i32, i64) #1

declare dso_local i32 @vdev_config_dirty(%struct.TYPE_14__*) #1

declare dso_local i32* @dmu_tx_create_assigned(i32, i64) #1

declare dso_local i32 @dsl_sync_task_nowait(i32, i32, i8*, i32, i32, i32*) #1

declare dso_local i32 @dmu_tx_commit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
