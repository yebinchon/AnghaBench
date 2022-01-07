; ModuleID = '/home/carl/AnghaBench/sway/sway/desktop/extr_layer_shell.c_popup_unconstrain.c'
source_filename = "/home/carl/AnghaBench/sway/sway/desktop/extr_layer_shell.c_popup_unconstrain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_layer_popup = type { %struct.wlr_xdg_popup* }
%struct.wlr_xdg_popup = type { i32 }
%struct.sway_layer_surface = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.sway_output* }
%struct.sway_output = type { i32, i32 }
%struct.wlr_box = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sway_layer_popup*)* @popup_unconstrain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @popup_unconstrain(%struct.sway_layer_popup* %0) #0 {
  %2 = alloca %struct.sway_layer_popup*, align 8
  %3 = alloca %struct.sway_layer_surface*, align 8
  %4 = alloca %struct.wlr_xdg_popup*, align 8
  %5 = alloca %struct.sway_output*, align 8
  %6 = alloca %struct.wlr_box, align 4
  store %struct.sway_layer_popup* %0, %struct.sway_layer_popup** %2, align 8
  %7 = load %struct.sway_layer_popup*, %struct.sway_layer_popup** %2, align 8
  %8 = call %struct.sway_layer_surface* @popup_get_layer(%struct.sway_layer_popup* %7)
  store %struct.sway_layer_surface* %8, %struct.sway_layer_surface** %3, align 8
  %9 = load %struct.sway_layer_popup*, %struct.sway_layer_popup** %2, align 8
  %10 = getelementptr inbounds %struct.sway_layer_popup, %struct.sway_layer_popup* %9, i32 0, i32 0
  %11 = load %struct.wlr_xdg_popup*, %struct.wlr_xdg_popup** %10, align 8
  store %struct.wlr_xdg_popup* %11, %struct.wlr_xdg_popup** %4, align 8
  %12 = load %struct.sway_layer_surface*, %struct.sway_layer_surface** %3, align 8
  %13 = getelementptr inbounds %struct.sway_layer_surface, %struct.sway_layer_surface* %12, i32 0, i32 1
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.sway_output*, %struct.sway_output** %17, align 8
  store %struct.sway_output* %18, %struct.sway_output** %5, align 8
  %19 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %6, i32 0, i32 0
  %20 = load %struct.sway_output*, %struct.sway_output** %5, align 8
  %21 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %19, align 4
  %23 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %6, i32 0, i32 1
  %24 = load %struct.sway_output*, %struct.sway_output** %5, align 8
  %25 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %23, align 4
  %27 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %6, i32 0, i32 2
  %28 = load %struct.sway_layer_surface*, %struct.sway_layer_surface** %3, align 8
  %29 = getelementptr inbounds %struct.sway_layer_surface, %struct.sway_layer_surface* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %27, align 4
  %33 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %6, i32 0, i32 3
  %34 = load %struct.sway_layer_surface*, %struct.sway_layer_surface** %3, align 8
  %35 = getelementptr inbounds %struct.sway_layer_surface, %struct.sway_layer_surface* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %33, align 4
  %39 = load %struct.wlr_xdg_popup*, %struct.wlr_xdg_popup** %4, align 8
  %40 = call i32 @wlr_xdg_popup_unconstrain_from_box(%struct.wlr_xdg_popup* %39, %struct.wlr_box* %6)
  ret void
}

declare dso_local %struct.sway_layer_surface* @popup_get_layer(%struct.sway_layer_popup*) #1

declare dso_local i32 @wlr_xdg_popup_unconstrain_from_box(%struct.wlr_xdg_popup*, %struct.wlr_box*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
