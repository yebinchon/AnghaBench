; ModuleID = '/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_cursor_right.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_cursor_right.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window_mode_entry = type { %struct.window_copy_mode_data* }
%struct.window_copy_mode_data = type { i64, i64, i64, %struct.TYPE_4__*, %struct.TYPE_5__, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32* }
%struct.grid_cell = type { i32 }

@GRID_FLAG_PADDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.window_mode_entry*)* @window_copy_cursor_right to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @window_copy_cursor_right(%struct.window_mode_entry* %0) #0 {
  %2 = alloca %struct.window_mode_entry*, align 8
  %3 = alloca %struct.window_copy_mode_data*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.grid_cell, align 4
  store %struct.window_mode_entry* %0, %struct.window_mode_entry** %2, align 8
  %10 = load %struct.window_mode_entry*, %struct.window_mode_entry** %2, align 8
  %11 = getelementptr inbounds %struct.window_mode_entry, %struct.window_mode_entry* %10, i32 0, i32 0
  %12 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %11, align 8
  store %struct.window_copy_mode_data* %12, %struct.window_copy_mode_data** %3, align 8
  %13 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %14 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %13, i32 0, i32 3
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = call i64 @screen_hsize(%struct.TYPE_4__* %15)
  %17 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %18 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %16, %19
  %21 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %22 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = sub nsw i64 %20, %23
  store i64 %24, i64* %5, align 8
  %25 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %26 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %25, i32 0, i32 3
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = call i64 @screen_hsize(%struct.TYPE_4__* %27)
  %29 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %30 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %29, i32 0, i32 3
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = call i64 @screen_size_y(%struct.TYPE_4__* %31)
  %33 = add nsw i64 %28, %32
  %34 = sub nsw i64 %33, 1
  store i64 %34, i64* %6, align 8
  %35 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %36 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %49

40:                                               ; preds = %1
  %41 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %42 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %41, i32 0, i32 5
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %47 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %46, i32 0, i32 4
  %48 = call i64 @screen_size_x(%struct.TYPE_5__* %47)
  store i64 %48, i64* %4, align 8
  br label %53

49:                                               ; preds = %40, %1
  %50 = load %struct.window_mode_entry*, %struct.window_mode_entry** %2, align 8
  %51 = load i64, i64* %5, align 8
  %52 = call i64 @window_copy_find_length(%struct.window_mode_entry* %50, i64 %51)
  store i64 %52, i64* %4, align 8
  br label %53

53:                                               ; preds = %49, %45
  %54 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %55 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %4, align 8
  %58 = icmp sge i64 %56, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %53
  %60 = load i64, i64* %5, align 8
  %61 = load i64, i64* %6, align 8
  %62 = icmp slt i64 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %59
  %64 = load %struct.window_mode_entry*, %struct.window_mode_entry** %2, align 8
  %65 = call i32 @window_copy_cursor_start_of_line(%struct.window_mode_entry* %64)
  %66 = load %struct.window_mode_entry*, %struct.window_mode_entry** %2, align 8
  %67 = call i32 @window_copy_cursor_down(%struct.window_mode_entry* %66, i32 0)
  br label %132

68:                                               ; preds = %59, %53
  %69 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %70 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %4, align 8
  %73 = icmp slt i64 %71, %72
  br i1 %73, label %74, label %131

74:                                               ; preds = %68
  %75 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %76 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %77, 1
  store i64 %78, i64* %7, align 8
  %79 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %80 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %79, i32 0, i32 3
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = call i64 @screen_hsize(%struct.TYPE_4__* %81)
  %83 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %84 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %82, %85
  %87 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %88 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = sub nsw i64 %86, %89
  store i64 %90, i64* %8, align 8
  br label %91

91:                                               ; preds = %111, %74
  %92 = load i64, i64* %7, align 8
  %93 = load i64, i64* %4, align 8
  %94 = icmp slt i64 %92, %93
  br i1 %94, label %95, label %114

95:                                               ; preds = %91
  %96 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %97 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %96, i32 0, i32 3
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i64, i64* %7, align 8
  %102 = load i64, i64* %8, align 8
  %103 = call i32 @grid_get_cell(i32 %100, i64 %101, i64 %102, %struct.grid_cell* %9)
  %104 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %9, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = xor i32 %105, -1
  %107 = load i32, i32* @GRID_FLAG_PADDING, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %95
  br label %114

111:                                              ; preds = %95
  %112 = load i64, i64* %7, align 8
  %113 = add nsw i64 %112, 1
  store i64 %113, i64* %7, align 8
  br label %91

114:                                              ; preds = %110, %91
  %115 = load %struct.window_mode_entry*, %struct.window_mode_entry** %2, align 8
  %116 = load i64, i64* %7, align 8
  %117 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %118 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = call i32 @window_copy_update_cursor(%struct.window_mode_entry* %115, i64 %116, i64 %119)
  %121 = load %struct.window_mode_entry*, %struct.window_mode_entry** %2, align 8
  %122 = call i64 @window_copy_update_selection(%struct.window_mode_entry* %121, i32 1)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %114
  %125 = load %struct.window_mode_entry*, %struct.window_mode_entry** %2, align 8
  %126 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %127 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = call i32 @window_copy_redraw_lines(%struct.window_mode_entry* %125, i64 %128, i32 1)
  br label %130

130:                                              ; preds = %124, %114
  br label %131

131:                                              ; preds = %130, %68
  br label %132

132:                                              ; preds = %131, %63
  ret void
}

declare dso_local i64 @screen_hsize(%struct.TYPE_4__*) #1

declare dso_local i64 @screen_size_y(%struct.TYPE_4__*) #1

declare dso_local i64 @screen_size_x(%struct.TYPE_5__*) #1

declare dso_local i64 @window_copy_find_length(%struct.window_mode_entry*, i64) #1

declare dso_local i32 @window_copy_cursor_start_of_line(%struct.window_mode_entry*) #1

declare dso_local i32 @window_copy_cursor_down(%struct.window_mode_entry*, i32) #1

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
