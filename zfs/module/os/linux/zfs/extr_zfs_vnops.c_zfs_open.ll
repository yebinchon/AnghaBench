; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_vnops.c_zfs_open.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_vnops.c_zfs_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.TYPE_9__ = type { i32, i64, i32 }
%struct.TYPE_10__ = type { i64 }

@FMODE_WRITE = common dso_local global i32 0, align 4
@ZFS_APPENDONLY = common dso_local global i32 0, align 4
@O_APPEND = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@ZFS_AV_QUARANTINED = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@O_SYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_open(%struct.inode* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %12 = load %struct.inode*, %struct.inode** %6, align 8
  %13 = call %struct.TYPE_9__* @ITOZ(%struct.inode* %12)
  store %struct.TYPE_9__* %13, %struct.TYPE_9__** %10, align 8
  %14 = load %struct.inode*, %struct.inode** %6, align 8
  %15 = call %struct.TYPE_10__* @ITOZSB(%struct.inode* %14)
  store %struct.TYPE_10__* %15, %struct.TYPE_10__** %11, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %17 = call i32 @ZFS_ENTER(%struct.TYPE_10__* %16)
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %19 = call i32 @ZFS_VERIFY_ZP(%struct.TYPE_9__* %18)
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @FMODE_WRITE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %41

24:                                               ; preds = %4
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @ZFS_APPENDONLY, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %24
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @O_APPEND, align 4
  %34 = and i32 %32, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %38 = call i32 @ZFS_EXIT(%struct.TYPE_10__* %37)
  %39 = load i32, i32* @EPERM, align 4
  %40 = call i32 @SET_ERROR(i32 %39)
  store i32 %40, i32* %5, align 4
  br label %91

41:                                               ; preds = %31, %24, %4
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %43 = call i32 @zfs_has_ctldir(%struct.TYPE_9__* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %79, label %45

45:                                               ; preds = %41
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %79

50:                                               ; preds = %45
  %51 = load %struct.inode*, %struct.inode** %6, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @S_ISREG(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %79

56:                                               ; preds = %50
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @ZFS_AV_QUARANTINED, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %79, label %63

63:                                               ; preds = %56
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp sgt i64 %66, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %63
  %69 = load %struct.inode*, %struct.inode** %6, align 8
  %70 = load i32*, i32** %9, align 8
  %71 = call i64 @zfs_vscan(%struct.inode* %69, i32* %70, i32 0)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %75 = call i32 @ZFS_EXIT(%struct.TYPE_10__* %74)
  %76 = load i32, i32* @EACCES, align 4
  %77 = call i32 @SET_ERROR(i32 %76)
  store i32 %77, i32* %5, align 4
  br label %91

78:                                               ; preds = %68
  br label %79

79:                                               ; preds = %78, %63, %56, %50, %45, %41
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* @O_SYNC, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %79
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 2
  %87 = call i32 @atomic_inc_32(i32* %86)
  br label %88

88:                                               ; preds = %84, %79
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %90 = call i32 @ZFS_EXIT(%struct.TYPE_10__* %89)
  store i32 0, i32* %5, align 4
  br label %91

91:                                               ; preds = %88, %73, %36
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local %struct.TYPE_9__* @ITOZ(%struct.inode*) #1

declare dso_local %struct.TYPE_10__* @ITOZSB(%struct.inode*) #1

declare dso_local i32 @ZFS_ENTER(%struct.TYPE_10__*) #1

declare dso_local i32 @ZFS_VERIFY_ZP(%struct.TYPE_9__*) #1

declare dso_local i32 @ZFS_EXIT(%struct.TYPE_10__*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @zfs_has_ctldir(%struct.TYPE_9__*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @zfs_vscan(%struct.inode*, i32*, i32) #1

declare dso_local i32 @atomic_inc_32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
