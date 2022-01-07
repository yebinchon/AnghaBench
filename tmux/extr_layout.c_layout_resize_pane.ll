; ModuleID = '/home/carl/AnghaBench/tmux/extr_layout.c_layout_resize_pane.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_layout.c_layout_resize_pane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window_pane = type { i32, %struct.layout_cell* }
%struct.layout_cell = type { i32, i32, %struct.layout_cell* }

@layout_cells = common dso_local global i32 0, align 4
@entry = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @layout_resize_pane(%struct.window_pane* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.window_pane*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.layout_cell*, align 8
  %10 = alloca %struct.layout_cell*, align 8
  store %struct.window_pane* %0, %struct.window_pane** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.window_pane*, %struct.window_pane** %5, align 8
  %12 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %11, i32 0, i32 1
  %13 = load %struct.layout_cell*, %struct.layout_cell** %12, align 8
  store %struct.layout_cell* %13, %struct.layout_cell** %9, align 8
  %14 = load %struct.layout_cell*, %struct.layout_cell** %9, align 8
  %15 = getelementptr inbounds %struct.layout_cell, %struct.layout_cell* %14, i32 0, i32 2
  %16 = load %struct.layout_cell*, %struct.layout_cell** %15, align 8
  store %struct.layout_cell* %16, %struct.layout_cell** %10, align 8
  br label %17

17:                                               ; preds = %28, %4
  %18 = load %struct.layout_cell*, %struct.layout_cell** %10, align 8
  %19 = icmp ne %struct.layout_cell* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = load %struct.layout_cell*, %struct.layout_cell** %10, align 8
  %22 = getelementptr inbounds %struct.layout_cell, %struct.layout_cell* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %23, %24
  br label %26

26:                                               ; preds = %20, %17
  %27 = phi i1 [ false, %17 ], [ %25, %20 ]
  br i1 %27, label %28, label %33

28:                                               ; preds = %26
  %29 = load %struct.layout_cell*, %struct.layout_cell** %10, align 8
  store %struct.layout_cell* %29, %struct.layout_cell** %9, align 8
  %30 = load %struct.layout_cell*, %struct.layout_cell** %9, align 8
  %31 = getelementptr inbounds %struct.layout_cell, %struct.layout_cell* %30, i32 0, i32 2
  %32 = load %struct.layout_cell*, %struct.layout_cell** %31, align 8
  store %struct.layout_cell* %32, %struct.layout_cell** %10, align 8
  br label %17

33:                                               ; preds = %26
  %34 = load %struct.layout_cell*, %struct.layout_cell** %10, align 8
  %35 = icmp eq %struct.layout_cell* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  br label %58

37:                                               ; preds = %33
  %38 = load %struct.layout_cell*, %struct.layout_cell** %9, align 8
  %39 = load %struct.layout_cell*, %struct.layout_cell** %10, align 8
  %40 = getelementptr inbounds %struct.layout_cell, %struct.layout_cell* %39, i32 0, i32 1
  %41 = load i32, i32* @layout_cells, align 4
  %42 = call %struct.layout_cell* @TAILQ_LAST(i32* %40, i32 %41)
  %43 = icmp eq %struct.layout_cell* %38, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %37
  %45 = load %struct.layout_cell*, %struct.layout_cell** %9, align 8
  %46 = load i32, i32* @layout_cells, align 4
  %47 = load i32, i32* @entry, align 4
  %48 = call %struct.layout_cell* @TAILQ_PREV(%struct.layout_cell* %45, i32 %46, i32 %47)
  store %struct.layout_cell* %48, %struct.layout_cell** %9, align 8
  br label %49

49:                                               ; preds = %44, %37
  %50 = load %struct.window_pane*, %struct.window_pane** %5, align 8
  %51 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.layout_cell*, %struct.layout_cell** %9, align 8
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @layout_resize_layout(i32 %52, %struct.layout_cell* %53, i32 %54, i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %49, %36
  ret void
}

declare dso_local %struct.layout_cell* @TAILQ_LAST(i32*, i32) #1

declare dso_local %struct.layout_cell* @TAILQ_PREV(%struct.layout_cell*, i32, i32) #1

declare dso_local i32 @layout_resize_layout(i32, %struct.layout_cell*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
