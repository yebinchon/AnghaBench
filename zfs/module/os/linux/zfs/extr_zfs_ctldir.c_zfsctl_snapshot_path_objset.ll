; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_ctldir.c_zfsctl_snapshot_path_objset.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_ctldir.c_zfsctl_snapshot_path_objset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__*, i32* }
%struct.TYPE_4__ = type { i8* }

@ENOENT = common dso_local global i32 0, align 4
@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"%s/.zfs/snapshot/%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i64, i32, i8*)* @zfsctl_snapshot_path_objset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfsctl_snapshot_path_objset(%struct.TYPE_5__* %0, i64 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %10, align 8
  store i64 0, i64* %15, align 8
  store i32 0, i32* %16, align 4
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %4
  %27 = load i32, i32* @ENOENT, align 4
  %28 = call i32 @SET_ERROR(i32 %27)
  store i32 %28, i32* %5, align 4
  br label %78

29:                                               ; preds = %4
  %30 = call i32 (...) @spl_fstrans_mark()
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %32 = load i32, i32* @KM_SLEEP, align 4
  %33 = call i8* @kmem_alloc(i32 %31, i32 %32)
  store i8* %33, i8** %12, align 8
  br label %34

34:                                               ; preds = %60, %29
  %35 = load i32, i32* %16, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %61

37:                                               ; preds = %34
  %38 = load i32*, i32** %10, align 8
  %39 = call i32 @dmu_objset_pool(i32* %38)
  %40 = load i32, i32* @FTAG, align 4
  %41 = call i32 @dsl_pool_config_enter(i32 %39, i32 %40)
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %46 = load i8*, i8** %12, align 8
  %47 = call i32 @dmu_snapshot_list_next(i32* %44, i32 %45, i8* %46, i64* %14, i64* %15, i32* %13)
  store i32 %47, i32* %16, align 4
  %48 = load i32*, i32** %10, align 8
  %49 = call i32 @dmu_objset_pool(i32* %48)
  %50 = load i32, i32* @FTAG, align 4
  %51 = call i32 @dsl_pool_config_exit(i32 %49, i32 %50)
  %52 = load i32, i32* %16, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %37
  br label %71

55:                                               ; preds = %37
  %56 = load i64, i64* %14, align 8
  %57 = load i64, i64* %7, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  br label %61

60:                                               ; preds = %55
  br label %34

61:                                               ; preds = %59, %34
  %62 = load i8*, i8** %9, align 8
  %63 = load i32, i32* %8, align 4
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = load i8*, i8** %12, align 8
  %70 = call i32 @snprintf(i8* %62, i32 %63, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %68, i8* %69)
  br label %71

71:                                               ; preds = %61, %54
  %72 = load i8*, i8** %12, align 8
  %73 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %74 = call i32 @kmem_free(i8* %72, i32 %73)
  %75 = load i32, i32* %11, align 4
  %76 = call i32 @spl_fstrans_unmark(i32 %75)
  %77 = load i32, i32* %16, align 4
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %71, %26
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @spl_fstrans_mark(...) #1

declare dso_local i8* @kmem_alloc(i32, i32) #1

declare dso_local i32 @dsl_pool_config_enter(i32, i32) #1

declare dso_local i32 @dmu_objset_pool(i32*) #1

declare dso_local i32 @dmu_snapshot_list_next(i32*, i32, i8*, i64*, i64*, i32*) #1

declare dso_local i32 @dsl_pool_config_exit(i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @kmem_free(i8*, i32) #1

declare dso_local i32 @spl_fstrans_unmark(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
