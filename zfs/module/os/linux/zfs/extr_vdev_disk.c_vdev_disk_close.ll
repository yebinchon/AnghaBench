; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_vdev_disk.c_vdev_disk_close.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_vdev_disk.c_vdev_disk_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__*, i32, i64 }
%struct.TYPE_6__ = type { i32, i32* }

@FMODE_EXCL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @vdev_disk_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vdev_disk_close(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  store %struct.TYPE_6__* %6, %struct.TYPE_6__** %3, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %13 = icmp eq %struct.TYPE_6__* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %11, %1
  br label %40

15:                                               ; preds = %11
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %32

20:                                               ; preds = %15
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @spa_mode(i32 %26)
  %28 = call i32 @vdev_bdev_mode(i32 %27)
  %29 = load i32, i32* @FMODE_EXCL, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @blkdev_put(i32* %23, i32 %30)
  br label %32

32:                                               ; preds = %20, %15
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = call i32 @rw_destroy(i32* %34)
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %37 = call i32 @kmem_free(%struct.TYPE_6__* %36, i32 16)
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %39, align 8
  br label %40

40:                                               ; preds = %32, %14
  ret void
}

declare dso_local i32 @blkdev_put(i32*, i32) #1

declare dso_local i32 @vdev_bdev_mode(i32) #1

declare dso_local i32 @spa_mode(i32) #1

declare dso_local i32 @rw_destroy(i32*) #1

declare dso_local i32 @kmem_free(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
