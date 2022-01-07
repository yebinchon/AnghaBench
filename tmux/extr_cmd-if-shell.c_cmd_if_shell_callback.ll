; ModuleID = '/home/carl/AnghaBench/tmux/extr_cmd-if-shell.c_cmd_if_shell_callback.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_cmd-if-shell.c_cmd_if_shell_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.job = type { i32 }
%struct.cmd_if_shell_data = type { i8*, i8*, i32*, i32, %struct.mouse_event, %struct.client* }
%struct.mouse_event = type { i32 }
%struct.client = type { i32 }
%struct.cmdq_item = type { i32 }
%struct.cmd_parse_result = type { i32, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.job*)* @cmd_if_shell_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmd_if_shell_callback(%struct.job* %0) #0 {
  %2 = alloca %struct.job*, align 8
  %3 = alloca %struct.cmd_if_shell_data*, align 8
  %4 = alloca %struct.client*, align 8
  %5 = alloca %struct.mouse_event*, align 8
  %6 = alloca %struct.cmdq_item*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.cmd_parse_result*, align 8
  store %struct.job* %0, %struct.job** %2, align 8
  %10 = load %struct.job*, %struct.job** %2, align 8
  %11 = call %struct.cmd_if_shell_data* @job_get_data(%struct.job* %10)
  store %struct.cmd_if_shell_data* %11, %struct.cmd_if_shell_data** %3, align 8
  %12 = load %struct.cmd_if_shell_data*, %struct.cmd_if_shell_data** %3, align 8
  %13 = getelementptr inbounds %struct.cmd_if_shell_data, %struct.cmd_if_shell_data* %12, i32 0, i32 5
  %14 = load %struct.client*, %struct.client** %13, align 8
  store %struct.client* %14, %struct.client** %4, align 8
  %15 = load %struct.cmd_if_shell_data*, %struct.cmd_if_shell_data** %3, align 8
  %16 = getelementptr inbounds %struct.cmd_if_shell_data, %struct.cmd_if_shell_data* %15, i32 0, i32 4
  store %struct.mouse_event* %16, %struct.mouse_event** %5, align 8
  store %struct.cmdq_item* null, %struct.cmdq_item** %6, align 8
  %17 = load %struct.job*, %struct.job** %2, align 8
  %18 = call i32 @job_get_status(%struct.job* %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @WIFEXITED(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %1
  %23 = load i32, i32* %8, align 4
  %24 = call i64 @WEXITSTATUS(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %22, %1
  %27 = load %struct.cmd_if_shell_data*, %struct.cmd_if_shell_data** %3, align 8
  %28 = getelementptr inbounds %struct.cmd_if_shell_data, %struct.cmd_if_shell_data* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %7, align 8
  br label %34

30:                                               ; preds = %22
  %31 = load %struct.cmd_if_shell_data*, %struct.cmd_if_shell_data** %3, align 8
  %32 = getelementptr inbounds %struct.cmd_if_shell_data, %struct.cmd_if_shell_data* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %7, align 8
  br label %34

34:                                               ; preds = %30, %26
  %35 = load i8*, i8** %7, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  br label %95

38:                                               ; preds = %34
  %39 = load i8*, i8** %7, align 8
  %40 = load %struct.cmd_if_shell_data*, %struct.cmd_if_shell_data** %3, align 8
  %41 = getelementptr inbounds %struct.cmd_if_shell_data, %struct.cmd_if_shell_data* %40, i32 0, i32 3
  %42 = call %struct.cmd_parse_result* @cmd_parse_from_string(i8* %39, i32* %41)
  store %struct.cmd_parse_result* %42, %struct.cmd_parse_result** %9, align 8
  %43 = load %struct.cmd_parse_result*, %struct.cmd_parse_result** %9, align 8
  %44 = getelementptr inbounds %struct.cmd_parse_result, %struct.cmd_parse_result* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  switch i32 %45, label %75 [
    i32 130, label %46
    i32 129, label %47
    i32 128, label %65
  ]

46:                                               ; preds = %38
  br label %75

47:                                               ; preds = %38
  %48 = load %struct.cmd_if_shell_data*, %struct.cmd_if_shell_data** %3, align 8
  %49 = getelementptr inbounds %struct.cmd_if_shell_data, %struct.cmd_if_shell_data* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %60

52:                                               ; preds = %47
  %53 = load %struct.cmd_if_shell_data*, %struct.cmd_if_shell_data** %3, align 8
  %54 = getelementptr inbounds %struct.cmd_if_shell_data, %struct.cmd_if_shell_data* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = load %struct.cmd_parse_result*, %struct.cmd_parse_result** %9, align 8
  %57 = getelementptr inbounds %struct.cmd_parse_result, %struct.cmd_parse_result* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @cmdq_error(i32* %55, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %58)
  br label %60

60:                                               ; preds = %52, %47
  %61 = load %struct.cmd_parse_result*, %struct.cmd_parse_result** %9, align 8
  %62 = getelementptr inbounds %struct.cmd_parse_result, %struct.cmd_parse_result* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @free(i32 %63)
  br label %75

65:                                               ; preds = %38
  %66 = load %struct.cmd_parse_result*, %struct.cmd_parse_result** %9, align 8
  %67 = getelementptr inbounds %struct.cmd_parse_result, %struct.cmd_parse_result* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.mouse_event*, %struct.mouse_event** %5, align 8
  %70 = call %struct.cmdq_item* @cmdq_get_command(i32 %68, i32* null, %struct.mouse_event* %69, i32 0)
  store %struct.cmdq_item* %70, %struct.cmdq_item** %6, align 8
  %71 = load %struct.cmd_parse_result*, %struct.cmd_parse_result** %9, align 8
  %72 = getelementptr inbounds %struct.cmd_parse_result, %struct.cmd_parse_result* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @cmd_list_free(i32 %73)
  br label %75

75:                                               ; preds = %38, %65, %60, %46
  %76 = load %struct.cmdq_item*, %struct.cmdq_item** %6, align 8
  %77 = icmp ne %struct.cmdq_item* %76, null
  br i1 %77, label %78, label %94

78:                                               ; preds = %75
  %79 = load %struct.cmd_if_shell_data*, %struct.cmd_if_shell_data** %3, align 8
  %80 = getelementptr inbounds %struct.cmd_if_shell_data, %struct.cmd_if_shell_data* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = icmp eq i32* %81, null
  br i1 %82, label %83, label %87

83:                                               ; preds = %78
  %84 = load %struct.client*, %struct.client** %4, align 8
  %85 = load %struct.cmdq_item*, %struct.cmdq_item** %6, align 8
  %86 = call i32 @cmdq_append(%struct.client* %84, %struct.cmdq_item* %85)
  br label %93

87:                                               ; preds = %78
  %88 = load %struct.cmd_if_shell_data*, %struct.cmd_if_shell_data** %3, align 8
  %89 = getelementptr inbounds %struct.cmd_if_shell_data, %struct.cmd_if_shell_data* %88, i32 0, i32 2
  %90 = load i32*, i32** %89, align 8
  %91 = load %struct.cmdq_item*, %struct.cmdq_item** %6, align 8
  %92 = call i32 @cmdq_insert_after(i32* %90, %struct.cmdq_item* %91)
  br label %93

93:                                               ; preds = %87, %83
  br label %94

94:                                               ; preds = %93, %75
  br label %95

95:                                               ; preds = %94, %37
  %96 = load %struct.cmd_if_shell_data*, %struct.cmd_if_shell_data** %3, align 8
  %97 = getelementptr inbounds %struct.cmd_if_shell_data, %struct.cmd_if_shell_data* %96, i32 0, i32 2
  %98 = load i32*, i32** %97, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %100, label %105

100:                                              ; preds = %95
  %101 = load %struct.cmd_if_shell_data*, %struct.cmd_if_shell_data** %3, align 8
  %102 = getelementptr inbounds %struct.cmd_if_shell_data, %struct.cmd_if_shell_data* %101, i32 0, i32 2
  %103 = load i32*, i32** %102, align 8
  %104 = call i32 @cmdq_continue(i32* %103)
  br label %105

105:                                              ; preds = %100, %95
  ret void
}

declare dso_local %struct.cmd_if_shell_data* @job_get_data(%struct.job*) #1

declare dso_local i32 @job_get_status(%struct.job*) #1

declare dso_local i32 @WIFEXITED(i32) #1

declare dso_local i64 @WEXITSTATUS(i32) #1

declare dso_local %struct.cmd_parse_result* @cmd_parse_from_string(i8*, i32*) #1

declare dso_local i32 @cmdq_error(i32*, i8*, i32) #1

declare dso_local i32 @free(i32) #1

declare dso_local %struct.cmdq_item* @cmdq_get_command(i32, i32*, %struct.mouse_event*, i32) #1

declare dso_local i32 @cmd_list_free(i32) #1

declare dso_local i32 @cmdq_append(%struct.client*, %struct.cmdq_item*) #1

declare dso_local i32 @cmdq_insert_after(i32*, %struct.cmdq_item*) #1

declare dso_local i32 @cmdq_continue(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
