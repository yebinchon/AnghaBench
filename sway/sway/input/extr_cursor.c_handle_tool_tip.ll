; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_cursor.c_handle_tool_tip.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_cursor.c_handle_tool_tip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.sway_cursor = type { %struct.sway_seat*, %struct.TYPE_7__* }
%struct.sway_seat = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.wl_listener = type { i32 }
%struct.wlr_event_tablet_tool_tip = type { i64, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.sway_tablet_tool* }
%struct.sway_tablet_tool = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.wlr_tablet_v2_tablet* }
%struct.wlr_tablet_v2_tablet = type { i32 }
%struct.wlr_surface = type { i32 }

@tool_tip = common dso_local global i32 0, align 4
@server = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@BTN_LEFT = common dso_local global i32 0, align 4
@WLR_TABLET_TOOL_TIP_DOWN = common dso_local global i64 0, align 8
@WLR_BUTTON_PRESSED = common dso_local global i32 0, align 4
@WLR_BUTTON_RELEASED = common dso_local global i32 0, align 4
@cursor = common dso_local global %struct.sway_cursor* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl_listener*, i8*)* @handle_tool_tip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_tool_tip(%struct.wl_listener* %0, i8* %1) #0 {
  %3 = alloca %struct.wl_listener*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sway_cursor*, align 8
  %6 = alloca %struct.wlr_event_tablet_tool_tip*, align 8
  %7 = alloca %struct.sway_tablet_tool*, align 8
  %8 = alloca %struct.wlr_tablet_v2_tablet*, align 8
  %9 = alloca %struct.sway_seat*, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca %struct.wlr_surface*, align 8
  store %struct.wl_listener* %0, %struct.wl_listener** %3, align 8
  store i8* %1, i8** %4, align 8
  %13 = load %struct.wl_listener*, %struct.wl_listener** %3, align 8
  %14 = load %struct.sway_cursor*, %struct.sway_cursor** %5, align 8
  %15 = ptrtoint %struct.sway_cursor* %14 to i32
  %16 = load i32, i32* @tool_tip, align 4
  %17 = call %struct.sway_cursor* @wl_container_of(%struct.wl_listener* %13, i32 %15, i32 %16)
  store %struct.sway_cursor* %17, %struct.sway_cursor** %5, align 8
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 0), align 4
  %19 = load %struct.sway_cursor*, %struct.sway_cursor** %5, align 8
  %20 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %19, i32 0, i32 0
  %21 = load %struct.sway_seat*, %struct.sway_seat** %20, align 8
  %22 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @wlr_idle_notify_activity(i32 %18, i32 %23)
  %25 = load i8*, i8** %4, align 8
  %26 = bitcast i8* %25 to %struct.wlr_event_tablet_tool_tip*
  store %struct.wlr_event_tablet_tool_tip* %26, %struct.wlr_event_tablet_tool_tip** %6, align 8
  %27 = load %struct.wlr_event_tablet_tool_tip*, %struct.wlr_event_tablet_tool_tip** %6, align 8
  %28 = getelementptr inbounds %struct.wlr_event_tablet_tool_tip, %struct.wlr_event_tablet_tool_tip* %27, i32 0, i32 3
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load %struct.sway_tablet_tool*, %struct.sway_tablet_tool** %30, align 8
  store %struct.sway_tablet_tool* %31, %struct.sway_tablet_tool** %7, align 8
  %32 = load %struct.sway_tablet_tool*, %struct.sway_tablet_tool** %7, align 8
  %33 = getelementptr inbounds %struct.sway_tablet_tool, %struct.sway_tablet_tool* %32, i32 0, i32 1
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load %struct.wlr_tablet_v2_tablet*, %struct.wlr_tablet_v2_tablet** %35, align 8
  store %struct.wlr_tablet_v2_tablet* %36, %struct.wlr_tablet_v2_tablet** %8, align 8
  %37 = load %struct.sway_cursor*, %struct.sway_cursor** %5, align 8
  %38 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %37, i32 0, i32 0
  %39 = load %struct.sway_seat*, %struct.sway_seat** %38, align 8
  store %struct.sway_seat* %39, %struct.sway_seat** %9, align 8
  store %struct.wlr_surface* null, %struct.wlr_surface** %12, align 8
  %40 = load %struct.sway_seat*, %struct.sway_seat** %9, align 8
  %41 = load %struct.sway_cursor*, %struct.sway_cursor** %5, align 8
  %42 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %41, i32 0, i32 1
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.sway_cursor*, %struct.sway_cursor** %5, align 8
  %47 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %46, i32 0, i32 1
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @node_at_coords(%struct.sway_seat* %40, i32 %45, i32 %50, %struct.wlr_surface** %12, double* %10, double* %11)
  %52 = load %struct.wlr_surface*, %struct.wlr_surface** %12, align 8
  %53 = icmp ne %struct.wlr_surface* %52, null
  br i1 %53, label %54, label %59

