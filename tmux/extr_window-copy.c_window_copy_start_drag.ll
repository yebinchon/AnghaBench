; ModuleID = '/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_start_drag.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_start_drag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.client = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 (%struct.client.0*, %struct.mouse_event*)* }
%struct.client.0 = type opaque
%struct.mouse_event = type { i32 }
%struct.window_pane = type { i32 }
%struct.window_mode_entry = type { i32* }

@window_copy_mode = common dso_local global i32 0, align 4
@window_view_mode = common dso_local global i32 0, align 4
@window_copy_drag_release = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @window_copy_start_drag(%struct.client* %0, %struct.mouse_event* %1) #0 {
  %3 = alloca %struct.client*, align 8
  %4 = alloca %struct.mouse_event*, align 8
  %5 = alloca %struct.window_pane*, align 8
  %6 = alloca %struct.window_mode_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.client* %0, %struct.client** %3, align 8
  store %struct.mouse_event* %1, %struct.mouse_event** %4, align 8
  %9 = load %struct.client*, %struct.client** %3, align 8
  %10 = icmp eq %struct.client* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %61

12:                                               ; preds = %2
  %13 = load %struct.mouse_event*, %struct.mouse_event** %4, align 8
  %14 = call %struct.window_pane* @cmd_mouse_pane(%struct.mouse_event* %13, i32* null, i32* null)
  store %struct.window_pane* %14, %struct.window_pane** %5, align 8
  %15 = load %struct.window_pane*, %struct.window_pane** %5, align 8
  %16 = icmp eq %struct.window_pane* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  br label %61

18:                                               ; preds = %12
  %19 = load %struct.window_pane*, %struct.window_pane** %5, align 8
  %20 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %19, i32 0, i32 0
  %21 = call %struct.window_mode_entry* @TAILQ_FIRST(i32* %20)
  store %struct.window_mode_entry* %21, %struct.window_mode_entry** %6, align 8
  %22 = load %struct.window_mode_entry*, %struct.window_mode_entry** %6, align 8
  %23 = icmp eq %struct.window_mode_entry* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %61

25:                                               ; preds = %18
  %26 = load %struct.window_mode_entry*, %struct.window_mode_entry** %6, align 8
  %27 = getelementptr inbounds %struct.window_mode_entry, %struct.window_mode_entry* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, @window_copy_mode
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load %struct.window_mode_entry*, %struct.window_mode_entry** %6, align 8
  %32 = getelementptr inbounds %struct.window_mode_entry, %struct.window_mode_entry* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, @window_view_mode
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %61

36:                                               ; preds = %30, %25
  %37 = load %struct.window_pane*, %struct.window_pane** %5, align 8
  %38 = load %struct.mouse_event*, %struct.mouse_event** %4, align 8
  %39 = call i64 @cmd_mouse_at(%struct.window_pane* %37, %struct.mouse_event* %38, i32* %7, i32* %8, i32 1)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %61

42:                                               ; preds = %36
  %43 = load %struct.client*, %struct.client** %3, align 8
  %44 = getelementptr inbounds %struct.client, %struct.client* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  store i32 (%struct.client.0*, %struct.mouse_event*)* bitcast (i32 (%struct.client*, %struct.mouse_event*)* @window_copy_drag_update to i32 (%struct.client.0*, %struct.mouse_event*)*), i32 (%struct.client.0*, %struct.mouse_event*)** %45, align 8
  %46 = load i32, i32* @window_copy_drag_release, align 4
  %47 = load %struct.client*, %struct.client** %3, align 8
  %48 = getelementptr inbounds %struct.client, %struct.client* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 8
  %50 = load %struct.window_mode_entry*, %struct.window_mode_entry** %6, align 8
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @window_copy_update_cursor(%struct.window_mode_entry* %50, i32 %51, i32 %52)
  %54 = load %struct.window_mode_entry*, %struct.window_mode_entry** %6, align 8
  %55 = call i32 @window_copy_start_selection(%struct.window_mode_entry* %54)
  %56 = load %struct.window_mode_entry*, %struct.window_mode_entry** %6, align 8
  %57 = call i32 @window_copy_redraw_screen(%struct.window_mode_entry* %56)
  %58 = load %struct.client*, %struct.client** %3, align 8
  %59 = load %struct.mouse_event*, %struct.mouse_event** %4, align 8
  %60 = call i32 @window_copy_drag_update(%struct.client* %58, %struct.mouse_event* %59)
  br label %61

61:                                               ; preds = %42, %41, %35, %24, %17, %11
  ret void
}

declare dso_local %struct.window_pane* @cmd_mouse_pane(%struct.mouse_event*, i32*, i32*) #1

declare dso_local %struct.window_mode_entry* @TAILQ_FIRST(i32*) #1

declare dso_local i64 @cmd_mouse_at(%struct.window_pane*, %struct.mouse_event*, i32*, i32*, i32) #1

declare dso_local i32 @window_copy_drag_update(%struct.client*, %struct.mouse_event*) #1

declare dso_local i32 @window_copy_update_cursor(%struct.window_mode_entry*, i32, i32) #1

declare dso_local i32 @window_copy_start_selection(%struct.window_mode_entry*) #1

declare dso_local i32 @window_copy_redraw_screen(%struct.window_mode_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
