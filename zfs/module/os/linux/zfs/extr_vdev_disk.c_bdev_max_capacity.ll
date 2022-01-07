; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_vdev_disk.c_bdev_max_capacity.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_vdev_disk.c_bdev_max_capacity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { i32, %struct.block_device*, i32* }

@EFI_MIN_RESV_SIZE = common dso_local global i32 0, align 4
@NEW_START_BLOCK = common dso_local global i32 0, align 4
@PARTITION_END_ALIGNMENT = common dso_local global i32 0, align 4
@SECTOR_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.block_device*, i64)* @bdev_max_capacity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @bdev_max_capacity(%struct.block_device* %0, i64 %1) #0 {
  %3 = alloca %struct.block_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.block_device* %0, %struct.block_device** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %40

9:                                                ; preds = %2
  %10 = load %struct.block_device*, %struct.block_device** %3, align 8
  %11 = getelementptr inbounds %struct.block_device, %struct.block_device* %10, i32 0, i32 2
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %40

14:                                               ; preds = %9
  %15 = load %struct.block_device*, %struct.block_device** %3, align 8
  %16 = load %struct.block_device*, %struct.block_device** %3, align 8
  %17 = getelementptr inbounds %struct.block_device, %struct.block_device* %16, i32 0, i32 1
  %18 = load %struct.block_device*, %struct.block_device** %17, align 8
  %19 = icmp ne %struct.block_device* %15, %18
  br i1 %19, label %20, label %40

20:                                               ; preds = %14
  %21 = load %struct.block_device*, %struct.block_device** %3, align 8
  %22 = getelementptr inbounds %struct.block_device, %struct.block_device* %21, i32 0, i32 1
  %23 = load %struct.block_device*, %struct.block_device** %22, align 8
  %24 = getelementptr inbounds %struct.block_device, %struct.block_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @i_size_read(i32 %25)
  %27 = load i32, i32* @EFI_MIN_RESV_SIZE, align 4
  %28 = load i32, i32* @NEW_START_BLOCK, align 4
  %29 = add nsw i32 %27, %28
  %30 = load i32, i32* @PARTITION_END_ALIGNMENT, align 4
  %31 = add nsw i32 %29, %30
  %32 = load i32, i32* @SECTOR_BITS, align 4
  %33 = shl i32 %31, %32
  %34 = sext i32 %33 to i64
  %35 = sub nsw i64 %26, %34
  store i64 %35, i64* %6, align 8
  %36 = load i64, i64* %6, align 8
  %37 = load %struct.block_device*, %struct.block_device** %3, align 8
  %38 = call i64 @bdev_capacity(%struct.block_device* %37)
  %39 = call i64 @MAX(i64 %36, i64 %38)
  store i64 %39, i64* %5, align 8
  br label %43

40:                                               ; preds = %14, %9, %2
  %41 = load %struct.block_device*, %struct.block_device** %3, align 8
  %42 = call i64 @bdev_capacity(%struct.block_device* %41)
  store i64 %42, i64* %5, align 8
  br label %43

43:                                               ; preds = %40, %20
  %44 = load i64, i64* %5, align 8
  ret i64 %44
}

declare dso_local i64 @i_size_read(i32) #1

declare dso_local i64 @MAX(i64, i64) #1

declare dso_local i64 @bdev_capacity(%struct.block_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
