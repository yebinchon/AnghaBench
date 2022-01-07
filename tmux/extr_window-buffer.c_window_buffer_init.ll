; ModuleID = '/home/carl/AnghaBench/tmux/extr_window-buffer.c_window_buffer_init.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_window-buffer.c_window_buffer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.screen = type { i32 }
%struct.window_mode_entry = type { %struct.window_buffer_modedata*, %struct.window_pane* }
%struct.window_buffer_modedata = type { i32, i8*, i8*, i32, %struct.window_pane* }
%struct.window_pane = type { i32 }
%struct.cmd_find_state = type { i32 }
%struct.args = type { i64, i32* }

@WINDOW_BUFFER_DEFAULT_FORMAT = common dso_local global i32 0, align 4
@WINDOW_BUFFER_DEFAULT_COMMAND = common dso_local global i32 0, align 4
@window_buffer_build = common dso_local global i32 0, align 4
@window_buffer_draw = common dso_local global i32 0, align 4
@window_buffer_search = common dso_local global i32 0, align 4
@window_buffer_menu = common dso_local global i32 0, align 4
@window_buffer_menu_items = common dso_local global i32 0, align 4
@window_buffer_sort_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.screen* (%struct.window_mode_entry*, %struct.cmd_find_state*, %struct.args*)* @window_buffer_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.screen* @window_buffer_init(%struct.window_mode_entry* %0, %struct.cmd_find_state* %1, %struct.args* %2) #0 {
  %4 = alloca %struct.window_mode_entry*, align 8
  %5 = alloca %struct.cmd_find_state*, align 8
  %6 = alloca %struct.args*, align 8
  %7 = alloca %struct.window_pane*, align 8
  %8 = alloca %struct.window_buffer_modedata*, align 8
  %9 = alloca %struct.screen*, align 8
  store %struct.window_mode_entry* %0, %struct.window_mode_entry** %4, align 8
  store %struct.cmd_find_state* %1, %struct.cmd_find_state** %5, align 8
  store %struct.args* %2, %struct.args** %6, align 8
  %10 = load %struct.window_mode_entry*, %struct.window_mode_entry** %4, align 8
  %11 = getelementptr inbounds %struct.window_mode_entry, %struct.window_mode_entry* %10, i32 0, i32 1
  %12 = load %struct.window_pane*, %struct.window_pane** %11, align 8
  store %struct.window_pane* %12, %struct.window_pane** %7, align 8
  %13 = call %struct.window_buffer_modedata* @xcalloc(i32 1, i32 40)
  store %struct.window_buffer_modedata* %13, %struct.window_buffer_modedata** %8, align 8
  %14 = load %struct.window_mode_entry*, %struct.window_mode_entry** %4, align 8
  %15 = getelementptr inbounds %struct.window_mode_entry, %struct.window_mode_entry* %14, i32 0, i32 0
  store %struct.window_buffer_modedata* %13, %struct.window_buffer_modedata** %15, align 8
  %16 = load %struct.window_pane*, %struct.window_pane** %7, align 8
  %17 = load %struct.window_buffer_modedata*, %struct.window_buffer_modedata** %8, align 8
  %18 = getelementptr inbounds %struct.window_buffer_modedata, %struct.window_buffer_modedata* %17, i32 0, i32 4
  store %struct.window_pane* %16, %struct.window_pane** %18, align 8
  %19 = load %struct.window_buffer_modedata*, %struct.window_buffer_modedata** %8, align 8
  %20 = getelementptr inbounds %struct.window_buffer_modedata, %struct.window_buffer_modedata* %19, i32 0, i32 3
  %21 = load %struct.cmd_find_state*, %struct.cmd_find_state** %5, align 8
  %22 = call i32 @cmd_find_copy_state(i32* %20, %struct.cmd_find_state* %21)
  %23 = load %struct.args*, %struct.args** %6, align 8
  %24 = icmp eq %struct.args* %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %3
  %26 = load %struct.args*, %struct.args** %6, align 8
  %27 = call i32 @args_has(%struct.args* %26, float 7.000000e+01)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %25, %3
  %30 = load i32, i32* @WINDOW_BUFFER_DEFAULT_FORMAT, align 4
  %31 = call i8* @xstrdup(i32 %30)
  %32 = load %struct.window_buffer_modedata*, %struct.window_buffer_modedata** %8, align 8
  %33 = getelementptr inbounds %struct.window_buffer_modedata, %struct.window_buffer_modedata* %32, i32 0, i32 2
  store i8* %31, i8** %33, align 8
  br label %40

