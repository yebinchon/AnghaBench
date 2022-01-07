; ModuleID = '/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_cursor_back_to_indentation.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_cursor_back_to_indentation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window_mode_entry = type { %struct.window_copy_mode_data* }
%struct.window_copy_mode_data = type { i64, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.grid_cell = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.window_mode_entry*)* @window_copy_cursor_back_to_indentation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @window_copy_cursor_back_to_indentation(%struct.window_mode_entry* %0) #0 {
  %2 = alloca %struct.window_mode_entry*, align 8
  %3 = alloca %struct.window_copy_mode_data*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.grid_cell, align 8
  store %struct.window_mode_entry* %0, %struct.window_mode_entry** %2, align 8
  %8 = load %struct.window_mode_entry*, %struct.window_mode_entry** %2, align 8
  %9 = getelementptr inbounds %struct.window_mode_entry, %struct.window_mode_entry* %8, i32 0, i32 0
  %10 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %9, align 8
  store %struct.window_copy_mode_data* %10, %struct.window_copy_mode_data** %3, align 8
  store i64 0, i64* %4, align 8
  %11 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %12 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %11, i32 0, i32 2
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = call i64 @screen_hsize(%struct.TYPE_4__* %13)
  %15 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %16 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %14, %17
  %19 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %20 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = sub nsw i64 %18, %21
  store i64 %22, i64* %5, align 8
  %23 = load %struct.window_mode_entry*, %struct.window_mode_entry** %2, align 8
  %24 = load i64, i64* %5, align 8
  %25 = call i64 @window_copy_find_length(%struct.window_mode_entry* %23, i64 %24)
  store i64 %25, i64* %6, align 8
  br label %26

26:                                               ; preds = %51, %1
  %27 = load i64, i64* %4, align 8
  %28 = load i64, i64* %6, align 8
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %30, label %54

30:                                               ; preds = %26
  %31 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %32 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %31, i32 0, i32 2
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i64, i64* %4, align 8
  %37 = load i64, i64* %5, align 8
  %38 = call i32 @grid_get_cell(i32 %35, i64 %36, i64 %37, %struct.grid_cell* %7)
  %39 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %7, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 1
  br i1 %42, label %50, label %43

43:                                               ; preds = %30
  %44 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %7, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %48, 32
  br i1 %49, label %50, label %51

50:                                               ; preds = %43, %30
  br label %54

51:                                               ; preds = %43
  %52 = load i64, i64* %4, align 8
  %53 = add nsw i64 %52, 1
  store i64 %53, i64* %4, align 8
  br label %26

54:                                               ; preds = %50, %26
  %55 = load %struct.window_mode_entry*, %struct.window_mode_entry** %2, align 8
  %56 = load i64, i64* %4, align 8
  %57 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %58 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @window_copy_update_cursor(%struct.window_mode_entry* %55, i64 %56, i64 %59)
  %61 = load %struct.window_mode_entry*, %struct.window_mode_entry** %2, align 8
  %62 = call i64 @window_copy_update_selection(%struct.window_mode_entry* %61, i32 1)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %54
  %65 = load %struct.window_mode_entry*, %struct.window_mode_entry** %2, align 8
  %66 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %67 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @window_copy_redraw_lines(%struct.window_mode_entry* %65, i64 %68, i32 1)
  br label %70

70:                                               ; preds = %64, %54
  ret void
}

declare dso_local i64 @screen_hsize(%struct.TYPE_4__*) #1

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
