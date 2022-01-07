; ModuleID = '/home/carl/AnghaBench/tmux/extr_format.c_format_cb_cursor_character.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_format.c_format_cb_cursor_character.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.format_tree = type { %struct.window_pane* }
%struct.window_pane = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.format_entry = type { i32 }
%struct.grid_cell = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64 }

@GRID_FLAG_PADDING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%.*s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.format_tree*, %struct.format_entry*)* @format_cb_cursor_character to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @format_cb_cursor_character(%struct.format_tree* %0, %struct.format_entry* %1) #0 {
  %3 = alloca %struct.format_tree*, align 8
  %4 = alloca %struct.format_entry*, align 8
  %5 = alloca %struct.window_pane*, align 8
  %6 = alloca %struct.grid_cell, align 8
  store %struct.format_tree* %0, %struct.format_tree** %3, align 8
  store %struct.format_entry* %1, %struct.format_entry** %4, align 8
  %7 = load %struct.format_tree*, %struct.format_tree** %3, align 8
  %8 = getelementptr inbounds %struct.format_tree, %struct.format_tree* %7, i32 0, i32 0
  %9 = load %struct.window_pane*, %struct.window_pane** %8, align 8
  store %struct.window_pane* %9, %struct.window_pane** %5, align 8
  %10 = load %struct.window_pane*, %struct.window_pane** %5, align 8
  %11 = icmp eq %struct.window_pane* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %44

13:                                               ; preds = %2
  %14 = load %struct.window_pane*, %struct.window_pane** %5, align 8
  %15 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.window_pane*, %struct.window_pane** %5, align 8
  %19 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.window_pane*, %struct.window_pane** %5, align 8
  %23 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @grid_view_get_cell(i32 %17, i32 %21, i32 %25, %struct.grid_cell* %6)
  %27 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %6, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = xor i32 %28, -1
  %30 = load i32, i32* @GRID_FLAG_PADDING, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %13
  %34 = load %struct.format_entry*, %struct.format_entry** %4, align 8
  %35 = getelementptr inbounds %struct.format_entry, %struct.format_entry* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %6, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = trunc i64 %38 to i32
  %40 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %6, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @xasprintf(i32* %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %42)
  br label %44

44:                                               ; preds = %12, %33, %13
  ret void
}

declare dso_local i32 @grid_view_get_cell(i32, i32, i32, %struct.grid_cell*) #1

declare dso_local i32 @xasprintf(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
