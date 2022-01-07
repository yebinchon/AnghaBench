; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs_core/extr_libzfs_core.c_wait_common.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs_core/extr_libzfs_core.c_wait_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZPOOL_WAIT_ACTIVITY = common dso_local global i32 0, align 4
@ZPOOL_WAIT_TAG = common dso_local global i32 0, align 4
@ZFS_IOC_WAIT = common dso_local global i32 0, align 4
@ZPOOL_WAIT_WAITED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i64, i32, i64*)* @wait_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_common(i8* %0, i32 %1, i64 %2, i32 %3, i64* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i64* %4, i64** %10, align 8
  %14 = call i32* (...) @fnvlist_alloc()
  store i32* %14, i32** %11, align 8
  store i32* null, i32** %12, align 8
  %15 = load i32*, i32** %11, align 8
  %16 = load i32, i32* @ZPOOL_WAIT_ACTIVITY, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @fnvlist_add_int32(i32* %15, i32 %16, i32 %17)
  %19 = load i64, i64* %8, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %5
  %22 = load i32*, i32** %11, align 8
  %23 = load i32, i32* @ZPOOL_WAIT_TAG, align 4
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @fnvlist_add_uint64(i32* %22, i32 %23, i32 %24)
  br label %26

26:                                               ; preds = %21, %5
  %27 = load i32, i32* @ZFS_IOC_WAIT, align 4
  %28 = load i8*, i8** %6, align 8
  %29 = load i32*, i32** %11, align 8
  %30 = call i32 @lzc_ioctl(i32 %27, i8* %28, i32* %29, i32** %12)
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %13, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %26
  %34 = load i64*, i64** %10, align 8
  %35 = icmp ne i64* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load i32*, i32** %12, align 8
  %38 = load i32, i32* @ZPOOL_WAIT_WAITED, align 4
  %39 = call i64 @fnvlist_lookup_boolean_value(i32* %37, i32 %38)
  %40 = load i64*, i64** %10, align 8
  store i64 %39, i64* %40, align 8
  br label %41

41:                                               ; preds = %36, %33, %26
  %42 = load i32*, i32** %11, align 8
  %43 = call i32 @fnvlist_free(i32* %42)
  %44 = load i32*, i32** %12, align 8
  %45 = call i32 @fnvlist_free(i32* %44)
  %46 = load i32, i32* %13, align 4
  ret i32 %46
}

declare dso_local i32* @fnvlist_alloc(...) #1

declare dso_local i32 @fnvlist_add_int32(i32*, i32, i32) #1

declare dso_local i32 @fnvlist_add_uint64(i32*, i32, i32) #1

declare dso_local i32 @lzc_ioctl(i32, i8*, i32*, i32**) #1

declare dso_local i64 @fnvlist_lookup_boolean_value(i32*, i32) #1

declare dso_local i32 @fnvlist_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
