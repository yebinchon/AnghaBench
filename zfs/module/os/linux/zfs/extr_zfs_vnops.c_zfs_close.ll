; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_vnops.c_zfs_close.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_vnops.c_zfs_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.TYPE_9__ = type { i32, i64, i32 }
%struct.TYPE_10__ = type { i64 }

@O_SYNC = common dso_local global i32 0, align 4
@ZFS_AV_QUARANTINED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_close(%struct.inode* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = call %struct.TYPE_9__* @ITOZ(%struct.inode* %9)
  store %struct.TYPE_9__* %10, %struct.TYPE_9__** %7, align 8
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = call %struct.TYPE_10__* @ITOZSB(%struct.inode* %11)
  store %struct.TYPE_10__* %12, %struct.TYPE_10__** %8, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %14 = call i32 @ZFS_ENTER(%struct.TYPE_10__* %13)
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %16 = call i32 @ZFS_VERIFY_ZP(%struct.TYPE_9__* %15)
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @O_SYNC, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 2
  %24 = call i32 @atomic_dec_32(i32* %23)
  br label %25

25:                                               ; preds = %21, %3
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %27 = call i32 @zfs_has_ctldir(%struct.TYPE_9__* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %59, label %29

29:                                               ; preds = %25
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %59

34:                                               ; preds = %29
  %35 = load %struct.inode*, %struct.inode** %4, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @S_ISREG(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %59

40:                                               ; preds = %34
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @ZFS_AV_QUARANTINED, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %59, label %47

47:                                               ; preds = %40
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp sgt i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %47
  %53 = load %struct.inode*, %struct.inode** %4, align 8
  %54 = load i32*, i32** %6, align 8
  %55 = call i64 @zfs_vscan(%struct.inode* %53, i32* %54, i32 1)
  %56 = icmp eq i64 %55, 0
  %57 = zext i1 %56 to i32
  %58 = call i32 @VERIFY(i32 %57)
  br label %59

59:                                               ; preds = %52, %47, %40, %34, %29, %25
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %61 = call i32 @ZFS_EXIT(%struct.TYPE_10__* %60)
  ret i32 0
}

declare dso_local %struct.TYPE_9__* @ITOZ(%struct.inode*) #1

declare dso_local %struct.TYPE_10__* @ITOZSB(%struct.inode*) #1

declare dso_local i32 @ZFS_ENTER(%struct.TYPE_10__*) #1

declare dso_local i32 @ZFS_VERIFY_ZP(%struct.TYPE_9__*) #1

declare dso_local i32 @atomic_dec_32(i32*) #1

declare dso_local i32 @zfs_has_ctldir(%struct.TYPE_9__*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @zfs_vscan(%struct.inode*, i32*, i32) #1

declare dso_local i32 @ZFS_EXIT(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
