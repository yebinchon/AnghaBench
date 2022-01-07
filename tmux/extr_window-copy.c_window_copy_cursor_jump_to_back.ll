; ModuleID = '/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_cursor_jump_to_back.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_cursor_jump_to_back.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window_mode_entry = type { %struct.window_copy_mode_data* }
%struct.window_copy_mode_data = type { i64, i64, i64, i64, %struct.screen* }
%struct.screen = type { i32 }
%struct.grid_cell = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64* }

@GRID_FLAG_PADDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.window_mode_entry*)* @window_copy_cursor_jump_to_back to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @window_copy_cursor_jump_to_back(%struct.window_mode_entry* %0) #0 {
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
  %33 = load i64, i64* %6, align 8
  %34 = icmp sgt i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i64, i64* %6, align 8
  %37 = add nsw i64 %36, -1
  store i64 %37, i64* %6, align 8
  br label %38

38:                                               ; preds = %35, %32
  br label %39

39:                                               ; preds = %87, %38
  %40 = load %struct.screen*, %struct.screen** %4, align 8
  %41 = getelementptr inbounds %struct.screen, %struct.screen* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i64, i64* %6, align 8
  %44 = load i64, i64* %7, align 8
  %45 = call i32 @grid_get_cell(i32 %42, i64 %43, i64 %44, %struct.grid_cell* %5)
  %46 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %5, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @GRID_FLAG_PADDING, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %83, label %51

51:                                               ; preds = %39
  %52 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %5, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %56, label %83

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %5, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i64*, i64** %58, align 8
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %62 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %60, %63
  br i1 %64, label %65, label %83

65:                                               ; preds = %56
  %66 = load %struct.window_mode_entry*, %struct.window_mode_entry** %2, align 8
  %67 = load i64, i64* %6, align 8
  %68 = add nsw i64 %67, 1
  %69 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %70 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @window_copy_update_cursor(%struct.window_mode_entry* %66, i64 %68, i64 %71)
  %73 = load %struct.window_mode_entry*, %struct.window_mode_entry** %2, align 8
  %74 = call i64 @window_copy_update_selection(%struct.window_mode_entry* %73, i32 1)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %65
  %77 = load %struct.window_mode_entry*, %struct.window_mode_entry** %2, align 8
  %78 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %79 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @window_copy_redraw_lines(%struct.window_mode_entry* %77, i64 %80, i32 1)
  br label %82

82:                                               ; preds = %76, %65
  br label %90

83:                                               ; preds = %56, %51, %39
  %84 = load i64, i64* %6, align 8
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %83
  br label %90

87:                                               ; preds = %83
  %88 = load i64, i64* %6, align 8
  %89 = add nsw i64 %88, -1
  store i64 %89, i64* %6, align 8
  br label %39

90:                                               ; preds = %82, %86
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
