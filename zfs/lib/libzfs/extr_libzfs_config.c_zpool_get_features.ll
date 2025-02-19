; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_config.c_zpool_get_features.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_config.c_zpool_get_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZPOOL_CONFIG_FEATURE_STATS = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @zpool_get_features(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i32* @zpool_get_config(i32* %8, i32* null)
  store i32* %9, i32** %4, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %1
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* @ZPOOL_CONFIG_FEATURE_STATS, align 4
  %15 = call i32 @nvlist_exists(i32* %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %30, label %17

17:                                               ; preds = %12, %1
  %18 = load i64, i64* @B_FALSE, align 8
  store i64 %18, i64* %7, align 8
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @zpool_refresh_stats(i32* %19, i64* %7)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %17
  %24 = load i64, i64* %7, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23, %17
  store i32* null, i32** %2, align 8
  br label %38

27:                                               ; preds = %23
  %28 = load i32*, i32** %3, align 8
  %29 = call i32* @zpool_get_config(i32* %28, i32* null)
  store i32* %29, i32** %4, align 8
  br label %30

30:                                               ; preds = %27, %12
  %31 = load i32*, i32** %4, align 8
  %32 = load i32, i32* @ZPOOL_CONFIG_FEATURE_STATS, align 4
  %33 = call i64 @nvlist_lookup_nvlist(i32* %31, i32 %32, i32** %5)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i32* null, i32** %2, align 8
  br label %38

36:                                               ; preds = %30
  %37 = load i32*, i32** %5, align 8
  store i32* %37, i32** %2, align 8
  br label %38

38:                                               ; preds = %36, %35, %26
  %39 = load i32*, i32** %2, align 8
  ret i32* %39
}

declare dso_local i32* @zpool_get_config(i32*, i32*) #1

declare dso_local i32 @nvlist_exists(i32*, i32) #1

declare dso_local i32 @zpool_refresh_stats(i32*, i64*) #1

declare dso_local i64 @nvlist_lookup_nvlist(i32*, i32, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
