; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_seatop_move_floating.c_seatop_begin_move_floating.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_seatop_move_floating.c_seatop_begin_move_floating.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_seat = type { i32, %struct.seatop_move_floating_event*, i32*, %struct.sway_cursor* }
%struct.seatop_move_floating_event = type { i64, i64, %struct.sway_container* }
%struct.sway_cursor = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.sway_container = type { i64, i64 }

@seatop_impl = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"grab\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @seatop_begin_move_floating(%struct.sway_seat* %0, %struct.sway_container* %1) #0 {
  %3 = alloca %struct.sway_seat*, align 8
  %4 = alloca %struct.sway_container*, align 8
  %5 = alloca %struct.sway_cursor*, align 8
  %6 = alloca %struct.seatop_move_floating_event*, align 8
  store %struct.sway_seat* %0, %struct.sway_seat** %3, align 8
  store %struct.sway_container* %1, %struct.sway_container** %4, align 8
  %7 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %8 = call i32 @seatop_end(%struct.sway_seat* %7)
  %9 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %10 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %9, i32 0, i32 3
  %11 = load %struct.sway_cursor*, %struct.sway_cursor** %10, align 8
  store %struct.sway_cursor* %11, %struct.sway_cursor** %5, align 8
  %12 = call %struct.seatop_move_floating_event* @calloc(i32 1, i32 24)
  store %struct.seatop_move_floating_event* %12, %struct.seatop_move_floating_event** %6, align 8
  %13 = load %struct.seatop_move_floating_event*, %struct.seatop_move_floating_event** %6, align 8
  %14 = icmp ne %struct.seatop_move_floating_event* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %55

16:                                               ; preds = %2
  %17 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %18 = load %struct.seatop_move_floating_event*, %struct.seatop_move_floating_event** %6, align 8
  %19 = getelementptr inbounds %struct.seatop_move_floating_event, %struct.seatop_move_floating_event* %18, i32 0, i32 2
  store %struct.sway_container* %17, %struct.sway_container** %19, align 8
  %20 = load %struct.sway_cursor*, %struct.sway_cursor** %5, align 8
  %21 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %26 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = sub nsw i64 %24, %27
  %29 = load %struct.seatop_move_floating_event*, %struct.seatop_move_floating_event** %6, align 8
  %30 = getelementptr inbounds %struct.seatop_move_floating_event, %struct.seatop_move_floating_event* %29, i32 0, i32 1
  store i64 %28, i64* %30, align 8
  %31 = load %struct.sway_cursor*, %struct.sway_cursor** %5, align 8
  %32 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %37 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = sub nsw i64 %35, %38
  %40 = load %struct.seatop_move_floating_event*, %struct.seatop_move_floating_event** %6, align 8
  %41 = getelementptr inbounds %struct.seatop_move_floating_event, %struct.seatop_move_floating_event* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  %42 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %43 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %42, i32 0, i32 2
  store i32* @seatop_impl, i32** %43, align 8
  %44 = load %struct.seatop_move_floating_event*, %struct.seatop_move_floating_event** %6, align 8
  %45 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %46 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %45, i32 0, i32 1
  store %struct.seatop_move_floating_event* %44, %struct.seatop_move_floating_event** %46, align 8
  %47 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %48 = call i32 @container_raise_floating(%struct.sway_container* %47)
  %49 = load %struct.sway_cursor*, %struct.sway_cursor** %5, align 8
  %50 = call i32 @cursor_set_image(%struct.sway_cursor* %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null)
  %51 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %52 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @wlr_seat_pointer_clear_focus(i32 %53)
  br label %55

55:                                               ; preds = %16, %15
  ret void
}

declare dso_local i32 @seatop_end(%struct.sway_seat*) #1

declare dso_local %struct.seatop_move_floating_event* @calloc(i32, i32) #1

declare dso_local i32 @container_raise_floating(%struct.sway_container*) #1

declare dso_local i32 @cursor_set_image(%struct.sway_cursor*, i8*, i32*) #1

declare dso_local i32 @wlr_seat_pointer_clear_focus(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
