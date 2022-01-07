; ModuleID = '/home/carl/AnghaBench/sway/sway/desktop/extr_xwayland.c_unmanaged_handle_unmap.c'
source_filename = "/home/carl/AnghaBench/sway/sway/desktop/extr_xwayland.c_unmanaged_handle_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.sway_xwayland_unmanaged = type { %struct.TYPE_5__, i32, %struct.wlr_xwayland_surface* }
%struct.TYPE_5__ = type { i32 }
%struct.wlr_xwayland_surface = type { i32, i32, i32 }
%struct.wl_listener = type { i32 }
%struct.sway_seat = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.sway_node = type { i32 }

@unmap = common dso_local global i32 0, align 4
@root = common dso_local global %struct.TYPE_8__* null, align 8
@surface = common dso_local global %struct.sway_xwayland_unmanaged* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl_listener*, i8*)* @unmanaged_handle_unmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unmanaged_handle_unmap(%struct.wl_listener* %0, i8* %1) #0 {
  %3 = alloca %struct.wl_listener*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sway_xwayland_unmanaged*, align 8
  %6 = alloca %struct.wlr_xwayland_surface*, align 8
  %7 = alloca %struct.sway_seat*, align 8
  %8 = alloca %struct.sway_node*, align 8
  store %struct.wl_listener* %0, %struct.wl_listener** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.wl_listener*, %struct.wl_listener** %3, align 8
  %10 = load %struct.sway_xwayland_unmanaged*, %struct.sway_xwayland_unmanaged** %5, align 8
  %11 = ptrtoint %struct.sway_xwayland_unmanaged* %10 to i32
  %12 = load i32, i32* @unmap, align 4
  %13 = call %struct.sway_xwayland_unmanaged* @wl_container_of(%struct.wl_listener* %9, i32 %11, i32 %12)
  store %struct.sway_xwayland_unmanaged* %13, %struct.sway_xwayland_unmanaged** %5, align 8
  %14 = load %struct.sway_xwayland_unmanaged*, %struct.sway_xwayland_unmanaged** %5, align 8
  %15 = getelementptr inbounds %struct.sway_xwayland_unmanaged, %struct.sway_xwayland_unmanaged* %14, i32 0, i32 2
  %16 = load %struct.wlr_xwayland_surface*, %struct.wlr_xwayland_surface** %15, align 8
  store %struct.wlr_xwayland_surface* %16, %struct.wlr_xwayland_surface** %6, align 8
  %17 = load %struct.wlr_xwayland_surface*, %struct.wlr_xwayland_surface** %6, align 8
  %18 = getelementptr inbounds %struct.wlr_xwayland_surface, %struct.wlr_xwayland_surface* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.wlr_xwayland_surface*, %struct.wlr_xwayland_surface** %6, align 8
  %21 = getelementptr inbounds %struct.wlr_xwayland_surface, %struct.wlr_xwayland_surface* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.wlr_xwayland_surface*, %struct.wlr_xwayland_surface** %6, align 8
  %24 = getelementptr inbounds %struct.wlr_xwayland_surface, %struct.wlr_xwayland_surface* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @desktop_damage_surface(i32 %19, i32 %22, i32 %25, i32 1)
  %27 = load %struct.sway_xwayland_unmanaged*, %struct.sway_xwayland_unmanaged** %5, align 8
  %28 = getelementptr inbounds %struct.sway_xwayland_unmanaged, %struct.sway_xwayland_unmanaged* %27, i32 0, i32 1
  %29 = call i32 @wl_list_remove(i32* %28)
  %30 = load %struct.sway_xwayland_unmanaged*, %struct.sway_xwayland_unmanaged** %5, align 8
  %31 = getelementptr inbounds %struct.sway_xwayland_unmanaged, %struct.sway_xwayland_unmanaged* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = call i32 @wl_list_remove(i32* %32)
  %34 = call %struct.sway_seat* (...) @input_manager_current_seat()
  store %struct.sway_seat* %34, %struct.sway_seat** %7, align 8
  %35 = load %struct.sway_seat*, %struct.sway_seat** %7, align 8
  %36 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %35, i32 0, i32 0
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.wlr_xwayland_surface*, %struct.wlr_xwayland_surface** %6, align 8
  %42 = getelementptr inbounds %struct.wlr_xwayland_surface, %struct.wlr_xwayland_surface* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %40, %43
  br i1 %44, label %45, label %59

45:                                               ; preds = %2
  %46 = load %struct.sway_seat*, %struct.sway_seat** %7, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** @root, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = call %struct.sway_node* @seat_get_focus_inactive(%struct.sway_seat* %46, i32* %48)
  store %struct.sway_node* %49, %struct.sway_node** %8, align 8
  %50 = load %struct.sway_node*, %struct.sway_node** %8, align 8
  %51 = icmp ne %struct.sway_node* %50, null
  br i1 %51, label %52, label %58

52:                                               ; preds = %45
  %53 = load %struct.sway_seat*, %struct.sway_seat** %7, align 8
  %54 = call i32 @seat_set_focus(%struct.sway_seat* %53, %struct.sway_node* null)
  %55 = load %struct.sway_seat*, %struct.sway_seat** %7, align 8
  %56 = load %struct.sway_node*, %struct.sway_node** %8, align 8
  %57 = call i32 @seat_set_focus(%struct.sway_seat* %55, %struct.sway_node* %56)
  br label %58

58:                                               ; preds = %52, %45
  br label %59

59:                                               ; preds = %58, %2
  ret void
}

declare dso_local %struct.sway_xwayland_unmanaged* @wl_container_of(%struct.wl_listener*, i32, i32) #1

declare dso_local i32 @desktop_damage_surface(i32, i32, i32, i32) #1

declare dso_local i32 @wl_list_remove(i32*) #1

declare dso_local %struct.sway_seat* @input_manager_current_seat(...) #1

declare dso_local %struct.sway_node* @seat_get_focus_inactive(%struct.sway_seat*, i32*) #1

declare dso_local i32 @seat_set_focus(%struct.sway_seat*, %struct.sway_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
