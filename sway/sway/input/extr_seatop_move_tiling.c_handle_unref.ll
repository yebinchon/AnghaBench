; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_seatop_move_tiling.c_handle_unref.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_seatop_move_tiling.c_handle_unref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_seat = type { %struct.seatop_move_tiling_event* }
%struct.seatop_move_tiling_event = type { %struct.sway_container*, i32* }
%struct.sway_container = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sway_seat*, %struct.sway_container*)* @handle_unref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_unref(%struct.sway_seat* %0, %struct.sway_container* %1) #0 {
  %3 = alloca %struct.sway_seat*, align 8
  %4 = alloca %struct.sway_container*, align 8
  %5 = alloca %struct.seatop_move_tiling_event*, align 8
  store %struct.sway_seat* %0, %struct.sway_seat** %3, align 8
  store %struct.sway_container* %1, %struct.sway_container** %4, align 8
  %6 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %7 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %6, i32 0, i32 0
  %8 = load %struct.seatop_move_tiling_event*, %struct.seatop_move_tiling_event** %7, align 8
  store %struct.seatop_move_tiling_event* %8, %struct.seatop_move_tiling_event** %5, align 8
  %9 = load %struct.seatop_move_tiling_event*, %struct.seatop_move_tiling_event** %5, align 8
  %10 = getelementptr inbounds %struct.seatop_move_tiling_event, %struct.seatop_move_tiling_event* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %13 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %12, i32 0, i32 0
  %14 = icmp eq i32* %11, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %struct.seatop_move_tiling_event*, %struct.seatop_move_tiling_event** %5, align 8
  %17 = getelementptr inbounds %struct.seatop_move_tiling_event, %struct.seatop_move_tiling_event* %16, i32 0, i32 1
  store i32* null, i32** %17, align 8
  br label %18

18:                                               ; preds = %15, %2
  %19 = load %struct.seatop_move_tiling_event*, %struct.seatop_move_tiling_event** %5, align 8
  %20 = getelementptr inbounds %struct.seatop_move_tiling_event, %struct.seatop_move_tiling_event* %19, i32 0, i32 0
  %21 = load %struct.sway_container*, %struct.sway_container** %20, align 8
  %22 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %23 = icmp eq %struct.sway_container* %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %26 = call i32 @seatop_begin_default(%struct.sway_seat* %25)
  br label %27

27:                                               ; preds = %24, %18
  ret void
}

declare dso_local i32 @seatop_begin_default(%struct.sway_seat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
