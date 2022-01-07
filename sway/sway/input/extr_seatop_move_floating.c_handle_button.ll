; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_seatop_move_floating.c_handle_button.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_seatop_move_floating.c_handle_button.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_seat = type { %struct.seatop_move_floating_event*, %struct.TYPE_3__* }
%struct.seatop_move_floating_event = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.wlr_input_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sway_seat*, i32, %struct.wlr_input_device*, i32, i32)* @handle_button to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_button(%struct.sway_seat* %0, i32 %1, %struct.wlr_input_device* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.sway_seat*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wlr_input_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.seatop_move_floating_event*, align 8
  store %struct.sway_seat* %0, %struct.sway_seat** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.wlr_input_device* %2, %struct.wlr_input_device** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.sway_seat*, %struct.sway_seat** %6, align 8
  %13 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %38

18:                                               ; preds = %5
  %19 = load %struct.sway_seat*, %struct.sway_seat** %6, align 8
  %20 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %19, i32 0, i32 0
  %21 = load %struct.seatop_move_floating_event*, %struct.seatop_move_floating_event** %20, align 8
  store %struct.seatop_move_floating_event* %21, %struct.seatop_move_floating_event** %11, align 8
  %22 = load %struct.seatop_move_floating_event*, %struct.seatop_move_floating_event** %11, align 8
  %23 = getelementptr inbounds %struct.seatop_move_floating_event, %struct.seatop_move_floating_event* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = load %struct.seatop_move_floating_event*, %struct.seatop_move_floating_event** %11, align 8
  %26 = getelementptr inbounds %struct.seatop_move_floating_event, %struct.seatop_move_floating_event* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.seatop_move_floating_event*, %struct.seatop_move_floating_event** %11, align 8
  %31 = getelementptr inbounds %struct.seatop_move_floating_event, %struct.seatop_move_floating_event* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @container_floating_move_to(%struct.TYPE_4__* %24, i32 %29, i32 %34)
  %36 = load %struct.sway_seat*, %struct.sway_seat** %6, align 8
  %37 = call i32 @seatop_begin_default(%struct.sway_seat* %36)
  br label %38

38:                                               ; preds = %18, %5
  ret void
}

declare dso_local i32 @container_floating_move_to(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @seatop_begin_default(%struct.sway_seat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
