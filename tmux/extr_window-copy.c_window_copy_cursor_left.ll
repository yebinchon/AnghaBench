; ModuleID = '/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_cursor_left.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_cursor_left.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window_mode_entry = type { %struct.window_copy_mode_data* }
%struct.window_copy_mode_data = type { i64, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.grid_cell = type { i32 }

@GRID_FLAG_PADDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.window_mode_entry*)* @window_copy_cursor_left to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @window_copy_cursor_left(%struct.window_mode_entry* %0) #0 {
  %2 = alloca %struct.window_mode_entry*, align 8
  %3 = alloca %struct.window_copy_mode_data*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.grid_cell, align 4
  store %struct.window_mode_entry* %0, %struct.window_mode_entry** %2, align 8
  %7 = load %struct.window_mode_entry*, %struct.window_mode_entry** %2, align 8
  %8 = getelementptr inbounds %struct.window_mode_entry, %struct.window_mode_entry* %7, i32 0, i32 0
  %9 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %8, align 8
  store %struct.window_copy_mode_data* %9, %struct.window_copy_mode_data** %3, align 8
  %10 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %11 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %10, i32 0, i32 3
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = call i64 @screen_hsize(%struct.TYPE_2__* %12)
  %14 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %15 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %13, %16
  %18 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %19 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = sub nsw i64 %17, %20
  store i64 %21, i64* %4, align 8
  %22 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %23 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %5, align 8
  br label %25

25:                                               ; preds = %44, %1
  %26 = load i64, i64* %5, align 8
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %28, label %47

28:                                               ; preds = %25
  %29 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %30 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %29, i32 0, i32 3
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i64, i64* %5, align 8
  %35 = load i64, i64* %4, align 8
  %36 = call i32 @grid_get_cell(i32 %33, i64 %34, i64 %35, %struct.grid_cell* %6)
  %37 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %6, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = xor i32 %38, -1
  %40 = load i32, i32* @GRID_FLAG_PADDING, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %28
  br label %47

44:                                               ; preds = %28
  %45 = load i64, i64* %5, align 8
  %46 = add nsw i64 %45, -1
  store i64 %46, i64* %5, align 8
  br label %25

47:                                               ; preds = %43, %25
  %48 = load i64, i64* %5, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %47
  %51 = load i64, i64* %4, align 8
  %52 = icmp sgt i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = load %struct.window_mode_entry*, %struct.window_mode_entry** %2, align 8
  %55 = call i32 @window_copy_cursor_up(%struct.window_mode_entry* %54, i32 0)
  %56 = load %struct.window_mode_entry*, %struct.window_mode_entry** %2, align 8
  %57 = call i32 @window_copy_cursor_end_of_line(%struct.window_mode_entry* %56)
  br label %80

58:                                               ; preds = %50, %47
  %59 = load i64, i64* %5, align 8
  %60 = icmp sgt i64 %59, 0
  br i1 %60, label %61, label %79

61:                                               ; preds = %58
  %62 = load %struct.window_mode_entry*, %struct.window_mode_entry** %2, align 8
  %63 = load i64, i64* %5, align 8
  %64 = sub nsw i64 %63, 1
  %65 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %66 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @window_copy_update_cursor(%struct.window_mode_entry* %62, i64 %64, i64 %67)
  %69 = load %struct.window_mode_entry*, %struct.window_mode_entry** %2, align 8
  %70 = call i64 @window_copy_update_selection(%struct.window_mode_entry* %69, i32 1)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %61
  %73 = load %struct.window_mode_entry*, %struct.window_mode_entry** %2, align 8
  %74 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %75 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @window_copy_redraw_lines(%struct.window_mode_entry* %73, i64 %76, i32 1)
  br label %78

78:                                               ; preds = %72, %61
  br label %79

79:                                               ; preds = %78, %58
  br label %80

80:                                               ; preds = %79, %53
  ret void
}

declare dso_local i64 @screen_hsize(%struct.TYPE_2__*) #1

declare dso_local i32 @grid_get_cell(i32, i64, i64, %struct.grid_cell*) #1

declare dso_local i32 @window_copy_cursor_up(%struct.window_mode_entry*, i32) #1

declare dso_local i32 @window_copy_cursor_end_of_line(%struct.window_mode_entry*) #1

declare dso_local i32 @window_copy_update_cursor(%struct.window_mode_entry*, i64, i64) #1

declare dso_local i64 @window_copy_update_selection(%struct.window_mode_entry*, i32) #1

declare dso_local i32 @window_copy_redraw_lines(%struct.window_mode_entry*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
