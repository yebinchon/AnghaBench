; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_ctldir.c_zfsctl_snapshot_mount.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_ctldir.c_zfsctl_snapshot_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { %struct.TYPE_10__*, %struct.dentry* }
%struct.TYPE_10__ = type { i32 }
%struct.dentry = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_12__*, %struct.TYPE_11__*, %struct.TYPE_9__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_9__ = type { i8* }

@.str = private unnamed_addr constant [13 x i8] c"/usr/bin/env\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"mount\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-t\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"zfs\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"-n\00", align 1
@EISDIR = common dso_local global i32 0, align 4
@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@MAXPATHLEN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"%s/.zfs/snapshot/%s\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"mount; name=%s path=%s\0A\00", align 1
@UMH_WAIT_PROC = common dso_local global i32 0, align 4
@MOUNT_BUSY = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [32 x i8] c"Unable to automount %s error=%d\00", align 1
@MNT_SHRINKABLE = common dso_local global i32 0, align 4
@zfs_snapshot_lock = common dso_local global i32 0, align 4
@RW_WRITER = common dso_local global i32 0, align 4
@zfs_expire_snapshot = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfsctl_snapshot_mount(%struct.path* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.path*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca [8 x i8*], align 16
  %14 = alloca [1 x i8*], align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.path, align 8
  store %struct.path* %0, %struct.path** %4, align 8
  store i32 %1, i32* %5, align 4
  %17 = load %struct.path*, %struct.path** %4, align 8
  %18 = getelementptr inbounds %struct.path, %struct.path* %17, i32 0, i32 1
  %19 = load %struct.dentry*, %struct.dentry** %18, align 8
  store %struct.dentry* %19, %struct.dentry** %6, align 8
  %20 = load %struct.dentry*, %struct.dentry** %6, align 8
  %21 = getelementptr inbounds %struct.dentry, %struct.dentry* %20, i32 0, i32 0
  %22 = load %struct.inode*, %struct.inode** %21, align 8
  store %struct.inode* %22, %struct.inode** %7, align 8
  %23 = bitcast [8 x i8*]* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %23, i8 0, i64 64, i1 false)
  %24 = bitcast i8* %23 to [8 x i8*]*
  %25 = getelementptr inbounds [8 x i8*], [8 x i8*]* %24, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8** %25, align 16
  %26 = getelementptr inbounds [8 x i8*], [8 x i8*]* %24, i32 0, i32 1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8** %26, align 8
  %27 = getelementptr inbounds [8 x i8*], [8 x i8*]* %24, i32 0, i32 2
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8** %27, align 16
  %28 = getelementptr inbounds [8 x i8*], [8 x i8*]* %24, i32 0, i32 3
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8** %28, align 8
  %29 = getelementptr inbounds [8 x i8*], [8 x i8*]* %24, i32 0, i32 4
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i8** %29, align 16
  %30 = bitcast [1 x i8*]* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %30, i8 0, i64 8, i1 false)
  %31 = load %struct.inode*, %struct.inode** %7, align 8
  %32 = icmp eq %struct.inode* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %2
  %34 = load i32, i32* @EISDIR, align 4
  %35 = call i32 @SET_ERROR(i32 %34)
  store i32 %35, i32* %3, align 4
  br label %168

36:                                               ; preds = %2
  %37 = load %struct.inode*, %struct.inode** %7, align 8
  %38 = call %struct.TYPE_11__* @ITOZSB(%struct.inode* %37)
  store %struct.TYPE_11__* %38, %struct.TYPE_11__** %8, align 8
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %40 = call i32 @ZFS_ENTER(%struct.TYPE_11__* %39)
  %41 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %42 = load i32, i32* @KM_SLEEP, align 4
  %43 = call i8* @kmem_zalloc(i32 %41, i32 %42)
  store i8* %43, i8** %11, align 8
  %44 = load i32, i32* @MAXPATHLEN, align 4
  %45 = load i32, i32* @KM_SLEEP, align 4
  %46 = call i8* @kmem_zalloc(i32 %44, i32 %45)
  store i8* %46, i8** %12, align 8
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %48 = load %struct.dentry*, %struct.dentry** %6, align 8
  %49 = call i8* @dname(%struct.dentry* %48)
  %50 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %51 = load i8*, i8** %11, align 8
  %52 = call i32 @zfsctl_snapshot_name(%struct.TYPE_11__* %47, i8* %49, i32 %50, i8* %51)
  store i32 %52, i32* %15, align 4
  %53 = load i32, i32* %15, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %36
  br label %158

