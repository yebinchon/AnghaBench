; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_arc.c_l2arc_vdev_present.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_arc.c_l2arc_vdev_present.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }

@l2arc_dev_mtx = common dso_local global i32 0, align 4
@l2arc_dev_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @l2arc_vdev_present(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %2, align 8
  %4 = call i32 @mutex_enter(i32* @l2arc_dev_mtx)
  %5 = load i32, i32* @l2arc_dev_list, align 4
  %6 = call %struct.TYPE_5__* @list_head(i32 %5)
  store %struct.TYPE_5__* %6, %struct.TYPE_5__** %3, align 8
  br label %7

7:                                                ; preds = %18, %1
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %9 = icmp ne %struct.TYPE_5__* %8, null
  br i1 %9, label %10, label %22

10:                                               ; preds = %7
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i32*, i32** %2, align 8
  %15 = icmp eq i32* %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  br label %22

17:                                               ; preds = %10
  br label %18

18:                                               ; preds = %17
  %19 = load i32, i32* @l2arc_dev_list, align 4
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %21 = call %struct.TYPE_5__* @list_next(i32 %19, %struct.TYPE_5__* %20)
  store %struct.TYPE_5__* %21, %struct.TYPE_5__** %3, align 8
  br label %7

22:                                               ; preds = %16, %7
  %23 = call i32 @mutex_exit(i32* @l2arc_dev_mtx)
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %25 = icmp ne %struct.TYPE_5__* %24, null
  %26 = zext i1 %25 to i32
  ret i32 %26
}

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local %struct.TYPE_5__* @list_head(i32) #1

declare dso_local %struct.TYPE_5__* @list_next(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @mutex_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
