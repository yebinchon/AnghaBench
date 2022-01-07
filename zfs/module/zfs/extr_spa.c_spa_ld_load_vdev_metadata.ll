; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_spa.c_spa_ld_load_vdev_metadata.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_spa.c_spa_ld_load_vdev_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64, i32, i32, i32*, i64, i32 }

@ZFS_IMPORT_SKIP_MMP = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_MMP_STATE = common dso_local global i32 0, align 4
@MMP_STATE_NO_HOSTID = common dso_local global i32 0, align 4
@VDEV_AUX_ACTIVE = common dso_local global i32 0, align 4
@EREMOTEIO = common dso_local global i32 0, align 4
@SPA_LOAD_TRYIMPORT = common dso_local global i64 0, align 8
@SPA_LOAD_IMPORT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"vdev_load failed [error=%d]\00", align 1
@VDEV_AUX_CORRUPT_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"spa_ld_log_sm_data failed [error=%d]\00", align 1
@SCL_ALL = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@RW_WRITER = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @spa_ld_load_vdev_metadata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spa_ld_load_vdev_metadata(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 4
  %8 = load i32*, i32** %7, align 8
  store i32* %8, i32** %5, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %10 = call i64 @spa_multihost(%struct.TYPE_9__* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %34

12:                                               ; preds = %1
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %14 = call i64 @spa_get_hostid(%struct.TYPE_9__* %13)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %34

16:                                               ; preds = %12
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @ZFS_IMPORT_SKIP_MMP, align 4
  %21 = and i32 %19, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %16
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 6
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @ZPOOL_CONFIG_MMP_STATE, align 4
  %28 = load i32, i32* @MMP_STATE_NO_HOSTID, align 4
  %29 = call i32 @fnvlist_add_uint64(i32 %26, i32 %27, i32 %28)
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* @VDEV_AUX_ACTIVE, align 4
  %32 = load i32, i32* @EREMOTEIO, align 4
  %33 = call i32 @spa_vdev_err(i32* %30, i32 %31, i32 %32)
  store i32 %33, i32* %2, align 4
  br label %102

34:                                               ; preds = %16, %12, %1
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 5
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %63

39:                                               ; preds = %34
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @SPA_LOAD_TRYIMPORT, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %63

45:                                               ; preds = %39
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 4
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @spa_check_removed(i32* %48)
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @SPA_LOAD_IMPORT, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %45
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 3
  %58 = call i32 @spa_aux_check_removed(i32* %57)
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 2
  %61 = call i32 @spa_aux_check_removed(i32* %60)
  br label %62

62:                                               ; preds = %55, %45
  br label %63

63:                                               ; preds = %62, %39, %34
  %64 = load i32*, i32** %5, align 8
  %65 = call i32 @vdev_load(i32* %64)
  store i32 %65, i32* %4, align 4
  %66 = load i32, i32* %4, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %63
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @spa_load_failed(%struct.TYPE_9__* %69, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %70)
  %72 = load i32*, i32** %5, align 8
  %73 = load i32, i32* @VDEV_AUX_CORRUPT_DATA, align 4
  %74 = load i32, i32* %4, align 4
  %75 = call i32 @spa_vdev_err(i32* %72, i32 %73, i32 %74)
  store i32 %75, i32* %2, align 4
  br label %102

76:                                               ; preds = %63
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %78 = call i32 @spa_ld_log_spacemaps(%struct.TYPE_9__* %77)
  store i32 %78, i32* %4, align 4
  %79 = load i32, i32* %4, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %76
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %83 = load i32, i32* %4, align 4
  %84 = call i32 @spa_load_failed(%struct.TYPE_9__* %82, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  %85 = load i32*, i32** %5, align 8
  %86 = load i32, i32* @VDEV_AUX_CORRUPT_DATA, align 4
  %87 = load i32, i32* %4, align 4
  %88 = call i32 @spa_vdev_err(i32* %85, i32 %86, i32 %87)
  store i32 %88, i32* %2, align 4
  br label %102

89:                                               ; preds = %76
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %91 = load i32, i32* @SCL_ALL, align 4
  %92 = load i32, i32* @FTAG, align 4
  %93 = load i32, i32* @RW_WRITER, align 4
  %94 = call i32 @spa_config_enter(%struct.TYPE_9__* %90, i32 %91, i32 %92, i32 %93)
  %95 = load i32*, i32** %5, align 8
  %96 = load i32, i32* @B_FALSE, align 4
  %97 = call i32 @vdev_dtl_reassess(i32* %95, i32 0, i32 0, i32 %96)
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %99 = load i32, i32* @SCL_ALL, align 4
  %100 = load i32, i32* @FTAG, align 4
  %101 = call i32 @spa_config_exit(%struct.TYPE_9__* %98, i32 %99, i32 %100)
  store i32 0, i32* %2, align 4
  br label %102

102:                                              ; preds = %89, %81, %68, %23
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local i64 @spa_multihost(%struct.TYPE_9__*) #1

declare dso_local i64 @spa_get_hostid(%struct.TYPE_9__*) #1

declare dso_local i32 @fnvlist_add_uint64(i32, i32, i32) #1

declare dso_local i32 @spa_vdev_err(i32*, i32, i32) #1

declare dso_local i32 @spa_check_removed(i32*) #1

declare dso_local i32 @spa_aux_check_removed(i32*) #1

declare dso_local i32 @vdev_load(i32*) #1

declare dso_local i32 @spa_load_failed(%struct.TYPE_9__*, i8*, i32) #1

declare dso_local i32 @spa_ld_log_spacemaps(%struct.TYPE_9__*) #1

declare dso_local i32 @spa_config_enter(%struct.TYPE_9__*, i32, i32, i32) #1

declare dso_local i32 @vdev_dtl_reassess(i32*, i32, i32, i32) #1

declare dso_local i32 @spa_config_exit(%struct.TYPE_9__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
