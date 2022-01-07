; ModuleID = '/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_cmd_jump_again.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_cmd_jump_again.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window_copy_cmd_state = type { %struct.window_mode_entry* }
%struct.window_mode_entry = type { i32, %struct.window_copy_mode_data* }
%struct.window_copy_mode_data = type { i32 }

@WINDOW_COPY_CMD_NOTHING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.window_copy_cmd_state*)* @window_copy_cmd_jump_again to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @window_copy_cmd_jump_again(%struct.window_copy_cmd_state* %0) #0 {
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
  %15 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %4, align 8
  %16 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %62 [
    i32 130, label %18
    i32 131, label %29
    i32 128, label %40
    i32 129, label %51
  ]

18:                                               ; preds = %1
  br label %19

19:                                               ; preds = %25, %18
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %24 = call i32 @window_copy_cursor_jump(%struct.window_mode_entry* %23)
  br label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %5, align 4
  br label %19

28:                                               ; preds = %19
  br label %62

29:                                               ; preds = %1
  br label %30

30:                                               ; preds = %36, %29
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %35 = call i32 @window_copy_cursor_jump_back(%struct.window_mode_entry* %34)
  br label %36

36:                                               ; preds = %33
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %5, align 4
  br label %30

39:                                               ; preds = %30
  br label %62

40:                                               ; preds = %1
  br label %41

41:                                               ; preds = %47, %40
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %46 = call i32 @window_copy_cursor_jump_to(%struct.window_mode_entry* %45)
  br label %47

47:                                               ; preds = %44
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %5, align 4
  br label %41

50:                                               ; preds = %41
  br label %62

51:                                               ; preds = %1
  br label %52

52:                                               ; preds = %58, %51
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %52
  %56 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %57 = call i32 @window_copy_cursor_jump_to_back(%struct.window_mode_entry* %56)
  br label %58

58:                                               ; preds = %55
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %5, align 4
  br label %52

61:                                               ; preds = %52
  br label %62

62:                                               ; preds = %1, %61, %50, %39, %28
  %63 = load i32, i32* @WINDOW_COPY_CMD_NOTHING, align 4
  ret i32 %63
}

declare dso_local i32 @window_copy_cursor_jump(%struct.window_mode_entry*) #1

declare dso_local i32 @window_copy_cursor_jump_back(%struct.window_mode_entry*) #1

declare dso_local i32 @window_copy_cursor_jump_to(%struct.window_mode_entry*) #1

declare dso_local i32 @window_copy_cursor_jump_to_back(%struct.window_mode_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
