; ModuleID = '/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_cmd_jump_forward.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_cmd_jump_forward.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window_copy_cmd_state = type { %struct.TYPE_2__*, %struct.window_mode_entry* }
%struct.TYPE_2__ = type { i8** }
%struct.window_mode_entry = type { i64, %struct.window_copy_mode_data* }
%struct.window_copy_mode_data = type { i8, i32 }

@WINDOW_COPY_JUMPFORWARD = common dso_local global i32 0, align 4
@WINDOW_COPY_CMD_NOTHING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.window_copy_cmd_state*)* @window_copy_cmd_jump_forward to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @window_copy_cmd_jump_forward(%struct.window_copy_cmd_state* %0) #0 {
  %2 = alloca %struct.window_copy_cmd_state*, align 8
  %3 = alloca %struct.window_mode_entry*, align 8
  %4 = alloca %struct.window_copy_mode_data*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store %struct.window_copy_cmd_state* %0, %struct.window_copy_cmd_state** %2, align 8
  %7 = load %struct.window_copy_cmd_state*, %struct.window_copy_cmd_state** %2, align 8
  %8 = getelementptr inbounds %struct.window_copy_cmd_state, %struct.window_copy_cmd_state* %7, i32 0, i32 1
  %9 = load %struct.window_mode_entry*, %struct.window_mode_entry** %8, align 8
  store %struct.window_mode_entry* %9, %struct.window_mode_entry** %3, align 8
  %10 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %11 = getelementptr inbounds %struct.window_mode_entry, %struct.window_mode_entry* %10, i32 0, i32 1
  %12 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %11, align 8
  store %struct.window_copy_mode_data* %12, %struct.window_copy_mode_data** %4, align 8
  %13 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %14 = getelementptr inbounds %struct.window_mode_entry, %struct.window_mode_entry* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %5, align 8
  %16 = load %struct.window_copy_cmd_state*, %struct.window_copy_cmd_state** %2, align 8
  %17 = getelementptr inbounds %struct.window_copy_cmd_state, %struct.window_copy_cmd_state* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i8**, i8*** %19, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 1
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %6, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %45

27:                                               ; preds = %1
  %28 = load i32, i32* @WINDOW_COPY_JUMPFORWARD, align 4
  %29 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %4, align 8
  %30 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load i8*, i8** %6, align 8
  %32 = load i8, i8* %31, align 1
  %33 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %4, align 8
  %34 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %33, i32 0, i32 0
  store i8 %32, i8* %34, align 4
  br label %35

35:                                               ; preds = %41, %27
  %36 = load i64, i64* %5, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %40 = call i32 @window_copy_cursor_jump(%struct.window_mode_entry* %39)
  br label %41

41:                                               ; preds = %38
  %42 = load i64, i64* %5, align 8
  %43 = add nsw i64 %42, -1
  store i64 %43, i64* %5, align 8
  br label %35

44:                                               ; preds = %35
  br label %45

45:                                               ; preds = %44, %1
  %46 = load i32, i32* @WINDOW_COPY_CMD_NOTHING, align 4
  ret i32 %46
}

declare dso_local i32 @window_copy_cursor_jump(%struct.window_mode_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
