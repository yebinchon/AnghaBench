; ModuleID = '/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_cursor_end_of_line.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_cursor_end_of_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window_mode_entry = type { %struct.window_copy_mode_data* }
%struct.window_copy_mode_data = type { i64, i64, i64, i64, i64, %struct.TYPE_2__, %struct.screen* }
%struct.TYPE_2__ = type { i32* }
%struct.screen = type { %struct.grid* }
%struct.grid = type { i64, i64 }
%struct.grid_line = type { i32 }

@LINE_SEL_NONE = common dso_local global i64 0, align 8
@GRID_LINE_WRAPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.window_mode_entry*)* @window_copy_cursor_end_of_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @window_copy_cursor_end_of_line(%struct.window_mode_entry* %0) #0 {
  %2 = alloca %struct.window_mode_entry*, align 8
  %3 = alloca %struct.window_copy_mode_data*, align 8
  %4 = alloca %struct.screen*, align 8
  %5 = alloca %struct.grid*, align 8
  %6 = alloca %struct.grid_line*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.window_mode_entry* %0, %struct.window_mode_entry** %2, align 8
  %9 = load %struct.window_mode_entry*, %struct.window_mode_entry** %2, align 8
  %10 = getelementptr inbounds %struct.window_mode_entry, %struct.window_mode_entry* %9, i32 0, i32 0
  %11 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %10, align 8
  store %struct.window_copy_mode_data* %11, %struct.window_copy_mode_data** %3, align 8
  %12 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %13 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %12, i32 0, i32 6
  %14 = load %struct.screen*, %struct.screen** %13, align 8
  store %struct.screen* %14, %struct.screen** %4, align 8
  %15 = load %struct.screen*, %struct.screen** %4, align 8
  %16 = getelementptr inbounds %struct.screen, %struct.screen* %15, i32 0, i32 0
  %17 = load %struct.grid*, %struct.grid** %16, align 8
  store %struct.grid* %17, %struct.grid** %5, align 8
  %18 = load %struct.screen*, %struct.screen** %4, align 8
  %19 = call i64 @screen_hsize(%struct.screen* %18)
  %20 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %21 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %19, %22
  %24 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %25 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = sub nsw i64 %23, %26
  store i64 %27, i64* %8, align 8
  %28 = load %struct.window_mode_entry*, %struct.window_mode_entry** %2, align 8
  %29 = load i64, i64* %8, align 8
  %30 = call i64 @window_copy_find_length(%struct.window_mode_entry* %28, i64 %29)
  store i64 %30, i64* %7, align 8
  %31 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %32 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %7, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %107

36:                                               ; preds = %1
  %37 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %38 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @LINE_SEL_NONE, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %107

42:                                               ; preds = %36
  %43 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %44 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %43, i32 0, i32 5
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %56

48:                                               ; preds = %42
  %49 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %50 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %49, i32 0, i32 4
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load %struct.screen*, %struct.screen** %4, align 8
  %55 = call i64 @screen_size_x(%struct.screen* %54)
  store i64 %55, i64* %7, align 8
  br label %56

56:                                               ; preds = %53, %48, %42
  %57 = load %struct.grid*, %struct.grid** %5, align 8
  %58 = load i64, i64* %8, align 8
  %59 = call %struct.grid_line* @grid_get_line(%struct.grid* %57, i64 %58)
  store %struct.grid_line* %59, %struct.grid_line** %6, align 8
  %60 = load %struct.grid_line*, %struct.grid_line** %6, align 8
  %61 = getelementptr inbounds %struct.grid_line, %struct.grid_line* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @GRID_LINE_WRAPPED, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %106

66:                                               ; preds = %56
  br label %67

67:                                               ; preds = %89, %66
  %68 = load i64, i64* %8, align 8
  %69 = load %struct.grid*, %struct.grid** %5, align 8
  %70 = getelementptr inbounds %struct.grid, %struct.grid* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.grid*, %struct.grid** %5, align 8
  %73 = getelementptr inbounds %struct.grid, %struct.grid* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %71, %74
  %76 = icmp slt i64 %68, %75
  br i1 %76, label %77, label %102

77:                                               ; preds = %67
  %78 = load %struct.grid*, %struct.grid** %5, align 8
  %79 = load i64, i64* %8, align 8
  %80 = call %struct.grid_line* @grid_get_line(%struct.grid* %78, i64 %79)
  store %struct.grid_line* %80, %struct.grid_line** %6, align 8
  %81 = load %struct.grid_line*, %struct.grid_line** %6, align 8
  %82 = getelementptr inbounds %struct.grid_line, %struct.grid_line* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = xor i32 %83, -1
  %85 = load i32, i32* @GRID_LINE_WRAPPED, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %77
  br label %102

89:                                               ; preds = %77
  %90 = load %struct.window_mode_entry*, %struct.window_mode_entry** %2, align 8
  %91 = call i32 @window_copy_cursor_down(%struct.window_mode_entry* %90, i32 0)
  %92 = load %struct.screen*, %struct.screen** %4, align 8
  %93 = call i64 @screen_hsize(%struct.screen* %92)
  %94 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %95 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = add nsw i64 %93, %96
  %98 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %99 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = sub nsw i64 %97, %100
  store i64 %101, i64* %8, align 8
  br label %67

102:                                              ; preds = %88, %67
  %103 = load %struct.window_mode_entry*, %struct.window_mode_entry** %2, align 8
  %104 = load i64, i64* %8, align 8
  %105 = call i64 @window_copy_find_length(%struct.window_mode_entry* %103, i64 %104)
  store i64 %105, i64* %7, align 8
  br label %106

106:                                              ; preds = %102, %56
  br label %107

107:                                              ; preds = %106, %36, %1
  %108 = load %struct.window_mode_entry*, %struct.window_mode_entry** %2, align 8
  %109 = load i64, i64* %7, align 8
  %110 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %111 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = call i32 @window_copy_update_cursor(%struct.window_mode_entry* %108, i64 %109, i64 %112)
  %114 = load %struct.window_mode_entry*, %struct.window_mode_entry** %2, align 8
  %115 = call i64 @window_copy_update_selection(%struct.window_mode_entry* %114, i32 1)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %107
  %118 = load %struct.window_mode_entry*, %struct.window_mode_entry** %2, align 8
  %119 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %120 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = call i32 @window_copy_redraw_lines(%struct.window_mode_entry* %118, i64 %121, i32 1)
  br label %123

123:                                              ; preds = %117, %107
  ret void
}

declare dso_local i64 @screen_hsize(%struct.screen*) #1

declare dso_local i64 @window_copy_find_length(%struct.window_mode_entry*, i64) #1

declare dso_local i64 @screen_size_x(%struct.screen*) #1

declare dso_local %struct.grid_line* @grid_get_line(%struct.grid*, i64) #1

declare dso_local i32 @window_copy_cursor_down(%struct.window_mode_entry*, i32) #1

declare dso_local i32 @window_copy_update_cursor(%struct.window_mode_entry*, i64, i64) #1

declare dso_local i64 @window_copy_update_selection(%struct.window_mode_entry*, i32) #1

declare dso_local i32 @window_copy_redraw_lines(%struct.window_mode_entry*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
