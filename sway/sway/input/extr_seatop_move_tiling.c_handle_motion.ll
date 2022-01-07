; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_seatop_move_tiling.c_handle_motion.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_seatop_move_tiling.c_handle_motion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_seat = type { %struct.seatop_move_tiling_event* }
%struct.seatop_move_tiling_event = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sway_seat*, i32, double, double)* @handle_motion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_motion(%struct.sway_seat* %0, i32 %1, double %2, double %3) #0 {
  %5 = alloca %struct.sway_seat*, align 8
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca %struct.seatop_move_tiling_event*, align 8
  store %struct.sway_seat* %0, %struct.sway_seat** %5, align 8
  store i32 %1, i32* %6, align 4
  store double %2, double* %7, align 8
  store double %3, double* %8, align 8
  %10 = load %struct.sway_seat*, %struct.sway_seat** %5, align 8
  %11 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %10, i32 0, i32 0
  %12 = load %struct.seatop_move_tiling_event*, %struct.seatop_move_tiling_event** %11, align 8
  store %struct.seatop_move_tiling_event* %12, %struct.seatop_move_tiling_event** %9, align 8
  %13 = load %struct.seatop_move_tiling_event*, %struct.seatop_move_tiling_event** %9, align 8
  %14 = getelementptr inbounds %struct.seatop_move_tiling_event, %struct.seatop_move_tiling_event* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load %struct.sway_seat*, %struct.sway_seat** %5, align 8
  %19 = call i32 @handle_motion_postthreshold(%struct.sway_seat* %18)
  br label %23

20:                                               ; preds = %4
  %21 = load %struct.sway_seat*, %struct.sway_seat** %5, align 8
  %22 = call i32 @handle_motion_prethreshold(%struct.sway_seat* %21)
  br label %23

23:                                               ; preds = %20, %17
  ret void
}

declare dso_local i32 @handle_motion_postthreshold(%struct.sway_seat*) #1

declare dso_local i32 @handle_motion_prethreshold(%struct.sway_seat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
