; ModuleID = '/home/carl/AnghaBench/tmux/extr_cmd-display-message.c_cmd_display_message_exec.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_cmd-display-message.c_cmd_display_message_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd = type { %struct.args* }
%struct.args = type { i64, i8** }
%struct.cmdq_item = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.window_pane*, %struct.winlink*, %struct.session* }
%struct.window_pane = type { i32 }
%struct.winlink = type { i32 }
%struct.session = type { i32 }
%struct.client = type { %struct.session* }
%struct.format_tree = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@CMD_RETURN_ERROR = common dso_local global i32 0, align 4
@CMD_RETURN_WAIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"only one of -F or argument must be given\00", align 1
@DISPLAY_MESSAGE_TEMPLATE = common dso_local global i8* null, align 8
@FORMAT_VERBOSE = common dso_local global i32 0, align 4
@FORMAT_NONE = common dso_local global i32 0, align 4
@cmd_display_message_each = common dso_local global i32 0, align 4
@CMD_RETURN_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmd*, %struct.cmdq_item*)* @cmd_display_message_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_display_message_exec(%struct.cmd* %0, %struct.cmdq_item* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cmd*, align 8
  %5 = alloca %struct.cmdq_item*, align 8
  %6 = alloca %struct.args*, align 8
  %7 = alloca %struct.client*, align 8
  %8 = alloca %struct.client*, align 8
  %9 = alloca %struct.session*, align 8
  %10 = alloca %struct.winlink*, align 8
  %11 = alloca %struct.window_pane*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.format_tree*, align 8
  %16 = alloca i32, align 4
  store %struct.cmd* %0, %struct.cmd** %4, align 8
  store %struct.cmdq_item* %1, %struct.cmdq_item** %5, align 8
  %17 = load %struct.cmd*, %struct.cmd** %4, align 8
  %18 = getelementptr inbounds %struct.cmd, %struct.cmd* %17, i32 0, i32 0
  %19 = load %struct.args*, %struct.args** %18, align 8
  store %struct.args* %19, %struct.args** %6, align 8
  %20 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %21 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  %23 = load %struct.session*, %struct.session** %22, align 8
  store %struct.session* %23, %struct.session** %9, align 8
  %24 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %25 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load %struct.winlink*, %struct.winlink** %26, align 8
  store %struct.winlink* %27, %struct.winlink** %10, align 8
  %28 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %29 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load %struct.window_pane*, %struct.window_pane** %30, align 8
  store %struct.window_pane* %31, %struct.window_pane** %11, align 8
  %32 = load %struct.args*, %struct.args** %6, align 8
  %33 = call i64 @args_has(%struct.args* %32, i8 signext 73)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %49

35:                                               ; preds = %2
  %36 = load %struct.window_pane*, %struct.window_pane** %11, align 8
  %37 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %38 = call i64 @window_pane_start_input(%struct.window_pane* %36, %struct.cmdq_item* %37, i8** %14)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %35
  %41 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %42 = load i8*, i8** %14, align 8
  %43 = call i32 (%struct.cmdq_item*, i8*, ...) @cmdq_error(%struct.cmdq_item* %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %42)
  %44 = load i8*, i8** %14, align 8
  %45 = call i32 @free(i8* %44)
  %46 = load i32, i32* @CMD_RETURN_ERROR, align 4
  store i32 %46, i32* %3, align 4
  br label %157

47:                                               ; preds = %35
  %48 = load i32, i32* @CMD_RETURN_WAIT, align 4
  store i32 %48, i32* %3, align 4
  br label %157

49:                                               ; preds = %2
  %50 = load %struct.args*, %struct.args** %6, align 8
  %51 = call i64 @args_has(%struct.args* %50, i8 signext 70)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %49
  %54 = load %struct.args*, %struct.args** %6, align 8
  %55 = getelementptr inbounds %struct.args, %struct.args* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %60 = call i32 (%struct.cmdq_item*, i8*, ...) @cmdq_error(%struct.cmdq_item* %59, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %61 = load i32, i32* @CMD_RETURN_ERROR, align 4
  store i32 %61, i32* %3, align 4
  br label %157

62:                                               ; preds = %53, %49
  %63 = load %struct.args*, %struct.args** %6, align 8
  %64 = call i8* @args_get(%struct.args* %63, i8 signext 70)
  store i8* %64, i8** %12, align 8
  %65 = load %struct.args*, %struct.args** %6, align 8
  %66 = getelementptr inbounds %struct.args, %struct.args* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %62
  %70 = load %struct.args*, %struct.args** %6, align 8
  %71 = getelementptr inbounds %struct.args, %struct.args* %70, i32 0, i32 1
  %72 = load i8**, i8*** %71, align 8
  %73 = getelementptr inbounds i8*, i8** %72, i64 0
  %74 = load i8*, i8** %73, align 8
  store i8* %74, i8** %12, align 8
  br label %75

75:                                               ; preds = %69, %62
  %76 = load i8*, i8** %12, align 8
  %77 = icmp eq i8* %76, null
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = load i8*, i8** @DISPLAY_MESSAGE_TEMPLATE, align 8
  store i8* %79, i8** %12, align 8
  br label %80

80:                                               ; preds = %78, %75
  %81 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %82 = load %struct.args*, %struct.args** %6, align 8
  %83 = call i8* @args_get(%struct.args* %82, i8 signext 99)
  %84 = call %struct.client* @cmd_find_client(%struct.cmdq_item* %81, i8* %83, i32 1)
  store %struct.client* %84, %struct.client** %7, align 8
  %85 = load %struct.client*, %struct.client** %7, align 8
  %86 = icmp ne %struct.client* %85, null
  br i1 %86, label %87, label %95

87:                                               ; preds = %80
  %88 = load %struct.client*, %struct.client** %7, align 8
  %89 = getelementptr inbounds %struct.client, %struct.client* %88, i32 0, i32 0
  %90 = load %struct.session*, %struct.session** %89, align 8
  %91 = load %struct.session*, %struct.session** %9, align 8
  %92 = icmp eq %struct.session* %90, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %87
  %94 = load %struct.client*, %struct.client** %7, align 8
  store %struct.client* %94, %struct.client** %8, align 8
  br label %98

95:                                               ; preds = %87, %80
  %96 = load %struct.session*, %struct.session** %9, align 8
  %97 = call %struct.client* @cmd_find_best_client(%struct.session* %96)
  store %struct.client* %97, %struct.client** %8, align 8
  br label %98

98:                                               ; preds = %95, %93
  %99 = load %struct.cmd*, %struct.cmd** %4, align 8
  %100 = getelementptr inbounds %struct.cmd, %struct.cmd* %99, i32 0, i32 0
  %101 = load %struct.args*, %struct.args** %100, align 8
  %102 = call i64 @args_has(%struct.args* %101, i8 signext 118)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %98
  %105 = load i32, i32* @FORMAT_VERBOSE, align 4
  store i32 %105, i32* %16, align 4
  br label %107

106:                                              ; preds = %98
  store i32 0, i32* %16, align 4
  br label %107

107:                                              ; preds = %106, %104
  %108 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %109 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %112 = load i32, i32* @FORMAT_NONE, align 4
  %113 = load i32, i32* %16, align 4
  %114 = call %struct.format_tree* @format_create(i32 %110, %struct.cmdq_item* %111, i32 %112, i32 %113)
  store %struct.format_tree* %114, %struct.format_tree** %15, align 8
  %115 = load %struct.format_tree*, %struct.format_tree** %15, align 8
  %116 = load %struct.client*, %struct.client** %8, align 8
  %117 = load %struct.session*, %struct.session** %9, align 8
  %118 = load %struct.winlink*, %struct.winlink** %10, align 8
  %119 = load %struct.window_pane*, %struct.window_pane** %11, align 8
  %120 = call i32 @format_defaults(%struct.format_tree* %115, %struct.client* %116, %struct.session* %117, %struct.winlink* %118, %struct.window_pane* %119)
  %121 = load %struct.args*, %struct.args** %6, align 8
  %122 = call i64 @args_has(%struct.args* %121, i8 signext 97)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %107
  %125 = load %struct.format_tree*, %struct.format_tree** %15, align 8
  %126 = load i32, i32* @cmd_display_message_each, align 4
  %127 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %128 = call i32 @format_each(%struct.format_tree* %125, i32 %126, %struct.cmdq_item* %127)
  %129 = load i32, i32* @CMD_RETURN_NORMAL, align 4
  store i32 %129, i32* %3, align 4
  br label %157

130:                                              ; preds = %107
  %131 = load %struct.format_tree*, %struct.format_tree** %15, align 8
  %132 = load i8*, i8** %12, align 8
  %133 = call i8* @format_expand_time(%struct.format_tree* %131, i8* %132)
  store i8* %133, i8** %13, align 8
  %134 = load %struct.cmd*, %struct.cmd** %4, align 8
  %135 = getelementptr inbounds %struct.cmd, %struct.cmd* %134, i32 0, i32 0
  %136 = load %struct.args*, %struct.args** %135, align 8
  %137 = call i64 @args_has(%struct.args* %136, i8 signext 112)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %130
  %140 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %141 = load i8*, i8** %13, align 8
  %142 = call i32 @cmdq_print(%struct.cmdq_item* %140, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %141)
  br label %151

143:                                              ; preds = %130
  %144 = load %struct.client*, %struct.client** %7, align 8
  %145 = icmp ne %struct.client* %144, null
  br i1 %145, label %146, label %150

146:                                              ; preds = %143
  %147 = load %struct.client*, %struct.client** %7, align 8
  %148 = load i8*, i8** %13, align 8
  %149 = call i32 @status_message_set(%struct.client* %147, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %148)
  br label %150

150:                                              ; preds = %146, %143
  br label %151

151:                                              ; preds = %150, %139
  %152 = load i8*, i8** %13, align 8
  %153 = call i32 @free(i8* %152)
  %154 = load %struct.format_tree*, %struct.format_tree** %15, align 8
  %155 = call i32 @format_free(%struct.format_tree* %154)
  %156 = load i32, i32* @CMD_RETURN_NORMAL, align 4
  store i32 %156, i32* %3, align 4
  br label %157

157:                                              ; preds = %151, %124, %58, %47, %40
  %158 = load i32, i32* %3, align 4
  ret i32 %158
}

declare dso_local i64 @args_has(%struct.args*, i8 signext) #1

declare dso_local i64 @window_pane_start_input(%struct.window_pane*, %struct.cmdq_item*, i8**) #1

declare dso_local i32 @cmdq_error(%struct.cmdq_item*, i8*, ...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @args_get(%struct.args*, i8 signext) #1

declare dso_local %struct.client* @cmd_find_client(%struct.cmdq_item*, i8*, i32) #1

declare dso_local %struct.client* @cmd_find_best_client(%struct.session*) #1

declare dso_local %struct.format_tree* @format_create(i32, %struct.cmdq_item*, i32, i32) #1

declare dso_local i32 @format_defaults(%struct.format_tree*, %struct.client*, %struct.session*, %struct.winlink*, %struct.window_pane*) #1

declare dso_local i32 @format_each(%struct.format_tree*, i32, %struct.cmdq_item*) #1

declare dso_local i8* @format_expand_time(%struct.format_tree*, i8*) #1

declare dso_local i32 @cmdq_print(%struct.cmdq_item*, i8*, i8*) #1

declare dso_local i32 @status_message_set(%struct.client*, i8*, i8*) #1

declare dso_local i32 @format_free(%struct.format_tree*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
