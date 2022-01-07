; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_diff.c_make_temp_snapshot.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_diff.c_make_temp_snapshot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32* }

@.str = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@__const.make_temp_snapshot.zc = private unnamed_addr constant %struct.TYPE_7__ { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i32 0 }, align 8
@ZDIFF_PREFIX = common dso_local global i8* null, align 8
@ZFS_IOC_TMP_SNAPSHOT = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [96 x i8] c"The diff delegated permission is needed in order\0Ato create a just-in-time snapshot for diffing\0A\00", align 1
@EZFS_DIFF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"Cannot create just-in-time snapshot of '%s'\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%s@%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @make_temp_snapshot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @make_temp_snapshot(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 5
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %4, align 8
  %12 = bitcast %struct.TYPE_7__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 bitcast (%struct.TYPE_7__* @__const.make_temp_snapshot.zc to i8*), i64 24, i1 false)
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load i8*, i8** @ZDIFF_PREFIX, align 8
  %16 = call i32 (...) @getpid()
  %17 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %14, i32 4, i8* %15, i32 %16)
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @strlcpy(i32 %19, i32 %22, i32 4)
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 3
  store i32 %26, i32* %27, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = load i32, i32* @ZFS_IOC_TMP_SNAPSHOT, align 4
  %30 = call i64 @zfs_ioctl(i32* %28, i32 %29, %struct.TYPE_7__* %5)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %65

32:                                               ; preds = %1
  %33 = load i32, i32* @errno, align 4
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @EPERM, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %50

37:                                               ; preds = %32
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @TEXT_DOMAIN, align 4
  %42 = call i8* @dgettext(i32 %41, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.1, i64 0, i64 0))
  %43 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %40, i32 4, i8* %42)
  %44 = load i32*, i32** %4, align 8
  %45 = load i32, i32* @EZFS_DIFF, align 4
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @zfs_error(i32* %44, i32 %45, i32 %48)
  store i32 %49, i32* %2, align 4
  br label %82

50:                                               ; preds = %32
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @TEXT_DOMAIN, align 4
  %55 = call i8* @dgettext(i32 %54, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %53, i32 4, i8* %55, i32 %57)
  %59 = load i32*, i32** %4, align 8
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @zfs_standard_error(i32* %59, i32 %60, i32 %63)
  store i32 %64, i32* %2, align 4
  br label %82

65:                                               ; preds = %1
  %66 = load i32*, i32** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @zfs_strdup(i32* %66, i32 %68)
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load i32*, i32** %4, align 8
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @zfs_asprintf(i32* %72, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %75, i32 %78)
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 8
  store i32 0, i32* %2, align 4
  br label %82

82:                                               ; preds = %65, %50, %37
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @snprintf(i32, i32, i8*, ...) #2

declare dso_local i32 @getpid(...) #2

declare dso_local i32 @strlcpy(i32, i32, i32) #2

declare dso_local i64 @zfs_ioctl(i32*, i32, %struct.TYPE_7__*) #2

declare dso_local i8* @dgettext(i32, i8*) #2

declare dso_local i32 @zfs_error(i32*, i32, i32) #2

declare dso_local i32 @zfs_standard_error(i32*, i32, i32) #2

declare dso_local i32 @zfs_strdup(i32*, i32) #2

declare dso_local i32 @zfs_asprintf(i32*, i8*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
