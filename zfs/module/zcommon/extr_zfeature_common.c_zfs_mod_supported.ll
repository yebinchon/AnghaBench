; ModuleID = '/home/carl/AnghaBench/zfs/module/zcommon/extr_zfeature_common.c_zfs_mod_supported.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zcommon/extr_zfeature_common.c_zfs_mod_supported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat64 = type { i32 }

@ZFS_SYSFS_DIR = common dso_local global i32 0, align 4
@ZFS_SYSFS_ALT_DIR = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_mod_supported(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.stat64, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = load i32, i32* @ZFS_SYSFS_DIR, align 4
  %10 = call i64 @zfs_mod_supported_impl(i8* %7, i8* %8, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = load i8*, i8** %3, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = load i32, i32* @ZFS_SYSFS_ALT_DIR, align 4
  %16 = call i64 @zfs_mod_supported_impl(i8* %13, i8* %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br label %18

18:                                               ; preds = %12, %2
  %19 = phi i1 [ true, %2 ], [ %17, %12 ]
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @B_FALSE, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %41

24:                                               ; preds = %18
  %25 = load i32, i32* @ZFS_SYSFS_DIR, align 4
  %26 = call i64 @stat64(i32 %25, %struct.stat64* %6)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %24
  %29 = load i8*, i8** %3, align 8
  %30 = load i32, i32* @ZFS_SYSFS_DIR, align 4
  %31 = call i64 @zfs_mod_supported_impl(i8* %29, i8* null, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %28
  %34 = load i8*, i8** %3, align 8
  %35 = load i32, i32* @ZFS_SYSFS_ALT_DIR, align 4
  %36 = call i64 @zfs_mod_supported_impl(i8* %34, i8* null, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* @B_TRUE, align 4
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %38, %33, %28, %24
  br label %41

41:                                               ; preds = %40, %18
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i64 @zfs_mod_supported_impl(i8*, i8*, i32) #1

declare dso_local i64 @stat64(i32, %struct.stat64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
