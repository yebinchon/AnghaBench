; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_vnops.c_zfs_space.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_vnops.c_zfs_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.TYPE_4__ = type { i64, i64 }

@F_FREESP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@ACE_WRITE_DATA = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_space(%struct.inode* %0, i32 %1, %struct.TYPE_4__* %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %19 = load %struct.inode*, %struct.inode** %8, align 8
  %20 = call i32* @ITOZ(%struct.inode* %19)
  store i32* %20, i32** %14, align 8
  %21 = load %struct.inode*, %struct.inode** %8, align 8
  %22 = call i32* @ITOZSB(%struct.inode* %21)
  store i32* %22, i32** %15, align 8
  %23 = load i32*, i32** %15, align 8
  %24 = call i32 @ZFS_ENTER(i32* %23)
  %25 = load i32*, i32** %14, align 8
  %26 = call i32 @ZFS_VERIFY_ZP(i32* %25)
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @F_FREESP, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %6
  %31 = load i32*, i32** %15, align 8
  %32 = call i32 @ZFS_EXIT(i32* %31)
  %33 = load i32, i32* @EINVAL, align 4
  %34 = call i32 @SET_ERROR(i32 %33)
  store i32 %34, i32* %7, align 4
  br label %92

35:                                               ; preds = %6
  %36 = load i32*, i32** %15, align 8
  %37 = call i64 @zfs_is_readonly(i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load i32*, i32** %15, align 8
  %41 = call i32 @ZFS_EXIT(i32* %40)
  %42 = load i32, i32* @EROFS, align 4
  %43 = call i32 @SET_ERROR(i32 %42)
  store i32 %43, i32* %7, align 4
  br label %92

44:                                               ; preds = %35
  %45 = load %struct.inode*, %struct.inode** %8, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %47 = load i32, i32* @SEEK_SET, align 4
  %48 = load i32, i32* %12, align 4
  %49 = call i32 @convoff(%struct.inode* %45, %struct.TYPE_4__* %46, i32 %47, i32 %48)
  store i32 %49, i32* %18, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %44
  %52 = load i32*, i32** %15, align 8
  %53 = call i32 @ZFS_EXIT(i32* %52)
  %54 = load i32, i32* %18, align 4
  store i32 %54, i32* %7, align 4
  br label %92

55:                                               ; preds = %44
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = load i32*, i32** %15, align 8
  %62 = call i32 @ZFS_EXIT(i32* %61)
  %63 = load i32, i32* @EINVAL, align 4
  %64 = call i32 @SET_ERROR(i32 %63)
  store i32 %64, i32* %7, align 4
  br label %92

65:                                               ; preds = %55
  %66 = load i32*, i32** %14, align 8
  %67 = load i32, i32* @ACE_WRITE_DATA, align 4
  %68 = load i32, i32* @B_FALSE, align 4
  %69 = load i32*, i32** %13, align 8
  %70 = call i32 @zfs_zaccess(i32* %66, i32 %67, i32 0, i32 %68, i32* %69)
  store i32 %70, i32* %18, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %65
  %73 = load i32*, i32** %15, align 8
  %74 = call i32 @ZFS_EXIT(i32* %73)
  %75 = load i32, i32* %18, align 4
  store i32 %75, i32* %7, align 4
  br label %92

76:                                               ; preds = %65
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  store i64 %79, i64* %16, align 8
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  store i64 %82, i64* %17, align 8
  %83 = load i32*, i32** %14, align 8
  %84 = load i64, i64* %16, align 8
  %85 = load i64, i64* %17, align 8
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* @TRUE, align 4
  %88 = call i32 @zfs_freesp(i32* %83, i64 %84, i64 %85, i32 %86, i32 %87)
  store i32 %88, i32* %18, align 4
  %89 = load i32*, i32** %15, align 8
  %90 = call i32 @ZFS_EXIT(i32* %89)
  %91 = load i32, i32* %18, align 4
  store i32 %91, i32* %7, align 4
  br label %92

92:                                               ; preds = %76, %72, %60, %51, %39, %30
  %93 = load i32, i32* %7, align 4
  ret i32 %93
}

declare dso_local i32* @ITOZ(%struct.inode*) #1

declare dso_local i32* @ITOZSB(%struct.inode*) #1

declare dso_local i32 @ZFS_ENTER(i32*) #1

declare dso_local i32 @ZFS_VERIFY_ZP(i32*) #1

declare dso_local i32 @ZFS_EXIT(i32*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i64 @zfs_is_readonly(i32*) #1

declare dso_local i32 @convoff(%struct.inode*, %struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @zfs_zaccess(i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @zfs_freesp(i32*, i64, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
