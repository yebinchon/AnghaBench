; ModuleID = '/home/carl/AnghaBench/tmux/extr_window.c_window_pane_start_input.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_window.c_window_pane_start_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window_pane = type { i32, i32 }
%struct.cmdq_item = type { %struct.client* }
%struct.client = type { i32 }
%struct.window_pane_input_data = type { i32, %struct.cmdq_item* }

@PANE_EMPTY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"pane is not empty\00", align 1
@window_pane_input_callback = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @window_pane_start_input(%struct.window_pane* %0, %struct.cmdq_item* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.window_pane*, align 8
  %6 = alloca %struct.cmdq_item*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.client*, align 8
  %9 = alloca %struct.window_pane_input_data*, align 8
  store %struct.window_pane* %0, %struct.window_pane** %5, align 8
  store %struct.cmdq_item* %1, %struct.cmdq_item** %6, align 8
  store i8** %2, i8*** %7, align 8
  %10 = load %struct.cmdq_item*, %struct.cmdq_item** %6, align 8
  %11 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %10, i32 0, i32 0
  %12 = load %struct.client*, %struct.client** %11, align 8
  store %struct.client* %12, %struct.client** %8, align 8
  %13 = load %struct.window_pane*, %struct.window_pane** %5, align 8
  %14 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = xor i32 %15, -1
  %17 = load i32, i32* @PANE_EMPTY, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = call i8* @xstrdup(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %22 = load i8**, i8*** %7, align 8
  store i8* %21, i8** %22, align 8
  store i32 -1, i32* %4, align 4
  br label %38

23:                                               ; preds = %3
  %24 = call %struct.window_pane_input_data* @xmalloc(i32 16)
  store %struct.window_pane_input_data* %24, %struct.window_pane_input_data** %9, align 8
  %25 = load %struct.cmdq_item*, %struct.cmdq_item** %6, align 8
  %26 = load %struct.window_pane_input_data*, %struct.window_pane_input_data** %9, align 8
  %27 = getelementptr inbounds %struct.window_pane_input_data, %struct.window_pane_input_data* %26, i32 0, i32 1
  store %struct.cmdq_item* %25, %struct.cmdq_item** %27, align 8
  %28 = load %struct.window_pane*, %struct.window_pane** %5, align 8
  %29 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.window_pane_input_data*, %struct.window_pane_input_data** %9, align 8
  %32 = getelementptr inbounds %struct.window_pane_input_data, %struct.window_pane_input_data* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.client*, %struct.client** %8, align 8
  %34 = load i32, i32* @window_pane_input_callback, align 4
  %35 = load %struct.window_pane_input_data*, %struct.window_pane_input_data** %9, align 8
  %36 = load i8**, i8*** %7, align 8
  %37 = call i32 @server_set_stdin_callback(%struct.client* %33, i32 %34, %struct.window_pane_input_data* %35, i8** %36)
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %23, %20
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local %struct.window_pane_input_data* @xmalloc(i32) #1

declare dso_local i32 @server_set_stdin_callback(%struct.client*, i32, %struct.window_pane_input_data*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
