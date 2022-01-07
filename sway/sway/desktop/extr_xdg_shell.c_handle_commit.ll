; ModuleID = '/home/carl/AnghaBench/sway/sway/desktop/extr_xdg_shell.c_handle_commit.c'
source_filename = "/home/carl/AnghaBench/sway/sway/desktop/extr_xdg_shell.c_handle_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_xdg_shell_view = type { %struct.sway_view }
%struct.sway_view = type { %struct.wlr_box, %struct.sway_container*, %struct.wlr_xdg_surface* }
%struct.wlr_box = type { i64, i64 }
%struct.sway_container = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.wlr_xdg_surface = type { i32 }
%struct.wl_listener = type { i32 }

@commit = common dso_local global i32 0, align 4
@xdg_shell_view = common dso_local global %struct.sway_xdg_shell_view* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl_listener*, i8*)* @handle_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_commit(%struct.wl_listener* %0, i8* %1) #0 {
  %3 = alloca %struct.wl_listener*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sway_xdg_shell_view*, align 8
  %6 = alloca %struct.sway_view*, align 8
  %7 = alloca %struct.wlr_xdg_surface*, align 8
  %8 = alloca %struct.wlr_box, align 8
  %9 = alloca %struct.sway_container*, align 8
  store %struct.wl_listener* %0, %struct.wl_listener** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load %struct.wl_listener*, %struct.wl_listener** %3, align 8
  %11 = load %struct.sway_xdg_shell_view*, %struct.sway_xdg_shell_view** %5, align 8
  %12 = ptrtoint %struct.sway_xdg_shell_view* %11 to i32
  %13 = load i32, i32* @commit, align 4
  %14 = call %struct.sway_xdg_shell_view* @wl_container_of(%struct.wl_listener* %10, i32 %12, i32 %13)
  store %struct.sway_xdg_shell_view* %14, %struct.sway_xdg_shell_view** %5, align 8
  %15 = load %struct.sway_xdg_shell_view*, %struct.sway_xdg_shell_view** %5, align 8
  %16 = getelementptr inbounds %struct.sway_xdg_shell_view, %struct.sway_xdg_shell_view* %15, i32 0, i32 0
  store %struct.sway_view* %16, %struct.sway_view** %6, align 8
  %17 = load %struct.sway_view*, %struct.sway_view** %6, align 8
  %18 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %17, i32 0, i32 2
  %19 = load %struct.wlr_xdg_surface*, %struct.wlr_xdg_surface** %18, align 8
  store %struct.wlr_xdg_surface* %19, %struct.wlr_xdg_surface** %7, align 8
  %20 = load %struct.sway_view*, %struct.sway_view** %6, align 8
  %21 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %20, i32 0, i32 1
  %22 = load %struct.sway_container*, %struct.sway_container** %21, align 8
  %23 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %2
  %28 = load %struct.wlr_xdg_surface*, %struct.wlr_xdg_surface** %7, align 8
  %29 = load %struct.sway_view*, %struct.sway_view** %6, align 8
  %30 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %29, i32 0, i32 0
  %31 = call i32 @wlr_xdg_surface_get_geometry(%struct.wlr_xdg_surface* %28, %struct.wlr_box* %30)
  %32 = load %struct.sway_view*, %struct.sway_view** %6, align 8
  %33 = load %struct.wlr_xdg_surface*, %struct.wlr_xdg_surface** %7, align 8
  %34 = getelementptr inbounds %struct.wlr_xdg_surface, %struct.wlr_xdg_surface* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @transaction_notify_view_ready_by_serial(%struct.sway_view* %32, i32 %35)
  br label %76

37:                                               ; preds = %2
  %38 = load %struct.wlr_xdg_surface*, %struct.wlr_xdg_surface** %7, align 8
  %39 = call i32 @wlr_xdg_surface_get_geometry(%struct.wlr_xdg_surface* %38, %struct.wlr_box* %8)
  %40 = load %struct.sway_view*, %struct.sway_view** %6, align 8
  %41 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %40, i32 0, i32 1
  %42 = load %struct.sway_container*, %struct.sway_container** %41, align 8
  store %struct.sway_container* %42, %struct.sway_container** %9, align 8
  %43 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %8, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.sway_container*, %struct.sway_container** %9, align 8
  %46 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %44, %47
  br i1 %48, label %56, label %49

49:                                               ; preds = %37
  %50 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %8, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.sway_container*, %struct.sway_container** %9, align 8
  %53 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %51, %54
  br i1 %55, label %56, label %71

56:                                               ; preds = %49, %37
  %57 = load %struct.sway_view*, %struct.sway_view** %6, align 8
  %58 = call i32 @desktop_damage_view(%struct.sway_view* %57)
  %59 = load %struct.sway_view*, %struct.sway_view** %6, align 8
  %60 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %8, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %8, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @view_update_size(%struct.sway_view* %59, i64 %61, i64 %63)
  %65 = load %struct.sway_view*, %struct.sway_view** %6, align 8
  %66 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %65, i32 0, i32 0
  %67 = call i32 @memcpy(%struct.wlr_box* %66, %struct.wlr_box* %8, i32 16)
  %68 = load %struct.sway_view*, %struct.sway_view** %6, align 8
  %69 = call i32 @desktop_damage_view(%struct.sway_view* %68)
  %70 = call i32 (...) @transaction_commit_dirty()
  br label %75

71:                                               ; preds = %49
  %72 = load %struct.sway_view*, %struct.sway_view** %6, align 8
  %73 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %72, i32 0, i32 0
  %74 = call i32 @memcpy(%struct.wlr_box* %73, %struct.wlr_box* %8, i32 16)
  br label %75

75:                                               ; preds = %71, %56
  br label %76

76:                                               ; preds = %75, %27
  %77 = load %struct.sway_view*, %struct.sway_view** %6, align 8
  %78 = call i32 @view_damage_from(%struct.sway_view* %77)
  ret void
}

declare dso_local %struct.sway_xdg_shell_view* @wl_container_of(%struct.wl_listener*, i32, i32) #1

declare dso_local i32 @wlr_xdg_surface_get_geometry(%struct.wlr_xdg_surface*, %struct.wlr_box*) #1

declare dso_local i32 @transaction_notify_view_ready_by_serial(%struct.sway_view*, i32) #1

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
