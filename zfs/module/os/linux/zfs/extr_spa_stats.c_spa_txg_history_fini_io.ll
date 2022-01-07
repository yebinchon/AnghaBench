; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_spa_stats.c_spa_txg_history_fini_io.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_spa_stats.c_spa_txg_history_fini_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__, %struct.TYPE_15__, i32 }
%struct.TYPE_12__ = type { i64*, i64* }
%struct.TYPE_15__ = type { i64*, i64* }

@zfs_txg_history = common dso_local global i64 0, align 8
@SCL_CONFIG = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@RW_READER = common dso_local global i32 0, align 4
@TXG_STATE_SYNCED = common dso_local global i32 0, align 4
@ZIO_TYPE_READ = common dso_local global i64 0, align 8
@ZIO_TYPE_WRITE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @spa_txg_history_fini_io(%struct.TYPE_14__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %4, align 8
  %5 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %6 = icmp eq %struct.TYPE_13__* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  br label %107

8:                                                ; preds = %2
  %9 = load i64, i64* @zfs_txg_history, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %13 = call i32 @kmem_free(%struct.TYPE_13__* %12, i32 48)
  br label %107

14:                                               ; preds = %8
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %16 = load i32, i32* @SCL_CONFIG, align 4
  %17 = load i32, i32* @FTAG, align 4
  %18 = load i32, i32* @RW_READER, align 4
  %19 = call i32 @spa_config_enter(%struct.TYPE_14__* %15, i32 %16, i32 %17, i32 %18)
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 2
  %25 = call i32 @vdev_get_stats(i32 %22, %struct.TYPE_15__* %24)
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %27 = load i32, i32* @SCL_CONFIG, align 4
  %28 = load i32, i32* @FTAG, align 4
  %29 = call i32 @spa_config_exit(%struct.TYPE_14__* %26, i32 %27, i32 %28)
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @TXG_STATE_SYNCED, align 4
  %35 = call i32 (...) @gethrtime()
  %36 = call i32 @spa_txg_history_set(%struct.TYPE_14__* %30, i32 %33, i32 %34, i32 %35)
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 1
  %44 = load i64*, i64** %43, align 8
  %45 = load i64, i64* @ZIO_TYPE_READ, align 8
  %46 = getelementptr inbounds i64, i64* %44, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 1
  %51 = load i64*, i64** %50, align 8
  %52 = load i64, i64* @ZIO_TYPE_READ, align 8
  %53 = getelementptr inbounds i64, i64* %51, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = sub nsw i64 %47, %54
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 1
  %59 = load i64*, i64** %58, align 8
  %60 = load i64, i64* @ZIO_TYPE_WRITE, align 8
  %61 = getelementptr inbounds i64, i64* %59, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 1
  %66 = load i64*, i64** %65, align 8
  %67 = load i64, i64* @ZIO_TYPE_WRITE, align 8
  %68 = getelementptr inbounds i64, i64* %66, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = sub nsw i64 %62, %69
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 0
  %74 = load i64*, i64** %73, align 8
  %75 = load i64, i64* @ZIO_TYPE_READ, align 8
  %76 = getelementptr inbounds i64, i64* %74, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  %81 = load i64*, i64** %80, align 8
  %82 = load i64, i64* @ZIO_TYPE_READ, align 8
  %83 = getelementptr inbounds i64, i64* %81, i64 %82
  %84 = load i64, i64* %83, align 8
  %85 = sub nsw i64 %77, %84
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 0
  %89 = load i64*, i64** %88, align 8
  %90 = load i64, i64* @ZIO_TYPE_WRITE, align 8
  %91 = getelementptr inbounds i64, i64* %89, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  %96 = load i64*, i64** %95, align 8
  %97 = load i64, i64* @ZIO_TYPE_WRITE, align 8
  %98 = getelementptr inbounds i64, i64* %96, i64 %97
  %99 = load i64, i64* %98, align 8
  %100 = sub nsw i64 %92, %99
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @spa_txg_history_set_io(%struct.TYPE_14__* %37, i32 %40, i64 %55, i64 %70, i64 %85, i64 %100, i32 %103)
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %106 = call i32 @kmem_free(%struct.TYPE_13__* %105, i32 48)
  br label %107

107:                                              ; preds = %14, %11, %7
  ret void
}

declare dso_local i32 @kmem_free(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @spa_config_enter(%struct.TYPE_14__*, i32, i32, i32) #1

declare dso_local i32 @vdev_get_stats(i32, %struct.TYPE_15__*) #1

declare dso_local i32 @spa_config_exit(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @spa_txg_history_set(%struct.TYPE_14__*, i32, i32, i32) #1

declare dso_local i32 @gethrtime(...) #1

declare dso_local i32 @spa_txg_history_set_io(%struct.TYPE_14__*, i32, i64, i64, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
