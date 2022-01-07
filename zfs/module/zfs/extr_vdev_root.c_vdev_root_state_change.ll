; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_vdev_root.c_vdev_root_state_change.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_vdev_root.c_vdev_root_state_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@B_FALSE = common dso_local global i32 0, align 4
@VDEV_STATE_CANT_OPEN = common dso_local global i32 0, align 4
@VDEV_AUX_NO_REPLICAS = common dso_local global i32 0, align 4
@VDEV_STATE_DEGRADED = common dso_local global i32 0, align 4
@VDEV_AUX_NONE = common dso_local global i32 0, align 4
@VDEV_STATE_HEALTHY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32)* @vdev_root_state_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vdev_root_state_change(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32*, i32** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i64 @too_many_errors(i32* %7, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = load i32*, i32** %4, align 8
  %13 = load i32, i32* @B_FALSE, align 4
  %14 = load i32, i32* @VDEV_STATE_CANT_OPEN, align 4
  %15 = load i32, i32* @VDEV_AUX_NO_REPLICAS, align 4
  %16 = call i32 @vdev_set_state(i32* %12, i32 %13, i32 %14, i32 %15)
  br label %36

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %20, %17
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* @B_FALSE, align 4
  %26 = load i32, i32* @VDEV_STATE_DEGRADED, align 4
  %27 = load i32, i32* @VDEV_AUX_NONE, align 4
  %28 = call i32 @vdev_set_state(i32* %24, i32 %25, i32 %26, i32 %27)
  br label %35

29:                                               ; preds = %20
  %30 = load i32*, i32** %4, align 8
  %31 = load i32, i32* @B_FALSE, align 4
  %32 = load i32, i32* @VDEV_STATE_HEALTHY, align 4
  %33 = load i32, i32* @VDEV_AUX_NONE, align 4
  %34 = call i32 @vdev_set_state(i32* %30, i32 %31, i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %29, %23
  br label %36

36:                                               ; preds = %35, %11
  ret void
}

declare dso_local i64 @too_many_errors(i32*, i32) #1

declare dso_local i32 @vdev_set_state(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
