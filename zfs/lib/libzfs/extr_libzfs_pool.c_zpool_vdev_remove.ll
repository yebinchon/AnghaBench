; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_pool.c_zpool_vdev_remove.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_pool.c_zpool_vdev_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8*, i32, i32 }
%struct.TYPE_8__ = type { i32, i32* }

@.str = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@__const.zpool_vdev_remove.zc = private unnamed_addr constant %struct.TYPE_9__ { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i32 0, i32 0 }, align 8
@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"cannot remove %s\00", align 1
@EZFS_NODEVICE = common dso_local global i32 0, align 4
@ZPOOL_PROP_VERSION = common dso_local global i32 0, align 4
@SPA_VERSION_HOLES = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [45 x i8] c"pool must be upgraded to support log removal\00", align 1
@EZFS_BADVERSION = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [78 x i8] c"root pool can not have removed devices, because GRUB does not understand them\00", align 1
@ZPOOL_CONFIG_GUID = common dso_local global i32 0, align 4
@ZFS_IOC_VDEV_REMOVE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [85 x i8] c"invalid config; all top-level vdevs must have the same sector size and not be raidz.\00", align 1
@EZFS_INVALCONFIG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [41 x i8] c"Mount encrypted datasets to replay logs.\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"Pool busy; removal may already be in progress\00", align 1
@EZFS_BUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zpool_vdev_remove(%struct.TYPE_8__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_9__, align 8
  %7 = alloca [1024 x i8], align 16
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i8* %1, i8** %5, align 8
  %14 = bitcast %struct.TYPE_9__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 bitcast (%struct.TYPE_9__* @__const.zpool_vdev_remove.zc to i8*), i64 16, i1 false)
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %12, align 8
  %18 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %19 = load i32, i32* @TEXT_DOMAIN, align 4
  %20 = call i8* @dgettext(i32 %19, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @snprintf(i8* %18, i32 1024, i8* %20, i8* %21)
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @strlcpy(i32 %24, i32 %27, i32 4)
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = call i32* @zpool_find_vdev(%struct.TYPE_8__* %29, i8* %30, i64* %9, i64* %10, i64* %11)
  store i32* %31, i32** %8, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %2
  %34 = load i32*, i32** %12, align 8
  %35 = load i32, i32* @EZFS_NODEVICE, align 4
  %36 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %37 = call i32 @zfs_error(i32* %34, i32 %35, i8* %36)
  store i32 %37, i32* %3, align 4
  br label %141

38:                                               ; preds = %2
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %40 = load i32, i32* @ZPOOL_PROP_VERSION, align 4
  %41 = call i64 @zpool_get_prop_int(%struct.TYPE_8__* %39, i32 %40, i32* null)
  store i64 %41, i64* %13, align 8
  %42 = load i64, i64* %11, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %38
  %45 = load i64, i64* %13, align 8
  %46 = load i64, i64* @SPA_VERSION_HOLES, align 8
  %47 = icmp slt i64 %45, %46
  br i1 %47, label %48, label %57

48:                                               ; preds = %44
  %49 = load i32*, i32** %12, align 8
  %50 = load i32, i32* @TEXT_DOMAIN, align 4
  %51 = call i8* @dgettext(i32 %50, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %52 = call i32 @zfs_error_aux(i32* %49, i8* %51)
  %53 = load i32*, i32** %12, align 8
  %54 = load i32, i32* @EZFS_BADVERSION, align 4
  %55 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %56 = call i32 @zfs_error(i32* %53, i32 %54, i8* %55)
  store i32 %56, i32* %3, align 4
  br label %141

57:                                               ; preds = %44, %38
  %58 = load i64, i64* %11, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %78, label %60

60:                                               ; preds = %57
  %61 = load i64, i64* %9, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %78, label %63

63:                                               ; preds = %60
  %64 = load i64, i64* %10, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %78, label %66

66:                                               ; preds = %63
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %68 = call i64 @zpool_is_bootable(%struct.TYPE_8__* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %66
  %71 = load i32*, i32** %12, align 8
  %72 = load i32, i32* @TEXT_DOMAIN, align 4
  %73 = call i8* @dgettext(i32 %72, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.3, i64 0, i64 0))
  %74 = call i32 @zfs_error_aux(i32* %71, i8* %73)
  %75 = load i32*, i32** %12, align 8
  %76 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %77 = call i32 @zfs_error(i32* %75, i32 128, i8* %76)
  store i32 %77, i32* %3, align 4
  br label %141

78:                                               ; preds = %66, %63, %60, %57
  %79 = load i32*, i32** %8, align 8
  %80 = load i32, i32* @ZPOOL_CONFIG_GUID, align 4
  %81 = call i32 @fnvlist_lookup_uint64(i32* %79, i32 %80)
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  store i32 %81, i32* %82, align 8
  %83 = load i32*, i32** %12, align 8
  %84 = load i32, i32* @ZFS_IOC_VDEV_REMOVE, align 4
  %85 = call i64 @zfs_ioctl(i32* %83, i32 %84, %struct.TYPE_9__* %6)
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %78
  store i32 0, i32* %3, align 4
  br label %141

88:                                               ; preds = %78
  %89 = load i32, i32* @errno, align 4
  switch i32 %89, label %135 [
    i32 128, label %90
    i32 129, label %99
    i32 130, label %117
  ]

90:                                               ; preds = %88
  %91 = load i32*, i32** %12, align 8
  %92 = load i32, i32* @TEXT_DOMAIN, align 4
  %93 = call i8* @dgettext(i32 %92, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.4, i64 0, i64 0))
  %94 = call i32 @zfs_error_aux(i32* %91, i8* %93)
  %95 = load i32*, i32** %12, align 8
  %96 = load i32, i32* @EZFS_INVALCONFIG, align 4
  %97 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %98 = call i32 @zfs_error(i32* %95, i32 %96, i8* %97)
  br label %140

99:                                               ; preds = %88
  %100 = load i64, i64* %11, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %99
  %103 = load i32*, i32** %12, align 8
  %104 = load i32, i32* @TEXT_DOMAIN, align 4
  %105 = call i8* @dgettext(i32 %104, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  %106 = call i32 @zfs_error_aux(i32* %103, i8* %105)
  br label %112

107:                                              ; preds = %99
  %108 = load i32*, i32** %12, align 8
  %109 = load i32, i32* @TEXT_DOMAIN, align 4
  %110 = call i8* @dgettext(i32 %109, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0))
  %111 = call i32 @zfs_error_aux(i32* %108, i8* %110)
  br label %112

112:                                              ; preds = %107, %102
  %113 = load i32*, i32** %12, align 8
  %114 = load i32, i32* @EZFS_BUSY, align 4
  %115 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %116 = call i32 @zfs_error(i32* %113, i32 %114, i8* %115)
  br label %140

117:                                              ; preds = %88
  %118 = load i64, i64* %11, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %129

120:                                              ; preds = %117
  %121 = load i32*, i32** %12, align 8
  %122 = load i32, i32* @TEXT_DOMAIN, align 4
  %123 = call i8* @dgettext(i32 %122, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  %124 = call i32 @zfs_error_aux(i32* %121, i8* %123)
  %125 = load i32*, i32** %12, align 8
  %126 = load i32, i32* @EZFS_BUSY, align 4
  %127 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %128 = call i32 @zfs_error(i32* %125, i32 %126, i8* %127)
  br label %134

129:                                              ; preds = %117
  %130 = load i32*, i32** %12, align 8
  %131 = load i32, i32* @errno, align 4
  %132 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %133 = call i32 @zpool_standard_error(i32* %130, i32 %131, i8* %132)
  br label %134

134:                                              ; preds = %129, %120
  br label %140

135:                                              ; preds = %88
  %136 = load i32*, i32** %12, align 8
  %137 = load i32, i32* @errno, align 4
  %138 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %139 = call i32 @zpool_standard_error(i32* %136, i32 %137, i8* %138)
  br label %140

140:                                              ; preds = %135, %134, %112, %90
  store i32 -1, i32* %3, align 4
  br label %141

141:                                              ; preds = %140, %87, %70, %48, %33
  %142 = load i32, i32* %3, align 4
  ret i32 %142
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i8* @dgettext(i32, i8*) #2

declare dso_local i32 @strlcpy(i32, i32, i32) #2

declare dso_local i32* @zpool_find_vdev(%struct.TYPE_8__*, i8*, i64*, i64*, i64*) #2

declare dso_local i32 @zfs_error(i32*, i32, i8*) #2

declare dso_local i64 @zpool_get_prop_int(%struct.TYPE_8__*, i32, i32*) #2

declare dso_local i32 @zfs_error_aux(i32*, i8*) #2

declare dso_local i64 @zpool_is_bootable(%struct.TYPE_8__*) #2

declare dso_local i32 @fnvlist_lookup_uint64(i32*, i32) #2

declare dso_local i64 @zfs_ioctl(i32*, i32, %struct.TYPE_9__*) #2

declare dso_local i32 @zpool_standard_error(i32*, i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
