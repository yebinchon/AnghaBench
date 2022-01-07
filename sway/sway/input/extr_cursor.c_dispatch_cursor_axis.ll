; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_cursor.c_dispatch_cursor_axis.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_cursor.c_dispatch_cursor_axis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_cursor = type { i32 }
%struct.wlr_event_pointer_axis = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dispatch_cursor_axis(%struct.sway_cursor* %0, %struct.wlr_event_pointer_axis* %1) #0 {
  %3 = alloca %struct.sway_cursor*, align 8
  %4 = alloca %struct.wlr_event_pointer_axis*, align 8
  store %struct.sway_cursor* %0, %struct.sway_cursor** %3, align 8
  store %struct.wlr_event_pointer_axis* %1, %struct.wlr_event_pointer_axis** %4, align 8
  %5 = load %struct.sway_cursor*, %struct.sway_cursor** %3, align 8
  %6 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.wlr_event_pointer_axis*, %struct.wlr_event_pointer_axis** %4, align 8
  %9 = call i32 @seatop_axis(i32 %7, %struct.wlr_event_pointer_axis* %8)
  ret void
}

declare dso_local i32 @seatop_axis(i32, %struct.wlr_event_pointer_axis*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
