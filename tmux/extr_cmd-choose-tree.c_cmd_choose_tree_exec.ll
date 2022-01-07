; ModuleID = '/home/carl/AnghaBench/tmux/extr_cmd-choose-tree.c_cmd_choose_tree_exec.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_cmd-choose-tree.c_cmd_choose_tree_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window_mode = type { i32 }
%struct.cmd = type { i32*, %struct.args* }
%struct.args = type { i32 }
%struct.cmdq_item = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.window_pane* }
%struct.window_pane = type { i32 }

@cmd_choose_buffer_entry = common dso_local global i32 0, align 4
@CMD_RETURN_NORMAL = common dso_local global i32 0, align 4
@window_buffer_mode = common dso_local global %struct.window_mode zeroinitializer, align 4
@cmd_choose_client_entry = common dso_local global i32 0, align 4
@window_client_mode = common dso_local global %struct.window_mode zeroinitializer, align 4
@window_tree_mode = common dso_local global %struct.window_mode zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmd*, %struct.cmdq_item*)* @cmd_choose_tree_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_choose_tree_exec(%struct.cmd* %0, %struct.cmdq_item* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cmd*, align 8
  %5 = alloca %struct.cmdq_item*, align 8
  %6 = alloca %struct.args*, align 8
  %7 = alloca %struct.window_pane*, align 8
  %8 = alloca %struct.window_mode*, align 8
  store %struct.cmd* %0, %struct.cmd** %4, align 8
  store %struct.cmdq_item* %1, %struct.cmdq_item** %5, align 8
  %9 = load %struct.cmd*, %struct.cmd** %4, align 8
  %10 = getelementptr inbounds %struct.cmd, %struct.cmd* %9, i32 0, i32 1
  %11 = load %struct.args*, %struct.args** %10, align 8
  store %struct.args* %11, %struct.args** %6, align 8
  %12 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %13 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.window_pane*, %struct.window_pane** %14, align 8
  store %struct.window_pane* %15, %struct.window_pane** %7, align 8
  %16 = load %struct.cmd*, %struct.cmd** %4, align 8
  %17 = getelementptr inbounds %struct.cmd, %struct.cmd* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, @cmd_choose_buffer_entry
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = call i32* @paste_get_top(i32* null)
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load i32, i32* @CMD_RETURN_NORMAL, align 4
  store i32 %24, i32* %3, align 4
  br label %47

25:                                               ; preds = %20
  store %struct.window_mode* @window_buffer_mode, %struct.window_mode** %8, align 8
  br label %39

26:                                               ; preds = %2
  %27 = load %struct.cmd*, %struct.cmd** %4, align 8
  %28 = getelementptr inbounds %struct.cmd, %struct.cmd* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = icmp eq i32* %29, @cmd_choose_client_entry
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = call i64 (...) @server_client_how_many()
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i32, i32* @CMD_RETURN_NORMAL, align 4
  store i32 %35, i32* %3, align 4
  br label %47

36:                                               ; preds = %31
  store %struct.window_mode* @window_client_mode, %struct.window_mode** %8, align 8
  br label %38

37:                                               ; preds = %26
  store %struct.window_mode* @window_tree_mode, %struct.window_mode** %8, align 8
  br label %38

38:                                               ; preds = %37, %36
  br label %39

39:                                               ; preds = %38, %25
  %40 = load %struct.window_pane*, %struct.window_pane** %7, align 8
  %41 = load %struct.window_mode*, %struct.window_mode** %8, align 8
  %42 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %43 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %42, i32 0, i32 0
  %44 = load %struct.args*, %struct.args** %6, align 8
  %45 = call i32 @window_pane_set_mode(%struct.window_pane* %40, %struct.window_mode* %41, %struct.TYPE_2__* %43, %struct.args* %44)
  %46 = load i32, i32* @CMD_RETURN_NORMAL, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %39, %34, %23
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32* @paste_get_top(i32*) #1

declare dso_local i64 @server_client_how_many(...) #1

declare dso_local i32 @window_pane_set_mode(%struct.window_pane*, %struct.window_mode*, %struct.TYPE_2__*, %struct.args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
