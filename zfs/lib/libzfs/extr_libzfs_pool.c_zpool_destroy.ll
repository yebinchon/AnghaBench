; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_pool.c_zpool_destroy.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_pool.c_zpool_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i64, i32 }
%struct.TYPE_5__ = type { i64, i32, i32* }

@.str = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@__const.zpool_destroy.zc = private unnamed_addr constant %struct.TYPE_6__ { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i64 0, i32 0 }, align 8
@POOL_STATE_ACTIVE = common dso_local global i64 0, align 8
@ZFS_TYPE_FILESYSTEM = common dso_local global i32 0, align 4
@ZFS_IOC_POOL_DESTROY = common dso_local global i32 0, align 4
@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"cannot destroy '%s'\00", align 1
@errno = common dso_local global i64 0, align 8
@EROFS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"one or more devices is read only\00", align 1
@EZFS_BADDEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zpool_destroy(%struct.TYPE_5__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_6__, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca [1024 x i8], align 16
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = bitcast %struct.TYPE_6__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 bitcast (%struct.TYPE_6__* @__const.zpool_destroy.zc to i8*), i64 24, i1 false)
  store i32* null, i32** %7, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 2
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %8, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @POOL_STATE_ACTIVE, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %2
  %20 = load i32*, i32** %8, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @ZFS_TYPE_FILESYSTEM, align 4
  %25 = call i32* @zfs_open(i32* %20, i32 %23, i32 %24)
  store i32* %25, i32** %7, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  store i32 -1, i32* %3, align 4
  br label %83

28:                                               ; preds = %19, %2
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @strlcpy(i32 %30, i32 %33, i32 4)
  %35 = load i8*, i8** %5, align 8
  %36 = ptrtoint i8* %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  store i64 %36, i64* %37, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = load i32, i32* @ZFS_IOC_POOL_DESTROY, align 4
  %40 = call i64 @zfs_ioctl(i32* %38, i32 %39, %struct.TYPE_6__* %6)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %74

42:                                               ; preds = %28
  %43 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %44 = load i32, i32* @TEXT_DOMAIN, align 4
  %45 = call i8* @dgettext(i32 %44, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @snprintf(i8* %43, i32 1024, i8* %45, i32 %48)
  %50 = load i64, i64* @errno, align 8
  %51 = load i64, i64* @EROFS, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %42
  %54 = load i32*, i32** %8, align 8
  %55 = load i32, i32* @TEXT_DOMAIN, align 4
  %56 = call i8* @dgettext(i32 %55, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %57 = call i32 @zfs_error_aux(i32* %54, i8* %56)
  %58 = load i32*, i32** %8, align 8
  %59 = load i32, i32* @EZFS_BADDEV, align 4
  %60 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %61 = call i32 @zfs_error(i32* %58, i32 %59, i8* %60)
  br label %67

62:                                               ; preds = %42
  %63 = load i32*, i32** %8, align 8
  %64 = load i64, i64* @errno, align 8
  %65 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %66 = call i32 @zpool_standard_error(i32* %63, i64 %64, i8* %65)
  br label %67

67:                                               ; preds = %62, %53
  %68 = load i32*, i32** %7, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load i32*, i32** %7, align 8
  %72 = call i32 @zfs_close(i32* %71)
  br label %73

73:                                               ; preds = %70, %67
  store i32 -1, i32* %3, align 4
  br label %83

74:                                               ; preds = %28
  %75 = load i32*, i32** %7, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %82

77:                                               ; preds = %74
  %78 = load i32*, i32** %7, align 8
  %79 = call i32 @remove_mountpoint(i32* %78)
  %80 = load i32*, i32** %7, align 8
  %81 = call i32 @zfs_close(i32* %80)
  br label %82

82:                                               ; preds = %77, %74
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %82, %73, %27
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32* @zfs_open(i32*, i32, i32) #2

declare dso_local i32 @strlcpy(i32, i32, i32) #2

declare dso_local i64 @zfs_ioctl(i32*, i32, %struct.TYPE_6__*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i8* @dgettext(i32, i8*) #2

declare dso_local i32 @zfs_error_aux(i32*, i8*) #2

declare dso_local i32 @zfs_error(i32*, i32, i8*) #2

declare dso_local i32 @zpool_standard_error(i32*, i64, i8*) #2

declare dso_local i32 @zfs_close(i32*) #2

declare dso_local i32 @remove_mountpoint(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
