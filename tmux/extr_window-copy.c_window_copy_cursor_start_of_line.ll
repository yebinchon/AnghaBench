; ModuleID = '/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_cursor_start_of_line.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_cursor_start_of_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window_mode_entry = type { %struct.window_copy_mode_data* }
%struct.window_copy_mode_data = type { i64, i64, i64, i64, %struct.screen* }
%struct.screen = type { %struct.grid* }
%struct.grid = type { i32 }
%struct.TYPE_2__ = type { i32 }

@LINE_SEL_NONE = common dso_local global i64 0, align 8
@GRID_LINE_WRAPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.window_mode_entry*)* @window_copy_cursor_start_of_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @window_copy_cursor_start_of_line(%struct.window_mode_entry* %0) #0 {
  %2 = alloca %struct.window_mode_entry*, align 8
  %3 = alloca %struct.window_copy_mode_data*, align 8
  %4 = alloca %struct.screen*, align 8
  %5 = alloca %struct.grid*, align 8
  %6 = alloca i64, align 8
  store %struct.window_mode_entry* %0, %struct.window_mode_entry** %2, align 8
  %7 = load %struct.window_mode_entry*, %struct.window_mode_entry** %2, align 8
  %8 = getelementptr inbounds %struct.window_mode_entry, %struct.window_mode_entry* %7, i32 0, i32 0
  %9 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %8, align 8
  store %struct.window_copy_mode_data* %9, %struct.window_copy_mode_data** %3, align 8
  %10 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %11 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %10, i32 0, i32 4
  %12 = load %struct.screen*, %struct.screen** %11, align 8
  store %struct.screen* %12, %struct.screen** %4, align 8
  %13 = load %struct.screen*, %struct.screen** %4, align 8
  %14 = getelementptr inbounds %struct.screen, %struct.screen* %13, i32 0, i32 0
  %15 = load %struct.grid*, %struct.grid** %14, align 8
  store %struct.grid* %15, %struct.grid** %5, align 8
  %16 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %17 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %66

20:                                               ; preds = %1
  %21 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %22 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @LINE_SEL_NONE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %66

26:                                               ; preds = %20
  %27 = load %struct.screen*, %struct.screen** %4, align 8
  %28 = call i64 @screen_hsize(%struct.screen* %27)
  %29 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %30 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %28, %31
  %33 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %34 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = sub nsw i64 %32, %35
  store i64 %36, i64* %6, align 8
  br label %37

37:                                               ; preds = %52, %26
  %38 = load i64, i64* %6, align 8
  %39 = icmp sgt i64 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %37
  %41 = load %struct.grid*, %struct.grid** %5, align 8
  %42 = load i64, i64* %6, align 8
  %43 = sub nsw i64 %42, 1
  %44 = call %struct.TYPE_2__* @grid_get_line(%struct.grid* %41, i64 %43)
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @GRID_LINE_WRAPPED, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br label %50

50:                                               ; preds = %40, %37
  %51 = phi i1 [ false, %37 ], [ %49, %40 ]
  br i1 %51, label %52, label %65

52:                                               ; preds = %50
  %53 = load %struct.window_mode_entry*, %struct.window_mode_entry** %2, align 8
  %54 = call i32 @window_copy_cursor_up(%struct.window_mode_entry* %53, i32 0)
  %55 = load %struct.screen*, %struct.screen** %4, align 8
  %56 = call i64 @screen_hsize(%struct.screen* %55)
  %57 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %58 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %56, %59
  %61 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %62 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = sub nsw i64 %60, %63
  store i64 %64, i64* %6, align 8
  br label %37

65:                                               ; preds = %50
  br label %66

66:                                               ; preds = %65, %20, %1
  %67 = load %struct.window_mode_entry*, %struct.window_mode_entry** %2, align 8
  %68 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %69 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @window_copy_update_cursor(%struct.window_mode_entry* %67, i32 0, i64 %70)
  %72 = load %struct.window_mode_entry*, %struct.window_mode_entry** %2, align 8
  %73 = call i64 @window_copy_update_selection(%struct.window_mode_entry* %72, i32 1)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %66
  %76 = load %struct.window_mode_entry*, %struct.window_mode_entry** %2, align 8
  %77 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %78 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @window_copy_redraw_lines(%struct.window_mode_entry* %76, i64 %79, i32 1)
  br label %81

81:                                               ; preds = %75, %66
  ret void
}

declare dso_local i64 @screen_hsize(%struct.screen*) #1

declare dso_local %struct.TYPE_2__* @grid_get_line(%struct.grid*, i64) #1

declare dso_local i32 @window_copy_cursor_up(%struct.window_mode_entry*, i32) #1

declare dso_local i32 @window_copy_update_cursor(%struct.window_mode_entry*, i32, i64) #1

declare dso_local i64 @window_copy_update_selection(%struct.window_mode_entry*, i32) #1

declare dso_local i32 @window_copy_redraw_lines(%struct.window_mode_entry*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
