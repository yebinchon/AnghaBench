; ModuleID = '/home/carl/AnghaBench/tmux/extr_cmd-respawn-pane.c_cmd_respawn_pane_exec.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_cmd-respawn-pane.c_cmd_respawn_pane_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd = type { %struct.args* }
%struct.args = type { i32, i32 }
%struct.cmdq_item = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.window_pane*, %struct.winlink*, %struct.session* }
%struct.window_pane = type { i32, i32 }
%struct.winlink = type { i32 }
%struct.session = type { i32 }
%struct.spawn_context = type { i32, i32, i32, i32, i32, i32, i32*, i32*, %struct.window_pane*, %struct.winlink*, %struct.session*, %struct.cmdq_item* }
%struct.args_value = type { i32 }

@SPAWN_RESPAWN = common dso_local global i32 0, align 4
@SPAWN_KILL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"respawn pane failed: %s\00", align 1
@CMD_RETURN_ERROR = common dso_local global i32 0, align 4
@PANE_REDRAW = common dso_local global i32 0, align 4
@CMD_RETURN_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmd*, %struct.cmdq_item*)* @cmd_respawn_pane_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_respawn_pane_exec(%struct.cmd* %0, %struct.cmdq_item* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cmd*, align 8
  %5 = alloca %struct.cmdq_item*, align 8
  %6 = alloca %struct.args*, align 8
  %7 = alloca %struct.spawn_context, align 8
  %8 = alloca %struct.session*, align 8
  %9 = alloca %struct.winlink*, align 8
  %10 = alloca %struct.window_pane*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.args_value*, align 8
  store %struct.cmd* %0, %struct.cmd** %4, align 8
  store %struct.cmdq_item* %1, %struct.cmdq_item** %5, align 8
  %14 = load %struct.cmd*, %struct.cmd** %4, align 8
  %15 = getelementptr inbounds %struct.cmd, %struct.cmd* %14, i32 0, i32 0
  %16 = load %struct.args*, %struct.args** %15, align 8
  store %struct.args* %16, %struct.args** %6, align 8
  %17 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %18 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  %20 = load %struct.session*, %struct.session** %19, align 8
  store %struct.session* %20, %struct.session** %8, align 8
  %21 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %22 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load %struct.winlink*, %struct.winlink** %23, align 8
  store %struct.winlink* %24, %struct.winlink** %9, align 8
  %25 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %26 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load %struct.window_pane*, %struct.window_pane** %27, align 8
  store %struct.window_pane* %28, %struct.window_pane** %10, align 8
  store i8* null, i8** %11, align 8
  %29 = call i32 @memset(%struct.spawn_context* %7, i32 0, i32 72)
  %30 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %31 = getelementptr inbounds %struct.spawn_context, %struct.spawn_context* %7, i32 0, i32 11
  store %struct.cmdq_item* %30, %struct.cmdq_item** %31, align 8
  %32 = load %struct.session*, %struct.session** %8, align 8
  %33 = getelementptr inbounds %struct.spawn_context, %struct.spawn_context* %7, i32 0, i32 10
  store %struct.session* %32, %struct.session** %33, align 8
  %34 = load %struct.winlink*, %struct.winlink** %9, align 8
  %35 = getelementptr inbounds %struct.spawn_context, %struct.spawn_context* %7, i32 0, i32 9
  store %struct.winlink* %34, %struct.winlink** %35, align 8
  %36 = load %struct.window_pane*, %struct.window_pane** %10, align 8
  %37 = getelementptr inbounds %struct.spawn_context, %struct.spawn_context* %7, i32 0, i32 8
  store %struct.window_pane* %36, %struct.window_pane** %37, align 8
  %38 = getelementptr inbounds %struct.spawn_context, %struct.spawn_context* %7, i32 0, i32 7
  store i32* null, i32** %38, align 8
  %39 = getelementptr inbounds %struct.spawn_context, %struct.spawn_context* %7, i32 0, i32 6
  store i32* null, i32** %39, align 8
  %40 = load %struct.args*, %struct.args** %6, align 8
  %41 = getelementptr inbounds %struct.args, %struct.args* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.spawn_context, %struct.spawn_context* %7, i32 0, i32 5
  store i32 %42, i32* %43, align 4
  %44 = load %struct.args*, %struct.args** %6, align 8
  %45 = getelementptr inbounds %struct.args, %struct.args* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.spawn_context, %struct.spawn_context* %7, i32 0, i32 4
  store i32 %46, i32* %47, align 8
  %48 = call i32 (...) @environ_create()
  %49 = getelementptr inbounds %struct.spawn_context, %struct.spawn_context* %7, i32 0, i32 1
  store i32 %48, i32* %49, align 4
  %50 = load %struct.args*, %struct.args** %6, align 8
  %51 = call i8* @args_first_value(%struct.args* %50, i8 signext 101, %struct.args_value** %13)
  store i8* %51, i8** %12, align 8
  br label %52

52:                                               ; preds = %55, %2
  %53 = load i8*, i8** %12, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %61

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.spawn_context, %struct.spawn_context* %7, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i8*, i8** %12, align 8
  %59 = call i32 @environ_put(i32 %57, i8* %58)
  %60 = call i8* @args_next_value(%struct.args_value** %13)
  store i8* %60, i8** %12, align 8
  br label %52

61:                                               ; preds = %52
  %62 = getelementptr inbounds %struct.spawn_context, %struct.spawn_context* %7, i32 0, i32 0
  store i32 -1, i32* %62, align 8
  %63 = load %struct.args*, %struct.args** %6, align 8
  %64 = call i32 @args_get(%struct.args* %63, i8 signext 99)
  %65 = getelementptr inbounds %struct.spawn_context, %struct.spawn_context* %7, i32 0, i32 3
  store i32 %64, i32* %65, align 4
  %66 = load i32, i32* @SPAWN_RESPAWN, align 4
  %67 = getelementptr inbounds %struct.spawn_context, %struct.spawn_context* %7, i32 0, i32 2
  store i32 %66, i32* %67, align 8
  %68 = load %struct.args*, %struct.args** %6, align 8
  %69 = call i64 @args_has(%struct.args* %68, i8 signext 107)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %61
  %72 = load i32, i32* @SPAWN_KILL, align 4
  %73 = getelementptr inbounds %struct.spawn_context, %struct.spawn_context* %7, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = or i32 %74, %72
  store i32 %75, i32* %73, align 8
  br label %76

76:                                               ; preds = %71, %61
  %77 = call i32* @spawn_pane(%struct.spawn_context* %7, i8** %11)
  %78 = icmp eq i32* %77, null
  br i1 %78, label %79, label %86

79:                                               ; preds = %76
  %80 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %81 = load i8*, i8** %11, align 8
  %82 = call i32 @cmdq_error(%struct.cmdq_item* %80, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %81)
  %83 = load i8*, i8** %11, align 8
  %84 = call i32 @free(i8* %83)
  %85 = load i32, i32* @CMD_RETURN_ERROR, align 4
  store i32 %85, i32* %3, align 4
  br label %100

86:                                               ; preds = %76
  %87 = load i32, i32* @PANE_REDRAW, align 4
  %88 = load %struct.window_pane*, %struct.window_pane** %10, align 8
  %89 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 4
  %92 = load %struct.window_pane*, %struct.window_pane** %10, align 8
  %93 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @server_status_window(i32 %94)
  %96 = getelementptr inbounds %struct.spawn_context, %struct.spawn_context* %7, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @environ_free(i32 %97)
  %99 = load i32, i32* @CMD_RETURN_NORMAL, align 4
  store i32 %99, i32* %3, align 4
  br label %100

100:                                              ; preds = %86, %79
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i32 @memset(%struct.spawn_context*, i32, i32) #1

declare dso_local i32 @environ_create(...) #1

declare dso_local i8* @args_first_value(%struct.args*, i8 signext, %struct.args_value**) #1

declare dso_local i32 @environ_put(i32, i8*) #1

declare dso_local i8* @args_next_value(%struct.args_value**) #1

declare dso_local i32 @args_get(%struct.args*, i8 signext) #1

declare dso_local i64 @args_has(%struct.args*, i8 signext) #1

declare dso_local i32* @spawn_pane(%struct.spawn_context*, i8**) #1

declare dso_local i32 @cmdq_error(%struct.cmdq_item*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @server_status_window(i32) #1

declare dso_local i32 @environ_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
