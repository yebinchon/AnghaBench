; ModuleID = '/home/carl/AnghaBench/tmux/extr_mode-tree.c_mode_tree_zoom.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_mode-tree.c_mode_tree_zoom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mode_tree_data = type { i32, %struct.window_pane* }
%struct.window_pane = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.args = type { i32 }

@WINDOW_ZOOMED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mode_tree_zoom(%struct.mode_tree_data* %0, %struct.args* %1) #0 {
  %3 = alloca %struct.mode_tree_data*, align 8
  %4 = alloca %struct.args*, align 8
  %5 = alloca %struct.window_pane*, align 8
  store %struct.mode_tree_data* %0, %struct.mode_tree_data** %3, align 8
  store %struct.args* %1, %struct.args** %4, align 8
  %6 = load %struct.mode_tree_data*, %struct.mode_tree_data** %3, align 8
  %7 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %6, i32 0, i32 1
  %8 = load %struct.window_pane*, %struct.window_pane** %7, align 8
  store %struct.window_pane* %8, %struct.window_pane** %5, align 8
  %9 = load %struct.args*, %struct.args** %4, align 8
  %10 = call i64 @args_has(%struct.args* %9, i8 signext 90)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %36

12:                                               ; preds = %2
  %13 = load %struct.window_pane*, %struct.window_pane** %5, align 8
  %14 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @WINDOW_ZOOMED, align 4
  %19 = and i32 %17, %18
  %20 = load %struct.mode_tree_data*, %struct.mode_tree_data** %3, align 8
  %21 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.mode_tree_data*, %struct.mode_tree_data** %3, align 8
  %23 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %12
  %27 = load %struct.window_pane*, %struct.window_pane** %5, align 8
  %28 = call i64 @window_zoom(%struct.window_pane* %27)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load %struct.window_pane*, %struct.window_pane** %5, align 8
  %32 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = call i32 @server_redraw_window(%struct.TYPE_2__* %33)
  br label %35

35:                                               ; preds = %30, %26, %12
  br label %39

36:                                               ; preds = %2
  %37 = load %struct.mode_tree_data*, %struct.mode_tree_data** %3, align 8
  %38 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %37, i32 0, i32 0
  store i32 -1, i32* %38, align 8
  br label %39

39:                                               ; preds = %36, %35
  ret void
}

declare dso_local i64 @args_has(%struct.args*, i8 signext) #1

declare dso_local i64 @window_zoom(%struct.window_pane*) #1

declare dso_local i32 @server_redraw_window(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
