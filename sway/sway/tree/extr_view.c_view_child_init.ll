; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_view.c_view_child_init.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_view.c_view_child_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_view_child = type { %struct.sway_view*, %struct.wlr_surface*, %struct.TYPE_14__, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_14__, %struct.TYPE_14__, %struct.TYPE_14__, i32, %struct.sway_view_child_impl* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.sway_view_child_impl = type { i32 }
%struct.sway_view = type { %struct.TYPE_13__*, %struct.TYPE_11__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.sway_output* }
%struct.sway_output = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.wlr_surface = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32 }

@view_child_handle_surface_commit = common dso_local global i32 0, align 4
@view_child_handle_surface_new_subsurface = common dso_local global i32 0, align 4
@view_child_handle_surface_destroy = common dso_local global i32 0, align 4
@view_child_handle_surface_map = common dso_local global i32 0, align 4
@view_child_handle_surface_unmap = common dso_local global i32 0, align 4
@view_child_handle_view_unmap = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @view_child_init(%struct.sway_view_child* %0, %struct.sway_view_child_impl* %1, %struct.sway_view* %2, %struct.wlr_surface* %3) #0 {
  %5 = alloca %struct.sway_view_child*, align 8
  %6 = alloca %struct.sway_view_child_impl*, align 8
  %7 = alloca %struct.sway_view*, align 8
  %8 = alloca %struct.wlr_surface*, align 8
  %9 = alloca %struct.sway_output*, align 8
  store %struct.sway_view_child* %0, %struct.sway_view_child** %5, align 8
  store %struct.sway_view_child_impl* %1, %struct.sway_view_child_impl** %6, align 8
  store %struct.sway_view* %2, %struct.sway_view** %7, align 8
  store %struct.wlr_surface* %3, %struct.wlr_surface** %8, align 8
  %10 = load %struct.sway_view_child_impl*, %struct.sway_view_child_impl** %6, align 8
  %11 = load %struct.sway_view_child*, %struct.sway_view_child** %5, align 8
  %12 = getelementptr inbounds %struct.sway_view_child, %struct.sway_view_child* %11, i32 0, i32 9
  store %struct.sway_view_child_impl* %10, %struct.sway_view_child_impl** %12, align 8
  %13 = load %struct.sway_view*, %struct.sway_view** %7, align 8
  %14 = load %struct.sway_view_child*, %struct.sway_view_child** %5, align 8
  %15 = getelementptr inbounds %struct.sway_view_child, %struct.sway_view_child* %14, i32 0, i32 0
  store %struct.sway_view* %13, %struct.sway_view** %15, align 8
  %16 = load %struct.wlr_surface*, %struct.wlr_surface** %8, align 8
  %17 = load %struct.sway_view_child*, %struct.sway_view_child** %5, align 8
  %18 = getelementptr inbounds %struct.sway_view_child, %struct.sway_view_child* %17, i32 0, i32 1
  store %struct.wlr_surface* %16, %struct.wlr_surface** %18, align 8
  %19 = load %struct.sway_view_child*, %struct.sway_view_child** %5, align 8
  %20 = getelementptr inbounds %struct.sway_view_child, %struct.sway_view_child* %19, i32 0, i32 8
  %21 = call i32 @wl_list_init(i32* %20)
  %22 = load %struct.wlr_surface*, %struct.wlr_surface** %8, align 8
  %23 = getelementptr inbounds %struct.wlr_surface, %struct.wlr_surface* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 2
  %25 = load %struct.sway_view_child*, %struct.sway_view_child** %5, align 8
  %26 = getelementptr inbounds %struct.sway_view_child, %struct.sway_view_child* %25, i32 0, i32 7
  %27 = call i32 @wl_signal_add(i32* %24, %struct.TYPE_14__* %26)
  %28 = load i32, i32* @view_child_handle_surface_commit, align 4
  %29 = load %struct.sway_view_child*, %struct.sway_view_child** %5, align 8
  %30 = getelementptr inbounds %struct.sway_view_child, %struct.sway_view_child* %29, i32 0, i32 7
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 4
  %32 = load %struct.wlr_surface*, %struct.wlr_surface** %8, align 8
  %33 = getelementptr inbounds %struct.wlr_surface, %struct.wlr_surface* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %35 = load %struct.sway_view_child*, %struct.sway_view_child** %5, align 8
  %36 = getelementptr inbounds %struct.sway_view_child, %struct.sway_view_child* %35, i32 0, i32 6
  %37 = call i32 @wl_signal_add(i32* %34, %struct.TYPE_14__* %36)
  %38 = load i32, i32* @view_child_handle_surface_new_subsurface, align 4
  %39 = load %struct.sway_view_child*, %struct.sway_view_child** %5, align 8
  %40 = getelementptr inbounds %struct.sway_view_child, %struct.sway_view_child* %39, i32 0, i32 6
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 8
  %42 = load %struct.wlr_surface*, %struct.wlr_surface** %8, align 8
  %43 = getelementptr inbounds %struct.wlr_surface, %struct.wlr_surface* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load %struct.sway_view_child*, %struct.sway_view_child** %5, align 8
  %46 = getelementptr inbounds %struct.sway_view_child, %struct.sway_view_child* %45, i32 0, i32 5
  %47 = call i32 @wl_signal_add(i32* %44, %struct.TYPE_14__* %46)
  %48 = load i32, i32* @view_child_handle_surface_destroy, align 4
  %49 = load %struct.sway_view_child*, %struct.sway_view_child** %5, align 8
  %50 = getelementptr inbounds %struct.sway_view_child, %struct.sway_view_child* %49, i32 0, i32 5
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 4
  %52 = load i32, i32* @view_child_handle_surface_map, align 4
  %53 = load %struct.sway_view_child*, %struct.sway_view_child** %5, align 8
  %54 = getelementptr inbounds %struct.sway_view_child, %struct.sway_view_child* %53, i32 0, i32 4
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 8
  %56 = load i32, i32* @view_child_handle_surface_unmap, align 4
  %57 = load %struct.sway_view_child*, %struct.sway_view_child** %5, align 8
  %58 = getelementptr inbounds %struct.sway_view_child, %struct.sway_view_child* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  store i32 %56, i32* %59, align 4
  %60 = load %struct.sway_view*, %struct.sway_view** %7, align 8
  %61 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load %struct.sway_view_child*, %struct.sway_view_child** %5, align 8
  %64 = getelementptr inbounds %struct.sway_view_child, %struct.sway_view_child* %63, i32 0, i32 2
  %65 = call i32 @wl_signal_add(i32* %62, %struct.TYPE_14__* %64)
  %66 = load i32, i32* @view_child_handle_view_unmap, align 4
  %67 = load %struct.sway_view_child*, %struct.sway_view_child** %5, align 8
  %68 = getelementptr inbounds %struct.sway_view_child, %struct.sway_view_child* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 0
  store i32 %66, i32* %69, align 8
  %70 = load %struct.sway_view_child*, %struct.sway_view_child** %5, align 8
  %71 = getelementptr inbounds %struct.sway_view_child, %struct.sway_view_child* %70, i32 0, i32 0
  %72 = load %struct.sway_view*, %struct.sway_view** %71, align 8
  %73 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %72, i32 0, i32 0
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  %78 = load %struct.sway_output*, %struct.sway_output** %77, align 8
  store %struct.sway_output* %78, %struct.sway_output** %9, align 8
  %79 = load %struct.sway_view_child*, %struct.sway_view_child** %5, align 8
  %80 = getelementptr inbounds %struct.sway_view_child, %struct.sway_view_child* %79, i32 0, i32 1
  %81 = load %struct.wlr_surface*, %struct.wlr_surface** %80, align 8
  %82 = load %struct.sway_output*, %struct.sway_output** %9, align 8
  %83 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @wlr_surface_send_enter(%struct.wlr_surface* %81, i32 %84)
  %86 = load %struct.sway_view_child*, %struct.sway_view_child** %5, align 8
  %87 = getelementptr inbounds %struct.sway_view_child, %struct.sway_view_child* %86, i32 0, i32 0
  %88 = load %struct.sway_view*, %struct.sway_view** %87, align 8
  %89 = load %struct.wlr_surface*, %struct.wlr_surface** %8, align 8
  %90 = call i32 @view_init_subsurfaces(%struct.sway_view* %88, %struct.wlr_surface* %89)
  ret void
}

declare dso_local i32 @wl_list_init(i32*) #1

declare dso_local i32 @wl_signal_add(i32*, %struct.TYPE_14__*) #1

declare dso_local i32 @wlr_surface_send_enter(%struct.wlr_surface*, i32) #1

declare dso_local i32 @view_init_subsurfaces(%struct.sway_view*, %struct.wlr_surface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
