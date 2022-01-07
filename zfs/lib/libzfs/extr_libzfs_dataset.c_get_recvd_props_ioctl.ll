; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_dataset.c_get_recvd_props_ioctl.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_dataset.c_get_recvd_props_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8*, i32 }
%struct.TYPE_9__ = type { i32*, i32*, i32 }

@.str = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@__const.get_recvd_props_ioctl.zc = private unnamed_addr constant %struct.TYPE_10__ { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i32 0 }, align 8
@ZFS_IOC_OBJSET_RECVD_PROPS = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @get_recvd_props_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_recvd_props_ioctl(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_10__, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %4, align 8
  %11 = bitcast %struct.TYPE_10__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 bitcast (%struct.TYPE_10__* @__const.get_recvd_props_ioctl.zc to i8*), i64 16, i1 false)
  %12 = load i32*, i32** %4, align 8
  %13 = call i64 @zcmd_alloc_dst_nvlist(i32* %12, %struct.TYPE_10__* %6, i32 0)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %58

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @strlcpy(i32 %18, i32 %21, i32 4)
  br label %23

23:                                               ; preds = %40, %16
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* @ZFS_IOC_OBJSET_RECVD_PROPS, align 4
  %26 = call i64 @zfs_ioctl(i32* %24, i32 %25, %struct.TYPE_10__* %6)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %23
  %29 = load i64, i64* @errno, align 8
  %30 = load i64, i64* @ENOMEM, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %28
  %33 = load i32*, i32** %4, align 8
  %34 = call i64 @zcmd_expand_dst_nvlist(i32* %33, %struct.TYPE_10__* %6)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i32 -1, i32* %2, align 4
  br label %58

37:                                               ; preds = %32
  br label %40

38:                                               ; preds = %28
  %39 = call i32 @zcmd_free_nvlists(%struct.TYPE_10__* %6)
  store i32 -1, i32* %2, align 4
  br label %58

40:                                               ; preds = %37
  br label %23

41:                                               ; preds = %23
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @zcmd_read_dst_nvlist(i32* %44, %struct.TYPE_10__* %6, i32** %5)
  store i32 %45, i32* %7, align 4
  %46 = call i32 @zcmd_free_nvlists(%struct.TYPE_10__* %6)
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  store i32 -1, i32* %2, align 4
  br label %58

50:                                               ; preds = %41
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @nvlist_free(i32* %53)
  %55 = load i32*, i32** %5, align 8
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  store i32* %55, i32** %57, align 8
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %50, %49, %38, %36, %15
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @zcmd_alloc_dst_nvlist(i32*, %struct.TYPE_10__*, i32) #2

declare dso_local i32 @strlcpy(i32, i32, i32) #2

declare dso_local i64 @zfs_ioctl(i32*, i32, %struct.TYPE_10__*) #2

declare dso_local i64 @zcmd_expand_dst_nvlist(i32*, %struct.TYPE_10__*) #2

declare dso_local i32 @zcmd_free_nvlists(%struct.TYPE_10__*) #2

declare dso_local i32 @zcmd_read_dst_nvlist(i32*, %struct.TYPE_10__*, i32**) #2

declare dso_local i32 @nvlist_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
