; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_spa.c_spa_ld_open_vdevs.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_spa.c_spa_ld_open_vdevs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i32, i32, i64, i64 }

@zfs_max_missing_tvds = common dso_local global i64 0, align 8
@SPA_CONFIG_SRC_CACHEFILE = common dso_local global i64 0, align 8
@zfs_max_missing_tvds_cachefile = common dso_local global i64 0, align 8
@SPA_CONFIG_SRC_SCAN = common dso_local global i64 0, align 8
@zfs_max_missing_tvds_scan = common dso_local global i64 0, align 8
@SCL_ALL = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@RW_WRITER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"vdev tree has %lld missing top-level vdevs.\00", align 1
@FWRITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [73 x i8] c"pools with missing top-level vdevs can only be opened in read-only mode.\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [79 x i8] c"current settings allow for maximum %lld missing top-level vdevs at this stage.\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"unable to open vdev tree [error=%d]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @spa_ld_open_vdevs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spa_ld_open_vdevs(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 5
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load i64, i64* @zfs_max_missing_tvds, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 4
  store i64 %9, i64* %11, align 8
  br label %37

12:                                               ; preds = %1
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SPA_CONFIG_SRC_CACHEFILE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = load i64, i64* @zfs_max_missing_tvds_cachefile, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 4
  store i64 %19, i64* %21, align 8
  br label %36

22:                                               ; preds = %12
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @SPA_CONFIG_SRC_SCAN, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load i64, i64* @zfs_max_missing_tvds_scan, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 4
  store i64 %29, i64* %31, align 8
  br label %35

32:                                               ; preds = %22
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 4
  store i64 0, i64* %34, align 8
  br label %35

35:                                               ; preds = %32, %28
  br label %36

36:                                               ; preds = %35, %18
  br label %37

37:                                               ; preds = %36, %8
  %38 = load i64, i64* @zfs_max_missing_tvds, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = call i64 @MAX(i64 %38, i64 %41)
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 4
  store i64 %42, i64* %44, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %46 = load i32, i32* @SCL_ALL, align 4
  %47 = load i32, i32* @FTAG, align 4
  %48 = load i32, i32* @RW_WRITER, align 4
  %49 = call i32 @spa_config_enter(%struct.TYPE_7__* %45, i32 %46, i32 %47, i32 %48)
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @vdev_open(i32 %52)
  store i32 %53, i32* %3, align 4
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %55 = load i32, i32* @SCL_ALL, align 4
  %56 = load i32, i32* @FTAG, align 4
  %57 = call i32 @spa_config_exit(%struct.TYPE_7__* %54, i32 %55, i32 %56)
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %93

62:                                               ; preds = %37
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = trunc i64 %66 to i32
  %68 = call i32 (%struct.TYPE_7__*, i8*, ...) @spa_load_note(%struct.TYPE_7__* %63, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %67)
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 5
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %85

73:                                               ; preds = %62
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @FWRITE, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %73
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %82 = call i32 (%struct.TYPE_7__*, i8*, ...) @spa_load_note(%struct.TYPE_7__* %81, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0))
  %83 = load i32, i32* @ENXIO, align 4
  %84 = call i32 @SET_ERROR(i32 %83)
  store i32 %84, i32* %3, align 4
  br label %92

85:                                               ; preds = %73, %62
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 4
  %89 = load i64, i64* %88, align 8
  %90 = trunc i64 %89 to i32
  %91 = call i32 (%struct.TYPE_7__*, i8*, ...) @spa_load_note(%struct.TYPE_7__* %86, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.2, i64 0, i64 0), i32 %90)
  br label %92

92:                                               ; preds = %85, %80
  br label %93

93:                                               ; preds = %92, %37
  %94 = load i32, i32* %3, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %93
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %98 = load i32, i32* %3, align 4
  %99 = call i32 @spa_load_failed(%struct.TYPE_7__* %97, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %98)
  br label %100

100:                                              ; preds = %96, %93
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %100
  %106 = load i32, i32* %3, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %105, %100
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @vdev_dbgmsg_print_tree(i32 %111, i32 2)
  br label %113

113:                                              ; preds = %108, %105
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local i64 @MAX(i64, i64) #1

declare dso_local i32 @spa_config_enter(%struct.TYPE_7__*, i32, i32, i32) #1

declare dso_local i32 @vdev_open(i32) #1

declare dso_local i32 @spa_config_exit(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @spa_load_note(%struct.TYPE_7__*, i8*, ...) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @spa_load_failed(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i32 @vdev_dbgmsg_print_tree(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
