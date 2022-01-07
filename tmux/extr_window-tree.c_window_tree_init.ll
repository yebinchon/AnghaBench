; ModuleID = '/home/carl/AnghaBench/tmux/extr_window-tree.c_window_tree_init.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_window-tree.c_window_tree_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.screen = type { i32 }
%struct.window_mode_entry = type { %struct.window_tree_modedata*, %struct.window_pane* }
%struct.window_tree_modedata = type { i32, i32, i32, i32, i8*, i8*, i32, %struct.window_pane* }
%struct.window_pane = type { i32 }
%struct.cmd_find_state = type { i32 }
%struct.args = type { i64, i32* }

@WINDOW_TREE_SESSION = common dso_local global i32 0, align 4
@WINDOW_TREE_WINDOW = common dso_local global i32 0, align 4
@WINDOW_TREE_PANE = common dso_local global i32 0, align 4
@WINDOW_TREE_DEFAULT_FORMAT = common dso_local global i32 0, align 4
@WINDOW_TREE_DEFAULT_COMMAND = common dso_local global i32 0, align 4
@window_tree_build = common dso_local global i32 0, align 4
@window_tree_draw = common dso_local global i32 0, align 4
@window_tree_search = common dso_local global i32 0, align 4
@window_tree_menu = common dso_local global i32 0, align 4
@window_tree_menu_items = common dso_local global i32 0, align 4
@window_tree_sort_list = common dso_local global i32 0, align 4
@WINDOW_TREE_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.screen* (%struct.window_mode_entry*, %struct.cmd_find_state*, %struct.args*)* @window_tree_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.screen* @window_tree_init(%struct.window_mode_entry* %0, %struct.cmd_find_state* %1, %struct.args* %2) #0 {
  %4 = alloca %struct.window_mode_entry*, align 8
  %5 = alloca %struct.cmd_find_state*, align 8
  %6 = alloca %struct.args*, align 8
  %7 = alloca %struct.window_pane*, align 8
  %8 = alloca %struct.window_tree_modedata*, align 8
  %9 = alloca %struct.screen*, align 8
  store %struct.window_mode_entry* %0, %struct.window_mode_entry** %4, align 8
  store %struct.cmd_find_state* %1, %struct.cmd_find_state** %5, align 8
  store %struct.args* %2, %struct.args** %6, align 8
  %10 = load %struct.window_mode_entry*, %struct.window_mode_entry** %4, align 8
  %11 = getelementptr inbounds %struct.window_mode_entry, %struct.window_mode_entry* %10, i32 0, i32 1
  %12 = load %struct.window_pane*, %struct.window_pane** %11, align 8
  store %struct.window_pane* %12, %struct.window_pane** %7, align 8
  %13 = call %struct.window_tree_modedata* @xcalloc(i32 1, i32 48)
  store %struct.window_tree_modedata* %13, %struct.window_tree_modedata** %8, align 8
  %14 = load %struct.window_mode_entry*, %struct.window_mode_entry** %4, align 8
  %15 = getelementptr inbounds %struct.window_mode_entry, %struct.window_mode_entry* %14, i32 0, i32 0
  store %struct.window_tree_modedata* %13, %struct.window_tree_modedata** %15, align 8
  %16 = load %struct.window_pane*, %struct.window_pane** %7, align 8
  %17 = load %struct.window_tree_modedata*, %struct.window_tree_modedata** %8, align 8
  %18 = getelementptr inbounds %struct.window_tree_modedata, %struct.window_tree_modedata* %17, i32 0, i32 7
  store %struct.window_pane* %16, %struct.window_pane** %18, align 8
  %19 = load %struct.window_tree_modedata*, %struct.window_tree_modedata** %8, align 8
  %20 = getelementptr inbounds %struct.window_tree_modedata, %struct.window_tree_modedata* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = load %struct.args*, %struct.args** %6, align 8
  %22 = call i64 @args_has(%struct.args* %21, i8 signext 115)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %3
  %25 = load i32, i32* @WINDOW_TREE_SESSION, align 4
  %26 = load %struct.window_tree_modedata*, %struct.window_tree_modedata** %8, align 8
  %27 = getelementptr inbounds %struct.window_tree_modedata, %struct.window_tree_modedata* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  br label %41

