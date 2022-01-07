; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_tablet.c_handle_pad_tablet_surface_destroy.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_tablet.c_handle_pad_tablet_surface_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_tablet_pad = type { i32*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.wl_listener = type { i32 }

@surface_destroy = common dso_local global i32 0, align 4
@tablet_pad = common dso_local global %struct.sway_tablet_pad* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl_listener*, i8*)* @handle_pad_tablet_surface_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_pad_tablet_surface_destroy(%struct.wl_listener* %0, i8* %1) #0 {
  %3 = alloca %struct.wl_listener*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sway_tablet_pad*, align 8
  store %struct.wl_listener* %0, %struct.wl_listener** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.wl_listener*, %struct.wl_listener** %3, align 8
  %7 = load %struct.sway_tablet_pad*, %struct.sway_tablet_pad** %5, align 8
  %8 = ptrtoint %struct.sway_tablet_pad* %7 to i32
  %9 = load i32, i32* @surface_destroy, align 4
  %10 = call %struct.sway_tablet_pad* @wl_container_of(%struct.wl_listener* %6, i32 %8, i32 %9)
  store %struct.sway_tablet_pad* %10, %struct.sway_tablet_pad** %5, align 8
  %11 = load %struct.sway_tablet_pad*, %struct.sway_tablet_pad** %5, align 8
  %12 = getelementptr inbounds %struct.sway_tablet_pad, %struct.sway_tablet_pad* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.sway_tablet_pad*, %struct.sway_tablet_pad** %5, align 8
  %15 = getelementptr inbounds %struct.sway_tablet_pad, %struct.sway_tablet_pad* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @wlr_tablet_v2_tablet_pad_notify_leave(i32 %13, i32* %16)
  %18 = load %struct.sway_tablet_pad*, %struct.sway_tablet_pad** %5, align 8
  %19 = getelementptr inbounds %struct.sway_tablet_pad, %struct.sway_tablet_pad* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i32 @wl_list_remove(i32* %20)
  %22 = load %struct.sway_tablet_pad*, %struct.sway_tablet_pad** %5, align 8
  %23 = getelementptr inbounds %struct.sway_tablet_pad, %struct.sway_tablet_pad* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i32 @wl_list_init(i32* %24)
  %26 = load %struct.sway_tablet_pad*, %struct.sway_tablet_pad** %5, align 8
  %27 = getelementptr inbounds %struct.sway_tablet_pad, %struct.sway_tablet_pad* %26, i32 0, i32 0
  store i32* null, i32** %27, align 8
  ret void
}

declare dso_local %struct.sway_tablet_pad* @wl_container_of(%struct.wl_listener*, i32, i32) #1

declare dso_local i32 @wlr_tablet_v2_tablet_pad_notify_leave(i32, i32*) #1

declare dso_local i32 @wl_list_remove(i32*) #1

declare dso_local i32 @wl_list_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
