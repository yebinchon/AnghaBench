; ModuleID = '/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_cmd_copy_selection_no_clear.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_cmd_copy_selection_no_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window_copy_cmd_state = type { %struct.TYPE_2__*, %struct.winlink*, %struct.session*, %struct.client*, %struct.window_mode_entry* }
%struct.TYPE_2__ = type { i32, i32* }
%struct.winlink = type { i32 }
%struct.session = type { i32 }
%struct.client = type { i32 }
%struct.window_mode_entry = type { %struct.window_pane* }
%struct.window_pane = type { i32 }

@WINDOW_COPY_CMD_NOTHING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.window_copy_cmd_state*)* @window_copy_cmd_copy_selection_no_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @window_copy_cmd_copy_selection_no_clear(%struct.window_copy_cmd_state* %0) #0 {
  %2 = alloca %struct.window_copy_cmd_state*, align 8
  %3 = alloca %struct.window_mode_entry*, align 8
  %4 = alloca %struct.client*, align 8
  %5 = alloca %struct.session*, align 8
  %6 = alloca %struct.winlink*, align 8
  %7 = alloca %struct.window_pane*, align 8
  %8 = alloca i8*, align 8
  store %struct.window_copy_cmd_state* %0, %struct.window_copy_cmd_state** %2, align 8
  %9 = load %struct.window_copy_cmd_state*, %struct.window_copy_cmd_state** %2, align 8
  %10 = getelementptr inbounds %struct.window_copy_cmd_state, %struct.window_copy_cmd_state* %9, i32 0, i32 4
  %11 = load %struct.window_mode_entry*, %struct.window_mode_entry** %10, align 8
  store %struct.window_mode_entry* %11, %struct.window_mode_entry** %3, align 8
  %12 = load %struct.window_copy_cmd_state*, %struct.window_copy_cmd_state** %2, align 8
  %13 = getelementptr inbounds %struct.window_copy_cmd_state, %struct.window_copy_cmd_state* %12, i32 0, i32 3
  %14 = load %struct.client*, %struct.client** %13, align 8
  store %struct.client* %14, %struct.client** %4, align 8
  %15 = load %struct.window_copy_cmd_state*, %struct.window_copy_cmd_state** %2, align 8
  %16 = getelementptr inbounds %struct.window_copy_cmd_state, %struct.window_copy_cmd_state* %15, i32 0, i32 2
  %17 = load %struct.session*, %struct.session** %16, align 8
  store %struct.session* %17, %struct.session** %5, align 8
  %18 = load %struct.window_copy_cmd_state*, %struct.window_copy_cmd_state** %2, align 8
  %19 = getelementptr inbounds %struct.window_copy_cmd_state, %struct.window_copy_cmd_state* %18, i32 0, i32 1
  %20 = load %struct.winlink*, %struct.winlink** %19, align 8
  store %struct.winlink* %20, %struct.winlink** %6, align 8
  %21 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %22 = getelementptr inbounds %struct.window_mode_entry, %struct.window_mode_entry* %21, i32 0, i32 0
  %23 = load %struct.window_pane*, %struct.window_pane** %22, align 8
  store %struct.window_pane* %23, %struct.window_pane** %7, align 8
  store i8* null, i8** %8, align 8
  %24 = load %struct.window_copy_cmd_state*, %struct.window_copy_cmd_state** %2, align 8
  %25 = getelementptr inbounds %struct.window_copy_cmd_state, %struct.window_copy_cmd_state* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %28, 2
  br i1 %29, label %30, label %43

30:                                               ; preds = %1
  %31 = load %struct.window_copy_cmd_state*, %struct.window_copy_cmd_state** %2, align 8
  %32 = getelementptr inbounds %struct.window_copy_cmd_state, %struct.window_copy_cmd_state* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.client*, %struct.client** %4, align 8
  %39 = load %struct.session*, %struct.session** %5, align 8
  %40 = load %struct.winlink*, %struct.winlink** %6, align 8
  %41 = load %struct.window_pane*, %struct.window_pane** %7, align 8
  %42 = call i8* @format_single(i32* null, i32 %37, %struct.client* %38, %struct.session* %39, %struct.winlink* %40, %struct.window_pane* %41)
  store i8* %42, i8** %8, align 8
  br label %43

43:                                               ; preds = %30, %1
  %44 = load %struct.session*, %struct.session** %5, align 8
  %45 = icmp ne %struct.session* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = call i32 @window_copy_copy_selection(%struct.window_mode_entry* %47, i8* %48)
  br label %50

50:                                               ; preds = %46, %43
  %51 = load i8*, i8** %8, align 8
  %52 = call i32 @free(i8* %51)
  %53 = load i32, i32* @WINDOW_COPY_CMD_NOTHING, align 4
  ret i32 %53
}

declare dso_local i8* @format_single(i32*, i32, %struct.client*, %struct.session*, %struct.winlink*, %struct.window_pane*) #1

declare dso_local i32 @window_copy_copy_selection(%struct.window_mode_entry*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
