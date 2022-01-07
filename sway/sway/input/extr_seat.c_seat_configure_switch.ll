; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_seat.c_seat_configure_switch.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_seat.c_seat_configure_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_seat = type { i32 }
%struct.sway_seat_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sway_seat*, %struct.sway_seat_device*)* @seat_configure_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @seat_configure_switch(%struct.sway_seat* %0, %struct.sway_seat_device* %1) #0 {
  %3 = alloca %struct.sway_seat*, align 8
  %4 = alloca %struct.sway_seat_device*, align 8
  store %struct.sway_seat* %0, %struct.sway_seat** %3, align 8
  store %struct.sway_seat_device* %1, %struct.sway_seat_device** %4, align 8
  %5 = load %struct.sway_seat_device*, %struct.sway_seat_device** %4, align 8
  %6 = getelementptr inbounds %struct.sway_seat_device, %struct.sway_seat_device* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %11 = load %struct.sway_seat_device*, %struct.sway_seat_device** %4, align 8
  %12 = call i32 @sway_switch_create(%struct.sway_seat* %10, %struct.sway_seat_device* %11)
  br label %13

13:                                               ; preds = %9, %2
  %14 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %15 = load %struct.sway_seat_device*, %struct.sway_seat_device** %4, align 8
  %16 = call i32 @seat_apply_input_config(%struct.sway_seat* %14, %struct.sway_seat_device* %15)
  %17 = load %struct.sway_seat_device*, %struct.sway_seat_device** %4, align 8
  %18 = getelementptr inbounds %struct.sway_seat_device, %struct.sway_seat_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @sway_switch_configure(i32 %19)
  ret void
}

declare dso_local i32 @sway_switch_create(%struct.sway_seat*, %struct.sway_seat_device*) #1

declare dso_local i32 @seat_apply_input_config(%struct.sway_seat*, %struct.sway_seat_device*) #1

declare dso_local i32 @sway_switch_configure(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
