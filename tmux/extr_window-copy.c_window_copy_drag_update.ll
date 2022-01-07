; ModuleID = '/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_drag_update.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_drag_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.client = type { i32 }
%struct.mouse_event = type { i32 }
%struct.window_pane = type { i32 }
%struct.window_mode_entry = type { %struct.window_copy_mode_data*, i32* }
%struct.window_copy_mode_data = type { i64, i64, i32, i32 }
%struct.timeval = type { i32 }

@WINDOW_COPY_DRAG_REPEAT_TIME = common dso_local global i32 0, align 4
@window_copy_mode = common dso_local global i32 0, align 4
@window_view_mode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.client*, %struct.mouse_event*)* @window_copy_drag_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @window_copy_drag_update(%struct.client* %0, %struct.mouse_event* %1) #0 {
  %3 = alloca %struct.client*, align 8
  %4 = alloca %struct.mouse_event*, align 8
  %5 = alloca %struct.window_pane*, align 8
  %6 = alloca %struct.window_mode_entry*, align 8
  %7 = alloca %struct.window_copy_mode_data*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.timeval, align 4
  store %struct.client* %0, %struct.client** %3, align 8
  store %struct.mouse_event* %1, %struct.mouse_event** %4, align 8
  %13 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 0
  %14 = load i32, i32* @WINDOW_COPY_DRAG_REPEAT_TIME, align 4
  store i32 %14, i32* %13, align 4
  %15 = load %struct.client*, %struct.client** %3, align 8
  %16 = icmp eq %struct.client* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %109

18:                                               ; preds = %2
  %19 = load %struct.mouse_event*, %struct.mouse_event** %4, align 8
  %20 = call %struct.window_pane* @cmd_mouse_pane(%struct.mouse_event* %19, i32* null, i32* null)
  store %struct.window_pane* %20, %struct.window_pane** %5, align 8
  %21 = load %struct.window_pane*, %struct.window_pane** %5, align 8
  %22 = icmp eq %struct.window_pane* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %109

24:                                               ; preds = %18
  %25 = load %struct.window_pane*, %struct.window_pane** %5, align 8
  %26 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %25, i32 0, i32 0
  %27 = call %struct.window_mode_entry* @TAILQ_FIRST(i32* %26)
  store %struct.window_mode_entry* %27, %struct.window_mode_entry** %6, align 8
  %28 = load %struct.window_mode_entry*, %struct.window_mode_entry** %6, align 8
  %29 = icmp eq %struct.window_mode_entry* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %109

31:                                               ; preds = %24
  %32 = load %struct.window_mode_entry*, %struct.window_mode_entry** %6, align 8
  %33 = getelementptr inbounds %struct.window_mode_entry, %struct.window_mode_entry* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, @window_copy_mode
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load %struct.window_mode_entry*, %struct.window_mode_entry** %6, align 8
  %38 = getelementptr inbounds %struct.window_mode_entry, %struct.window_mode_entry* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, @window_view_mode
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %109

42:                                               ; preds = %36, %31
  %43 = load %struct.window_mode_entry*, %struct.window_mode_entry** %6, align 8
  %44 = getelementptr inbounds %struct.window_mode_entry, %struct.window_mode_entry* %43, i32 0, i32 0
  %45 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %44, align 8
  store %struct.window_copy_mode_data* %45, %struct.window_copy_mode_data** %7, align 8
  %46 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %7, align 8
  %47 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %46, i32 0, i32 2
  %48 = call i32 @evtimer_del(i32* %47)
  %49 = load %struct.window_pane*, %struct.window_pane** %5, align 8
  %50 = load %struct.mouse_event*, %struct.mouse_event** %4, align 8
  %51 = call i64 @cmd_mouse_at(%struct.window_pane* %49, %struct.mouse_event* %50, i64* %8, i64* %9, i32 0)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %42
  br label %109

54:                                               ; preds = %42
  %55 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %7, align 8
  %56 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %10, align 8
  %58 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %7, align 8
  %59 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %11, align 8
  %61 = load %struct.window_mode_entry*, %struct.window_mode_entry** %6, align 8
  %62 = load i64, i64* %8, align 8
  %63 = load i64, i64* %9, align 8
  %64 = call i32 @window_copy_update_cursor(%struct.window_mode_entry* %61, i64 %62, i64 %63)
  %65 = load %struct.window_mode_entry*, %struct.window_mode_entry** %6, align 8
  %66 = call i64 @window_copy_update_selection(%struct.window_mode_entry* %65, i32 1)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %54
  %69 = load %struct.window_mode_entry*, %struct.window_mode_entry** %6, align 8
  %70 = load i64, i64* %11, align 8
  %71 = call i32 @window_copy_redraw_selection(%struct.window_mode_entry* %69, i64 %70)
  br label %72

72:                                               ; preds = %68, %54
  %73 = load i64, i64* %11, align 8
  %74 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %7, align 8
  %75 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %73, %76
  br i1 %77, label %84, label %78

78:                                               ; preds = %72
  %79 = load i64, i64* %10, align 8
  %80 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %7, align 8
  %81 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp eq i64 %79, %82
  br i1 %83, label %84, label %109

84:                                               ; preds = %78, %72
  %85 = load i64, i64* %9, align 8
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %84
  %88 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %7, align 8
  %89 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %88, i32 0, i32 2
  %90 = call i32 @evtimer_add(i32* %89, %struct.timeval* %12)
  %91 = load %struct.window_mode_entry*, %struct.window_mode_entry** %6, align 8
  %92 = call i32 @window_copy_cursor_up(%struct.window_mode_entry* %91, i32 1)
  br label %108

93:                                               ; preds = %84
  %94 = load i64, i64* %9, align 8
  %95 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %7, align 8
  %96 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %95, i32 0, i32 3
  %97 = call i32 @screen_size_y(i32* %96)
  %98 = sub nsw i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = icmp eq i64 %94, %99
  br i1 %100, label %101, label %107

101:                                              ; preds = %93
  %102 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %7, align 8
  %103 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %102, i32 0, i32 2
  %104 = call i32 @evtimer_add(i32* %103, %struct.timeval* %12)
  %105 = load %struct.window_mode_entry*, %struct.window_mode_entry** %6, align 8
  %106 = call i32 @window_copy_cursor_down(%struct.window_mode_entry* %105, i32 1)
  br label %107

107:                                              ; preds = %101, %93
  br label %108

108:                                              ; preds = %107, %87
  br label %109

109:                                              ; preds = %17, %23, %30, %41, %53, %108, %78
  ret void
}

declare dso_local %struct.window_pane* @cmd_mouse_pane(%struct.mouse_event*, i32*, i32*) #1

declare dso_local %struct.window_mode_entry* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @evtimer_del(i32*) #1

declare dso_local i64 @cmd_mouse_at(%struct.window_pane*, %struct.mouse_event*, i64*, i64*, i32) #1

declare dso_local i32 @window_copy_update_cursor(%struct.window_mode_entry*, i64, i64) #1

declare dso_local i64 @window_copy_update_selection(%struct.window_mode_entry*, i32) #1

declare dso_local i32 @window_copy_redraw_selection(%struct.window_mode_entry*, i64) #1

declare dso_local i32 @evtimer_add(i32*, %struct.timeval*) #1

declare dso_local i32 @window_copy_cursor_up(%struct.window_mode_entry*, i32) #1

declare dso_local i32 @screen_size_y(i32*) #1

declare dso_local i32 @window_copy_cursor_down(%struct.window_mode_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
