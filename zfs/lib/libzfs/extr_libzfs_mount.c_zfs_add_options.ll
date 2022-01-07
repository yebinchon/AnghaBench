; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_mount.c_zfs_add_options.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_mount.c_zfs_add_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZFS_PROP_ATIME = common dso_local global i32 0, align 4
@MNTOPT_ATIME = common dso_local global i32 0, align 4
@MNTOPT_NOATIME = common dso_local global i32 0, align 4
@ZFS_PROP_RELATIME = common dso_local global i32 0, align 4
@MNTOPT_RELATIME = common dso_local global i32 0, align 4
@MNTOPT_STRICTATIME = common dso_local global i32 0, align 4
@ZFS_PROP_DEVICES = common dso_local global i32 0, align 4
@MNTOPT_DEVICES = common dso_local global i32 0, align 4
@MNTOPT_NODEVICES = common dso_local global i32 0, align 4
@ZFS_PROP_EXEC = common dso_local global i32 0, align 4
@MNTOPT_EXEC = common dso_local global i32 0, align 4
@MNTOPT_NOEXEC = common dso_local global i32 0, align 4
@ZFS_PROP_READONLY = common dso_local global i32 0, align 4
@MNTOPT_RO = common dso_local global i32 0, align 4
@MNTOPT_RW = common dso_local global i32 0, align 4
@ZFS_PROP_SETUID = common dso_local global i32 0, align 4
@MNTOPT_SETUID = common dso_local global i32 0, align 4
@MNTOPT_NOSETUID = common dso_local global i32 0, align 4
@ZFS_PROP_NBMAND = common dso_local global i32 0, align 4
@MNTOPT_NBMAND = common dso_local global i32 0, align 4
@MNTOPT_NONBMAND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32)* @zfs_add_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_add_options(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @ZFS_PROP_ATIME, align 4
  %12 = load i32, i32* @MNTOPT_ATIME, align 4
  %13 = load i32, i32* @MNTOPT_NOATIME, align 4
  %14 = call i32 @zfs_add_option(i32* %8, i8* %9, i32 %10, i32 %11, i32 %12, i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i8*, i8** %5, align 8
  %16 = load i32, i32* @MNTOPT_NOATIME, align 4
  %17 = call i32* @strstr(i8* %15, i32 %16)
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %27

19:                                               ; preds = %3
  %20 = load i32*, i32** %4, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @ZFS_PROP_RELATIME, align 4
  %24 = load i32, i32* @MNTOPT_RELATIME, align 4
  %25 = load i32, i32* @MNTOPT_STRICTATIME, align 4
  %26 = call i32 @zfs_add_option(i32* %20, i8* %21, i32 %22, i32 %23, i32 %24, i32 %25)
  store i32 %26, i32* %7, align 4
  br label %27

27:                                               ; preds = %19, %3
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i32, i32* %7, align 4
  br label %40

32:                                               ; preds = %27
  %33 = load i32*, i32** %4, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @ZFS_PROP_DEVICES, align 4
  %37 = load i32, i32* @MNTOPT_DEVICES, align 4
  %38 = load i32, i32* @MNTOPT_NODEVICES, align 4
  %39 = call i32 @zfs_add_option(i32* %33, i8* %34, i32 %35, i32 %36, i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %32, %30
  %41 = phi i32 [ %31, %30 ], [ %39, %32 ]
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i32, i32* %7, align 4
  br label %54

46:                                               ; preds = %40
  %47 = load i32*, i32** %4, align 8
  %48 = load i8*, i8** %5, align 8
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @ZFS_PROP_EXEC, align 4
  %51 = load i32, i32* @MNTOPT_EXEC, align 4
  %52 = load i32, i32* @MNTOPT_NOEXEC, align 4
  %53 = call i32 @zfs_add_option(i32* %47, i8* %48, i32 %49, i32 %50, i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %46, %44
  %55 = phi i32 [ %45, %44 ], [ %53, %46 ]
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i32, i32* %7, align 4
  br label %68

60:                                               ; preds = %54
  %61 = load i32*, i32** %4, align 8
  %62 = load i8*, i8** %5, align 8
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @ZFS_PROP_READONLY, align 4
  %65 = load i32, i32* @MNTOPT_RO, align 4
  %66 = load i32, i32* @MNTOPT_RW, align 4
  %67 = call i32 @zfs_add_option(i32* %61, i8* %62, i32 %63, i32 %64, i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %60, %58
  %69 = phi i32 [ %59, %58 ], [ %67, %60 ]
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = load i32, i32* %7, align 4
  br label %82

74:                                               ; preds = %68
  %75 = load i32*, i32** %4, align 8
  %76 = load i8*, i8** %5, align 8
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @ZFS_PROP_SETUID, align 4
  %79 = load i32, i32* @MNTOPT_SETUID, align 4
  %80 = load i32, i32* @MNTOPT_NOSETUID, align 4
  %81 = call i32 @zfs_add_option(i32* %75, i8* %76, i32 %77, i32 %78, i32 %79, i32 %80)
  br label %82

82:                                               ; preds = %74, %72
  %83 = phi i32 [ %73, %72 ], [ %81, %74 ]
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %82
  %87 = load i32, i32* %7, align 4
  br label %96

88:                                               ; preds = %82
  %89 = load i32*, i32** %4, align 8
  %90 = load i8*, i8** %5, align 8
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* @ZFS_PROP_NBMAND, align 4
  %93 = load i32, i32* @MNTOPT_NBMAND, align 4
  %94 = load i32, i32* @MNTOPT_NONBMAND, align 4
  %95 = call i32 @zfs_add_option(i32* %89, i8* %90, i32 %91, i32 %92, i32 %93, i32 %94)
  br label %96

96:                                               ; preds = %88, %86
  %97 = phi i32 [ %87, %86 ], [ %95, %88 ]
  store i32 %97, i32* %7, align 4
  %98 = load i32, i32* %7, align 4
  ret i32 %98
}

declare dso_local i32 @zfs_add_option(i32*, i8*, i32, i32, i32, i32) #1

declare dso_local i32* @strstr(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
