; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_vnops.c_zfs_getattr_fast.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_vnops.c_zfs_getattr_fast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.inode* }
%struct.kstat = type { i64, i64, i32, i32 }
%struct.TYPE_13__ = type { i64, i64, i32, i32 }
%struct.TYPE_14__ = type { i64, i32, i64, i32 }

@ZFS_LINK_MAX = common dso_local global i64 0, align 8
@ZFSCTL_INO_SNAPDIRS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_getattr_fast(%struct.inode* %0, %struct.kstat* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.kstat*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.kstat* %1, %struct.kstat** %4, align 8
  %9 = load %struct.inode*, %struct.inode** %3, align 8
  %10 = call %struct.TYPE_13__* @ITOZ(%struct.inode* %9)
  store %struct.TYPE_13__* %10, %struct.TYPE_13__** %5, align 8
  %11 = load %struct.inode*, %struct.inode** %3, align 8
  %12 = call %struct.TYPE_14__* @ITOZSB(%struct.inode* %11)
  store %struct.TYPE_14__* %12, %struct.TYPE_14__** %6, align 8
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %14 = call i32 @ZFS_ENTER(%struct.TYPE_14__* %13)
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %16 = call i32 @ZFS_VERIFY_ZP(%struct.TYPE_13__* %15)
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 2
  %19 = call i32 @mutex_enter(i32* %18)
  %20 = load %struct.inode*, %struct.inode** %3, align 8
  %21 = load %struct.kstat*, %struct.kstat** %4, align 8
  %22 = call i32 @generic_fillattr(%struct.inode* %20, %struct.kstat* %21)
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %25, %28
  br i1 %29, label %30, label %46

30:                                               ; preds = %2
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %32 = call i64 @zfs_show_ctldir(%struct.TYPE_13__* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %30
  %35 = load %struct.kstat*, %struct.kstat** %4, align 8
  %36 = getelementptr inbounds %struct.kstat, %struct.kstat* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @ZFS_LINK_MAX, align 8
  %39 = icmp slt i64 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = load %struct.kstat*, %struct.kstat** %4, align 8
  %42 = getelementptr inbounds %struct.kstat, %struct.kstat* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* %42, align 8
  br label %45

45:                                               ; preds = %40, %34
  br label %46

46:                                               ; preds = %45, %30, %2
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @sa_object_size(i32 %49, i32* %7, i32* %8)
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.kstat*, %struct.kstat** %4, align 8
  %53 = getelementptr inbounds %struct.kstat, %struct.kstat* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  %54 = load i32, i32* %8, align 4
  %55 = load %struct.kstat*, %struct.kstat** %4, align 8
  %56 = getelementptr inbounds %struct.kstat, %struct.kstat* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 4
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %59, 0
  %61 = zext i1 %60 to i32
  %62 = call i64 @unlikely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %46
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.kstat*, %struct.kstat** %4, align 8
  %69 = getelementptr inbounds %struct.kstat, %struct.kstat* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 8
  br label %70

70:                                               ; preds = %64, %46
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 2
  %73 = call i32 @mutex_exit(i32* %72)
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %98

78:                                               ; preds = %70
  %79 = load %struct.inode*, %struct.inode** %3, align 8
  %80 = getelementptr inbounds %struct.inode, %struct.inode* %79, i32 0, i32 0
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 0
  %85 = load %struct.inode*, %struct.inode** %84, align 8
  %86 = load %struct.inode*, %struct.inode** %3, align 8
  %87 = icmp eq %struct.inode* %85, %86
  br i1 %87, label %88, label %97

88:                                               ; preds = %78
  %89 = load i64, i64* @ZFSCTL_INO_SNAPDIRS, align 8
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = call i64 @dmu_objset_id(i32 %92)
  %94 = sub nsw i64 %89, %93
  %95 = load %struct.kstat*, %struct.kstat** %4, align 8
  %96 = getelementptr inbounds %struct.kstat, %struct.kstat* %95, i32 0, i32 1
  store i64 %94, i64* %96, align 8
  br label %97

97:                                               ; preds = %88, %78
  br label %98

98:                                               ; preds = %97, %70
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %100 = call i32 @ZFS_EXIT(%struct.TYPE_14__* %99)
  ret i32 0
}

declare dso_local %struct.TYPE_13__* @ITOZ(%struct.inode*) #1

declare dso_local %struct.TYPE_14__* @ITOZSB(%struct.inode*) #1

declare dso_local i32 @ZFS_ENTER(%struct.TYPE_14__*) #1

declare dso_local i32 @ZFS_VERIFY_ZP(%struct.TYPE_13__*) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @generic_fillattr(%struct.inode*, %struct.kstat*) #1

declare dso_local i64 @zfs_show_ctldir(%struct.TYPE_13__*) #1

declare dso_local i32 @sa_object_size(i32, i32*, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i64 @dmu_objset_id(i32) #1

declare dso_local i32 @ZFS_EXIT(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
