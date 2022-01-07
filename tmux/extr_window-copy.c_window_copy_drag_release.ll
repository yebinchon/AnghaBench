; ModuleID = '/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_drag_release.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_drag_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.client = type { i32 }
%struct.mouse_event = type { i32 }
%struct.window_pane = type { i32 }
%struct.window_mode_entry = type { %struct.window_copy_mode_data*, i32* }
%struct.window_copy_mode_data = type { i32 }

@window_copy_mode = common dso_local global i32 0, align 4
@window_view_mode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.client*, %struct.mouse_event*)* @window_copy_drag_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @window_copy_drag_release(%struct.client* %0, %struct.mouse_event* %1) #0 {
  %3 = alloca %struct.client*, align 8
  %4 = alloca %struct.mouse_event*, align 8
  %5 = alloca %struct.window_pane*, align 8
  %6 = alloca %struct.window_mode_entry*, align 8
  %7 = alloca %struct.window_copy_mode_data*, align 8
  store %struct.client* %0, %struct.client** %3, align 8
  store %struct.mouse_event* %1, %struct.mouse_event** %4, align 8
  %8 = load %struct.client*, %struct.client** %3, align 8
  %9 = icmp eq %struct.client* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %42

11:                                               ; preds = %2
  %12 = load %struct.mouse_event*, %struct.mouse_event** %4, align 8
  %13 = call %struct.window_pane* @cmd_mouse_pane(%struct.mouse_event* %12, i32* null, i32* null)
  store %struct.window_pane* %13, %struct.window_pane** %5, align 8
  %14 = load %struct.window_pane*, %struct.window_pane** %5, align 8
  %15 = icmp eq %struct.window_pane* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  br label %42

17:                                               ; preds = %11
  %18 = load %struct.window_pane*, %struct.window_pane** %5, align 8
  %19 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %18, i32 0, i32 0
  %20 = call %struct.window_mode_entry* @TAILQ_FIRST(i32* %19)
  store %struct.window_mode_entry* %20, %struct.window_mode_entry** %6, align 8
  %21 = load %struct.window_mode_entry*, %struct.window_mode_entry** %6, align 8
  %22 = icmp eq %struct.window_mode_entry* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %42

24:                                               ; preds = %17
  %25 = load %struct.window_mode_entry*, %struct.window_mode_entry** %6, align 8
  %26 = getelementptr inbounds %struct.window_mode_entry, %struct.window_mode_entry* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, @window_copy_mode
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load %struct.window_mode_entry*, %struct.window_mode_entry** %6, align 8
  %31 = getelementptr inbounds %struct.window_mode_entry, %struct.window_mode_entry* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, @window_view_mode
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %42

35:                                               ; preds = %29, %24
  %36 = load %struct.window_mode_entry*, %struct.window_mode_entry** %6, align 8
  %37 = getelementptr inbounds %struct.window_mode_entry, %struct.window_mode_entry* %36, i32 0, i32 0
  %38 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %37, align 8
  store %struct.window_copy_mode_data* %38, %struct.window_copy_mode_data** %7, align 8
  %39 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %7, align 8
  %40 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %39, i32 0, i32 0
  %41 = call i32 @evtimer_del(i32* %40)
  br label %42

42:                                               ; preds = %35, %34, %23, %16, %10
  ret void
}

declare dso_local %struct.window_pane* @cmd_mouse_pane(%struct.mouse_event*, i32*, i32*) #1

declare dso_local %struct.window_mode_entry* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @evtimer_del(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
