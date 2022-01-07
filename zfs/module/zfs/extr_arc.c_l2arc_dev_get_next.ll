; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_arc.c_l2arc_dev_get_next.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_arc.c_l2arc_dev_get_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }

@spa_namespace_lock = common dso_local global i32 0, align 4
@l2arc_dev_mtx = common dso_local global i32 0, align 4
@l2arc_ndev = common dso_local global i64 0, align 8
@l2arc_dev_last = common dso_local global %struct.TYPE_8__* null, align 8
@l2arc_dev_list = common dso_local global i32 0, align 4
@SCL_L2ARC = common dso_local global i32 0, align 4
@RW_READER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* ()* @l2arc_dev_get_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @l2arc_dev_get_next() #0 {
  %1 = alloca %struct.TYPE_8__*, align 8
  %2 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %2, align 8
  %3 = call i32 @mutex_enter(i32* @spa_namespace_lock)
  %4 = call i32 @mutex_enter(i32* @l2arc_dev_mtx)
  %5 = load i64, i64* @l2arc_ndev, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  br label %53

8:                                                ; preds = %0
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %1, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** @l2arc_dev_last, align 8
  store %struct.TYPE_8__* %9, %struct.TYPE_8__** %2, align 8
  br label %10

10:                                               ; preds = %38, %8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %12 = icmp eq %struct.TYPE_8__* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i32, i32* @l2arc_dev_list, align 4
  %15 = call %struct.TYPE_8__* @list_head(i32 %14)
  store %struct.TYPE_8__* %15, %struct.TYPE_8__** %2, align 8
  br label %26

16:                                               ; preds = %10
  %17 = load i32, i32* @l2arc_dev_list, align 4
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %19 = call %struct.TYPE_8__* @list_next(i32 %17, %struct.TYPE_8__* %18)
  store %struct.TYPE_8__* %19, %struct.TYPE_8__** %2, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %21 = icmp eq %struct.TYPE_8__* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i32, i32* @l2arc_dev_list, align 4
  %24 = call %struct.TYPE_8__* @list_head(i32 %23)
  store %struct.TYPE_8__* %24, %struct.TYPE_8__** %2, align 8
  br label %25

25:                                               ; preds = %22, %16
  br label %26

26:                                               ; preds = %25, %13
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %28 = icmp eq %struct.TYPE_8__* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  store %struct.TYPE_8__* %30, %struct.TYPE_8__** %1, align 8
  br label %37

31:                                               ; preds = %26
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %34 = icmp eq %struct.TYPE_8__* %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  br label %44

36:                                               ; preds = %31
  br label %37

37:                                               ; preds = %36, %29
  br label %38

38:                                               ; preds = %37
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @vdev_is_dead(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %10, label %44

44:                                               ; preds = %38, %35
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @vdev_is_dead(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %2, align 8
  br label %51

51:                                               ; preds = %50, %44
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  store %struct.TYPE_8__* %52, %struct.TYPE_8__** @l2arc_dev_last, align 8
  br label %53

53:                                               ; preds = %51, %7
  %54 = call i32 @mutex_exit(i32* @l2arc_dev_mtx)
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %56 = icmp ne %struct.TYPE_8__* %55, null
  br i1 %56, label %57, label %65

57:                                               ; preds = %53
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @SCL_L2ARC, align 4
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %63 = load i32, i32* @RW_READER, align 4
  %64 = call i32 @spa_config_enter(i32 %60, i32 %61, %struct.TYPE_8__* %62, i32 %63)
  br label %65

65:                                               ; preds = %57, %53
  %66 = call i32 @mutex_exit(i32* @spa_namespace_lock)
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  ret %struct.TYPE_8__* %67
}

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local %struct.TYPE_8__* @list_head(i32) #1

declare dso_local %struct.TYPE_8__* @list_next(i32, %struct.TYPE_8__*) #1

declare dso_local i64 @vdev_is_dead(i32) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @spa_config_enter(i32, i32, %struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
