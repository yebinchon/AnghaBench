; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zed/agents/extr_zfs_mod.c_zfs_iter_pool.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zed/agents/extr_zfs_mod.c_zfs_iter_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8*, i64, i32, i64 }
%struct.TYPE_8__ = type { i32* }

@LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"zfs_iter_pool: evaluating vdevs on %s (by %s)\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"GUID\00", align 1
@ZPOOL_CONFIG_POOL_GUID = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_VDEV_TREE = common dso_local global i32 0, align 4
@g_enumeration_done = common dso_local global i64 0, align 8
@g_pool_list = common dso_local global i32 0, align 4
@VDEV_STATE_DEGRADED = common dso_local global i64 0, align 8
@g_tpool = common dso_local global i32 0, align 4
@zfs_enable_ds = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @zfs_iter_pool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_iter_pool(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %11, %struct.TYPE_9__** %7, align 8
  %12 = load i32, i32* @LOG_INFO, align 4
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @zpool_get_name(i32* %13)
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %24

20:                                               ; preds = %2
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  br label %24

24:                                               ; preds = %20, %19
  %25 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %19 ], [ %23, %20 ]
  %26 = call i32 @zed_log_msg(i32 %12, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %14, i8* %25)
  %27 = load i32*, i32** %3, align 8
  %28 = call i32* @zpool_get_config(i32* %27, i32* null)
  store i32* %28, i32** %5, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %55

30:                                               ; preds = %24
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %46, label %35

35:                                               ; preds = %30
  %36 = load i32*, i32** %5, align 8
  %37 = load i32, i32* @ZPOOL_CONFIG_POOL_GUID, align 4
  %38 = call i64 @nvlist_lookup_uint64(i32* %36, i32 %37, i64* %8)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %54

40:                                               ; preds = %35
  %41 = load i64, i64* %8, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %41, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %40, %30
  %47 = load i32*, i32** %5, align 8
  %48 = load i32, i32* @ZPOOL_CONFIG_VDEV_TREE, align 4
  %49 = call i32 @nvlist_lookup_nvlist(i32* %47, i32 %48, i32** %6)
  %50 = load i32*, i32** %3, align 8
  %51 = load i32*, i32** %6, align 8
  %52 = load i8*, i8** %4, align 8
  %53 = call i32 @zfs_iter_vdev(i32* %50, i32* %51, i8* %52)
  br label %54

54:                                               ; preds = %46, %40, %35
  br label %55

55:                                               ; preds = %54, %24
  %56 = load i64, i64* @g_enumeration_done, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %90

58:                                               ; preds = %55
  %59 = call %struct.TYPE_8__* @list_head(i32* @g_pool_list)
  store %struct.TYPE_8__* %59, %struct.TYPE_8__** %9, align 8
  br label %60

60:                                               ; preds = %86, %58
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %62 = icmp ne %struct.TYPE_8__* %61, null
  br i1 %62, label %63, label %89

63:                                               ; preds = %60
  %64 = load i32*, i32** %3, align 8
  %65 = call i32 @zpool_get_name(i32* %64)
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @zpool_get_name(i32* %68)
  %70 = call i64 @strcmp(i32 %65, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %63
  br label %86

73:                                               ; preds = %63
  %74 = load i32*, i32** %3, align 8
  %75 = call i64 @zfs_toplevel_state(i32* %74)
  %76 = load i64, i64* @VDEV_STATE_DEGRADED, align 8
  %77 = icmp sge i64 %75, %76
  br i1 %77, label %78, label %85

78:                                               ; preds = %73
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %80 = call i32 @list_remove(i32* @g_pool_list, %struct.TYPE_8__* %79)
  %81 = load i32, i32* @g_tpool, align 4
  %82 = load i32, i32* @zfs_enable_ds, align 4
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %84 = call i32 @tpool_dispatch(i32 %81, i32 %82, %struct.TYPE_8__* %83)
  br label %89

85:                                               ; preds = %73
  br label %86

86:                                               ; preds = %85, %72
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %88 = call %struct.TYPE_8__* @list_next(i32* @g_pool_list, %struct.TYPE_8__* %87)
  store %struct.TYPE_8__* %88, %struct.TYPE_8__** %9, align 8
  br label %60

89:                                               ; preds = %78, %60
  br label %90

90:                                               ; preds = %89, %55
  %91 = load i32*, i32** %3, align 8
  %92 = call i32 @zpool_close(i32* %91)
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  ret i32 %95
}

declare dso_local i32 @zed_log_msg(i32, i8*, i32, i8*) #1

declare dso_local i32 @zpool_get_name(i32*) #1

declare dso_local i32* @zpool_get_config(i32*, i32*) #1

declare dso_local i64 @nvlist_lookup_uint64(i32*, i32, i64*) #1

declare dso_local i32 @nvlist_lookup_nvlist(i32*, i32, i32**) #1

declare dso_local i32 @zfs_iter_vdev(i32*, i32*, i8*) #1

declare dso_local %struct.TYPE_8__* @list_head(i32*) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i64 @zfs_toplevel_state(i32*) #1

declare dso_local i32 @list_remove(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @tpool_dispatch(i32, i32, %struct.TYPE_8__*) #1

declare dso_local %struct.TYPE_8__* @list_next(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @zpool_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
