; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_dataset.c_zfs_smb_acl_mgmt.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_dataset.c_zfs_smb_acl_mgmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i32, i64, i32, i32 }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@__const.zfs_smb_acl_mgmt.zc = private unnamed_addr constant %struct.TYPE_8__ { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i32 0, i64 0, i32 0, i32 0 }, align 8
@NV_UNIQUE_NAME = common dso_local global i32 0, align 4
@ZFS_SMB_ACL_SRC = common dso_local global i32 0, align 4
@ZFS_SMB_ACL_TARGET = common dso_local global i32 0, align 4
@ZFS_IOC_SMB_ACL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i8*, i8*, i32, i8*, i8*)* @zfs_smb_acl_mgmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_smb_acl_mgmt(%struct.TYPE_9__* %0, i8* %1, i8* %2, i32 %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_8__, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  %17 = bitcast %struct.TYPE_8__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 bitcast (%struct.TYPE_8__* @__const.zfs_smb_acl_mgmt.zc to i8*), i64 32, i1 false)
  store i32* null, i32** %15, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = load i8*, i8** %9, align 8
  %21 = call i32 @strlcpy(i32 %19, i8* %20, i32 4)
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = call i32 @strlcpy(i32 %23, i8* %24, i32 4)
  %26 = load i32, i32* %11, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 2
  store i64 %27, i64* %28, align 8
  %29 = load i32, i32* %11, align 4
  %30 = icmp eq i32 %29, 128
  br i1 %30, label %31, label %39

31:                                               ; preds = %6
  %32 = load i32, i32* @NV_UNIQUE_NAME, align 4
  %33 = call i64 @nvlist_alloc(i32** %15, i32 %32, i32 0)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %37 = call i32 @no_memory(%struct.TYPE_9__* %36)
  store i32 0, i32* %7, align 4
  br label %84

38:                                               ; preds = %31
  br label %39

39:                                               ; preds = %38, %6
  %40 = load i32, i32* %11, align 4
  switch i32 %40, label %74 [
    i32 131, label %41
    i32 129, label %41
    i32 128, label %46
    i32 130, label %73
  ]

41:                                               ; preds = %39, %39
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i8*, i8** %12, align 8
  %45 = call i32 @strlcpy(i32 %43, i8* %44, i32 4)
  br label %75

46:                                               ; preds = %39
  %47 = load i32*, i32** %15, align 8
  %48 = load i32, i32* @ZFS_SMB_ACL_SRC, align 4
  %49 = load i8*, i8** %12, align 8
  %50 = call i32 @nvlist_add_string(i32* %47, i32 %48, i8* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %54 = call i32 @no_memory(%struct.TYPE_9__* %53)
  store i32 -1, i32* %7, align 4
  br label %84

55:                                               ; preds = %46
  %56 = load i32*, i32** %15, align 8
  %57 = load i32, i32* @ZFS_SMB_ACL_TARGET, align 4
  %58 = load i8*, i8** %13, align 8
  %59 = call i32 @nvlist_add_string(i32* %56, i32 %57, i8* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %63 = call i32 @no_memory(%struct.TYPE_9__* %62)
  store i32 -1, i32* %7, align 4
  br label %84

64:                                               ; preds = %55
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %66 = load i32*, i32** %15, align 8
  %67 = call i32 @zcmd_write_src_nvlist(%struct.TYPE_9__* %65, %struct.TYPE_8__* %14, i32* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load i32*, i32** %15, align 8
  %71 = call i32 @nvlist_free(i32* %70)
  store i32 -1, i32* %7, align 4
  br label %84

72:                                               ; preds = %64
  br label %75

73:                                               ; preds = %39
  br label %75

74:                                               ; preds = %39
  store i32 -1, i32* %7, align 4
  br label %84

75:                                               ; preds = %73, %72, %41
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @ZFS_IOC_SMB_ACL, align 4
  %80 = call i32 @ioctl(i32 %78, i32 %79, %struct.TYPE_8__* %14)
  store i32 %80, i32* %16, align 4
  %81 = load i32*, i32** %15, align 8
  %82 = call i32 @nvlist_free(i32* %81)
  %83 = load i32, i32* %16, align 4
  store i32 %83, i32* %7, align 4
  br label %84

84:                                               ; preds = %75, %74, %69, %61, %52, %35
  %85 = load i32, i32* %7, align 4
  ret i32 %85
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #2

declare dso_local i64 @nvlist_alloc(i32**, i32, i32) #2

declare dso_local i32 @no_memory(%struct.TYPE_9__*) #2

declare dso_local i32 @nvlist_add_string(i32*, i32, i8*) #2

declare dso_local i32 @zcmd_write_src_nvlist(%struct.TYPE_9__*, %struct.TYPE_8__*, i32*) #2

declare dso_local i32 @nvlist_free(i32*) #2

declare dso_local i32 @ioctl(i32, i32, %struct.TYPE_8__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
