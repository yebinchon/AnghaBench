; ModuleID = '/home/carl/AnghaBench/tmux/extr_window.c_window_pane_set_palette.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_window.c_window_pane_set_palette.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window_pane = type { i32*, i32 }

@PANE_REDRAW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @window_pane_set_palette(%struct.window_pane* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.window_pane*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.window_pane* %0, %struct.window_pane** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp sgt i32 %7, 255
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  br label %32

10:                                               ; preds = %3
  %11 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %12 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = call i32* @xcalloc(i32 256, i32 4)
  %17 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %18 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %17, i32 0, i32 0
  store i32* %16, i32** %18, align 8
  br label %19

19:                                               ; preds = %15, %10
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %22 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  store i32 %20, i32* %26, align 4
  %27 = load i32, i32* @PANE_REDRAW, align 4
  %28 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %29 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 8
  br label %32

32:                                               ; preds = %19, %9
  ret void
}

declare dso_local i32* @xcalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
