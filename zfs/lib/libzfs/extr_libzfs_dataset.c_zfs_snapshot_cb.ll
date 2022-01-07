; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_dataset.c_zfs_snapshot_cb.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_dataset.c_zfs_snapshot_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32 }

@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4
@ZFS_PROP_INCONSISTENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s@%s\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @zfs_snapshot_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_snapshot_cb(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %12, %struct.TYPE_3__** %6, align 8
  %13 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %7, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* @ZFS_PROP_INCONSISTENT, align 4
  %19 = call i64 @zfs_prop_get_int(i32* %17, i32 %18)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %41

21:                                               ; preds = %2
  %22 = trunc i64 %14 to i32
  %23 = load i32*, i32** %4, align 8
  %24 = call i8* @zfs_get_name(i32* %23)
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @snprintf(i8* %16, i32 %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %24, i8* %27)
  %29 = sext i32 %28 to i64
  %30 = icmp uge i64 %29, %14
  br i1 %30, label %31, label %33

31:                                               ; preds = %21
  %32 = load i32, i32* @EINVAL, align 4
  store i32 %32, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %45

33:                                               ; preds = %21
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @fnvlist_add_boolean(i32 %36, i8* %16)
  %38 = load i32*, i32** %4, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %40 = call i32 @zfs_iter_filesystems(i32* %38, i32 (i32*, i8*)* @zfs_snapshot_cb, %struct.TYPE_3__* %39)
  store i32 %40, i32* %9, align 4
  br label %41

41:                                               ; preds = %33, %2
  %42 = load i32*, i32** %4, align 8
  %43 = call i32 @zfs_close(i32* %42)
  %44 = load i32, i32* %9, align 4
  store i32 %44, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %45

45:                                               ; preds = %41, %31
  %46 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %46)
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @zfs_prop_get_int(i32*, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i8* @zfs_get_name(i32*) #2

declare dso_local i32 @fnvlist_add_boolean(i32, i8*) #2

declare dso_local i32 @zfs_iter_filesystems(i32*, i32 (i32*, i8*)*, %struct.TYPE_3__*) #2

declare dso_local i32 @zfs_close(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
