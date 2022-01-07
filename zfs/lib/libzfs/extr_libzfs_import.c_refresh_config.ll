; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_import.c_refresh_config.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_import.c_refresh_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i32 }

@.str = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@__const.refresh_config.zc = private unnamed_addr constant %struct.TYPE_8__ { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i32 0 }, align 8
@CONFIG_BUF_MINSIZE = common dso_local global i32 0, align 4
@ZFS_IOC_POOL_TRYIMPORT = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*)* @refresh_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @refresh_config(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_8__, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = bitcast %struct.TYPE_8__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 bitcast (%struct.TYPE_8__* @__const.refresh_config.zc to i8*), i64 16, i1 false)
  %11 = load i32*, i32** %4, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call i64 @zcmd_write_conf_nvlist(i32* %11, %struct.TYPE_8__* %7, i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %61

16:                                               ; preds = %2
  %17 = load i32, i32* @CONFIG_BUF_MINSIZE, align 4
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = mul nsw i32 %19, 4
  %21 = call i32 @MAX(i32 %17, i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call i64 @zcmd_alloc_dst_nvlist(i32* %22, %struct.TYPE_8__* %7, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %16
  %27 = call i32 @zcmd_free_nvlists(%struct.TYPE_8__* %7)
  store i32* null, i32** %3, align 8
  br label %61

28:                                               ; preds = %16
  br label %29

29:                                               ; preds = %46, %28
  %30 = load i32*, i32** %4, align 8
  %31 = load i32, i32* @ZFS_IOC_POOL_TRYIMPORT, align 4
  %32 = call i32 @zfs_ioctl(i32* %30, i32 %31, %struct.TYPE_8__* %7)
  store i32 %32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load i64, i64* @errno, align 8
  %36 = load i64, i64* @ENOMEM, align 8
  %37 = icmp eq i64 %35, %36
  br label %38

38:                                               ; preds = %34, %29
  %39 = phi i1 [ false, %29 ], [ %37, %34 ]
  br i1 %39, label %40, label %47

40:                                               ; preds = %38
  %41 = load i32*, i32** %4, align 8
  %42 = call i64 @zcmd_expand_dst_nvlist(i32* %41, %struct.TYPE_8__* %7)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = call i32 @zcmd_free_nvlists(%struct.TYPE_8__* %7)
  store i32* null, i32** %3, align 8
  br label %61

46:                                               ; preds = %40
  br label %29

47:                                               ; preds = %38
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = call i32 @zcmd_free_nvlists(%struct.TYPE_8__* %7)
  store i32* null, i32** %3, align 8
  br label %61

52:                                               ; preds = %47
  %53 = load i32*, i32** %4, align 8
  %54 = call i64 @zcmd_read_dst_nvlist(i32* %53, %struct.TYPE_8__* %7, i32** %6)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = call i32 @zcmd_free_nvlists(%struct.TYPE_8__* %7)
  store i32* null, i32** %3, align 8
  br label %61

58:                                               ; preds = %52
  %59 = call i32 @zcmd_free_nvlists(%struct.TYPE_8__* %7)
  %60 = load i32*, i32** %6, align 8
  store i32* %60, i32** %3, align 8
  br label %61

61:                                               ; preds = %58, %56, %50, %44, %26, %15
  %62 = load i32*, i32** %3, align 8
  ret i32* %62
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @zcmd_write_conf_nvlist(i32*, %struct.TYPE_8__*, i32*) #2

declare dso_local i32 @MAX(i32, i32) #2

declare dso_local i64 @zcmd_alloc_dst_nvlist(i32*, %struct.TYPE_8__*, i32) #2

declare dso_local i32 @zcmd_free_nvlists(%struct.TYPE_8__*) #2

declare dso_local i32 @zfs_ioctl(i32*, i32, %struct.TYPE_8__*) #2

declare dso_local i64 @zcmd_expand_dst_nvlist(i32*, %struct.TYPE_8__*) #2

declare dso_local i64 @zcmd_read_dst_nvlist(i32*, %struct.TYPE_8__*, i32**) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
