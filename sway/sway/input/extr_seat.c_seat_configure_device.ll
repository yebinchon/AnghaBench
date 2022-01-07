; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_seat.c_seat_configure_device.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_seat.c_seat_configure_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_seat = type { i32 }
%struct.sway_input_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sway_seat_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @seat_configure_device(%struct.sway_seat* %0, %struct.sway_input_device* %1) #0 {
  %3 = alloca %struct.sway_seat*, align 8
  %4 = alloca %struct.sway_input_device*, align 8
  %5 = alloca %struct.sway_seat_device*, align 8
  store %struct.sway_seat* %0, %struct.sway_seat** %3, align 8
  store %struct.sway_input_device* %1, %struct.sway_input_device** %4, align 8
  %6 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %7 = load %struct.sway_input_device*, %struct.sway_input_device** %4, align 8
  %8 = call %struct.sway_seat_device* @seat_get_device(%struct.sway_seat* %6, %struct.sway_input_device* %7)
  store %struct.sway_seat_device* %8, %struct.sway_seat_device** %5, align 8
  %9 = load %struct.sway_seat_device*, %struct.sway_seat_device** %5, align 8
  %10 = icmp ne %struct.sway_seat_device* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %42

12:                                               ; preds = %2
  %13 = load %struct.sway_input_device*, %struct.sway_input_device** %4, align 8
  %14 = getelementptr inbounds %struct.sway_input_device, %struct.sway_input_device* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %42 [
    i32 132, label %18
    i32 133, label %22
    i32 131, label %26
    i32 128, label %30
    i32 129, label %34
    i32 130, label %38
  ]

18:                                               ; preds = %12
  %19 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %20 = load %struct.sway_seat_device*, %struct.sway_seat_device** %5, align 8
  %21 = call i32 @seat_configure_pointer(%struct.sway_seat* %19, %struct.sway_seat_device* %20)
  br label %42

22:                                               ; preds = %12
  %23 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %24 = load %struct.sway_seat_device*, %struct.sway_seat_device** %5, align 8
  %25 = call i32 @seat_configure_keyboard(%struct.sway_seat* %23, %struct.sway_seat_device* %24)
  br label %42

26:                                               ; preds = %12
  %27 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %28 = load %struct.sway_seat_device*, %struct.sway_seat_device** %5, align 8
  %29 = call i32 @seat_configure_switch(%struct.sway_seat* %27, %struct.sway_seat_device* %28)
  br label %42

30:                                               ; preds = %12
  %31 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %32 = load %struct.sway_seat_device*, %struct.sway_seat_device** %5, align 8
  %33 = call i32 @seat_configure_touch(%struct.sway_seat* %31, %struct.sway_seat_device* %32)
  br label %42

34:                                               ; preds = %12
  %35 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %36 = load %struct.sway_seat_device*, %struct.sway_seat_device** %5, align 8
  %37 = call i32 @seat_configure_tablet_tool(%struct.sway_seat* %35, %struct.sway_seat_device* %36)
  br label %42

38:                                               ; preds = %12
  %39 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %40 = load %struct.sway_seat_device*, %struct.sway_seat_device** %5, align 8
  %41 = call i32 @seat_configure_tablet_pad(%struct.sway_seat* %39, %struct.sway_seat_device* %40)
  br label %42

42:                                               ; preds = %11, %12, %38, %34, %30, %26, %22, %18
  ret void
}

declare dso_local %struct.sway_seat_device* @seat_get_device(%struct.sway_seat*, %struct.sway_input_device*) #1

declare dso_local i32 @seat_configure_pointer(%struct.sway_seat*, %struct.sway_seat_device*) #1

declare dso_local i32 @seat_configure_keyboard(%struct.sway_seat*, %struct.sway_seat_device*) #1

declare dso_local i32 @seat_configure_switch(%struct.sway_seat*, %struct.sway_seat_device*) #1

declare dso_local i32 @seat_configure_touch(%struct.sway_seat*, %struct.sway_seat_device*) #1

declare dso_local i32 @seat_configure_tablet_tool(%struct.sway_seat*, %struct.sway_seat_device*) #1

declare dso_local i32 @seat_configure_tablet_pad(%struct.sway_seat*, %struct.sway_seat_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
