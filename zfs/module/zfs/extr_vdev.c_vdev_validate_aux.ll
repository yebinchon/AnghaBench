; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_vdev.c_vdev_validate_aux.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_vdev.c_vdev_validate_aux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }

@B_TRUE = common dso_local global i32 0, align 4
@VDEV_STATE_CANT_OPEN = common dso_local global i32 0, align 4
@VDEV_AUX_CORRUPT_DATA = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_VERSION = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_GUID = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_POOL_STATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vdev_validate_aux(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %9 = call i32 @vdev_readable(%struct.TYPE_6__* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %58

12:                                               ; preds = %1
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %14 = call i32* @vdev_label_read_config(%struct.TYPE_6__* %13, i64 -1)
  store i32* %14, i32** %4, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %12
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %18 = load i32, i32* @B_TRUE, align 4
  %19 = load i32, i32* @VDEV_STATE_CANT_OPEN, align 4
  %20 = load i32, i32* @VDEV_AUX_CORRUPT_DATA, align 4
  %21 = call i32 @vdev_set_state(%struct.TYPE_6__* %17, i32 %18, i32 %19, i32 %20)
  store i32 -1, i32* %2, align 4
  br label %58

22:                                               ; preds = %12
  %23 = load i32*, i32** %4, align 8
  %24 = load i32, i32* @ZPOOL_CONFIG_VERSION, align 4
  %25 = call i64 @nvlist_lookup_uint64(i32* %23, i32 %24, i64* %6)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %47, label %27

27:                                               ; preds = %22
  %28 = load i64, i64* %6, align 8
  %29 = call i32 @SPA_VERSION_IS_SUPPORTED(i64 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %47

31:                                               ; preds = %27
  %32 = load i32*, i32** %4, align 8
  %33 = load i32, i32* @ZPOOL_CONFIG_GUID, align 4
  %34 = call i64 @nvlist_lookup_uint64(i32* %32, i32 %33, i64* %5)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %47, label %36

36:                                               ; preds = %31
  %37 = load i64, i64* %5, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %37, %40
  br i1 %41, label %47, label %42

42:                                               ; preds = %36
  %43 = load i32*, i32** %4, align 8
  %44 = load i32, i32* @ZPOOL_CONFIG_POOL_STATE, align 4
  %45 = call i64 @nvlist_lookup_uint64(i32* %43, i32 %44, i64* %7)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %42, %36, %31, %27, %22
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %49 = load i32, i32* @B_TRUE, align 4
  %50 = load i32, i32* @VDEV_STATE_CANT_OPEN, align 4
  %51 = load i32, i32* @VDEV_AUX_CORRUPT_DATA, align 4
  %52 = call i32 @vdev_set_state(%struct.TYPE_6__* %48, i32 %49, i32 %50, i32 %51)
  %53 = load i32*, i32** %4, align 8
  %54 = call i32 @nvlist_free(i32* %53)
  store i32 -1, i32* %2, align 4
  br label %58

55:                                               ; preds = %42
  %56 = load i32*, i32** %4, align 8
  %57 = call i32 @nvlist_free(i32* %56)
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %55, %47, %16, %11
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @vdev_readable(%struct.TYPE_6__*) #1

declare dso_local i32* @vdev_label_read_config(%struct.TYPE_6__*, i64) #1

declare dso_local i32 @vdev_set_state(%struct.TYPE_6__*, i32, i32, i32) #1

declare dso_local i64 @nvlist_lookup_uint64(i32*, i32, i64*) #1

declare dso_local i32 @SPA_VERSION_IS_SUPPORTED(i64) #1

declare dso_local i32 @nvlist_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
