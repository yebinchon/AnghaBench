; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_vdev_queue.c_vdev_queue_fini.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_vdev_queue.c_vdev_queue_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

@ZIO_PRIORITY_NUM_QUEUEABLE = common dso_local global i64 0, align 8
@ZIO_TYPE_READ = common dso_local global i32 0, align 4
@ZIO_TYPE_WRITE = common dso_local global i32 0, align 4
@ZIO_TYPE_TRIM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vdev_queue_fini(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  store %struct.TYPE_7__* %6, %struct.TYPE_7__** %3, align 8
  store i64 0, i64* %4, align 8
  br label %7

7:                                                ; preds = %16, %1
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* @ZIO_PRIORITY_NUM_QUEUEABLE, align 8
  %10 = icmp slt i64 %8, %9
  br i1 %10, label %11, label %19

11:                                               ; preds = %7
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %13 = load i64, i64* %4, align 8
  %14 = call i32* @vdev_queue_class_tree(%struct.TYPE_7__* %12, i64 %13)
  %15 = call i32 @avl_destroy(i32* %14)
  br label %16

16:                                               ; preds = %11
  %17 = load i64, i64* %4, align 8
  %18 = add nsw i64 %17, 1
  store i64 %18, i64* %4, align 8
  br label %7

19:                                               ; preds = %7
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %22 = call i32 @avl_destroy(i32* %21)
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %24 = load i32, i32* @ZIO_TYPE_READ, align 4
  %25 = call i32* @vdev_queue_type_tree(%struct.TYPE_7__* %23, i32 %24)
  %26 = call i32 @avl_destroy(i32* %25)
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %28 = load i32, i32* @ZIO_TYPE_WRITE, align 4
  %29 = call i32* @vdev_queue_type_tree(%struct.TYPE_7__* %27, i32 %28)
  %30 = call i32 @avl_destroy(i32* %29)
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %32 = load i32, i32* @ZIO_TYPE_TRIM, align 4
  %33 = call i32* @vdev_queue_type_tree(%struct.TYPE_7__* %31, i32 %32)
  %34 = call i32 @avl_destroy(i32* %33)
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = call i32 @mutex_destroy(i32* %36)
  ret void
}

declare dso_local i32 @avl_destroy(i32*) #1

declare dso_local i32* @vdev_queue_class_tree(%struct.TYPE_7__*, i64) #1

declare dso_local i32* @vdev_queue_type_tree(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @mutex_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
