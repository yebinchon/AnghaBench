; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_cursor.c_handle_touch_down.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_cursor.c_handle_touch_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.sway_cursor = type { i32, %struct.sway_seat* }
%struct.sway_seat = type { double, double, i32, %struct.wlr_seat* }
%struct.wlr_seat = type { i32 }
%struct.wl_listener = type { i32 }
%struct.wlr_event_touch_down = type { i32, i32, i32, i32, i32 }
%struct.wlr_surface = type { i32 }

@touch_down = common dso_local global i32 0, align 4
@server = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@cursor = common dso_local global %struct.sway_cursor* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl_listener*, i8*)* @handle_touch_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_touch_down(%struct.wl_listener* %0, i8* %1) #0 {
  %3 = alloca %struct.wl_listener*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sway_cursor*, align 8
  %6 = alloca %struct.wlr_event_touch_down*, align 8
  %7 = alloca %struct.sway_seat*, align 8
  %8 = alloca %struct.wlr_seat*, align 8
  %9 = alloca %struct.wlr_surface*, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  store %struct.wl_listener* %0, %struct.wl_listener** %3, align 8
  store i8* %1, i8** %4, align 8
  %14 = load %struct.wl_listener*, %struct.wl_listener** %3, align 8
  %15 = load %struct.sway_cursor*, %struct.sway_cursor** %5, align 8
  %16 = ptrtoint %struct.sway_cursor* %15 to i32
  %17 = load i32, i32* @touch_down, align 4
  %18 = call %struct.sway_cursor* @wl_container_of(%struct.wl_listener* %14, i32 %16, i32 %17)
  store %struct.sway_cursor* %18, %struct.sway_cursor** %5, align 8
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 4
  %20 = load %struct.sway_cursor*, %struct.sway_cursor** %5, align 8
  %21 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %20, i32 0, i32 1
  %22 = load %struct.sway_seat*, %struct.sway_seat** %21, align 8
  %23 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %22, i32 0, i32 3
  %24 = load %struct.wlr_seat*, %struct.wlr_seat** %23, align 8
  %25 = call i32 @wlr_idle_notify_activity(i32 %19, %struct.wlr_seat* %24)
  %26 = load i8*, i8** %4, align 8
  %27 = bitcast i8* %26 to %struct.wlr_event_touch_down*
  store %struct.wlr_event_touch_down* %27, %struct.wlr_event_touch_down** %6, align 8
  %28 = load %struct.sway_cursor*, %struct.sway_cursor** %5, align 8
  %29 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %28, i32 0, i32 1
  %30 = load %struct.sway_seat*, %struct.sway_seat** %29, align 8
  store %struct.sway_seat* %30, %struct.sway_seat** %7, align 8
  %31 = load %struct.sway_seat*, %struct.sway_seat** %7, align 8
  %32 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %31, i32 0, i32 3
  %33 = load %struct.wlr_seat*, %struct.wlr_seat** %32, align 8
  store %struct.wlr_seat* %33, %struct.wlr_seat** %8, align 8
  store %struct.wlr_surface* null, %struct.wlr_surface** %9, align 8
  %34 = load %struct.sway_cursor*, %struct.sway_cursor** %5, align 8
  %35 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.wlr_event_touch_down*, %struct.wlr_event_touch_down** %6, align 8
  %38 = getelementptr inbounds %struct.wlr_event_touch_down, %struct.wlr_event_touch_down* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.wlr_event_touch_down*, %struct.wlr_event_touch_down** %6, align 8
  %41 = getelementptr inbounds %struct.wlr_event_touch_down, %struct.wlr_event_touch_down* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.wlr_event_touch_down*, %struct.wlr_event_touch_down** %6, align 8
  %44 = getelementptr inbounds %struct.wlr_event_touch_down, %struct.wlr_event_touch_down* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @wlr_cursor_absolute_to_layout_coords(i32 %36, i32 %39, i32 %42, i32 %45, double* %10, double* %11)
  %47 = load %struct.sway_seat*, %struct.sway_seat** %7, align 8
  %48 = load double, double* %10, align 8
  %49 = load double, double* %11, align 8
  %50 = call i32 @node_at_coords(%struct.sway_seat* %47, double %48, double %49, %struct.wlr_surface** %9, double* %12, double* %13)
  %51 = load %struct.wlr_event_touch_down*, %struct.wlr_event_touch_down** %6, align 8
  %52 = getelementptr inbounds %struct.wlr_event_touch_down, %struct.wlr_event_touch_down* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.sway_seat*, %struct.sway_seat** %7, align 8
  %55 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 8
  %56 = load double, double* %10, align 8
  %57 = load %struct.sway_seat*, %struct.sway_seat** %7, align 8
  %58 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %57, i32 0, i32 0
  store double %56, double* %58, align 8
  %59 = load double, double* %11, align 8
  %60 = load %struct.sway_seat*, %struct.sway_seat** %7, align 8
  %61 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %60, i32 0, i32 1
  store double %59, double* %61, align 8
  %62 = load %struct.wlr_surface*, %struct.wlr_surface** %9, align 8
  %63 = icmp ne %struct.wlr_surface* %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %2
  br label %84

65:                                               ; preds = %2
  %66 = load %struct.sway_seat*, %struct.sway_seat** %7, align 8
  %67 = load %struct.wlr_surface*, %struct.wlr_surface** %9, align 8
  %68 = call i64 @seat_is_input_allowed(%struct.sway_seat* %66, %struct.wlr_surface* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %84

70:                                               ; preds = %65
  %71 = load %struct.wlr_seat*, %struct.wlr_seat** %8, align 8
  %72 = load %struct.wlr_surface*, %struct.wlr_surface** %9, align 8
  %73 = load %struct.wlr_event_touch_down*, %struct.wlr_event_touch_down** %6, align 8
  %74 = getelementptr inbounds %struct.wlr_event_touch_down, %struct.wlr_event_touch_down* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.wlr_event_touch_down*, %struct.wlr_event_touch_down** %6, align 8
  %77 = getelementptr inbounds %struct.wlr_event_touch_down, %struct.wlr_event_touch_down* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load double, double* %12, align 8
  %80 = load double, double* %13, align 8
  %81 = call i32 @wlr_seat_touch_notify_down(%struct.wlr_seat* %71, %struct.wlr_surface* %72, i32 %75, i32 %78, double %79, double %80)
  %82 = load %struct.sway_cursor*, %struct.sway_cursor** %5, align 8
  %83 = call i32 @cursor_hide(%struct.sway_cursor* %82)
  br label %84

84:                                               ; preds = %64, %70, %65
  ret void
}

declare dso_local %struct.sway_cursor* @wl_container_of(%struct.wl_listener*, i32, i32) #1

declare dso_local i32 @wlr_idle_notify_activity(i32, %struct.wlr_seat*) #1

declare dso_local i32 @wlr_cursor_absolute_to_layout_coords(i32, i32, i32, i32, double*, double*) #1

declare dso_local i32 @node_at_coords(%struct.sway_seat*, double, double, %struct.wlr_surface**, double*, double*) #1

declare dso_local i64 @seat_is_input_allowed(%struct.sway_seat*, %struct.wlr_surface*) #1

declare dso_local i32 @wlr_seat_touch_notify_down(%struct.wlr_seat*, %struct.wlr_surface*, i32, i32, double, double) #1

declare dso_local i32 @cursor_hide(%struct.sway_cursor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
