; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_vnops.c_zfs_fsync.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_vnops.c_zfs_fsync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }

@zfs_fsyncer_key = common dso_local global i32 0, align 4
@zfs_fsync_sync_cnt = common dso_local global i64 0, align 8
@ZFS_SYNC_DISABLED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_fsync(%struct.inode* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = call %struct.TYPE_10__* @ITOZ(%struct.inode* %9)
  store %struct.TYPE_10__* %10, %struct.TYPE_10__** %7, align 8
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = call %struct.TYPE_11__* @ITOZSB(%struct.inode* %11)
  store %struct.TYPE_11__* %12, %struct.TYPE_11__** %8, align 8
  %13 = load i32, i32* @zfs_fsyncer_key, align 4
  %14 = load i64, i64* @zfs_fsync_sync_cnt, align 8
  %15 = inttoptr i64 %14 to i8*
  %16 = call i32 @tsd_set(i32 %13, i8* %15)
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @ZFS_SYNC_DISABLED, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %38

24:                                               ; preds = %3
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %26 = call i32 @ZFS_ENTER(%struct.TYPE_11__* %25)
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %28 = call i32 @ZFS_VERIFY_ZP(%struct.TYPE_10__* %27)
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @zil_commit(i32 %31, i32 %34)
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %37 = call i32 @ZFS_EXIT(%struct.TYPE_11__* %36)
  br label %38

38:                                               ; preds = %24, %3
  %39 = load i32, i32* @zfs_fsyncer_key, align 4
  %40 = call i32 @tsd_set(i32 %39, i8* null)
  ret i32 0
}

declare dso_local %struct.TYPE_10__* @ITOZ(%struct.inode*) #1

declare dso_local %struct.TYPE_11__* @ITOZSB(%struct.inode*) #1

declare dso_local i32 @tsd_set(i32, i8*) #1

declare dso_local i32 @ZFS_ENTER(%struct.TYPE_11__*) #1

declare dso_local i32 @ZFS_VERIFY_ZP(%struct.TYPE_10__*) #1

declare dso_local i32 @zil_commit(i32, i32) #1

declare dso_local i32 @ZFS_EXIT(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
