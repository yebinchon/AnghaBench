; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_vnops.c_zfs_setsecattr.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_vnops.c_zfs_setsecattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, i32* }
%struct.TYPE_6__ = type { i64 }

@ATTR_NOACLCHECK = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@ZFS_SYNC_ALWAYS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_setsecattr(%struct.inode* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %14 = load %struct.inode*, %struct.inode** %5, align 8
  %15 = call i32* @ITOZ(%struct.inode* %14)
  store i32* %15, i32** %9, align 8
  %16 = load %struct.inode*, %struct.inode** %5, align 8
  %17 = call %struct.TYPE_7__* @ITOZSB(%struct.inode* %16)
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** %10, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @ATTR_NOACLCHECK, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* @B_TRUE, align 4
  br label %26

24:                                               ; preds = %4
  %25 = load i32, i32* @B_FALSE, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %23, %22 ], [ %25, %24 ]
  store i32 %27, i32* %12, align 4
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %13, align 8
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %32 = call i32 @ZFS_ENTER(%struct.TYPE_7__* %31)
  %33 = load i32*, i32** %9, align 8
  %34 = call i32 @ZFS_VERIFY_ZP(i32* %33)
  %35 = load i32*, i32** %9, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* %12, align 4
  %38 = load i32*, i32** %8, align 8
  %39 = call i32 @zfs_setacl(i32* %35, i32* %36, i32 %37, i32* %38)
  store i32 %39, i32* %11, align 4
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @ZFS_SYNC_ALWAYS, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %26
  %48 = load i32*, i32** %13, align 8
  %49 = call i32 @zil_commit(i32* %48, i32 0)
  br label %50

50:                                               ; preds = %47, %26
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %52 = call i32 @ZFS_EXIT(%struct.TYPE_7__* %51)
  %53 = load i32, i32* %11, align 4
  ret i32 %53
}

declare dso_local i32* @ITOZ(%struct.inode*) #1

declare dso_local %struct.TYPE_7__* @ITOZSB(%struct.inode*) #1

declare dso_local i32 @ZFS_ENTER(%struct.TYPE_7__*) #1

declare dso_local i32 @ZFS_VERIFY_ZP(i32*) #1

declare dso_local i32 @zfs_setacl(i32*, i32*, i32, i32*) #1

declare dso_local i32 @zil_commit(i32*, i32) #1

declare dso_local i32 @ZFS_EXIT(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
