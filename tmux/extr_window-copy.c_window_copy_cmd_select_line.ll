; ModuleID = '/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_cmd_select_line.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_cmd_select_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window_copy_cmd_state = type { %struct.window_mode_entry* }
%struct.window_mode_entry = type { i32, %struct.window_copy_mode_data* }
%struct.window_copy_mode_data = type { i64, i32 }

@LINE_SEL_LEFT_RIGHT = common dso_local global i32 0, align 4
@WINDOW_COPY_CMD_REDRAW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.window_copy_cmd_state*)* @window_copy_cmd_select_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @window_copy_cmd_select_line(%struct.window_copy_cmd_state* %0) #0 {
  %2 = alloca %struct.window_copy_cmd_state*, align 8
  %3 = alloca %struct.window_mode_entry*, align 8
  %4 = alloca %struct.window_copy_mode_data*, align 8
  %5 = alloca i32, align 4
  store %struct.window_copy_cmd_state* %0, %struct.window_copy_cmd_state** %2, align 8
  %6 = load %struct.window_copy_cmd_state*, %struct.window_copy_cmd_state** %2, align 8
  %7 = getelementptr inbounds %struct.window_copy_cmd_state, %struct.window_copy_cmd_state* %6, i32 0, i32 0
  %8 = load %struct.window_mode_entry*, %struct.window_mode_entry** %7, align 8
  store %struct.window_mode_entry* %8, %struct.window_mode_entry** %3, align 8
  %9 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %10 = getelementptr inbounds %struct.window_mode_entry, %struct.window_mode_entry* %9, i32 0, i32 1
  %11 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %10, align 8
  store %struct.window_copy_mode_data* %11, %struct.window_copy_mode_data** %4, align 8
  %12 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %13 = getelementptr inbounds %struct.window_mode_entry, %struct.window_mode_entry* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* @LINE_SEL_LEFT_RIGHT, align 4
  %16 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %4, align 8
  %17 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 8
  %18 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %4, align 8
  %19 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %18, i32 0, i32 0
  store i64 0, i64* %19, align 8
  %20 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %21 = call i32 @window_copy_cursor_start_of_line(%struct.window_mode_entry* %20)
  %22 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %23 = call i32 @window_copy_start_selection(%struct.window_mode_entry* %22)
  br label %24

24:                                               ; preds = %30, %1
  %25 = load i32, i32* %5, align 4
  %26 = icmp sgt i32 %25, 1
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %29 = call i32 @window_copy_cursor_down(%struct.window_mode_entry* %28, i32 0)
  br label %30

30:                                               ; preds = %27
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %5, align 4
  br label %24

33:                                               ; preds = %24
  %34 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %35 = call i32 @window_copy_cursor_end_of_line(%struct.window_mode_entry* %34)
  %36 = load i32, i32* @WINDOW_COPY_CMD_REDRAW, align 4
  ret i32 %36
}

declare dso_local i32 @window_copy_cursor_start_of_line(%struct.window_mode_entry*) #1

declare dso_local i32 @window_copy_start_selection(%struct.window_mode_entry*) #1

declare dso_local i32 @window_copy_cursor_down(%struct.window_mode_entry*, i32) #1

declare dso_local i32 @window_copy_cursor_end_of_line(%struct.window_mode_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
