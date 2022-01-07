; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_ioctl.c_zfs_ioc_pool_initialize.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_ioctl.c_zfs_ioc_pool_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZPOOL_INITIALIZE_COMMAND = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@POOL_INITIALIZE_CANCEL = common dso_local global i64 0, align 8
@POOL_INITIALIZE_START = common dso_local global i64 0, align 8
@POOL_INITIALIZE_SUSPEND = common dso_local global i64 0, align 8
@ZPOOL_INITIALIZE_VDEVS = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*)* @zfs_ioc_pool_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_ioc_pool_initialize(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = load i32, i32* @ZPOOL_INITIALIZE_COMMAND, align 4
  %18 = call i64 @nvlist_lookup_uint64(i32* %16, i32 %17, i64* %8)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = call i32 @SET_ERROR(i32 %21)
  store i32 %22, i32* %4, align 4
  br label %100

23:                                               ; preds = %3
  %24 = load i64, i64* %8, align 8
  %25 = load i64, i64* @POOL_INITIALIZE_CANCEL, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %38, label %27

27:                                               ; preds = %23
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* @POOL_INITIALIZE_START, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %38, label %31

31:                                               ; preds = %27
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* @POOL_INITIALIZE_SUSPEND, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* @EINVAL, align 4
  %37 = call i32 @SET_ERROR(i32 %36)
  store i32 %37, i32* %4, align 4
  br label %100

38:                                               ; preds = %31, %27, %23
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* @ZPOOL_INITIALIZE_VDEVS, align 4
  %41 = call i64 @nvlist_lookup_nvlist(i32* %39, i32 %40, i32** %9)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i32, i32* @EINVAL, align 4
  %45 = call i32 @SET_ERROR(i32 %44)
  store i32 %45, i32* %4, align 4
  br label %100

46:                                               ; preds = %38
  %47 = load i32*, i32** %9, align 8
  %48 = call i32* @nvlist_next_nvpair(i32* %47, i32* null)
  store i32* %48, i32** %10, align 8
  br label %49

49:                                               ; preds = %60, %46
  %50 = load i32*, i32** %10, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %64

52:                                               ; preds = %49
  %53 = load i32*, i32** %10, align 8
  %54 = call i64 @nvpair_value_uint64(i32* %53, i64* %11)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i32, i32* @EINVAL, align 4
  %58 = call i32 @SET_ERROR(i32 %57)
  store i32 %58, i32* %4, align 4
  br label %100

59:                                               ; preds = %52
  br label %60

60:                                               ; preds = %59
  %61 = load i32*, i32** %9, align 8
  %62 = load i32*, i32** %10, align 8
  %63 = call i32* @nvlist_next_nvpair(i32* %61, i32* %62)
  store i32* %63, i32** %10, align 8
  br label %49

64:                                               ; preds = %49
  %65 = load i8*, i8** %5, align 8
  %66 = load i32, i32* @FTAG, align 4
  %67 = call i32 @spa_open(i8* %65, i32** %12, i32 %66)
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* %13, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = load i32, i32* %13, align 4
  store i32 %71, i32* %4, align 4
  br label %100

72:                                               ; preds = %64
  %73 = call i32* (...) @fnvlist_alloc()
  store i32* %73, i32** %14, align 8
  %74 = load i32*, i32** %12, align 8
  %75 = load i32*, i32** %9, align 8
  %76 = load i64, i64* %8, align 8
  %77 = load i32*, i32** %14, align 8
  %78 = call i32 @spa_vdev_initialize(i32* %74, i32* %75, i64 %76, i32* %77)
  store i32 %78, i32* %15, align 4
  %79 = load i32*, i32** %14, align 8
  %80 = call i64 @fnvlist_size(i32* %79)
  %81 = icmp sgt i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %72
  %83 = load i32*, i32** %7, align 8
  %84 = load i32, i32* @ZPOOL_INITIALIZE_VDEVS, align 4
  %85 = load i32*, i32** %14, align 8
  %86 = call i32 @fnvlist_add_nvlist(i32* %83, i32 %84, i32* %85)
  br label %87

87:                                               ; preds = %82, %72
  %88 = load i32*, i32** %14, align 8
  %89 = call i32 @fnvlist_free(i32* %88)
  %90 = load i32*, i32** %12, align 8
  %91 = load i32, i32* @FTAG, align 4
  %92 = call i32 @spa_close(i32* %90, i32 %91)
  %93 = load i32, i32* %15, align 4
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %87
  %96 = load i32, i32* @EINVAL, align 4
  br label %98

97:                                               ; preds = %87
  br label %98

98:                                               ; preds = %97, %95
  %99 = phi i32 [ %96, %95 ], [ 0, %97 ]
  store i32 %99, i32* %4, align 4
  br label %100

100:                                              ; preds = %98, %70, %56, %43, %35, %20
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local i64 @nvlist_lookup_uint64(i32*, i32, i64*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i64 @nvlist_lookup_nvlist(i32*, i32, i32**) #1

declare dso_local i32* @nvlist_next_nvpair(i32*, i32*) #1

declare dso_local i64 @nvpair_value_uint64(i32*, i64*) #1

declare dso_local i32 @spa_open(i8*, i32**, i32) #1

declare dso_local i32* @fnvlist_alloc(...) #1

declare dso_local i32 @spa_vdev_initialize(i32*, i32*, i64, i32*) #1

declare dso_local i64 @fnvlist_size(i32*) #1

declare dso_local i32 @fnvlist_add_nvlist(i32*, i32, i32*) #1

declare dso_local i32 @fnvlist_free(i32*) #1

declare dso_local i32 @spa_close(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
