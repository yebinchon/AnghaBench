; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_pool.c_zpool_reguid.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_pool.c_zpool_reguid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i32 }
%struct.TYPE_5__ = type { i32, i32* }

@.str = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@__const.zpool_reguid.zc = private unnamed_addr constant %struct.TYPE_6__ { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i32 0 }, align 8
@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"cannot reguid '%s'\00", align 1
@ZFS_IOC_POOL_REGUID = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zpool_reguid(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca [1024 x i8], align 16
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  store i32* %9, i32** %5, align 8
  %10 = bitcast %struct.TYPE_6__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 bitcast (%struct.TYPE_6__* @__const.zpool_reguid.zc to i8*), i64 16, i1 false)
  %11 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %12 = load i32, i32* @TEXT_DOMAIN, align 4
  %13 = call i8* @dgettext(i32 %12, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @snprintf(i8* %11, i32 1024, i8* %13, i32 %16)
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @strlcpy(i32 %19, i32 %22, i32 4)
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* @ZFS_IOC_POOL_REGUID, align 4
  %26 = call i64 @zfs_ioctl(i32* %24, i32 %25, %struct.TYPE_6__* %6)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %34

29:                                               ; preds = %1
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* @errno, align 4
  %32 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %33 = call i32 @zpool_standard_error(i32* %30, i32 %31, i8* %32)
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %29, %28
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i8* @dgettext(i32, i8*) #2

declare dso_local i32 @strlcpy(i32, i32, i32) #2

declare dso_local i64 @zfs_ioctl(i32*, i32, %struct.TYPE_6__*) #2

declare dso_local i32 @zpool_standard_error(i32*, i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
