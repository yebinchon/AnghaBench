; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_cursor.c_handle_touch_up.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_cursor.c_handle_touch_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.sway_cursor = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.wlr_seat* }
%struct.wlr_seat = type { i32 }
%struct.wl_listener = type { i32 }
%struct.wlr_event_touch_up = type { i32, i32 }

@touch_up = common dso_local global i32 0, align 4
@server = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@cursor = common dso_local global %struct.sway_cursor* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl_listener*, i8*)* @handle_touch_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_touch_up(%struct.wl_listener* %0, i8* %1) #0 {
  %3 = alloca %struct.wl_listener*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sway_cursor*, align 8
  %6 = alloca %struct.wlr_event_touch_up*, align 8
  %7 = alloca %struct.wlr_seat*, align 8
  store %struct.wl_listener* %0, %struct.wl_listener** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.wl_listener*, %struct.wl_listener** %3, align 8
  %9 = load %struct.sway_cursor*, %struct.sway_cursor** %5, align 8
  %10 = ptrtoint %struct.sway_cursor* %9 to i32
  %11 = load i32, i32* @touch_up, align 4
  %12 = call %struct.sway_cursor* @wl_container_of(%struct.wl_listener* %8, i32 %10, i32 %11)
  store %struct.sway_cursor* %12, %struct.sway_cursor** %5, align 8
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @server, i32 0, i32 0), align 4
  %14 = load %struct.sway_cursor*, %struct.sway_cursor** %5, align 8
  %15 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.wlr_seat*, %struct.wlr_seat** %17, align 8
  %19 = call i32 @wlr_idle_notify_activity(i32 %13, %struct.wlr_seat* %18)
  %20 = load i8*, i8** %4, align 8
  %21 = bitcast i8* %20 to %struct.wlr_event_touch_up*
  store %struct.wlr_event_touch_up* %21, %struct.wlr_event_touch_up** %6, align 8
  %22 = load %struct.sway_cursor*, %struct.sway_cursor** %5, align 8
  %23 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load %struct.wlr_seat*, %struct.wlr_seat** %25, align 8
  store %struct.wlr_seat* %26, %struct.wlr_seat** %7, align 8
  %27 = load %struct.wlr_seat*, %struct.wlr_seat** %7, align 8
  %28 = load %struct.wlr_event_touch_up*, %struct.wlr_event_touch_up** %6, align 8
  %29 = getelementptr inbounds %struct.wlr_event_touch_up, %struct.wlr_event_touch_up* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.wlr_event_touch_up*, %struct.wlr_event_touch_up** %6, align 8
  %32 = getelementptr inbounds %struct.wlr_event_touch_up, %struct.wlr_event_touch_up* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @wlr_seat_touch_notify_up(%struct.wlr_seat* %27, i32 %30, i32 %33)
  ret void
}

declare dso_local %struct.sway_cursor* @wl_container_of(%struct.wl_listener*, i32, i32) #1

declare dso_local i32 @wlr_idle_notify_activity(i32, %struct.wlr_seat*) #1

declare dso_local i32 @wlr_seat_touch_notify_up(%struct.wlr_seat*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
