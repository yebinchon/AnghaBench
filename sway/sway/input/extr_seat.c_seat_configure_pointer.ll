; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_seat.c_seat_configure_pointer.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_seat.c_seat_configure_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_seat = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.sway_seat_device = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@WL_SEAT_CAPABILITY_POINTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sway_seat*, %struct.sway_seat_device*)* @seat_configure_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @seat_configure_pointer(%struct.sway_seat* %0, %struct.sway_seat_device* %1) #0 {
  %3 = alloca %struct.sway_seat*, align 8
  %4 = alloca %struct.sway_seat_device*, align 8
  store %struct.sway_seat* %0, %struct.sway_seat** %3, align 8
  store %struct.sway_seat_device* %1, %struct.sway_seat_device** %4, align 8
  %5 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %6 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %5, i32 0, i32 1
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @WL_SEAT_CAPABILITY_POINTER, align 4
  %11 = and i32 %9, %10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %15 = call i32 @seat_configure_xcursor(%struct.sway_seat* %14)
  br label %16

16:                                               ; preds = %13, %2
  %17 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %18 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %17, i32 0, i32 0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.sway_seat_device*, %struct.sway_seat_device** %4, align 8
  %23 = getelementptr inbounds %struct.sway_seat_device, %struct.sway_seat_device* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @wlr_cursor_attach_input_device(i32 %21, i32 %26)
  %28 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %29 = load %struct.sway_seat_device*, %struct.sway_seat_device** %4, align 8
  %30 = call i32 @seat_apply_input_config(%struct.sway_seat* %28, %struct.sway_seat_device* %29)
  ret void
}

declare dso_local i32 @seat_configure_xcursor(%struct.sway_seat*) #1

declare dso_local i32 @wlr_cursor_attach_input_device(i32, i32) #1

declare dso_local i32 @seat_apply_input_config(%struct.sway_seat*, %struct.sway_seat_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
