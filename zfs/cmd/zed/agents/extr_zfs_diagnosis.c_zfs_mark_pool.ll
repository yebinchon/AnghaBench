; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zed/agents/extr_zfs_diagnosis.c_zfs_mark_pool.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zed/agents/extr_zfs_diagnosis.c_zfs_mark_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_10__, %struct.TYPE_8__, i32 }
%struct.TYPE_10__ = type { i64, i64, i32 }
%struct.TYPE_8__ = type { i64, i64 }

@ZPOOL_PROP_GUID = common dso_local global i32 0, align 4
@zfs_cases = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_LOADED_TIME = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_VDEV_TREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @zfs_mark_pool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_mark_pool(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.TYPE_10__, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %14 = bitcast %struct.TYPE_10__* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 24, i1 false)
  store i32 0, i32* %12, align 4
  %15 = load i32*, i32** %4, align 8
  %16 = load i32, i32* @ZPOOL_PROP_GUID, align 4
  %17 = call i64 @zpool_get_prop_int(i32* %15, i32 %16, i32* null)
  store i64 %17, i64* %7, align 8
  %18 = load i32, i32* @zfs_cases, align 4
  %19 = call %struct.TYPE_9__* @uu_list_first(i32 %18)
  store %struct.TYPE_9__* %19, %struct.TYPE_9__** %6, align 8
  br label %20

20:                                               ; preds = %41, %2
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %22 = icmp ne %struct.TYPE_9__* %21, null
  br i1 %22, label %23, label %45

23:                                               ; preds = %20
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %7, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %23
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load i32, i32* @B_TRUE, align 4
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  br label %40

40:                                               ; preds = %36, %30, %23
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* @zfs_cases, align 4
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %44 = call %struct.TYPE_9__* @uu_list_next(i32 %42, %struct.TYPE_9__* %43)
  store %struct.TYPE_9__* %44, %struct.TYPE_9__** %6, align 8
  br label %20

45:                                               ; preds = %20
  %46 = load i32*, i32** %4, align 8
  %47 = call i32* @zpool_get_config(i32* %46, i32* null)
  store i32* %47, i32** %10, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i32*, i32** %4, align 8
  %51 = call i32 @zpool_close(i32* %50)
  store i32 -1, i32* %3, align 4
  br label %111

52:                                               ; preds = %45
  %53 = load i32*, i32** %10, align 8
  %54 = load i32, i32* @ZPOOL_CONFIG_LOADED_TIME, align 4
  %55 = call i32 @nvlist_lookup_uint64_array(i32* %53, i32 %54, i64** %8, i32* %12)
  %56 = load i32, i32* %12, align 4
  %57 = icmp eq i32 %56, 2
  br i1 %57, label %58, label %96

58:                                               ; preds = %52
  %59 = load i64*, i64** %8, align 8
  %60 = getelementptr inbounds i64, i64* %59, i64 0
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 1
  store i64 %61, i64* %62, align 8
  %63 = load i64*, i64** %8, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 1
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  store i64 %65, i64* %66, align 8
  %67 = load i32, i32* @zfs_cases, align 4
  %68 = call %struct.TYPE_9__* @uu_list_first(i32 %67)
  store %struct.TYPE_9__* %68, %struct.TYPE_9__** %6, align 8
  br label %69

69:                                               ; preds = %91, %58
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %71 = icmp ne %struct.TYPE_9__* %70, null
  br i1 %71, label %72, label %95

72:                                               ; preds = %69
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* %7, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %90

79:                                               ; preds = %72
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %79
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = bitcast %struct.TYPE_10__* %87 to i8*
  %89 = bitcast %struct.TYPE_10__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %88, i8* align 8 %89, i64 24, i1 false)
  br label %90

90:                                               ; preds = %85, %79, %72
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* @zfs_cases, align 4
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %94 = call %struct.TYPE_9__* @uu_list_next(i32 %92, %struct.TYPE_9__* %93)
  store %struct.TYPE_9__* %94, %struct.TYPE_9__** %6, align 8
  br label %69

95:                                               ; preds = %69
  br label %96

96:                                               ; preds = %95, %52
  %97 = load i32*, i32** %10, align 8
  %98 = load i32, i32* @ZPOOL_CONFIG_VDEV_TREE, align 4
  %99 = call i32 @nvlist_lookup_nvlist(i32* %97, i32 %98, i32** %11)
  store i32 %99, i32* %13, align 4
  %100 = load i32, i32* %13, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %96
  %103 = load i32*, i32** %4, align 8
  %104 = call i32 @zpool_close(i32* %103)
  store i32 -1, i32* %3, align 4
  br label %111

105:                                              ; preds = %96
  %106 = load i64, i64* %7, align 8
  %107 = load i32*, i32** %11, align 8
  %108 = call i32 @zfs_mark_vdev(i64 %106, i32* %107, %struct.TYPE_10__* %9)
  %109 = load i32*, i32** %4, align 8
  %110 = call i32 @zpool_close(i32* %109)
  store i32 0, i32* %3, align 4
  br label %111

111:                                              ; preds = %105, %102, %49
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @zpool_get_prop_int(i32*, i32, i32*) #2

declare dso_local %struct.TYPE_9__* @uu_list_first(i32) #2

declare dso_local %struct.TYPE_9__* @uu_list_next(i32, %struct.TYPE_9__*) #2

declare dso_local i32* @zpool_get_config(i32*, i32*) #2

declare dso_local i32 @zpool_close(i32*) #2

declare dso_local i32 @nvlist_lookup_uint64_array(i32*, i32, i64**, i32*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @nvlist_lookup_nvlist(i32*, i32, i32**) #2

declare dso_local i32 @zfs_mark_vdev(i64, i32*, %struct.TYPE_10__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