28:                                               ; preds = %3
  %29 = load %struct.args*, %struct.args** %6, align 8
  %30 = call i64 @args_has(%struct.args* %29, i8 signext 119)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i32, i32* @WINDOW_TREE_WINDOW, align 4
  %34 = load %struct.window_tree_modedata*, %struct.window_tree_modedata** %8, align 8
  %35 = getelementptr inbounds %struct.window_tree_modedata, %struct.window_tree_modedata* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  br label %40

36:                                               ; preds = %28
  %37 = load i32, i32* @WINDOW_TREE_PANE, align 4
  %38 = load %struct.window_tree_modedata*, %struct.window_tree_modedata** %8, align 8
  %39 = getelementptr inbounds %struct.window_tree_modedata, %struct.window_tree_modedata* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  br label %40

40:                                               ; preds = %36, %32
  br label %41

41:                                               ; preds = %40, %24
  %42 = load %struct.window_tree_modedata*, %struct.window_tree_modedata** %8, align 8
  %43 = getelementptr inbounds %struct.window_tree_modedata, %struct.window_tree_modedata* %42, i32 0, i32 6
  %44 = load %struct.cmd_find_state*, %struct.cmd_find_state** %5, align 8
  %45 = call i32 @memcpy(i32* %43, %struct.cmd_find_state* %44, i32 4)
  %46 = load %struct.args*, %struct.args** %6, align 8
  %47 = icmp eq %struct.args* %46, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %41
  %49 = load %struct.args*, %struct.args** %6, align 8
  %50 = call i64 @args_has(%struct.args* %49, i8 signext 70)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %48, %41
  %53 = load i32, i32* @WINDOW_TREE_DEFAULT_FORMAT, align 4
  %54 = call i8* @xstrdup(i32 %53)
  %55 = load %struct.window_tree_modedata*, %struct.window_tree_modedata** %8, align 8
  %56 = getelementptr inbounds %struct.window_tree_modedata, %struct.window_tree_modedata* %55, i32 0, i32 5
  store i8* %54, i8** %56, align 8
  br label %63

57:                                               ; preds = %48
  %58 = load %struct.args*, %struct.args** %6, align 8
  %59 = call i32 @args_get(%struct.args* %58, float 7.000000e+01)
  %60 = call i8* @xstrdup(i32 %59)
  %61 = load %struct.window_tree_modedata*, %struct.window_tree_modedata** %8, align 8
  %62 = getelementptr inbounds %struct.window_tree_modedata, %struct.window_tree_modedata* %61, i32 0, i32 5
  store i8* %60, i8** %62, align 8
  br label %63

63:                                               ; preds = %57, %52
  %64 = load %struct.args*, %struct.args** %6, align 8
  %65 = icmp eq %struct.args* %64, null
  br i1 %65, label %71, label %66

66:                                               ; preds = %63
  %67 = load %struct.args*, %struct.args** %6, align 8
  %68 = getelementptr inbounds %struct.args, %struct.args* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %66, %63
  %72 = load i32, i32* @WINDOW_TREE_DEFAULT_COMMAND, align 4
  %73 = call i8* @xstrdup(i32 %72)
  %74 = load %struct.window_tree_modedata*, %struct.window_tree_modedata** %8, align 8
  %75 = getelementptr inbounds %struct.window_tree_modedata, %struct.window_tree_modedata* %74, i32 0, i32 4
  store i8* %73, i8** %75, align 8
  br label %85

76:                                               ; preds = %66
  %77 = load %struct.args*, %struct.args** %6, align 8
  %78 = getelementptr inbounds %struct.args, %struct.args* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = load i32, i32* %80, align 4
  %82 = call i8* @xstrdup(i32 %81)
  %83 = load %struct.window_tree_modedata*, %struct.window_tree_modedata** %8, align 8
  %84 = getelementptr inbounds %struct.window_tree_modedata, %struct.window_tree_modedata* %83, i32 0, i32 4
  store i8* %82, i8** %84, align 8
  br label %85

