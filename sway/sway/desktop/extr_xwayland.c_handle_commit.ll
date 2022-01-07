; ModuleID = '/home/carl/AnghaBench/sway/sway/desktop/extr_xwayland.c_handle_commit.c'
source_filename = "/home/carl/AnghaBench/sway/sway/desktop/extr_xwayland.c_handle_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_xwayland_view = type { %struct.sway_view }
%struct.sway_view = type { %struct.wlr_box, %struct.sway_container*, %struct.wlr_xwayland_surface* }
%struct.wlr_box = type { i64, i64 }
%struct.sway_container = type { i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.wlr_xwayland_surface = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.wlr_surface_state }
%struct.wlr_surface_state = type { i32, i32 }
%struct.wl_listener = type { i32 }

@commit = common dso_local global i32 0, align 4
@xwayland_view = common dso_local global %struct.sway_xwayland_view* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl_listener*, i8*)* @handle_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_commit(%struct.wl_listener* %0, i8* %1) #0 {
  %3 = alloca %struct.wl_listener*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sway_xwayland_view*, align 8
  %6 = alloca %struct.sway_view*, align 8
  %7 = alloca %struct.wlr_xwayland_surface*, align 8
  %8 = alloca %struct.wlr_surface_state*, align 8
  %9 = alloca %struct.wlr_box, align 8
  %10 = alloca %struct.sway_container*, align 8
  store %struct.wl_listener* %0, %struct.wl_listener** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load %struct.wl_listener*, %struct.wl_listener** %3, align 8
  %12 = load %struct.sway_xwayland_view*, %struct.sway_xwayland_view** %5, align 8
  %13 = ptrtoint %struct.sway_xwayland_view* %12 to i32
  %14 = load i32, i32* @commit, align 4
  %15 = call %struct.sway_xwayland_view* @wl_container_of(%struct.wl_listener* %11, i32 %13, i32 %14)
  store %struct.sway_xwayland_view* %15, %struct.sway_xwayland_view** %5, align 8
  %16 = load %struct.sway_xwayland_view*, %struct.sway_xwayland_view** %5, align 8
  %17 = getelementptr inbounds %struct.sway_xwayland_view, %struct.sway_xwayland_view* %16, i32 0, i32 0
  store %struct.sway_view* %17, %struct.sway_view** %6, align 8
  %18 = load %struct.sway_view*, %struct.sway_view** %6, align 8
  %19 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %18, i32 0, i32 2
  %20 = load %struct.wlr_xwayland_surface*, %struct.wlr_xwayland_surface** %19, align 8
  store %struct.wlr_xwayland_surface* %20, %struct.wlr_xwayland_surface** %7, align 8
  %21 = load %struct.wlr_xwayland_surface*, %struct.wlr_xwayland_surface** %7, align 8
  %22 = getelementptr inbounds %struct.wlr_xwayland_surface, %struct.wlr_xwayland_surface* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store %struct.wlr_surface_state* %24, %struct.wlr_surface_state** %8, align 8
  %25 = load %struct.sway_view*, %struct.sway_view** %6, align 8
  %26 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %25, i32 0, i32 1
  %27 = load %struct.sway_container*, %struct.sway_container** %26, align 8
  %28 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %2
  %33 = load %struct.sway_view*, %struct.sway_view** %6, align 8
  %34 = load %struct.sway_view*, %struct.sway_view** %6, align 8
  %35 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %34, i32 0, i32 0
  %36 = call i32 @get_geometry(%struct.sway_view* %33, %struct.wlr_box* %35)
  %37 = load %struct.sway_view*, %struct.sway_view** %6, align 8
  %38 = load %struct.wlr_surface_state*, %struct.wlr_surface_state** %8, align 8
  %39 = getelementptr inbounds %struct.wlr_surface_state, %struct.wlr_surface_state* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.wlr_surface_state*, %struct.wlr_surface_state** %8, align 8
  %42 = getelementptr inbounds %struct.wlr_surface_state, %struct.wlr_surface_state* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @transaction_notify_view_ready_by_size(%struct.sway_view* %37, i32 %40, i32 %43)
  br label %84

45:                                               ; preds = %2
  %46 = load %struct.sway_view*, %struct.sway_view** %6, align 8
  %47 = call i32 @get_geometry(%struct.sway_view* %46, %struct.wlr_box* %9)
  %48 = load %struct.sway_view*, %struct.sway_view** %6, align 8
  %49 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %48, i32 0, i32 1
  %50 = load %struct.sway_container*, %struct.sway_container** %49, align 8
  store %struct.sway_container* %50, %struct.sway_container** %10, align 8
  %51 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %9, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.sway_container*, %struct.sway_container** %10, align 8
  %54 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %52, %55
  br i1 %56, label %64, label %57

57:                                               ; preds = %45
  %58 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %9, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.sway_container*, %struct.sway_container** %10, align 8
  %61 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %59, %62
  br i1 %63, label %64, label %79

64:                                               ; preds = %57, %45
  %65 = load %struct.sway_view*, %struct.sway_view** %6, align 8
  %66 = call i32 @desktop_damage_view(%struct.sway_view* %65)
  %67 = load %struct.sway_view*, %struct.sway_view** %6, align 8
  %68 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %9, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %9, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @view_update_size(%struct.sway_view* %67, i64 %69, i64 %71)
  %73 = load %struct.sway_view*, %struct.sway_view** %6, align 8
  %74 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %73, i32 0, i32 0
  %75 = call i32 @memcpy(%struct.wlr_box* %74, %struct.wlr_box* %9, i32 16)
  %76 = load %struct.sway_view*, %struct.sway_view** %6, align 8
  %77 = call i32 @desktop_damage_view(%struct.sway_view* %76)
  %78 = call i32 (...) @transaction_commit_dirty()
  br label %83

79:                                               ; preds = %57
  %80 = load %struct.sway_view*, %struct.sway_view** %6, align 8
  %81 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %80, i32 0, i32 0
  %82 = call i32 @memcpy(%struct.wlr_box* %81, %struct.wlr_box* %9, i32 16)
  br label %83

83:                                               ; preds = %79, %64
  br label %84

84:                                               ; preds = %83, %32
  %85 = load %struct.sway_view*, %struct.sway_view** %6, align 8
  %86 = call i32 @view_damage_from(%struct.sway_view* %85)
  ret void
}

declare dso_local %struct.sway_xwayland_view* @wl_container_of(%struct.wl_listener*, i32, i32) #1

declare dso_local i32 @get_geometry(%struct.sway_view*, %struct.wlr_box*) #1

declare dso_local i32 @transaction_notify_view_ready_by_size(%struct.sway_view*, i32, i32) #1

declare dso_local i32 @desktop_damage_view(%struct.sway_view*) #1

declare dso_local i32 @view_update_size(%struct.sway_view*, i64, i64) #1

declare dso_local i32 @memcpy(%struct.wlr_box*, %struct.wlr_box*, i32) #1

declare dso_local i32 @transaction_commit_dirty(...) #1

declare dso_local i32 @view_damage_from(%struct.sway_view*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
