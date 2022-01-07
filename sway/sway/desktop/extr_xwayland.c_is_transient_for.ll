; ModuleID = '/home/carl/AnghaBench/sway/sway/desktop/extr_xwayland.c_is_transient_for.c'
source_filename = "/home/carl/AnghaBench/sway/sway/desktop/extr_xwayland.c_is_transient_for.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_view = type { %struct.wlr_xwayland_surface* }
%struct.wlr_xwayland_surface = type { %struct.wlr_xwayland_surface* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sway_view*, %struct.sway_view*)* @is_transient_for to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_transient_for(%struct.sway_view* %0, %struct.sway_view* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sway_view*, align 8
  %5 = alloca %struct.sway_view*, align 8
  %6 = alloca %struct.wlr_xwayland_surface*, align 8
  store %struct.sway_view* %0, %struct.sway_view** %4, align 8
  store %struct.sway_view* %1, %struct.sway_view** %5, align 8
  %7 = load %struct.sway_view*, %struct.sway_view** %4, align 8
  %8 = call i32* @xwayland_view_from_view(%struct.sway_view* %7)
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %32

11:                                               ; preds = %2
  %12 = load %struct.sway_view*, %struct.sway_view** %4, align 8
  %13 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %12, i32 0, i32 0
  %14 = load %struct.wlr_xwayland_surface*, %struct.wlr_xwayland_surface** %13, align 8
  store %struct.wlr_xwayland_surface* %14, %struct.wlr_xwayland_surface** %6, align 8
  br label %15

15:                                               ; preds = %27, %11
  %16 = load %struct.wlr_xwayland_surface*, %struct.wlr_xwayland_surface** %6, align 8
  %17 = icmp ne %struct.wlr_xwayland_surface* %16, null
  br i1 %17, label %18, label %31

18:                                               ; preds = %15
  %19 = load %struct.wlr_xwayland_surface*, %struct.wlr_xwayland_surface** %6, align 8
  %20 = getelementptr inbounds %struct.wlr_xwayland_surface, %struct.wlr_xwayland_surface* %19, i32 0, i32 0
  %21 = load %struct.wlr_xwayland_surface*, %struct.wlr_xwayland_surface** %20, align 8
  %22 = load %struct.sway_view*, %struct.sway_view** %5, align 8
  %23 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %22, i32 0, i32 0
  %24 = load %struct.wlr_xwayland_surface*, %struct.wlr_xwayland_surface** %23, align 8
  %25 = icmp eq %struct.wlr_xwayland_surface* %21, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  store i32 1, i32* %3, align 4
  br label %32

27:                                               ; preds = %18
  %28 = load %struct.wlr_xwayland_surface*, %struct.wlr_xwayland_surface** %6, align 8
  %29 = getelementptr inbounds %struct.wlr_xwayland_surface, %struct.wlr_xwayland_surface* %28, i32 0, i32 0
  %30 = load %struct.wlr_xwayland_surface*, %struct.wlr_xwayland_surface** %29, align 8
  store %struct.wlr_xwayland_surface* %30, %struct.wlr_xwayland_surface** %6, align 8
  br label %15

31:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %31, %26, %10
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32* @xwayland_view_from_view(%struct.sway_view*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
