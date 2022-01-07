; ModuleID = '/home/carl/AnghaBench/tmux/extr_cmd-show-options.c_cmd_show_options_exec.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_cmd-show-options.c_cmd_show_options_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd = type { i32*, %struct.args* }
%struct.args = type { i64, i32* }
%struct.cmdq_item = type { %struct.cmd_find_state }
%struct.cmd_find_state = type { %struct.winlink*, %struct.session* }
%struct.winlink = type { i32 }
%struct.session = type { i32 }
%struct.client = type { i32 }
%struct.options = type { i32 }
%struct.options_entry = type { i32 }

@cmd_show_window_options_entry = common dso_local global i32 0, align 4
@OPTIONS_TABLE_NONE = common dso_local global i32 0, align 4
@CMD_RETURN_NORMAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@CMD_RETURN_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"ambiguous option: %s\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"invalid option: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmd*, %struct.cmdq_item*)* @cmd_show_options_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_show_options_exec(%struct.cmd* %0, %struct.cmdq_item* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cmd*, align 8
  %5 = alloca %struct.cmdq_item*, align 8
  %6 = alloca %struct.args*, align 8
  %7 = alloca %struct.cmd_find_state*, align 8
  %8 = alloca %struct.client*, align 8
  %9 = alloca %struct.session*, align 8
  %10 = alloca %struct.winlink*, align 8
  %11 = alloca %struct.options*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.options_entry*, align 8
  store %struct.cmd* %0, %struct.cmd** %4, align 8
  store %struct.cmdq_item* %1, %struct.cmdq_item** %5, align 8
  %21 = load %struct.cmd*, %struct.cmd** %4, align 8
  %22 = getelementptr inbounds %struct.cmd, %struct.cmd* %21, i32 0, i32 1
  %23 = load %struct.args*, %struct.args** %22, align 8
  store %struct.args* %23, %struct.args** %6, align 8
  %24 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %25 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %24, i32 0, i32 0
  store %struct.cmd_find_state* %25, %struct.cmd_find_state** %7, align 8
  %26 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %27 = call %struct.client* @cmd_find_client(%struct.cmdq_item* %26, i32* null, i32 1)
  store %struct.client* %27, %struct.client** %8, align 8
  %28 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %29 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.cmd_find_state, %struct.cmd_find_state* %29, i32 0, i32 1
  %31 = load %struct.session*, %struct.session** %30, align 8
  store %struct.session* %31, %struct.session** %9, align 8
  %32 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %33 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.cmd_find_state, %struct.cmd_find_state* %33, i32 0, i32 0
  %35 = load %struct.winlink*, %struct.winlink** %34, align 8
  store %struct.winlink* %35, %struct.winlink** %10, align 8
  store i8* null, i8** %13, align 8
  %36 = load %struct.cmd*, %struct.cmd** %4, align 8
  %37 = getelementptr inbounds %struct.cmd, %struct.cmd* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = icmp eq i32* %38, @cmd_show_window_options_entry
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %15, align 4
  %41 = load %struct.args*, %struct.args** %6, align 8
  %42 = getelementptr inbounds %struct.args, %struct.args* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %72

45:                                               ; preds = %2
  %46 = load %struct.args*, %struct.args** %6, align 8
  %47 = load i32, i32* %15, align 4
  %48 = load %struct.cmd_find_state*, %struct.cmd_find_state** %7, align 8
  %49 = call i32 @options_scope_from_flags(%struct.args* %46, i32 %47, %struct.cmd_find_state* %48, %struct.options** %11, i8** %14)
  store i32 %49, i32* %19, align 4
  %50 = load i32, i32* %19, align 4
  %51 = load i32, i32* @OPTIONS_TABLE_NONE, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %66

53:                                               ; preds = %45
  %54 = load %struct.args*, %struct.args** %6, align 8
  %55 = call i64 @args_has(%struct.args* %54, i8 signext 113)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = load i32, i32* @CMD_RETURN_NORMAL, align 4
  store i32 %58, i32* %3, align 4
  br label %161

59:                                               ; preds = %53
  %60 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %61 = load i8*, i8** %14, align 8
  %62 = call i32 @cmdq_error(%struct.cmdq_item* %60, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %61)
  %63 = load i8*, i8** %14, align 8
  %64 = call i32 @free(i8* %63)
  %65 = load i32, i32* @CMD_RETURN_ERROR, align 4
  store i32 %65, i32* %3, align 4
  br label %161

66:                                               ; preds = %45
  %67 = load %struct.cmd*, %struct.cmd** %4, align 8
  %68 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %69 = load i32, i32* %19, align 4
  %70 = load %struct.options*, %struct.options** %11, align 8
  %71 = call i32 @cmd_show_options_all(%struct.cmd* %67, %struct.cmdq_item* %68, i32 %69, %struct.options* %70)
  store i32 %71, i32* %3, align 4
  br label %161

72:                                               ; preds = %2
  %73 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %74 = load %struct.args*, %struct.args** %6, align 8
  %75 = getelementptr inbounds %struct.args, %struct.args* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.client*, %struct.client** %8, align 8
  %80 = load %struct.session*, %struct.session** %9, align 8
  %81 = load %struct.winlink*, %struct.winlink** %10, align 8
  %82 = call i8* @format_single(%struct.cmdq_item* %73, i32 %78, %struct.client* %79, %struct.session* %80, %struct.winlink* %81, i32* null)
  store i8* %82, i8** %12, align 8
  %83 = load i8*, i8** %12, align 8
  %84 = call i8* @options_match(i8* %83, i32* %16, i32* %17)
  store i8* %84, i8** %13, align 8
  %85 = load i8*, i8** %13, align 8
  %86 = icmp eq i8* %85, null
  br i1 %86, label %87, label %104

87:                                               ; preds = %72
  %88 = load %struct.args*, %struct.args** %6, align 8
  %89 = call i64 @args_has(%struct.args* %88, i8 signext 113)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  br label %155

92:                                               ; preds = %87
  %93 = load i32, i32* %17, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %92
  %96 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %97 = load i8*, i8** %12, align 8
  %98 = call i32 @cmdq_error(%struct.cmdq_item* %96, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %97)
  br label %103

99:                                               ; preds = %92
  %100 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %101 = load i8*, i8** %12, align 8
  %102 = call i32 @cmdq_error(%struct.cmdq_item* %100, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %101)
  br label %103

103:                                              ; preds = %99, %95
  br label %155

104:                                              ; preds = %72
  %105 = load %struct.args*, %struct.args** %6, align 8
  %106 = load i32, i32* %15, align 4
  %107 = load i8*, i8** %13, align 8
  %108 = load %struct.cmd_find_state*, %struct.cmd_find_state** %7, align 8
  %109 = call i32 @options_scope_from_name(%struct.args* %105, i32 %106, i8* %107, %struct.cmd_find_state* %108, %struct.options** %11, i8** %14)
  store i32 %109, i32* %19, align 4
  %110 = load i32, i32* %19, align 4
  %111 = load i32, i32* @OPTIONS_TABLE_NONE, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %124

113:                                              ; preds = %104
  %114 = load %struct.args*, %struct.args** %6, align 8
  %115 = call i64 @args_has(%struct.args* %114, i8 signext 113)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %113
  br label %155

118:                                              ; preds = %113
  %119 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %120 = load i8*, i8** %14, align 8
  %121 = call i32 @cmdq_error(%struct.cmdq_item* %119, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %120)
  %122 = load i8*, i8** %14, align 8
  %123 = call i32 @free(i8* %122)
  br label %155

124:                                              ; preds = %104
  %125 = load %struct.options*, %struct.options** %11, align 8
  %126 = load i8*, i8** %13, align 8
  %127 = call %struct.options_entry* @options_get_only(%struct.options* %125, i8* %126)
  store %struct.options_entry* %127, %struct.options_entry** %20, align 8
  %128 = load %struct.args*, %struct.args** %6, align 8
  %129 = call i64 @args_has(%struct.args* %128, i8 signext 65)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %138

131:                                              ; preds = %124
  %132 = load %struct.options_entry*, %struct.options_entry** %20, align 8
  %133 = icmp eq %struct.options_entry* %132, null
  br i1 %133, label %134, label %138

134:                                              ; preds = %131
  %135 = load %struct.options*, %struct.options** %11, align 8
  %136 = load i8*, i8** %13, align 8
  %137 = call %struct.options_entry* @options_get(%struct.options* %135, i8* %136)
  store %struct.options_entry* %137, %struct.options_entry** %20, align 8
  store i32 1, i32* %18, align 4
  br label %139

138:                                              ; preds = %131, %124
  store i32 0, i32* %18, align 4
  br label %139

139:                                              ; preds = %138, %134
  %140 = load %struct.options_entry*, %struct.options_entry** %20, align 8
  %141 = icmp ne %struct.options_entry* %140, null
  br i1 %141, label %142, label %149

142:                                              ; preds = %139
  %143 = load %struct.cmd*, %struct.cmd** %4, align 8
  %144 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %145 = load %struct.options_entry*, %struct.options_entry** %20, align 8
  %146 = load i32, i32* %16, align 4
  %147 = load i32, i32* %18, align 4
  %148 = call i32 @cmd_show_options_print(%struct.cmd* %143, %struct.cmdq_item* %144, %struct.options_entry* %145, i32 %146, i32 %147)
  br label %149

149:                                              ; preds = %142, %139
  %150 = load i8*, i8** %13, align 8
  %151 = call i32 @free(i8* %150)
  %152 = load i8*, i8** %12, align 8
  %153 = call i32 @free(i8* %152)
  %154 = load i32, i32* @CMD_RETURN_NORMAL, align 4
  store i32 %154, i32* %3, align 4
  br label %161

155:                                              ; preds = %118, %117, %103, %91
  %156 = load i8*, i8** %13, align 8
  %157 = call i32 @free(i8* %156)
  %158 = load i8*, i8** %12, align 8
  %159 = call i32 @free(i8* %158)
  %160 = load i32, i32* @CMD_RETURN_ERROR, align 4
  store i32 %160, i32* %3, align 4
  br label %161

161:                                              ; preds = %155, %149, %66, %59, %57
  %162 = load i32, i32* %3, align 4
  ret i32 %162
}

declare dso_local %struct.client* @cmd_find_client(%struct.cmdq_item*, i32*, i32) #1

declare dso_local i32 @options_scope_from_flags(%struct.args*, i32, %struct.cmd_find_state*, %struct.options**, i8**) #1

declare dso_local i64 @args_has(%struct.args*, i8 signext) #1

declare dso_local i32 @cmdq_error(%struct.cmdq_item*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @cmd_show_options_all(%struct.cmd*, %struct.cmdq_item*, i32, %struct.options*) #1

declare dso_local i8* @format_single(%struct.cmdq_item*, i32, %struct.client*, %struct.session*, %struct.winlink*, i32*) #1

declare dso_local i8* @options_match(i8*, i32*, i32*) #1

declare dso_local i32 @options_scope_from_name(%struct.args*, i32, i8*, %struct.cmd_find_state*, %struct.options**, i8**) #1

declare dso_local %struct.options_entry* @options_get_only(%struct.options*, i8*) #1

declare dso_local %struct.options_entry* @options_get(%struct.options*, i8*) #1

declare dso_local i32 @cmd_show_options_print(%struct.cmd*, %struct.cmdq_item*, %struct.options_entry*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
