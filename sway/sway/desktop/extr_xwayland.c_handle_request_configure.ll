; ModuleID = '/home/carl/AnghaBench/sway/sway/desktop/extr_xwayland.c_handle_request_configure.c'
source_filename = "/home/carl/AnghaBench/sway/sway/desktop/extr_xwayland.c_handle_request_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_xwayland_view = type { %struct.sway_view }
%struct.sway_view = type { %struct.TYPE_5__*, i32, i32, %struct.wlr_xwayland_surface* }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.wlr_xwayland_surface = type { i32 }
%struct.wl_listener = type { i32 }
%struct.wlr_xwayland_surface_configure_event = type { i32, i32, i32, i32 }

@request_configure = common dso_local global i32 0, align 4
@xwayland_view = common dso_local global %struct.sway_xwayland_view* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl_listener*, i8*)* @handle_request_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_request_configure(%struct.wl_listener* %0, i8* %1) #0 {
  %3 = alloca %struct.wl_listener*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sway_xwayland_view*, align 8
  %6 = alloca %struct.wlr_xwayland_surface_configure_event*, align 8
  %7 = alloca %struct.sway_view*, align 8
  %8 = alloca %struct.wlr_xwayland_surface*, align 8
  store %struct.wl_listener* %0, %struct.wl_listener** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.wl_listener*, %struct.wl_listener** %3, align 8
  %10 = load %struct.sway_xwayland_view*, %struct.sway_xwayland_view** %5, align 8
  %11 = ptrtoint %struct.sway_xwayland_view* %10 to i32
  %12 = load i32, i32* @request_configure, align 4
  %13 = call %struct.sway_xwayland_view* @wl_container_of(%struct.wl_listener* %9, i32 %11, i32 %12)
  store %struct.sway_xwayland_view* %13, %struct.sway_xwayland_view** %5, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = bitcast i8* %14 to %struct.wlr_xwayland_surface_configure_event*
  store %struct.wlr_xwayland_surface_configure_event* %15, %struct.wlr_xwayland_surface_configure_event** %6, align 8
  %16 = load %struct.sway_xwayland_view*, %struct.sway_xwayland_view** %5, align 8
  %17 = getelementptr inbounds %struct.sway_xwayland_view, %struct.sway_xwayland_view* %16, i32 0, i32 0
  store %struct.sway_view* %17, %struct.sway_view** %7, align 8
  %18 = load %struct.sway_view*, %struct.sway_view** %7, align 8
  %19 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %18, i32 0, i32 3
  %20 = load %struct.wlr_xwayland_surface*, %struct.wlr_xwayland_surface** %19, align 8
  store %struct.wlr_xwayland_surface* %20, %struct.wlr_xwayland_surface** %8, align 8
  %21 = load %struct.wlr_xwayland_surface*, %struct.wlr_xwayland_surface** %8, align 8
  %22 = getelementptr inbounds %struct.wlr_xwayland_surface, %struct.wlr_xwayland_surface* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %40, label %25

25:                                               ; preds = %2
  %26 = load %struct.wlr_xwayland_surface*, %struct.wlr_xwayland_surface** %8, align 8
  %27 = load %struct.wlr_xwayland_surface_configure_event*, %struct.wlr_xwayland_surface_configure_event** %6, align 8
  %28 = getelementptr inbounds %struct.wlr_xwayland_surface_configure_event, %struct.wlr_xwayland_surface_configure_event* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.wlr_xwayland_surface_configure_event*, %struct.wlr_xwayland_surface_configure_event** %6, align 8
  %31 = getelementptr inbounds %struct.wlr_xwayland_surface_configure_event, %struct.wlr_xwayland_surface_configure_event* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.wlr_xwayland_surface_configure_event*, %struct.wlr_xwayland_surface_configure_event** %6, align 8
  %34 = getelementptr inbounds %struct.wlr_xwayland_surface_configure_event, %struct.wlr_xwayland_surface_configure_event* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.wlr_xwayland_surface_configure_event*, %struct.wlr_xwayland_surface_configure_event** %6, align 8
  %37 = getelementptr inbounds %struct.wlr_xwayland_surface_configure_event, %struct.wlr_xwayland_surface_configure_event* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @wlr_xwayland_surface_configure(%struct.wlr_xwayland_surface* %26, i32 %29, i32 %32, i32 %35, i32 %38)
  br label %115

40:                                               ; preds = %2
  %41 = load %struct.sway_view*, %struct.sway_view** %7, align 8
  %42 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %41, i32 0, i32 0
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = call i64 @container_is_floating(%struct.TYPE_5__* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %88

46:                                               ; preds = %40
  %47 = load %struct.wlr_xwayland_surface_configure_event*, %struct.wlr_xwayland_surface_configure_event** %6, align 8
  %48 = getelementptr inbounds %struct.wlr_xwayland_surface_configure_event, %struct.wlr_xwayland_surface_configure_event* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.sway_view*, %struct.sway_view** %7, align 8
  %51 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  %52 = load %struct.wlr_xwayland_surface_configure_event*, %struct.wlr_xwayland_surface_configure_event** %6, align 8
  %53 = getelementptr inbounds %struct.wlr_xwayland_surface_configure_event, %struct.wlr_xwayland_surface_configure_event* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.sway_view*, %struct.sway_view** %7, align 8
  %56 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 8
  %57 = load %struct.sway_view*, %struct.sway_view** %7, align 8
  %58 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %57, i32 0, i32 0
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = call i32 @container_floating_resize_and_center(%struct.TYPE_5__* %59)
  %61 = load %struct.sway_view*, %struct.sway_view** %7, align 8
  %62 = load %struct.sway_view*, %struct.sway_view** %7, align 8
  %63 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %62, i32 0, i32 0
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.sway_view*, %struct.sway_view** %7, align 8
  %68 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %67, i32 0, i32 0
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.sway_view*, %struct.sway_view** %7, align 8
  %73 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %72, i32 0, i32 0
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.sway_view*, %struct.sway_view** %7, align 8
  %78 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %77, i32 0, i32 0
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @configure(%struct.sway_view* %61, i32 %66, i32 %71, i32 %76, i32 %81)
  %83 = load %struct.sway_view*, %struct.sway_view** %7, align 8
  %84 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %83, i32 0, i32 0
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  %87 = call i32 @node_set_dirty(i32* %86)
  br label %115

88:                                               ; preds = %40
  %89 = load %struct.sway_view*, %struct.sway_view** %7, align 8
  %90 = load %struct.sway_view*, %struct.sway_view** %7, align 8
  %91 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %90, i32 0, i32 0
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.sway_view*, %struct.sway_view** %7, align 8
  %97 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %96, i32 0, i32 0
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.sway_view*, %struct.sway_view** %7, align 8
  %103 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %102, i32 0, i32 0
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.sway_view*, %struct.sway_view** %7, align 8
  %109 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %108, i32 0, i32 0
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @configure(%struct.sway_view* %89, i32 %95, i32 %101, i32 %107, i32 %113)
  br label %115

115:                                              ; preds = %25, %88, %46
  ret void
}

declare dso_local %struct.sway_xwayland_view* @wl_container_of(%struct.wl_listener*, i32, i32) #1

declare dso_local i32 @wlr_xwayland_surface_configure(%struct.wlr_xwayland_surface*, i32, i32, i32, i32) #1

declare dso_local i64 @container_is_floating(%struct.TYPE_5__*) #1

declare dso_local i32 @container_floating_resize_and_center(%struct.TYPE_5__*) #1

declare dso_local i32 @configure(%struct.sway_view*, i32, i32, i32, i32) #1

declare dso_local i32 @node_set_dirty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
