; ModuleID = '/home/carl/AnghaBench/tmux/extr_layout.c_layout_spread_out.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_layout.c_layout_spread_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window_pane = type { %struct.TYPE_2__*, %struct.window* }
%struct.TYPE_2__ = type { %struct.layout_cell* }
%struct.layout_cell = type { %struct.layout_cell* }
%struct.window = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @layout_spread_out(%struct.window_pane* %0) #0 {
  %2 = alloca %struct.window_pane*, align 8
  %3 = alloca %struct.layout_cell*, align 8
  %4 = alloca %struct.window*, align 8
  store %struct.window_pane* %0, %struct.window_pane** %2, align 8
  %5 = load %struct.window_pane*, %struct.window_pane** %2, align 8
  %6 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %5, i32 0, i32 1
  %7 = load %struct.window*, %struct.window** %6, align 8
  store %struct.window* %7, %struct.window** %4, align 8
  %8 = load %struct.window_pane*, %struct.window_pane** %2, align 8
  %9 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.layout_cell*, %struct.layout_cell** %11, align 8
  store %struct.layout_cell* %12, %struct.layout_cell** %3, align 8
  %13 = load %struct.layout_cell*, %struct.layout_cell** %3, align 8
  %14 = icmp eq %struct.layout_cell* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %33

16:                                               ; preds = %1
  br label %17

17:                                               ; preds = %28, %16
  %18 = load %struct.window*, %struct.window** %4, align 8
  %19 = load %struct.layout_cell*, %struct.layout_cell** %3, align 8
  %20 = call i64 @layout_spread_cell(%struct.window* %18, %struct.layout_cell* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load %struct.window*, %struct.window** %4, align 8
  %24 = call i32 @layout_fix_offsets(%struct.window* %23)
  %25 = load %struct.window*, %struct.window** %4, align 8
  %26 = call i32 @layout_fix_panes(%struct.window* %25)
  br label %33

27:                                               ; preds = %17
  br label %28

28:                                               ; preds = %27
  %29 = load %struct.layout_cell*, %struct.layout_cell** %3, align 8
  %30 = getelementptr inbounds %struct.layout_cell, %struct.layout_cell* %29, i32 0, i32 0
  %31 = load %struct.layout_cell*, %struct.layout_cell** %30, align 8
  store %struct.layout_cell* %31, %struct.layout_cell** %3, align 8
  %32 = icmp ne %struct.layout_cell* %31, null
  br i1 %32, label %17, label %33

33:                                               ; preds = %15, %28, %22
  ret void
}

declare dso_local i64 @layout_spread_cell(%struct.window*, %struct.layout_cell*) #1

declare dso_local i32 @layout_fix_offsets(%struct.window*) #1

declare dso_local i32 @layout_fix_panes(%struct.window*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
