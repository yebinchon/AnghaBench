; ModuleID = '/home/carl/AnghaBench/zfs/cmd/ztest/extr_ztest.c_ztest_device_removal.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/ztest/extr_ztest.c_ztest_device_removal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_14__ = type { i32 }

@ztest_spa = common dso_local global %struct.TYPE_15__* null, align 8
@ztest_vdev_lock = common dso_local global i32 0, align 4
@ztest_device_removal_active = common dso_local global i64 0, align 8
@SCL_VDEV = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@RW_READER = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i64 0, align 8
@B_TRUE = common dso_local global i64 0, align 8
@DSS_SCANNING = common dso_local global i64 0, align 8
@POOL_SCAN_SCRUB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ztest_device_removal(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** @ztest_spa, align 8
  store %struct.TYPE_15__* %9, %struct.TYPE_15__** %5, align 8
  %10 = call i32 @mutex_enter(i32* @ztest_vdev_lock)
  %11 = load i64, i64* @ztest_device_removal_active, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = call i32 @mutex_exit(i32* @ztest_vdev_lock)
  br label %80

15:                                               ; preds = %2
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %17 = load i32, i32* @SCL_VDEV, align 4
  %18 = load i32, i32* @FTAG, align 4
  %19 = load i32, i32* @RW_READER, align 4
  %20 = call i32 @spa_config_enter(%struct.TYPE_15__* %16, i32 %17, i32 %18, i32 %19)
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %23 = load i64, i64* @B_FALSE, align 8
  %24 = call i32 @ztest_random_vdev_top(%struct.TYPE_15__* %22, i64 %23)
  %25 = call %struct.TYPE_14__* @vdev_lookup_top(%struct.TYPE_15__* %21, i32 %24)
  store %struct.TYPE_14__* %25, %struct.TYPE_14__** %6, align 8
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %7, align 4
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %30 = load i32, i32* @SCL_VDEV, align 4
  %31 = load i32, i32* @FTAG, align 4
  %32 = call i32 @spa_config_exit(%struct.TYPE_15__* %29, i32 %30, i32 %31)
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load i64, i64* @B_FALSE, align 8
  %36 = call i32 @spa_vdev_remove(%struct.TYPE_15__* %33, i32 %34, i64 %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %57

39:                                               ; preds = %15
  %40 = load i64, i64* @B_TRUE, align 8
  store i64 %40, i64* @ztest_device_removal_active, align 8
  %41 = call i32 @mutex_exit(i32* @ztest_vdev_lock)
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %43 = call i32 @spa_get_dsl(%struct.TYPE_15__* %42)
  %44 = call i32 @txg_wait_synced(i32 %43, i32 0)
  br label %45

45:                                               ; preds = %52, %39
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @DSS_SCANNING, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %45
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %54 = call i32 @spa_get_dsl(%struct.TYPE_15__* %53)
  %55 = call i32 @txg_wait_synced(i32 %54, i32 0)
  br label %45

56:                                               ; preds = %45
  br label %59

57:                                               ; preds = %15
  %58 = call i32 @mutex_exit(i32* @ztest_vdev_lock)
  br label %80

59:                                               ; preds = %56
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %61 = load i32, i32* @POOL_SCAN_SCRUB, align 4
  %62 = call i32 @spa_scan(%struct.TYPE_15__* %60, i32 %61)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %76

65:                                               ; preds = %59
  br label %66

66:                                               ; preds = %71, %65
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %68 = call i32 @spa_get_dsl(%struct.TYPE_15__* %67)
  %69 = call i64 @dsl_scan_scrubbing(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %73 = call i32 @spa_get_dsl(%struct.TYPE_15__* %72)
  %74 = call i32 @txg_wait_synced(i32 %73, i32 0)
  br label %66

75:                                               ; preds = %66
  br label %76

76:                                               ; preds = %75, %59
  %77 = call i32 @mutex_enter(i32* @ztest_vdev_lock)
  %78 = load i64, i64* @B_FALSE, align 8
  store i64 %78, i64* @ztest_device_removal_active, align 8
  %79 = call i32 @mutex_exit(i32* @ztest_vdev_lock)
  br label %80

80:                                               ; preds = %76, %57, %13
  ret void
}

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @spa_config_enter(%struct.TYPE_15__*, i32, i32, i32) #1

declare dso_local %struct.TYPE_14__* @vdev_lookup_top(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @ztest_random_vdev_top(%struct.TYPE_15__*, i64) #1

declare dso_local i32 @spa_config_exit(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @spa_vdev_remove(%struct.TYPE_15__*, i32, i64) #1

declare dso_local i32 @txg_wait_synced(i32, i32) #1

declare dso_local i32 @spa_get_dsl(%struct.TYPE_15__*) #1

declare dso_local i32 @spa_scan(%struct.TYPE_15__*, i32) #1

declare dso_local i64 @dsl_scan_scrubbing(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