56:                                               ; preds = %36
  %57 = load i8*, i8** %12, align 8
  %58 = load i32, i32* @MAXPATHLEN, align 4
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 2
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %71

65:                                               ; preds = %56
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  br label %72

71:                                               ; preds = %56
  br label %72

72:                                               ; preds = %71, %65
  %73 = phi i8* [ %70, %65 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), %71 ]
  %74 = load %struct.dentry*, %struct.dentry** %6, align 8
  %75 = call i8* @dname(%struct.dentry* %74)
  %76 = call i32 @snprintf(i8* %57, i32 %58, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8* %73, i8* %75)
  %77 = load i8*, i8** %11, align 8
  %78 = call i64 @zfsctl_snapshot_ismounted(i8* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %72
  store i32 0, i32* %15, align 4
  br label %158

81:                                               ; preds = %72
  %82 = load i8*, i8** %11, align 8
  %83 = load i8*, i8** %12, align 8
  %84 = call i32 @dprintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i8* %82, i8* %83)
  %85 = load i8*, i8** %11, align 8
  %86 = getelementptr inbounds [8 x i8*], [8 x i8*]* %13, i64 0, i64 5
  store i8* %85, i8** %86, align 8
  %87 = load i8*, i8** %12, align 8
  %88 = getelementptr inbounds [8 x i8*], [8 x i8*]* %13, i64 0, i64 6
  store i8* %87, i8** %88, align 16
  %89 = getelementptr inbounds [8 x i8*], [8 x i8*]* %13, i64 0, i64 0
  %90 = load i8*, i8** %89, align 16
  %91 = getelementptr inbounds [8 x i8*], [8 x i8*]* %13, i64 0, i64 0
  %92 = getelementptr inbounds [1 x i8*], [1 x i8*]* %14, i64 0, i64 0
  %93 = load i32, i32* @UMH_WAIT_PROC, align 4
  %94 = call i32 @call_usermodehelper(i8* %90, i8** %91, i8** %92, i32 %93)
  store i32 %94, i32* %15, align 4
  %95 = load i32, i32* %15, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %111

97:                                               ; preds = %81
  %98 = load i32, i32* %15, align 4
  %99 = load i32, i32* @MOUNT_BUSY, align 4
  %100 = shl i32 %99, 8
  %101 = and i32 %98, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %109, label %103

103:                                              ; preds = %97
  %104 = load i8*, i8** %12, align 8
  %105 = load i32, i32* %15, align 4
  %106 = call i32 @zfs_dbgmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i8* %104, i32 %105)
  %107 = load i32, i32* @EISDIR, align 4
  %108 = call i32 @SET_ERROR(i32 %107)
  store i32 %108, i32* %15, align 4
  br label %110

109:                                              ; preds = %97
  store i32 0, i32* %15, align 4
  br label %110

110:                                              ; preds = %109, %103
  br label %158

111:                                              ; preds = %81
  %112 = load %struct.path*, %struct.path** %4, align 8
  %113 = bitcast %struct.path* %16 to i8*
  %114 = bitcast %struct.path* %112 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %113, i8* align 8 %114, i64 16, i1 false)
  %115 = call i32 @path_get(%struct.path* %16)
  %116 = call i64 @follow_down_one(%struct.path* %16)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %156

