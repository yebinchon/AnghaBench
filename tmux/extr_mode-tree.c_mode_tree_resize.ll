; ModuleID = '/home/carl/AnghaBench/tmux/extr_mode-tree.c_mode_tree_resize.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_mode-tree.c_mode_tree_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mode_tree_data = type { %struct.TYPE_2__*, %struct.screen }
%struct.TYPE_2__ = type { i32 }
%struct.screen = type { i32 }

@PANE_REDRAW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mode_tree_resize(%struct.mode_tree_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mode_tree_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.screen*, align 8
  store %struct.mode_tree_data* %0, %struct.mode_tree_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.mode_tree_data*, %struct.mode_tree_data** %4, align 8
  %9 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %8, i32 0, i32 1
  store %struct.screen* %9, %struct.screen** %7, align 8
  %10 = load %struct.screen*, %struct.screen** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @screen_resize(%struct.screen* %10, i32 %11, i32 %12, i32 0)
  %14 = load %struct.mode_tree_data*, %struct.mode_tree_data** %4, align 8
  %15 = call i32 @mode_tree_build(%struct.mode_tree_data* %14)
  %16 = load %struct.mode_tree_data*, %struct.mode_tree_data** %4, align 8
  %17 = call i32 @mode_tree_draw(%struct.mode_tree_data* %16)
  %18 = load i32, i32* @PANE_REDRAW, align 4
  %19 = load %struct.mode_tree_data*, %struct.mode_tree_data** %4, align 8
  %20 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %18
  store i32 %24, i32* %22, align 4
  ret void
}

declare dso_local i32 @screen_resize(%struct.screen*, i32, i32, i32) #1

declare dso_local i32 @mode_tree_build(%struct.mode_tree_data*) #1

declare dso_local i32 @mode_tree_draw(%struct.mode_tree_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
