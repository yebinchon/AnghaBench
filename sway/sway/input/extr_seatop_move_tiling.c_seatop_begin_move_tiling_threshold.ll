; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_seatop_move_tiling.c_seatop_begin_move_tiling_threshold.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_seatop_move_tiling.c_seatop_begin_move_tiling_threshold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_seat = type { i32, %struct.seatop_move_tiling_event*, i32*, %struct.TYPE_3__* }
%struct.seatop_move_tiling_event = type { i32, i32, %struct.sway_container* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.sway_container = type { i32 }

@seatop_impl = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @seatop_begin_move_tiling_threshold(%struct.sway_seat* %0, %struct.sway_container* %1) #0 {
  %3 = alloca %struct.sway_seat*, align 8
  %4 = alloca %struct.sway_container*, align 8
  %5 = alloca %struct.seatop_move_tiling_event*, align 8
  store %struct.sway_seat* %0, %struct.sway_seat** %3, align 8
  store %struct.sway_container* %1, %struct.sway_container** %4, align 8
  %6 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %7 = call i32 @seatop_end(%struct.sway_seat* %6)
  %8 = call %struct.seatop_move_tiling_event* @calloc(i32 1, i32 16)
  store %struct.seatop_move_tiling_event* %8, %struct.seatop_move_tiling_event** %5, align 8
  %9 = load %struct.seatop_move_tiling_event*, %struct.seatop_move_tiling_event** %5, align 8
  %10 = icmp ne %struct.seatop_move_tiling_event* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %45

12:                                               ; preds = %2
  %13 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %14 = load %struct.seatop_move_tiling_event*, %struct.seatop_move_tiling_event** %5, align 8
  %15 = getelementptr inbounds %struct.seatop_move_tiling_event, %struct.seatop_move_tiling_event* %14, i32 0, i32 2
  store %struct.sway_container* %13, %struct.sway_container** %15, align 8
  %16 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %17 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %16, i32 0, i32 3
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.seatop_move_tiling_event*, %struct.seatop_move_tiling_event** %5, align 8
  %24 = getelementptr inbounds %struct.seatop_move_tiling_event, %struct.seatop_move_tiling_event* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %26 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %25, i32 0, i32 3
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.seatop_move_tiling_event*, %struct.seatop_move_tiling_event** %5, align 8
  %33 = getelementptr inbounds %struct.seatop_move_tiling_event, %struct.seatop_move_tiling_event* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %35 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %34, i32 0, i32 2
  store i32* @seatop_impl, i32** %35, align 8
  %36 = load %struct.seatop_move_tiling_event*, %struct.seatop_move_tiling_event** %5, align 8
  %37 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %38 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %37, i32 0, i32 1
  store %struct.seatop_move_tiling_event* %36, %struct.seatop_move_tiling_event** %38, align 8
  %39 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %40 = call i32 @container_raise_floating(%struct.sway_container* %39)
  %41 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %42 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @wlr_seat_pointer_clear_focus(i32 %43)
  br label %45

45:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @seatop_end(%struct.sway_seat*) #1

declare dso_local %struct.seatop_move_tiling_event* @calloc(i32, i32) #1

declare dso_local i32 @container_raise_floating(%struct.sway_container*) #1

declare dso_local i32 @wlr_seat_pointer_clear_focus(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
