; ModuleID = '/home/carl/AnghaBench/tmux/extr_mode-tree.c_mode_tree_run_command.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_mode-tree.c_mode_tree_run_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.client = type { i32 }
%struct.cmd_find_state = type { i32 }
%struct.cmdq_item = type { i32 }
%struct.cmd_parse_result = type { i32, i8*, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mode_tree_run_command(%struct.client* %0, %struct.cmd_find_state* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.client*, align 8
  %6 = alloca %struct.cmd_find_state*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.cmdq_item*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.cmd_parse_result*, align 8
  store %struct.client* %0, %struct.client** %5, align 8
  store %struct.cmd_find_state* %1, %struct.cmd_find_state** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = call i8* @cmd_template_replace(i8* %12, i8* %13, i32 1)
  store i8* %14, i8** %10, align 8
  %15 = load i8*, i8** %10, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %4
  %18 = load i8*, i8** %10, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17, %4
  %23 = load i8*, i8** %10, align 8
  %24 = call i32 @free(i8* %23)
  br label %71

25:                                               ; preds = %17
  %26 = load i8*, i8** %10, align 8
  %27 = call %struct.cmd_parse_result* @cmd_parse_from_string(i8* %26, i32* null)
  store %struct.cmd_parse_result* %27, %struct.cmd_parse_result** %11, align 8
  %28 = load %struct.cmd_parse_result*, %struct.cmd_parse_result** %11, align 8
  %29 = getelementptr inbounds %struct.cmd_parse_result, %struct.cmd_parse_result* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  switch i32 %30, label %68 [
    i32 130, label %31
    i32 129, label %32
    i32 128, label %55
  ]

31:                                               ; preds = %25
  br label %68

32:                                               ; preds = %25
  %33 = load %struct.client*, %struct.client** %5, align 8
  %34 = icmp ne %struct.client* %33, null
  br i1 %34, label %35, label %50

35:                                               ; preds = %32
  %36 = load %struct.cmd_parse_result*, %struct.cmd_parse_result** %11, align 8
  %37 = getelementptr inbounds %struct.cmd_parse_result, %struct.cmd_parse_result* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = call signext i8 @toupper(i32 %40)
  %42 = load %struct.cmd_parse_result*, %struct.cmd_parse_result** %11, align 8
  %43 = getelementptr inbounds %struct.cmd_parse_result, %struct.cmd_parse_result* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  store i8 %41, i8* %44, align 1
  %45 = load %struct.client*, %struct.client** %5, align 8
  %46 = load %struct.cmd_parse_result*, %struct.cmd_parse_result** %11, align 8
  %47 = getelementptr inbounds %struct.cmd_parse_result, %struct.cmd_parse_result* %46, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @status_message_set(%struct.client* %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %48)
  br label %50

50:                                               ; preds = %35, %32
  %51 = load %struct.cmd_parse_result*, %struct.cmd_parse_result** %11, align 8
  %52 = getelementptr inbounds %struct.cmd_parse_result, %struct.cmd_parse_result* %51, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @free(i8* %53)
  br label %68

55:                                               ; preds = %25
  %56 = load %struct.cmd_parse_result*, %struct.cmd_parse_result** %11, align 8
  %57 = getelementptr inbounds %struct.cmd_parse_result, %struct.cmd_parse_result* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.cmd_find_state*, %struct.cmd_find_state** %6, align 8
  %60 = call %struct.cmdq_item* @cmdq_get_command(i32 %58, %struct.cmd_find_state* %59, i32* null, i32 0)
  store %struct.cmdq_item* %60, %struct.cmdq_item** %9, align 8
  %61 = load %struct.client*, %struct.client** %5, align 8
  %62 = load %struct.cmdq_item*, %struct.cmdq_item** %9, align 8
  %63 = call i32 @cmdq_append(%struct.client* %61, %struct.cmdq_item* %62)
  %64 = load %struct.cmd_parse_result*, %struct.cmd_parse_result** %11, align 8
  %65 = getelementptr inbounds %struct.cmd_parse_result, %struct.cmd_parse_result* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @cmd_list_free(i32 %66)
  br label %68

68:                                               ; preds = %25, %55, %50, %31
  %69 = load i8*, i8** %10, align 8
  %70 = call i32 @free(i8* %69)
  br label %71

71:                                               ; preds = %68, %22
  ret void
}

declare dso_local i8* @cmd_template_replace(i8*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local %struct.cmd_parse_result* @cmd_parse_from_string(i8*, i32*) #1

declare dso_local signext i8 @toupper(i32) #1

declare dso_local i32 @status_message_set(%struct.client*, i8*, i8*) #1

declare dso_local %struct.cmdq_item* @cmdq_get_command(i32, %struct.cmd_find_state*, i32*, i32) #1

declare dso_local i32 @cmdq_append(%struct.client*, %struct.cmdq_item*) #1

declare dso_local i32 @cmd_list_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
