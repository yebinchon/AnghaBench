; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_tablet.c_handle_tablet_tool_set_cursor.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_tablet.c_handle_tablet_tool_set_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_tablet_tool = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.sway_cursor* }
%struct.sway_cursor = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.wlr_surface* }
%struct.wlr_surface = type { i32 }
%struct.wl_listener = type { i32 }
%struct.wlr_tablet_v2_event_cursor = type { i32, i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.wl_client* }
%struct.wl_client = type { i32 }

@set_cursor = common dso_local global i32 0, align 4
@SWAY_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"denying request to set cursor from unfocused client\00", align 1
@tool = common dso_local global %struct.sway_tablet_tool* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl_listener*, i8*)* @handle_tablet_tool_set_cursor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_tablet_tool_set_cursor(%struct.wl_listener* %0, i8* %1) #0 {
  %3 = alloca %struct.wl_listener*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sway_tablet_tool*, align 8
  %6 = alloca %struct.wlr_tablet_v2_event_cursor*, align 8
  %7 = alloca %struct.sway_cursor*, align 8
  %8 = alloca %struct.wl_client*, align 8
  %9 = alloca %struct.wlr_surface*, align 8
  store %struct.wl_listener* %0, %struct.wl_listener** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load %struct.wl_listener*, %struct.wl_listener** %3, align 8
  %11 = load %struct.sway_tablet_tool*, %struct.sway_tablet_tool** %5, align 8
  %12 = ptrtoint %struct.sway_tablet_tool* %11 to i32
  %13 = load i32, i32* @set_cursor, align 4
  %14 = call %struct.sway_tablet_tool* @wl_container_of(%struct.wl_listener* %10, i32 %12, i32 %13)
  store %struct.sway_tablet_tool* %14, %struct.sway_tablet_tool** %5, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = bitcast i8* %15 to %struct.wlr_tablet_v2_event_cursor*
  store %struct.wlr_tablet_v2_event_cursor* %16, %struct.wlr_tablet_v2_event_cursor** %6, align 8
  %17 = load %struct.sway_tablet_tool*, %struct.sway_tablet_tool** %5, align 8
  %18 = getelementptr inbounds %struct.sway_tablet_tool, %struct.sway_tablet_tool* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.sway_cursor*, %struct.sway_cursor** %20, align 8
  store %struct.sway_cursor* %21, %struct.sway_cursor** %7, align 8
  %22 = load %struct.sway_cursor*, %struct.sway_cursor** %7, align 8
  %23 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %22, i32 0, i32 0
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %25 = call i32 @seatop_allows_set_cursor(%struct.TYPE_10__* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %2
  br label %71

28:                                               ; preds = %2
  store %struct.wl_client* null, %struct.wl_client** %8, align 8
  %29 = load %struct.sway_cursor*, %struct.sway_cursor** %7, align 8
  %30 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %29, i32 0, i32 0
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load %struct.wlr_surface*, %struct.wlr_surface** %35, align 8
  store %struct.wlr_surface* %36, %struct.wlr_surface** %9, align 8
  %37 = load %struct.wlr_surface*, %struct.wlr_surface** %9, align 8
  %38 = icmp ne %struct.wlr_surface* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %28
  %40 = load %struct.wlr_surface*, %struct.wlr_surface** %9, align 8
  %41 = getelementptr inbounds %struct.wlr_surface, %struct.wlr_surface* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call %struct.wl_client* @wl_resource_get_client(i32 %42)
  store %struct.wl_client* %43, %struct.wl_client** %8, align 8
  br label %44

44:                                               ; preds = %39, %28
  %45 = load %struct.wl_client*, %struct.wl_client** %8, align 8
  %46 = icmp eq %struct.wl_client* %45, null
  br i1 %46, label %55, label %47

47:                                               ; preds = %44
  %48 = load %struct.wlr_tablet_v2_event_cursor*, %struct.wlr_tablet_v2_event_cursor** %6, align 8
  %49 = getelementptr inbounds %struct.wlr_tablet_v2_event_cursor, %struct.wlr_tablet_v2_event_cursor* %48, i32 0, i32 3
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load %struct.wl_client*, %struct.wl_client** %51, align 8
  %53 = load %struct.wl_client*, %struct.wl_client** %8, align 8
  %54 = icmp ne %struct.wl_client* %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %47, %44
  %56 = load i32, i32* @SWAY_DEBUG, align 4
  %57 = call i32 @sway_log(i32 %56, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  br label %71

58:                                               ; preds = %47
  %59 = load %struct.sway_cursor*, %struct.sway_cursor** %7, align 8
  %60 = load %struct.wlr_tablet_v2_event_cursor*, %struct.wlr_tablet_v2_event_cursor** %6, align 8
  %61 = getelementptr inbounds %struct.wlr_tablet_v2_event_cursor, %struct.wlr_tablet_v2_event_cursor* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.wlr_tablet_v2_event_cursor*, %struct.wlr_tablet_v2_event_cursor** %6, align 8
  %64 = getelementptr inbounds %struct.wlr_tablet_v2_event_cursor, %struct.wlr_tablet_v2_event_cursor* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.wlr_tablet_v2_event_cursor*, %struct.wlr_tablet_v2_event_cursor** %6, align 8
  %67 = getelementptr inbounds %struct.wlr_tablet_v2_event_cursor, %struct.wlr_tablet_v2_event_cursor* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.wl_client*, %struct.wl_client** %8, align 8
  %70 = call i32 @cursor_set_image_surface(%struct.sway_cursor* %59, i32 %62, i32 %65, i32 %68, %struct.wl_client* %69)
  br label %71

71:                                               ; preds = %58, %55, %27
  ret void
}

declare dso_local %struct.sway_tablet_tool* @wl_container_of(%struct.wl_listener*, i32, i32) #1

declare dso_local i32 @seatop_allows_set_cursor(%struct.TYPE_10__*) #1

declare dso_local %struct.wl_client* @wl_resource_get_client(i32) #1

declare dso_local i32 @sway_log(i32, i8*) #1

declare dso_local i32 @cursor_set_image_surface(%struct.sway_cursor*, i32, i32, i32, %struct.wl_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