34:                                               ; preds = %25
  %35 = load %struct.args*, %struct.args** %6, align 8
  %36 = call i32 @args_get(%struct.args* %35, float 7.000000e+01)
  %37 = call i8* @xstrdup(i32 %36)
  %38 = load %struct.window_buffer_modedata*, %struct.window_buffer_modedata** %8, align 8
  %39 = getelementptr inbounds %struct.window_buffer_modedata, %struct.window_buffer_modedata* %38, i32 0, i32 2
  store i8* %37, i8** %39, align 8
  br label %40

40:                                               ; preds = %34, %29
  %41 = load %struct.args*, %struct.args** %6, align 8
  %42 = icmp eq %struct.args* %41, null
  br i1 %42, label %48, label %43

43:                                               ; preds = %40
  %44 = load %struct.args*, %struct.args** %6, align 8
  %45 = getelementptr inbounds %struct.args, %struct.args* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43, %40
  %49 = load i32, i32* @WINDOW_BUFFER_DEFAULT_COMMAND, align 4
  %50 = call i8* @xstrdup(i32 %49)
  %51 = load %struct.window_buffer_modedata*, %struct.window_buffer_modedata** %8, align 8
  %52 = getelementptr inbounds %struct.window_buffer_modedata, %struct.window_buffer_modedata* %51, i32 0, i32 1
  store i8* %50, i8** %52, align 8
  br label %62

53:                                               ; preds = %43
  %54 = load %struct.args*, %struct.args** %6, align 8
  %55 = getelementptr inbounds %struct.args, %struct.args* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = call i8* @xstrdup(i32 %58)
  %60 = load %struct.window_buffer_modedata*, %struct.window_buffer_modedata** %8, align 8
  %61 = getelementptr inbounds %struct.window_buffer_modedata, %struct.window_buffer_modedata* %60, i32 0, i32 1
  store i8* %59, i8** %61, align 8
  br label %62

62:                                               ; preds = %53, %48
  %63 = load %struct.window_pane*, %struct.window_pane** %7, align 8
  %64 = load %struct.args*, %struct.args** %6, align 8
  %65 = load i32, i32* @window_buffer_build, align 4
  %66 = load i32, i32* @window_buffer_draw, align 4
  %67 = load i32, i32* @window_buffer_search, align 4
  %68 = load i32, i32* @window_buffer_menu, align 4
  %69 = load %struct.window_buffer_modedata*, %struct.window_buffer_modedata** %8, align 8
  %70 = load i32, i32* @window_buffer_menu_items, align 4
  %71 = load i32, i32* @window_buffer_sort_list, align 4
  %72 = load i32, i32* @window_buffer_sort_list, align 4
  %73 = call i32 @nitems(i32 %72)
  %74 = call i32 @mode_tree_start(%struct.window_pane* %63, %struct.args* %64, i32 %65, i32 %66, i32 %67, i32 %68, %struct.window_buffer_modedata* %69, i32 %70, i32 %71, i32 %73, %struct.screen** %9)
  %75 = load %struct.window_buffer_modedata*, %struct.window_buffer_modedata** %8, align 8
  %76 = getelementptr inbounds %struct.window_buffer_modedata, %struct.window_buffer_modedata* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load %struct.window_buffer_modedata*, %struct.window_buffer_modedata** %8, align 8
  %78 = getelementptr inbounds %struct.window_buffer_modedata, %struct.window_buffer_modedata* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.args*, %struct.args** %6, align 8
  %81 = call i32 @mode_tree_zoom(i32 %79, %struct.args* %80)
  %82 = load %struct.window_buffer_modedata*, %struct.window_buffer_modedata** %8, align 8
  %83 = getelementptr inbounds %struct.window_buffer_modedata, %struct.window_buffer_modedata* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @mode_tree_build(i32 %84)
  %86 = load %struct.window_buffer_modedata*, %struct.window_buffer_modedata** %8, align 8
  %87 = getelementptr inbounds %struct.window_buffer_modedata, %struct.window_buffer_modedata* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @mode_tree_draw(i32 %88)
  %90 = load %struct.screen*, %struct.screen** %9, align 8
  ret %struct.screen* %90
}

declare dso_local %struct.window_buffer_modedata* @xcalloc(i32, i32) #1

declare dso_local i32 @cmd_find_copy_state(i32*, %struct.cmd_find_state*) #1

declare dso_local i32 @args_has(%struct.args*, float) #1

declare dso_local i8* @xstrdup(i32) #1

declare dso_local i32 @args_get(%struct.args*, float) #1

declare dso_local i32 @mode_tree_start(%struct.window_pane*, %struct.args*, i32, i32, i32, i32, %struct.window_buffer_modedata*, i32, i32, i32, %struct.screen**) #1

declare dso_local i32 @nitems(i32) #1

declare dso_local i32 @mode_tree_zoom(i32, %struct.args*) #1

declare dso_local i32 @mode_tree_build(i32) #1

declare dso_local i32 @mode_tree_draw(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
