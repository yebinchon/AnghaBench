; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_dataset.c_zfs_hold_one.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_dataset.c_zfs_hold_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8* }
%struct.holdarg = type { i8*, i64, i32, i32 }

@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s@%s\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i8*)* @zfs_hold_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_hold_one(%struct.TYPE_6__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.holdarg*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.holdarg*
  store %struct.holdarg* %12, %struct.holdarg** %6, align 8
  %13 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %7, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %17 = trunc i64 %14 to i32
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = load %struct.holdarg*, %struct.holdarg** %6, align 8
  %22 = getelementptr inbounds %struct.holdarg, %struct.holdarg* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @snprintf(i8* %16, i32 %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %20, i8* %23)
  %25 = sext i32 %24 to i64
  %26 = icmp uge i64 %25, %14
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i32, i32* @EINVAL, align 4
  store i32 %28, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %53

29:                                               ; preds = %2
  %30 = call i64 @lzc_exists(i8* %16)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %29
  %33 = load %struct.holdarg*, %struct.holdarg** %6, align 8
  %34 = getelementptr inbounds %struct.holdarg, %struct.holdarg* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.holdarg*, %struct.holdarg** %6, align 8
  %37 = getelementptr inbounds %struct.holdarg, %struct.holdarg* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @fnvlist_add_string(i32 %35, i8* %16, i32 %38)
  br label %40

40:                                               ; preds = %32, %29
  %41 = load %struct.holdarg*, %struct.holdarg** %6, align 8
  %42 = getelementptr inbounds %struct.holdarg, %struct.holdarg* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %47 = load %struct.holdarg*, %struct.holdarg** %6, align 8
  %48 = call i32 @zfs_iter_filesystems(%struct.TYPE_6__* %46, i32 (%struct.TYPE_6__*, i8*)* @zfs_hold_one, %struct.holdarg* %47)
  store i32 %48, i32* %9, align 4
  br label %49

49:                                               ; preds = %45, %40
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %51 = call i32 @zfs_close(%struct.TYPE_6__* %50)
  %52 = load i32, i32* %9, align 4
  store i32 %52, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %53

53:                                               ; preds = %49, %27
  %54 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %54)
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i64 @lzc_exists(i8*) #2

declare dso_local i32 @fnvlist_add_string(i32, i8*, i32) #2

declare dso_local i32 @zfs_iter_filesystems(%struct.TYPE_6__*, i32 (%struct.TYPE_6__*, i8*)*, %struct.holdarg*) #2

declare dso_local i32 @zfs_close(%struct.TYPE_6__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
