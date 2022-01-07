; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_vdev_disk.c_vdev_disk_io_flush.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_vdev_disk.c_vdev_disk_io_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { i32 }
%struct.request_queue = type { i32 }
%struct.bio = type { i32*, i32 }

@ENXIO = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@vdev_disk_io_flush_completion = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.block_device*, i32*)* @vdev_disk_io_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdev_disk_io_flush(%struct.block_device* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.block_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.request_queue*, align 8
  %7 = alloca %struct.bio*, align 8
  store %struct.block_device* %0, %struct.block_device** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.block_device*, %struct.block_device** %4, align 8
  %9 = call %struct.request_queue* @bdev_get_queue(%struct.block_device* %8)
  store %struct.request_queue* %9, %struct.request_queue** %6, align 8
  %10 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %11 = icmp ne %struct.request_queue* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENXIO, align 4
  %14 = call i32 @SET_ERROR(i32 %13)
  store i32 %14, i32* %3, align 4
  br label %42

15:                                               ; preds = %2
  %16 = load i32, i32* @GFP_NOIO, align 4
  %17 = call %struct.bio* @bio_alloc(i32 %16, i32 0)
  store %struct.bio* %17, %struct.bio** %7, align 8
  %18 = load %struct.bio*, %struct.bio** %7, align 8
  %19 = icmp eq %struct.bio* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %15
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = call i32 @SET_ERROR(i32 %24)
  store i32 %25, i32* %3, align 4
  br label %42

26:                                               ; preds = %15
  %27 = load i32, i32* @vdev_disk_io_flush_completion, align 4
  %28 = load %struct.bio*, %struct.bio** %7, align 8
  %29 = getelementptr inbounds %struct.bio, %struct.bio* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = load %struct.bio*, %struct.bio** %7, align 8
  %32 = getelementptr inbounds %struct.bio, %struct.bio* %31, i32 0, i32 0
  store i32* %30, i32** %32, align 8
  %33 = load %struct.bio*, %struct.bio** %7, align 8
  %34 = load %struct.block_device*, %struct.block_device** %4, align 8
  %35 = call i32 @bio_set_dev(%struct.bio* %33, %struct.block_device* %34)
  %36 = load %struct.bio*, %struct.bio** %7, align 8
  %37 = call i32 @bio_set_flush(%struct.bio* %36)
  %38 = load %struct.bio*, %struct.bio** %7, align 8
  %39 = call i32 @vdev_submit_bio(%struct.bio* %38)
  %40 = load %struct.block_device*, %struct.block_device** %4, align 8
  %41 = call i32 @invalidate_bdev(%struct.block_device* %40)
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %26, %23, %12
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local %struct.request_queue* @bdev_get_queue(%struct.block_device*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local %struct.bio* @bio_alloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @bio_set_dev(%struct.bio*, %struct.block_device*) #1

declare dso_local i32 @bio_set_flush(%struct.bio*) #1

declare dso_local i32 @vdev_submit_bio(%struct.bio*) #1

declare dso_local i32 @invalidate_bdev(%struct.block_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
