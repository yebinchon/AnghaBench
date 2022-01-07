; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_vdev_disk.c_bio_set_dev.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_vdev_disk.c_bio_set_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { %struct.block_device* }
%struct.block_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*, %struct.block_device*)* @bio_set_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bio_set_dev(%struct.bio* %0, %struct.block_device* %1) #0 {
  %3 = alloca %struct.bio*, align 8
  %4 = alloca %struct.block_device*, align 8
  store %struct.bio* %0, %struct.bio** %3, align 8
  store %struct.block_device* %1, %struct.block_device** %4, align 8
  %5 = load %struct.block_device*, %struct.block_device** %4, align 8
  %6 = load %struct.bio*, %struct.bio** %3, align 8
  %7 = getelementptr inbounds %struct.bio, %struct.bio* %6, i32 0, i32 0
  store %struct.block_device* %5, %struct.block_device** %7, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
