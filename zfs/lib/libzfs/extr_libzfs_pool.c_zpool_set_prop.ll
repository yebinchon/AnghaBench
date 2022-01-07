; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_pool.c_zpool_set_prop.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_pool.c_zpool_set_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i8*, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@__const.zpool_set_prop.zc = private unnamed_addr constant %struct.TYPE_12__ { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i32 0 }, align 8
@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"cannot set property for '%s'\00", align 1
@NV_UNIQUE_NAME = common dso_local global i32 0, align 4
@ZPOOL_PROP_VERSION = common dso_local global i32 0, align 4
@ZFS_IOC_POOL_SET_PROPS = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zpool_set_prop(%struct.TYPE_11__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_12__, align 8
  %9 = alloca i32, align 4
  %10 = alloca [1024 x i8], align 16
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_13__, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %15 = bitcast %struct.TYPE_12__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 bitcast (%struct.TYPE_12__* @__const.zpool_set_prop.zc to i8*), i64 16, i1 false)
  store i32 -1, i32* %9, align 4
  store i32* null, i32** %11, align 8
  %16 = bitcast %struct.TYPE_13__* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %16, i8 0, i64 4, i1 false)
  %17 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %18 = load i32, i32* @TEXT_DOMAIN, align 4
  %19 = call i8* @dgettext(i32 %18, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @snprintf(i8* %17, i32 1024, i8* %19, i32 %22)
  %24 = load i32, i32* @NV_UNIQUE_NAME, align 4
  %25 = call i64 @nvlist_alloc(i32** %11, i32 %24, i32 0)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %3
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @no_memory(i32 %30)
  store i32 %31, i32* %4, align 4
  br label %107

32:                                               ; preds = %3
  %33 = load i32*, i32** %11, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = call i64 @nvlist_add_string(i32* %33, i8* %34, i8* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %32
  %39 = load i32*, i32** %11, align 8
  %40 = call i32 @nvlist_free(i32* %39)
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @no_memory(i32 %43)
  store i32 %44, i32* %4, align 4
  br label %107

45:                                               ; preds = %32
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %47 = load i32, i32* @ZPOOL_PROP_VERSION, align 4
  %48 = call i32 @zpool_get_prop_int(%struct.TYPE_11__* %46, i32 %47, i32* null)
  store i32 %48, i32* %13, align 4
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %11, align 8
  %56 = load i32, i32* %13, align 4
  %57 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32* @zpool_valid_proplist(i32 %51, i32 %54, i32* %55, i32 %56, i32 %59, i8* %57)
  store i32* %60, i32** %12, align 8
  %61 = icmp eq i32* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %45
  %63 = load i32*, i32** %11, align 8
  %64 = call i32 @nvlist_free(i32* %63)
  store i32 -1, i32* %4, align 4
  br label %107

65:                                               ; preds = %45
  %66 = load i32*, i32** %11, align 8
  %67 = call i32 @nvlist_free(i32* %66)
  %68 = load i32*, i32** %12, align 8
  store i32* %68, i32** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @strlcpy(i32 %70, i32 %73, i32 4)
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32*, i32** %11, align 8
  %79 = call i64 @zcmd_write_src_nvlist(i32 %77, %struct.TYPE_12__* %8, i32* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %65
  %82 = load i32*, i32** %11, align 8
  %83 = call i32 @nvlist_free(i32* %82)
  store i32 -1, i32* %4, align 4
  br label %107

84:                                               ; preds = %65
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @ZFS_IOC_POOL_SET_PROPS, align 4
  %89 = call i32 @zfs_ioctl(i32 %87, i32 %88, %struct.TYPE_12__* %8)
  store i32 %89, i32* %9, align 4
  %90 = call i32 @zcmd_free_nvlists(%struct.TYPE_12__* %8)
  %91 = load i32*, i32** %11, align 8
  %92 = call i32 @nvlist_free(i32* %91)
  %93 = load i32, i32* %9, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %84
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @errno, align 4
  %100 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %101 = call i32 @zpool_standard_error(i32 %98, i32 %99, i8* %100)
  br label %105

102:                                              ; preds = %84
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %104 = call i32 @zpool_props_refresh(%struct.TYPE_11__* %103)
  br label %105

105:                                              ; preds = %102, %95
  %106 = load i32, i32* %9, align 4
  store i32 %106, i32* %4, align 4
  br label %107

107:                                              ; preds = %105, %81, %62, %38, %27
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i8* @dgettext(i32, i8*) #2

declare dso_local i64 @nvlist_alloc(i32**, i32, i32) #2

declare dso_local i32 @no_memory(i32) #2

declare dso_local i64 @nvlist_add_string(i32*, i8*, i8*) #2

declare dso_local i32 @nvlist_free(i32*) #2

declare dso_local i32 @zpool_get_prop_int(%struct.TYPE_11__*, i32, i32*) #2

declare dso_local i32* @zpool_valid_proplist(i32, i32, i32*, i32, i32, i8*) #2

declare dso_local i32 @strlcpy(i32, i32, i32) #2

declare dso_local i64 @zcmd_write_src_nvlist(i32, %struct.TYPE_12__*, i32*) #2

declare dso_local i32 @zfs_ioctl(i32, i32, %struct.TYPE_12__*) #2

declare dso_local i32 @zcmd_free_nvlists(%struct.TYPE_12__*) #2

declare dso_local i32 @zpool_standard_error(i32, i32, i8*) #2

declare dso_local i32 @zpool_props_refresh(%struct.TYPE_11__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
