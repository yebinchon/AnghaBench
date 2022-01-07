; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_spa_stats.c_spa_txg_history_init_io.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_spa_stats.c_spa_txg_history_init_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i32* }

@zfs_txg_history = common dso_local global i64 0, align 8
@KM_SLEEP = common dso_local global i32 0, align 4
@SCL_CONFIG = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@RW_READER = common dso_local global i32 0, align 4
@TXG_MASK = common dso_local global i64 0, align 8
@TXG_STATE_WAIT_FOR_SYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_11__* @spa_txg_history_init_io(%struct.TYPE_12__* %0, i64 %1, %struct.TYPE_13__* %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %7, align 8
  %9 = load i64, i64* @zfs_txg_history, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %4, align 8
  br label %49

12:                                               ; preds = %3
  %13 = load i32, i32* @KM_SLEEP, align 4
  %14 = call %struct.TYPE_11__* @kmem_alloc(i32 16, i32 %13)
  store %struct.TYPE_11__* %14, %struct.TYPE_11__** %8, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %16 = load i32, i32* @SCL_CONFIG, align 4
  %17 = load i32, i32* @FTAG, align 4
  %18 = load i32, i32* @RW_READER, align 4
  %19 = call i32 @spa_config_enter(%struct.TYPE_12__* %15, i32 %16, i32 %17, i32 %18)
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 2
  %25 = call i32 @vdev_get_stats(i32 %22, i32* %24)
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %27 = load i32, i32* @SCL_CONFIG, align 4
  %28 = load i32, i32* @FTAG, align 4
  %29 = call i32 @spa_config_exit(%struct.TYPE_12__* %26, i32 %27, i32 %28)
  %30 = load i64, i64* %6, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* @TXG_MASK, align 8
  %38 = and i64 %36, %37
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 8
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %44 = load i64, i64* %6, align 8
  %45 = load i32, i32* @TXG_STATE_WAIT_FOR_SYNC, align 4
  %46 = call i32 (...) @gethrtime()
  %47 = call i32 @spa_txg_history_set(%struct.TYPE_12__* %43, i64 %44, i32 %45, i32 %46)
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  store %struct.TYPE_11__* %48, %struct.TYPE_11__** %4, align 8
  br label %49

49:                                               ; preds = %12, %11
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  ret %struct.TYPE_11__* %50
}

declare dso_local %struct.TYPE_11__* @kmem_alloc(i32, i32) #1

declare dso_local i32 @spa_config_enter(%struct.TYPE_12__*, i32, i32, i32) #1

declare dso_local i32 @vdev_get_stats(i32, i32*) #1

declare dso_local i32 @spa_config_exit(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @spa_txg_history_set(%struct.TYPE_12__*, i64, i32, i32) #1

declare dso_local i32 @gethrtime(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
