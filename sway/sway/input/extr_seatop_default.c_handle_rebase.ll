; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_seatop_default.c_handle_rebase.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_seatop_default.c_handle_rebase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_seat = type { %struct.sway_cursor*, %struct.seatop_default_event* }
%struct.sway_cursor = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.seatop_default_event = type { i32 }
%struct.wlr_surface = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sway_seat*, i32)* @handle_rebase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_rebase(%struct.sway_seat* %0, i32 %1) #0 {
  %3 = alloca %struct.sway_seat*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.seatop_default_event*, align 8
  %6 = alloca %struct.sway_cursor*, align 8
  %7 = alloca %struct.wlr_surface*, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  store %struct.sway_seat* %0, %struct.sway_seat** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %11 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %10, i32 0, i32 1
  %12 = load %struct.seatop_default_event*, %struct.seatop_default_event** %11, align 8
  store %struct.seatop_default_event* %12, %struct.seatop_default_event** %5, align 8
  %13 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %14 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %13, i32 0, i32 0
  %15 = load %struct.sway_cursor*, %struct.sway_cursor** %14, align 8
  store %struct.sway_cursor* %15, %struct.sway_cursor** %6, align 8
  store %struct.wlr_surface* null, %struct.wlr_surface** %7, align 8
  store double 0.000000e+00, double* %8, align 8
  store double 0.000000e+00, double* %9, align 8
  %16 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %17 = load %struct.sway_cursor*, %struct.sway_cursor** %6, align 8
  %18 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.sway_cursor*, %struct.sway_cursor** %6, align 8
  %23 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @node_at_coords(%struct.sway_seat* %16, i32 %21, i32 %26, %struct.wlr_surface** %7, double* %8, double* %9)
  %28 = load %struct.seatop_default_event*, %struct.seatop_default_event** %5, align 8
  %29 = getelementptr inbounds %struct.seatop_default_event, %struct.seatop_default_event* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.sway_cursor*, %struct.sway_cursor** %6, align 8
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.seatop_default_event*, %struct.seatop_default_event** %5, align 8
  %33 = getelementptr inbounds %struct.seatop_default_event, %struct.seatop_default_event* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.wlr_surface*, %struct.wlr_surface** %7, align 8
  %36 = load double, double* %8, align 8
  %37 = load double, double* %9, align 8
  %38 = call i32 @cursor_do_rebase(%struct.sway_cursor* %30, i32 %31, i32 %34, %struct.wlr_surface* %35, double %36, double %37)
  ret void
}

declare dso_local i32 @node_at_coords(%struct.sway_seat*, i32, i32, %struct.wlr_surface**, double*, double*) #1

declare dso_local i32 @cursor_do_rebase(%struct.sway_cursor*, i32, i32, %struct.wlr_surface*, double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
