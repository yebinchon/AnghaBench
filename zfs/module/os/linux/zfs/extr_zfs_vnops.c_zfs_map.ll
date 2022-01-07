; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_vnops.c_zfs_map.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_vnops.c_zfs_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.TYPE_4__ = type { i32 }

@VM_WRITE = common dso_local global i64 0, align 8
@ZFS_IMMUTABLE = common dso_local global i32 0, align 4
@ZFS_READONLY = common dso_local global i32 0, align 4
@ZFS_APPENDONLY = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@VM_READ = common dso_local global i64 0, align 8
@VM_EXEC = common dso_local global i64 0, align 8
@ZFS_AV_QUARANTINED = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@MAXOFFSET_T = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_map(%struct.inode* %0, i64 %1, i32* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca i32*, align 8
  store %struct.inode* %0, %struct.inode** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.inode*, %struct.inode** %7, align 8
  %15 = call %struct.TYPE_4__* @ITOZ(%struct.inode* %14)
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %12, align 8
  %16 = load %struct.inode*, %struct.inode** %7, align 8
  %17 = call i32* @ITOZSB(%struct.inode* %16)
  store i32* %17, i32** %13, align 8
  %18 = load i32*, i32** %13, align 8
  %19 = call i32 @ZFS_ENTER(i32* %18)
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %21 = call i32 @ZFS_VERIFY_ZP(%struct.TYPE_4__* %20)
  %22 = load i64, i64* %11, align 8
  %23 = load i64, i64* @VM_WRITE, align 8
  %24 = and i64 %22, %23
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %42

26:                                               ; preds = %5
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @ZFS_IMMUTABLE, align 4
  %31 = load i32, i32* @ZFS_READONLY, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @ZFS_APPENDONLY, align 4
  %34 = or i32 %32, %33
  %35 = and i32 %29, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %26
  %38 = load i32*, i32** %13, align 8
  %39 = call i32 @ZFS_EXIT(i32* %38)
  %40 = load i32, i32* @EPERM, align 4
  %41 = call i32 @SET_ERROR(i32 %40)
  store i32 %41, i32* %6, align 4
  br label %78

42:                                               ; preds = %26, %5
  %43 = load i64, i64* %11, align 8
  %44 = load i64, i64* @VM_READ, align 8
  %45 = load i64, i64* @VM_EXEC, align 8
  %46 = or i64 %44, %45
  %47 = and i64 %43, %46
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %42
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @ZFS_AV_QUARANTINED, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %49
  %57 = load i32*, i32** %13, align 8
  %58 = call i32 @ZFS_EXIT(i32* %57)
  %59 = load i32, i32* @EACCES, align 4
  %60 = call i32 @SET_ERROR(i32 %59)
  store i32 %60, i32* %6, align 4
  br label %78

61:                                               ; preds = %49, %42
  %62 = load i64, i64* %8, align 8
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %61
  %65 = load i64, i64* %10, align 8
  %66 = load i64, i64* @MAXOFFSET_T, align 8
  %67 = load i64, i64* %8, align 8
  %68 = sub nsw i64 %66, %67
  %69 = icmp ugt i64 %65, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %64, %61
  %71 = load i32*, i32** %13, align 8
  %72 = call i32 @ZFS_EXIT(i32* %71)
  %73 = load i32, i32* @ENXIO, align 4
  %74 = call i32 @SET_ERROR(i32 %73)
  store i32 %74, i32* %6, align 4
  br label %78

75:                                               ; preds = %64
  %76 = load i32*, i32** %13, align 8
  %77 = call i32 @ZFS_EXIT(i32* %76)
  store i32 0, i32* %6, align 4
  br label %78

78:                                               ; preds = %75, %70, %56, %37
  %79 = load i32, i32* %6, align 4
  ret i32 %79
}

declare dso_local %struct.TYPE_4__* @ITOZ(%struct.inode*) #1

declare dso_local i32* @ITOZSB(%struct.inode*) #1

declare dso_local i32 @ZFS_ENTER(i32*) #1

declare dso_local i32 @ZFS_VERIFY_ZP(%struct.TYPE_4__*) #1

declare dso_local i32 @ZFS_EXIT(i32*) #1

declare dso_local i32 @SET_ERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
