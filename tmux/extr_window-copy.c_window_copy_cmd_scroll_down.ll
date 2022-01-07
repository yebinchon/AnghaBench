; ModuleID = '/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_cmd_scroll_down.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_cmd_scroll_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window_copy_cmd_state = type { %struct.window_mode_entry* }
%struct.window_mode_entry = type { i64, %struct.window_copy_mode_data* }
%struct.window_copy_mode_data = type { i64, i64 }

@WINDOW_COPY_CMD_CANCEL = common dso_local global i32 0, align 4
@WINDOW_COPY_CMD_NOTHING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.window_copy_cmd_state*)* @window_copy_cmd_scroll_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @window_copy_cmd_scroll_down(%struct.window_copy_cmd_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.window_copy_cmd_state*, align 8
  %4 = alloca %struct.window_mode_entry*, align 8
  %5 = alloca %struct.window_copy_mode_data*, align 8
  %6 = alloca i64, align 8
  store %struct.window_copy_cmd_state* %0, %struct.window_copy_cmd_state** %3, align 8
  %7 = load %struct.window_copy_cmd_state*, %struct.window_copy_cmd_state** %3, align 8
  %8 = getelementptr inbounds %struct.window_copy_cmd_state, %struct.window_copy_cmd_state* %7, i32 0, i32 0
  %9 = load %struct.window_mode_entry*, %struct.window_mode_entry** %8, align 8
  store %struct.window_mode_entry* %9, %struct.window_mode_entry** %4, align 8
  %10 = load %struct.window_mode_entry*, %struct.window_mode_entry** %4, align 8
  %11 = getelementptr inbounds %struct.window_mode_entry, %struct.window_mode_entry* %10, i32 0, i32 1
  %12 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %11, align 8
  store %struct.window_copy_mode_data* %12, %struct.window_copy_mode_data** %5, align 8
  %13 = load %struct.window_mode_entry*, %struct.window_mode_entry** %4, align 8
  %14 = getelementptr inbounds %struct.window_mode_entry, %struct.window_mode_entry* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %6, align 8
  br label %16

16:                                               ; preds = %22, %1
  %17 = load i64, i64* %6, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = load %struct.window_mode_entry*, %struct.window_mode_entry** %4, align 8
  %21 = call i32 @window_copy_cursor_down(%struct.window_mode_entry* %20, i32 1)
  br label %22

22:                                               ; preds = %19
  %23 = load i64, i64* %6, align 8
  %24 = add nsw i64 %23, -1
  store i64 %24, i64* %6, align 8
  br label %16

25:                                               ; preds = %16
  %26 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %27 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %25
  %31 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %32 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* @WINDOW_COPY_CMD_CANCEL, align 4
  store i32 %36, i32* %2, align 4
  br label %39

37:                                               ; preds = %30, %25
  %38 = load i32, i32* @WINDOW_COPY_CMD_NOTHING, align 4
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %37, %35
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @window_copy_cursor_down(%struct.window_mode_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
