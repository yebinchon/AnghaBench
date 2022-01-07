; ModuleID = '/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_cmd_cursor_down_and_cancel.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_cmd_cursor_down_and_cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window_copy_cmd_state = type { %struct.window_mode_entry* }
%struct.window_mode_entry = type { i64, %struct.window_copy_mode_data* }
%struct.window_copy_mode_data = type { i64, i64 }

@WINDOW_COPY_CMD_CANCEL = common dso_local global i32 0, align 4
@WINDOW_COPY_CMD_NOTHING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.window_copy_cmd_state*)* @window_copy_cmd_cursor_down_and_cancel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @window_copy_cmd_cursor_down_and_cancel(%struct.window_copy_cmd_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.window_copy_cmd_state*, align 8
  %4 = alloca %struct.window_mode_entry*, align 8
  %5 = alloca %struct.window_copy_mode_data*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.window_copy_cmd_state* %0, %struct.window_copy_cmd_state** %3, align 8
  %8 = load %struct.window_copy_cmd_state*, %struct.window_copy_cmd_state** %3, align 8
  %9 = getelementptr inbounds %struct.window_copy_cmd_state, %struct.window_copy_cmd_state* %8, i32 0, i32 0
  %10 = load %struct.window_mode_entry*, %struct.window_mode_entry** %9, align 8
  store %struct.window_mode_entry* %10, %struct.window_mode_entry** %4, align 8
  %11 = load %struct.window_mode_entry*, %struct.window_mode_entry** %4, align 8
  %12 = getelementptr inbounds %struct.window_mode_entry, %struct.window_mode_entry* %11, i32 0, i32 1
  %13 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %12, align 8
  store %struct.window_copy_mode_data* %13, %struct.window_copy_mode_data** %5, align 8
  %14 = load %struct.window_mode_entry*, %struct.window_mode_entry** %4, align 8
  %15 = getelementptr inbounds %struct.window_mode_entry, %struct.window_mode_entry* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %6, align 8
  %17 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %18 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %7, align 8
  br label %20

20:                                               ; preds = %26, %1
  %21 = load i64, i64* %6, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load %struct.window_mode_entry*, %struct.window_mode_entry** %4, align 8
  %25 = call i32 @window_copy_cursor_down(%struct.window_mode_entry* %24, i32 0)
  br label %26

26:                                               ; preds = %23
  %27 = load i64, i64* %6, align 8
  %28 = add nsw i64 %27, -1
  store i64 %28, i64* %6, align 8
  br label %20

29:                                               ; preds = %20
  %30 = load i64, i64* %7, align 8
  %31 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %32 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %30, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %29
  %36 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %37 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* @WINDOW_COPY_CMD_CANCEL, align 4
  store i32 %41, i32* %2, align 4
  br label %44

42:                                               ; preds = %35, %29
  %43 = load i32, i32* @WINDOW_COPY_CMD_NOTHING, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %42, %40
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @window_copy_cursor_down(%struct.window_mode_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
