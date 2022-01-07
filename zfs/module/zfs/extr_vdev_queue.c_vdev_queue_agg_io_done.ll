; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_vdev_queue.c_vdev_queue_agg_io_done.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_vdev_queue.c_vdev_queue_agg_io_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32, i64 }

@ZIO_TYPE_READ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @vdev_queue_agg_io_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vdev_queue_agg_io_done(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @ZIO_TYPE_READ, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %34

10:                                               ; preds = %1
  store i32* null, i32** %4, align 8
  br label %11

11:                                               ; preds = %15, %10
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %13 = call %struct.TYPE_5__* @zio_walk_parents(%struct.TYPE_5__* %12, i32** %4)
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %3, align 8
  %14 = icmp ne %struct.TYPE_5__* %13, null
  br i1 %14, label %15, label %33

15:                                               ; preds = %11
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = sub nsw i64 %24, %27
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @abd_copy_off(i32 %18, i32 %21, i32 0, i64 %28, i32 %31)
  br label %11

33:                                               ; preds = %11
  br label %34

34:                                               ; preds = %33, %1
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @abd_free(i32 %37)
  ret void
}

declare dso_local %struct.TYPE_5__* @zio_walk_parents(%struct.TYPE_5__*, i32**) #1

declare dso_local i32 @abd_copy_off(i32, i32, i32, i64, i32) #1

declare dso_local i32 @abd_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
