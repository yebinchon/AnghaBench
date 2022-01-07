; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_sendrecv.c_recv_open_grand_origin.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_sendrecv.c_recv_open_grand_origin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }

@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4
@ZFS_PROP_ORIGIN = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@ZFS_TYPE_FILESYSTEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_9__* (%struct.TYPE_9__*)* @recv_open_grand_origin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_9__* @recv_open_grand_origin(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %7 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %3, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %4, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %12 = call %struct.TYPE_9__* @zfs_handle_dup(%struct.TYPE_9__* %11)
  store %struct.TYPE_9__* %12, %struct.TYPE_9__** %6, align 8
  br label %13

13:                                               ; preds = %24, %1
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %15 = icmp ne %struct.TYPE_9__* %14, null
  br i1 %15, label %16, label %32

16:                                               ; preds = %13
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %18 = load i32, i32* @ZFS_PROP_ORIGIN, align 4
  %19 = trunc i64 %8 to i32
  %20 = load i32, i32* @B_FALSE, align 4
  %21 = call i64 @zfs_prop_get(%struct.TYPE_9__* %17, i32 %18, i8* %10, i32 %19, i32* %5, i32* null, i32 0, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %32

24:                                               ; preds = %16
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %26 = call i32 @zfs_close(%struct.TYPE_9__* %25)
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @ZFS_TYPE_FILESYSTEM, align 4
  %31 = call %struct.TYPE_9__* @zfs_open(i32 %29, i8* %10, i32 %30)
  store %struct.TYPE_9__* %31, %struct.TYPE_9__** %6, align 8
  br label %13

32:                                               ; preds = %23, %13
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %34 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %34)
  ret %struct.TYPE_9__* %33
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_9__* @zfs_handle_dup(%struct.TYPE_9__*) #2

declare dso_local i64 @zfs_prop_get(%struct.TYPE_9__*, i32, i8*, i32, i32*, i32*, i32, i32) #2

declare dso_local i32 @zfs_close(%struct.TYPE_9__*) #2

declare dso_local %struct.TYPE_9__* @zfs_open(i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
