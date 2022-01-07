; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_config.c_zpool_refresh_stats.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_config.c_zpool_refresh_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8*, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i8*, i32*, i32*, i32*, i32 }

@.str = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@__const.zpool_refresh_stats.zc = private unnamed_addr constant %struct.TYPE_10__ { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i32 0 }, align 8
@B_FALSE = common dso_local global i32 0, align 4
@ZFS_IOC_POOL_STATS = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@B_TRUE = common dso_local global i32 0, align 4
@POOL_STATE_UNAVAIL = common dso_local global i8* null, align 8
@POOL_STATE_ACTIVE = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zpool_refresh_stats(%struct.TYPE_9__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_10__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = bitcast %struct.TYPE_10__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 bitcast (%struct.TYPE_10__* @__const.zpool_refresh_stats.zc to i8*), i64 24, i1 false)
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 4
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %9, align 8
  %14 = load i32, i32* @B_FALSE, align 4
  %15 = load i32*, i32** %5, align 8
  store i32 %14, i32* %15, align 4
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @strcpy(i32 %17, i32 %20)
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  store i32 65536, i32* %28, align 8
  br label %29

29:                                               ; preds = %26, %2
  %30 = load i32*, i32** %9, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @zcmd_alloc_dst_nvlist(i32* %30, %struct.TYPE_10__* %6, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  store i32 -1, i32* %3, align 4
  br label %117

37:                                               ; preds = %29
  br label %38

38:                                               ; preds = %75, %37
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 4
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* @ZFS_IOC_POOL_STATS, align 4
  %43 = call i64 @zfs_ioctl(i32* %41, i32 %42, %struct.TYPE_10__* %6)
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %7, align 4
  br label %76

48:                                               ; preds = %38
  %49 = load i64, i64* @errno, align 8
  %50 = load i64, i64* @ENOMEM, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %48
  %53 = load i32*, i32** %9, align 8
  %54 = call i64 @zcmd_expand_dst_nvlist(i32* %53, %struct.TYPE_10__* %6)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = call i32 @zcmd_free_nvlists(%struct.TYPE_10__* %6)
  store i32 -1, i32* %3, align 4
  br label %117

58:                                               ; preds = %52
  br label %75

59:                                               ; preds = %48
  %60 = call i32 @zcmd_free_nvlists(%struct.TYPE_10__* %6)
  %61 = load i64, i64* @errno, align 8
  %62 = load i64, i64* @ENOENT, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %68, label %64

64:                                               ; preds = %59
  %65 = load i64, i64* @errno, align 8
  %66 = load i64, i64* @EINVAL, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %64, %59
  %69 = load i32, i32* @B_TRUE, align 4
  %70 = load i32*, i32** %5, align 8
  store i32 %69, i32* %70, align 4
  br label %71

71:                                               ; preds = %68, %64
  %72 = load i8*, i8** @POOL_STATE_UNAVAIL, align 8
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 1
  store i8* %72, i8** %74, align 8
  store i32 0, i32* %3, align 4
  br label %117

75:                                               ; preds = %58
  br label %38

76:                                               ; preds = %45
  %77 = load i32*, i32** %9, align 8
  %78 = call i64 @zcmd_read_dst_nvlist(i32* %77, %struct.TYPE_10__* %6, i32** %8)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = call i32 @zcmd_free_nvlists(%struct.TYPE_10__* %6)
  store i32 -1, i32* %3, align 4
  br label %117

82:                                               ; preds = %76
  %83 = call i32 @zcmd_free_nvlists(%struct.TYPE_10__* %6)
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 2
  %90 = load i32*, i32** %89, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %102

92:                                               ; preds = %82
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 3
  %95 = load i32*, i32** %94, align 8
  %96 = call i32 @nvlist_free(i32* %95)
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 2
  %99 = load i32*, i32** %98, align 8
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 3
  store i32* %99, i32** %101, align 8
  br label %102

102:                                              ; preds = %92, %82
  %103 = load i32*, i32** %8, align 8
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 2
  store i32* %103, i32** %105, align 8
  %106 = load i32, i32* %7, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %102
  %109 = load i8*, i8** @POOL_STATE_UNAVAIL, align 8
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 1
  store i8* %109, i8** %111, align 8
  br label %116

112:                                              ; preds = %102
  %113 = load i8*, i8** @POOL_STATE_ACTIVE, align 8
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 1
  store i8* %113, i8** %115, align 8
  br label %116

116:                                              ; preds = %112, %108
  store i32 0, i32* %3, align 4
  br label %117

117:                                              ; preds = %116, %80, %71, %56, %36
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strcpy(i32, i32) #2

declare dso_local i64 @zcmd_alloc_dst_nvlist(i32*, %struct.TYPE_10__*, i32) #2

declare dso_local i64 @zfs_ioctl(i32*, i32, %struct.TYPE_10__*) #2

declare dso_local i64 @zcmd_expand_dst_nvlist(i32*, %struct.TYPE_10__*) #2

declare dso_local i32 @zcmd_free_nvlists(%struct.TYPE_10__*) #2

declare dso_local i64 @zcmd_read_dst_nvlist(i32*, %struct.TYPE_10__*, i32**) #2

declare dso_local i32 @nvlist_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
