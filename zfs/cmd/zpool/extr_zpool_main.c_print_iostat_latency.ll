; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_main.c_print_iostat_latency.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_main.c_print_iostat_latency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }
%struct.stat_array = type { i32, i32 }

@ZPOOL_CONFIG_VDEV_TOT_R_LAT_HISTO = common dso_local global i8* null, align 8
@ZPOOL_CONFIG_VDEV_TOT_W_LAT_HISTO = common dso_local global i8* null, align 8
@ZPOOL_CONFIG_VDEV_DISK_R_LAT_HISTO = common dso_local global i8* null, align 8
@ZPOOL_CONFIG_VDEV_DISK_W_LAT_HISTO = common dso_local global i8* null, align 8
@ZPOOL_CONFIG_VDEV_SYNC_R_LAT_HISTO = common dso_local global i8* null, align 8
@ZPOOL_CONFIG_VDEV_SYNC_W_LAT_HISTO = common dso_local global i8* null, align 8
@ZPOOL_CONFIG_VDEV_ASYNC_R_LAT_HISTO = common dso_local global i8* null, align 8
@ZPOOL_CONFIG_VDEV_ASYNC_W_LAT_HISTO = common dso_local global i8* null, align 8
@ZPOOL_CONFIG_VDEV_SCRUB_LAT_HISTO = common dso_local global i8* null, align 8
@ZPOOL_CONFIG_VDEV_TRIM_LAT_HISTO = common dso_local global i8* null, align 8
@IOS_LATENCY = common dso_local global i32 0, align 4
@ZFS_NICENUM_RAWTIME = common dso_local global i32 0, align 4
@ZFS_NICENUM_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32*, i32*)* @print_iostat_latency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_iostat_latency(%struct.TYPE_4__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [10 x i8*], align 16
  %10 = alloca %struct.stat_array*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %13 = getelementptr inbounds [10 x i8*], [10 x i8*]* %9, i64 0, i64 0
  %14 = load i8*, i8** @ZPOOL_CONFIG_VDEV_TOT_R_LAT_HISTO, align 8
  store i8* %14, i8** %13, align 8
  %15 = getelementptr inbounds i8*, i8** %13, i64 1
  %16 = load i8*, i8** @ZPOOL_CONFIG_VDEV_TOT_W_LAT_HISTO, align 8
  store i8* %16, i8** %15, align 8
  %17 = getelementptr inbounds i8*, i8** %15, i64 1
  %18 = load i8*, i8** @ZPOOL_CONFIG_VDEV_DISK_R_LAT_HISTO, align 8
  store i8* %18, i8** %17, align 8
  %19 = getelementptr inbounds i8*, i8** %17, i64 1
  %20 = load i8*, i8** @ZPOOL_CONFIG_VDEV_DISK_W_LAT_HISTO, align 8
  store i8* %20, i8** %19, align 8
  %21 = getelementptr inbounds i8*, i8** %19, i64 1
  %22 = load i8*, i8** @ZPOOL_CONFIG_VDEV_SYNC_R_LAT_HISTO, align 8
  store i8* %22, i8** %21, align 8
  %23 = getelementptr inbounds i8*, i8** %21, i64 1
  %24 = load i8*, i8** @ZPOOL_CONFIG_VDEV_SYNC_W_LAT_HISTO, align 8
  store i8* %24, i8** %23, align 8
  %25 = getelementptr inbounds i8*, i8** %23, i64 1
  %26 = load i8*, i8** @ZPOOL_CONFIG_VDEV_ASYNC_R_LAT_HISTO, align 8
  store i8* %26, i8** %25, align 8
  %27 = getelementptr inbounds i8*, i8** %25, i64 1
  %28 = load i8*, i8** @ZPOOL_CONFIG_VDEV_ASYNC_W_LAT_HISTO, align 8
  store i8* %28, i8** %27, align 8
  %29 = getelementptr inbounds i8*, i8** %27, i64 1
  %30 = load i8*, i8** @ZPOOL_CONFIG_VDEV_SCRUB_LAT_HISTO, align 8
  store i8* %30, i8** %29, align 8
  %31 = getelementptr inbounds i8*, i8** %29, i64 1
  %32 = load i8*, i8** @ZPOOL_CONFIG_VDEV_TRIM_LAT_HISTO, align 8
  store i8* %32, i8** %31, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %34 = load i32, i32* @IOS_LATENCY, align 4
  %35 = call i32 @default_column_width(%struct.TYPE_4__* %33, i32 %34)
  store i32 %35, i32* %11, align 4
  %36 = getelementptr inbounds [10 x i8*], [10 x i8*]* %9, i64 0, i64 0
  %37 = getelementptr inbounds [10 x i8*], [10 x i8*]* %9, i64 0, i64 0
  %38 = call i32 @ARRAY_SIZE(i8** %37)
  %39 = load i32*, i32** %5, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = call %struct.stat_array* @calc_and_alloc_stats_ex(i8** %36, i32 %38, i32* %39, i32* %40)
  store %struct.stat_array* %41, %struct.stat_array** %10, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %3
  %47 = load i32, i32* @ZFS_NICENUM_RAWTIME, align 4
  store i32 %47, i32* %12, align 4
  br label %50

48:                                               ; preds = %3
  %49 = load i32, i32* @ZFS_NICENUM_TIME, align 4
  store i32 %49, i32* %12, align 4
  br label %50

50:                                               ; preds = %48, %46
  store i32 0, i32* %7, align 4
  br label %51

51:                                               ; preds = %77, %50
  %52 = load i32, i32* %7, align 4
  %53 = getelementptr inbounds [10 x i8*], [10 x i8*]* %9, i64 0, i64 0
  %54 = call i32 @ARRAY_SIZE(i8** %53)
  %55 = icmp slt i32 %52, %54
  br i1 %55, label %56, label %80

56:                                               ; preds = %51
  %57 = load %struct.stat_array*, %struct.stat_array** %10, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.stat_array, %struct.stat_array* %57, i64 %59
  %61 = getelementptr inbounds %struct.stat_array, %struct.stat_array* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.stat_array*, %struct.stat_array** %10, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.stat_array, %struct.stat_array* %63, i64 %65
  %67 = getelementptr inbounds %struct.stat_array, %struct.stat_array* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @single_histo_average(i32 %62, i32 %68)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* %11, align 4
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @print_one_stat(i32 %70, i32 %71, i32 %72, i32 %75)
  br label %77

77:                                               ; preds = %56
  %78 = load i32, i32* %7, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %7, align 4
  br label %51

80:                                               ; preds = %51
  %81 = load %struct.stat_array*, %struct.stat_array** %10, align 8
  %82 = getelementptr inbounds [10 x i8*], [10 x i8*]* %9, i64 0, i64 0
  %83 = call i32 @ARRAY_SIZE(i8** %82)
  %84 = call i32 @free_calc_stats(%struct.stat_array* %81, i32 %83)
  ret void
}

declare dso_local i32 @default_column_width(%struct.TYPE_4__*, i32) #1

declare dso_local %struct.stat_array* @calc_and_alloc_stats_ex(i8**, i32, i32*, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i8**) #1

declare dso_local i32 @single_histo_average(i32, i32) #1

declare dso_local i32 @print_one_stat(i32, i32, i32, i32) #1

declare dso_local i32 @free_calc_stats(%struct.stat_array*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
