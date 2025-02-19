; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_vdev.c_vdev_is_concrete.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_vdev.c_vdev_is_concrete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@vdev_indirect_ops = common dso_local global i32 0, align 4
@vdev_hole_ops = common dso_local global i32 0, align 4
@vdev_missing_ops = common dso_local global i32 0, align 4
@vdev_root_ops = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vdev_is_concrete(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  store i32* %7, i32** %4, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = icmp eq i32* %8, @vdev_indirect_ops
  br i1 %9, label %19, label %10

10:                                               ; preds = %1
  %11 = load i32*, i32** %4, align 8
  %12 = icmp eq i32* %11, @vdev_hole_ops
  br i1 %12, label %19, label %13

13:                                               ; preds = %10
  %14 = load i32*, i32** %4, align 8
  %15 = icmp eq i32* %14, @vdev_missing_ops
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = load i32*, i32** %4, align 8
  %18 = icmp eq i32* %17, @vdev_root_ops
  br i1 %18, label %19, label %21

19:                                               ; preds = %16, %13, %10, %1
  %20 = load i32, i32* @B_FALSE, align 4
  store i32 %20, i32* %2, align 4
  br label %23

21:                                               ; preds = %16
  %22 = load i32, i32* @B_TRUE, align 4
  store i32 %22, i32* %2, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
