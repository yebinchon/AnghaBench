; ModuleID = '/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_cursor_jump_to.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_cursor_jump_to.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window_mode_entry = type { %struct.window_copy_mode_data* }
%struct.window_copy_mode_data = type { i64, i64, i64, i64, %struct.screen* }
%struct.screen = type { i32 }
%struct.grid_cell = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64* }

@GRID_FLAG_PADDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.window_mode_entry*)* @window_copy_cursor_jump_to to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @window_copy_cursor_jump_to(%struct.window_mode_entry* %0) #0 {
  %2 = alloca %struct.window_mode_entry*, align 8
  %3 = alloca %struct.window_copy_mode_data*, align 8
  %4 = alloca %struct.screen*, align 8
  %5 = alloca %struct.grid_cell, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.window_mode_entry* %0, %struct.window_mode_entry** %2, align 8
  %9 = load %struct.window_mode_entry*, %struct.window_mode_entry** %2, align 8
  %10 = getelementptr inbounds %struct.window_mode_entry, %struct.window_mode_entry* %9, i32 0, i32 0
  %11 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %10, align 8
  store %struct.window_copy_mode_data* %11, %struct.window_copy_mode_data** %3, align 8
  %12 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %13 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %12, i32 0, i32 4
  %14 = load %struct.screen*, %struct.screen** %13, align 8
  store %struct.screen* %14, %struct.screen** %4, align 8
  %15 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %16 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, 2
  store i64 %18, i64* %6, align 8
  %19 = load %struct.screen*, %struct.screen** %4, align 8
  %20 = call i64 @screen_hsize(%struct.screen* %19)
  %21 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %22 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %20, %23
  %25 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %26 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = sub nsw i64 %24, %27
  store i64 %28, i64* %7, align 8
  %29 = load %struct.window_mode_entry*, %struct.window_mode_entry** %2, align 8
  %30 = load i64, i64* %7, align 8
  %31 = call i64 @window_copy_find_length(%struct.window_mode_entry* %29, i64 %30)
  store i64 %31, i64* %8, align 8
  br label %32

32:                                               ; preds = %80, %1
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* %8, align 8
  %35 = icmp slt i64 %33, %34
  br i1 %35, label %36, label %83

36:                                               ; preds = %32
  %37 = load %struct.screen*, %struct.screen** %4, align 8
  %38 = getelementptr inbounds %struct.screen, %struct.screen* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i64, i64* %6, align 8
  %41 = load i64, i64* %7, align 8
  %42 = call i32 @grid_get_cell(i32 %39, i64 %40, i64 %41, %struct.grid_cell* %5)
  %43 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %5, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @GRID_FLAG_PADDING, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %80, label %48

48:                                               ; preds = %36
  %49 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %5, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %53, label %80

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %5, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i64*, i64** %55, align 8
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %59 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %57, %60
  br i1 %61, label %62, label %80

62:                                               ; preds = %53
  %63 = load %struct.window_mode_entry*, %struct.window_mode_entry** %2, align 8
  %64 = load i64, i64* %6, align 8
  %65 = sub nsw i64 %64, 1
  %66 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %67 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @window_copy_update_cursor(%struct.window_mode_entry* %63, i64 %65, i64 %68)
  %70 = load %struct.window_mode_entry*, %struct.window_mode_entry** %2, align 8
  %71 = call i64 @window_copy_update_selection(%struct.window_mode_entry* %70, i32 1)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %62
  %74 = load %struct.window_mode_entry*, %struct.window_mode_entry** %2, align 8
  %75 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %76 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @window_copy_redraw_lines(%struct.window_mode_entry* %74, i64 %77, i32 1)
  br label %79

79:                                               ; preds = %73, %62
  br label %83

80:                                               ; preds = %53, %48, %36
  %81 = load i64, i64* %6, align 8
  %82 = add nsw i64 %81, 1
  store i64 %82, i64* %6, align 8
  br label %32

83:                                               ; preds = %79, %32
  ret void
}

declare dso_local i64 @screen_hsize(%struct.screen*) #1

declare dso_local i64 @window_copy_find_length(%struct.window_mode_entry*, i64) #1

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
