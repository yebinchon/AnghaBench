; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_ctldir.c_zfsctl_snapdir_lookup.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_ctldir.c_zfsctl_snapdir_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.TYPE_6__ = type { i32 }

@ZFSCTL_INO_SNAPDIRS = common dso_local global i64 0, align 8
@simple_dir_operations = common dso_local global i32 0, align 4
@simple_dir_inode_operations = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfsctl_snapdir_lookup(%struct.inode* %0, i8* %1, %struct.inode** %2, i32 %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.inode**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_6__*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %9, align 8
  store i8* %1, i8** %10, align 8
  store %struct.inode** %2, %struct.inode*** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %19 = load %struct.inode*, %struct.inode** %9, align 8
  %20 = call %struct.TYPE_6__* @ITOZSB(%struct.inode* %19)
  store %struct.TYPE_6__* %20, %struct.TYPE_6__** %16, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %22 = call i32 @ZFS_ENTER(%struct.TYPE_6__* %21)
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i8*, i8** %10, align 8
  %27 = call i32 @dmu_snapshot_lookup(i32 %25, i8* %26, i64* %17)
  store i32 %27, i32* %18, align 4
  %28 = load i32, i32* %18, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %7
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %32 = call i32 @ZFS_EXIT(%struct.TYPE_6__* %31)
  %33 = load i32, i32* %18, align 4
  store i32 %33, i32* %8, align 4
  br label %51

34:                                               ; preds = %7
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %36 = load i64, i64* @ZFSCTL_INO_SNAPDIRS, align 8
  %37 = load i64, i64* %17, align 8
  %38 = sub nsw i64 %36, %37
  %39 = call %struct.inode* @zfsctl_inode_lookup(%struct.TYPE_6__* %35, i64 %38, i32* @simple_dir_operations, i32* @simple_dir_inode_operations)
  %40 = load %struct.inode**, %struct.inode*** %11, align 8
  store %struct.inode* %39, %struct.inode** %40, align 8
  %41 = load %struct.inode**, %struct.inode*** %11, align 8
  %42 = load %struct.inode*, %struct.inode** %41, align 8
  %43 = icmp eq %struct.inode* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %34
  %45 = load i32, i32* @ENOENT, align 4
  %46 = call i32 @SET_ERROR(i32 %45)
  store i32 %46, i32* %18, align 4
  br label %47

47:                                               ; preds = %44, %34
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %49 = call i32 @ZFS_EXIT(%struct.TYPE_6__* %48)
  %50 = load i32, i32* %18, align 4
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %47, %30
  %52 = load i32, i32* %8, align 4
  ret i32 %52
}

declare dso_local %struct.TYPE_6__* @ITOZSB(%struct.inode*) #1

declare dso_local i32 @ZFS_ENTER(%struct.TYPE_6__*) #1

declare dso_local i32 @dmu_snapshot_lookup(i32, i8*, i64*) #1

declare dso_local i32 @ZFS_EXIT(%struct.TYPE_6__*) #1

declare dso_local %struct.inode* @zfsctl_inode_lookup(%struct.TYPE_6__*, i64, i32*, i32*) #1

declare dso_local i32 @SET_ERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
