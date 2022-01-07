; ModuleID = '/home/carl/AnghaBench/zfs/module/zcommon/extr_zfs_comutil.c_zfs_special_devs.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zcommon/extr_zfs_comutil.c_zfs_special_devs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZPOOL_CONFIG_CHILDREN = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_ALLOCATION_BIAS = common dso_local global i32 0, align 4
@VDEV_ALLOC_BIAS_SPECIAL = common dso_local global i32 0, align 4
@VDEV_ALLOC_BIAS_DEDUP = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_special_devs(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = load i32, i32* @ZPOOL_CONFIG_CHILDREN, align 4
  %10 = call i64 @nvlist_lookup_nvlist_array(i32* %8, i32 %9, i32*** %6, i64* %7)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @B_FALSE, align 4
  store i32 %13, i32* %2, align 4
  br label %46

14:                                               ; preds = %1
  store i64 0, i64* %5, align 8
  br label %15

15:                                               ; preds = %41, %14
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* %7, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %44

19:                                               ; preds = %15
  %20 = load i32**, i32*** %6, align 8
  %21 = load i64, i64* %5, align 8
  %22 = getelementptr inbounds i32*, i32** %20, i64 %21
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* @ZPOOL_CONFIG_ALLOCATION_BIAS, align 4
  %25 = call i64 @nvlist_lookup_string(i32* %23, i32 %24, i8** %4)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %19
  %28 = load i8*, i8** %4, align 8
  %29 = load i32, i32* @VDEV_ALLOC_BIAS_SPECIAL, align 4
  %30 = call i64 @strcmp(i8* %28, i32 %29)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = load i8*, i8** %4, align 8
  %34 = load i32, i32* @VDEV_ALLOC_BIAS_DEDUP, align 4
  %35 = call i64 @strcmp(i8* %33, i32 %34)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32, %27
  %38 = load i32, i32* @B_TRUE, align 4
  store i32 %38, i32* %2, align 4
  br label %46

39:                                               ; preds = %32
  br label %40

40:                                               ; preds = %39, %19
  br label %41

41:                                               ; preds = %40
  %42 = load i64, i64* %5, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %5, align 8
  br label %15

44:                                               ; preds = %15
  %45 = load i32, i32* @B_FALSE, align 4
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %44, %37, %12
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i64 @nvlist_lookup_nvlist_array(i32*, i32, i32***, i64*) #1

declare dso_local i64 @nvlist_lookup_string(i32*, i32, i8**) #1

declare dso_local i64 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
