; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_cursor.c_handle_tool_proximity.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_cursor.c_handle_tool_proximity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.sway_cursor = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.wl_listener = type { i32 }
%struct.wlr_event_tablet_tool_proximity = type { i64, i32, i32, i32, %struct.wlr_tablet_tool*, i32 }
%struct.wlr_tablet_tool = type { %struct.sway_tablet_tool* }
%struct.sway_tablet_tool = type { i32, i32 }
%struct.sway_tablet = type { i32 }

@tool_proximity = common dso_local global i32 0, align 4
@server = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@SWAY_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"no tablet for tablet tool\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"tablet tool not initialized\00", align 1
@WLR_TABLET_TOOL_PROXIMITY_OUT = common dso_local global i64 0, align 8
@cursor = common dso_local global %struct.sway_cursor* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl_listener*, i8*)* @handle_tool_proximity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_tool_proximity(%struct.wl_listener* %0, i8* %1) #0 {
  %3 = alloca %struct.wl_listener*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sway_cursor*, align 8
  %6 = alloca %struct.wlr_event_tablet_tool_proximity*, align 8
  %7 = alloca %struct.wlr_tablet_tool*, align 8
  %8 = alloca %struct.sway_tablet*, align 8
  %9 = alloca %struct.sway_tablet_tool*, align 8
  store %struct.wl_listener* %0, %struct.wl_listener** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load %struct.wl_listener*, %struct.wl_listener** %3, align 8
  %11 = load %struct.sway_cursor*, %struct.sway_cursor** %5, align 8
  %12 = ptrtoint %struct.sway_cursor* %11 to i32
  %13 = load i32, i32* @tool_proximity, align 4
  %14 = call %struct.sway_cursor* @wl_container_of(%struct.wl_listener* %10, i32 %12, i32 %13)
  store %struct.sway_cursor* %14, %struct.sway_cursor** %5, align 8
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @server, i32 0, i32 0), align 4
  %16 = load %struct.sway_cursor*, %struct.sway_cursor** %5, align 8
  %17 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @wlr_idle_notify_activity(i32 %15, i32 %20)
  %22 = load i8*, i8** %4, align 8
  %23 = bitcast i8* %22 to %struct.wlr_event_tablet_tool_proximity*
  store %struct.wlr_event_tablet_tool_proximity* %23, %struct.wlr_event_tablet_tool_proximity** %6, align 8
  %24 = load %struct.wlr_event_tablet_tool_proximity*, %struct.wlr_event_tablet_tool_proximity** %6, align 8
  %25 = getelementptr inbounds %struct.wlr_event_tablet_tool_proximity, %struct.wlr_event_tablet_tool_proximity* %24, i32 0, i32 4
  %26 = load %struct.wlr_tablet_tool*, %struct.wlr_tablet_tool** %25, align 8
  store %struct.wlr_tablet_tool* %26, %struct.wlr_tablet_tool** %7, align 8
  %27 = load %struct.wlr_tablet_tool*, %struct.wlr_tablet_tool** %7, align 8
  %28 = getelementptr inbounds %struct.wlr_tablet_tool, %struct.wlr_tablet_tool* %27, i32 0, i32 0
  %29 = load %struct.sway_tablet_tool*, %struct.sway_tablet_tool** %28, align 8
  %30 = icmp ne %struct.sway_tablet_tool* %29, null
  br i1 %30, label %46, label %31

