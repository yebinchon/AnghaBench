; ModuleID = '/home/carl/AnghaBench/sway/sway/desktop/extr_xwayland.c_handle_request_resize.c'
source_filename = "/home/carl/AnghaBench/sway/sway/desktop/extr_xwayland.c_handle_request_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_xwayland_view = type { %struct.sway_view }
%struct.sway_view = type { i32, %struct.wlr_xwayland_surface* }
%struct.wlr_xwayland_surface = type { i32 }
%struct.wl_listener = type { i32 }
%struct.wlr_xwayland_resize_event = type { i32 }
%struct.sway_seat = type { i32 }

@request_resize = common dso_local global i32 0, align 4
@xwayland_view = common dso_local global %struct.sway_xwayland_view* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl_listener*, i8*)* @handle_request_resize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_request_resize(%struct.wl_listener* %0, i8* %1) #0 {
  %3 = alloca %struct.wl_listener*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sway_xwayland_view*, align 8
  %6 = alloca %struct.sway_view*, align 8
  %7 = alloca %struct.wlr_xwayland_surface*, align 8
  %8 = alloca %struct.wlr_xwayland_resize_event*, align 8
  %9 = alloca %struct.sway_seat*, align 8
  store %struct.wl_listener* %0, %struct.wl_listener** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load %struct.wl_listener*, %struct.wl_listener** %3, align 8
  %11 = load %struct.sway_xwayland_view*, %struct.sway_xwayland_view** %5, align 8
  %12 = ptrtoint %struct.sway_xwayland_view* %11 to i32
  %13 = load i32, i32* @request_resize, align 4
  %14 = call %struct.sway_xwayland_view* @wl_container_of(%struct.wl_listener* %10, i32 %12, i32 %13)
  store %struct.sway_xwayland_view* %14, %struct.sway_xwayland_view** %5, align 8
  %15 = load %struct.sway_xwayland_view*, %struct.sway_xwayland_view** %5, align 8
  %16 = getelementptr inbounds %struct.sway_xwayland_view, %struct.sway_xwayland_view* %15, i32 0, i32 0
  store %struct.sway_view* %16, %struct.sway_view** %6, align 8
  %17 = load %struct.sway_view*, %struct.sway_view** %6, align 8
  %18 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %17, i32 0, i32 1
  %19 = load %struct.wlr_xwayland_surface*, %struct.wlr_xwayland_surface** %18, align 8
  store %struct.wlr_xwayland_surface* %19, %struct.wlr_xwayland_surface** %7, align 8
  %20 = load %struct.wlr_xwayland_surface*, %struct.wlr_xwayland_surface** %7, align 8
  %21 = getelementptr inbounds %struct.wlr_xwayland_surface, %struct.wlr_xwayland_surface* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %2
  br label %44

25:                                               ; preds = %2
  %26 = load %struct.sway_view*, %struct.sway_view** %6, align 8
  %27 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @container_is_floating(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  br label %44

32:                                               ; preds = %25
  %33 = load i8*, i8** %4, align 8
  %34 = bitcast i8* %33 to %struct.wlr_xwayland_resize_event*
  store %struct.wlr_xwayland_resize_event* %34, %struct.wlr_xwayland_resize_event** %8, align 8
  %35 = call %struct.sway_seat* (...) @input_manager_current_seat()
  store %struct.sway_seat* %35, %struct.sway_seat** %9, align 8
  %36 = load %struct.sway_seat*, %struct.sway_seat** %9, align 8
  %37 = load %struct.sway_view*, %struct.sway_view** %6, align 8
  %38 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.wlr_xwayland_resize_event*, %struct.wlr_xwayland_resize_event** %8, align 8
  %41 = getelementptr inbounds %struct.wlr_xwayland_resize_event, %struct.wlr_xwayland_resize_event* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @seatop_begin_resize_floating(%struct.sway_seat* %36, i32 %39, i32 %42)
  br label %44

44:                                               ; preds = %32, %31, %24
  ret void
}

declare dso_local %struct.sway_xwayland_view* @wl_container_of(%struct.wl_listener*, i32, i32) #1

declare dso_local i32 @container_is_floating(i32) #1

declare dso_local %struct.sway_seat* @input_manager_current_seat(...) #1

declare dso_local i32 @seatop_begin_resize_floating(%struct.sway_seat*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
