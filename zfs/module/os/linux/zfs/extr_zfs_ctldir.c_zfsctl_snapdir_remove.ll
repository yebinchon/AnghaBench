; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_ctldir.c_zfsctl_snapdir_remove.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_ctldir.c_zfsctl_snapdir_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.TYPE_6__ = type { i64, i32 }

@zfs_admin_snapshot = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@ZFS_CASE_INSENSITIVE = common dso_local global i64 0, align 8
@ENOTSUP = common dso_local global i32 0, align 4
@MNT_FORCE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfsctl_snapdir_remove(%struct.inode* %0, i8* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.inode*, %struct.inode** %6, align 8
  %15 = call %struct.TYPE_6__* @ITOZSB(%struct.inode* %14)
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %10, align 8
  %16 = load i32, i32* @zfs_admin_snapshot, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @EACCES, align 4
  %20 = call i32 @SET_ERROR(i32 %19)
  store i32 %20, i32* %5, align 4
  br label %96

21:                                               ; preds = %4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %23 = call i32 @ZFS_ENTER(%struct.TYPE_6__* %22)
  %24 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %25 = load i32, i32* @KM_SLEEP, align 4
  %26 = call i8* @kmem_alloc(i32 %24, i32 %25)
  store i8* %26, i8** %11, align 8
  %27 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %28 = load i32, i32* @KM_SLEEP, align 4
  %29 = call i8* @kmem_alloc(i32 %27, i32 %28)
  store i8* %29, i8** %12, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @ZFS_CASE_INSENSITIVE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %54

35:                                               ; preds = %21
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = load i8*, i8** %12, align 8
  %41 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %42 = call i32 @dmu_snapshot_realname(i32 %38, i8* %39, i8* %40, i32 %41, i32* null)
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %13, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %35
  %46 = load i8*, i8** %12, align 8
  store i8* %46, i8** %7, align 8
  br label %53

47:                                               ; preds = %35
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* @ENOTSUP, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  br label %86

52:                                               ; preds = %47
  br label %53

53:                                               ; preds = %52, %45
  br label %54

54:                                               ; preds = %53, %21
  %55 = load %struct.inode*, %struct.inode** %6, align 8
  %56 = call %struct.TYPE_6__* @ITOZSB(%struct.inode* %55)
  %57 = load i8*, i8** %7, align 8
  %58 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %59 = load i8*, i8** %11, align 8
  %60 = call i32 @zfsctl_snapshot_name(%struct.TYPE_6__* %56, i8* %57, i32 %58, i8* %59)
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* %13, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %54
  %64 = load i8*, i8** %11, align 8
  %65 = load i32*, i32** %8, align 8
  %66 = call i32 @zfs_secpolicy_destroy_perms(i8* %64, i32* %65)
  store i32 %66, i32* %13, align 4
  br label %67

67:                                               ; preds = %63, %54
  %68 = load i32, i32* %13, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  br label %86

71:                                               ; preds = %67
  %72 = load i8*, i8** %11, align 8
  %73 = load i32, i32* @MNT_FORCE, align 4
  %74 = call i32 @zfsctl_snapshot_unmount(i8* %72, i32 %73)
  store i32 %74, i32* %13, align 4
  %75 = load i32, i32* %13, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %71
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* @ENOENT, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %77, %71
  %82 = load i8*, i8** %11, align 8
  %83 = load i32, i32* @B_FALSE, align 4
  %84 = call i32 @dsl_destroy_snapshot(i8* %82, i32 %83)
  store i32 %84, i32* %13, align 4
  br label %85

85:                                               ; preds = %81, %77
  br label %86

86:                                               ; preds = %85, %70, %51
  %87 = load i8*, i8** %11, align 8
  %88 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %89 = call i32 @kmem_free(i8* %87, i32 %88)
  %90 = load i8*, i8** %12, align 8
  %91 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %92 = call i32 @kmem_free(i8* %90, i32 %91)
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %94 = call i32 @ZFS_EXIT(%struct.TYPE_6__* %93)
  %95 = load i32, i32* %13, align 4
  store i32 %95, i32* %5, align 4
  br label %96

96:                                               ; preds = %86, %18
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local %struct.TYPE_6__* @ITOZSB(%struct.inode*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @ZFS_ENTER(%struct.TYPE_6__*) #1

declare dso_local i8* @kmem_alloc(i32, i32) #1

declare dso_local i32 @dmu_snapshot_realname(i32, i8*, i8*, i32, i32*) #1

declare dso_local i32 @zfsctl_snapshot_name(%struct.TYPE_6__*, i8*, i32, i8*) #1

declare dso_local i32 @zfs_secpolicy_destroy_perms(i8*, i32*) #1

declare dso_local i32 @zfsctl_snapshot_unmount(i8*, i32) #1

declare dso_local i32 @dsl_destroy_snapshot(i8*, i32) #1

declare dso_local i32 @kmem_free(i8*, i32) #1

declare dso_local i32 @ZFS_EXIT(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
