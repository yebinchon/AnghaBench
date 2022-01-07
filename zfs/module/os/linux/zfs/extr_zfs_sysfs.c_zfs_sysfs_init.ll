; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_sysfs.c_zfs_sysfs_init.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_sysfs.c_zfs_sysfs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { i32 }
%struct.module = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.kobject }

@THIS_MODULE = common dso_local global i64 0, align 8
@kernel_features_kobj = common dso_local global i32 0, align 4
@pool_features_kobj = common dso_local global i32 0, align 4
@pool_props_kobj = common dso_local global i32 0, align 4
@ZFS_TYPE_POOL = common dso_local global i32 0, align 4
@dataset_props_kobj = common dso_local global i32 0, align 4
@ZFS_TYPE_FILESYSTEM = common dso_local global i32 0, align 4
@fs_kobj = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfs_sysfs_init() #0 {
  %1 = alloca %struct.kobject*, align 8
  %2 = alloca i32, align 4
  %3 = load i64, i64* @THIS_MODULE, align 8
  %4 = inttoptr i64 %3 to %struct.module*
  %5 = getelementptr inbounds %struct.module, %struct.module* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  store %struct.kobject* %6, %struct.kobject** %1, align 8
  %7 = load %struct.kobject*, %struct.kobject** %1, align 8
  %8 = icmp eq %struct.kobject* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  br label %42

10:                                               ; preds = %0
  %11 = load %struct.kobject*, %struct.kobject** %1, align 8
  %12 = call i32 @zfs_kernel_features_init(i32* @kernel_features_kobj, %struct.kobject* %11)
  store i32 %12, i32* %2, align 4
  %13 = load i32, i32* %2, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  br label %42

16:                                               ; preds = %10
  %17 = load %struct.kobject*, %struct.kobject** %1, align 8
  %18 = call i32 @zfs_pool_features_init(i32* @pool_features_kobj, %struct.kobject* %17)
  store i32 %18, i32* %2, align 4
  %19 = load i32, i32* %2, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = call i32 @zfs_kobj_fini(i32* @kernel_features_kobj)
  br label %42

23:                                               ; preds = %16
  %24 = load %struct.kobject*, %struct.kobject** %1, align 8
  %25 = load i32, i32* @ZFS_TYPE_POOL, align 4
  %26 = call i32 @zfs_sysfs_properties_init(i32* @pool_props_kobj, %struct.kobject* %24, i32 %25)
  store i32 %26, i32* %2, align 4
  %27 = load i32, i32* %2, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = call i32 @zfs_kobj_fini(i32* @kernel_features_kobj)
  %31 = call i32 @zfs_kobj_fini(i32* @pool_features_kobj)
  br label %42

32:                                               ; preds = %23
  %33 = load %struct.kobject*, %struct.kobject** %1, align 8
  %34 = load i32, i32* @ZFS_TYPE_FILESYSTEM, align 4
  %35 = call i32 @zfs_sysfs_properties_init(i32* @dataset_props_kobj, %struct.kobject* %33, i32 %34)
  store i32 %35, i32* %2, align 4
  %36 = load i32, i32* %2, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = call i32 @zfs_kobj_fini(i32* @kernel_features_kobj)
  %40 = call i32 @zfs_kobj_fini(i32* @pool_features_kobj)
  %41 = call i32 @zfs_kobj_fini(i32* @pool_props_kobj)
  br label %42

42:                                               ; preds = %9, %15, %21, %29, %38, %32
  ret void
}

declare dso_local i32 @zfs_kernel_features_init(i32*, %struct.kobject*) #1

declare dso_local i32 @zfs_pool_features_init(i32*, %struct.kobject*) #1

declare dso_local i32 @zfs_kobj_fini(i32*) #1

declare dso_local i32 @zfs_sysfs_properties_init(i32*, %struct.kobject*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
