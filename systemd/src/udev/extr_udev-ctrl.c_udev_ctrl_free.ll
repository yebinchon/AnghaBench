; ModuleID = '/home/carl/AnghaBench/systemd/src/udev/extr_udev-ctrl.c_udev_ctrl_free.c'
source_filename = "/home/carl/AnghaBench/systemd/src/udev/extr_udev-ctrl.c_udev_ctrl_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udev_ctrl = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.udev_ctrl* (%struct.udev_ctrl*)* @udev_ctrl_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.udev_ctrl* @udev_ctrl_free(%struct.udev_ctrl* %0) #0 {
  %2 = alloca %struct.udev_ctrl*, align 8
  store %struct.udev_ctrl* %0, %struct.udev_ctrl** %2, align 8
  %3 = load %struct.udev_ctrl*, %struct.udev_ctrl** %2, align 8
  %4 = call i32 @assert(%struct.udev_ctrl* %3)
  %5 = load %struct.udev_ctrl*, %struct.udev_ctrl** %2, align 8
  %6 = call i32 @udev_ctrl_disconnect(%struct.udev_ctrl* %5)
  %7 = load %struct.udev_ctrl*, %struct.udev_ctrl** %2, align 8
  %8 = getelementptr inbounds %struct.udev_ctrl, %struct.udev_ctrl* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @sd_event_source_unref(i32 %9)
  %11 = load %struct.udev_ctrl*, %struct.udev_ctrl** %2, align 8
  %12 = getelementptr inbounds %struct.udev_ctrl, %struct.udev_ctrl* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @safe_close(i32 %13)
  %15 = load %struct.udev_ctrl*, %struct.udev_ctrl** %2, align 8
  %16 = getelementptr inbounds %struct.udev_ctrl, %struct.udev_ctrl* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @sd_event_unref(i32 %17)
  %19 = load %struct.udev_ctrl*, %struct.udev_ctrl** %2, align 8
  %20 = call %struct.udev_ctrl* @mfree(%struct.udev_ctrl* %19)
  ret %struct.udev_ctrl* %20
}

declare dso_local i32 @assert(%struct.udev_ctrl*) #1

declare dso_local i32 @udev_ctrl_disconnect(%struct.udev_ctrl*) #1

declare dso_local i32 @sd_event_source_unref(i32) #1

declare dso_local i32 @safe_close(i32) #1

declare dso_local i32 @sd_event_unref(i32) #1

declare dso_local %struct.udev_ctrl* @mfree(%struct.udev_ctrl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
