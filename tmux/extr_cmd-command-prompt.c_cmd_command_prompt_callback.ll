; ModuleID = '/home/carl/AnghaBench/tmux/extr_cmd-command-prompt.c_cmd_command_prompt_callback.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_cmd-command-prompt.c_cmd_command_prompt_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.client = type { i64 }
%struct.cmd_command_prompt_cdata = type { i32, i8*, i32, i32, i32 }
%struct.cmdq_item = type { i32 }
%struct.cmd_parse_result = type { i32, i8*, i32 }

@PROMPT_INCREMENTAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.client*, i8*, i8*, i32)* @cmd_command_prompt_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_command_prompt_callback(%struct.client* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.client*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.cmd_command_prompt_cdata*, align 8
  %11 = alloca %struct.cmdq_item*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.cmd_parse_result*, align 8
  store %struct.client* %0, %struct.client** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load i8*, i8** %7, align 8
  %18 = bitcast i8* %17 to %struct.cmd_command_prompt_cdata*
  store %struct.cmd_command_prompt_cdata* %18, %struct.cmd_command_prompt_cdata** %10, align 8
  store i8* null, i8** %15, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %121

22:                                               ; preds = %4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %22
  %26 = load %struct.cmd_command_prompt_cdata*, %struct.cmd_command_prompt_cdata** %10, align 8
  %27 = getelementptr inbounds %struct.cmd_command_prompt_cdata, %struct.cmd_command_prompt_cdata* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @PROMPT_INCREMENTAL, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  store i32 0, i32* %5, align 4
  br label %121

33:                                               ; preds = %25, %22
  %34 = load %struct.cmd_command_prompt_cdata*, %struct.cmd_command_prompt_cdata** %10, align 8
  %35 = getelementptr inbounds %struct.cmd_command_prompt_cdata, %struct.cmd_command_prompt_cdata* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = load %struct.cmd_command_prompt_cdata*, %struct.cmd_command_prompt_cdata** %10, align 8
  %39 = getelementptr inbounds %struct.cmd_command_prompt_cdata, %struct.cmd_command_prompt_cdata* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i8* @cmd_template_replace(i8* %36, i8* %37, i32 %40)
  store i8* %41, i8** %12, align 8
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %33
  %45 = load %struct.cmd_command_prompt_cdata*, %struct.cmd_command_prompt_cdata** %10, align 8
  %46 = getelementptr inbounds %struct.cmd_command_prompt_cdata, %struct.cmd_command_prompt_cdata* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @free(i8* %47)
  %49 = load i8*, i8** %12, align 8
  %50 = load %struct.cmd_command_prompt_cdata*, %struct.cmd_command_prompt_cdata** %10, align 8
  %51 = getelementptr inbounds %struct.cmd_command_prompt_cdata, %struct.cmd_command_prompt_cdata* %50, i32 0, i32 1
  store i8* %49, i8** %51, align 8
  br label %52

52:                                               ; preds = %44, %33
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %76

55:                                               ; preds = %52
  %56 = load %struct.cmd_command_prompt_cdata*, %struct.cmd_command_prompt_cdata** %10, align 8
  %57 = getelementptr inbounds %struct.cmd_command_prompt_cdata, %struct.cmd_command_prompt_cdata* %56, i32 0, i32 4
  %58 = call i8* @strsep(i32* %57, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %58, i8** %14, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %76

60:                                               ; preds = %55
  %61 = load i8*, i8** %14, align 8
  %62 = call i32 @xasprintf(i8** %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %61)
  %63 = load %struct.cmd_command_prompt_cdata*, %struct.cmd_command_prompt_cdata** %10, align 8
  %64 = getelementptr inbounds %struct.cmd_command_prompt_cdata, %struct.cmd_command_prompt_cdata* %63, i32 0, i32 3
  %65 = call i8* @strsep(i32* %64, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %65, i8** %15, align 8
  %66 = load %struct.client*, %struct.client** %6, align 8
  %67 = load i8*, i8** %13, align 8
  %68 = load i8*, i8** %15, align 8
  %69 = call i32 @status_prompt_update(%struct.client* %66, i8* %67, i8* %68)
  %70 = load i8*, i8** %13, align 8
  %71 = call i32 @free(i8* %70)
  %72 = load %struct.cmd_command_prompt_cdata*, %struct.cmd_command_prompt_cdata** %10, align 8
  %73 = getelementptr inbounds %struct.cmd_command_prompt_cdata, %struct.cmd_command_prompt_cdata* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 8
  store i32 1, i32* %5, align 4
  br label %121

76:                                               ; preds = %55, %52
  %77 = load i8*, i8** %12, align 8
  %78 = call %struct.cmd_parse_result* @cmd_parse_from_string(i8* %77, i32* null)
  store %struct.cmd_parse_result* %78, %struct.cmd_parse_result** %16, align 8
  %79 = load %struct.cmd_parse_result*, %struct.cmd_parse_result** %16, align 8
  %80 = getelementptr inbounds %struct.cmd_parse_result, %struct.cmd_parse_result* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  switch i32 %81, label %107 [
    i32 130, label %82
    i32 129, label %83
    i32 128, label %95
  ]

82:                                               ; preds = %76
  store %struct.cmdq_item* null, %struct.cmdq_item** %11, align 8
  br label %107

83:                                               ; preds = %76
  %84 = load %struct.cmd_parse_result*, %struct.cmd_parse_result** %16, align 8
  %85 = getelementptr inbounds %struct.cmd_parse_result, %struct.cmd_parse_result* %84, i32 0, i32 1
  %86 = load i8*, i8** %85, align 8
  %87 = call %struct.cmdq_item* @cmdq_get_error(i8* %86)
  store %struct.cmdq_item* %87, %struct.cmdq_item** %11, align 8
  %88 = load %struct.cmd_parse_result*, %struct.cmd_parse_result** %16, align 8
  %89 = getelementptr inbounds %struct.cmd_parse_result, %struct.cmd_parse_result* %88, i32 0, i32 1
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 @free(i8* %90)
  %92 = load %struct.client*, %struct.client** %6, align 8
  %93 = load %struct.cmdq_item*, %struct.cmdq_item** %11, align 8
  %94 = call i32 @cmdq_append(%struct.client* %92, %struct.cmdq_item* %93)
  br label %107

95:                                               ; preds = %76
  %96 = load %struct.cmd_parse_result*, %struct.cmd_parse_result** %16, align 8
  %97 = getelementptr inbounds %struct.cmd_parse_result, %struct.cmd_parse_result* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = call %struct.cmdq_item* @cmdq_get_command(i32 %98, i32* null, i32* null, i32 0)
  store %struct.cmdq_item* %99, %struct.cmdq_item** %11, align 8
  %100 = load %struct.cmd_parse_result*, %struct.cmd_parse_result** %16, align 8
  %101 = getelementptr inbounds %struct.cmd_parse_result, %struct.cmd_parse_result* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @cmd_list_free(i32 %102)
  %104 = load %struct.client*, %struct.client** %6, align 8
  %105 = load %struct.cmdq_item*, %struct.cmdq_item** %11, align 8
  %106 = call i32 @cmdq_append(%struct.client* %104, %struct.cmdq_item* %105)
  br label %107

107:                                              ; preds = %76, %95, %83, %82
  %108 = load i32, i32* %9, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %107
  %111 = load i8*, i8** %12, align 8
  %112 = call i32 @free(i8* %111)
  br label %113

113:                                              ; preds = %110, %107
  %114 = load %struct.client*, %struct.client** %6, align 8
  %115 = getelementptr inbounds %struct.client, %struct.client* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = inttoptr i64 %116 to i32 (%struct.client*, i8*, i8*, i32)*
  %118 = icmp ne i32 (%struct.client*, i8*, i8*, i32)* %117, @cmd_command_prompt_callback
  br i1 %118, label %119, label %120

119:                                              ; preds = %113
  store i32 1, i32* %5, align 4
  br label %121

120:                                              ; preds = %113
  store i32 0, i32* %5, align 4
  br label %121

121:                                              ; preds = %120, %119, %60, %32, %21
  %122 = load i32, i32* %5, align 4
  ret i32 %122
}

declare dso_local i8* @cmd_template_replace(i8*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @strsep(i32*, i8*) #1

declare dso_local i32 @xasprintf(i8**, i8*, i8*) #1

declare dso_local i32 @status_prompt_update(%struct.client*, i8*, i8*) #1

declare dso_local %struct.cmd_parse_result* @cmd_parse_from_string(i8*, i32*) #1

declare dso_local %struct.cmdq_item* @cmdq_get_error(i8*) #1

declare dso_local i32 @cmdq_append(%struct.client*, %struct.cmdq_item*) #1

declare dso_local %struct.cmdq_item* @cmdq_get_command(i32, i32*, i32*, i32) #1

declare dso_local i32 @cmd_list_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
