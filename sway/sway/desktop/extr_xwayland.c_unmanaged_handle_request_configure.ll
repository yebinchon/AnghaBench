; ModuleID = '/home/carl/AnghaBench/sway/sway/desktop/extr_xwayland.c_unmanaged_handle_request_configure.c'
source_filename = "/home/carl/AnghaBench/sway/sway/desktop/extr_xwayland.c_unmanaged_handle_request_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_xwayland_unmanaged = type { %struct.wlr_xwayland_surface* }
%struct.wlr_xwayland_surface = type { i32 }
%struct.wl_listener = type { i32 }
%struct.wlr_xwayland_surface_configure_event = type { i32, i32, i32, i32 }

@request_configure = common dso_local global i32 0, align 4
@surface = common dso_local global %struct.sway_xwayland_unmanaged* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl_listener*, i8*)* @unmanaged_handle_request_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unmanaged_handle_request_configure(%struct.wl_listener* %0, i8* %1) #0 {
  %3 = alloca %struct.wl_listener*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sway_xwayland_unmanaged*, align 8
  %6 = alloca %struct.wlr_xwayland_surface*, align 8
  %7 = alloca %struct.wlr_xwayland_surface_configure_event*, align 8
  store %struct.wl_listener* %0, %struct.wl_listener** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.wl_listener*, %struct.wl_listener** %3, align 8
  %9 = load %struct.sway_xwayland_unmanaged*, %struct.sway_xwayland_unmanaged** %5, align 8
  %10 = ptrtoint %struct.sway_xwayland_unmanaged* %9 to i32
  %11 = load i32, i32* @request_configure, align 4
  %12 = call %struct.sway_xwayland_unmanaged* @wl_container_of(%struct.wl_listener* %8, i32 %10, i32 %11)
  store %struct.sway_xwayland_unmanaged* %12, %struct.sway_xwayland_unmanaged** %5, align 8
  %13 = load %struct.sway_xwayland_unmanaged*, %struct.sway_xwayland_unmanaged** %5, align 8
  %14 = getelementptr inbounds %struct.sway_xwayland_unmanaged, %struct.sway_xwayland_unmanaged* %13, i32 0, i32 0
  %15 = load %struct.wlr_xwayland_surface*, %struct.wlr_xwayland_surface** %14, align 8
  store %struct.wlr_xwayland_surface* %15, %struct.wlr_xwayland_surface** %6, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = bitcast i8* %16 to %struct.wlr_xwayland_surface_configure_event*
  store %struct.wlr_xwayland_surface_configure_event* %17, %struct.wlr_xwayland_surface_configure_event** %7, align 8
  %18 = load %struct.wlr_xwayland_surface*, %struct.wlr_xwayland_surface** %6, align 8
  %19 = load %struct.wlr_xwayland_surface_configure_event*, %struct.wlr_xwayland_surface_configure_event** %7, align 8
  %20 = getelementptr inbounds %struct.wlr_xwayland_surface_configure_event, %struct.wlr_xwayland_surface_configure_event* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.wlr_xwayland_surface_configure_event*, %struct.wlr_xwayland_surface_configure_event** %7, align 8
  %23 = getelementptr inbounds %struct.wlr_xwayland_surface_configure_event, %struct.wlr_xwayland_surface_configure_event* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.wlr_xwayland_surface_configure_event*, %struct.wlr_xwayland_surface_configure_event** %7, align 8
  %26 = getelementptr inbounds %struct.wlr_xwayland_surface_configure_event, %struct.wlr_xwayland_surface_configure_event* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.wlr_xwayland_surface_configure_event*, %struct.wlr_xwayland_surface_configure_event** %7, align 8
  %29 = getelementptr inbounds %struct.wlr_xwayland_surface_configure_event, %struct.wlr_xwayland_surface_configure_event* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @wlr_xwayland_surface_configure(%struct.wlr_xwayland_surface* %18, i32 %21, i32 %24, i32 %27, i32 %30)
  ret void
}

declare dso_local %struct.sway_xwayland_unmanaged* @wl_container_of(%struct.wl_listener*, i32, i32) #1

declare dso_local i32 @wlr_xwayland_surface_configure(%struct.wlr_xwayland_surface*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
