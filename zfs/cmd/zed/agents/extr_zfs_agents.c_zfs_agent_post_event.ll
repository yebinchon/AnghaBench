; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zed/agents/extr_zfs_agents.c_zfs_agent_post_event.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zed/agents/extr_zfs_agents.c_zfs_agent_post_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32* }
%struct.timeval = type { i64, i64 }
%struct.TYPE_7__ = type { i8*, i32, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"sysevent.fs.zfs.vdev_check\00", align 1
@EC_ZFS = common dso_local global i8* null, align 8
@ESC_ZFS_VDEV_CHECK = common dso_local global i8* null, align 8
@EC_DEV_REMOVE = common dso_local global i8* null, align 8
@ESC_DISK = common dso_local global i8* null, align 8
@ZFS_EV_VDEV_GUID = common dso_local global i32 0, align 4
@DEV_IDENTIFIER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"resource.fs.zfs.removed\00", align 1
@FM_CLASS = common dso_local global i32 0, align 4
@ZFS_EV_POOL_GUID = common dso_local global i32 0, align 4
@FM_EREPORT_TIME = common dso_local global i32 0, align 4
@g_zfs_hdl = common dso_local global i32 0, align 4
@zfs_agent_iter_pool = common dso_local global i32 0, align 4
@LOG_INFO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [66 x i8] c"agent post event: ignoring '%s' for recently expanded device '%s'\00", align 1
@FM_EREPORT_PAYLOAD_ZFS_POOL_GUID = common dso_local global i32 0, align 4
@FM_EREPORT_PAYLOAD_ZFS_VDEV_GUID = common dso_local global i32 0, align 4
@FM_EREPORT_PAYLOAD_ZFS_VDEV_TYPE = common dso_local global i32 0, align 4
@VDEV_TYPE_L2CACHE = common dso_local global i8* null, align 8
@VDEV_TYPE_SPARE = common dso_local global i8* null, align 8
@VDEV_TYPE_DISK = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [39 x i8] c"agent post event: mapping '%s' to '%s'\00", align 1
@agent_lock = common dso_local global i32 0, align 4
@agent_events = common dso_local global i32 0, align 4
@agent_cond = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfs_agent_post_event(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.timeval, align 8
  %10 = alloca [2 x i64], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_7__, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  br label %18

18:                                               ; preds = %17, %3
  %19 = call %struct.TYPE_8__* @malloc(i32 16)
  store %struct.TYPE_8__* %19, %struct.TYPE_8__** %7, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %21 = icmp eq %struct.TYPE_8__* %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %18
  %23 = load i32*, i32** %6, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 2
  %26 = call i64 @nvlist_dup(i32* %23, i32** %25, i32 0)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %22, %18
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %30 = icmp ne %struct.TYPE_8__* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %33 = call i32 @free(%struct.TYPE_8__* %32)
  br label %34

34:                                               ; preds = %31, %28
  br label %164

35:                                               ; preds = %22
  %36 = load i8*, i8** %4, align 8
  %37 = call i64 @strcmp(i8* %36, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i8*, i8** @EC_ZFS, align 8
  store i8* %40, i8** %4, align 8
  %41 = load i8*, i8** @ESC_ZFS_VDEV_CHECK, align 8
  store i8* %41, i8** %5, align 8
  br label %42

42:                                               ; preds = %39, %35
  %43 = load i8*, i8** %4, align 8
  %44 = load i8*, i8** @EC_DEV_REMOVE, align 8
  %45 = call i64 @strcmp(i8* %43, i8* %44)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %147

47:                                               ; preds = %42
  %48 = load i8*, i8** %5, align 8
  %49 = load i8*, i8** @ESC_DISK, align 8
  %50 = call i64 @strcmp(i8* %48, i8* %49)
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %147

52:                                               ; preds = %47
  %53 = load i32*, i32** %6, align 8
  %54 = load i32, i32* @ZFS_EV_VDEV_GUID, align 4
  %55 = call i64 @nvlist_exists(i32* %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %52
  %58 = load i32*, i32** %6, align 8
  %59 = load i32, i32* @DEV_IDENTIFIER, align 4
  %60 = call i64 @nvlist_exists(i32* %58, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %147

62:                                               ; preds = %57, %52
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  store i32* %65, i32** %8, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %66 = bitcast %struct.TYPE_7__* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %66, i8 0, i64 40, i1 false)
  store i32 129, i32* %14, align 4
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8** %4, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  %67 = load i32*, i32** %8, align 8
  %68 = load i32, i32* @FM_CLASS, align 4
  %69 = load i8*, i8** %4, align 8
  %70 = call i32 @nvlist_add_string(i32* %67, i32 %68, i8* %69)
  %71 = load i32*, i32** %6, align 8
  %72 = load i32, i32* @ZFS_EV_POOL_GUID, align 4
  %73 = call i32 @nvlist_lookup_uint64(i32* %71, i32 %72, i32* %11)
  %74 = load i32*, i32** %6, align 8
  %75 = load i32, i32* @ZFS_EV_VDEV_GUID, align 4
  %76 = call i32 @nvlist_lookup_uint64(i32* %74, i32 %75, i32* %12)
  %77 = call i32 @gettimeofday(%struct.timeval* %9, i32* null)
  %78 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 0
  store i64 %79, i64* %80, align 16
  %81 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 1
  store i64 %82, i64* %83, align 8
  %84 = load i32*, i32** %8, align 8
  %85 = load i32, i32* @FM_EREPORT_TIME, align 4
  %86 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 0
  %87 = call i32 @nvlist_add_int64_array(i32* %84, i32 %85, i64* %86, i32 2)
  %88 = load i32*, i32** %6, align 8
  %89 = load i32, i32* @DEV_IDENTIFIER, align 4
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %91 = call i32 @nvlist_lookup_string(i32* %88, i32 %89, i8** %90)
  %92 = load i32, i32* @g_zfs_hdl, align 4
  %93 = load i32, i32* @zfs_agent_iter_pool, align 4
  %94 = call i32 @zpool_iter(i32 %92, i32 %93, %struct.TYPE_7__* %13)
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 4
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %11, align 4
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  store i32 %98, i32* %12, align 4
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  store i32 %100, i32* %14, align 4
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %117

104:                                              ; preds = %62
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = add nsw i64 %106, 10
  %108 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp sgt i64 %107, %109
  br i1 %110, label %111, label %117

111:                                              ; preds = %104
  %112 = load i32, i32* @LOG_INFO, align 4
  %113 = load i8*, i8** @EC_DEV_REMOVE, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %115 = load i8*, i8** %114, align 8
  %116 = call i32 @zed_log_msg(i32 %112, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.3, i64 0, i64 0), i8* %113, i8* %115)
  br label %162

117:                                              ; preds = %104, %62
  %118 = load i32*, i32** %8, align 8
  %119 = load i32, i32* @FM_EREPORT_PAYLOAD_ZFS_POOL_GUID, align 4
  %120 = load i32, i32* %11, align 4
  %121 = call i32 @nvlist_add_uint64(i32* %118, i32 %119, i32 %120)
  %122 = load i32*, i32** %8, align 8
  %123 = load i32, i32* @FM_EREPORT_PAYLOAD_ZFS_VDEV_GUID, align 4
  %124 = load i32, i32* %12, align 4
  %125 = call i32 @nvlist_add_uint64(i32* %122, i32 %123, i32 %124)
  %126 = load i32, i32* %14, align 4
  switch i32 %126, label %142 [
    i32 130, label %127
    i32 128, label %132
    i32 129, label %137
  ]

127:                                              ; preds = %117
  %128 = load i32*, i32** %8, align 8
  %129 = load i32, i32* @FM_EREPORT_PAYLOAD_ZFS_VDEV_TYPE, align 4
  %130 = load i8*, i8** @VDEV_TYPE_L2CACHE, align 8
  %131 = call i32 @nvlist_add_string(i32* %128, i32 %129, i8* %130)
  br label %142

132:                                              ; preds = %117
  %133 = load i32*, i32** %8, align 8
  %134 = load i32, i32* @FM_EREPORT_PAYLOAD_ZFS_VDEV_TYPE, align 4
  %135 = load i8*, i8** @VDEV_TYPE_SPARE, align 8
  %136 = call i32 @nvlist_add_string(i32* %133, i32 %134, i8* %135)
  br label %142

137:                                              ; preds = %117
  %138 = load i32*, i32** %8, align 8
  %139 = load i32, i32* @FM_EREPORT_PAYLOAD_ZFS_VDEV_TYPE, align 4
  %140 = load i8*, i8** @VDEV_TYPE_DISK, align 8
  %141 = call i32 @nvlist_add_string(i32* %138, i32 %139, i8* %140)
  br label %142

142:                                              ; preds = %117, %137, %132, %127
  %143 = load i32, i32* @LOG_INFO, align 4
  %144 = load i8*, i8** @EC_DEV_REMOVE, align 8
  %145 = load i8*, i8** %4, align 8
  %146 = call i32 @zed_log_msg(i32 %143, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i8* %144, i8* %145)
  br label %147

147:                                              ; preds = %142, %57, %47, %42
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load i8*, i8** %4, align 8
  %152 = call i32 @strlcpy(i32 %150, i8* %151, i32 4)
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load i8*, i8** %5, align 8
  %157 = call i32 @strlcpy(i32 %155, i8* %156, i32 4)
  %158 = call i32 @pthread_mutex_lock(i32* @agent_lock)
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %160 = call i32 @list_insert_tail(i32* @agent_events, %struct.TYPE_8__* %159)
  %161 = call i32 @pthread_mutex_unlock(i32* @agent_lock)
  br label %162

162:                                              ; preds = %147, %111
  %163 = call i32 @pthread_cond_signal(i32* @agent_cond)
  br label %164

164:                                              ; preds = %162, %34
  ret void
}

declare dso_local %struct.TYPE_8__* @malloc(i32) #1

declare dso_local i64 @nvlist_dup(i32*, i32**, i32) #1

declare dso_local i32 @free(%struct.TYPE_8__*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @nvlist_exists(i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @nvlist_add_string(i32*, i32, i8*) #1

declare dso_local i32 @nvlist_lookup_uint64(i32*, i32, i32*) #1

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i32 @nvlist_add_int64_array(i32*, i32, i64*, i32) #1

declare dso_local i32 @nvlist_lookup_string(i32*, i32, i8**) #1

declare dso_local i32 @zpool_iter(i32, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @zed_log_msg(i32, i8*, i8*, i8*) #1

declare dso_local i32 @nvlist_add_uint64(i32*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @list_insert_tail(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @pthread_cond_signal(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
