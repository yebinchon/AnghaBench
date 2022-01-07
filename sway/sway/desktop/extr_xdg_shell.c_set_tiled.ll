; ModuleID = '/home/carl/AnghaBench/sway/sway/desktop/extr_xdg_shell.c_set_tiled.c'
source_filename = "/home/carl/AnghaBench/sway/sway/desktop/extr_xdg_shell.c_set_tiled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_view = type { %struct.wlr_xdg_surface* }
%struct.wlr_xdg_surface = type { i32 }

@WLR_EDGE_NONE = common dso_local global i32 0, align 4
@WLR_EDGE_LEFT = common dso_local global i32 0, align 4
@WLR_EDGE_RIGHT = common dso_local global i32 0, align 4
@WLR_EDGE_TOP = common dso_local global i32 0, align 4
@WLR_EDGE_BOTTOM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sway_view*, i32)* @set_tiled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_tiled(%struct.sway_view* %0, i32 %1) #0 {
  %3 = alloca %struct.sway_view*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.wlr_xdg_surface*, align 8
  %6 = alloca i32, align 4
  store %struct.sway_view* %0, %struct.sway_view** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.sway_view*, %struct.sway_view** %3, align 8
  %8 = call i32* @xdg_shell_view_from_view(%struct.sway_view* %7)
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %30

11:                                               ; preds = %2
  %12 = load %struct.sway_view*, %struct.sway_view** %3, align 8
  %13 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %12, i32 0, i32 0
  %14 = load %struct.wlr_xdg_surface*, %struct.wlr_xdg_surface** %13, align 8
  store %struct.wlr_xdg_surface* %14, %struct.wlr_xdg_surface** %5, align 8
  %15 = load i32, i32* @WLR_EDGE_NONE, align 4
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %11
  %19 = load i32, i32* @WLR_EDGE_LEFT, align 4
  %20 = load i32, i32* @WLR_EDGE_RIGHT, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @WLR_EDGE_TOP, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @WLR_EDGE_BOTTOM, align 4
  %25 = or i32 %23, %24
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %18, %11
  %27 = load %struct.wlr_xdg_surface*, %struct.wlr_xdg_surface** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @wlr_xdg_toplevel_set_tiled(%struct.wlr_xdg_surface* %27, i32 %28)
  br label %30

30:                                               ; preds = %26, %10
  ret void
}

declare dso_local i32* @xdg_shell_view_from_view(%struct.sway_view*) #1

declare dso_local i32 @wlr_xdg_toplevel_set_tiled(%struct.wlr_xdg_surface*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
