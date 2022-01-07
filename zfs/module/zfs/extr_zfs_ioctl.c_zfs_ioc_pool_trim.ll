; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_ioctl.c_zfs_ioc_pool_trim.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_ioctl.c_zfs_ioc_pool_trim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZPOOL_TRIM_COMMAND = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@POOL_TRIM_CANCEL = common dso_local global i64 0, align 8
@POOL_TRIM_START = common dso_local global i64 0, align 8
@POOL_TRIM_SUSPEND = common dso_local global i64 0, align 8
@ZPOOL_TRIM_VDEVS = common dso_local global i32 0, align 4
@ZPOOL_TRIM_RATE = common dso_local global i32 0, align 4
@ZPOOL_TRIM_SECURE = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@zfs_trim_metaslab_skip = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*)* @zfs_ioc_pool_trim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_ioc_pool_trim(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* @ZPOOL_TRIM_COMMAND, align 4
  %20 = call i64 @nvlist_lookup_uint64(i32* %18, i32 %19, i64* %8)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = call i32 @SET_ERROR(i32 %23)
  store i32 %24, i32* %4, align 4
  br label %122

25:                                               ; preds = %3
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* @POOL_TRIM_CANCEL, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %40, label %29

29:                                               ; preds = %25
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* @POOL_TRIM_START, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %40, label %33

33:                                               ; preds = %29
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* @POOL_TRIM_SUSPEND, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* @EINVAL, align 4
  %39 = call i32 @SET_ERROR(i32 %38)
  store i32 %39, i32* %4, align 4
  br label %122

40:                                               ; preds = %33, %29, %25
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* @ZPOOL_TRIM_VDEVS, align 4
  %43 = call i64 @nvlist_lookup_nvlist(i32* %41, i32 %42, i32** %9)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i32, i32* @EINVAL, align 4
  %47 = call i32 @SET_ERROR(i32 %46)
  store i32 %47, i32* %4, align 4
  br label %122

48:                                               ; preds = %40
  %49 = load i32*, i32** %9, align 8
  %50 = call i32* @nvlist_next_nvpair(i32* %49, i32* null)
  store i32* %50, i32** %10, align 8
  br label %51

51:                                               ; preds = %62, %48
  %52 = load i32*, i32** %10, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %66

54:                                               ; preds = %51
  %55 = load i32*, i32** %10, align 8
  %56 = call i64 @nvpair_value_uint64(i32* %55, i64* %11)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load i32, i32* @EINVAL, align 4
  %60 = call i32 @SET_ERROR(i32 %59)
  store i32 %60, i32* %4, align 4
  br label %122

61:                                               ; preds = %54
  br label %62

62:                                               ; preds = %61
  %63 = load i32*, i32** %9, align 8
  %64 = load i32*, i32** %10, align 8
  %65 = call i32* @nvlist_next_nvpair(i32* %63, i32* %64)
  store i32* %65, i32** %10, align 8
  br label %51

66:                                               ; preds = %51
  %67 = load i32*, i32** %6, align 8
  %68 = load i32, i32* @ZPOOL_TRIM_RATE, align 4
  %69 = call i64 @nvlist_lookup_uint64(i32* %67, i32 %68, i64* %12)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  store i64 0, i64* %12, align 8
  br label %72

72:                                               ; preds = %71, %66
  %73 = load i32*, i32** %6, align 8
  %74 = load i32, i32* @ZPOOL_TRIM_SECURE, align 4
  %75 = call i64 @nvlist_lookup_boolean_value(i32* %73, i32 %74, i32* %13)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = load i32, i32* @B_FALSE, align 4
  store i32 %78, i32* %13, align 4
  br label %79

79:                                               ; preds = %77, %72
  %80 = load i8*, i8** %5, align 8
  %81 = load i32, i32* @FTAG, align 4
  %82 = call i32 @spa_open(i8* %80, i32** %14, i32 %81)
  store i32 %82, i32* %15, align 4
  %83 = load i32, i32* %15, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %79
  %86 = load i32, i32* %15, align 4
  store i32 %86, i32* %4, align 4
  br label %122

87:                                               ; preds = %79
  %88 = call i32* (...) @fnvlist_alloc()
  store i32* %88, i32** %16, align 8
  %89 = load i32*, i32** %14, align 8
  %90 = load i32*, i32** %9, align 8
  %91 = load i64, i64* %8, align 8
  %92 = load i64, i64* %12, align 8
  %93 = load i32, i32* @zfs_trim_metaslab_skip, align 4
  %94 = icmp ne i32 %93, 0
  %95 = xor i1 %94, true
  %96 = xor i1 %95, true
  %97 = zext i1 %96 to i32
  %98 = load i32, i32* %13, align 4
  %99 = load i32*, i32** %16, align 8
  %100 = call i32 @spa_vdev_trim(i32* %89, i32* %90, i64 %91, i64 %92, i32 %97, i32 %98, i32* %99)
  store i32 %100, i32* %17, align 4
  %101 = load i32*, i32** %16, align 8
  %102 = call i64 @fnvlist_size(i32* %101)
  %103 = icmp sgt i64 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %87
  %105 = load i32*, i32** %7, align 8
  %106 = load i32, i32* @ZPOOL_TRIM_VDEVS, align 4
  %107 = load i32*, i32** %16, align 8
  %108 = call i32 @fnvlist_add_nvlist(i32* %105, i32 %106, i32* %107)
  br label %109

109:                                              ; preds = %104, %87
  %110 = load i32*, i32** %16, align 8
  %111 = call i32 @fnvlist_free(i32* %110)
  %112 = load i32*, i32** %14, align 8
  %113 = load i32, i32* @FTAG, align 4
  %114 = call i32 @spa_close(i32* %112, i32 %113)
  %115 = load i32, i32* %17, align 4
  %116 = icmp sgt i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %109
  %118 = load i32, i32* @EINVAL, align 4
  br label %120

119:                                              ; preds = %109
  br label %120

120:                                              ; preds = %119, %117
  %121 = phi i32 [ %118, %117 ], [ 0, %119 ]
  store i32 %121, i32* %4, align 4
  br label %122

122:                                              ; preds = %120, %85, %58, %45, %37, %22
  %123 = load i32, i32* %4, align 4
  ret i32 %123
}

declare dso_local i64 @nvlist_lookup_uint64(i32*, i32, i64*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i64 @nvlist_lookup_nvlist(i32*, i32, i32**) #1

declare dso_local i32* @nvlist_next_nvpair(i32*, i32*) #1

declare dso_local i64 @nvpair_value_uint64(i32*, i64*) #1

declare dso_local i64 @nvlist_lookup_boolean_value(i32*, i32, i32*) #1

declare dso_local i32 @spa_open(i8*, i32**, i32) #1

declare dso_local i32* @fnvlist_alloc(...) #1

declare dso_local i32 @spa_vdev_trim(i32*, i32*, i64, i64, i32, i32, i32*) #1

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
