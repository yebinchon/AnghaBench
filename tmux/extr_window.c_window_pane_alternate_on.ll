; ModuleID = '/home/carl/AnghaBench/tmux/extr_window.c_window_pane_alternate_on.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_window.c_window_pane_alternate_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window_pane = type { i32, %struct.screen, i32, i32, i32, i32*, i32 }
%struct.screen = type { %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.grid_cell = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"alternate-screen\00", align 1
@GRID_HISTORY = common dso_local global i32 0, align 4
@PANE_REDRAW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @window_pane_alternate_on(%struct.window_pane* %0, %struct.grid_cell* %1, i32 %2) #0 {
  %4 = alloca %struct.window_pane*, align 8
  %5 = alloca %struct.grid_cell*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.screen*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.window_pane* %0, %struct.window_pane** %4, align 8
  store %struct.grid_cell* %1, %struct.grid_cell** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %11 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %10, i32 0, i32 1
  store %struct.screen* %11, %struct.screen** %7, align 8
  %12 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %13 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %12, i32 0, i32 5
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %82

17:                                               ; preds = %3
  %18 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %19 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @options_get_number(i32 %20, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  br label %82

24:                                               ; preds = %17
  %25 = load %struct.screen*, %struct.screen** %7, align 8
  %26 = call i32 @screen_size_x(%struct.screen* %25)
  store i32 %26, i32* %8, align 4
  %27 = load %struct.screen*, %struct.screen** %7, align 8
  %28 = call i32 @screen_size_y(%struct.screen* %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %9, align 4
  %31 = call i32* @grid_create(i32 %29, i32 %30, i32 0)
  %32 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %33 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %32, i32 0, i32 5
  store i32* %31, i32** %33, align 8
  %34 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %35 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %34, i32 0, i32 5
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.screen*, %struct.screen** %7, align 8
  %38 = getelementptr inbounds %struct.screen, %struct.screen* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = load %struct.screen*, %struct.screen** %7, align 8
  %41 = call i32 @screen_hsize(%struct.screen* %40)
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @grid_duplicate_lines(i32* %36, i32 0, %struct.TYPE_3__* %39, i32 %41, i32 %42)
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %24
  %47 = load %struct.screen*, %struct.screen** %7, align 8
  %48 = getelementptr inbounds %struct.screen, %struct.screen* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %51 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 8
  %52 = load %struct.screen*, %struct.screen** %7, align 8
  %53 = getelementptr inbounds %struct.screen, %struct.screen* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %56 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 4
  br label %57

57:                                               ; preds = %46, %24
  %58 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %59 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %58, i32 0, i32 2
  %60 = load %struct.grid_cell*, %struct.grid_cell** %5, align 8
  %61 = call i32 @memcpy(i32* %59, %struct.grid_cell* %60, i32 4)
  %62 = load %struct.screen*, %struct.screen** %7, align 8
  %63 = getelementptr inbounds %struct.screen, %struct.screen* %62, i32 0, i32 0
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @grid_view_clear(%struct.TYPE_3__* %64, i32 0, i32 0, i32 %65, i32 %66, i32 8)
  %68 = load i32, i32* @GRID_HISTORY, align 4
  %69 = xor i32 %68, -1
  %70 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %71 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.screen, %struct.screen* %71, i32 0, i32 0
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = and i32 %75, %69
  store i32 %76, i32* %74, align 4
  %77 = load i32, i32* @PANE_REDRAW, align 4
  %78 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %79 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 8
  br label %82

82:                                               ; preds = %57, %23, %16
  ret void
}

declare dso_local i32 @options_get_number(i32, i8*) #1

declare dso_local i32 @screen_size_x(%struct.screen*) #1

declare dso_local i32 @screen_size_y(%struct.screen*) #1

declare dso_local i32* @grid_create(i32, i32, i32) #1

declare dso_local i32 @grid_duplicate_lines(i32*, i32, %struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @screen_hsize(%struct.screen*) #1

declare dso_local i32 @memcpy(i32*, %struct.grid_cell*, i32) #1

declare dso_local i32 @grid_view_clear(%struct.TYPE_3__*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
