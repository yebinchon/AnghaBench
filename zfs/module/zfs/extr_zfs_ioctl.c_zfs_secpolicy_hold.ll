; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_ioctl.c_zfs_secpolicy_hold.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_ioctl.c_zfs_secpolicy_hold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"holds\00", align 1
@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4
@ZFS_DELEG_PERM_HOLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*)* @zfs_secpolicy_hold to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_secpolicy_hold(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = call i32* @fnvlist_lookup_nvlist(i32* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32* %15, i32** %9, align 8
  %16 = load i32*, i32** %9, align 8
  %17 = call i32* @nvlist_next_nvpair(i32* %16, i32* null)
  store i32* %17, i32** %8, align 8
  br label %18

18:                                               ; preds = %46, %3
  %19 = load i32*, i32** %8, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %50

21:                                               ; preds = %18
  %22 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %11, align 8
  %25 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %12, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = call i32 @nvpair_name(i32* %26)
  %28 = call i32 @dmu_fsname(i32 %27, i8* %25)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %21
  %32 = load i32, i32* %10, align 4
  store i32 %32, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %42

33:                                               ; preds = %21
  %34 = load i32, i32* @ZFS_DELEG_PERM_HOLD, align 4
  %35 = load i32*, i32** %7, align 8
  %36 = call i32 @zfs_secpolicy_write_perms(i8* %25, i32 %34, i32* %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* %10, align 4
  store i32 %40, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %42

41:                                               ; preds = %33
  store i32 0, i32* %13, align 4
  br label %42

42:                                               ; preds = %41, %39, %31
  %43 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %43)
  %44 = load i32, i32* %13, align 4
  switch i32 %44, label %53 [
    i32 0, label %45
    i32 1, label %51
  ]

45:                                               ; preds = %42
  br label %46

46:                                               ; preds = %45
  %47 = load i32*, i32** %9, align 8
  %48 = load i32*, i32** %8, align 8
  %49 = call i32* @nvlist_next_nvpair(i32* %47, i32* %48)
  store i32* %49, i32** %8, align 8
  br label %18

50:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %50, %42
  %52 = load i32, i32* %4, align 4
  ret i32 %52

53:                                               ; preds = %42
  unreachable
}

declare dso_local i32* @fnvlist_lookup_nvlist(i32*, i8*) #1

declare dso_local i32* @nvlist_next_nvpair(i32*, i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @dmu_fsname(i32, i8*) #1

declare dso_local i32 @nvpair_name(i32*) #1

declare dso_local i32 @zfs_secpolicy_write_perms(i8*, i32, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
