; ModuleID = '/home/carl/AnghaBench/tmux/extr_cmd-copy-mode.c_cmd_copy_mode_exec.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_cmd-copy-mode.c_cmd_copy_mode_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd = type { %struct.args*, i32* }
%struct.args = type { i32 }
%struct.cmdq_item = type { %struct.TYPE_2__, %struct.client*, %struct.cmdq_shared* }
%struct.TYPE_2__ = type { %struct.window_pane* }
%struct.window_pane = type { i32 }
%struct.client = type { %struct.session* }
%struct.session = type { i32 }
%struct.cmdq_shared = type { i32 }

@CMD_RETURN_NORMAL = common dso_local global i32 0, align 4
@cmd_clock_mode_entry = common dso_local global i32 0, align 4
@window_clock_mode = common dso_local global i32 0, align 4
@window_copy_mode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmd*, %struct.cmdq_item*)* @cmd_copy_mode_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_copy_mode_exec(%struct.cmd* %0, %struct.cmdq_item* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cmd*, align 8
  %5 = alloca %struct.cmdq_item*, align 8
  %6 = alloca %struct.args*, align 8
  %7 = alloca %struct.cmdq_shared*, align 8
  %8 = alloca %struct.client*, align 8
  %9 = alloca %struct.session*, align 8
  %10 = alloca %struct.window_pane*, align 8
  store %struct.cmd* %0, %struct.cmd** %4, align 8
  store %struct.cmdq_item* %1, %struct.cmdq_item** %5, align 8
  %11 = load %struct.cmd*, %struct.cmd** %4, align 8
  %12 = getelementptr inbounds %struct.cmd, %struct.cmd* %11, i32 0, i32 0
  %13 = load %struct.args*, %struct.args** %12, align 8
  store %struct.args* %13, %struct.args** %6, align 8
  %14 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %15 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %14, i32 0, i32 2
  %16 = load %struct.cmdq_shared*, %struct.cmdq_shared** %15, align 8
  store %struct.cmdq_shared* %16, %struct.cmdq_shared** %7, align 8
  %17 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %18 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %17, i32 0, i32 1
  %19 = load %struct.client*, %struct.client** %18, align 8
  store %struct.client* %19, %struct.client** %8, align 8
  %20 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %21 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.window_pane*, %struct.window_pane** %22, align 8
  store %struct.window_pane* %23, %struct.window_pane** %10, align 8
  %24 = load %struct.args*, %struct.args** %6, align 8
  %25 = call i64 @args_has(%struct.args* %24, i8 zeroext 77)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %46

27:                                               ; preds = %2
  %28 = load %struct.cmdq_shared*, %struct.cmdq_shared** %7, align 8
  %29 = getelementptr inbounds %struct.cmdq_shared, %struct.cmdq_shared* %28, i32 0, i32 0
  %30 = call %struct.window_pane* @cmd_mouse_pane(i32* %29, %struct.session** %9, i32* null)
  store %struct.window_pane* %30, %struct.window_pane** %10, align 8
  %31 = icmp eq %struct.window_pane* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* @CMD_RETURN_NORMAL, align 4
  store i32 %33, i32* %3, align 4
  br label %81

34:                                               ; preds = %27
  %35 = load %struct.client*, %struct.client** %8, align 8
  %36 = icmp eq %struct.client* %35, null
  br i1 %36, label %43, label %37

37:                                               ; preds = %34
  %38 = load %struct.client*, %struct.client** %8, align 8
  %39 = getelementptr inbounds %struct.client, %struct.client* %38, i32 0, i32 0
  %40 = load %struct.session*, %struct.session** %39, align 8
  %41 = load %struct.session*, %struct.session** %9, align 8
  %42 = icmp ne %struct.session* %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %37, %34
  %44 = load i32, i32* @CMD_RETURN_NORMAL, align 4
  store i32 %44, i32* %3, align 4
  br label %81

45:                                               ; preds = %37
  br label %46

46:                                               ; preds = %45, %2
  %47 = load %struct.cmd*, %struct.cmd** %4, align 8
  %48 = getelementptr inbounds %struct.cmd, %struct.cmd* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = icmp eq i32* %49, @cmd_clock_mode_entry
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load %struct.window_pane*, %struct.window_pane** %10, align 8
  %53 = call i32 @window_pane_set_mode(%struct.window_pane* %52, i32* @window_clock_mode, i32* null, %struct.args* null)
  %54 = load i32, i32* @CMD_RETURN_NORMAL, align 4
  store i32 %54, i32* %3, align 4
  br label %81

55:                                               ; preds = %46
  %56 = load %struct.window_pane*, %struct.window_pane** %10, align 8
  %57 = load %struct.args*, %struct.args** %6, align 8
  %58 = call i32 @window_pane_set_mode(%struct.window_pane* %56, i32* @window_copy_mode, i32* null, %struct.args* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %70, label %60

60:                                               ; preds = %55
  %61 = load %struct.args*, %struct.args** %6, align 8
  %62 = call i64 @args_has(%struct.args* %61, i8 zeroext 77)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %60
  %65 = load %struct.client*, %struct.client** %8, align 8
  %66 = load %struct.cmdq_shared*, %struct.cmdq_shared** %7, align 8
  %67 = getelementptr inbounds %struct.cmdq_shared, %struct.cmdq_shared* %66, i32 0, i32 0
  %68 = call i32 @window_copy_start_drag(%struct.client* %65, i32* %67)
  br label %69

69:                                               ; preds = %64, %60
  br label %70

70:                                               ; preds = %69, %55
  %71 = load %struct.cmd*, %struct.cmd** %4, align 8
  %72 = getelementptr inbounds %struct.cmd, %struct.cmd* %71, i32 0, i32 0
  %73 = load %struct.args*, %struct.args** %72, align 8
  %74 = call i64 @args_has(%struct.args* %73, i8 zeroext 117)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %70
  %77 = load %struct.window_pane*, %struct.window_pane** %10, align 8
  %78 = call i32 @window_copy_pageup(%struct.window_pane* %77, i32 0)
  br label %79

79:                                               ; preds = %76, %70
  %80 = load i32, i32* @CMD_RETURN_NORMAL, align 4
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %79, %51, %43, %32
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i64 @args_has(%struct.args*, i8 zeroext) #1

declare dso_local %struct.window_pane* @cmd_mouse_pane(i32*, %struct.session**, i32*) #1

declare dso_local i32 @window_pane_set_mode(%struct.window_pane*, i32*, i32*, %struct.args*) #1

declare dso_local i32 @window_copy_start_drag(%struct.client*, i32*) #1

declare dso_local i32 @window_copy_pageup(%struct.window_pane*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
