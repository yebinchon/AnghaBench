; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_ioctl.c_zfs_fill_zplprops.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_ioctl.c_zfs_fill_zplprops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZPL_VERSION = common dso_local global i64 0, align 8
@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@ZPL_VERSION_FUID = common dso_local global i64 0, align 8
@ZPL_VERSION_SA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*, i32*)* @zfs_fill_zplprops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_fill_zplprops(i8* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %20 = load i64, i64* @ZPL_VERSION, align 8
  store i64 %20, i64* %12, align 8
  store i32* null, i32** %13, align 8
  %21 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %14, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %15, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = trunc i64 %22 to i32
  %27 = call i32 @zfs_get_parent(i8* %25, i8* %24, i32 %26)
  %28 = load i8*, i8** %6, align 8
  %29 = load i32, i32* @FTAG, align 4
  %30 = call i32 @spa_open(i8* %28, i32** %16, i32 %29)
  store i32 %30, i32* %18, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %4
  %33 = load i32, i32* %18, align 4
  store i32 %33, i32* %5, align 4
  store i32 1, i32* %19, align 4
  br label %68

34:                                               ; preds = %4
  %35 = load i32*, i32** %16, align 8
  %36 = call i64 @spa_version(i32* %35)
  store i64 %36, i64* %17, align 8
  %37 = load i32*, i32** %16, align 8
  %38 = load i32, i32* @FTAG, align 4
  %39 = call i32 @spa_close(i32* %37, i32 %38)
  %40 = load i64, i64* %17, align 8
  %41 = call i64 @zfs_zpl_version_map(i64 %40)
  store i64 %41, i64* %12, align 8
  %42 = load i64, i64* %12, align 8
  %43 = load i64, i64* @ZPL_VERSION_FUID, align 8
  %44 = icmp sge i64 %42, %43
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %10, align 4
  %46 = load i64, i64* %12, align 8
  %47 = load i64, i64* @ZPL_VERSION_SA, align 8
  %48 = icmp sge i64 %46, %47
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* @FTAG, align 4
  %51 = call i32 @dmu_objset_hold(i8* %24, i32 %50, i32** %13)
  store i32 %51, i32* %18, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %34
  %54 = load i32, i32* %18, align 4
  store i32 %54, i32* %5, align 4
  store i32 1, i32* %19, align 4
  br label %68

55:                                               ; preds = %34
  %56 = load i32*, i32** %13, align 8
  %57 = load i64, i64* %12, align 8
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %11, align 4
  %60 = load i32*, i32** %7, align 8
  %61 = load i32*, i32** %8, align 8
  %62 = load i32*, i32** %9, align 8
  %63 = call i32 @zfs_fill_zplprops_impl(i32* %56, i64 %57, i32 %58, i32 %59, i32* %60, i32* %61, i32* %62)
  store i32 %63, i32* %18, align 4
  %64 = load i32*, i32** %13, align 8
  %65 = load i32, i32* @FTAG, align 4
  %66 = call i32 @dmu_objset_rele(i32* %64, i32 %65)
  %67 = load i32, i32* %18, align 4
  store i32 %67, i32* %5, align 4
  store i32 1, i32* %19, align 4
  br label %68

68:                                               ; preds = %55, %53, %32
  %69 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %69)
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @zfs_get_parent(i8*, i8*, i32) #2

declare dso_local i32 @spa_open(i8*, i32**, i32) #2

declare dso_local i64 @spa_version(i32*) #2

declare dso_local i32 @spa_close(i32*, i32) #2

declare dso_local i64 @zfs_zpl_version_map(i64) #2

declare dso_local i32 @dmu_objset_hold(i8*, i32, i32**) #2

declare dso_local i32 @zfs_fill_zplprops_impl(i32*, i64, i32, i32, i32*, i32*, i32*) #2

declare dso_local i32 @dmu_objset_rele(i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
