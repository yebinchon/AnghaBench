; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_ctldir.c_zfsctl_root_lookup.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_ctldir.c_zfsctl_root_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.inode* }

@.str = private unnamed_addr constant [3 x i8] c"..\00", align 1
@ZFS_SNAPDIR_NAME = common dso_local global i8* null, align 8
@ZFSCTL_INO_SNAPDIR = common dso_local global i32 0, align 4
@zpl_fops_snapdir = common dso_local global i32 0, align 4
@zpl_ops_snapdir = common dso_local global i32 0, align 4
@ZFS_SHAREDIR_NAME = common dso_local global i8* null, align 8
@ZFSCTL_INO_SHARES = common dso_local global i32 0, align 4
@zpl_fops_shares = common dso_local global i32 0, align 4
@zpl_ops_shares = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfsctl_root_lookup(%struct.inode* %0, i8* %1, %struct.inode** %2, i32 %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.inode**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %8, align 8
  store i8* %1, i8** %9, align 8
  store %struct.inode** %2, %struct.inode*** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %17 = load %struct.inode*, %struct.inode** %8, align 8
  %18 = call i32* @ITOZSB(%struct.inode* %17)
  store i32* %18, i32** %15, align 8
  store i32 0, i32* %16, align 4
  %19 = load i32*, i32** %15, align 8
  %20 = call i32 @ZFS_ENTER(i32* %19)
  %21 = load i8*, i8** %9, align 8
  %22 = call i64 @strcmp(i8* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %7
  %25 = load %struct.inode*, %struct.inode** %8, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load %struct.inode*, %struct.inode** %30, align 8
  %32 = load %struct.inode**, %struct.inode*** %10, align 8
  store %struct.inode* %31, %struct.inode** %32, align 8
  br label %57

33:                                               ; preds = %7
  %34 = load i8*, i8** %9, align 8
  %35 = load i8*, i8** @ZFS_SNAPDIR_NAME, align 8
  %36 = call i64 @strcmp(i8* %34, i8* %35)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load i32*, i32** %15, align 8
  %40 = load i32, i32* @ZFSCTL_INO_SNAPDIR, align 4
  %41 = call %struct.inode* @zfsctl_inode_lookup(i32* %39, i32 %40, i32* @zpl_fops_snapdir, i32* @zpl_ops_snapdir)
  %42 = load %struct.inode**, %struct.inode*** %10, align 8
  store %struct.inode* %41, %struct.inode** %42, align 8
  br label %56

43:                                               ; preds = %33
  %44 = load i8*, i8** %9, align 8
  %45 = load i8*, i8** @ZFS_SHAREDIR_NAME, align 8
  %46 = call i64 @strcmp(i8* %44, i8* %45)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load i32*, i32** %15, align 8
  %50 = load i32, i32* @ZFSCTL_INO_SHARES, align 4
  %51 = call %struct.inode* @zfsctl_inode_lookup(i32* %49, i32 %50, i32* @zpl_fops_shares, i32* @zpl_ops_shares)
  %52 = load %struct.inode**, %struct.inode*** %10, align 8
  store %struct.inode* %51, %struct.inode** %52, align 8
  br label %55

53:                                               ; preds = %43
  %54 = load %struct.inode**, %struct.inode*** %10, align 8
  store %struct.inode* null, %struct.inode** %54, align 8
  br label %55

55:                                               ; preds = %53, %48
  br label %56

56:                                               ; preds = %55, %38
  br label %57

57:                                               ; preds = %56, %24
  %58 = load %struct.inode**, %struct.inode*** %10, align 8
  %59 = load %struct.inode*, %struct.inode** %58, align 8
  %60 = icmp eq %struct.inode* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load i32, i32* @ENOENT, align 4
  %63 = call i32 @SET_ERROR(i32 %62)
  store i32 %63, i32* %16, align 4
  br label %64

64:                                               ; preds = %61, %57
  %65 = load i32*, i32** %15, align 8
  %66 = call i32 @ZFS_EXIT(i32* %65)
  %67 = load i32, i32* %16, align 4
  ret i32 %67
}

declare dso_local i32* @ITOZSB(%struct.inode*) #1

declare dso_local i32 @ZFS_ENTER(i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.inode* @zfsctl_inode_lookup(i32*, i32, i32*, i32*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @ZFS_EXIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
