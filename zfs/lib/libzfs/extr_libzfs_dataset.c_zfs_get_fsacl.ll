; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_dataset.c_zfs_get_fsacl.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_dataset.c_zfs_get_fsacl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i32, i64, i32 }
%struct.TYPE_5__ = type { i64, i32, i32* }

@.str = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@__const.zfs_get_fsacl.zc = private unnamed_addr constant %struct.TYPE_6__ { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i32 0, i64 0, i32 0 }, align 8
@ZFS_TYPE_VOLUME = common dso_local global i64 0, align 8
@ZFS_TYPE_FILESYSTEM = common dso_local global i64 0, align 8
@EZFS_NOMEM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ZFS_IOC_GET_FSACL = common dso_local global i32 0, align 4
@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"cannot get permissions on '%s'\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"pool must be upgraded\00", align 1
@EZFS_BADVERSION = common dso_local global i32 0, align 4
@EZFS_BADTYPE = common dso_local global i32 0, align 4
@EZFS_NOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_get_fsacl(%struct.TYPE_5__* %0, i32** %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32**, align 8
  %5 = alloca %struct.TYPE_6__, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [1024 x i8], align 16
  %11 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32** %1, i32*** %4, align 8
  %12 = bitcast %struct.TYPE_6__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 bitcast (%struct.TYPE_6__* @__const.zfs_get_fsacl.zc to i8*), i64 32, i1 false)
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %6, align 8
  store i32 2048, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @ZFS_TYPE_VOLUME, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %27, label %21

21:                                               ; preds = %2
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @ZFS_TYPE_FILESYSTEM, align 8
  %26 = icmp eq i64 %24, %25
  br label %27

27:                                               ; preds = %21, %2
  %28 = phi i1 [ true, %2 ], [ %26, %21 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  br label %31

31:                                               ; preds = %66, %27
  %32 = load i32, i32* %7, align 4
  %33 = call i8* @malloc(i32 %32)
  store i8* %33, i8** %8, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load i32*, i32** %6, align 8
  %38 = load i32, i32* @EZFS_NOMEM, align 4
  %39 = load i32, i32* @errno, align 4
  %40 = call i8* @strerror(i32 %39)
  %41 = call i32 @zfs_error(i32* %37, i32 %38, i8* %40)
  store i32 %41, i32* %9, align 4
  br label %119

42:                                               ; preds = %31
  %43 = load i32, i32* %7, align 4
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 1
  store i32 %43, i32* %44, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = ptrtoint i8* %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 2
  store i64 %46, i64* %47, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @strlcpy(i32 %49, i32 %52, i32 4)
  %54 = load i32*, i32** %6, align 8
  %55 = load i32, i32* @ZFS_IOC_GET_FSACL, align 4
  %56 = call i64 @zfs_ioctl(i32* %54, i32 %55, %struct.TYPE_6__* %5)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %96

58:                                               ; preds = %42
  %59 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %60 = load i32, i32* @TEXT_DOMAIN, align 4
  %61 = call i8* @dgettext(i32 %60, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @snprintf(i8* %59, i32 1024, i8* %61, i32 %63)
  %65 = load i32, i32* @errno, align 4
  switch i32 %65, label %90 [
    i32 129, label %66
    i32 128, label %71
    i32 131, label %80
    i32 130, label %85
  ]

66:                                               ; preds = %58
  %67 = load i8*, i8** %8, align 8
  %68 = call i32 @free(i8* %67)
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  store i32 %70, i32* %7, align 4
  br label %31

71:                                               ; preds = %58
  %72 = load i32*, i32** %6, align 8
  %73 = load i32, i32* @TEXT_DOMAIN, align 4
  %74 = call i8* @dgettext(i32 %73, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %75 = call i32 @zfs_error_aux(i32* %72, i8* %74)
  %76 = load i32*, i32** %6, align 8
  %77 = load i32, i32* @EZFS_BADVERSION, align 4
  %78 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %79 = call i32 @zfs_error(i32* %76, i32 %77, i8* %78)
  store i32 %79, i32* %9, align 4
  br label %95

80:                                               ; preds = %58
  %81 = load i32*, i32** %6, align 8
  %82 = load i32, i32* @EZFS_BADTYPE, align 4
  %83 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %84 = call i32 @zfs_error(i32* %81, i32 %82, i8* %83)
  store i32 %84, i32* %9, align 4
  br label %95

85:                                               ; preds = %58
  %86 = load i32*, i32** %6, align 8
  %87 = load i32, i32* @EZFS_NOENT, align 4
  %88 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %89 = call i32 @zfs_error(i32* %86, i32 %87, i8* %88)
  store i32 %89, i32* %9, align 4
  br label %95

90:                                               ; preds = %58
  %91 = load i32*, i32** %6, align 8
  %92 = load i32, i32* @errno, align 4
  %93 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %94 = call i32 @zfs_standard_error_fmt(i32* %91, i32 %92, i8* %93)
  store i32 %94, i32* %9, align 4
  br label %95

95:                                               ; preds = %90, %85, %80, %71
  br label %116

96:                                               ; preds = %42
  %97 = load i8*, i8** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load i32**, i32*** %4, align 8
  %101 = call i32 @nvlist_unpack(i8* %97, i32 %99, i32** %100, i32 0)
  store i32 %101, i32* %11, align 4
  %102 = load i32, i32* %11, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %115

104:                                              ; preds = %96
  %105 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %106 = load i32, i32* @TEXT_DOMAIN, align 4
  %107 = call i8* @dgettext(i32 %106, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @snprintf(i8* %105, i32 1024, i8* %107, i32 %109)
  %111 = load i32*, i32** %6, align 8
  %112 = load i32, i32* %11, align 4
  %113 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %114 = call i32 @zfs_standard_error_fmt(i32* %111, i32 %112, i8* %113)
  store i32 %114, i32* %9, align 4
  br label %115

115:                                              ; preds = %104, %96
  br label %116

116:                                              ; preds = %115, %95
  %117 = load i8*, i8** %8, align 8
  %118 = call i32 @free(i8* %117)
  br label %119

119:                                              ; preds = %116, %36
  %120 = load i32, i32* %9, align 4
  ret i32 %120
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local i8* @malloc(i32) #2

declare dso_local i32 @zfs_error(i32*, i32, i8*) #2

declare dso_local i8* @strerror(i32) #2

declare dso_local i32 @strlcpy(i32, i32, i32) #2

declare dso_local i64 @zfs_ioctl(i32*, i32, %struct.TYPE_6__*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i8* @dgettext(i32, i8*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @zfs_error_aux(i32*, i8*) #2

declare dso_local i32 @zfs_standard_error_fmt(i32*, i32, i8*) #2

declare dso_local i32 @nvlist_unpack(i8*, i32, i32**, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
