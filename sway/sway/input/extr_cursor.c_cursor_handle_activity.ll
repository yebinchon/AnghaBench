; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_cursor.c_cursor_handle_activity.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_cursor.c_cursor_handle_activity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.sway_cursor = type { i64, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@server = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cursor_handle_activity(%struct.sway_cursor* %0) #0 {
  %2 = alloca %struct.sway_cursor*, align 8
  store %struct.sway_cursor* %0, %struct.sway_cursor** %2, align 8
  %3 = load %struct.sway_cursor*, %struct.sway_cursor** %2, align 8
  %4 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 8
  %6 = load %struct.sway_cursor*, %struct.sway_cursor** %2, align 8
  %7 = call i32 @cursor_get_timeout(%struct.sway_cursor* %6)
  %8 = call i32 @wl_event_source_timer_update(i32 %5, i32 %7)
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @server, i32 0, i32 0), align 4
  %10 = load %struct.sway_cursor*, %struct.sway_cursor** %2, align 8
  %11 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %10, i32 0, i32 1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @wlr_idle_notify_activity(i32 %9, i32 %14)
  %16 = load %struct.sway_cursor*, %struct.sway_cursor** %2, align 8
  %17 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load %struct.sway_cursor*, %struct.sway_cursor** %2, align 8
  %22 = call i32 @cursor_unhide(%struct.sway_cursor* %21)
  br label %23

23:                                               ; preds = %20, %1
  ret void
}

declare dso_local i32 @wl_event_source_timer_update(i32, i32) #1

declare dso_local i32 @cursor_get_timeout(%struct.sway_cursor*) #1

declare dso_local i32 @wlr_idle_notify_activity(i32, i32) #1

declare dso_local i32 @cursor_unhide(%struct.sway_cursor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
