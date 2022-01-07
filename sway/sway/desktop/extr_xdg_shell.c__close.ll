; ModuleID = '/home/carl/AnghaBench/sway/sway/desktop/extr_xdg_shell.c__close.c'
source_filename = "/home/carl/AnghaBench/sway/sway/desktop/extr_xdg_shell.c__close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_view = type { %struct.wlr_xdg_surface* }
%struct.wlr_xdg_surface = type { i64, i64 }

@WLR_XDG_SURFACE_ROLE_TOPLEVEL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sway_view*)* @_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_close(%struct.sway_view* %0) #0 {
  %2 = alloca %struct.sway_view*, align 8
  %3 = alloca %struct.wlr_xdg_surface*, align 8
  store %struct.sway_view* %0, %struct.sway_view** %2, align 8
  %4 = load %struct.sway_view*, %struct.sway_view** %2, align 8
  %5 = call i32* @xdg_shell_view_from_view(%struct.sway_view* %4)
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %25

8:                                                ; preds = %1
  %9 = load %struct.sway_view*, %struct.sway_view** %2, align 8
  %10 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %9, i32 0, i32 0
  %11 = load %struct.wlr_xdg_surface*, %struct.wlr_xdg_surface** %10, align 8
  store %struct.wlr_xdg_surface* %11, %struct.wlr_xdg_surface** %3, align 8
  %12 = load %struct.wlr_xdg_surface*, %struct.wlr_xdg_surface** %3, align 8
  %13 = getelementptr inbounds %struct.wlr_xdg_surface, %struct.wlr_xdg_surface* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @WLR_XDG_SURFACE_ROLE_TOPLEVEL, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %8
  %18 = load %struct.wlr_xdg_surface*, %struct.wlr_xdg_surface** %3, align 8
  %19 = getelementptr inbounds %struct.wlr_xdg_surface, %struct.wlr_xdg_surface* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load %struct.wlr_xdg_surface*, %struct.wlr_xdg_surface** %3, align 8
  %24 = call i32 @wlr_xdg_toplevel_send_close(%struct.wlr_xdg_surface* %23)
  br label %25

25:                                               ; preds = %7, %22, %17, %8
  ret void
}

declare dso_local i32* @xdg_shell_view_from_view(%struct.sway_view*) #1

declare dso_local i32 @wlr_xdg_toplevel_send_close(%struct.wlr_xdg_surface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
