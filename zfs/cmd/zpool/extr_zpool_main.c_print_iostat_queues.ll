; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_main.c_print_iostat_queues.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_main.c_print_iostat_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }
%struct.stat_array = type { i32* }

@ZPOOL_CONFIG_VDEV_SYNC_R_PEND_QUEUE = common dso_local global i8* null, align 8
@ZPOOL_CONFIG_VDEV_SYNC_R_ACTIVE_QUEUE = common dso_local global i8* null, align 8
@ZPOOL_CONFIG_VDEV_SYNC_W_PEND_QUEUE = common dso_local global i8* null, align 8
@ZPOOL_CONFIG_VDEV_SYNC_W_ACTIVE_QUEUE = common dso_local global i8* null, align 8
@ZPOOL_CONFIG_VDEV_ASYNC_R_PEND_QUEUE = common dso_local global i8* null, align 8
@ZPOOL_CONFIG_VDEV_ASYNC_R_ACTIVE_QUEUE = common dso_local global i8* null, align 8
@ZPOOL_CONFIG_VDEV_ASYNC_W_PEND_QUEUE = common dso_local global i8* null, align 8
@ZPOOL_CONFIG_VDEV_ASYNC_W_ACTIVE_QUEUE = common dso_local global i8* null, align 8
@ZPOOL_CONFIG_VDEV_SCRUB_PEND_QUEUE = common dso_local global i8* null, align 8
@ZPOOL_CONFIG_VDEV_SCRUB_ACTIVE_QUEUE = common dso_local global i8* null, align 8
@ZPOOL_CONFIG_VDEV_TRIM_PEND_QUEUE = common dso_local global i8* null, align 8
@ZPOOL_CONFIG_VDEV_TRIM_ACTIVE_QUEUE = common dso_local global i8* null, align 8
@IOS_QUEUES = common dso_local global i32 0, align 4
@ZFS_NICENUM_RAW = common dso_local global i32 0, align 4
@ZFS_NICENUM_1024 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32*, i32*)* @print_iostat_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_iostat_queues(%struct.TYPE_4__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [12 x i8*], align 16
  %10 = alloca %struct.stat_array*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %13 = getelementptr inbounds [12 x i8*], [12 x i8*]* %9, i64 0, i64 0
  %14 = load i8*, i8** @ZPOOL_CONFIG_VDEV_SYNC_R_PEND_QUEUE, align 8
  store i8* %14, i8** %13, align 8
  %15 = getelementptr inbounds i8*, i8** %13, i64 1
  %16 = load i8*, i8** @ZPOOL_CONFIG_VDEV_SYNC_R_ACTIVE_QUEUE, align 8
  store i8* %16, i8** %15, align 8
  %17 = getelementptr inbounds i8*, i8** %15, i64 1
  %18 = load i8*, i8** @ZPOOL_CONFIG_VDEV_SYNC_W_PEND_QUEUE, align 8
  store i8* %18, i8** %17, align 8
  %19 = getelementptr inbounds i8*, i8** %17, i64 1
  %20 = load i8*, i8** @ZPOOL_CONFIG_VDEV_SYNC_W_ACTIVE_QUEUE, align 8
  store i8* %20, i8** %19, align 8
  %21 = getelementptr inbounds i8*, i8** %19, i64 1
  %22 = load i8*, i8** @ZPOOL_CONFIG_VDEV_ASYNC_R_PEND_QUEUE, align 8
  store i8* %22, i8** %21, align 8
  %23 = getelementptr inbounds i8*, i8** %21, i64 1
  %24 = load i8*, i8** @ZPOOL_CONFIG_VDEV_ASYNC_R_ACTIVE_QUEUE, align 8
  store i8* %24, i8** %23, align 8
  %25 = getelementptr inbounds i8*, i8** %23, i64 1
  %26 = load i8*, i8** @ZPOOL_CONFIG_VDEV_ASYNC_W_PEND_QUEUE, align 8
  store i8* %26, i8** %25, align 8
  %27 = getelementptr inbounds i8*, i8** %25, i64 1
  %28 = load i8*, i8** @ZPOOL_CONFIG_VDEV_ASYNC_W_ACTIVE_QUEUE, align 8
  store i8* %28, i8** %27, align 8
  %29 = getelementptr inbounds i8*, i8** %27, i64 1
  %30 = load i8*, i8** @ZPOOL_CONFIG_VDEV_SCRUB_PEND_QUEUE, align 8
  store i8* %30, i8** %29, align 8
  %31 = getelementptr inbounds i8*, i8** %29, i64 1
  %32 = load i8*, i8** @ZPOOL_CONFIG_VDEV_SCRUB_ACTIVE_QUEUE, align 8
  store i8* %32, i8** %31, align 8
  %33 = getelementptr inbounds i8*, i8** %31, i64 1
  %34 = load i8*, i8** @ZPOOL_CONFIG_VDEV_TRIM_PEND_QUEUE, align 8
  store i8* %34, i8** %33, align 8
  %35 = getelementptr inbounds i8*, i8** %33, i64 1
  %36 = load i8*, i8** @ZPOOL_CONFIG_VDEV_TRIM_ACTIVE_QUEUE, align 8
  store i8* %36, i8** %35, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %38 = load i32, i32* @IOS_QUEUES, align 4
  %39 = call i32 @default_column_width(%struct.TYPE_4__* %37, i32 %38)
  store i32 %39, i32* %11, align 4
  %40 = getelementptr inbounds [12 x i8*], [12 x i8*]* %9, i64 0, i64 0
  %41 = getelementptr inbounds [12 x i8*], [12 x i8*]* %9, i64 0, i64 0
  %42 = call i32 @ARRAY_SIZE(i8** %41)
  %43 = load i32*, i32** %6, align 8
  %44 = call %struct.stat_array* @calc_and_alloc_stats_ex(i8** %40, i32 %42, i32* null, i32* %43)
  store %struct.stat_array* %44, %struct.stat_array** %10, align 8
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %3
  %50 = load i32, i32* @ZFS_NICENUM_RAW, align 4
  store i32 %50, i32* %12, align 4
  br label %53

51:                                               ; preds = %3
  %52 = load i32, i32* @ZFS_NICENUM_1024, align 4
  store i32 %52, i32* %12, align 4
  br label %53

53:                                               ; preds = %51, %49
  store i32 0, i32* %7, align 4
  br label %54

54:                                               ; preds = %75, %53
  %55 = load i32, i32* %7, align 4
  %56 = getelementptr inbounds [12 x i8*], [12 x i8*]* %9, i64 0, i64 0
  %57 = call i32 @ARRAY_SIZE(i8** %56)
  %58 = icmp slt i32 %55, %57
  br i1 %58, label %59, label %78

59:                                               ; preds = %54
  %60 = load %struct.stat_array*, %struct.stat_array** %10, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.stat_array, %struct.stat_array* %60, i64 %62
  %64 = getelementptr inbounds %struct.stat_array, %struct.stat_array* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* %11, align 4
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @print_one_stat(i32 %68, i32 %69, i32 %70, i32 %73)
  br label %75

75:                                               ; preds = %59
  %76 = load i32, i32* %7, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %7, align 4
  br label %54

78:                                               ; preds = %54
  %79 = load %struct.stat_array*, %struct.stat_array** %10, align 8
  %80 = getelementptr inbounds [12 x i8*], [12 x i8*]* %9, i64 0, i64 0
  %81 = call i32 @ARRAY_SIZE(i8** %80)
  %82 = call i32 @free_calc_stats(%struct.stat_array* %79, i32 %81)
  ret void
}

declare dso_local i32 @default_column_width(%struct.TYPE_4__*, i32) #1

declare dso_local %struct.stat_array* @calc_and_alloc_stats_ex(i8**, i32, i32*, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i8**) #1

declare dso_local i32 @print_one_stat(i32, i32, i32, i32) #1

declare dso_local i32 @free_calc_stats(%struct.stat_array*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
