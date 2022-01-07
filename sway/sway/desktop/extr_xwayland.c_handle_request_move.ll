; ModuleID = '/home/carl/AnghaBench/sway/sway/desktop/extr_xwayland.c_handle_request_move.c'
source_filename = "/home/carl/AnghaBench/sway/sway/desktop/extr_xwayland.c_handle_request_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_xwayland_view = type { %struct.sway_view }
%struct.sway_view = type { i32, %struct.wlr_xwayland_surface* }
%struct.wlr_xwayland_surface = type { i32 }
%struct.wl_listener = type { i32 }
%struct.sway_seat = type { i32 }

@request_move = common dso_local global i32 0, align 4
@xwayland_view = common dso_local global %struct.sway_xwayland_view* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl_listener*, i8*)* @handle_request_move to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_request_move(%struct.wl_listener* %0, i8* %1) #0 {
  %3 = alloca %struct.wl_listener*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sway_xwayland_view*, align 8
  %6 = alloca %struct.sway_view*, align 8
  %7 = alloca %struct.wlr_xwayland_surface*, align 8
  %8 = alloca %struct.sway_seat*, align 8
  store %struct.wl_listener* %0, %struct.wl_listener** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.wl_listener*, %struct.wl_listener** %3, align 8
  %10 = load %struct.sway_xwayland_view*, %struct.sway_xwayland_view** %5, align 8
  %11 = ptrtoint %struct.sway_xwayland_view* %10 to i32
  %12 = load i32, i32* @request_move, align 4
  %13 = call %struct.sway_xwayland_view* @wl_container_of(%struct.wl_listener* %9, i32 %11, i32 %12)
  store %struct.sway_xwayland_view* %13, %struct.sway_xwayland_view** %5, align 8
  %14 = load %struct.sway_xwayland_view*, %struct.sway_xwayland_view** %5, align 8
  %15 = getelementptr inbounds %struct.sway_xwayland_view, %struct.sway_xwayland_view* %14, i32 0, i32 0
  store %struct.sway_view* %15, %struct.sway_view** %6, align 8
  %16 = load %struct.sway_view*, %struct.sway_view** %6, align 8
  %17 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %16, i32 0, i32 1
  %18 = load %struct.wlr_xwayland_surface*, %struct.wlr_xwayland_surface** %17, align 8
  store %struct.wlr_xwayland_surface* %18, %struct.wlr_xwayland_surface** %7, align 8
  %19 = load %struct.wlr_xwayland_surface*, %struct.wlr_xwayland_surface** %7, align 8
  %20 = getelementptr inbounds %struct.wlr_xwayland_surface, %struct.wlr_xwayland_surface* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %2
  br label %38

24:                                               ; preds = %2
  %25 = load %struct.sway_view*, %struct.sway_view** %6, align 8
  %26 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @container_is_floating(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  br label %38

31:                                               ; preds = %24
  %32 = call %struct.sway_seat* (...) @input_manager_current_seat()
  store %struct.sway_seat* %32, %struct.sway_seat** %8, align 8
  %33 = load %struct.sway_seat*, %struct.sway_seat** %8, align 8
  %34 = load %struct.sway_view*, %struct.sway_view** %6, align 8
  %35 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @seatop_begin_move_floating(%struct.sway_seat* %33, i32 %36)
  br label %38

38:                                               ; preds = %31, %30, %23
  ret void
}

declare dso_local %struct.sway_xwayland_view* @wl_container_of(%struct.wl_listener*, i32, i32) #1

declare dso_local i32 @container_is_floating(i32) #1

declare dso_local %struct.sway_seat* @input_manager_current_seat(...) #1

declare dso_local i32 @seatop_begin_move_floating(%struct.sway_seat*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
