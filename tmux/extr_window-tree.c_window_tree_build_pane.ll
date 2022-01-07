; ModuleID = '/home/carl/AnghaBench/tmux/extr_window-tree.c_window_tree_build_pane.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_window-tree.c_window_tree_build_pane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.session = type { i32 }
%struct.winlink = type { i32 }
%struct.window_pane = type { i32 }
%struct.mode_tree_item = type { i32 }
%struct.window_tree_modedata = type { i32, i32 }
%struct.window_tree_itemdata = type { i32, i32, i32, i32 }

@WINDOW_TREE_PANE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.session*, %struct.winlink*, %struct.window_pane*, i8*, %struct.mode_tree_item*)* @window_tree_build_pane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @window_tree_build_pane(%struct.session* %0, %struct.winlink* %1, %struct.window_pane* %2, i8* %3, %struct.mode_tree_item* %4) #0 {
  %6 = alloca %struct.session*, align 8
  %7 = alloca %struct.winlink*, align 8
  %8 = alloca %struct.window_pane*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.mode_tree_item*, align 8
  %11 = alloca %struct.window_tree_modedata*, align 8
  %12 = alloca %struct.window_tree_itemdata*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.session* %0, %struct.session** %6, align 8
  store %struct.winlink* %1, %struct.winlink** %7, align 8
  store %struct.window_pane* %2, %struct.window_pane** %8, align 8
  store i8* %3, i8** %9, align 8
  store %struct.mode_tree_item* %4, %struct.mode_tree_item** %10, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = bitcast i8* %16 to %struct.window_tree_modedata*
  store %struct.window_tree_modedata* %17, %struct.window_tree_modedata** %11, align 8
  %18 = load %struct.window_pane*, %struct.window_pane** %8, align 8
  %19 = call i32 @window_pane_index(%struct.window_pane* %18, i32* %15)
  %20 = load %struct.window_tree_modedata*, %struct.window_tree_modedata** %11, align 8
  %21 = call %struct.window_tree_itemdata* @window_tree_add_item(%struct.window_tree_modedata* %20)
  store %struct.window_tree_itemdata* %21, %struct.window_tree_itemdata** %12, align 8
  %22 = load i32, i32* @WINDOW_TREE_PANE, align 4
  %23 = load %struct.window_tree_itemdata*, %struct.window_tree_itemdata** %12, align 8
  %24 = getelementptr inbounds %struct.window_tree_itemdata, %struct.window_tree_itemdata* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 4
  %25 = load %struct.session*, %struct.session** %6, align 8
  %26 = getelementptr inbounds %struct.session, %struct.session* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.window_tree_itemdata*, %struct.window_tree_itemdata** %12, align 8
  %29 = getelementptr inbounds %struct.window_tree_itemdata, %struct.window_tree_itemdata* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  %30 = load %struct.winlink*, %struct.winlink** %7, align 8
  %31 = getelementptr inbounds %struct.winlink, %struct.winlink* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.window_tree_itemdata*, %struct.window_tree_itemdata** %12, align 8
  %34 = getelementptr inbounds %struct.window_tree_itemdata, %struct.window_tree_itemdata* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.window_pane*, %struct.window_pane** %8, align 8
  %36 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.window_tree_itemdata*, %struct.window_tree_itemdata** %12, align 8
  %39 = getelementptr inbounds %struct.window_tree_itemdata, %struct.window_tree_itemdata* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load %struct.window_tree_modedata*, %struct.window_tree_modedata** %11, align 8
  %41 = getelementptr inbounds %struct.window_tree_modedata, %struct.window_tree_modedata* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.session*, %struct.session** %6, align 8
  %44 = load %struct.winlink*, %struct.winlink** %7, align 8
  %45 = load %struct.window_pane*, %struct.window_pane** %8, align 8
  %46 = call i8* @format_single(i32* null, i32 %42, i32* null, %struct.session* %43, %struct.winlink* %44, %struct.window_pane* %45)
  store i8* %46, i8** %14, align 8
  %47 = load i32, i32* %15, align 4
  %48 = call i32 @xasprintf(i8** %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load %struct.window_tree_modedata*, %struct.window_tree_modedata** %11, align 8
  %50 = getelementptr inbounds %struct.window_tree_modedata, %struct.window_tree_modedata* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.mode_tree_item*, %struct.mode_tree_item** %10, align 8
  %53 = load %struct.window_tree_itemdata*, %struct.window_tree_itemdata** %12, align 8
  %54 = load %struct.window_pane*, %struct.window_pane** %8, align 8
  %55 = ptrtoint %struct.window_pane* %54 to i32
  %56 = load i8*, i8** %13, align 8
  %57 = load i8*, i8** %14, align 8
  %58 = call i32 @mode_tree_add(i32 %51, %struct.mode_tree_item* %52, %struct.window_tree_itemdata* %53, i32 %55, i8* %56, i8* %57, i32 -1)
  %59 = load i8*, i8** %14, align 8
  %60 = call i32 @free(i8* %59)
  %61 = load i8*, i8** %13, align 8
  %62 = call i32 @free(i8* %61)
  ret void
}

declare dso_local i32 @window_pane_index(%struct.window_pane*, i32*) #1

declare dso_local %struct.window_tree_itemdata* @window_tree_add_item(%struct.window_tree_modedata*) #1

declare dso_local i8* @format_single(i32*, i32, i32*, %struct.session*, %struct.winlink*, %struct.window_pane*) #1

declare dso_local i32 @xasprintf(i8**, i8*, i32) #1

declare dso_local i32 @mode_tree_add(i32, %struct.mode_tree_item*, %struct.window_tree_itemdata*, i32, i8*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
