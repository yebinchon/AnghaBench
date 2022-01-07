; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_pool.c_zpool_vdev_fault.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_pool.c_zpool_vdev_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i32, i32, i64, i32 }
%struct.TYPE_5__ = type { i32, i32* }

@.str = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@__const.zpool_vdev_fault.zc = private unnamed_addr constant %struct.TYPE_6__ { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i64 0, i32 0 }, align 8
@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"cannot fault %llu\00", align 1
@VDEV_STATE_FAULTED = common dso_local global i32 0, align 4
@ZFS_IOC_VDEV_SET_STATE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EZFS_NOREPLICAS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zpool_vdev_fault(%struct.TYPE_5__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__, align 8
  %9 = alloca [1024 x i8], align 16
  %10 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = bitcast %struct.TYPE_6__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 bitcast (%struct.TYPE_6__* @__const.zpool_vdev_fault.zc to i8*), i64 32, i1 false)
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %10, align 8
  %15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %16 = load i32, i32* @TEXT_DOMAIN, align 4
  %17 = call i8* @dgettext(i32 %16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i64, i64* %6, align 8
  %19 = trunc i64 %18 to i32
  %20 = call i32 @snprintf(i8* %15, i32 1024, i8* %17, i32 %19)
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @strlcpy(i32 %22, i32 %25, i32 4)
  %27 = load i64, i64* %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 3
  store i64 %27, i64* %28, align 8
  %29 = load i32, i32* @VDEV_STATE_FAULTED, align 4
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 2
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* %7, align 4
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  store i32 %31, i32* %32, align 8
  %33 = load i32*, i32** %10, align 8
  %34 = load i32, i32* @ZFS_IOC_VDEV_SET_STATE, align 4
  %35 = call i64 @zfs_ioctl(i32* %33, i32 %34, %struct.TYPE_6__* %8)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %50

38:                                               ; preds = %3
  %39 = load i32, i32* @errno, align 4
  switch i32 %39, label %45 [
    i32 128, label %40
  ]

40:                                               ; preds = %38
  %41 = load i32*, i32** %10, align 8
  %42 = load i32, i32* @EZFS_NOREPLICAS, align 4
  %43 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %44 = call i32 @zfs_error(i32* %41, i32 %42, i8* %43)
  store i32 %44, i32* %4, align 4
  br label %50

45:                                               ; preds = %38
  %46 = load i32*, i32** %10, align 8
  %47 = load i32, i32* @errno, align 4
  %48 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %49 = call i32 @zpool_standard_error(i32* %46, i32 %47, i8* %48)
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %45, %40, %37
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i8* @dgettext(i32, i8*) #2

declare dso_local i32 @strlcpy(i32, i32, i32) #2

declare dso_local i64 @zfs_ioctl(i32*, i32, %struct.TYPE_6__*) #2

declare dso_local i32 @zfs_error(i32*, i32, i8*) #2

declare dso_local i32 @zpool_standard_error(i32*, i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
