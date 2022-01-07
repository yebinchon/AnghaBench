; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_seat.c_seat_consider_warp_to_focus.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_seat.c_seat_consider_warp_to_focus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.sway_seat = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.sway_node = type { i64, i32, i32 }
%struct.sway_output = type { i32 }
%struct.wlr_box = type { i32 }

@config = common dso_local global %struct.TYPE_9__* null, align 8
@WARP_NO = common dso_local global i64 0, align 8
@WARP_OUTPUT = common dso_local global i64 0, align 8
@N_CONTAINER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @seat_consider_warp_to_focus(%struct.sway_seat* %0) #0 {
  %2 = alloca %struct.sway_seat*, align 8
  %3 = alloca %struct.sway_node*, align 8
  %4 = alloca %struct.sway_output*, align 8
  %5 = alloca %struct.wlr_box, align 4
  store %struct.sway_seat* %0, %struct.sway_seat** %2, align 8
  %6 = load %struct.sway_seat*, %struct.sway_seat** %2, align 8
  %7 = call %struct.sway_node* @seat_get_focus(%struct.sway_seat* %6)
  store %struct.sway_node* %7, %struct.sway_node** %3, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** @config, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @WARP_NO, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load %struct.sway_node*, %struct.sway_node** %3, align 8
  %15 = icmp ne %struct.sway_node* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %13, %1
  br label %94

17:                                               ; preds = %13
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** @config, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @WARP_OUTPUT, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %50

23:                                               ; preds = %17
  %24 = load %struct.sway_node*, %struct.sway_node** %3, align 8
  %25 = call %struct.sway_output* @node_get_output(%struct.sway_node* %24)
  store %struct.sway_output* %25, %struct.sway_output** %4, align 8
  %26 = load %struct.sway_output*, %struct.sway_output** %4, align 8
  %27 = icmp ne %struct.sway_output* %26, null
  br i1 %27, label %28, label %49

28:                                               ; preds = %23
  %29 = load %struct.sway_output*, %struct.sway_output** %4, align 8
  %30 = call i32 @output_get_box(%struct.sway_output* %29, %struct.wlr_box* %5)
  %31 = load %struct.sway_seat*, %struct.sway_seat** %2, align 8
  %32 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %31, i32 0, i32 0
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.sway_seat*, %struct.sway_seat** %2, align 8
  %39 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %38, i32 0, i32 0
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 2
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @wlr_box_contains_point(%struct.wlr_box* %5, i32 %37, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %28
  br label %94

48:                                               ; preds = %28
  br label %49

49:                                               ; preds = %48, %23
  br label %50

50:                                               ; preds = %49, %17
  %51 = load %struct.sway_node*, %struct.sway_node** %3, align 8
  %52 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @N_CONTAINER, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %50
  %57 = load %struct.sway_seat*, %struct.sway_seat** %2, align 8
  %58 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %57, i32 0, i32 0
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = load %struct.sway_node*, %struct.sway_node** %3, align 8
  %61 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @cursor_warp_to_container(%struct.TYPE_8__* %59, i32 %62)
  br label %72

64:                                               ; preds = %50
  %65 = load %struct.sway_seat*, %struct.sway_seat** %2, align 8
  %66 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %65, i32 0, i32 0
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  %68 = load %struct.sway_node*, %struct.sway_node** %3, align 8
  %69 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @cursor_warp_to_workspace(%struct.TYPE_8__* %67, i32 %70)
  br label %72

72:                                               ; preds = %64, %56
  %73 = load %struct.sway_seat*, %struct.sway_seat** %2, align 8
  %74 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %73, i32 0, i32 0
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %94

79:                                               ; preds = %72
  %80 = load %struct.sway_seat*, %struct.sway_seat** %2, align 8
  %81 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %80, i32 0, i32 0
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %81, align 8
  %83 = call i32 @cursor_unhide(%struct.TYPE_8__* %82)
  %84 = load %struct.sway_seat*, %struct.sway_seat** %2, align 8
  %85 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %84, i32 0, i32 0
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.sway_seat*, %struct.sway_seat** %2, align 8
  %90 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %89, i32 0, i32 0
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %90, align 8
  %92 = call i32 @cursor_get_timeout(%struct.TYPE_8__* %91)
  %93 = call i32 @wl_event_source_timer_update(i32 %88, i32 %92)
  br label %94

94:                                               ; preds = %16, %47, %79, %72
  ret void
}

declare dso_local %struct.sway_node* @seat_get_focus(%struct.sway_seat*) #1

declare dso_local %struct.sway_output* @node_get_output(%struct.sway_node*) #1

declare dso_local i32 @output_get_box(%struct.sway_output*, %struct.wlr_box*) #1

declare dso_local i64 @wlr_box_contains_point(%struct.wlr_box*, i32, i32) #1

declare dso_local i32 @cursor_warp_to_container(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @cursor_warp_to_workspace(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @cursor_unhide(%struct.TYPE_8__*) #1

declare dso_local i32 @wl_event_source_timer_update(i32, i32) #1

declare dso_local i32 @cursor_get_timeout(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
