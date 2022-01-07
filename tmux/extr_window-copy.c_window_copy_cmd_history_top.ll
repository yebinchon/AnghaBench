; ModuleID = '/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_cmd_history_top.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_cmd_history_top.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window_copy_cmd_state = type { %struct.window_mode_entry* }
%struct.window_mode_entry = type { %struct.window_copy_mode_data* }
%struct.window_copy_mode_data = type { i64, i64, i64, i64, i32, i64 }

@LINE_SEL_LEFT_RIGHT = common dso_local global i64 0, align 8
@WINDOW_COPY_CMD_REDRAW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.window_copy_cmd_state*)* @window_copy_cmd_history_top to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @window_copy_cmd_history_top(%struct.window_copy_cmd_state* %0) #0 {
  %2 = alloca %struct.window_copy_cmd_state*, align 8
  %3 = alloca %struct.window_mode_entry*, align 8
  %4 = alloca %struct.window_copy_mode_data*, align 8
  %5 = alloca i64, align 8
  store %struct.window_copy_cmd_state* %0, %struct.window_copy_cmd_state** %2, align 8
  %6 = load %struct.window_copy_cmd_state*, %struct.window_copy_cmd_state** %2, align 8
  %7 = getelementptr inbounds %struct.window_copy_cmd_state, %struct.window_copy_cmd_state* %6, i32 0, i32 0
  %8 = load %struct.window_mode_entry*, %struct.window_mode_entry** %7, align 8
  store %struct.window_mode_entry* %8, %struct.window_mode_entry** %3, align 8
  %9 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %10 = getelementptr inbounds %struct.window_mode_entry, %struct.window_mode_entry* %9, i32 0, i32 0
  %11 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %10, align 8
  store %struct.window_copy_mode_data* %11, %struct.window_copy_mode_data** %4, align 8
  %12 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %4, align 8
  %13 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @screen_hsize(i32 %14)
  %16 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %4, align 8
  %17 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %15, %18
  %20 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %4, align 8
  %21 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = sub nsw i64 %19, %22
  store i64 %23, i64* %5, align 8
  %24 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %4, align 8
  %25 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @LINE_SEL_LEFT_RIGHT, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %1
  %30 = load i64, i64* %5, align 8
  %31 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %4, align 8
  %32 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %30, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %37 = call i32 @window_copy_other_end(%struct.window_mode_entry* %36)
  br label %38

38:                                               ; preds = %35, %29, %1
  %39 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %4, align 8
  %40 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %39, i32 0, i32 0
  store i64 0, i64* %40, align 8
  %41 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %4, align 8
  %42 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %41, i32 0, i32 5
  store i64 0, i64* %42, align 8
  %43 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %4, align 8
  %44 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @screen_hsize(i32 %45)
  %47 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %4, align 8
  %48 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %47, i32 0, i32 1
  store i64 %46, i64* %48, align 8
  %49 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %50 = call i32 @window_copy_update_selection(%struct.window_mode_entry* %49, i32 1)
  %51 = load i32, i32* @WINDOW_COPY_CMD_REDRAW, align 4
  ret i32 %51
}

declare dso_local i64 @screen_hsize(i32) #1

declare dso_local i32 @window_copy_other_end(%struct.window_mode_entry*) #1

declare dso_local i32 @window_copy_update_selection(%struct.window_mode_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
