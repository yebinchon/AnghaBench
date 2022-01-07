; ModuleID = '/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_cursor_jump_back.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_cursor_jump_back.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window_mode_entry = type { %struct.window_copy_mode_data* }
%struct.window_copy_mode_data = type { i64, i64, i64, i64, %struct.screen* }
%struct.screen = type { i32 }
%struct.grid_cell = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64* }

@GRID_FLAG_PADDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.window_mode_entry*)* @window_copy_cursor_jump_back to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @window_copy_cursor_jump_back(%struct.window_mode_entry* %0) #0 {
  %2 = alloca %struct.window_mode_entry*, align 8
  %3 = alloca %struct.window_copy_mode_data*, align 8
  %4 = alloca %struct.screen*, align 8
  %5 = alloca %struct.grid_cell, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.window_mode_entry* %0, %struct.window_mode_entry** %2, align 8
  %8 = load %struct.window_mode_entry*, %struct.window_mode_entry** %2, align 8
  %9 = getelementptr inbounds %struct.window_mode_entry, %struct.window_mode_entry* %8, i32 0, i32 0
  %10 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %9, align 8
  store %struct.window_copy_mode_data* %10, %struct.window_copy_mode_data** %3, align 8
  %11 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %12 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %11, i32 0, i32 4
  %13 = load %struct.screen*, %struct.screen** %12, align 8
  store %struct.screen* %13, %struct.screen** %4, align 8
  %14 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %15 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %6, align 8
  %17 = load %struct.screen*, %struct.screen** %4, align 8
  %18 = call i64 @screen_hsize(%struct.screen* %17)
  %19 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %20 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %18, %21
  %23 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %24 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = sub nsw i64 %22, %25
  store i64 %26, i64* %7, align 8
  %27 = load i64, i64* %6, align 8
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %1
  %30 = load i64, i64* %6, align 8
  %31 = add nsw i64 %30, -1
  store i64 %31, i64* %6, align 8
  br label %32

32:                                               ; preds = %29, %1
  br label %33

33:                                               ; preds = %80, %32
  %34 = load %struct.screen*, %struct.screen** %4, align 8
  %35 = getelementptr inbounds %struct.screen, %struct.screen* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* %7, align 8
  %39 = call i32 @grid_get_cell(i32 %36, i64 %37, i64 %38, %struct.grid_cell* %5)
  %40 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %5, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @GRID_FLAG_PADDING, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %76, label %45

45:                                               ; preds = %33
  %46 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %5, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %76

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %5, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i64*, i64** %52, align 8
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %56 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %54, %57
  br i1 %58, label %59, label %76

59:                                               ; preds = %50
  %60 = load %struct.window_mode_entry*, %struct.window_mode_entry** %2, align 8
  %61 = load i64, i64* %6, align 8
  %62 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %63 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @window_copy_update_cursor(%struct.window_mode_entry* %60, i64 %61, i64 %64)
  %66 = load %struct.window_mode_entry*, %struct.window_mode_entry** %2, align 8
  %67 = call i64 @window_copy_update_selection(%struct.window_mode_entry* %66, i32 1)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %59
  %70 = load %struct.window_mode_entry*, %struct.window_mode_entry** %2, align 8
  %71 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %72 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @window_copy_redraw_lines(%struct.window_mode_entry* %70, i64 %73, i32 1)
  br label %75

75:                                               ; preds = %69, %59
  br label %83

76:                                               ; preds = %50, %45, %33
  %77 = load i64, i64* %6, align 8
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  br label %83

80:                                               ; preds = %76
  %81 = load i64, i64* %6, align 8
  %82 = add nsw i64 %81, -1
  store i64 %82, i64* %6, align 8
  br label %33

83:                                               ; preds = %75, %79
  ret void
}

declare dso_local i64 @screen_hsize(%struct.screen*) #1

declare dso_local i32 @grid_get_cell(i32, i64, i64, %struct.grid_cell*) #1

declare dso_local i32 @window_copy_update_cursor(%struct.window_mode_entry*, i64, i64) #1

declare dso_local i64 @window_copy_update_selection(%struct.window_mode_entry*, i32) #1

declare dso_local i32 @window_copy_redraw_lines(%struct.window_mode_entry*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