118:                                              ; preds = %111
  %119 = getelementptr inbounds %struct.path, %struct.path* %16, i32 0, i32 1
  %120 = load %struct.dentry*, %struct.dentry** %119, align 8
  %121 = getelementptr inbounds %struct.dentry, %struct.dentry* %120, i32 0, i32 0
  %122 = load %struct.inode*, %struct.inode** %121, align 8
  %123 = call %struct.TYPE_11__* @ITOZSB(%struct.inode* %122)
  store %struct.TYPE_11__* %123, %struct.TYPE_11__** %9, align 8
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 1
  store %struct.TYPE_11__* %124, %struct.TYPE_11__** %126, align 8
  %127 = getelementptr inbounds %struct.path, %struct.path* %16, i32 0, i32 1
  %128 = load %struct.dentry*, %struct.dentry** %127, align 8
  store %struct.dentry* %128, %struct.dentry** %6, align 8
  %129 = load i32, i32* @MNT_SHRINKABLE, align 4
  %130 = getelementptr inbounds %struct.path, %struct.path* %16, i32 0, i32 0
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = or i32 %133, %129
  store i32 %134, i32* %132, align 4
  %135 = load i32, i32* @RW_WRITER, align 4
  %136 = call i32 @rw_enter(i32* @zfs_snapshot_lock, i32 %135)
  %137 = load i8*, i8** %11, align 8
  %138 = load i8*, i8** %12, align 8
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %145, align 8
  %147 = call i32 @dmu_objset_id(%struct.TYPE_12__* %146)
  %148 = load %struct.dentry*, %struct.dentry** %6, align 8
  %149 = call i32* @zfsctl_snapshot_alloc(i8* %137, i8* %138, i32 %143, i32 %147, %struct.dentry* %148)
  store i32* %149, i32** %10, align 8
  %150 = load i32*, i32** %10, align 8
  %151 = call i32 @zfsctl_snapshot_add(i32* %150)
  %152 = load i32*, i32** %10, align 8
  %153 = load i32, i32* @zfs_expire_snapshot, align 4
  %154 = call i32 @zfsctl_snapshot_unmount_delay_impl(i32* %152, i32 %153)
  %155 = call i32 @rw_exit(i32* @zfs_snapshot_lock)
  br label %156

156:                                              ; preds = %118, %111
  %157 = call i32 @path_put(%struct.path* %16)
  br label %158

158:                                              ; preds = %156, %110, %80, %55
  %159 = load i8*, i8** %11, align 8
  %160 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %161 = call i32 @kmem_free(i8* %159, i32 %160)
  %162 = load i8*, i8** %12, align 8
  %163 = load i32, i32* @MAXPATHLEN, align 4
  %164 = call i32 @kmem_free(i8* %162, i32 %163)
  %165 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %166 = call i32 @ZFS_EXIT(%struct.TYPE_11__* %165)
  %167 = load i32, i32* %15, align 4
  store i32 %167, i32* %3, align 4
  br label %168

168:                                              ; preds = %158, %33
  %169 = load i32, i32* %3, align 4
  ret i32 %169
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @SET_ERROR(i32) #2

declare dso_local %struct.TYPE_11__* @ITOZSB(%struct.inode*) #2

declare dso_local i32 @ZFS_ENTER(%struct.TYPE_11__*) #2

declare dso_local i8* @kmem_zalloc(i32, i32) #2

declare dso_local i32 @zfsctl_snapshot_name(%struct.TYPE_11__*, i8*, i32, i8*) #2

declare dso_local i8* @dname(%struct.dentry*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i64 @zfsctl_snapshot_ismounted(i8*) #2

declare dso_local i32 @dprintf(i8*, i8*, i8*) #2

declare dso_local i32 @call_usermodehelper(i8*, i8**, i8**, i32) #2

declare dso_local i32 @zfs_dbgmsg(i8*, i8*, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @path_get(%struct.path*) #2

declare dso_local i64 @follow_down_one(%struct.path*) #2

declare dso_local i32 @rw_enter(i32*, i32) #2

declare dso_local i32* @zfsctl_snapshot_alloc(i8*, i8*, i32, i32, %struct.dentry*) #2

declare dso_local i32 @dmu_objset_id(%struct.TYPE_12__*) #2

declare dso_local i32 @zfsctl_snapshot_add(i32*) #2

declare dso_local i32 @zfsctl_snapshot_unmount_delay_impl(i32*, i32) #2

declare dso_local i32 @rw_exit(i32*) #2

declare dso_local i32 @path_put(%struct.path*) #2

declare dso_local i32 @kmem_free(i8*, i32) #2

declare dso_local i32 @ZFS_EXIT(%struct.TYPE_11__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
