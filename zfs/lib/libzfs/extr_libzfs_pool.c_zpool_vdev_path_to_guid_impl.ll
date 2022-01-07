; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_pool.c_zpool_vdev_path_to_guid_impl.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_pool.c_zpool_vdev_path_to_guid_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@B_FALSE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_GUID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32*, i32*, i32*)* @zpool_vdev_path_to_guid_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zpool_vdev_path_to_guid_impl(i32* %0, i8* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %17 = load i32, i32* @B_FALSE, align 4
  store i32 %17, i32* %13, align 4
  %18 = load i32, i32* @B_FALSE, align 4
  store i32 %18, i32* %14, align 4
  %19 = load i32, i32* @B_FALSE, align 4
  store i32 %19, i32* %15, align 4
  %20 = load i32*, i32** %7, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = call i32* @zpool_find_vdev(i32* %20, i8* %21, i32* %13, i32* %14, i32* %15)
  store i32* %22, i32** %16, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %51

25:                                               ; preds = %5
  %26 = load i32*, i32** %16, align 8
  %27 = load i32, i32* @ZPOOL_CONFIG_GUID, align 4
  %28 = call i64 @nvlist_lookup_uint64(i32* %26, i32 %27, i32* %12)
  %29 = icmp eq i64 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i32 @verify(i32 %30)
  %32 = load i32*, i32** %9, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %25
  %35 = load i32, i32* %13, align 4
  %36 = load i32*, i32** %9, align 8
  store i32 %35, i32* %36, align 4
  br label %37

37:                                               ; preds = %34, %25
  %38 = load i32*, i32** %10, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i32, i32* %14, align 4
  %42 = load i32*, i32** %10, align 8
  store i32 %41, i32* %42, align 4
  br label %43

43:                                               ; preds = %40, %37
  %44 = load i32*, i32** %11, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i32, i32* %15, align 4
  %48 = load i32*, i32** %11, align 8
  store i32 %47, i32* %48, align 4
  br label %49

49:                                               ; preds = %46, %43
  %50 = load i32, i32* %12, align 4
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %49, %24
  %52 = load i32, i32* %6, align 4
  ret i32 %52
}

declare dso_local i32* @zpool_find_vdev(i32*, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @verify(i32) #1

declare dso_local i64 @nvlist_lookup_uint64(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
