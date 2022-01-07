; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_dataset.c_volsize_from_vdevs.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_dataset.c_volsize_from_vdevs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZPOOL_CONFIG_VDEV_TREE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_CHILDREN = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_TYPE = common dso_local global i32 0, align 4
@VDEV_TYPE_RAIDZ = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_NPARITY = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_ASHIFT = common dso_local global i32 0, align 4
@SPA_OLD_MAXBLOCKSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32)* @volsize_from_vdevs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @volsize_from_vdevs(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32**, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %13, align 4
  %22 = load i32*, i32** %5, align 8
  %23 = call i32* @zpool_get_config(i32* %22, i32* null)
  store i32* %23, i32** %8, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = load i32, i32* @ZPOOL_CONFIG_VDEV_TREE, align 4
  %26 = call i64 @nvlist_lookup_nvlist(i32* %24, i32 %25, i32** %9)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %3
  %29 = load i32*, i32** %9, align 8
  %30 = load i32, i32* @ZPOOL_CONFIG_CHILDREN, align 4
  %31 = call i64 @nvlist_lookup_nvlist_array(i32* %29, i32 %30, i32*** %10, i64* %11)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28, %3
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %7, align 4
  %36 = mul nsw i32 %34, %35
  store i32 %36, i32* %4, align 4
  br label %116

37:                                               ; preds = %28
  store i64 0, i64* %12, align 8
  br label %38

38:                                               ; preds = %104, %37
  %39 = load i64, i64* %12, align 8
  %40 = load i64, i64* %11, align 8
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %42, label %107

42:                                               ; preds = %38
  %43 = load i32**, i32*** %10, align 8
  %44 = load i64, i64* %12, align 8
  %45 = getelementptr inbounds i32*, i32** %43, i64 %44
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* @ZPOOL_CONFIG_TYPE, align 4
  %48 = call i64 @nvlist_lookup_string(i32* %46, i32 %47, i8** %14)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %79, label %50

50:                                               ; preds = %42
  %51 = load i8*, i8** %14, align 8
  %52 = load i32, i32* @VDEV_TYPE_RAIDZ, align 4
  %53 = call i64 @strcmp(i8* %51, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %79, label %55

55:                                               ; preds = %50
  %56 = load i32**, i32*** %10, align 8
  %57 = load i64, i64* %12, align 8
  %58 = getelementptr inbounds i32*, i32** %56, i64 %57
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* @ZPOOL_CONFIG_NPARITY, align 4
  %61 = call i64 @nvlist_lookup_uint64(i32* %59, i32 %60, i32* %15)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %79, label %63

63:                                               ; preds = %55
  %64 = load i32**, i32*** %10, align 8
  %65 = load i64, i64* %12, align 8
  %66 = getelementptr inbounds i32*, i32** %64, i64 %65
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* @ZPOOL_CONFIG_ASHIFT, align 4
  %69 = call i64 @nvlist_lookup_uint64(i32* %67, i32 %68, i32* %16)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %79, label %71

71:                                               ; preds = %63
  %72 = load i32**, i32*** %10, align 8
  %73 = load i64, i64* %12, align 8
  %74 = getelementptr inbounds i32*, i32** %72, i64 %73
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* @ZPOOL_CONFIG_CHILDREN, align 4
  %77 = call i64 @nvlist_lookup_nvlist_array(i32* %75, i32 %76, i32*** %19, i64* %20)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %71, %63, %55, %50, %42
  br label %104

80:                                               ; preds = %71
  %81 = load i64, i64* %20, align 8
  %82 = load i32, i32* %15, align 4
  %83 = load i32, i32* %16, align 4
  %84 = load i32, i32* @SPA_OLD_MAXBLOCKSIZE, align 4
  %85 = call i32 @vdev_raidz_asize(i64 %81, i32 %82, i32 %83, i32 %84)
  store i32 %85, i32* %18, align 4
  %86 = load i64, i64* %20, align 8
  %87 = load i32, i32* %15, align 4
  %88 = load i32, i32* %16, align 4
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @vdev_raidz_asize(i64 %86, i32 %87, i32 %88, i32 %89)
  store i32 %90, i32* %17, align 4
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* %17, align 4
  %93 = mul nsw i32 %91, %92
  %94 = load i32, i32* @SPA_OLD_MAXBLOCKSIZE, align 4
  %95 = mul nsw i32 %93, %94
  %96 = load i32, i32* %18, align 4
  %97 = sdiv i32 %95, %96
  store i32 %97, i32* %21, align 4
  %98 = load i32, i32* %21, align 4
  %99 = load i32, i32* %13, align 4
  %100 = icmp sgt i32 %98, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %80
  %102 = load i32, i32* %21, align 4
  store i32 %102, i32* %13, align 4
  br label %103

103:                                              ; preds = %101, %80
  br label %104

104:                                              ; preds = %103, %79
  %105 = load i64, i64* %12, align 8
  %106 = add i64 %105, 1
  store i64 %106, i64* %12, align 8
  br label %38

107:                                              ; preds = %38
  %108 = load i32, i32* %13, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %107
  %111 = load i32, i32* %6, align 4
  %112 = load i32, i32* %7, align 4
  %113 = mul nsw i32 %111, %112
  store i32 %113, i32* %13, align 4
  br label %114

114:                                              ; preds = %110, %107
  %115 = load i32, i32* %13, align 4
  store i32 %115, i32* %4, align 4
  br label %116

116:                                              ; preds = %114, %33
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local i32* @zpool_get_config(i32*, i32*) #1

declare dso_local i64 @nvlist_lookup_nvlist(i32*, i32, i32**) #1

declare dso_local i64 @nvlist_lookup_nvlist_array(i32*, i32, i32***, i64*) #1

declare dso_local i64 @nvlist_lookup_string(i32*, i32, i8**) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i64 @nvlist_lookup_uint64(i32*, i32, i32*) #1

declare dso_local i32 @vdev_raidz_asize(i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
