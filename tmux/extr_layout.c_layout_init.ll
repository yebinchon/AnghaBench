; ModuleID = '/home/carl/AnghaBench/tmux/extr_layout.c_layout_init.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_layout.c_layout_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window = type { i32, i32, %struct.layout_cell* }
%struct.layout_cell = type { i32 }
%struct.window_pane = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @layout_init(%struct.window* %0, %struct.window_pane* %1) #0 {
  %3 = alloca %struct.window*, align 8
  %4 = alloca %struct.window_pane*, align 8
  %5 = alloca %struct.layout_cell*, align 8
  store %struct.window* %0, %struct.window** %3, align 8
  store %struct.window_pane* %1, %struct.window_pane** %4, align 8
  %6 = call %struct.layout_cell* @layout_create_cell(i32* null)
  %7 = load %struct.window*, %struct.window** %3, align 8
  %8 = getelementptr inbounds %struct.window, %struct.window* %7, i32 0, i32 2
  store %struct.layout_cell* %6, %struct.layout_cell** %8, align 8
  store %struct.layout_cell* %6, %struct.layout_cell** %5, align 8
  %9 = load %struct.layout_cell*, %struct.layout_cell** %5, align 8
  %10 = load %struct.window*, %struct.window** %3, align 8
  %11 = getelementptr inbounds %struct.window, %struct.window* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.window*, %struct.window** %3, align 8
  %14 = getelementptr inbounds %struct.window, %struct.window* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @layout_set_size(%struct.layout_cell* %9, i32 %12, i32 %15, i32 0, i32 0)
  %17 = load %struct.layout_cell*, %struct.layout_cell** %5, align 8
  %18 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %19 = call i32 @layout_make_leaf(%struct.layout_cell* %17, %struct.window_pane* %18)
  %20 = load %struct.window*, %struct.window** %3, align 8
  %21 = call i32 @layout_fix_panes(%struct.window* %20)
  ret void
}

declare dso_local %struct.layout_cell* @layout_create_cell(i32*) #1

declare dso_local i32 @layout_set_size(%struct.layout_cell*, i32, i32, i32, i32) #1

declare dso_local i32 @layout_make_leaf(%struct.layout_cell*, %struct.window_pane*) #1

declare dso_local i32 @layout_fix_panes(%struct.window*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
