; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_ctldir.c_zfsctl_snapdir_vget.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_ctldir.c_zfsctl_snapdir_vget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.inode = type { i32 }
%struct.path = type { i32 }
%struct.dentry = type { i32 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@LOOKUP_FOLLOW = common dso_local global i32 0, align 4
@LOOKUP_DIRECTORY = common dso_local global i32 0, align 4
@ZFSCTL_INO_SNAPDIRS = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfsctl_snapdir_vget(%struct.super_block* %0, i64 %1, i32 %2, %struct.inode** %3) #0 {
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.path, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.dentry*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.inode** %3, %struct.inode*** %8, align 8
  %13 = load i32, i32* @MAXPATHLEN, align 4
  %14 = load i32, i32* @KM_SLEEP, align 4
  %15 = call i8* @kmem_alloc(i32 %13, i32 %14)
  store i8* %15, i8** %11, align 8
  %16 = load %struct.super_block*, %struct.super_block** %5, align 8
  %17 = getelementptr inbounds %struct.super_block, %struct.super_block* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i64, i64* %6, align 8
  %20 = load i32, i32* @MAXPATHLEN, align 4
  %21 = load i8*, i8** %11, align 8
  %22 = call i32 @zfsctl_snapshot_path_objset(i32 %18, i64 %19, i32 %20, i8* %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %4
  br label %82

26:                                               ; preds = %4
  %27 = load i8*, i8** %11, align 8
  %28 = load i32, i32* @LOOKUP_FOLLOW, align 4
  %29 = load i32, i32* @LOOKUP_DIRECTORY, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @kern_path(i8* %27, i32 %30, %struct.path* %10)
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  br label %82

36:                                               ; preds = %26
  %37 = call i32 @path_put(%struct.path* %10)
  %38 = load %struct.super_block*, %struct.super_block** %5, align 8
  %39 = load i64, i64* @ZFSCTL_INO_SNAPDIRS, align 8
  %40 = load i64, i64* %6, align 8
  %41 = sub nsw i64 %39, %40
  %42 = call %struct.inode* @ilookup(%struct.super_block* %38, i64 %41)
  %43 = load %struct.inode**, %struct.inode*** %8, align 8
  store %struct.inode* %42, %struct.inode** %43, align 8
  %44 = load %struct.inode**, %struct.inode*** %8, align 8
  %45 = load %struct.inode*, %struct.inode** %44, align 8
  %46 = icmp eq %struct.inode* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %36
  %48 = load i32, i32* @ENOENT, align 4
  %49 = call i32 @SET_ERROR(i32 %48)
  store i32 %49, i32* %9, align 4
  br label %82

50:                                               ; preds = %36
  %51 = load %struct.inode**, %struct.inode*** %8, align 8
  %52 = load %struct.inode*, %struct.inode** %51, align 8
  %53 = call i32 @igrab(%struct.inode* %52)
  %54 = call %struct.dentry* @d_obtain_alias(i32 %53)
  store %struct.dentry* %54, %struct.dentry** %12, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.dentry*, %struct.dentry** %12, align 8
  %57 = call i32 @IS_ERR(%struct.dentry* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %50
  %60 = load %struct.dentry*, %struct.dentry** %12, align 8
  %61 = call i64 @d_mountpoint(%struct.dentry* %60)
  %62 = icmp ne i64 %61, 0
  br label %63

63:                                               ; preds = %59, %50
  %64 = phi i1 [ false, %50 ], [ %62, %59 ]
  %65 = zext i1 %64 to i32
  %66 = icmp ne i32 %55, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %63
  %68 = load %struct.inode**, %struct.inode*** %8, align 8
  %69 = load %struct.inode*, %struct.inode** %68, align 8
  %70 = call i32 @iput(%struct.inode* %69)
  %71 = load %struct.inode**, %struct.inode*** %8, align 8
  store %struct.inode* null, %struct.inode** %71, align 8
  %72 = load i32, i32* @ENOENT, align 4
  %73 = call i32 @SET_ERROR(i32 %72)
  store i32 %73, i32* %9, align 4
  br label %74

74:                                               ; preds = %67, %63
  %75 = load %struct.dentry*, %struct.dentry** %12, align 8
  %76 = call i32 @IS_ERR(%struct.dentry* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %74
  %79 = load %struct.dentry*, %struct.dentry** %12, align 8
  %80 = call i32 @dput(%struct.dentry* %79)
  br label %81

81:                                               ; preds = %78, %74
  br label %82

82:                                               ; preds = %81, %47, %35, %25
  %83 = load i8*, i8** %11, align 8
  %84 = load i32, i32* @MAXPATHLEN, align 4
  %85 = call i32 @kmem_free(i8* %83, i32 %84)
  %86 = load i32, i32* %9, align 4
  ret i32 %86
}

declare dso_local i8* @kmem_alloc(i32, i32) #1

declare dso_local i32 @zfsctl_snapshot_path_objset(i32, i64, i32, i8*) #1

declare dso_local i32 @kern_path(i8*, i32, %struct.path*) #1

declare dso_local i32 @path_put(%struct.path*) #1

declare dso_local %struct.inode* @ilookup(%struct.super_block*, i64) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local %struct.dentry* @d_obtain_alias(i32) #1

declare dso_local i32 @igrab(%struct.inode*) #1

declare dso_local i32 @IS_ERR(%struct.dentry*) #1

declare dso_local i64 @d_mountpoint(%struct.dentry*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @kmem_free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
