; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_pool.c_zpool_find_vdev.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_pool.c_zpool_find_vdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@NV_UNIQUE_NAME = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_GUID = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_TYPE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_PATH = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_VDEV_TREE = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @zpool_find_vdev(%struct.TYPE_3__* %0, i8* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %16 = load i32, i32* @NV_UNIQUE_NAME, align 4
  %17 = load i32, i32* @KM_SLEEP, align 4
  %18 = call i64 @nvlist_alloc(i32** %13, i32 %16, i32 %17)
  %19 = icmp eq i64 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @verify(i32 %20)
  %22 = load i8*, i8** %7, align 8
  %23 = call i64 @strtoull(i8* %22, i8** %11, i32 0)
  store i64 %23, i64* %15, align 8
  %24 = load i64, i64* %15, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %5
  %27 = load i8*, i8** %11, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %26
  %32 = load i32*, i32** %13, align 8
  %33 = load i32, i32* @ZPOOL_CONFIG_GUID, align 4
  %34 = load i64, i64* %15, align 8
  %35 = call i64 @nvlist_add_uint64(i32* %32, i32 %33, i64 %34)
  %36 = icmp eq i64 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i32 @verify(i32 %37)
  br label %60

39:                                               ; preds = %26, %5
  %40 = load i8*, i8** %7, align 8
  %41 = call i64 @zpool_vdev_is_interior(i8* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %39
  %44 = load i32*, i32** %13, align 8
  %45 = load i32, i32* @ZPOOL_CONFIG_TYPE, align 4
  %46 = load i8*, i8** %7, align 8
  %47 = call i64 @nvlist_add_string(i32* %44, i32 %45, i8* %46)
  %48 = icmp eq i64 %47, 0
  %49 = zext i1 %48 to i32
  %50 = call i32 @verify(i32 %49)
  br label %59

51:                                               ; preds = %39
  %52 = load i32*, i32** %13, align 8
  %53 = load i32, i32* @ZPOOL_CONFIG_PATH, align 4
  %54 = load i8*, i8** %7, align 8
  %55 = call i64 @nvlist_add_string(i32* %52, i32 %53, i8* %54)
  %56 = icmp eq i64 %55, 0
  %57 = zext i1 %56 to i32
  %58 = call i32 @verify(i32 %57)
  br label %59

59:                                               ; preds = %51, %43
  br label %60

60:                                               ; preds = %59, %31
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @ZPOOL_CONFIG_VDEV_TREE, align 4
  %65 = call i64 @nvlist_lookup_nvlist(i32 %63, i32 %64, i32** %12)
  %66 = icmp eq i64 %65, 0
  %67 = zext i1 %66 to i32
  %68 = call i32 @verify(i32 %67)
  %69 = load i32, i32* @B_FALSE, align 4
  %70 = load i32*, i32** %8, align 8
  store i32 %69, i32* %70, align 4
  %71 = load i32, i32* @B_FALSE, align 4
  %72 = load i32*, i32** %9, align 8
  store i32 %71, i32* %72, align 4
  %73 = load i32*, i32** %10, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %78

75:                                               ; preds = %60
  %76 = load i32, i32* @B_FALSE, align 4
  %77 = load i32*, i32** %10, align 8
  store i32 %76, i32* %77, align 4
  br label %78

78:                                               ; preds = %75, %60
  %79 = load i32*, i32** %12, align 8
  %80 = load i32*, i32** %13, align 8
  %81 = load i32*, i32** %8, align 8
  %82 = load i32*, i32** %9, align 8
  %83 = load i32*, i32** %10, align 8
  %84 = call i32* @vdev_to_nvlist_iter(i32* %79, i32* %80, i32* %81, i32* %82, i32* %83)
  store i32* %84, i32** %14, align 8
  %85 = load i32*, i32** %13, align 8
  %86 = call i32 @nvlist_free(i32* %85)
  %87 = load i32*, i32** %14, align 8
  ret i32* %87
}

declare dso_local i32 @verify(i32) #1

declare dso_local i64 @nvlist_alloc(i32**, i32, i32) #1

declare dso_local i64 @strtoull(i8*, i8**, i32) #1

declare dso_local i64 @nvlist_add_uint64(i32*, i32, i64) #1

declare dso_local i64 @zpool_vdev_is_interior(i8*) #1

declare dso_local i64 @nvlist_add_string(i32*, i32, i8*) #1

declare dso_local i64 @nvlist_lookup_nvlist(i32, i32, i32**) #1

declare dso_local i32* @vdev_to_nvlist_iter(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @nvlist_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
