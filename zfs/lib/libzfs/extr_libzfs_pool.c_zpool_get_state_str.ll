; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_pool.c_zpool_get_state_str.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_pool.c_zpool_get_state_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@POOL_STATE_UNAVAIL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"FAULTED\00", align 1
@ZPOOL_STATUS_IO_FAILURE_WAIT = common dso_local global i64 0, align 8
@ZPOOL_STATUS_IO_FAILURE_MMP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"SUSPENDED\00", align 1
@ZPOOL_CONFIG_VDEV_TREE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_VDEV_STATS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @zpool_get_state_str(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_2__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %9 = load i32*, i32** %2, align 8
  %10 = call i64 @zpool_get_status(i32* %9, i32* null, i32* %3)
  store i64 %10, i64* %4, align 8
  %11 = load i32*, i32** %2, align 8
  %12 = call i64 @zpool_get_state(i32* %11)
  %13 = load i64, i64* @POOL_STATE_UNAVAIL, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i8* %16, i8** %8, align 8
  br label %50

17:                                               ; preds = %1
  %18 = load i64, i64* %4, align 8
  %19 = load i64, i64* @ZPOOL_STATUS_IO_FAILURE_WAIT, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load i64, i64* %4, align 8
  %23 = load i64, i64* @ZPOOL_STATUS_IO_FAILURE_MMP, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21, %17
  %26 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i8* %26, i8** %8, align 8
  br label %49

27:                                               ; preds = %21
  %28 = load i32*, i32** %2, align 8
  %29 = call i32 @zpool_get_config(i32* %28, i32* null)
  %30 = load i32, i32* @ZPOOL_CONFIG_VDEV_TREE, align 4
  %31 = call i64 @nvlist_lookup_nvlist(i32 %29, i32 %30, i32** %5)
  %32 = icmp eq i64 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i32 @verify(i32 %33)
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* @ZPOOL_CONFIG_VDEV_STATS, align 4
  %37 = bitcast %struct.TYPE_2__** %6 to i32**
  %38 = call i64 @nvlist_lookup_uint64_array(i32* %35, i32 %36, i32** %37, i32* %7)
  %39 = icmp eq i64 %38, 0
  %40 = zext i1 %39 to i32
  %41 = call i32 @verify(i32 %40)
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @zpool_state_to_name(i32 %44, i32 %47)
  store i8* %48, i8** %8, align 8
  br label %49

49:                                               ; preds = %27, %25
  br label %50

50:                                               ; preds = %49, %15
  %51 = load i8*, i8** %8, align 8
  ret i8* %51
}

declare dso_local i64 @zpool_get_status(i32*, i32*, i32*) #1

declare dso_local i64 @zpool_get_state(i32*) #1

declare dso_local i8* @gettext(i8*) #1

declare dso_local i32 @verify(i32) #1

declare dso_local i64 @nvlist_lookup_nvlist(i32, i32, i32**) #1

declare dso_local i32 @zpool_get_config(i32*, i32*) #1

declare dso_local i64 @nvlist_lookup_uint64_array(i32*, i32, i32**, i32*) #1

declare dso_local i8* @zpool_state_to_name(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
