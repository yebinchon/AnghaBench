; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_pool.c_zpool_vdev_online.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_pool.c_zpool_vdev_online.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i32, i32, i64, i32 }
%struct.TYPE_7__ = type { i32, i32* }

@.str = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@__const.zpool_vdev_online.zc = private unnamed_addr constant %struct.TYPE_8__ { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i64 0, i32 0 }, align 8
@ZFS_ONLINE_EXPAND = common dso_local global i32 0, align 4
@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"cannot expand %s\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"cannot online %s\00", align 1
@EZFS_NODEVICE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_GUID = common dso_local global i32 0, align 4
@EZFS_ISSPARE = common dso_local global i32 0, align 4
@ZPOOL_PROP_AUTOEXPAND = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_PATH = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_WHOLE_DISK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"cannot expand cache devices\00", align 1
@EZFS_VDEVNOTSUP = common dso_local global i32 0, align 4
@MAXPATHLEN = common dso_local global i32 0, align 4
@VDEV_STATE_ONLINE = common dso_local global i32 0, align 4
@ZFS_IOC_VDEV_SET_STATE = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [59 x i8] c"was split from this pool into a new one.  Use '%s' instead\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"zpool detach\00", align 1
@EZFS_POSTSPLIT_ONLINE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zpool_vdev_online(%struct.TYPE_7__* %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_8__, align 8
  %11 = alloca [1024 x i8], align 16
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %24 = bitcast %struct.TYPE_8__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* align 8 bitcast (%struct.TYPE_8__* @__const.zpool_vdev_online.zc to i8*), i64 32, i1 false)
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %17, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @ZFS_ONLINE_EXPAND, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %4
  %33 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %34 = load i32, i32* @TEXT_DOMAIN, align 4
  %35 = call i8* @dgettext(i32 %34, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i8*, i8** %7, align 8
  %37 = call i32 @snprintf(i8* %33, i32 1024, i8* %35, i8* %36)
  br label %44

38:                                               ; preds = %4
  %39 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %40 = load i32, i32* @TEXT_DOMAIN, align 4
  %41 = call i8* @dgettext(i32 %40, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %42 = load i8*, i8** %7, align 8
  %43 = call i32 @snprintf(i8* %39, i32 1024, i8* %41, i8* %42)
  br label %44

44:                                               ; preds = %38, %32
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @strlcpy(i32 %46, i32 %49, i32 4)
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = call i32* @zpool_find_vdev(%struct.TYPE_7__* %51, i8* %52, i64* %14, i64* %15, i64* %16)
  store i32* %53, i32** %13, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %55, label %60

55:                                               ; preds = %44
  %56 = load i32*, i32** %17, align 8
  %57 = load i32, i32* @EZFS_NODEVICE, align 4
  %58 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %59 = call i32 @zfs_error(i32* %56, i32 %57, i8* %58)
  store i32 %59, i32* %5, align 4
  br label %177

60:                                               ; preds = %44
  %61 = load i32*, i32** %13, align 8
  %62 = load i32, i32* @ZPOOL_CONFIG_GUID, align 4
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 3
  %64 = call i64 @nvlist_lookup_uint64(i32* %61, i32 %62, i64* %63)
  %65 = icmp eq i64 %64, 0
  %66 = zext i1 %65 to i32
  %67 = call i32 @verify(i32 %66)
  %68 = load i64, i64* %14, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %60
  %71 = load i32*, i32** %17, align 8
  %72 = load i32, i32* @EZFS_ISSPARE, align 4
  %73 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %74 = call i32 @zfs_error(i32* %71, i32 %72, i8* %73)
  store i32 %74, i32* %5, align 4
  br label %177

75:                                               ; preds = %60
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* @ZFS_ONLINE_EXPAND, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %85, label %80

80:                                               ; preds = %75
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %82 = load i32, i32* @ZPOOL_PROP_AUTOEXPAND, align 4
  %83 = call i64 @zpool_get_prop_int(%struct.TYPE_7__* %81, i32 %82, i32* null)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %146

85:                                               ; preds = %80, %75
  %86 = load i32*, i32** %13, align 8
  %87 = load i32, i32* @ZPOOL_CONFIG_PATH, align 4
  %88 = call i64 @nvlist_lookup_string(i32* %86, i32 %87, i8** %12)
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %146

90:                                               ; preds = %85
  store i64 0, i64* %19, align 8
  %91 = load i32*, i32** %13, align 8
  %92 = load i32, i32* @ZPOOL_CONFIG_WHOLE_DISK, align 4
  %93 = call i64 @nvlist_lookup_uint64(i32* %91, i32 %92, i64* %19)
  %94 = load i64, i64* %15, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %105

96:                                               ; preds = %90
  %97 = load i32*, i32** %17, align 8
  %98 = load i32, i32* @TEXT_DOMAIN, align 4
  %99 = call i8* @dgettext(i32 %98, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %100 = call i32 (i32*, i8*, ...) @zfs_error_aux(i32* %97, i8* %99)
  %101 = load i32*, i32** %17, align 8
  %102 = load i32, i32* @EZFS_VDEVNOTSUP, align 4
  %103 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %104 = call i32 @zfs_error(i32* %101, i32 %102, i8* %103)
  store i32 %104, i32* %5, align 4
  br label %177

105:                                              ; preds = %90
  %106 = load i64, i64* %19, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %145

108:                                              ; preds = %105
  %109 = load i8*, i8** %7, align 8
  store i8* %109, i8** %20, align 8
  %110 = load i32, i32* @MAXPATHLEN, align 4
  %111 = zext i32 %110 to i64
  %112 = call i8* @llvm.stacksave()
  store i8* %112, i8** %21, align 8
  %113 = alloca i8, i64 %111, align 16
  store i64 %111, i64* %22, align 8
  %114 = load i8*, i8** %7, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 0
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp ne i32 %117, 47
  br i1 %118, label %119, label %131

119:                                              ; preds = %108
  %120 = load i8*, i8** %7, align 8
  %121 = trunc i64 %111 to i32
  %122 = call i32 @zfs_resolve_shortname(i8* %120, i8* %113, i32 %121)
  store i32 %122, i32* %18, align 4
  %123 = load i32, i32* %18, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %119
  %126 = load i32*, i32** %17, align 8
  %127 = load i32, i32* @EZFS_NODEVICE, align 4
  %128 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %129 = call i32 @zfs_error(i32* %126, i32 %127, i8* %128)
  store i32 %129, i32* %5, align 4
  store i32 1, i32* %23, align 4
  br label %141

130:                                              ; preds = %119
  store i8* %113, i8** %20, align 8
  br label %131

131:                                              ; preds = %130, %108
  %132 = load i32*, i32** %17, align 8
  %133 = load i8*, i8** %20, align 8
  %134 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %135 = call i32 @zpool_relabel_disk(i32* %132, i8* %133, i8* %134)
  store i32 %135, i32* %18, align 4
  %136 = load i32, i32* %18, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %131
  %139 = load i32, i32* %18, align 4
  store i32 %139, i32* %5, align 4
  store i32 1, i32* %23, align 4
  br label %141

140:                                              ; preds = %131
  store i32 0, i32* %23, align 4
  br label %141

141:                                              ; preds = %140, %138, %125
  %142 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %142)
  %143 = load i32, i32* %23, align 4
  switch i32 %143, label %179 [
    i32 0, label %144
    i32 1, label %177
  ]

144:                                              ; preds = %141
  br label %145

145:                                              ; preds = %144, %105
  br label %146

146:                                              ; preds = %145, %85, %80
  %147 = load i32, i32* @VDEV_STATE_ONLINE, align 4
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 2
  store i32 %147, i32* %148, align 4
  %149 = load i32, i32* %8, align 4
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  store i32 %149, i32* %150, align 8
  %151 = load i32*, i32** %17, align 8
  %152 = load i32, i32* @ZFS_IOC_VDEV_SET_STATE, align 4
  %153 = call i64 @zfs_ioctl(i32* %151, i32 %152, %struct.TYPE_8__* %10)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %173

155:                                              ; preds = %146
  %156 = load i64, i64* @errno, align 8
  %157 = load i64, i64* @EINVAL, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %168

159:                                              ; preds = %155
  %160 = load i32*, i32** %17, align 8
  %161 = load i32, i32* @TEXT_DOMAIN, align 4
  %162 = call i8* @dgettext(i32 %161, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0))
  %163 = call i32 (i32*, i8*, ...) @zfs_error_aux(i32* %160, i8* %162, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %164 = load i32*, i32** %17, align 8
  %165 = load i32, i32* @EZFS_POSTSPLIT_ONLINE, align 4
  %166 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %167 = call i32 @zfs_error(i32* %164, i32 %165, i8* %166)
  store i32 %167, i32* %5, align 4
  br label %177

168:                                              ; preds = %155
  %169 = load i32*, i32** %17, align 8
  %170 = load i64, i64* @errno, align 8
  %171 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %172 = call i32 @zpool_standard_error(i32* %169, i64 %170, i8* %171)
  store i32 %172, i32* %5, align 4
  br label %177

173:                                              ; preds = %146
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 2
  %175 = load i32, i32* %174, align 4
  %176 = load i32*, i32** %9, align 8
  store i32 %175, i32* %176, align 4
  store i32 0, i32* %5, align 4
  br label %177

177:                                              ; preds = %173, %168, %159, %141, %96, %70, %55
  %178 = load i32, i32* %5, align 4
  ret i32 %178

179:                                              ; preds = %141
  unreachable
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i8* @dgettext(i32, i8*) #2

declare dso_local i32 @strlcpy(i32, i32, i32) #2

declare dso_local i32* @zpool_find_vdev(%struct.TYPE_7__*, i8*, i64*, i64*, i64*) #2

declare dso_local i32 @zfs_error(i32*, i32, i8*) #2

declare dso_local i32 @verify(i32) #2

declare dso_local i64 @nvlist_lookup_uint64(i32*, i32, i64*) #2

declare dso_local i64 @zpool_get_prop_int(%struct.TYPE_7__*, i32, i32*) #2

declare dso_local i64 @nvlist_lookup_string(i32*, i32, i8**) #2

declare dso_local i32 @zfs_error_aux(i32*, i8*, ...) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare dso_local i32 @zfs_resolve_shortname(i8*, i8*, i32) #2

declare dso_local i32 @zpool_relabel_disk(i32*, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

declare dso_local i64 @zfs_ioctl(i32*, i32, %struct.TYPE_8__*) #2

declare dso_local i32 @zpool_standard_error(i32*, i64, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
