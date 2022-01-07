; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_pool.c_get_history.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_pool.c_get_history.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32* }
%struct.TYPE_6__ = type { i8*, i8*, i8*, i8*, i32 }

@.str = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@ZFS_IOC_POOL_GET_HISTORY = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EZFS_PERM = common dso_local global i32 0, align 4
@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"cannot show history for pool '%s'\00", align 1
@EZFS_NOHISTORY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"cannot get history for pool '%s'\00", align 1
@EZFS_BADVERSION = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [56 x i8] c"cannot get history for pool '%s', pool must be upgraded\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"cannot get history for '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i8*, i8**, i8**)* @get_history to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_history(%struct.TYPE_5__* %0, i8* %1, i8** %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.TYPE_6__, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i8** %3, i8*** %9, align 8
  %12 = bitcast %struct.TYPE_6__* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 40, i1 false)
  %13 = bitcast i8* %12 to %struct.TYPE_6__*
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8** %14, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %11, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @strlcpy(i32 %19, i32 %22, i32 4)
  %24 = load i8*, i8** %7, align 8
  %25 = ptrtoint i8* %24 to i64
  %26 = inttoptr i64 %25 to i8*
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 3
  store i8* %26, i8** %27, align 8
  %28 = load i8**, i8*** %9, align 8
  %29 = load i8*, i8** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 2
  store i8* %29, i8** %30, align 8
  %31 = load i8**, i8*** %8, align 8
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  store i8* %32, i8** %33, align 8
  %34 = load i32*, i32** %11, align 8
  %35 = load i32, i32* @ZFS_IOC_POOL_GET_HISTORY, align 4
  %36 = call i64 @zfs_ioctl(i32* %34, i32 %35, %struct.TYPE_6__* %10)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %76

38:                                               ; preds = %4
  %39 = load i32, i32* @errno, align 4
  switch i32 %39, label %67 [
    i32 128, label %40
    i32 130, label %49
    i32 129, label %58
  ]

40:                                               ; preds = %38
  %41 = load i32*, i32** %11, align 8
  %42 = load i32, i32* @EZFS_PERM, align 4
  %43 = load i32, i32* @TEXT_DOMAIN, align 4
  %44 = call i32 @dgettext(i32 %43, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @zfs_error_fmt(i32* %41, i32 %42, i32 %44, i32 %47)
  store i32 %48, i32* %5, align 4
  br label %83

49:                                               ; preds = %38
  %50 = load i32*, i32** %11, align 8
  %51 = load i32, i32* @EZFS_NOHISTORY, align 4
  %52 = load i32, i32* @TEXT_DOMAIN, align 4
  %53 = call i32 @dgettext(i32 %52, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @zfs_error_fmt(i32* %50, i32 %51, i32 %53, i32 %56)
  store i32 %57, i32* %5, align 4
  br label %83

58:                                               ; preds = %38
  %59 = load i32*, i32** %11, align 8
  %60 = load i32, i32* @EZFS_BADVERSION, align 4
  %61 = load i32, i32* @TEXT_DOMAIN, align 4
  %62 = call i32 @dgettext(i32 %61, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0))
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @zfs_error_fmt(i32* %59, i32 %60, i32 %62, i32 %65)
  store i32 %66, i32* %5, align 4
  br label %83

67:                                               ; preds = %38
  %68 = load i32*, i32** %11, align 8
  %69 = load i32, i32* @errno, align 4
  %70 = load i32, i32* @TEXT_DOMAIN, align 4
  %71 = call i32 @dgettext(i32 %70, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @zpool_standard_error_fmt(i32* %68, i32 %69, i32 %71, i32 %74)
  store i32 %75, i32* %5, align 4
  br label %83

76:                                               ; preds = %4
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 2
  %78 = load i8*, i8** %77, align 8
  %79 = load i8**, i8*** %9, align 8
  store i8* %78, i8** %79, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %81 = load i8*, i8** %80, align 8
  %82 = load i8**, i8*** %8, align 8
  store i8* %81, i8** %82, align 8
  store i32 0, i32* %5, align 4
  br label %83

83:                                               ; preds = %76, %67, %58, %49, %40
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #2

declare dso_local i64 @zfs_ioctl(i32*, i32, %struct.TYPE_6__*) #2

declare dso_local i32 @zfs_error_fmt(i32*, i32, i32, i32) #2

declare dso_local i32 @dgettext(i32, i8*) #2

declare dso_local i32 @zpool_standard_error_fmt(i32*, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
