; ModuleID = '/home/carl/AnghaBench/sway/sway/desktop/extr_xwayland.c_handle_map.c'
source_filename = "/home/carl/AnghaBench/sway/sway/desktop/extr_xwayland.c_handle_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_xwayland_view = type { %struct.TYPE_5__, i32, %struct.sway_view }
%struct.TYPE_5__ = type { i32 }
%struct.sway_view = type { i32, i32 }
%struct.wl_listener = type { i32 }
%struct.wlr_xwayland_surface = type { i32, %struct.TYPE_6__*, i32, i32, i32*, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.sway_xwayland_unmanaged = type { i32 }

@map = common dso_local global i32 0, align 4
@handle_commit = common dso_local global i32 0, align 4
@xwayland_view = common dso_local global %struct.sway_xwayland_view* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl_listener*, i8*)* @handle_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_map(%struct.wl_listener* %0, i8* %1) #0 {
  %3 = alloca %struct.wl_listener*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sway_xwayland_view*, align 8
  %6 = alloca %struct.wlr_xwayland_surface*, align 8
  %7 = alloca %struct.sway_view*, align 8
  %8 = alloca %struct.sway_xwayland_unmanaged*, align 8
  store %struct.wl_listener* %0, %struct.wl_listener** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.wl_listener*, %struct.wl_listener** %3, align 8
  %10 = load %struct.sway_xwayland_view*, %struct.sway_xwayland_view** %5, align 8
  %11 = ptrtoint %struct.sway_xwayland_view* %10 to i32
  %12 = load i32, i32* @map, align 4
  %13 = call %struct.sway_xwayland_view* @wl_container_of(%struct.wl_listener* %9, i32 %11, i32 %12)
  store %struct.sway_xwayland_view* %13, %struct.sway_xwayland_view** %5, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = bitcast i8* %14 to %struct.wlr_xwayland_surface*
  store %struct.wlr_xwayland_surface* %15, %struct.wlr_xwayland_surface** %6, align 8
  %16 = load %struct.sway_xwayland_view*, %struct.sway_xwayland_view** %5, align 8
  %17 = getelementptr inbounds %struct.sway_xwayland_view, %struct.sway_xwayland_view* %16, i32 0, i32 2
  store %struct.sway_view* %17, %struct.sway_view** %7, align 8
  %18 = load %struct.wlr_xwayland_surface*, %struct.wlr_xwayland_surface** %6, align 8
  %19 = getelementptr inbounds %struct.wlr_xwayland_surface, %struct.wlr_xwayland_surface* %18, i32 0, i32 5
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %2
  %23 = load %struct.sway_xwayland_view*, %struct.sway_xwayland_view** %5, align 8
  %24 = getelementptr inbounds %struct.sway_xwayland_view, %struct.sway_xwayland_view* %23, i32 0, i32 1
  %25 = load %struct.sway_view*, %struct.sway_view** %7, align 8
  %26 = call i32 @handle_destroy(i32* %24, %struct.sway_view* %25)
  %27 = load %struct.wlr_xwayland_surface*, %struct.wlr_xwayland_surface** %6, align 8
  %28 = getelementptr inbounds %struct.wlr_xwayland_surface, %struct.wlr_xwayland_surface* %27, i32 0, i32 4
  store i32* null, i32** %28, align 8
  %29 = load %struct.wlr_xwayland_surface*, %struct.wlr_xwayland_surface** %6, align 8
  %30 = call %struct.sway_xwayland_unmanaged* @create_unmanaged(%struct.wlr_xwayland_surface* %29)
  store %struct.sway_xwayland_unmanaged* %30, %struct.sway_xwayland_unmanaged** %8, align 8
  %31 = load %struct.sway_xwayland_unmanaged*, %struct.sway_xwayland_unmanaged** %8, align 8
  %32 = getelementptr inbounds %struct.sway_xwayland_unmanaged, %struct.sway_xwayland_unmanaged* %31, i32 0, i32 0
  %33 = load %struct.wlr_xwayland_surface*, %struct.wlr_xwayland_surface** %6, align 8
  %34 = call i32 @unmanaged_handle_map(i32* %32, %struct.wlr_xwayland_surface* %33)
  br label %67

35:                                               ; preds = %2
  %36 = load %struct.wlr_xwayland_surface*, %struct.wlr_xwayland_surface** %6, align 8
  %37 = getelementptr inbounds %struct.wlr_xwayland_surface, %struct.wlr_xwayland_surface* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.sway_view*, %struct.sway_view** %7, align 8
  %40 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.wlr_xwayland_surface*, %struct.wlr_xwayland_surface** %6, align 8
  %42 = getelementptr inbounds %struct.wlr_xwayland_surface, %struct.wlr_xwayland_surface* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.sway_view*, %struct.sway_view** %7, align 8
  %45 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load %struct.wlr_xwayland_surface*, %struct.wlr_xwayland_surface** %6, align 8
  %47 = getelementptr inbounds %struct.wlr_xwayland_surface, %struct.wlr_xwayland_surface* %46, i32 0, i32 1
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load %struct.sway_xwayland_view*, %struct.sway_xwayland_view** %5, align 8
  %52 = getelementptr inbounds %struct.sway_xwayland_view, %struct.sway_xwayland_view* %51, i32 0, i32 0
  %53 = call i32 @wl_signal_add(i32* %50, %struct.TYPE_5__* %52)
  %54 = load i32, i32* @handle_commit, align 4
  %55 = load %struct.sway_xwayland_view*, %struct.sway_xwayland_view** %5, align 8
  %56 = getelementptr inbounds %struct.sway_xwayland_view, %struct.sway_xwayland_view* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  store i32 %54, i32* %57, align 4
  %58 = load %struct.sway_view*, %struct.sway_view** %7, align 8
  %59 = load %struct.wlr_xwayland_surface*, %struct.wlr_xwayland_surface** %6, align 8
  %60 = getelementptr inbounds %struct.wlr_xwayland_surface, %struct.wlr_xwayland_surface* %59, i32 0, i32 1
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = load %struct.wlr_xwayland_surface*, %struct.wlr_xwayland_surface** %6, align 8
  %63 = getelementptr inbounds %struct.wlr_xwayland_surface, %struct.wlr_xwayland_surface* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @view_map(%struct.sway_view* %58, %struct.TYPE_6__* %61, i32 %64, i32* null, i32 0)
  %66 = call i32 (...) @transaction_commit_dirty()
  br label %67

67:                                               ; preds = %35, %22
  ret void
}

declare dso_local %struct.sway_xwayland_view* @wl_container_of(%struct.wl_listener*, i32, i32) #1

declare dso_local i32 @handle_destroy(i32*, %struct.sway_view*) #1

declare dso_local %struct.sway_xwayland_unmanaged* @create_unmanaged(%struct.wlr_xwayland_surface*) #1

declare dso_local i32 @unmanaged_handle_map(i32*, %struct.wlr_xwayland_surface*) #1

declare dso_local i32 @wl_signal_add(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @view_map(%struct.sway_view*, %struct.TYPE_6__*, i32, i32*, i32) #1

declare dso_local i32 @transaction_commit_dirty(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
