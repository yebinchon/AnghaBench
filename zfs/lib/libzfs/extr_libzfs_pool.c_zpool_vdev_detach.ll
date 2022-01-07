; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_pool.c_zpool_vdev_detach.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_pool.c_zpool_vdev_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i32, i32 }
%struct.TYPE_6__ = type { i32, i32* }

@.str = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@__const.zpool_vdev_detach.zc = private unnamed_addr constant %struct.TYPE_7__ { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i32 0, i32 0 }, align 8
@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"cannot detach %s\00", align 1
@EZFS_NODEVICE = common dso_local global i32 0, align 4
@EZFS_ISSPARE = common dso_local global i32 0, align 4
@EZFS_ISL2CACHE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_GUID = common dso_local global i32 0, align 4
@ZFS_IOC_VDEV_DETACH = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"only applicable to mirror and replacing vdevs\00", align 1
@EZFS_BADTARGET = common dso_local global i32 0, align 4
@EZFS_NOREPLICAS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zpool_vdev_detach(%struct.TYPE_6__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_7__, align 8
  %7 = alloca [1024 x i8], align 16
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = bitcast %struct.TYPE_7__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 bitcast (%struct.TYPE_7__* @__const.zpool_vdev_detach.zc to i8*), i64 16, i1 false)
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %11, align 8
  %16 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %17 = load i32, i32* @TEXT_DOMAIN, align 4
  %18 = call i8* @dgettext(i32 %17, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @snprintf(i8* %16, i32 1024, i8* %18, i8* %19)
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @strlcpy(i32 %22, i32 %25, i32 4)
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = call i32* @zpool_find_vdev(%struct.TYPE_6__* %27, i8* %28, i64* %9, i64* %10, i32* null)
  store i32* %29, i32** %8, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %2
  %32 = load i32*, i32** %11, align 8
  %33 = load i32, i32* @EZFS_NODEVICE, align 4
  %34 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %35 = call i32 @zfs_error(i32* %32, i32 %33, i8* %34)
  store i32 %35, i32* %3, align 4
  br label %87

36:                                               ; preds = %2
  %37 = load i64, i64* %9, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load i32*, i32** %11, align 8
  %41 = load i32, i32* @EZFS_ISSPARE, align 4
  %42 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %43 = call i32 @zfs_error(i32* %40, i32 %41, i8* %42)
  store i32 %43, i32* %3, align 4
  br label %87

44:                                               ; preds = %36
  %45 = load i64, i64* %10, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %44
  %48 = load i32*, i32** %11, align 8
  %49 = load i32, i32* @EZFS_ISL2CACHE, align 4
  %50 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %51 = call i32 @zfs_error(i32* %48, i32 %49, i8* %50)
  store i32 %51, i32* %3, align 4
  br label %87

52:                                               ; preds = %44
  %53 = load i32*, i32** %8, align 8
  %54 = load i32, i32* @ZPOOL_CONFIG_GUID, align 4
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %56 = call i64 @nvlist_lookup_uint64(i32* %53, i32 %54, i32* %55)
  %57 = icmp eq i64 %56, 0
  %58 = zext i1 %57 to i32
  %59 = call i32 @verify(i32 %58)
  %60 = load i32*, i32** %11, align 8
  %61 = load i32, i32* @ZFS_IOC_VDEV_DETACH, align 4
  %62 = call i64 @zfs_ioctl(i32* %60, i32 %61, %struct.TYPE_7__* %6)
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %52
  store i32 0, i32* %3, align 4
  br label %87

65:                                               ; preds = %52
  %66 = load i32, i32* @errno, align 4
  switch i32 %66, label %81 [
    i32 128, label %67
    i32 129, label %76
  ]

67:                                               ; preds = %65
  %68 = load i32*, i32** %11, align 8
  %69 = load i32, i32* @TEXT_DOMAIN, align 4
  %70 = call i8* @dgettext(i32 %69, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %71 = call i32 @zfs_error_aux(i32* %68, i8* %70)
  %72 = load i32*, i32** %11, align 8
  %73 = load i32, i32* @EZFS_BADTARGET, align 4
  %74 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %75 = call i32 @zfs_error(i32* %72, i32 %73, i8* %74)
  br label %86

76:                                               ; preds = %65
  %77 = load i32*, i32** %11, align 8
  %78 = load i32, i32* @EZFS_NOREPLICAS, align 4
  %79 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %80 = call i32 @zfs_error(i32* %77, i32 %78, i8* %79)
  br label %86

81:                                               ; preds = %65
  %82 = load i32*, i32** %11, align 8
  %83 = load i32, i32* @errno, align 4
  %84 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %85 = call i32 @zpool_standard_error(i32* %82, i32 %83, i8* %84)
  br label %86

86:                                               ; preds = %81, %76, %67
  store i32 -1, i32* %3, align 4
  br label %87

87:                                               ; preds = %86, %64, %47, %39, %31
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i8* @dgettext(i32, i8*) #2

declare dso_local i32 @strlcpy(i32, i32, i32) #2

declare dso_local i32* @zpool_find_vdev(%struct.TYPE_6__*, i8*, i64*, i64*, i32*) #2

declare dso_local i32 @zfs_error(i32*, i32, i8*) #2

declare dso_local i32 @verify(i32) #2

declare dso_local i64 @nvlist_lookup_uint64(i32*, i32, i32*) #2

declare dso_local i64 @zfs_ioctl(i32*, i32, %struct.TYPE_7__*) #2

declare dso_local i32 @zfs_error_aux(i32*, i8*) #2

declare dso_local i32 @zpool_standard_error(i32*, i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
