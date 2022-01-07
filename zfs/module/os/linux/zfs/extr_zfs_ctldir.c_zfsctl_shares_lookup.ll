; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_ctldir.c_zfsctl_shares_lookup.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_ctldir.c_zfsctl_shares_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.TYPE_6__ = type { i64 }

@ENOTSUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfsctl_shares_lookup(%struct.inode* %0, i8* %1, %struct.inode** %2, i32 %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.inode**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_6__*, align 8
  %17 = alloca %struct.inode*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %9, align 8
  store i8* %1, i8** %10, align 8
  store %struct.inode** %2, %struct.inode*** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %20 = load %struct.inode*, %struct.inode** %9, align 8
  %21 = call %struct.TYPE_6__* @ITOZSB(%struct.inode* %20)
  store %struct.TYPE_6__* %21, %struct.TYPE_6__** %16, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %23 = call i32 @ZFS_ENTER(%struct.TYPE_6__* %22)
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %7
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %30 = call i32 @ZFS_EXIT(%struct.TYPE_6__* %29)
  %31 = load i32, i32* @ENOTSUP, align 4
  %32 = call i32 @SET_ERROR(i32 %31)
  store i32 %32, i32* %8, align 4
  br label %53

33:                                               ; preds = %7
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @zfs_zget(%struct.TYPE_6__* %34, i64 %37, i32** %18)
  store i32 %38, i32* %19, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %33
  %41 = load i32*, i32** %18, align 8
  %42 = call i32 @ZTOI(i32* %41)
  %43 = load i8*, i8** %10, align 8
  %44 = load i32*, i32** %13, align 8
  %45 = call i32 @zfs_lookup(i32 %42, i8* %43, %struct.inode** %17, i32 0, i32* %44, i32* null, i32* null)
  store i32 %45, i32* %19, align 4
  %46 = load i32*, i32** %18, align 8
  %47 = call i32 @ZTOI(i32* %46)
  %48 = call i32 @iput(i32 %47)
  br label %49

49:                                               ; preds = %40, %33
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %51 = call i32 @ZFS_EXIT(%struct.TYPE_6__* %50)
  %52 = load i32, i32* %19, align 4
  store i32 %52, i32* %8, align 4
  br label %53

53:                                               ; preds = %49, %28
  %54 = load i32, i32* %8, align 4
  ret i32 %54
}

declare dso_local %struct.TYPE_6__* @ITOZSB(%struct.inode*) #1

declare dso_local i32 @ZFS_ENTER(%struct.TYPE_6__*) #1

declare dso_local i32 @ZFS_EXIT(%struct.TYPE_6__*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @zfs_zget(%struct.TYPE_6__*, i64, i32**) #1

declare dso_local i32 @zfs_lookup(i32, i8*, %struct.inode**, i32, i32*, i32*, i32*) #1

declare dso_local i32 @ZTOI(i32*) #1

declare dso_local i32 @iput(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
