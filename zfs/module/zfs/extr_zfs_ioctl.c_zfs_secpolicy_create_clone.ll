; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_ioctl.c_zfs_secpolicy_create_clone.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_ioctl.c_zfs_secpolicy_create_clone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"origin\00", align 1
@ZFS_DELEG_PERM_CLONE = common dso_local global i32 0, align 4
@ZFS_DELEG_PERM_CREATE = common dso_local global i32 0, align 4
@ZFS_DELEG_PERM_MOUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*, i32*)* @zfs_secpolicy_create_clone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_secpolicy_create_clone(%struct.TYPE_3__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = trunc i64 %14 to i32
  %21 = call i32 @zfs_get_parent(i32 %19, i8* %16, i32 %20)
  store i32 %21, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* %10, align 4
  store i32 %24, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %48

25:                                               ; preds = %3
  %26 = load i32*, i32** %6, align 8
  %27 = call i64 @nvlist_lookup_string(i32* %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %11)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %25
  %30 = load i8*, i8** %11, align 8
  %31 = load i32, i32* @ZFS_DELEG_PERM_CLONE, align 4
  %32 = load i32*, i32** %7, align 8
  %33 = call i32 @zfs_secpolicy_write_perms(i8* %30, i32 %31, i32* %32)
  store i32 %33, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* %10, align 4
  store i32 %36, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %48

37:                                               ; preds = %29, %25
  %38 = load i32, i32* @ZFS_DELEG_PERM_CREATE, align 4
  %39 = load i32*, i32** %7, align 8
  %40 = call i32 @zfs_secpolicy_write_perms(i8* %16, i32 %38, i32* %39)
  store i32 %40, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* %10, align 4
  store i32 %43, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %48

44:                                               ; preds = %37
  %45 = load i32, i32* @ZFS_DELEG_PERM_MOUNT, align 4
  %46 = load i32*, i32** %7, align 8
  %47 = call i32 @zfs_secpolicy_write_perms(i8* %16, i32 %45, i32* %46)
  store i32 %47, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %48

48:                                               ; preds = %44, %42, %35, %23
  %49 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %49)
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @zfs_get_parent(i32, i8*, i32) #2

declare dso_local i64 @nvlist_lookup_string(i32*, i8*, i8**) #2

declare dso_local i32 @zfs_secpolicy_write_perms(i8*, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
