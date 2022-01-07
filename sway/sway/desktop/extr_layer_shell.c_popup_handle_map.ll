; ModuleID = '/home/carl/AnghaBench/sway/sway/desktop/extr_layer_shell.c_popup_handle_map.c'
source_filename = "/home/carl/AnghaBench/sway/sway/desktop/extr_layer_shell.c_popup_handle_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_layer_popup = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.wl_listener = type { i32 }
%struct.sway_layer_surface = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.wlr_output* }
%struct.wlr_output = type { i32 }

@map = common dso_local global i32 0, align 4
@popup = common dso_local global %struct.sway_layer_popup* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl_listener*, i8*)* @popup_handle_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @popup_handle_map(%struct.wl_listener* %0, i8* %1) #0 {
  %3 = alloca %struct.wl_listener*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sway_layer_popup*, align 8
  %6 = alloca %struct.sway_layer_surface*, align 8
  %7 = alloca %struct.wlr_output*, align 8
  store %struct.wl_listener* %0, %struct.wl_listener** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.wl_listener*, %struct.wl_listener** %3, align 8
  %9 = load %struct.sway_layer_popup*, %struct.sway_layer_popup** %5, align 8
  %10 = ptrtoint %struct.sway_layer_popup* %9 to i32
  %11 = load i32, i32* @map, align 4
  %12 = call %struct.sway_layer_popup* @wl_container_of(%struct.wl_listener* %8, i32 %10, i32 %11)
  store %struct.sway_layer_popup* %12, %struct.sway_layer_popup** %5, align 8
  %13 = load %struct.sway_layer_popup*, %struct.sway_layer_popup** %5, align 8
  %14 = call %struct.sway_layer_surface* @popup_get_layer(%struct.sway_layer_popup* %13)
  store %struct.sway_layer_surface* %14, %struct.sway_layer_surface** %6, align 8
  %15 = load %struct.sway_layer_surface*, %struct.sway_layer_surface** %6, align 8
  %16 = getelementptr inbounds %struct.sway_layer_surface, %struct.sway_layer_surface* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.wlr_output*, %struct.wlr_output** %18, align 8
  store %struct.wlr_output* %19, %struct.wlr_output** %7, align 8
  %20 = load %struct.sway_layer_popup*, %struct.sway_layer_popup** %5, align 8
  %21 = getelementptr inbounds %struct.sway_layer_popup, %struct.sway_layer_popup* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.wlr_output*, %struct.wlr_output** %7, align 8
  %28 = call i32 @wlr_surface_send_enter(i32 %26, %struct.wlr_output* %27)
  %29 = load %struct.sway_layer_popup*, %struct.sway_layer_popup** %5, align 8
  %30 = call i32 @popup_damage(%struct.sway_layer_popup* %29, i32 1)
  ret void
}

declare dso_local %struct.sway_layer_popup* @wl_container_of(%struct.wl_listener*, i32, i32) #1

declare dso_local %struct.sway_layer_surface* @popup_get_layer(%struct.sway_layer_popup*) #1

declare dso_local i32 @wlr_surface_send_enter(i32, %struct.wlr_output*) #1

declare dso_local i32 @popup_damage(%struct.sway_layer_popup*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
