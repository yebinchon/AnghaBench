; ModuleID = '/home/carl/AnghaBench/sway/sway/desktop/extr_xwayland.c_unmanaged_handle_map.c'
source_filename = "/home/carl/AnghaBench/sway/sway/desktop/extr_xwayland.c_unmanaged_handle_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.wlr_xwayland* }
%struct.wlr_xwayland = type { i32 }
%struct.sway_xwayland_unmanaged = type { i32, i32, %struct.TYPE_12__, i32, %struct.wlr_xwayland_surface* }
%struct.TYPE_12__ = type { i32 }
%struct.wlr_xwayland_surface = type { %struct.TYPE_14__*, i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.wl_listener = type { i32 }
%struct.sway_seat = type { i32 }

@map = common dso_local global i32 0, align 4
@root = common dso_local global %struct.TYPE_15__* null, align 8
@unmanaged_handle_commit = common dso_local global i32 0, align 4
@server = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@surface = common dso_local global %struct.sway_xwayland_unmanaged* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl_listener*, i8*)* @unmanaged_handle_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unmanaged_handle_map(%struct.wl_listener* %0, i8* %1) #0 {
  %3 = alloca %struct.wl_listener*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sway_xwayland_unmanaged*, align 8
  %6 = alloca %struct.wlr_xwayland_surface*, align 8
  %7 = alloca %struct.sway_seat*, align 8
  %8 = alloca %struct.wlr_xwayland*, align 8
  store %struct.wl_listener* %0, %struct.wl_listener** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.wl_listener*, %struct.wl_listener** %3, align 8
  %10 = load %struct.sway_xwayland_unmanaged*, %struct.sway_xwayland_unmanaged** %5, align 8
  %11 = ptrtoint %struct.sway_xwayland_unmanaged* %10 to i32
  %12 = load i32, i32* @map, align 4
  %13 = call %struct.sway_xwayland_unmanaged* @wl_container_of(%struct.wl_listener* %9, i32 %11, i32 %12)
  store %struct.sway_xwayland_unmanaged* %13, %struct.sway_xwayland_unmanaged** %5, align 8
  %14 = load %struct.sway_xwayland_unmanaged*, %struct.sway_xwayland_unmanaged** %5, align 8
  %15 = getelementptr inbounds %struct.sway_xwayland_unmanaged, %struct.sway_xwayland_unmanaged* %14, i32 0, i32 4
  %16 = load %struct.wlr_xwayland_surface*, %struct.wlr_xwayland_surface** %15, align 8
  store %struct.wlr_xwayland_surface* %16, %struct.wlr_xwayland_surface** %6, align 8
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** @root, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.sway_xwayland_unmanaged*, %struct.sway_xwayland_unmanaged** %5, align 8
  %22 = getelementptr inbounds %struct.sway_xwayland_unmanaged, %struct.sway_xwayland_unmanaged* %21, i32 0, i32 3
  %23 = call i32 @wl_list_insert(i32 %20, i32* %22)
  %24 = load %struct.wlr_xwayland_surface*, %struct.wlr_xwayland_surface** %6, align 8
  %25 = getelementptr inbounds %struct.wlr_xwayland_surface, %struct.wlr_xwayland_surface* %24, i32 0, i32 0
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load %struct.sway_xwayland_unmanaged*, %struct.sway_xwayland_unmanaged** %5, align 8
  %30 = getelementptr inbounds %struct.sway_xwayland_unmanaged, %struct.sway_xwayland_unmanaged* %29, i32 0, i32 2
  %31 = call i32 @wl_signal_add(i32* %28, %struct.TYPE_12__* %30)
  %32 = load i32, i32* @unmanaged_handle_commit, align 4
  %33 = load %struct.sway_xwayland_unmanaged*, %struct.sway_xwayland_unmanaged** %5, align 8
  %34 = getelementptr inbounds %struct.sway_xwayland_unmanaged, %struct.sway_xwayland_unmanaged* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 8
  %36 = load %struct.wlr_xwayland_surface*, %struct.wlr_xwayland_surface** %6, align 8
  %37 = getelementptr inbounds %struct.wlr_xwayland_surface, %struct.wlr_xwayland_surface* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.sway_xwayland_unmanaged*, %struct.sway_xwayland_unmanaged** %5, align 8
  %40 = getelementptr inbounds %struct.sway_xwayland_unmanaged, %struct.sway_xwayland_unmanaged* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.wlr_xwayland_surface*, %struct.wlr_xwayland_surface** %6, align 8
  %42 = getelementptr inbounds %struct.wlr_xwayland_surface, %struct.wlr_xwayland_surface* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.sway_xwayland_unmanaged*, %struct.sway_xwayland_unmanaged** %5, align 8
  %45 = getelementptr inbounds %struct.sway_xwayland_unmanaged, %struct.sway_xwayland_unmanaged* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.wlr_xwayland_surface*, %struct.wlr_xwayland_surface** %6, align 8
  %47 = getelementptr inbounds %struct.wlr_xwayland_surface, %struct.wlr_xwayland_surface* %46, i32 0, i32 0
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %47, align 8
  %49 = load %struct.sway_xwayland_unmanaged*, %struct.sway_xwayland_unmanaged** %5, align 8
  %50 = getelementptr inbounds %struct.sway_xwayland_unmanaged, %struct.sway_xwayland_unmanaged* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.sway_xwayland_unmanaged*, %struct.sway_xwayland_unmanaged** %5, align 8
  %53 = getelementptr inbounds %struct.sway_xwayland_unmanaged, %struct.sway_xwayland_unmanaged* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @desktop_damage_surface(%struct.TYPE_14__* %48, i32 %51, i32 %54, i32 1)
  %56 = load %struct.wlr_xwayland_surface*, %struct.wlr_xwayland_surface** %6, align 8
  %57 = call i64 @wlr_xwayland_or_surface_wants_focus(%struct.wlr_xwayland_surface* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %72

59:                                               ; preds = %2
  %60 = call %struct.sway_seat* (...) @input_manager_current_seat()
  store %struct.sway_seat* %60, %struct.sway_seat** %7, align 8
  %61 = load %struct.wlr_xwayland*, %struct.wlr_xwayland** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @server, i32 0, i32 0, i32 0), align 8
  store %struct.wlr_xwayland* %61, %struct.wlr_xwayland** %8, align 8
  %62 = load %struct.wlr_xwayland*, %struct.wlr_xwayland** %8, align 8
  %63 = load %struct.sway_seat*, %struct.sway_seat** %7, align 8
  %64 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @wlr_xwayland_set_seat(%struct.wlr_xwayland* %62, i32 %65)
  %67 = load %struct.sway_seat*, %struct.sway_seat** %7, align 8
  %68 = load %struct.wlr_xwayland_surface*, %struct.wlr_xwayland_surface** %6, align 8
  %69 = getelementptr inbounds %struct.wlr_xwayland_surface, %struct.wlr_xwayland_surface* %68, i32 0, i32 0
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %69, align 8
  %71 = call i32 @seat_set_focus_surface(%struct.sway_seat* %67, %struct.TYPE_14__* %70, i32 0)
  br label %72

72:                                               ; preds = %59, %2
  ret void
}

declare dso_local %struct.sway_xwayland_unmanaged* @wl_container_of(%struct.wl_listener*, i32, i32) #1

declare dso_local i32 @wl_list_insert(i32, i32*) #1

declare dso_local i32 @wl_signal_add(i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @desktop_damage_surface(%struct.TYPE_14__*, i32, i32, i32) #1

declare dso_local i64 @wlr_xwayland_or_surface_wants_focus(%struct.wlr_xwayland_surface*) #1

declare dso_local %struct.sway_seat* @input_manager_current_seat(...) #1

declare dso_local i32 @wlr_xwayland_set_seat(%struct.wlr_xwayland*, i32) #1

declare dso_local i32 @seat_set_focus_surface(%struct.sway_seat*, %struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
