; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_seatop_move_tiling.c_seatop_begin_move_tiling.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_seatop_move_tiling.c_seatop_begin_move_tiling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_seat = type { i32, %struct.seatop_move_tiling_event* }
%struct.seatop_move_tiling_event = type { i32 }
%struct.sway_container = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"grab\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @seatop_begin_move_tiling(%struct.sway_seat* %0, %struct.sway_container* %1) #0 {
  %3 = alloca %struct.sway_seat*, align 8
  %4 = alloca %struct.sway_container*, align 8
  %5 = alloca %struct.seatop_move_tiling_event*, align 8
  store %struct.sway_seat* %0, %struct.sway_seat** %3, align 8
  store %struct.sway_container* %1, %struct.sway_container** %4, align 8
  %6 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %7 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %8 = call i32 @seatop_begin_move_tiling_threshold(%struct.sway_seat* %6, %struct.sway_container* %7)
  %9 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %10 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %9, i32 0, i32 1
  %11 = load %struct.seatop_move_tiling_event*, %struct.seatop_move_tiling_event** %10, align 8
  store %struct.seatop_move_tiling_event* %11, %struct.seatop_move_tiling_event** %5, align 8
  %12 = load %struct.seatop_move_tiling_event*, %struct.seatop_move_tiling_event** %5, align 8
  %13 = icmp ne %struct.seatop_move_tiling_event* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load %struct.seatop_move_tiling_event*, %struct.seatop_move_tiling_event** %5, align 8
  %16 = getelementptr inbounds %struct.seatop_move_tiling_event, %struct.seatop_move_tiling_event* %15, i32 0, i32 0
  store i32 1, i32* %16, align 4
  %17 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %18 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @cursor_set_image(i32 %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null)
  br label %21

21:                                               ; preds = %14, %2
  ret void
}

declare dso_local i32 @seatop_begin_move_tiling_threshold(%struct.sway_seat*, %struct.sway_container*) #1

declare dso_local i32 @cursor_set_image(i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
