; ModuleID = '/home/carl/AnghaBench/tmux/extr_window.c_window_pane_next_by_number.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_window.c_window_pane_next_by_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window = type { i32 }
%struct.window_pane = type { i32 }

@entry = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.window_pane* @window_pane_next_by_number(%struct.window* %0, %struct.window_pane* %1, i64 %2) #0 {
  %4 = alloca %struct.window*, align 8
  %5 = alloca %struct.window_pane*, align 8
  %6 = alloca i64, align 8
  store %struct.window* %0, %struct.window** %4, align 8
  store %struct.window_pane* %1, %struct.window_pane** %5, align 8
  store i64 %2, i64* %6, align 8
  br label %7

7:                                                ; preds = %20, %3
  %8 = load i64, i64* %6, align 8
  %9 = icmp sgt i64 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %7
  %11 = load %struct.window_pane*, %struct.window_pane** %5, align 8
  %12 = load i32, i32* @entry, align 4
  %13 = call %struct.window_pane* @TAILQ_NEXT(%struct.window_pane* %11, i32 %12)
  store %struct.window_pane* %13, %struct.window_pane** %5, align 8
  %14 = icmp eq %struct.window_pane* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = load %struct.window*, %struct.window** %4, align 8
  %17 = getelementptr inbounds %struct.window, %struct.window* %16, i32 0, i32 0
  %18 = call %struct.window_pane* @TAILQ_FIRST(i32* %17)
  store %struct.window_pane* %18, %struct.window_pane** %5, align 8
  br label %19

19:                                               ; preds = %15, %10
  br label %20

20:                                               ; preds = %19
  %21 = load i64, i64* %6, align 8
  %22 = add nsw i64 %21, -1
  store i64 %22, i64* %6, align 8
  br label %7

23:                                               ; preds = %7
  %24 = load %struct.window_pane*, %struct.window_pane** %5, align 8
  ret %struct.window_pane* %24
}

declare dso_local %struct.window_pane* @TAILQ_NEXT(%struct.window_pane*, i32) #1

declare dso_local %struct.window_pane* @TAILQ_FIRST(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
