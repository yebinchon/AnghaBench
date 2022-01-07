; ModuleID = '/home/carl/AnghaBench/tmux/extr_cmd-run-shell.c_cmd_run_shell_exec.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_cmd-run-shell.c_cmd_run_shell_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd = type { %struct.args* }
%struct.args = type { i32* }
%struct.cmdq_item = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.window_pane*, %struct.winlink*, %struct.session* }
%struct.window_pane = type { i32 }
%struct.winlink = type { i32 }
%struct.session = type { i32 }
%struct.cmd_run_shell_data = type { i32, i32, %struct.cmdq_item* }
%struct.client = type { i32 }

@cmd_run_shell_callback = common dso_local global i32 0, align 4
@cmd_run_shell_free = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"failed to run command: %s\00", align 1
@CMD_RETURN_ERROR = common dso_local global i32 0, align 4
@CMD_RETURN_NORMAL = common dso_local global i32 0, align 4
@CMD_RETURN_WAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmd*, %struct.cmdq_item*)* @cmd_run_shell_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_run_shell_exec(%struct.cmd* %0, %struct.cmdq_item* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cmd*, align 8
  %5 = alloca %struct.cmdq_item*, align 8
  %6 = alloca %struct.args*, align 8
  %7 = alloca %struct.cmd_run_shell_data*, align 8
  %8 = alloca %struct.client*, align 8
  %9 = alloca %struct.session*, align 8
  %10 = alloca %struct.winlink*, align 8
  %11 = alloca %struct.window_pane*, align 8
  store %struct.cmd* %0, %struct.cmd** %4, align 8
  store %struct.cmdq_item* %1, %struct.cmdq_item** %5, align 8
  %12 = load %struct.cmd*, %struct.cmd** %4, align 8
  %13 = getelementptr inbounds %struct.cmd, %struct.cmd* %12, i32 0, i32 0
  %14 = load %struct.args*, %struct.args** %13, align 8
  store %struct.args* %14, %struct.args** %6, align 8
  %15 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %16 = call %struct.client* @cmd_find_client(%struct.cmdq_item* %15, i32* null, i32 1)
  store %struct.client* %16, %struct.client** %8, align 8
  %17 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %18 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  %20 = load %struct.session*, %struct.session** %19, align 8
  store %struct.session* %20, %struct.session** %9, align 8
  %21 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %22 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load %struct.winlink*, %struct.winlink** %23, align 8
  store %struct.winlink* %24, %struct.winlink** %10, align 8
  %25 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %26 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load %struct.window_pane*, %struct.window_pane** %27, align 8
  store %struct.window_pane* %28, %struct.window_pane** %11, align 8
  %29 = call %struct.cmd_run_shell_data* @xcalloc(i32 1, i32 16)
  store %struct.cmd_run_shell_data* %29, %struct.cmd_run_shell_data** %7, align 8
  %30 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %31 = load %struct.args*, %struct.args** %6, align 8
  %32 = getelementptr inbounds %struct.args, %struct.args* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.client*, %struct.client** %8, align 8
  %37 = load %struct.session*, %struct.session** %9, align 8
  %38 = load %struct.winlink*, %struct.winlink** %10, align 8
  %39 = load %struct.window_pane*, %struct.window_pane** %11, align 8
  %40 = call i32 @format_single(%struct.cmdq_item* %30, i32 %35, %struct.client* %36, %struct.session* %37, %struct.winlink* %38, %struct.window_pane* %39)
  %41 = load %struct.cmd_run_shell_data*, %struct.cmd_run_shell_data** %7, align 8
  %42 = getelementptr inbounds %struct.cmd_run_shell_data, %struct.cmd_run_shell_data* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.args*, %struct.args** %6, align 8
  %44 = call i64 @args_has(%struct.args* %43, i8 signext 116)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %2
  %47 = load %struct.window_pane*, %struct.window_pane** %11, align 8
  %48 = icmp ne %struct.window_pane* %47, null
  br i1 %48, label %49, label %55

49:                                               ; preds = %46
  %50 = load %struct.window_pane*, %struct.window_pane** %11, align 8
  %51 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.cmd_run_shell_data*, %struct.cmd_run_shell_data** %7, align 8
  %54 = getelementptr inbounds %struct.cmd_run_shell_data, %struct.cmd_run_shell_data* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  br label %58

55:                                               ; preds = %46, %2
  %56 = load %struct.cmd_run_shell_data*, %struct.cmd_run_shell_data** %7, align 8
  %57 = getelementptr inbounds %struct.cmd_run_shell_data, %struct.cmd_run_shell_data* %56, i32 0, i32 0
  store i32 -1, i32* %57, align 8
  br label %58

58:                                               ; preds = %55, %49
  %59 = load %struct.args*, %struct.args** %6, align 8
  %60 = call i64 @args_has(%struct.args* %59, i8 signext 98)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %58
  %63 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %64 = load %struct.cmd_run_shell_data*, %struct.cmd_run_shell_data** %7, align 8
  %65 = getelementptr inbounds %struct.cmd_run_shell_data, %struct.cmd_run_shell_data* %64, i32 0, i32 2
  store %struct.cmdq_item* %63, %struct.cmdq_item** %65, align 8
  br label %66

66:                                               ; preds = %62, %58
  %67 = load %struct.cmd_run_shell_data*, %struct.cmd_run_shell_data** %7, align 8
  %68 = getelementptr inbounds %struct.cmd_run_shell_data, %struct.cmd_run_shell_data* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.session*, %struct.session** %9, align 8
  %71 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %72 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.session*, %struct.session** %9, align 8
  %75 = call i32 @server_client_get_cwd(i32 %73, %struct.session* %74)
  %76 = load i32, i32* @cmd_run_shell_callback, align 4
  %77 = load i32, i32* @cmd_run_shell_free, align 4
  %78 = load %struct.cmd_run_shell_data*, %struct.cmd_run_shell_data** %7, align 8
  %79 = call i32* @job_run(i32 %69, %struct.session* %70, i32 %75, i32* null, i32 %76, i32 %77, %struct.cmd_run_shell_data* %78, i32 0)
  %80 = icmp eq i32* %79, null
  br i1 %80, label %81, label %90

81:                                               ; preds = %66
  %82 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %83 = load %struct.cmd_run_shell_data*, %struct.cmd_run_shell_data** %7, align 8
  %84 = getelementptr inbounds %struct.cmd_run_shell_data, %struct.cmd_run_shell_data* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @cmdq_error(%struct.cmdq_item* %82, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %85)
  %87 = load %struct.cmd_run_shell_data*, %struct.cmd_run_shell_data** %7, align 8
  %88 = call i32 @free(%struct.cmd_run_shell_data* %87)
  %89 = load i32, i32* @CMD_RETURN_ERROR, align 4
  store i32 %89, i32* %3, align 4
  br label %98

90:                                               ; preds = %66
  %91 = load %struct.args*, %struct.args** %6, align 8
  %92 = call i64 @args_has(%struct.args* %91, i8 signext 98)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %90
  %95 = load i32, i32* @CMD_RETURN_NORMAL, align 4
  store i32 %95, i32* %3, align 4
  br label %98

96:                                               ; preds = %90
  %97 = load i32, i32* @CMD_RETURN_WAIT, align 4
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %96, %94, %81
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local %struct.client* @cmd_find_client(%struct.cmdq_item*, i32*, i32) #1

declare dso_local %struct.cmd_run_shell_data* @xcalloc(i32, i32) #1

declare dso_local i32 @format_single(%struct.cmdq_item*, i32, %struct.client*, %struct.session*, %struct.winlink*, %struct.window_pane*) #1

declare dso_local i64 @args_has(%struct.args*, i8 signext) #1

declare dso_local i32* @job_run(i32, %struct.session*, i32, i32*, i32, i32, %struct.cmd_run_shell_data*, i32) #1

declare dso_local i32 @server_client_get_cwd(i32, %struct.session*) #1

declare dso_local i32 @cmdq_error(%struct.cmdq_item*, i8*, i32) #1

declare dso_local i32 @free(%struct.cmd_run_shell_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
