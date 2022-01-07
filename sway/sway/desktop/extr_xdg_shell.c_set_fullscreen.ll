; ModuleID = '/home/carl/AnghaBench/sway/sway/desktop/extr_xdg_shell.c_set_fullscreen.c'
source_filename = "/home/carl/AnghaBench/sway/sway/desktop/extr_xdg_shell.c_set_fullscreen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_view = type { %struct.wlr_xdg_surface* }
%struct.wlr_xdg_surface = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sway_view*, i32)* @set_fullscreen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_fullscreen(%struct.sway_view* %0, i32 %1) #0 {
  %3 = alloca %struct.sway_view*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.wlr_xdg_surface*, align 8
  store %struct.sway_view* %0, %struct.sway_view** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.sway_view*, %struct.sway_view** %3, align 8
  %7 = call i32* @xdg_shell_view_from_view(%struct.sway_view* %6)
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %17

10:                                               ; preds = %2
  %11 = load %struct.sway_view*, %struct.sway_view** %3, align 8
  %12 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %11, i32 0, i32 0
  %13 = load %struct.wlr_xdg_surface*, %struct.wlr_xdg_surface** %12, align 8
  store %struct.wlr_xdg_surface* %13, %struct.wlr_xdg_surface** %5, align 8
  %14 = load %struct.wlr_xdg_surface*, %struct.wlr_xdg_surface** %5, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @wlr_xdg_toplevel_set_fullscreen(%struct.wlr_xdg_surface* %14, i32 %15)
  br label %17

17:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32* @xdg_shell_view_from_view(%struct.sway_view*) #1

declare dso_local i32 @wlr_xdg_toplevel_set_fullscreen(%struct.wlr_xdg_surface*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
