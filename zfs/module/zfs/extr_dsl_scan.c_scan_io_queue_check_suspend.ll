; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_scan.c_scan_io_queue_check_suspend.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_scan.c_scan_io_queue_check_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__*, %struct.TYPE_6__, i64 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_6__ = type { i64 }

@zfs_dirty_data_max = common dso_local global i32 0, align 4
@POOL_SCAN_RESILVER = common dso_local global i64 0, align 8
@zfs_resilver_min_time_ms = common dso_local global i32 0, align 4
@zfs_scrub_min_time_ms = common dso_local global i32 0, align 4
@zfs_vdev_async_write_active_min_dirty_percent = common dso_local global i32 0, align 4
@zfs_txg_timeout = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @scan_io_queue_check_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scan_io_queue_check_suspend(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %8 = call i64 (...) @gethrtime()
  store i64 %8, i64* %3, align 8
  %9 = load i64, i64* %3, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = sub nsw i64 %9, %12
  store i64 %13, i64* %4, align 8
  %14 = load i64, i64* %3, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = sub nsw i64 %14, %21
  store i64 %22, i64* %5, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = mul nsw i32 %27, 100
  %29 = load i32, i32* @zfs_dirty_data_max, align 4
  %30 = sdiv i32 %28, %29
  store i32 %30, i32* %6, align 4
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @POOL_SCAN_RESILVER, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %1
  %38 = load i32, i32* @zfs_resilver_min_time_ms, align 4
  br label %41

39:                                               ; preds = %1
  %40 = load i32, i32* @zfs_scrub_min_time_ms, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %38, %37 ], [ %40, %39 ]
  store i32 %42, i32* %7, align 4
  %43 = load i64, i64* %4, align 8
  %44 = call i32 @NSEC2MSEC(i64 %43)
  %45 = load i32, i32* %7, align 4
  %46 = icmp sgt i32 %44, %45
  br i1 %46, label %47, label %62

47:                                               ; preds = %41
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @zfs_vdev_async_write_active_min_dirty_percent, align 4
  %50 = icmp sge i32 %48, %49
  br i1 %50, label %70, label %51

51:                                               ; preds = %47
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = call i64 @txg_sync_waiting(%struct.TYPE_8__* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %70, label %57

57:                                               ; preds = %51
  %58 = load i64, i64* %5, align 8
  %59 = call i64 @NSEC2SEC(i64 %58)
  %60 = load i64, i64* @zfs_txg_timeout, align 8
  %61 = icmp sge i64 %59, %60
  br i1 %61, label %70, label %62

62:                                               ; preds = %57, %41
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %66, align 8
  %68 = call i64 @spa_shutting_down(%struct.TYPE_9__* %67)
  %69 = icmp ne i64 %68, 0
  br label %70

70:                                               ; preds = %62, %57, %51, %47
  %71 = phi i1 [ true, %57 ], [ true, %51 ], [ true, %47 ], [ %69, %62 ]
  %72 = zext i1 %71 to i32
  ret i32 %72
}

declare dso_local i64 @gethrtime(...) #1

declare dso_local i32 @NSEC2MSEC(i64) #1

declare dso_local i64 @txg_sync_waiting(%struct.TYPE_8__*) #1

declare dso_local i64 @NSEC2SEC(i64) #1

declare dso_local i64 @spa_shutting_down(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
