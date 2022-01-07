; ModuleID = '/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_move_mouse.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_move_mouse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mouse_event = type { i32 }
%struct.window_pane = type { i32 }
%struct.window_mode_entry = type { i32* }

@window_copy_mode = common dso_local global i32 0, align 4
@window_view_mode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mouse_event*)* @window_copy_move_mouse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @window_copy_move_mouse(%struct.mouse_event* %0) #0 {
  %2 = alloca %struct.mouse_event*, align 8
  %3 = alloca %struct.window_pane*, align 8
  %4 = alloca %struct.window_mode_entry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mouse_event* %0, %struct.mouse_event** %2, align 8
  %7 = load %struct.mouse_event*, %struct.mouse_event** %2, align 8
  %8 = call %struct.window_pane* @cmd_mouse_pane(%struct.mouse_event* %7, i32* null, i32* null)
  store %struct.window_pane* %8, %struct.window_pane** %3, align 8
  %9 = load %struct.window_pane*, %struct.window_pane** %3, align 8
  %10 = icmp eq %struct.window_pane* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %41

12:                                               ; preds = %1
  %13 = load %struct.window_pane*, %struct.window_pane** %3, align 8
  %14 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %13, i32 0, i32 0
  %15 = call %struct.window_mode_entry* @TAILQ_FIRST(i32* %14)
  store %struct.window_mode_entry* %15, %struct.window_mode_entry** %4, align 8
  %16 = load %struct.window_mode_entry*, %struct.window_mode_entry** %4, align 8
  %17 = icmp eq %struct.window_mode_entry* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  br label %41

19:                                               ; preds = %12
  %20 = load %struct.window_mode_entry*, %struct.window_mode_entry** %4, align 8
  %21 = getelementptr inbounds %struct.window_mode_entry, %struct.window_mode_entry* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, @window_copy_mode
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load %struct.window_mode_entry*, %struct.window_mode_entry** %4, align 8
  %26 = getelementptr inbounds %struct.window_mode_entry, %struct.window_mode_entry* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, @window_view_mode
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %41

30:                                               ; preds = %24, %19
  %31 = load %struct.window_pane*, %struct.window_pane** %3, align 8
  %32 = load %struct.mouse_event*, %struct.mouse_event** %2, align 8
  %33 = call i64 @cmd_mouse_at(%struct.window_pane* %31, %struct.mouse_event* %32, i32* %5, i32* %6, i32 0)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %41

36:                                               ; preds = %30
  %37 = load %struct.window_mode_entry*, %struct.window_mode_entry** %4, align 8
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @window_copy_update_cursor(%struct.window_mode_entry* %37, i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %36, %35, %29, %18, %11
  ret void
}

declare dso_local %struct.window_pane* @cmd_mouse_pane(%struct.mouse_event*, i32*, i32*) #1

declare dso_local %struct.window_mode_entry* @TAILQ_FIRST(i32*) #1

declare dso_local i64 @cmd_mouse_at(%struct.window_pane*, %struct.mouse_event*, i32*, i32*, i32) #1

declare dso_local i32 @window_copy_update_cursor(%struct.window_mode_entry*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
