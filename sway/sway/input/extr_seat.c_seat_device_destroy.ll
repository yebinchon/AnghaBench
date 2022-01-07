; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_seat.c_seat_device_destroy.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_seat.c_seat_device_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_seat_device = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__*, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sway_seat_device*)* @seat_device_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @seat_device_destroy(%struct.sway_seat_device* %0) #0 {
  %2 = alloca %struct.sway_seat_device*, align 8
  store %struct.sway_seat_device* %0, %struct.sway_seat_device** %2, align 8
  %3 = load %struct.sway_seat_device*, %struct.sway_seat_device** %2, align 8
  %4 = icmp ne %struct.sway_seat_device* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %37

6:                                                ; preds = %1
  %7 = load %struct.sway_seat_device*, %struct.sway_seat_device** %2, align 8
  %8 = getelementptr inbounds %struct.sway_seat_device, %struct.sway_seat_device* %7, i32 0, i32 5
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @sway_keyboard_destroy(i32 %9)
  %11 = load %struct.sway_seat_device*, %struct.sway_seat_device** %2, align 8
  %12 = getelementptr inbounds %struct.sway_seat_device, %struct.sway_seat_device* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @sway_tablet_destroy(i32 %13)
  %15 = load %struct.sway_seat_device*, %struct.sway_seat_device** %2, align 8
  %16 = getelementptr inbounds %struct.sway_seat_device, %struct.sway_seat_device* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @sway_tablet_pad_destroy(i32 %17)
  %19 = load %struct.sway_seat_device*, %struct.sway_seat_device** %2, align 8
  %20 = getelementptr inbounds %struct.sway_seat_device, %struct.sway_seat_device* %19, i32 0, i32 2
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.sway_seat_device*, %struct.sway_seat_device** %2, align 8
  %27 = getelementptr inbounds %struct.sway_seat_device, %struct.sway_seat_device* %26, i32 0, i32 1
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @wlr_cursor_detach_input_device(i32 %25, i32 %30)
  %32 = load %struct.sway_seat_device*, %struct.sway_seat_device** %2, align 8
  %33 = getelementptr inbounds %struct.sway_seat_device, %struct.sway_seat_device* %32, i32 0, i32 0
  %34 = call i32 @wl_list_remove(i32* %33)
  %35 = load %struct.sway_seat_device*, %struct.sway_seat_device** %2, align 8
  %36 = call i32 @free(%struct.sway_seat_device* %35)
  br label %37

37:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @sway_keyboard_destroy(i32) #1

declare dso_local i32 @sway_tablet_destroy(i32) #1

declare dso_local i32 @sway_tablet_pad_destroy(i32) #1

declare dso_local i32 @wlr_cursor_detach_input_device(i32, i32) #1

declare dso_local i32 @wl_list_remove(i32*) #1

declare dso_local i32 @free(%struct.sway_seat_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
