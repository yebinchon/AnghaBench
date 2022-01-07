; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zed/agents/extr_zfs_retire.c_zfs_vdev_repair.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zed/agents/extr_zfs_retire.c_zfs_vdev_repair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64, %struct.TYPE_5__* }

@FM_EREPORT_PAYLOAD_ZFS_POOL_GUID = common dso_local global i32 0, align 4
@FM_EREPORT_PAYLOAD_ZFS_VDEV_GUID = common dso_local global i32 0, align 4
@FMD_SLEEP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"marking repaired vdev %llu on pool %llu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @zfs_vdev_repair to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfs_vdev_repair(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call %struct.TYPE_6__* @fmd_hdl_getspecific(i32* %9)
  store %struct.TYPE_6__* %10, %struct.TYPE_6__** %5, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = load i32, i32* @FM_EREPORT_PAYLOAD_ZFS_POOL_GUID, align 4
  %13 = call i64 @nvlist_lookup_uint64(i32* %11, i32 %12, i64* %7)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %2
  %16 = load i32*, i32** %4, align 8
  %17 = load i32, i32* @FM_EREPORT_PAYLOAD_ZFS_VDEV_GUID, align 4
  %18 = call i64 @nvlist_lookup_uint64(i32* %16, i32 %17, i64* %8)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15, %2
  br label %68

21:                                               ; preds = %15
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  store %struct.TYPE_5__* %24, %struct.TYPE_5__** %6, align 8
  br label %25

25:                                               ; preds = %42, %21
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %27 = icmp ne %struct.TYPE_5__* %26, null
  br i1 %27, label %28, label %46

28:                                               ; preds = %25
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %7, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %28
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %8, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %68

41:                                               ; preds = %34, %28
  br label %42

42:                                               ; preds = %41
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 2
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  store %struct.TYPE_5__* %45, %struct.TYPE_5__** %6, align 8
  br label %25

46:                                               ; preds = %25
  %47 = load i32*, i32** %3, align 8
  %48 = load i32, i32* @FMD_SLEEP, align 4
  %49 = call %struct.TYPE_5__* @fmd_hdl_alloc(i32* %47, i32 24, i32 %48)
  store %struct.TYPE_5__* %49, %struct.TYPE_5__** %6, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 2
  store %struct.TYPE_5__* %52, %struct.TYPE_5__** %54, align 8
  %55 = load i64, i64* %7, align 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  %58 = load i64, i64* %8, align 8
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  store i64 %58, i64* %60, align 8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  store %struct.TYPE_5__* %61, %struct.TYPE_5__** %63, align 8
  %64 = load i32*, i32** %3, align 8
  %65 = load i64, i64* %8, align 8
  %66 = load i64, i64* %7, align 8
  %67 = call i32 @fmd_hdl_debug(i32* %64, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %65, i64 %66)
  br label %68

68:                                               ; preds = %46, %40, %20
  ret void
}

declare dso_local %struct.TYPE_6__* @fmd_hdl_getspecific(i32*) #1

declare dso_local i64 @nvlist_lookup_uint64(i32*, i32, i64*) #1

declare dso_local %struct.TYPE_5__* @fmd_hdl_alloc(i32*, i32, i32) #1

declare dso_local i32 @fmd_hdl_debug(i32*, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
