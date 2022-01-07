; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_mount.c_zfs_iter_cb.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_mount.c_zfs_iter_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZFS_TYPE_FILESYSTEM = common dso_local global i32 0, align 4
@ZFS_PROP_CANMOUNT = common dso_local global i32 0, align 4
@ZFS_CANMOUNT_NOAUTO = common dso_local global i64 0, align 8
@ZFS_PROP_KEYSTATUS = common dso_local global i32 0, align 4
@ZFS_KEYSTATUS_UNAVAILABLE = common dso_local global i64 0, align 8
@ZFS_PROP_INCONSISTENT = common dso_local global i32 0, align 4
@ZFS_PROP_RECEIVE_RESUME_TOKEN = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @zfs_iter_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_iter_cb(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = bitcast i8* %7 to i32*
  store i32* %8, i32** %6, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = call i32 @zfs_get_type(i32* %9)
  %11 = load i32, i32* @ZFS_TYPE_FILESYSTEM, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @zfs_close(i32* %15)
  store i32 0, i32* %3, align 4
  br label %61

17:                                               ; preds = %2
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* @ZFS_PROP_CANMOUNT, align 4
  %20 = call i64 @zfs_prop_get_int(i32* %18, i32 %19)
  %21 = load i64, i64* @ZFS_CANMOUNT_NOAUTO, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @zfs_close(i32* %24)
  store i32 0, i32* %3, align 4
  br label %61

26:                                               ; preds = %17
  %27 = load i32*, i32** %4, align 8
  %28 = load i32, i32* @ZFS_PROP_KEYSTATUS, align 4
  %29 = call i64 @zfs_prop_get_int(i32* %27, i32 %28)
  %30 = load i64, i64* @ZFS_KEYSTATUS_UNAVAILABLE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @zfs_close(i32* %33)
  store i32 0, i32* %3, align 4
  br label %61

35:                                               ; preds = %26
  %36 = load i32*, i32** %4, align 8
  %37 = load i32, i32* @ZFS_PROP_INCONSISTENT, align 4
  %38 = call i64 @zfs_prop_get_int(i32* %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %35
  %41 = load i32*, i32** %4, align 8
  %42 = load i32, i32* @ZFS_PROP_RECEIVE_RESUME_TOKEN, align 4
  %43 = load i32, i32* @B_TRUE, align 4
  %44 = call i64 @zfs_prop_get(i32* %41, i32 %42, i32* null, i32 0, i32* null, i32* null, i32 0, i32 %43)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i32*, i32** %4, align 8
  %48 = call i32 @zfs_close(i32* %47)
  store i32 0, i32* %3, align 4
  br label %61

49:                                               ; preds = %40, %35
  %50 = load i32*, i32** %6, align 8
  %51 = load i32*, i32** %4, align 8
  %52 = call i32 @libzfs_add_handle(i32* %50, i32* %51)
  %53 = load i32*, i32** %4, align 8
  %54 = load i32*, i32** %6, align 8
  %55 = call i64 @zfs_iter_filesystems(i32* %53, i32 (i32*, i8*)* @zfs_iter_cb, i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %49
  %58 = load i32*, i32** %4, align 8
  %59 = call i32 @zfs_close(i32* %58)
  store i32 -1, i32* %3, align 4
  br label %61

60:                                               ; preds = %49
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %60, %57, %46, %32, %23, %14
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @zfs_get_type(i32*) #1

declare dso_local i32 @zfs_close(i32*) #1

declare dso_local i64 @zfs_prop_get_int(i32*, i32) #1

declare dso_local i64 @zfs_prop_get(i32*, i32, i32*, i32, i32*, i32*, i32, i32) #1

declare dso_local i32 @libzfs_add_handle(i32*, i32*) #1

declare dso_local i64 @zfs_iter_filesystems(i32*, i32 (i32*, i8*)*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
