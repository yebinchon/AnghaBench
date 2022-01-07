; ModuleID = '/home/carl/AnghaBench/tmux/extr_cmd-display-panes.c_cmd_display_panes_key.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_cmd-display-panes.c_cmd_display_panes_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.client = type { %struct.TYPE_4__*, %struct.cmd_display_panes_data* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.window* }
%struct.window = type { i32 }
%struct.cmd_display_panes_data = type { i32 }
%struct.key_event = type { i8 }
%struct.cmdq_item = type { i32 }
%struct.window_pane = type { i32 }
%struct.cmd_parse_result = type { i32, i8*, i32 }

@.str = private unnamed_addr constant [5 x i8] c"%%%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.client*, %struct.key_event*)* @cmd_display_panes_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_display_panes_key(%struct.client* %0, %struct.key_event* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.client*, align 8
  %5 = alloca %struct.key_event*, align 8
  %6 = alloca %struct.cmd_display_panes_data*, align 8
  %7 = alloca %struct.cmdq_item*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.window*, align 8
  %11 = alloca %struct.window_pane*, align 8
  %12 = alloca %struct.cmd_parse_result*, align 8
  store %struct.client* %0, %struct.client** %4, align 8
  store %struct.key_event* %1, %struct.key_event** %5, align 8
  %13 = load %struct.client*, %struct.client** %4, align 8
  %14 = getelementptr inbounds %struct.client, %struct.client* %13, i32 0, i32 1
  %15 = load %struct.cmd_display_panes_data*, %struct.cmd_display_panes_data** %14, align 8
  store %struct.cmd_display_panes_data* %15, %struct.cmd_display_panes_data** %6, align 8
  %16 = load %struct.client*, %struct.client** %4, align 8
  %17 = getelementptr inbounds %struct.client, %struct.client* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load %struct.window*, %struct.window** %21, align 8
  store %struct.window* %22, %struct.window** %10, align 8
  %23 = load %struct.key_event*, %struct.key_event** %5, align 8
  %24 = getelementptr inbounds %struct.key_event, %struct.key_event* %23, i32 0, i32 0
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp slt i32 %26, 48
  br i1 %27, label %34, label %28

28:                                               ; preds = %2
  %29 = load %struct.key_event*, %struct.key_event** %5, align 8
  %30 = getelementptr inbounds %struct.key_event, %struct.key_event* %29, i32 0, i32 0
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp sgt i32 %32, 57
  br i1 %33, label %34, label %35

34:                                               ; preds = %28, %2
  store i32 -1, i32* %3, align 4
  br label %94

35:                                               ; preds = %28
  %36 = load %struct.window*, %struct.window** %10, align 8
  %37 = load %struct.key_event*, %struct.key_event** %5, align 8
  %38 = getelementptr inbounds %struct.key_event, %struct.key_event* %37, i32 0, i32 0
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = sub nsw i32 %40, 48
  %42 = trunc i32 %41 to i8
  %43 = call %struct.window_pane* @window_pane_at_index(%struct.window* %36, i8 signext %42)
  store %struct.window_pane* %43, %struct.window_pane** %11, align 8
  %44 = load %struct.window_pane*, %struct.window_pane** %11, align 8
  %45 = icmp eq %struct.window_pane* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %35
  store i32 1, i32* %3, align 4
  br label %94

47:                                               ; preds = %35
  %48 = load %struct.window*, %struct.window** %10, align 8
  %49 = call i32 @window_unzoom(%struct.window* %48)
  %50 = load %struct.window_pane*, %struct.window_pane** %11, align 8
  %51 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @xasprintf(i8** %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load %struct.cmd_display_panes_data*, %struct.cmd_display_panes_data** %6, align 8
  %55 = getelementptr inbounds %struct.cmd_display_panes_data, %struct.cmd_display_panes_data* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i8*, i8** %9, align 8
  %58 = call i8* @cmd_template_replace(i32 %56, i8* %57, i32 1)
  store i8* %58, i8** %8, align 8
  %59 = load i8*, i8** %8, align 8
  %60 = call %struct.cmd_parse_result* @cmd_parse_from_string(i8* %59, i32* null)
  store %struct.cmd_parse_result* %60, %struct.cmd_parse_result** %12, align 8
  %61 = load %struct.cmd_parse_result*, %struct.cmd_parse_result** %12, align 8
  %62 = getelementptr inbounds %struct.cmd_parse_result, %struct.cmd_parse_result* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  switch i32 %63, label %89 [
    i32 130, label %64
    i32 129, label %65
    i32 128, label %77
  ]

64:                                               ; preds = %47
  store %struct.cmdq_item* null, %struct.cmdq_item** %7, align 8
  br label %89

65:                                               ; preds = %47
  %66 = load %struct.cmd_parse_result*, %struct.cmd_parse_result** %12, align 8
  %67 = getelementptr inbounds %struct.cmd_parse_result, %struct.cmd_parse_result* %66, i32 0, i32 1
  %68 = load i8*, i8** %67, align 8
  %69 = call %struct.cmdq_item* @cmdq_get_error(i8* %68)
  store %struct.cmdq_item* %69, %struct.cmdq_item** %7, align 8
  %70 = load %struct.cmd_parse_result*, %struct.cmd_parse_result** %12, align 8
  %71 = getelementptr inbounds %struct.cmd_parse_result, %struct.cmd_parse_result* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @free(i8* %72)
  %74 = load %struct.client*, %struct.client** %4, align 8
  %75 = load %struct.cmdq_item*, %struct.cmdq_item** %7, align 8
  %76 = call i32 @cmdq_append(%struct.client* %74, %struct.cmdq_item* %75)
  br label %89

77:                                               ; preds = %47
  %78 = load %struct.cmd_parse_result*, %struct.cmd_parse_result** %12, align 8
  %79 = getelementptr inbounds %struct.cmd_parse_result, %struct.cmd_parse_result* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call %struct.cmdq_item* @cmdq_get_command(i32 %80, i32* null, i32* null, i32 0)
  store %struct.cmdq_item* %81, %struct.cmdq_item** %7, align 8
  %82 = load %struct.cmd_parse_result*, %struct.cmd_parse_result** %12, align 8
  %83 = getelementptr inbounds %struct.cmd_parse_result, %struct.cmd_parse_result* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @cmd_list_free(i32 %84)
  %86 = load %struct.client*, %struct.client** %4, align 8
  %87 = load %struct.cmdq_item*, %struct.cmdq_item** %7, align 8
  %88 = call i32 @cmdq_append(%struct.client* %86, %struct.cmdq_item* %87)
  br label %89

89:                                               ; preds = %47, %77, %65, %64
  %90 = load i8*, i8** %8, align 8
  %91 = call i32 @free(i8* %90)
  %92 = load i8*, i8** %9, align 8
  %93 = call i32 @free(i8* %92)
  store i32 1, i32* %3, align 4
  br label %94

94:                                               ; preds = %89, %46, %34
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local %struct.window_pane* @window_pane_at_index(%struct.window*, i8 signext) #1

declare dso_local i32 @window_unzoom(%struct.window*) #1

declare dso_local i32 @xasprintf(i8**, i8*, i32) #1

declare dso_local i8* @cmd_template_replace(i32, i8*, i32) #1

declare dso_local %struct.cmd_parse_result* @cmd_parse_from_string(i8*, i32*) #1

declare dso_local %struct.cmdq_item* @cmdq_get_error(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @cmdq_append(%struct.client*, %struct.cmdq_item*) #1

declare dso_local %struct.cmdq_item* @cmdq_get_command(i32, i32*, i32*, i32) #1

declare dso_local i32 @cmd_list_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
