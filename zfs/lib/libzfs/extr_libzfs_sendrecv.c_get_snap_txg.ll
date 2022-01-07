; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_sendrecv.c_get_snap_txg.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_sendrecv.c_get_snap_txg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s@%s\00", align 1
@ZFS_TYPE_SNAPSHOT = common dso_local global i32 0, align 4
@ZFS_PROP_CREATETXG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*)* @get_snap_txg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_snap_txg(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %17 = load i8*, i8** %6, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %34, label %19

19:                                               ; preds = %3
  %20 = load i8*, i8** %6, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %19
  %26 = load i8*, i8** %7, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %25
  %29 = load i8*, i8** %7, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28, %25, %19, %3
  %35 = load i32, i32* %10, align 4
  store i32 %35, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %60

36:                                               ; preds = %28
  %37 = trunc i64 %14 to i32
  %38 = load i8*, i8** %6, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = call i32 @snprintf(i8* %16, i32 %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %38, i8* %39)
  %41 = load i32*, i32** %5, align 8
  %42 = load i32, i32* @ZFS_TYPE_SNAPSHOT, align 4
  %43 = call i64 @zfs_dataset_exists(i32* %41, i8* %16, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %36
  %46 = load i32*, i32** %5, align 8
  %47 = load i32, i32* @ZFS_TYPE_SNAPSHOT, align 4
  %48 = call i32* @zfs_open(i32* %46, i8* %16, i32 %47)
  store i32* %48, i32** %12, align 8
  %49 = load i32*, i32** %12, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %57

51:                                               ; preds = %45
  %52 = load i32*, i32** %12, align 8
  %53 = load i32, i32* @ZFS_PROP_CREATETXG, align 4
  %54 = call i32 @zfs_prop_get_int(i32* %52, i32 %53)
  store i32 %54, i32* %10, align 4
  %55 = load i32*, i32** %12, align 8
  %56 = call i32 @zfs_close(i32* %55)
  br label %57

57:                                               ; preds = %51, %45
  br label %58

58:                                               ; preds = %57, %36
  %59 = load i32, i32* %10, align 4
  store i32 %59, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %60

60:                                               ; preds = %58, %34
  %61 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %61)
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i64 @zfs_dataset_exists(i32*, i8*, i32) #2

declare dso_local i32* @zfs_open(i32*, i8*, i32) #2

declare dso_local i32 @zfs_prop_get_int(i32*, i32) #2

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
