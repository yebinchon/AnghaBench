; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_pool.c_zpool_events_next.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_pool.c_zpool_events_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i32, i32, i64 }

@.str = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@__const.zpool_events_next.zc = private unnamed_addr constant %struct.TYPE_7__ { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i64 0 }, align 8
@ZEVENT_NONBLOCK = common dso_local global i32 0, align 4
@ZEVENT_SIZE = common dso_local global i32 0, align 4
@ZFS_IOC_EVENTS_NEXT = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EZFS_POOLUNAVAIL = common dso_local global i32 0, align 4
@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"zfs shutdown\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"cannot get event\00", align 1
@EZFS_NOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zpool_events_next(i32* %0, i32** %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_7__, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32** %1, i32*** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = bitcast %struct.TYPE_7__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 bitcast (%struct.TYPE_7__* @__const.zpool_events_next.zc to i8*), i64 24, i1 false)
  store i32 0, i32* %13, align 4
  %15 = load i32**, i32*** %8, align 8
  store i32* null, i32** %15, align 8
  %16 = load i32*, i32** %9, align 8
  store i32 0, i32* %16, align 4
  %17 = load i32, i32* %11, align 4
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  store i32 %17, i32* %18, align 8
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* @ZEVENT_NONBLOCK, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %5
  %24 = load i32, i32* @ZEVENT_NONBLOCK, align 4
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 2
  store i32 %24, i32* %25, align 4
  br label %26

26:                                               ; preds = %23, %5
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* @ZEVENT_SIZE, align 4
  %29 = call i64 @zcmd_alloc_dst_nvlist(i32* %27, %struct.TYPE_7__* %12, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 -1, i32* %6, align 4
  br label %90

32:                                               ; preds = %26
  br label %33

33:                                               ; preds = %68, %32
  %34 = load i32*, i32** %7, align 8
  %35 = load i32, i32* @ZFS_IOC_EVENTS_NEXT, align 4
  %36 = call i64 @zfs_ioctl(i32* %34, i32 %35, %struct.TYPE_7__* %12)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %75

38:                                               ; preds = %33
  %39 = load i32, i32* @errno, align 4
  switch i32 %39, label %69 [
    i32 128, label %40
    i32 130, label %46
    i32 129, label %58
  ]

40:                                               ; preds = %38
  %41 = load i32*, i32** %7, align 8
  %42 = load i32, i32* @EZFS_POOLUNAVAIL, align 4
  %43 = load i32, i32* @TEXT_DOMAIN, align 4
  %44 = call i32 @dgettext(i32 %43, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %45 = call i32 @zfs_error_fmt(i32* %41, i32 %42, i32 %44)
  store i32 %45, i32* %13, align 4
  br label %87

46:                                               ; preds = %38
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* @ZEVENT_NONBLOCK, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %46
  %52 = load i32*, i32** %7, align 8
  %53 = load i32, i32* @errno, align 4
  %54 = load i32, i32* @TEXT_DOMAIN, align 4
  %55 = call i32 @dgettext(i32 %54, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %56 = call i32 @zpool_standard_error_fmt(i32* %52, i32 %53, i32 %55)
  store i32 %56, i32* %13, align 4
  br label %57

57:                                               ; preds = %51, %46
  br label %87

58:                                               ; preds = %38
  %59 = load i32*, i32** %7, align 8
  %60 = call i32 @zcmd_expand_dst_nvlist(i32* %59, %struct.TYPE_7__* %12)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %58
  %63 = load i32*, i32** %7, align 8
  %64 = load i32, i32* @EZFS_NOMEM, align 4
  %65 = load i32, i32* @TEXT_DOMAIN, align 4
  %66 = call i32 @dgettext(i32 %65, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %67 = call i32 @zfs_error_fmt(i32* %63, i32 %64, i32 %66)
  store i32 %67, i32* %13, align 4
  br label %87

68:                                               ; preds = %58
  br label %33

69:                                               ; preds = %38
  %70 = load i32*, i32** %7, align 8
  %71 = load i32, i32* @errno, align 4
  %72 = load i32, i32* @TEXT_DOMAIN, align 4
  %73 = call i32 @dgettext(i32 %72, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %74 = call i32 @zpool_standard_error_fmt(i32* %70, i32 %71, i32 %73)
  store i32 %74, i32* %13, align 4
  br label %87

75:                                               ; preds = %33
  %76 = load i32*, i32** %7, align 8
  %77 = load i32**, i32*** %8, align 8
  %78 = call i32 @zcmd_read_dst_nvlist(i32* %76, %struct.TYPE_7__* %12, i32** %77)
  store i32 %78, i32* %13, align 4
  %79 = load i32, i32* %13, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  br label %87

82:                                               ; preds = %75
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = trunc i64 %84 to i32
  %86 = load i32*, i32** %9, align 8
  store i32 %85, i32* %86, align 4
  br label %87

87:                                               ; preds = %82, %81, %69, %62, %57, %40
  %88 = call i32 @zcmd_free_nvlists(%struct.TYPE_7__* %12)
  %89 = load i32, i32* %13, align 4
  store i32 %89, i32* %6, align 4
  br label %90

90:                                               ; preds = %87, %31
  %91 = load i32, i32* %6, align 4
  ret i32 %91
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @zcmd_alloc_dst_nvlist(i32*, %struct.TYPE_7__*, i32) #2

declare dso_local i64 @zfs_ioctl(i32*, i32, %struct.TYPE_7__*) #2

declare dso_local i32 @zfs_error_fmt(i32*, i32, i32) #2

declare dso_local i32 @dgettext(i32, i8*) #2

declare dso_local i32 @zpool_standard_error_fmt(i32*, i32, i32) #2

declare dso_local i32 @zcmd_expand_dst_nvlist(i32*, %struct.TYPE_7__*) #2

declare dso_local i32 @zcmd_read_dst_nvlist(i32*, %struct.TYPE_7__*, i32**) #2

declare dso_local i32 @zcmd_free_nvlists(%struct.TYPE_7__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