31:                                               ; preds = %2
  %32 = load %struct.sway_cursor*, %struct.sway_cursor** %5, align 8
  %33 = load %struct.wlr_event_tablet_tool_proximity*, %struct.wlr_event_tablet_tool_proximity** %6, align 8
  %34 = getelementptr inbounds %struct.wlr_event_tablet_tool_proximity, %struct.wlr_event_tablet_tool_proximity* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 8
  %36 = call %struct.sway_tablet* @get_tablet_for_device(%struct.sway_cursor* %32, i32 %35)
  store %struct.sway_tablet* %36, %struct.sway_tablet** %8, align 8
  %37 = load %struct.sway_tablet*, %struct.sway_tablet** %8, align 8
  %38 = icmp ne %struct.sway_tablet* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %31
  %40 = load i32, i32* @SWAY_ERROR, align 4
  %41 = call i32 @sway_log(i32 %40, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %84

42:                                               ; preds = %31
  %43 = load %struct.sway_tablet*, %struct.sway_tablet** %8, align 8
  %44 = load %struct.wlr_tablet_tool*, %struct.wlr_tablet_tool** %7, align 8
  %45 = call i32 @sway_tablet_tool_configure(%struct.sway_tablet* %43, %struct.wlr_tablet_tool* %44)
  br label %46

46:                                               ; preds = %42, %2
  %47 = load %struct.wlr_tablet_tool*, %struct.wlr_tablet_tool** %7, align 8
  %48 = getelementptr inbounds %struct.wlr_tablet_tool, %struct.wlr_tablet_tool* %47, i32 0, i32 0
  %49 = load %struct.sway_tablet_tool*, %struct.sway_tablet_tool** %48, align 8
  store %struct.sway_tablet_tool* %49, %struct.sway_tablet_tool** %9, align 8
  %50 = load %struct.sway_tablet_tool*, %struct.sway_tablet_tool** %9, align 8
  %51 = icmp ne %struct.sway_tablet_tool* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %46
  %53 = load i32, i32* @SWAY_ERROR, align 4
  %54 = call i32 @sway_log(i32 %53, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %84

55:                                               ; preds = %46
  %56 = load %struct.wlr_event_tablet_tool_proximity*, %struct.wlr_event_tablet_tool_proximity** %6, align 8
  %57 = getelementptr inbounds %struct.wlr_event_tablet_tool_proximity, %struct.wlr_event_tablet_tool_proximity* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @WLR_TABLET_TOOL_PROXIMITY_OUT, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %55
  %62 = load %struct.sway_tablet_tool*, %struct.sway_tablet_tool** %9, align 8
  %63 = getelementptr inbounds %struct.sway_tablet_tool, %struct.sway_tablet_tool* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @wlr_tablet_v2_tablet_tool_notify_proximity_out(i32 %64)
  br label %84

66:                                               ; preds = %55
  %67 = load %struct.sway_cursor*, %struct.sway_cursor** %5, align 8
  %68 = load %struct.sway_tablet_tool*, %struct.sway_tablet_tool** %9, align 8
  %69 = getelementptr inbounds %struct.sway_tablet_tool, %struct.sway_tablet_tool* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.wlr_event_tablet_tool_proximity*, %struct.wlr_event_tablet_tool_proximity** %6, align 8
  %72 = getelementptr inbounds %struct.wlr_event_tablet_tool_proximity, %struct.wlr_event_tablet_tool_proximity* %71, i32 0, i32 4
  %73 = load %struct.wlr_tablet_tool*, %struct.wlr_tablet_tool** %72, align 8
  %74 = load %struct.wlr_event_tablet_tool_proximity*, %struct.wlr_event_tablet_tool_proximity** %6, align 8
  %75 = getelementptr inbounds %struct.wlr_event_tablet_tool_proximity, %struct.wlr_event_tablet_tool_proximity* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.wlr_event_tablet_tool_proximity*, %struct.wlr_event_tablet_tool_proximity** %6, align 8
  %78 = getelementptr inbounds %struct.wlr_event_tablet_tool_proximity, %struct.wlr_event_tablet_tool_proximity* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.wlr_event_tablet_tool_proximity*, %struct.wlr_event_tablet_tool_proximity** %6, align 8
  %81 = getelementptr inbounds %struct.wlr_event_tablet_tool_proximity, %struct.wlr_event_tablet_tool_proximity* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @handle_tablet_tool_position(%struct.sway_cursor* %67, i32 %70, %struct.wlr_tablet_tool* %73, i32 1, i32 1, i32 %76, i32 %79, i32 0, i32 0, i32 %82)
  br label %84

84:                                               ; preds = %66, %61, %52, %39
  ret void
}

declare dso_local %struct.sway_cursor* @wl_container_of(%struct.wl_listener*, i32, i32) #1

declare dso_local i32 @wlr_idle_notify_activity(i32, i32) #1

declare dso_local %struct.sway_tablet* @get_tablet_for_device(%struct.sway_cursor*, i32) #1

declare dso_local i32 @sway_log(i32, i8*) #1

declare dso_local i32 @sway_tablet_tool_configure(%struct.sway_tablet*, %struct.wlr_tablet_tool*) #1

declare dso_local i32 @wlr_tablet_v2_tablet_tool_notify_proximity_out(i32) #1

declare dso_local i32 @handle_tablet_tool_position(%struct.sway_cursor*, i32, %struct.wlr_tablet_tool*, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
