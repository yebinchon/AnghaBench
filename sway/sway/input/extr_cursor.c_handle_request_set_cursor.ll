; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_cursor.c_handle_request_set_cursor.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_cursor.c_handle_request_set_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_cursor = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.wlr_surface* }
%struct.wlr_surface = type { i32 }
%struct.wl_listener = type { i32 }
%struct.wlr_seat_pointer_request_set_cursor_event = type { i32, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.wl_client* }
%struct.wl_client = type { i32 }

@request_set_cursor = common dso_local global i32 0, align 4
@SWAY_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"denying request to set cursor from unfocused client\00", align 1
@cursor = common dso_local global %struct.sway_cursor* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl_listener*, i8*)* @handle_request_set_cursor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_request_set_cursor(%struct.wl_listener* %0, i8* %1) #0 {
  %3 = alloca %struct.wl_listener*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sway_cursor*, align 8
  %6 = alloca %struct.wlr_seat_pointer_request_set_cursor_event*, align 8
  %7 = alloca %struct.wl_client*, align 8
  %8 = alloca %struct.wlr_surface*, align 8
  store %struct.wl_listener* %0, %struct.wl_listener** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.wl_listener*, %struct.wl_listener** %3, align 8
  %10 = load %struct.sway_cursor*, %struct.sway_cursor** %5, align 8
  %11 = ptrtoint %struct.sway_cursor* %10 to i32
  %12 = load i32, i32* @request_set_cursor, align 4
  %13 = call %struct.sway_cursor* @wl_container_of(%struct.wl_listener* %9, i32 %11, i32 %12)
  store %struct.sway_cursor* %13, %struct.sway_cursor** %5, align 8
  %14 = load %struct.sway_cursor*, %struct.sway_cursor** %5, align 8
  %15 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %14, i32 0, i32 0
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = call i32 @seatop_allows_set_cursor(%struct.TYPE_8__* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  br label %65

20:                                               ; preds = %2
  %21 = load i8*, i8** %4, align 8
  %22 = bitcast i8* %21 to %struct.wlr_seat_pointer_request_set_cursor_event*
  store %struct.wlr_seat_pointer_request_set_cursor_event* %22, %struct.wlr_seat_pointer_request_set_cursor_event** %6, align 8
  store %struct.wl_client* null, %struct.wl_client** %7, align 8
  %23 = load %struct.sway_cursor*, %struct.sway_cursor** %5, align 8
  %24 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %23, i32 0, i32 0
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load %struct.wlr_surface*, %struct.wlr_surface** %29, align 8
  store %struct.wlr_surface* %30, %struct.wlr_surface** %8, align 8
  %31 = load %struct.wlr_surface*, %struct.wlr_surface** %8, align 8
  %32 = icmp ne %struct.wlr_surface* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %20
  %34 = load %struct.wlr_surface*, %struct.wlr_surface** %8, align 8
  %35 = getelementptr inbounds %struct.wlr_surface, %struct.wlr_surface* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call %struct.wl_client* @wl_resource_get_client(i32 %36)
  store %struct.wl_client* %37, %struct.wl_client** %7, align 8
  br label %38

38:                                               ; preds = %33, %20
  %39 = load %struct.wl_client*, %struct.wl_client** %7, align 8
  %40 = icmp eq %struct.wl_client* %39, null
  br i1 %40, label %49, label %41

41:                                               ; preds = %38
  %42 = load %struct.wlr_seat_pointer_request_set_cursor_event*, %struct.wlr_seat_pointer_request_set_cursor_event** %6, align 8
  %43 = getelementptr inbounds %struct.wlr_seat_pointer_request_set_cursor_event, %struct.wlr_seat_pointer_request_set_cursor_event* %42, i32 0, i32 3
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load %struct.wl_client*, %struct.wl_client** %45, align 8
  %47 = load %struct.wl_client*, %struct.wl_client** %7, align 8
  %48 = icmp ne %struct.wl_client* %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %41, %38
  %50 = load i32, i32* @SWAY_DEBUG, align 4
  %51 = call i32 @sway_log(i32 %50, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  br label %65

52:                                               ; preds = %41
  %53 = load %struct.sway_cursor*, %struct.sway_cursor** %5, align 8
  %54 = load %struct.wlr_seat_pointer_request_set_cursor_event*, %struct.wlr_seat_pointer_request_set_cursor_event** %6, align 8
  %55 = getelementptr inbounds %struct.wlr_seat_pointer_request_set_cursor_event, %struct.wlr_seat_pointer_request_set_cursor_event* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.wlr_seat_pointer_request_set_cursor_event*, %struct.wlr_seat_pointer_request_set_cursor_event** %6, align 8
  %58 = getelementptr inbounds %struct.wlr_seat_pointer_request_set_cursor_event, %struct.wlr_seat_pointer_request_set_cursor_event* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.wlr_seat_pointer_request_set_cursor_event*, %struct.wlr_seat_pointer_request_set_cursor_event** %6, align 8
  %61 = getelementptr inbounds %struct.wlr_seat_pointer_request_set_cursor_event, %struct.wlr_seat_pointer_request_set_cursor_event* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.wl_client*, %struct.wl_client** %7, align 8
  %64 = call i32 @cursor_set_image_surface(%struct.sway_cursor* %53, i32 %56, i32 %59, i32 %62, %struct.wl_client* %63)
  br label %65

65:                                               ; preds = %52, %49, %19
  ret void
}

declare dso_local %struct.sway_cursor* @wl_container_of(%struct.wl_listener*, i32, i32) #1

declare dso_local i32 @seatop_allows_set_cursor(%struct.TYPE_8__*) #1

declare dso_local %struct.wl_client* @wl_resource_get_client(i32) #1

declare dso_local i32 @sway_log(i32, i8*) #1

declare dso_local i32 @cursor_set_image_surface(%struct.sway_cursor*, i32, i32, i32, %struct.wl_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