54:                                               ; preds = %2
  %55 = load %struct.wlr_tablet_v2_tablet*, %struct.wlr_tablet_v2_tablet** %8, align 8
  %56 = load %struct.wlr_surface*, %struct.wlr_surface** %12, align 8
  %57 = call i32 @wlr_surface_accepts_tablet_v2(%struct.wlr_tablet_v2_tablet* %55, %struct.wlr_surface* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %87, label %59

59:                                               ; preds = %54, %2
  %60 = load %struct.sway_cursor*, %struct.sway_cursor** %5, align 8
  %61 = load %struct.wlr_event_tablet_tool_tip*, %struct.wlr_event_tablet_tool_tip** %6, align 8
  %62 = getelementptr inbounds %struct.wlr_event_tablet_tool_tip, %struct.wlr_event_tablet_tool_tip* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.wlr_event_tablet_tool_tip*, %struct.wlr_event_tablet_tool_tip** %6, align 8
  %65 = getelementptr inbounds %struct.wlr_event_tablet_tool_tip, %struct.wlr_event_tablet_tool_tip* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @BTN_LEFT, align 4
  %68 = load %struct.wlr_event_tablet_tool_tip*, %struct.wlr_event_tablet_tool_tip** %6, align 8
  %69 = getelementptr inbounds %struct.wlr_event_tablet_tool_tip, %struct.wlr_event_tablet_tool_tip* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @WLR_TABLET_TOOL_TIP_DOWN, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %59
  %74 = load i32, i32* @WLR_BUTTON_PRESSED, align 4
  br label %77

75:                                               ; preds = %59
  %76 = load i32, i32* @WLR_BUTTON_RELEASED, align 4
  br label %77

77:                                               ; preds = %75, %73
  %78 = phi i32 [ %74, %73 ], [ %76, %75 ]
  %79 = call i32 @dispatch_cursor_button(%struct.sway_cursor* %60, i32 %63, i32 %66, i32 %67, i32 %78)
  %80 = load %struct.sway_cursor*, %struct.sway_cursor** %5, align 8
  %81 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %80, i32 0, i32 0
  %82 = load %struct.sway_seat*, %struct.sway_seat** %81, align 8
  %83 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @wlr_seat_pointer_notify_frame(i32 %84)
  %86 = call i32 (...) @transaction_commit_dirty()
  br label %107

87:                                               ; preds = %54
  %88 = load %struct.wlr_event_tablet_tool_tip*, %struct.wlr_event_tablet_tool_tip** %6, align 8
  %89 = getelementptr inbounds %struct.wlr_event_tablet_tool_tip, %struct.wlr_event_tablet_tool_tip* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @WLR_TABLET_TOOL_TIP_DOWN, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %102

93:                                               ; preds = %87
  %94 = load %struct.sway_tablet_tool*, %struct.sway_tablet_tool** %7, align 8
  %95 = getelementptr inbounds %struct.sway_tablet_tool, %struct.sway_tablet_tool* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @wlr_tablet_v2_tablet_tool_notify_down(i32 %96)
  %98 = load %struct.sway_tablet_tool*, %struct.sway_tablet_tool** %7, align 8
  %99 = getelementptr inbounds %struct.sway_tablet_tool, %struct.sway_tablet_tool* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @wlr_tablet_tool_v2_start_implicit_grab(i32 %100)
  br label %107

102:                                              ; preds = %87
  %103 = load %struct.sway_tablet_tool*, %struct.sway_tablet_tool** %7, align 8
  %104 = getelementptr inbounds %struct.sway_tablet_tool, %struct.sway_tablet_tool* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @wlr_tablet_v2_tablet_tool_notify_up(i32 %105)
  br label %107

107:                                              ; preds = %77, %102, %93
  ret void
}

declare dso_local %struct.sway_cursor* @wl_container_of(%struct.wl_listener*, i32, i32) #1

declare dso_local i32 @wlr_idle_notify_activity(i32, i32) #1

declare dso_local i32 @node_at_coords(%struct.sway_seat*, i32, i32, %struct.wlr_surface**, double*, double*) #1

declare dso_local i32 @wlr_surface_accepts_tablet_v2(%struct.wlr_tablet_v2_tablet*, %struct.wlr_surface*) #1

declare dso_local i32 @dispatch_cursor_button(%struct.sway_cursor*, i32, i32, i32, i32) #1

declare dso_local i32 @wlr_seat_pointer_notify_frame(i32) #1

declare dso_local i32 @transaction_commit_dirty(...) #1

declare dso_local i32 @wlr_tablet_v2_tablet_tool_notify_down(i32) #1

declare dso_local i32 @wlr_tablet_tool_v2_start_implicit_grab(i32) #1

declare dso_local i32 @wlr_tablet_v2_tablet_tool_notify_up(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
