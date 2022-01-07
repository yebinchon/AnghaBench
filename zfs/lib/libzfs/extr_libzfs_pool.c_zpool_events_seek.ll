; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_pool.c_zpool_events_seek.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_pool.c_zpool_events_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@__const.zpool_events_seek.zc = private unnamed_addr constant %struct.TYPE_3__ { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i32 0, i32 0 }, align 8
@ZFS_IOC_EVENTS_SEEK = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EZFS_NOENT = common dso_local global i32 0, align 4
@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"cannot get event\00", align 1
@EZFS_NOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zpool_events_seek(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = bitcast %struct.TYPE_3__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 bitcast (%struct.TYPE_3__* @__const.zpool_events_seek.zc to i8*), i64 16, i1 false)
  store i32 0, i32* %8, align 4
  %10 = load i32, i32* %5, align 4
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 2
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* %6, align 4
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  store i32 %12, i32* %13, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = load i32, i32* @ZFS_IOC_EVENTS_SEEK, align 4
  %16 = call i64 @zfs_ioctl(i32* %14, i32 %15, %struct.TYPE_3__* %7)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %39

18:                                               ; preds = %3
  %19 = load i32, i32* @errno, align 4
  switch i32 %19, label %32 [
    i32 129, label %20
    i32 128, label %26
  ]

20:                                               ; preds = %18
  %21 = load i32*, i32** %4, align 8
  %22 = load i32, i32* @EZFS_NOENT, align 4
  %23 = load i32, i32* @TEXT_DOMAIN, align 4
  %24 = call i32 @dgettext(i32 %23, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %25 = call i32 @zfs_error_fmt(i32* %21, i32 %22, i32 %24)
  store i32 %25, i32* %8, align 4
  br label %38

26:                                               ; preds = %18
  %27 = load i32*, i32** %4, align 8
  %28 = load i32, i32* @EZFS_NOMEM, align 4
  %29 = load i32, i32* @TEXT_DOMAIN, align 4
  %30 = call i32 @dgettext(i32 %29, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %31 = call i32 @zfs_error_fmt(i32* %27, i32 %28, i32 %30)
  store i32 %31, i32* %8, align 4
  br label %38

32:                                               ; preds = %18
  %33 = load i32*, i32** %4, align 8
  %34 = load i32, i32* @errno, align 4
  %35 = load i32, i32* @TEXT_DOMAIN, align 4
  %36 = call i32 @dgettext(i32 %35, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %37 = call i32 @zpool_standard_error_fmt(i32* %33, i32 %34, i32 %36)
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %32, %26, %20
  br label %39

39:                                               ; preds = %38, %3
  %40 = load i32, i32* %8, align 4
  ret i32 %40
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @zfs_ioctl(i32*, i32, %struct.TYPE_3__*) #2

declare dso_local i32 @zfs_error_fmt(i32*, i32, i32) #2

declare dso_local i32 @dgettext(i32, i8*) #2

declare dso_local i32 @zpool_standard_error_fmt(i32*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
