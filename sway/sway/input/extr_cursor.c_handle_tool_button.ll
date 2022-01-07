; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_cursor.c_handle_tool_button.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_cursor.c_handle_tool_button.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.sway_cursor = type { i32, %struct.sway_seat*, %struct.TYPE_7__* }
%struct.sway_seat = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.wl_listener = type { i32 }
%struct.wlr_event_tablet_tool_button = type { i32, i64, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.sway_tablet_tool* }
%struct.sway_tablet_tool = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.wlr_tablet_v2_tablet* }
%struct.wlr_tablet_v2_tablet = type { i32 }
%struct.wlr_surface = type { i32 }

@tool_button = common dso_local global i32 0, align 4
@server = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@SWAY_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"tool button before proximity\00", align 1
@BTN_RIGHT = common dso_local global i32 0, align 4
@cursor = common dso_local global %struct.sway_cursor* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl_listener*, i8*)* @handle_tool_button to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_tool_button(%struct.wl_listener* %0, i8* %1) #0 {
  %3 = alloca %struct.wl_listener*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sway_cursor*, align 8
  %6 = alloca %struct.wlr_event_tablet_tool_button*, align 8
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
  %16 = load i32, i32* @tool_button, align 4
  %17 = call %struct.sway_cursor* @wl_container_of(%struct.wl_listener* %13, i32 %15, i32 %16)
  store %struct.sway_cursor* %17, %struct.sway_cursor** %5, align 8
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 0), align 4
  %19 = load %struct.sway_cursor*, %struct.sway_cursor** %5, align 8
  %20 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %19, i32 0, i32 1
  %21 = load %struct.sway_seat*, %struct.sway_seat** %20, align 8
  %22 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @wlr_idle_notify_activity(i32 %18, i32 %23)
  %25 = load i8*, i8** %4, align 8
  %26 = bitcast i8* %25 to %struct.wlr_event_tablet_tool_button*
  store %struct.wlr_event_tablet_tool_button* %26, %struct.wlr_event_tablet_tool_button** %6, align 8
  %27 = load %struct.wlr_event_tablet_tool_button*, %struct.wlr_event_tablet_tool_button** %6, align 8
  %28 = getelementptr inbounds %struct.wlr_event_tablet_tool_button, %struct.wlr_event_tablet_tool_button* %27, i32 0, i32 4
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
  %38 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %37, i32 0, i32 1
  %39 = load %struct.sway_seat*, %struct.sway_seat** %38, align 8
  store %struct.sway_seat* %39, %struct.sway_seat** %9, align 8
  %40 = load %struct.sway_tablet_tool*, %struct.sway_tablet_tool** %7, align 8
  %41 = icmp ne %struct.sway_tablet_tool* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %2
  %43 = load i32, i32* @SWAY_DEBUG, align 4
  %44 = call i32 @sway_log(i32 %43, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %135

45:                                               ; preds = %2
  store %struct.wlr_surface* null, %struct.wlr_surface** %12, align 8
  %46 = load %struct.sway_seat*, %struct.sway_seat** %9, align 8
  %47 = load %struct.sway_cursor*, %struct.sway_cursor** %5, align 8
  %48 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %47, i32 0, i32 2
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.sway_cursor*, %struct.sway_cursor** %5, align 8
  %53 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %52, i32 0, i32 2
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @node_at_coords(%struct.sway_seat* %46, i32 %51, i32 %56, %struct.wlr_surface** %12, double* %10, double* %11)
  %58 = load %struct.wlr_surface*, %struct.wlr_surface** %12, align 8
  %59 = icmp ne %struct.wlr_surface* %58, null
  br i1 %59, label %60, label %65

60:                                               ; preds = %45
  %61 = load %struct.wlr_tablet_v2_tablet*, %struct.wlr_tablet_v2_tablet** %8, align 8
  %62 = load %struct.wlr_surface*, %struct.wlr_surface** %12, align 8
  %63 = call i32 @wlr_surface_accepts_tablet_v2(%struct.wlr_tablet_v2_tablet* %61, %struct.wlr_surface* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %123, label %65

65:                                               ; preds = %60, %45
  %66 = load %struct.wlr_event_tablet_tool_button*, %struct.wlr_event_tablet_tool_button** %6, align 8
  %67 = getelementptr inbounds %struct.wlr_event_tablet_tool_button, %struct.wlr_event_tablet_tool_button* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  switch i32 %68, label %115 [
    i32 129, label %69
    i32 128, label %92
  ]

69:                                               ; preds = %65
  %70 = load %struct.sway_cursor*, %struct.sway_cursor** %5, align 8
  %71 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %87

74:                                               ; preds = %69
  %75 = load %struct.sway_cursor*, %struct.sway_cursor** %5, align 8
  %76 = load %struct.wlr_event_tablet_tool_button*, %struct.wlr_event_tablet_tool_button** %6, align 8
  %77 = getelementptr inbounds %struct.wlr_event_tablet_tool_button, %struct.wlr_event_tablet_tool_button* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.wlr_event_tablet_tool_button*, %struct.wlr_event_tablet_tool_button** %6, align 8
  %80 = getelementptr inbounds %struct.wlr_event_tablet_tool_button, %struct.wlr_event_tablet_tool_button* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @BTN_RIGHT, align 4
  %83 = load %struct.wlr_event_tablet_tool_button*, %struct.wlr_event_tablet_tool_button** %6, align 8
  %84 = getelementptr inbounds %struct.wlr_event_tablet_tool_button, %struct.wlr_event_tablet_tool_button* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @dispatch_cursor_button(%struct.sway_cursor* %75, i32 %78, i32 %81, i32 %82, i32 %85)
  br label %87

87:                                               ; preds = %74, %69
  %88 = load %struct.sway_cursor*, %struct.sway_cursor** %5, align 8
  %89 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %89, align 8
  br label %115

92:                                               ; preds = %65
  %93 = load %struct.sway_cursor*, %struct.sway_cursor** %5, align 8
  %94 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp eq i32 %95, 1
  br i1 %96, label %97, label %110

97:                                               ; preds = %92
  %98 = load %struct.sway_cursor*, %struct.sway_cursor** %5, align 8
  %99 = load %struct.wlr_event_tablet_tool_button*, %struct.wlr_event_tablet_tool_button** %6, align 8
  %100 = getelementptr inbounds %struct.wlr_event_tablet_tool_button, %struct.wlr_event_tablet_tool_button* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.wlr_event_tablet_tool_button*, %struct.wlr_event_tablet_tool_button** %6, align 8
  %103 = getelementptr inbounds %struct.wlr_event_tablet_tool_button, %struct.wlr_event_tablet_tool_button* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @BTN_RIGHT, align 4
  %106 = load %struct.wlr_event_tablet_tool_button*, %struct.wlr_event_tablet_tool_button** %6, align 8
  %107 = getelementptr inbounds %struct.wlr_event_tablet_tool_button, %struct.wlr_event_tablet_tool_button* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @dispatch_cursor_button(%struct.sway_cursor* %98, i32 %101, i32 %104, i32 %105, i32 %108)
  br label %110

110:                                              ; preds = %97, %92
  %111 = load %struct.sway_cursor*, %struct.sway_cursor** %5, align 8
  %112 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = add nsw i32 %113, -1
  store i32 %114, i32* %112, align 8
  br label %115

115:                                              ; preds = %65, %110, %87
  %116 = load %struct.sway_cursor*, %struct.sway_cursor** %5, align 8
  %117 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %116, i32 0, i32 1
  %118 = load %struct.sway_seat*, %struct.sway_seat** %117, align 8
  %119 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @wlr_seat_pointer_notify_frame(i32 %120)
  %122 = call i32 (...) @transaction_commit_dirty()
  br label %135

123:                                              ; preds = %60
  %124 = load %struct.sway_tablet_tool*, %struct.sway_tablet_tool** %7, align 8
  %125 = getelementptr inbounds %struct.sway_tablet_tool, %struct.sway_tablet_tool* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.wlr_event_tablet_tool_button*, %struct.wlr_event_tablet_tool_button** %6, align 8
  %128 = getelementptr inbounds %struct.wlr_event_tablet_tool_button, %struct.wlr_event_tablet_tool_button* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = trunc i64 %129 to i32
  %131 = load %struct.wlr_event_tablet_tool_button*, %struct.wlr_event_tablet_tool_button** %6, align 8
  %132 = getelementptr inbounds %struct.wlr_event_tablet_tool_button, %struct.wlr_event_tablet_tool_button* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @wlr_tablet_v2_tablet_tool_notify_button(i32 %126, i32 %130, i32 %133)
  br label %135

135:                                              ; preds = %123, %115, %42
  ret void
}

declare dso_local %struct.sway_cursor* @wl_container_of(%struct.wl_listener*, i32, i32) #1

declare dso_local i32 @wlr_idle_notify_activity(i32, i32) #1

declare dso_local i32 @sway_log(i32, i8*) #1

declare dso_local i32 @node_at_coords(%struct.sway_seat*, i32, i32, %struct.wlr_surface**, double*, double*) #1

declare dso_local i32 @wlr_surface_accepts_tablet_v2(%struct.wlr_tablet_v2_tablet*, %struct.wlr_surface*) #1

declare dso_local i32 @dispatch_cursor_button(%struct.sway_cursor*, i32, i32, i32, i32) #1

declare dso_local i32 @wlr_seat_pointer_notify_frame(i32) #1

declare dso_local i32 @transaction_commit_dirty(...) #1

declare dso_local i32 @wlr_tablet_v2_tablet_tool_notify_button(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
