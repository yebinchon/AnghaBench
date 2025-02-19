; ModuleID = '/home/carl/AnghaBench/tmux/extr_cmd-run-shell.c_cmd_run_shell_print.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_cmd-run-shell.c_cmd_run_shell_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.job = type { i32 }
%struct.cmd_run_shell_data = type { i32, i32* }
%struct.window_pane = type { i32 }
%struct.cmd_find_state = type { %struct.window_pane* }
%struct.window_mode_entry = type { i32* }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@window_view_mode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.job*, i8*)* @cmd_run_shell_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmd_run_shell_print(%struct.job* %0, i8* %1) #0 {
  %3 = alloca %struct.job*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.cmd_run_shell_data*, align 8
  %6 = alloca %struct.window_pane*, align 8
  %7 = alloca %struct.cmd_find_state, align 8
  %8 = alloca %struct.window_mode_entry*, align 8
  store %struct.job* %0, %struct.job** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.job*, %struct.job** %3, align 8
  %10 = call %struct.cmd_run_shell_data* @job_get_data(%struct.job* %9)
  store %struct.cmd_run_shell_data* %10, %struct.cmd_run_shell_data** %5, align 8
  store %struct.window_pane* null, %struct.window_pane** %6, align 8
  %11 = load %struct.cmd_run_shell_data*, %struct.cmd_run_shell_data** %5, align 8
  %12 = getelementptr inbounds %struct.cmd_run_shell_data, %struct.cmd_run_shell_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, -1
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.cmd_run_shell_data*, %struct.cmd_run_shell_data** %5, align 8
  %17 = getelementptr inbounds %struct.cmd_run_shell_data, %struct.cmd_run_shell_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.window_pane* @window_pane_find_by_id(i32 %18)
  store %struct.window_pane* %19, %struct.window_pane** %6, align 8
  br label %20

20:                                               ; preds = %15, %2
  %21 = load %struct.window_pane*, %struct.window_pane** %6, align 8
  %22 = icmp eq %struct.window_pane* %21, null
  br i1 %22, label %23, label %45

23:                                               ; preds = %20
  %24 = load %struct.cmd_run_shell_data*, %struct.cmd_run_shell_data** %5, align 8
  %25 = getelementptr inbounds %struct.cmd_run_shell_data, %struct.cmd_run_shell_data* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load %struct.cmd_run_shell_data*, %struct.cmd_run_shell_data** %5, align 8
  %30 = getelementptr inbounds %struct.cmd_run_shell_data, %struct.cmd_run_shell_data* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load i8*, i8** %4, align 8
  %33 = call i32 @cmdq_print(i32* %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %32)
  br label %63

34:                                               ; preds = %23
  %35 = call i64 @cmd_find_from_nothing(%struct.cmd_find_state* %7, i32 0)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  br label %63

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.cmd_find_state, %struct.cmd_find_state* %7, i32 0, i32 0
  %40 = load %struct.window_pane*, %struct.window_pane** %39, align 8
  store %struct.window_pane* %40, %struct.window_pane** %6, align 8
  %41 = load %struct.window_pane*, %struct.window_pane** %6, align 8
  %42 = icmp eq %struct.window_pane* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %63

44:                                               ; preds = %38
  br label %45

45:                                               ; preds = %44, %20
  %46 = load %struct.window_pane*, %struct.window_pane** %6, align 8
  %47 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %46, i32 0, i32 0
  %48 = call %struct.window_mode_entry* @TAILQ_FIRST(i32* %47)
  store %struct.window_mode_entry* %48, %struct.window_mode_entry** %8, align 8
  %49 = load %struct.window_mode_entry*, %struct.window_mode_entry** %8, align 8
  %50 = icmp eq %struct.window_mode_entry* %49, null
  br i1 %50, label %56, label %51

51:                                               ; preds = %45
  %52 = load %struct.window_mode_entry*, %struct.window_mode_entry** %8, align 8
  %53 = getelementptr inbounds %struct.window_mode_entry, %struct.window_mode_entry* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = icmp ne i32* %54, @window_view_mode
  br i1 %55, label %56, label %59

56:                                               ; preds = %51, %45
  %57 = load %struct.window_pane*, %struct.window_pane** %6, align 8
  %58 = call i32 @window_pane_set_mode(%struct.window_pane* %57, i32* @window_view_mode, i32* null, i32* null)
  br label %59

59:                                               ; preds = %56, %51
  %60 = load %struct.window_pane*, %struct.window_pane** %6, align 8
  %61 = load i8*, i8** %4, align 8
  %62 = call i32 @window_copy_add(%struct.window_pane* %60, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %61)
  br label %63

63:                                               ; preds = %59, %43, %37, %28
  ret void
}

declare dso_local %struct.cmd_run_shell_data* @job_get_data(%struct.job*) #1

declare dso_local %struct.window_pane* @window_pane_find_by_id(i32) #1

declare dso_local i32 @cmdq_print(i32*, i8*, i8*) #1

declare dso_local i64 @cmd_find_from_nothing(%struct.cmd_find_state*, i32) #1

declare dso_local %struct.window_mode_entry* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @window_pane_set_mode(%struct.window_pane*, i32*, i32*, i32*) #1

declare dso_local i32 @window_copy_add(%struct.window_pane*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
