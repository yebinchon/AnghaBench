; ModuleID = '/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_cmd_begin_selection.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_cmd_begin_selection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window_copy_cmd_state = type { %struct.mouse_event*, %struct.client*, %struct.window_mode_entry* }
%struct.mouse_event = type { i32 }
%struct.client = type { i32 }
%struct.window_mode_entry = type { %struct.window_copy_mode_data* }
%struct.window_copy_mode_data = type { i32 }

@WINDOW_COPY_CMD_NOTHING = common dso_local global i32 0, align 4
@LINE_SEL_NONE = common dso_local global i32 0, align 4
@WINDOW_COPY_CMD_REDRAW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.window_copy_cmd_state*)* @window_copy_cmd_begin_selection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @window_copy_cmd_begin_selection(%struct.window_copy_cmd_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.window_copy_cmd_state*, align 8
  %4 = alloca %struct.window_mode_entry*, align 8
  %5 = alloca %struct.client*, align 8
  %6 = alloca %struct.mouse_event*, align 8
  %7 = alloca %struct.window_copy_mode_data*, align 8
  store %struct.window_copy_cmd_state* %0, %struct.window_copy_cmd_state** %3, align 8
  %8 = load %struct.window_copy_cmd_state*, %struct.window_copy_cmd_state** %3, align 8
  %9 = getelementptr inbounds %struct.window_copy_cmd_state, %struct.window_copy_cmd_state* %8, i32 0, i32 2
  %10 = load %struct.window_mode_entry*, %struct.window_mode_entry** %9, align 8
  store %struct.window_mode_entry* %10, %struct.window_mode_entry** %4, align 8
  %11 = load %struct.window_copy_cmd_state*, %struct.window_copy_cmd_state** %3, align 8
  %12 = getelementptr inbounds %struct.window_copy_cmd_state, %struct.window_copy_cmd_state* %11, i32 0, i32 1
  %13 = load %struct.client*, %struct.client** %12, align 8
  store %struct.client* %13, %struct.client** %5, align 8
  %14 = load %struct.window_copy_cmd_state*, %struct.window_copy_cmd_state** %3, align 8
  %15 = getelementptr inbounds %struct.window_copy_cmd_state, %struct.window_copy_cmd_state* %14, i32 0, i32 0
  %16 = load %struct.mouse_event*, %struct.mouse_event** %15, align 8
  store %struct.mouse_event* %16, %struct.mouse_event** %6, align 8
  %17 = load %struct.window_mode_entry*, %struct.window_mode_entry** %4, align 8
  %18 = getelementptr inbounds %struct.window_mode_entry, %struct.window_mode_entry* %17, i32 0, i32 0
  %19 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %18, align 8
  store %struct.window_copy_mode_data* %19, %struct.window_copy_mode_data** %7, align 8
  %20 = load %struct.mouse_event*, %struct.mouse_event** %6, align 8
  %21 = icmp ne %struct.mouse_event* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %1
  %23 = load %struct.client*, %struct.client** %5, align 8
  %24 = load %struct.mouse_event*, %struct.mouse_event** %6, align 8
  %25 = call i32 @window_copy_start_drag(%struct.client* %23, %struct.mouse_event* %24)
  %26 = load i32, i32* @WINDOW_COPY_CMD_NOTHING, align 4
  store i32 %26, i32* %2, align 4
  br label %34

27:                                               ; preds = %1
  %28 = load i32, i32* @LINE_SEL_NONE, align 4
  %29 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %7, align 8
  %30 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.window_mode_entry*, %struct.window_mode_entry** %4, align 8
  %32 = call i32 @window_copy_start_selection(%struct.window_mode_entry* %31)
  %33 = load i32, i32* @WINDOW_COPY_CMD_REDRAW, align 4
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %27, %22
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @window_copy_start_drag(%struct.client*, %struct.mouse_event*) #1

declare dso_local i32 @window_copy_start_selection(%struct.window_mode_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