85:                                               ; preds = %76, %71
  %86 = load %struct.args*, %struct.args** %6, align 8
  %87 = call i64 @args_has(%struct.args* %86, i8 signext 71)
  %88 = icmp ne i64 %87, 0
  %89 = xor i1 %88, true
  %90 = zext i1 %89 to i32
  %91 = load %struct.window_tree_modedata*, %struct.window_tree_modedata** %8, align 8
  %92 = getelementptr inbounds %struct.window_tree_modedata, %struct.window_tree_modedata* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 4
  %93 = load %struct.window_pane*, %struct.window_pane** %7, align 8
  %94 = load %struct.args*, %struct.args** %6, align 8
  %95 = load i32, i32* @window_tree_build, align 4
  %96 = load i32, i32* @window_tree_draw, align 4
  %97 = load i32, i32* @window_tree_search, align 4
  %98 = load i32, i32* @window_tree_menu, align 4
  %99 = load %struct.window_tree_modedata*, %struct.window_tree_modedata** %8, align 8
  %100 = load i32, i32* @window_tree_menu_items, align 4
  %101 = load i32, i32* @window_tree_sort_list, align 4
  %102 = load i32, i32* @window_tree_sort_list, align 4
  %103 = call i32 @nitems(i32 %102)
  %104 = call i32 @mode_tree_start(%struct.window_pane* %93, %struct.args* %94, i32 %95, i32 %96, i32 %97, i32 %98, %struct.window_tree_modedata* %99, i32 %100, i32 %101, i32 %103, %struct.screen** %9)
  %105 = load %struct.window_tree_modedata*, %struct.window_tree_modedata** %8, align 8
  %106 = getelementptr inbounds %struct.window_tree_modedata, %struct.window_tree_modedata* %105, i32 0, i32 3
  store i32 %104, i32* %106, align 4
  %107 = load %struct.window_tree_modedata*, %struct.window_tree_modedata** %8, align 8
  %108 = getelementptr inbounds %struct.window_tree_modedata, %struct.window_tree_modedata* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.args*, %struct.args** %6, align 8
  %111 = call i32 @mode_tree_zoom(i32 %109, %struct.args* %110)
  %112 = load %struct.window_tree_modedata*, %struct.window_tree_modedata** %8, align 8
  %113 = getelementptr inbounds %struct.window_tree_modedata, %struct.window_tree_modedata* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @mode_tree_build(i32 %114)
  %116 = load %struct.window_tree_modedata*, %struct.window_tree_modedata** %8, align 8
  %117 = getelementptr inbounds %struct.window_tree_modedata, %struct.window_tree_modedata* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @mode_tree_draw(i32 %118)
  %120 = load i32, i32* @WINDOW_TREE_NONE, align 4
  %121 = load %struct.window_tree_modedata*, %struct.window_tree_modedata** %8, align 8
  %122 = getelementptr inbounds %struct.window_tree_modedata, %struct.window_tree_modedata* %121, i32 0, i32 2
  store i32 %120, i32* %122, align 8
  %123 = load %struct.screen*, %struct.screen** %9, align 8
  ret %struct.screen* %123
}

declare dso_local %struct.window_tree_modedata* @xcalloc(i32, i32) #1

declare dso_local i64 @args_has(%struct.args*, i8 signext) #1

declare dso_local i32 @memcpy(i32*, %struct.cmd_find_state*, i32) #1

declare dso_local i8* @xstrdup(i32) #1

declare dso_local i32 @args_get(%struct.args*, float) #1

declare dso_local i32 @mode_tree_start(%struct.window_pane*, %struct.args*, i32, i32, i32, i32, %struct.window_tree_modedata*, i32, i32, i32, %struct.screen**) #1

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
