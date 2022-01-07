; ModuleID = '/home/carl/AnghaBench/sway/sway/desktop/extr_xdg_shell.c_is_transient_for.c'
source_filename = "/home/carl/AnghaBench/sway/sway/desktop/extr_xdg_shell.c_is_transient_for.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_view = type { %struct.wlr_xdg_surface* }
%struct.wlr_xdg_surface = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.wlr_xdg_surface* }

@WLR_XDG_SURFACE_ROLE_TOPLEVEL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sway_view*, %struct.sway_view*)* @is_transient_for to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_transient_for(%struct.sway_view* %0, %struct.sway_view* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sway_view*, align 8
  %5 = alloca %struct.sway_view*, align 8
  %6 = alloca %struct.wlr_xdg_surface*, align 8
  store %struct.sway_view* %0, %struct.sway_view** %4, align 8
  store %struct.sway_view* %1, %struct.sway_view** %5, align 8
  %7 = load %struct.sway_view*, %struct.sway_view** %4, align 8
  %8 = call i32* @xdg_shell_view_from_view(%struct.sway_view* %7)
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %44

11:                                               ; preds = %2
  %12 = load %struct.sway_view*, %struct.sway_view** %4, align 8
  %13 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %12, i32 0, i32 0
  %14 = load %struct.wlr_xdg_surface*, %struct.wlr_xdg_surface** %13, align 8
  store %struct.wlr_xdg_surface* %14, %struct.wlr_xdg_surface** %6, align 8
  br label %15

15:                                               ; preds = %37, %11
  %16 = load %struct.wlr_xdg_surface*, %struct.wlr_xdg_surface** %6, align 8
  %17 = icmp ne %struct.wlr_xdg_surface* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %15
  %19 = load %struct.wlr_xdg_surface*, %struct.wlr_xdg_surface** %6, align 8
  %20 = getelementptr inbounds %struct.wlr_xdg_surface, %struct.wlr_xdg_surface* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @WLR_XDG_SURFACE_ROLE_TOPLEVEL, align 8
  %23 = icmp eq i64 %21, %22
  br label %24

24:                                               ; preds = %18, %15
  %25 = phi i1 [ false, %15 ], [ %23, %18 ]
  br i1 %25, label %26, label %43

26:                                               ; preds = %24
  %27 = load %struct.wlr_xdg_surface*, %struct.wlr_xdg_surface** %6, align 8
  %28 = getelementptr inbounds %struct.wlr_xdg_surface, %struct.wlr_xdg_surface* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load %struct.wlr_xdg_surface*, %struct.wlr_xdg_surface** %30, align 8
  %32 = load %struct.sway_view*, %struct.sway_view** %5, align 8
  %33 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %32, i32 0, i32 0
  %34 = load %struct.wlr_xdg_surface*, %struct.wlr_xdg_surface** %33, align 8
  %35 = icmp eq %struct.wlr_xdg_surface* %31, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %26
  store i32 1, i32* %3, align 4
  br label %44

37:                                               ; preds = %26
  %38 = load %struct.wlr_xdg_surface*, %struct.wlr_xdg_surface** %6, align 8
  %39 = getelementptr inbounds %struct.wlr_xdg_surface, %struct.wlr_xdg_surface* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load %struct.wlr_xdg_surface*, %struct.wlr_xdg_surface** %41, align 8
  store %struct.wlr_xdg_surface* %42, %struct.wlr_xdg_surface** %6, align 8
  br label %15

43:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %43, %36, %10
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32* @xdg_shell_view_from_view(%struct.sway_view*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
