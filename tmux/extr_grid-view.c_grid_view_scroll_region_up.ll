; ModuleID = '/home/carl/AnghaBench/tmux/extr_grid-view.c_grid_view_scroll_region_up.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_grid-view.c_grid_view_scroll_region_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grid = type { i32, i32 }

@GRID_HISTORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @grid_view_scroll_region_up(%struct.grid* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.grid*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.grid* %0, %struct.grid** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.grid*, %struct.grid** %5, align 8
  %10 = getelementptr inbounds %struct.grid, %struct.grid* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @GRID_HISTORY, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %44

15:                                               ; preds = %4
  %16 = load %struct.grid*, %struct.grid** %5, align 8
  %17 = call i32 @grid_collect_history(%struct.grid* %16)
  %18 = load i32, i32* %6, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %15
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.grid*, %struct.grid** %5, align 8
  %23 = getelementptr inbounds %struct.grid, %struct.grid* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = sub nsw i32 %24, 1
  %26 = icmp eq i32 %21, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %20
  %28 = load %struct.grid*, %struct.grid** %5, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @grid_scroll_history(%struct.grid* %28, i32 %29)
  br label %43

31:                                               ; preds = %20, %15
  %32 = load %struct.grid*, %struct.grid** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @grid_view_y(%struct.grid* %32, i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load %struct.grid*, %struct.grid** %5, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @grid_view_y(%struct.grid* %35, i32 %36)
  store i32 %37, i32* %7, align 4
  %38 = load %struct.grid*, %struct.grid** %5, align 8
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @grid_scroll_history_region(%struct.grid* %38, i32 %39, i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %31, %27
  br label %60

44:                                               ; preds = %4
  %45 = load %struct.grid*, %struct.grid** %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @grid_view_y(%struct.grid* %45, i32 %46)
  store i32 %47, i32* %6, align 4
  %48 = load %struct.grid*, %struct.grid** %5, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @grid_view_y(%struct.grid* %48, i32 %49)
  store i32 %50, i32* %7, align 4
  %51 = load %struct.grid*, %struct.grid** %5, align 8
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %6, align 4
  %57 = sub nsw i32 %55, %56
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @grid_move_lines(%struct.grid* %51, i32 %52, i32 %54, i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %44, %43
  ret void
}

declare dso_local i32 @grid_collect_history(%struct.grid*) #1

declare dso_local i32 @grid_scroll_history(%struct.grid*, i32) #1

declare dso_local i32 @grid_view_y(%struct.grid*, i32) #1

declare dso_local i32 @grid_scroll_history_region(%struct.grid*, i32, i32, i32) #1

declare dso_local i32 @grid_move_lines(%struct.grid*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
