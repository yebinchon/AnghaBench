; ModuleID = '/home/carl/AnghaBench/sway/sway/desktop/extr_xdg_shell.c_handle_request_resize.c'
source_filename = "/home/carl/AnghaBench/sway/sway/desktop/extr_xdg_shell.c_handle_request_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_xdg_shell_view = type { %struct.sway_view }
%struct.sway_view = type { i32 }
%struct.wl_listener = type { i32 }
%struct.wlr_xdg_toplevel_resize_event = type { i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.sway_seat* }
%struct.sway_seat = type { i64 }

@request_resize = common dso_local global i32 0, align 4
@xdg_shell_view = common dso_local global %struct.sway_xdg_shell_view* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl_listener*, i8*)* @handle_request_resize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_request_resize(%struct.wl_listener* %0, i8* %1) #0 {
  %3 = alloca %struct.wl_listener*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sway_xdg_shell_view*, align 8
  %6 = alloca %struct.sway_view*, align 8
  %7 = alloca %struct.wlr_xdg_toplevel_resize_event*, align 8
  %8 = alloca %struct.sway_seat*, align 8
  store %struct.wl_listener* %0, %struct.wl_listener** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.wl_listener*, %struct.wl_listener** %3, align 8
  %10 = load %struct.sway_xdg_shell_view*, %struct.sway_xdg_shell_view** %5, align 8
  %11 = ptrtoint %struct.sway_xdg_shell_view* %10 to i32
  %12 = load i32, i32* @request_resize, align 4
  %13 = call %struct.sway_xdg_shell_view* @wl_container_of(%struct.wl_listener* %9, i32 %11, i32 %12)
  store %struct.sway_xdg_shell_view* %13, %struct.sway_xdg_shell_view** %5, align 8
  %14 = load %struct.sway_xdg_shell_view*, %struct.sway_xdg_shell_view** %5, align 8
  %15 = getelementptr inbounds %struct.sway_xdg_shell_view, %struct.sway_xdg_shell_view* %14, i32 0, i32 0
  store %struct.sway_view* %15, %struct.sway_view** %6, align 8
  %16 = load %struct.sway_view*, %struct.sway_view** %6, align 8
  %17 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @container_is_floating(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  br label %48

22:                                               ; preds = %2
  %23 = load i8*, i8** %4, align 8
  %24 = bitcast i8* %23 to %struct.wlr_xdg_toplevel_resize_event*
  store %struct.wlr_xdg_toplevel_resize_event* %24, %struct.wlr_xdg_toplevel_resize_event** %7, align 8
  %25 = load %struct.wlr_xdg_toplevel_resize_event*, %struct.wlr_xdg_toplevel_resize_event** %7, align 8
  %26 = getelementptr inbounds %struct.wlr_xdg_toplevel_resize_event, %struct.wlr_xdg_toplevel_resize_event* %25, i32 0, i32 2
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load %struct.sway_seat*, %struct.sway_seat** %30, align 8
  store %struct.sway_seat* %31, %struct.sway_seat** %8, align 8
  %32 = load %struct.wlr_xdg_toplevel_resize_event*, %struct.wlr_xdg_toplevel_resize_event** %7, align 8
  %33 = getelementptr inbounds %struct.wlr_xdg_toplevel_resize_event, %struct.wlr_xdg_toplevel_resize_event* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.sway_seat*, %struct.sway_seat** %8, align 8
  %36 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %34, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %22
  %40 = load %struct.sway_seat*, %struct.sway_seat** %8, align 8
  %41 = load %struct.sway_view*, %struct.sway_view** %6, align 8
  %42 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.wlr_xdg_toplevel_resize_event*, %struct.wlr_xdg_toplevel_resize_event** %7, align 8
  %45 = getelementptr inbounds %struct.wlr_xdg_toplevel_resize_event, %struct.wlr_xdg_toplevel_resize_event* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @seatop_begin_resize_floating(%struct.sway_seat* %40, i32 %43, i32 %46)
  br label %48

48:                                               ; preds = %21, %39, %22
  ret void
}

declare dso_local %struct.sway_xdg_shell_view* @wl_container_of(%struct.wl_listener*, i32, i32) #1

declare dso_local i32 @container_is_floating(i32) #1

declare dso_local i32 @seatop_begin_resize_floating(%struct.sway_seat*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
