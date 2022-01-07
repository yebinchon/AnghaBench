; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_vdev_mirror.c_vdev_mirror_state_change.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_vdev_mirror.c_vdev_mirror_state_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@B_FALSE = common dso_local global i32 0, align 4
@VDEV_STATE_OFFLINE = common dso_local global i32 0, align 4
@VDEV_AUX_CHILDREN_OFFLINE = common dso_local global i32 0, align 4
@VDEV_STATE_CANT_OPEN = common dso_local global i32 0, align 4
@VDEV_AUX_NO_REPLICAS = common dso_local global i32 0, align 4
@VDEV_STATE_DEGRADED = common dso_local global i32 0, align 4
@VDEV_AUX_NONE = common dso_local global i32 0, align 4
@VDEV_STATE_HEALTHY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32, i32)* @vdev_mirror_state_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vdev_mirror_state_change(%struct.TYPE_5__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %7, %10
  br i1 %11, label %12, label %29

12:                                               ; preds = %3
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = call i64 @vdev_children_are_offline(%struct.TYPE_5__* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %12
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %18 = load i32, i32* @B_FALSE, align 4
  %19 = load i32, i32* @VDEV_STATE_OFFLINE, align 4
  %20 = load i32, i32* @VDEV_AUX_CHILDREN_OFFLINE, align 4
  %21 = call i32 @vdev_set_state(%struct.TYPE_5__* %17, i32 %18, i32 %19, i32 %20)
  br label %28

22:                                               ; preds = %12
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %24 = load i32, i32* @B_FALSE, align 4
  %25 = load i32, i32* @VDEV_STATE_CANT_OPEN, align 4
  %26 = load i32, i32* @VDEV_AUX_NO_REPLICAS, align 4
  %27 = call i32 @vdev_set_state(%struct.TYPE_5__* %23, i32 %24, i32 %25, i32 %26)
  br label %28

28:                                               ; preds = %22, %16
  br label %47

29:                                               ; preds = %3
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %36 = load i32, i32* @B_FALSE, align 4
  %37 = load i32, i32* @VDEV_STATE_DEGRADED, align 4
  %38 = load i32, i32* @VDEV_AUX_NONE, align 4
  %39 = call i32 @vdev_set_state(%struct.TYPE_5__* %35, i32 %36, i32 %37, i32 %38)
  br label %46

40:                                               ; preds = %29
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %42 = load i32, i32* @B_FALSE, align 4
  %43 = load i32, i32* @VDEV_STATE_HEALTHY, align 4
  %44 = load i32, i32* @VDEV_AUX_NONE, align 4
  %45 = call i32 @vdev_set_state(%struct.TYPE_5__* %41, i32 %42, i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %40, %34
  br label %47

47:                                               ; preds = %46, %28
  ret void
}

declare dso_local i64 @vdev_children_are_offline(%struct.TYPE_5__*) #1

declare dso_local i32 @vdev_set_state(%struct.TYPE_5__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
