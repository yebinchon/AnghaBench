; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_spa.c_spa_add_l2cache.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_spa.c_spa_add_l2cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, %struct.TYPE_9__**, i32* }
%struct.TYPE_9__ = type { i64 }

@SCL_CONFIG = common dso_local global i32 0, align 4
@RW_READER = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_VDEV_TREE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_L2CACHE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_GUID = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_VDEV_STATS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i32*)* @spa_add_l2cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spa_add_l2cache(%struct.TYPE_10__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i32* %1, i32** %4, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %15 = load i32, i32* @SCL_CONFIG, align 4
  %16 = load i32, i32* @RW_READER, align 4
  %17 = call i32 @spa_config_held(%struct.TYPE_10__* %14, i32 %15, i32 %16)
  %18 = call i32 @ASSERT(i32 %17)
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %131

25:                                               ; preds = %2
  %26 = load i32*, i32** %4, align 8
  %27 = load i32, i32* @ZPOOL_CONFIG_VDEV_TREE, align 4
  %28 = call i64 @nvlist_lookup_nvlist(i32* %26, i32 %27, i32** %9)
  %29 = icmp eq i64 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i32 @VERIFY(i32 %30)
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* @ZPOOL_CONFIG_L2CACHE, align 4
  %37 = call i64 @nvlist_lookup_nvlist_array(i32* %35, i32 %36, i32*** %5, i64* %8)
  %38 = icmp eq i64 %37, 0
  %39 = zext i1 %38 to i32
  %40 = call i32 @VERIFY(i32 %39)
  %41 = load i64, i64* %8, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %131

43:                                               ; preds = %25
  %44 = load i32*, i32** %9, align 8
  %45 = load i32, i32* @ZPOOL_CONFIG_L2CACHE, align 4
  %46 = load i32**, i32*** %5, align 8
  %47 = load i64, i64* %8, align 8
  %48 = call i64 @nvlist_add_nvlist_array(i32* %44, i32 %45, i32** %46, i64 %47)
  %49 = icmp eq i64 %48, 0
  %50 = zext i1 %49 to i32
  %51 = call i32 @VERIFY(i32 %50)
  %52 = load i32*, i32** %9, align 8
  %53 = load i32, i32* @ZPOOL_CONFIG_L2CACHE, align 4
  %54 = call i64 @nvlist_lookup_nvlist_array(i32* %52, i32 %53, i32*** %5, i64* %8)
  %55 = icmp eq i64 %54, 0
  %56 = zext i1 %55 to i32
  %57 = call i32 @VERIFY(i32 %56)
  store i64 0, i64* %6, align 8
  br label %58

58:                                               ; preds = %127, %43
  %59 = load i64, i64* %6, align 8
  %60 = load i64, i64* %8, align 8
  %61 = icmp slt i64 %59, %60
  br i1 %61, label %62, label %130

62:                                               ; preds = %58
  %63 = load i32**, i32*** %5, align 8
  %64 = load i64, i64* %6, align 8
  %65 = getelementptr inbounds i32*, i32** %63, i64 %64
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* @ZPOOL_CONFIG_GUID, align 4
  %68 = call i64 @nvlist_lookup_uint64(i32* %66, i32 %67, i64* %10)
  %69 = icmp eq i64 %68, 0
  %70 = zext i1 %69 to i32
  %71 = call i32 @VERIFY(i32 %70)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %11, align 8
  store i64 0, i64* %7, align 8
  br label %72

72:                                               ; preds = %100, %62
  %73 = load i64, i64* %7, align 8
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp slt i64 %73, %77
  br i1 %78, label %79, label %103

79:                                               ; preds = %72
  %80 = load i64, i64* %10, align 8
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %83, align 8
  %85 = load i64, i64* %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %84, i64 %85
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp eq i64 %80, %89
  br i1 %90, label %91, label %99

91:                                               ; preds = %79
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %94, align 8
  %96 = load i64, i64* %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %95, i64 %96
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %97, align 8
  store %struct.TYPE_9__* %98, %struct.TYPE_9__** %11, align 8
  br label %103

99:                                               ; preds = %79
  br label %100

100:                                              ; preds = %99
  %101 = load i64, i64* %7, align 8
  %102 = add nsw i64 %101, 1
  store i64 %102, i64* %7, align 8
  br label %72

103:                                              ; preds = %91, %72
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %105 = icmp ne %struct.TYPE_9__* %104, null
  %106 = zext i1 %105 to i32
  %107 = call i32 @ASSERT(i32 %106)
  %108 = load i32**, i32*** %5, align 8
  %109 = load i64, i64* %6, align 8
  %110 = getelementptr inbounds i32*, i32** %108, i64 %109
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* @ZPOOL_CONFIG_VDEV_STATS, align 4
  %113 = bitcast i32** %12 to i64**
  %114 = call i64 @nvlist_lookup_uint64_array(i32* %111, i32 %112, i64** %113, i64* %13)
  %115 = icmp eq i64 %114, 0
  %116 = zext i1 %115 to i32
  %117 = call i32 @VERIFY(i32 %116)
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %119 = load i32*, i32** %12, align 8
  %120 = call i32 @vdev_get_stats(%struct.TYPE_9__* %118, i32* %119)
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %122 = load i32**, i32*** %5, align 8
  %123 = load i64, i64* %6, align 8
  %124 = getelementptr inbounds i32*, i32** %122, i64 %123
  %125 = load i32*, i32** %124, align 8
  %126 = call i32 @vdev_config_generate_stats(%struct.TYPE_9__* %121, i32* %125)
  br label %127

127:                                              ; preds = %103
  %128 = load i64, i64* %6, align 8
  %129 = add nsw i64 %128, 1
  store i64 %129, i64* %6, align 8
  br label %58

130:                                              ; preds = %58
  br label %131

131:                                              ; preds = %24, %130, %25
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @spa_config_held(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @nvlist_lookup_nvlist(i32*, i32, i32**) #1

declare dso_local i64 @nvlist_lookup_nvlist_array(i32*, i32, i32***, i64*) #1

declare dso_local i64 @nvlist_add_nvlist_array(i32*, i32, i32**, i64) #1

declare dso_local i64 @nvlist_lookup_uint64(i32*, i32, i64*) #1

declare dso_local i64 @nvlist_lookup_uint64_array(i32*, i32, i64**, i64*) #1

declare dso_local i32 @vdev_get_stats(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @vdev_config_generate_stats(%struct.TYPE_9__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
