; ModuleID = '/home/carl/AnghaBench/tmux/extr_server-fn.c_server_kill_pane.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_server-fn.c_server_kill_pane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window_pane = type { %struct.window* }
%struct.window = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @server_kill_pane(%struct.window_pane* %0) #0 {
  %2 = alloca %struct.window_pane*, align 8
  %3 = alloca %struct.window*, align 8
  store %struct.window_pane* %0, %struct.window_pane** %2, align 8
  %4 = load %struct.window_pane*, %struct.window_pane** %2, align 8
  %5 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %4, i32 0, i32 0
  %6 = load %struct.window*, %struct.window** %5, align 8
  store %struct.window* %6, %struct.window** %3, align 8
  %7 = load %struct.window*, %struct.window** %3, align 8
  %8 = call i32 @window_count_panes(%struct.window* %7)
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load %struct.window*, %struct.window** %3, align 8
  %12 = call i32 @server_kill_window(%struct.window* %11)
  %13 = call i32 (...) @recalculate_sizes()
  br label %24

14:                                               ; preds = %1
  %15 = load %struct.window*, %struct.window** %3, align 8
  %16 = call i32 @server_unzoom_window(%struct.window* %15)
  %17 = load %struct.window_pane*, %struct.window_pane** %2, align 8
  %18 = call i32 @layout_close_pane(%struct.window_pane* %17)
  %19 = load %struct.window*, %struct.window** %3, align 8
  %20 = load %struct.window_pane*, %struct.window_pane** %2, align 8
  %21 = call i32 @window_remove_pane(%struct.window* %19, %struct.window_pane* %20)
  %22 = load %struct.window*, %struct.window** %3, align 8
  %23 = call i32 @server_redraw_window(%struct.window* %22)
  br label %24

24:                                               ; preds = %14, %10
  ret void
}

declare dso_local i32 @window_count_panes(%struct.window*) #1

declare dso_local i32 @server_kill_window(%struct.window*) #1

declare dso_local i32 @recalculate_sizes(...) #1

declare dso_local i32 @server_unzoom_window(%struct.window*) #1

declare dso_local i32 @layout_close_pane(%struct.window_pane*) #1

declare dso_local i32 @window_remove_pane(%struct.window*, %struct.window_pane*) #1

declare dso_local i32 @server_redraw_window(%struct.window*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
