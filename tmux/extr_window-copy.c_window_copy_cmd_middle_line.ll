; ModuleID = '/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_cmd_middle_line.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_cmd_middle_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window_copy_cmd_state = type { %struct.window_mode_entry* }
%struct.window_mode_entry = type { %struct.window_copy_mode_data* }
%struct.window_copy_mode_data = type { i32, i32, i64 }

@WINDOW_COPY_CMD_REDRAW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.window_copy_cmd_state*)* @window_copy_cmd_middle_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @window_copy_cmd_middle_line(%struct.window_copy_cmd_state* %0) #0 {
  %2 = alloca %struct.window_copy_cmd_state*, align 8
  %3 = alloca %struct.window_mode_entry*, align 8
  %4 = alloca %struct.window_copy_mode_data*, align 8
  store %struct.window_copy_cmd_state* %0, %struct.window_copy_cmd_state** %2, align 8
  %5 = load %struct.window_copy_cmd_state*, %struct.window_copy_cmd_state** %2, align 8
  %6 = getelementptr inbounds %struct.window_copy_cmd_state, %struct.window_copy_cmd_state* %5, i32 0, i32 0
  %7 = load %struct.window_mode_entry*, %struct.window_mode_entry** %6, align 8
  store %struct.window_mode_entry* %7, %struct.window_mode_entry** %3, align 8
  %8 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %9 = getelementptr inbounds %struct.window_mode_entry, %struct.window_mode_entry* %8, i32 0, i32 0
  %10 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %9, align 8
  store %struct.window_copy_mode_data* %10, %struct.window_copy_mode_data** %4, align 8
  %11 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %4, align 8
  %12 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %11, i32 0, i32 2
  store i64 0, i64* %12, align 8
  %13 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %4, align 8
  %14 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %13, i32 0, i32 1
  %15 = call i32 @screen_size_y(i32* %14)
  %16 = sub nsw i32 %15, 1
  %17 = sdiv i32 %16, 2
  %18 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %4, align 8
  %19 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %21 = call i32 @window_copy_update_selection(%struct.window_mode_entry* %20, i32 1)
  %22 = load i32, i32* @WINDOW_COPY_CMD_REDRAW, align 4
  ret i32 %22
}

declare dso_local i32 @screen_size_y(i32*) #1

declare dso_local i32 @window_copy_update_selection(%struct.window_mode_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
