; ModuleID = '/home/carl/AnghaBench/tmux/extr_window.c_window_pane_visible.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_window.c_window_pane_visible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window_pane = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.window_pane* }

@WINDOW_ZOOMED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @window_pane_visible(%struct.window_pane* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.window_pane*, align 8
  store %struct.window_pane* %0, %struct.window_pane** %3, align 8
  %4 = load %struct.window_pane*, %struct.window_pane** %3, align 8
  %5 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = xor i32 %8, -1
  %10 = load i32, i32* @WINDOW_ZOOMED, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %23

14:                                               ; preds = %1
  %15 = load %struct.window_pane*, %struct.window_pane** %3, align 8
  %16 = load %struct.window_pane*, %struct.window_pane** %3, align 8
  %17 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load %struct.window_pane*, %struct.window_pane** %19, align 8
  %21 = icmp eq %struct.window_pane* %15, %20
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %2, align 4
  br label %23

23:                                               ; preds = %14, %13
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
