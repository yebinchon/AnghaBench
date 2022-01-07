; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_ctldir.c_zfsctl_snapdir_rename.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_ctldir.c_zfsctl_snapdir_rename.c"
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
@EINVAL = common dso_local global i32 0, align 4
@zfs_snapshot_lock = common dso_local global i32 0, align 4
@RW_WRITER = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfsctl_snapdir_rename(%struct.inode* %0, i8* %1, %struct.inode* %2, i8* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_6__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %8, align 8
  store i8* %1, i8** %9, align 8
  store %struct.inode* %2, %struct.inode** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %20 = load %struct.inode*, %struct.inode** %8, align 8
  %21 = call %struct.TYPE_6__* @ITOZSB(%struct.inode* %20)
  store %struct.TYPE_6__* %21, %struct.TYPE_6__** %14, align 8
  %22 = load i32, i32* @zfs_admin_snapshot, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %6
  %25 = load i32, i32* @EACCES, align 4
  %26 = call i32 @SET_ERROR(i32 %25)
  store i32 %26, i32* %7, align 4
  br label %144

27:                                               ; preds = %6
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %29 = call i32 @ZFS_ENTER(%struct.TYPE_6__* %28)
  %30 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %31 = load i32, i32* @KM_SLEEP, align 4
  %32 = call i8* @kmem_alloc(i32 %30, i32 %31)
  store i8* %32, i8** %15, align 8
  %33 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %34 = load i32, i32* @KM_SLEEP, align 4
  %35 = call i8* @kmem_alloc(i32 %33, i32 %34)
  store i8* %35, i8** %16, align 8
  %36 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %37 = load i32, i32* @KM_SLEEP, align 4
  %38 = call i8* @kmem_alloc(i32 %36, i32 %37)
  store i8* %38, i8** %17, align 8
  %39 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %40 = load i32, i32* @KM_SLEEP, align 4
  %41 = call i8* @kmem_alloc(i32 %39, i32 %40)
  store i8* %41, i8** %18, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @ZFS_CASE_INSENSITIVE, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %66

47:                                               ; preds = %27
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = load i8*, i8** %17, align 8
  %53 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %54 = call i32 @dmu_snapshot_realname(i32 %50, i8* %51, i8* %52, i32 %53, i32* null)
  store i32 %54, i32* %19, align 4
  %55 = load i32, i32* %19, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %47
  %58 = load i8*, i8** %17, align 8
  store i8* %58, i8** %9, align 8
  br label %65

59:                                               ; preds = %47
  %60 = load i32, i32* %19, align 4
  %61 = load i32, i32* @ENOTSUP, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  br label %128

64:                                               ; preds = %59
  br label %65

65:                                               ; preds = %64, %57
  br label %66

66:                                               ; preds = %65, %27
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load i8*, i8** %18, align 8
  %71 = call i32 @dmu_objset_name(i32 %69, i8* %70)
  %72 = load %struct.inode*, %struct.inode** %8, align 8
  %73 = call %struct.TYPE_6__* @ITOZSB(%struct.inode* %72)
  %74 = load i8*, i8** %9, align 8
  %75 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %76 = load i8*, i8** %16, align 8
  %77 = call i32 @zfsctl_snapshot_name(%struct.TYPE_6__* %73, i8* %74, i32 %75, i8* %76)
  store i32 %77, i32* %19, align 4
  %78 = load i32, i32* %19, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %66
  %81 = load %struct.inode*, %struct.inode** %10, align 8
  %82 = call %struct.TYPE_6__* @ITOZSB(%struct.inode* %81)
  %83 = load i8*, i8** %11, align 8
  %84 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %85 = load i8*, i8** %15, align 8
  %86 = call i32 @zfsctl_snapshot_name(%struct.TYPE_6__* %82, i8* %83, i32 %84, i8* %85)
  store i32 %86, i32* %19, align 4
  br label %87

87:                                               ; preds = %80, %66
  %88 = load i32, i32* %19, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %87
  %91 = load i8*, i8** %16, align 8
  %92 = load i8*, i8** %15, align 8
  %93 = load i32*, i32** %12, align 8
  %94 = call i32 @zfs_secpolicy_rename_perms(i8* %91, i8* %92, i32* %93)
  store i32 %94, i32* %19, align 4
  br label %95

95:                                               ; preds = %90, %87
  %96 = load i32, i32* %19, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %95
  br label %128

99:                                               ; preds = %95
  %100 = load %struct.inode*, %struct.inode** %8, align 8
  %101 = load %struct.inode*, %struct.inode** %10, align 8
  %102 = icmp ne %struct.inode* %100, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %99
  %104 = load i32, i32* @EINVAL, align 4
  %105 = call i32 @SET_ERROR(i32 %104)
  store i32 %105, i32* %19, align 4
  br label %128

106:                                              ; preds = %99
  %107 = load i8*, i8** %9, align 8
  %108 = load i8*, i8** %11, align 8
  %109 = call i64 @strcmp(i8* %107, i8* %108)
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %106
  store i32 0, i32* %19, align 4
  br label %128

112:                                              ; preds = %106
  %113 = load i32, i32* @RW_WRITER, align 4
  %114 = call i32 @rw_enter(i32* @zfs_snapshot_lock, i32 %113)
  %115 = load i8*, i8** %18, align 8
  %116 = load i8*, i8** %9, align 8
  %117 = load i8*, i8** %11, align 8
  %118 = load i32, i32* @B_FALSE, align 4
  %119 = call i32 @dsl_dataset_rename_snapshot(i8* %115, i8* %116, i8* %117, i32 %118)
  store i32 %119, i32* %19, align 4
  %120 = load i32, i32* %19, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %112
  %123 = load i8*, i8** %9, align 8
  %124 = load i8*, i8** %11, align 8
  %125 = call i32 @zfsctl_snapshot_rename(i8* %123, i8* %124)
  br label %126

126:                                              ; preds = %122, %112
  %127 = call i32 @rw_exit(i32* @zfs_snapshot_lock)
  br label %128

128:                                              ; preds = %126, %111, %103, %98, %63
  %129 = load i8*, i8** %16, align 8
  %130 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %131 = call i32 @kmem_free(i8* %129, i32 %130)
  %132 = load i8*, i8** %15, align 8
  %133 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %134 = call i32 @kmem_free(i8* %132, i32 %133)
  %135 = load i8*, i8** %17, align 8
  %136 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %137 = call i32 @kmem_free(i8* %135, i32 %136)
  %138 = load i8*, i8** %18, align 8
  %139 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %140 = call i32 @kmem_free(i8* %138, i32 %139)
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %142 = call i32 @ZFS_EXIT(%struct.TYPE_6__* %141)
  %143 = load i32, i32* %19, align 4
  store i32 %143, i32* %7, align 4
  br label %144

144:                                              ; preds = %128, %24
  %145 = load i32, i32* %7, align 4
  ret i32 %145
}

declare dso_local %struct.TYPE_6__* @ITOZSB(%struct.inode*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @ZFS_ENTER(%struct.TYPE_6__*) #1

declare dso_local i8* @kmem_alloc(i32, i32) #1

declare dso_local i32 @dmu_snapshot_realname(i32, i8*, i8*, i32, i32*) #1

declare dso_local i32 @dmu_objset_name(i32, i8*) #1

declare dso_local i32 @zfsctl_snapshot_name(%struct.TYPE_6__*, i8*, i32, i8*) #1

declare dso_local i32 @zfs_secpolicy_rename_perms(i8*, i8*, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @rw_enter(i32*, i32) #1

declare dso_local i32 @dsl_dataset_rename_snapshot(i8*, i8*, i8*, i32) #1

declare dso_local i32 @zfsctl_snapshot_rename(i8*, i8*) #1

declare dso_local i32 @rw_exit(i32*) #1

declare dso_local i32 @kmem_free(i8*, i32) #1

declare dso_local i32 @ZFS_EXIT(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
