; ModuleID = '/home/carl/AnghaBench/tmux/extr_format.c_format_create_add_item.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_format.c_format_create_add_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.format_tree = type { i32 }
%struct.cmdq_item = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { %struct.mouse_event, i32* }
%struct.mouse_event = type { i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.window_pane = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"command\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"mouse_pane\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%%%u\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"mouse_x\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"mouse_y\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"mouse_word\00", align 1
@format_cb_mouse_word = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [11 x i8] c"mouse_line\00", align 1
@format_cb_mouse_line = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.format_tree*, %struct.cmdq_item*)* @format_create_add_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @format_create_add_item(%struct.format_tree* %0, %struct.cmdq_item* %1) #0 {
  %3 = alloca %struct.format_tree*, align 8
  %4 = alloca %struct.cmdq_item*, align 8
  %5 = alloca %struct.mouse_event*, align 8
  %6 = alloca %struct.window_pane*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.format_tree* %0, %struct.format_tree** %3, align 8
  store %struct.cmdq_item* %1, %struct.cmdq_item** %4, align 8
  %9 = load %struct.cmdq_item*, %struct.cmdq_item** %4, align 8
  %10 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %9, i32 0, i32 1
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = icmp ne %struct.TYPE_5__* %11, null
  br i1 %12, label %13, label %23

13:                                               ; preds = %2
  %14 = load %struct.format_tree*, %struct.format_tree** %3, align 8
  %15 = load %struct.cmdq_item*, %struct.cmdq_item** %4, align 8
  %16 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %15, i32 0, i32 1
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @format_add(%struct.format_tree* %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %13, %2
  %24 = load %struct.cmdq_item*, %struct.cmdq_item** %4, align 8
  %25 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = icmp eq %struct.TYPE_6__* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %86

29:                                               ; preds = %23
  %30 = load %struct.cmdq_item*, %struct.cmdq_item** %4, align 8
  %31 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %30, i32 0, i32 0
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %44

36:                                               ; preds = %29
  %37 = load %struct.format_tree*, %struct.format_tree** %3, align 8
  %38 = load %struct.cmdq_item*, %struct.cmdq_item** %4, align 8
  %39 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %38, i32 0, i32 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @format_merge(%struct.format_tree* %37, i32* %42)
  br label %44

44:                                               ; preds = %36, %29
  %45 = load %struct.cmdq_item*, %struct.cmdq_item** %4, align 8
  %46 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %45, i32 0, i32 0
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  store %struct.mouse_event* %48, %struct.mouse_event** %5, align 8
  %49 = load %struct.mouse_event*, %struct.mouse_event** %5, align 8
  %50 = getelementptr inbounds %struct.mouse_event, %struct.mouse_event* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %81

53:                                               ; preds = %44
  %54 = load %struct.mouse_event*, %struct.mouse_event** %5, align 8
  %55 = call %struct.window_pane* @cmd_mouse_pane(%struct.mouse_event* %54, i32* null, i32* null)
  store %struct.window_pane* %55, %struct.window_pane** %6, align 8
  %56 = icmp ne %struct.window_pane* %55, null
  br i1 %56, label %57, label %81

57:                                               ; preds = %53
  %58 = load %struct.format_tree*, %struct.format_tree** %3, align 8
  %59 = load %struct.window_pane*, %struct.window_pane** %6, align 8
  %60 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @format_add(%struct.format_tree* %58, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %61)
  %63 = load %struct.window_pane*, %struct.window_pane** %6, align 8
  %64 = load %struct.mouse_event*, %struct.mouse_event** %5, align 8
  %65 = call i64 @cmd_mouse_at(%struct.window_pane* %63, %struct.mouse_event* %64, i32* %7, i32* %8, i32 0)
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %80

67:                                               ; preds = %57
  %68 = load %struct.format_tree*, %struct.format_tree** %3, align 8
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @format_add(%struct.format_tree* %68, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %69)
  %71 = load %struct.format_tree*, %struct.format_tree** %3, align 8
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @format_add(%struct.format_tree* %71, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %72)
  %74 = load %struct.format_tree*, %struct.format_tree** %3, align 8
  %75 = load i32, i32* @format_cb_mouse_word, align 4
  %76 = call i32 @format_add_cb(%struct.format_tree* %74, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 %75)
  %77 = load %struct.format_tree*, %struct.format_tree** %3, align 8
  %78 = load i32, i32* @format_cb_mouse_line, align 4
  %79 = call i32 @format_add_cb(%struct.format_tree* %77, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %67, %57
  br label %81

81:                                               ; preds = %80, %53, %44
  %82 = load %struct.format_tree*, %struct.format_tree** %3, align 8
  %83 = getelementptr inbounds %struct.format_tree, %struct.format_tree* %82, i32 0, i32 0
  %84 = load %struct.mouse_event*, %struct.mouse_event** %5, align 8
  %85 = call i32 @memcpy(i32* %83, %struct.mouse_event* %84, i32 4)
  br label %86

86:                                               ; preds = %81, %28
  ret void
}

declare dso_local i32 @format_add(%struct.format_tree*, i8*, i8*, i32) #1

declare dso_local i32 @format_merge(%struct.format_tree*, i32*) #1

declare dso_local %struct.window_pane* @cmd_mouse_pane(%struct.mouse_event*, i32*, i32*) #1

declare dso_local i64 @cmd_mouse_at(%struct.window_pane*, %struct.mouse_event*, i32*, i32*, i32) #1

declare dso_local i32 @format_add_cb(%struct.format_tree*, i8*, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.mouse_event*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
