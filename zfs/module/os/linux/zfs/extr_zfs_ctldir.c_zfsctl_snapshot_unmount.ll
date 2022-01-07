; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_ctldir.c_zfsctl_snapshot_unmount.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_ctldir.c_zfsctl_snapshot_unmount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* }

@.str = private unnamed_addr constant [13 x i8] c"/usr/bin/env\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"umount\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-t\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"zfs\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"-n\00", align 1
@zfs_snapshot_lock = common dso_local global i32 0, align 4
@RW_READER = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@MNT_FORCE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"-fn\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"unmount; path=%s\0A\00", align 1
@UMH_WAIT_PROC = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfsctl_snapshot_unmount(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [7 x i8*], align 16
  %7 = alloca [1 x i8*], align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = bitcast [7 x i8*]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %10, i8 0, i64 56, i1 false)
  %11 = bitcast i8* %10 to [7 x i8*]*
  %12 = getelementptr inbounds [7 x i8*], [7 x i8*]* %11, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8** %12, align 16
  %13 = getelementptr inbounds [7 x i8*], [7 x i8*]* %11, i32 0, i32 1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8** %13, align 8
  %14 = getelementptr inbounds [7 x i8*], [7 x i8*]* %11, i32 0, i32 2
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8** %14, align 16
  %15 = getelementptr inbounds [7 x i8*], [7 x i8*]* %11, i32 0, i32 3
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8** %15, align 8
  %16 = getelementptr inbounds [7 x i8*], [7 x i8*]* %11, i32 0, i32 4
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i8** %16, align 16
  %17 = bitcast [1 x i8*]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %17, i8 0, i64 8, i1 false)
  %18 = load i32, i32* @RW_READER, align 4
  %19 = call i32 @rw_enter(i32* @zfs_snapshot_lock, i32 %18)
  %20 = load i8*, i8** %4, align 8
  %21 = call %struct.TYPE_4__* @zfsctl_snapshot_find_by_name(i8* %20)
  store %struct.TYPE_4__* %21, %struct.TYPE_4__** %8, align 8
  %22 = icmp eq %struct.TYPE_4__* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = call i32 @rw_exit(i32* @zfs_snapshot_lock)
  %25 = load i32, i32* @ENOENT, align 4
  %26 = call i32 @SET_ERROR(i32 %25)
  store i32 %26, i32* %3, align 4
  br label %59

27:                                               ; preds = %2
  %28 = call i32 @rw_exit(i32* @zfs_snapshot_lock)
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @MNT_FORCE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = getelementptr inbounds [7 x i8*], [7 x i8*]* %6, i64 0, i64 4
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8** %34, align 16
  br label %35

35:                                               ; preds = %33, %27
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = getelementptr inbounds [7 x i8*], [7 x i8*]* %6, i64 0, i64 5
  store i8* %38, i8** %39, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @dprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i8* %42)
  %44 = getelementptr inbounds [7 x i8*], [7 x i8*]* %6, i64 0, i64 0
  %45 = load i8*, i8** %44, align 16
  %46 = getelementptr inbounds [7 x i8*], [7 x i8*]* %6, i64 0, i64 0
  %47 = getelementptr inbounds [1 x i8*], [1 x i8*]* %7, i64 0, i64 0
  %48 = load i32, i32* @UMH_WAIT_PROC, align 4
  %49 = call i32 @call_usermodehelper(i8* %45, i8** %46, i8** %47, i32 %48)
  store i32 %49, i32* %9, align 4
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %51 = call i32 @zfsctl_snapshot_rele(%struct.TYPE_4__* %50)
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %35
  %55 = load i32, i32* @EBUSY, align 4
  %56 = call i32 @SET_ERROR(i32 %55)
  store i32 %56, i32* %9, align 4
  br label %57

57:                                               ; preds = %54, %35
  %58 = load i32, i32* %9, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %57, %23
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @rw_enter(i32*, i32) #2

declare dso_local %struct.TYPE_4__* @zfsctl_snapshot_find_by_name(i8*) #2

declare dso_local i32 @rw_exit(i32*) #2

declare dso_local i32 @SET_ERROR(i32) #2

declare dso_local i32 @dprintf(i8*, i8*) #2

declare dso_local i32 @call_usermodehelper(i8*, i8**, i8**, i32) #2

declare dso_local i32 @zfsctl_snapshot_rele(%struct.TYPE_4__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
