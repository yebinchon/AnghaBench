; ModuleID = '/home/carl/AnghaBench/sway/sway/desktop/extr_xwayland.c_configure.c'
source_filename = "/home/carl/AnghaBench/sway/sway/desktop/extr_xwayland.c_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_view = type { %struct.wlr_xwayland_surface* }
%struct.wlr_xwayland_surface = type { i32 }
%struct.sway_xwayland_view = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sway_view*, double, double, i32, i32)* @configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @configure(%struct.sway_view* %0, double %1, double %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sway_view*, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sway_xwayland_view*, align 8
  %13 = alloca %struct.wlr_xwayland_surface*, align 8
  store %struct.sway_view* %0, %struct.sway_view** %7, align 8
  store double %1, double* %8, align 8
  store double %2, double* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.sway_view*, %struct.sway_view** %7, align 8
  %15 = call %struct.sway_xwayland_view* @xwayland_view_from_view(%struct.sway_view* %14)
  store %struct.sway_xwayland_view* %15, %struct.sway_xwayland_view** %12, align 8
  %16 = load %struct.sway_xwayland_view*, %struct.sway_xwayland_view** %12, align 8
  %17 = icmp eq %struct.sway_xwayland_view* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %29

19:                                               ; preds = %5
  %20 = load %struct.sway_view*, %struct.sway_view** %7, align 8
  %21 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %20, i32 0, i32 0
  %22 = load %struct.wlr_xwayland_surface*, %struct.wlr_xwayland_surface** %21, align 8
  store %struct.wlr_xwayland_surface* %22, %struct.wlr_xwayland_surface** %13, align 8
  %23 = load %struct.wlr_xwayland_surface*, %struct.wlr_xwayland_surface** %13, align 8
  %24 = load double, double* %8, align 8
  %25 = load double, double* %9, align 8
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @wlr_xwayland_surface_configure(%struct.wlr_xwayland_surface* %23, double %24, double %25, i32 %26, i32 %27)
  store i32 0, i32* %6, align 4
  br label %29

29:                                               ; preds = %19, %18
  %30 = load i32, i32* %6, align 4
  ret i32 %30
}

declare dso_local %struct.sway_xwayland_view* @xwayland_view_from_view(%struct.sway_view*) #1

declare dso_local i32 @wlr_xwayland_surface_configure(%struct.wlr_xwayland_surface*, double, double, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
