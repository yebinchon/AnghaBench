; ModuleID = '/home/carl/AnghaBench/tmux/extr_layout.c_layout_resize_pane_to.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_layout.c_layout_resize_pane_to.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window_pane = type { %struct.layout_cell* }
%struct.layout_cell = type { i32, i32, i32, i32, %struct.layout_cell* }

@LAYOUT_LEFTRIGHT = common dso_local global i32 0, align 4
@layout_cells = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @layout_resize_pane_to(%struct.window_pane* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.window_pane*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.layout_cell*, align 8
  %8 = alloca %struct.layout_cell*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.window_pane* %0, %struct.window_pane** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %12 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %11, i32 0, i32 0
  %13 = load %struct.layout_cell*, %struct.layout_cell** %12, align 8
  store %struct.layout_cell* %13, %struct.layout_cell** %7, align 8
  %14 = load %struct.layout_cell*, %struct.layout_cell** %7, align 8
  %15 = getelementptr inbounds %struct.layout_cell, %struct.layout_cell* %14, i32 0, i32 4
  %16 = load %struct.layout_cell*, %struct.layout_cell** %15, align 8
  store %struct.layout_cell* %16, %struct.layout_cell** %8, align 8
  br label %17

17:                                               ; preds = %28, %3
  %18 = load %struct.layout_cell*, %struct.layout_cell** %8, align 8
  %19 = icmp ne %struct.layout_cell* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = load %struct.layout_cell*, %struct.layout_cell** %8, align 8
  %22 = getelementptr inbounds %struct.layout_cell, %struct.layout_cell* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %23, %24
  br label %26

26:                                               ; preds = %20, %17
  %27 = phi i1 [ false, %17 ], [ %25, %20 ]
  br i1 %27, label %28, label %33

28:                                               ; preds = %26
  %29 = load %struct.layout_cell*, %struct.layout_cell** %8, align 8
  store %struct.layout_cell* %29, %struct.layout_cell** %7, align 8
  %30 = load %struct.layout_cell*, %struct.layout_cell** %7, align 8
  %31 = getelementptr inbounds %struct.layout_cell, %struct.layout_cell* %30, i32 0, i32 4
  %32 = load %struct.layout_cell*, %struct.layout_cell** %31, align 8
  store %struct.layout_cell* %32, %struct.layout_cell** %8, align 8
  br label %17

33:                                               ; preds = %26
  %34 = load %struct.layout_cell*, %struct.layout_cell** %8, align 8
  %35 = icmp eq %struct.layout_cell* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  br label %69

37:                                               ; preds = %33
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @LAYOUT_LEFTRIGHT, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load %struct.layout_cell*, %struct.layout_cell** %7, align 8
  %43 = getelementptr inbounds %struct.layout_cell, %struct.layout_cell* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %10, align 4
  br label %49

45:                                               ; preds = %37
  %46 = load %struct.layout_cell*, %struct.layout_cell** %7, align 8
  %47 = getelementptr inbounds %struct.layout_cell, %struct.layout_cell* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %10, align 4
  br label %49

49:                                               ; preds = %45, %41
  %50 = load %struct.layout_cell*, %struct.layout_cell** %7, align 8
  %51 = load %struct.layout_cell*, %struct.layout_cell** %8, align 8
  %52 = getelementptr inbounds %struct.layout_cell, %struct.layout_cell* %51, i32 0, i32 3
  %53 = load i32, i32* @layout_cells, align 4
  %54 = call %struct.layout_cell* @TAILQ_LAST(i32* %52, i32 %53)
  %55 = icmp eq %struct.layout_cell* %50, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %49
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %6, align 4
  %59 = sub nsw i32 %57, %58
  store i32 %59, i32* %9, align 4
  br label %64

60:                                               ; preds = %49
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %10, align 4
  %63 = sub nsw i32 %61, %62
  store i32 %63, i32* %9, align 4
  br label %64

64:                                               ; preds = %60, %56
  %65 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @layout_resize_pane(%struct.window_pane* %65, i32 %66, i32 %67, i32 1)
  br label %69

69:                                               ; preds = %64, %36
  ret void
}

declare dso_local %struct.layout_cell* @TAILQ_LAST(i32*, i32) #1

declare dso_local i32 @layout_resize_pane(%struct.window_pane*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
