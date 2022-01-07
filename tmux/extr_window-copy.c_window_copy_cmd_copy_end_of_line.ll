; ModuleID = '/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_cmd_copy_end_of_line.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_cmd_copy_end_of_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window_copy_cmd_state = type { %struct.TYPE_2__*, %struct.winlink*, %struct.session*, %struct.client*, %struct.window_mode_entry* }
%struct.TYPE_2__ = type { i32, i32* }
%struct.winlink = type { i32 }
%struct.session = type { i32 }
%struct.client = type { i32 }
%struct.window_mode_entry = type { i32, %struct.window_pane* }
%struct.window_pane = type { i32 }

@WINDOW_COPY_CMD_CANCEL = common dso_local global i32 0, align 4
@WINDOW_COPY_CMD_REDRAW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.window_copy_cmd_state*)* @window_copy_cmd_copy_end_of_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @window_copy_cmd_copy_end_of_line(%struct.window_copy_cmd_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.window_copy_cmd_state*, align 8
  %4 = alloca %struct.window_mode_entry*, align 8
  %5 = alloca %struct.client*, align 8
  %6 = alloca %struct.session*, align 8
  %7 = alloca %struct.winlink*, align 8
  %8 = alloca %struct.window_pane*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.window_copy_cmd_state* %0, %struct.window_copy_cmd_state** %3, align 8
  %11 = load %struct.window_copy_cmd_state*, %struct.window_copy_cmd_state** %3, align 8
  %12 = getelementptr inbounds %struct.window_copy_cmd_state, %struct.window_copy_cmd_state* %11, i32 0, i32 4
  %13 = load %struct.window_mode_entry*, %struct.window_mode_entry** %12, align 8
  store %struct.window_mode_entry* %13, %struct.window_mode_entry** %4, align 8
  %14 = load %struct.window_copy_cmd_state*, %struct.window_copy_cmd_state** %3, align 8
  %15 = getelementptr inbounds %struct.window_copy_cmd_state, %struct.window_copy_cmd_state* %14, i32 0, i32 3
  %16 = load %struct.client*, %struct.client** %15, align 8
  store %struct.client* %16, %struct.client** %5, align 8
  %17 = load %struct.window_copy_cmd_state*, %struct.window_copy_cmd_state** %3, align 8
  %18 = getelementptr inbounds %struct.window_copy_cmd_state, %struct.window_copy_cmd_state* %17, i32 0, i32 2
  %19 = load %struct.session*, %struct.session** %18, align 8
  store %struct.session* %19, %struct.session** %6, align 8
  %20 = load %struct.window_copy_cmd_state*, %struct.window_copy_cmd_state** %3, align 8
  %21 = getelementptr inbounds %struct.window_copy_cmd_state, %struct.window_copy_cmd_state* %20, i32 0, i32 1
  %22 = load %struct.winlink*, %struct.winlink** %21, align 8
  store %struct.winlink* %22, %struct.winlink** %7, align 8
  %23 = load %struct.window_mode_entry*, %struct.window_mode_entry** %4, align 8
  %24 = getelementptr inbounds %struct.window_mode_entry, %struct.window_mode_entry* %23, i32 0, i32 1
  %25 = load %struct.window_pane*, %struct.window_pane** %24, align 8
  store %struct.window_pane* %25, %struct.window_pane** %8, align 8
  %26 = load %struct.window_mode_entry*, %struct.window_mode_entry** %4, align 8
  %27 = getelementptr inbounds %struct.window_mode_entry, %struct.window_mode_entry* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %9, align 4
  store i8* null, i8** %10, align 8
  %29 = load %struct.window_copy_cmd_state*, %struct.window_copy_cmd_state** %3, align 8
  %30 = getelementptr inbounds %struct.window_copy_cmd_state, %struct.window_copy_cmd_state* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 2
  br i1 %34, label %35, label %48

35:                                               ; preds = %1
  %36 = load %struct.window_copy_cmd_state*, %struct.window_copy_cmd_state** %3, align 8
  %37 = getelementptr inbounds %struct.window_copy_cmd_state, %struct.window_copy_cmd_state* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.client*, %struct.client** %5, align 8
  %44 = load %struct.session*, %struct.session** %6, align 8
  %45 = load %struct.winlink*, %struct.winlink** %7, align 8
  %46 = load %struct.window_pane*, %struct.window_pane** %8, align 8
  %47 = call i8* @format_single(i32* null, i32 %42, %struct.client* %43, %struct.session* %44, %struct.winlink* %45, %struct.window_pane* %46)
  store i8* %47, i8** %10, align 8
  br label %48

48:                                               ; preds = %35, %1
  %49 = load %struct.window_mode_entry*, %struct.window_mode_entry** %4, align 8
  %50 = call i32 @window_copy_start_selection(%struct.window_mode_entry* %49)
  br label %51

51:                                               ; preds = %57, %48
  %52 = load i32, i32* %9, align 4
  %53 = icmp sgt i32 %52, 1
  br i1 %53, label %54, label %60

54:                                               ; preds = %51
  %55 = load %struct.window_mode_entry*, %struct.window_mode_entry** %4, align 8
  %56 = call i32 @window_copy_cursor_down(%struct.window_mode_entry* %55, i32 0)
  br label %57

57:                                               ; preds = %54
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %9, align 4
  br label %51

60:                                               ; preds = %51
  %61 = load %struct.window_mode_entry*, %struct.window_mode_entry** %4, align 8
  %62 = call i32 @window_copy_cursor_end_of_line(%struct.window_mode_entry* %61)
  %63 = load %struct.session*, %struct.session** %6, align 8
  %64 = icmp ne %struct.session* %63, null
  br i1 %64, label %65, label %72

65:                                               ; preds = %60
  %66 = load %struct.window_mode_entry*, %struct.window_mode_entry** %4, align 8
  %67 = load i8*, i8** %10, align 8
  %68 = call i32 @window_copy_copy_selection(%struct.window_mode_entry* %66, i8* %67)
  %69 = load i8*, i8** %10, align 8
  %70 = call i32 @free(i8* %69)
  %71 = load i32, i32* @WINDOW_COPY_CMD_CANCEL, align 4
  store i32 %71, i32* %2, align 4
  br label %76

72:                                               ; preds = %60
  %73 = load i8*, i8** %10, align 8
  %74 = call i32 @free(i8* %73)
  %75 = load i32, i32* @WINDOW_COPY_CMD_REDRAW, align 4
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %72, %65
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i8* @format_single(i32*, i32, %struct.client*, %struct.session*, %struct.winlink*, %struct.window_pane*) #1

declare dso_local i32 @window_copy_start_selection(%struct.window_mode_entry*) #1

declare dso_local i32 @window_copy_cursor_down(%struct.window_mode_entry*, i32) #1

declare dso_local i32 @window_copy_cursor_end_of_line(%struct.window_mode_entry*) #1

declare dso_local i32 @window_copy_copy_selection(%struct.window_mode_entry*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
