; ModuleID = '/home/carl/AnghaBench/tmux/extr_cmd-new-window.c_cmd_new_window_exec.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_cmd-new-window.c_cmd_new_window_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd = type { %struct.args* }
%struct.args = type { i32, i32 }
%struct.cmdq_item = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, %struct.winlink*, %struct.session* }
%struct.winlink = type { i32 }
%struct.session = type { %struct.winlink* }
%struct.TYPE_3__ = type { %struct.cmd_find_state }
%struct.cmd_find_state = type { i32 }
%struct.spawn_context = type { i32, i32, i32, i8*, i32, i32, i8*, %struct.client*, %struct.session*, %struct.cmdq_item* }
%struct.client = type { i32 }
%struct.args_value = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"couldn't get a window index\00", align 1
@CMD_RETURN_ERROR = common dso_local global i32 0, align 4
@SPAWN_DETACHED = common dso_local global i32 0, align 4
@SPAWN_KILL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"create window failed: %s\00", align 1
@NEW_WINDOW_TEMPLATE = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"after-new-window\00", align 1
@CMD_RETURN_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmd*, %struct.cmdq_item*)* @cmd_new_window_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_new_window_exec(%struct.cmd* %0, %struct.cmdq_item* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cmd*, align 8
  %5 = alloca %struct.cmdq_item*, align 8
  %6 = alloca %struct.args*, align 8
  %7 = alloca %struct.cmd_find_state*, align 8
  %8 = alloca %struct.spawn_context, align 8
  %9 = alloca %struct.client*, align 8
  %10 = alloca %struct.session*, align 8
  %11 = alloca %struct.winlink*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.winlink*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.cmd_find_state, align 4
  %19 = alloca %struct.args_value*, align 8
  store %struct.cmd* %0, %struct.cmd** %4, align 8
  store %struct.cmdq_item* %1, %struct.cmdq_item** %5, align 8
  %20 = load %struct.cmd*, %struct.cmd** %4, align 8
  %21 = getelementptr inbounds %struct.cmd, %struct.cmd* %20, i32 0, i32 0
  %22 = load %struct.args*, %struct.args** %21, align 8
  store %struct.args* %22, %struct.args** %6, align 8
  %23 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %24 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %23, i32 0, i32 1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store %struct.cmd_find_state* %26, %struct.cmd_find_state** %7, align 8
  %27 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %28 = call %struct.client* @cmd_find_client(%struct.cmdq_item* %27, i32* null, i32 1)
  store %struct.client* %28, %struct.client** %9, align 8
  %29 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %30 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  %32 = load %struct.session*, %struct.session** %31, align 8
  store %struct.session* %32, %struct.session** %10, align 8
  %33 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %34 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load %struct.winlink*, %struct.winlink** %35, align 8
  store %struct.winlink* %36, %struct.winlink** %11, align 8
  %37 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %38 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %12, align 4
  store i8* null, i8** %14, align 8
  %41 = load %struct.args*, %struct.args** %6, align 8
  %42 = call i64 @args_has(%struct.args* %41, i8 signext 97)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %2
  %45 = load %struct.session*, %struct.session** %10, align 8
  %46 = load %struct.winlink*, %struct.winlink** %11, align 8
  %47 = call i32 @winlink_shuffle_up(%struct.session* %45, %struct.winlink* %46)
  store i32 %47, i32* %12, align 4
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %51 = call i32 (%struct.cmdq_item*, i8*, ...) @cmdq_error(%struct.cmdq_item* %50, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %52 = load i32, i32* @CMD_RETURN_ERROR, align 4
  store i32 %52, i32* %3, align 4
  br label %170

53:                                               ; preds = %44, %2
  %54 = call i32 @memset(%struct.spawn_context* %8, i32 0, i32 64)
  %55 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %56 = getelementptr inbounds %struct.spawn_context, %struct.spawn_context* %8, i32 0, i32 9
  store %struct.cmdq_item* %55, %struct.cmdq_item** %56, align 8
  %57 = load %struct.session*, %struct.session** %10, align 8
  %58 = getelementptr inbounds %struct.spawn_context, %struct.spawn_context* %8, i32 0, i32 8
  store %struct.session* %57, %struct.session** %58, align 8
  %59 = load %struct.client*, %struct.client** %9, align 8
  %60 = getelementptr inbounds %struct.spawn_context, %struct.spawn_context* %8, i32 0, i32 7
  store %struct.client* %59, %struct.client** %60, align 8
  %61 = load %struct.args*, %struct.args** %6, align 8
  %62 = call i8* @args_get(%struct.args* %61, float 1.100000e+02)
  %63 = getelementptr inbounds %struct.spawn_context, %struct.spawn_context* %8, i32 0, i32 6
  store i8* %62, i8** %63, align 8
  %64 = load %struct.args*, %struct.args** %6, align 8
  %65 = getelementptr inbounds %struct.args, %struct.args* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds %struct.spawn_context, %struct.spawn_context* %8, i32 0, i32 5
  store i32 %66, i32* %67, align 4
  %68 = load %struct.args*, %struct.args** %6, align 8
  %69 = getelementptr inbounds %struct.args, %struct.args* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds %struct.spawn_context, %struct.spawn_context* %8, i32 0, i32 4
  store i32 %70, i32* %71, align 8
  %72 = call i32 (...) @environ_create()
  %73 = getelementptr inbounds %struct.spawn_context, %struct.spawn_context* %8, i32 0, i32 1
  store i32 %72, i32* %73, align 4
  %74 = load %struct.args*, %struct.args** %6, align 8
  %75 = call i8* @args_first_value(%struct.args* %74, i8 signext 101, %struct.args_value** %19)
  store i8* %75, i8** %17, align 8
  br label %76

76:                                               ; preds = %79, %53
  %77 = load i8*, i8** %17, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %85

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct.spawn_context, %struct.spawn_context* %8, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i8*, i8** %17, align 8
  %83 = call i32 @environ_put(i32 %81, i8* %82)
  %84 = call i8* @args_next_value(%struct.args_value** %19)
  store i8* %84, i8** %17, align 8
  br label %76

85:                                               ; preds = %76
  %86 = load i32, i32* %12, align 4
  %87 = getelementptr inbounds %struct.spawn_context, %struct.spawn_context* %8, i32 0, i32 0
  store i32 %86, i32* %87, align 8
  %88 = load %struct.args*, %struct.args** %6, align 8
  %89 = call i8* @args_get(%struct.args* %88, float 9.900000e+01)
  %90 = getelementptr inbounds %struct.spawn_context, %struct.spawn_context* %8, i32 0, i32 3
  store i8* %89, i8** %90, align 8
  %91 = getelementptr inbounds %struct.spawn_context, %struct.spawn_context* %8, i32 0, i32 2
  store i32 0, i32* %91, align 8
  %92 = load %struct.args*, %struct.args** %6, align 8
  %93 = call i64 @args_has(%struct.args* %92, i8 signext 100)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %85
  %96 = load i32, i32* @SPAWN_DETACHED, align 4
  %97 = getelementptr inbounds %struct.spawn_context, %struct.spawn_context* %8, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = or i32 %98, %96
  store i32 %99, i32* %97, align 8
  br label %100

100:                                              ; preds = %95, %85
  %101 = load %struct.args*, %struct.args** %6, align 8
  %102 = call i64 @args_has(%struct.args* %101, i8 signext 107)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %100
  %105 = load i32, i32* @SPAWN_KILL, align 4
  %106 = getelementptr inbounds %struct.spawn_context, %struct.spawn_context* %8, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = or i32 %107, %105
  store i32 %108, i32* %106, align 8
  br label %109

109:                                              ; preds = %104, %100
  %110 = call %struct.winlink* @spawn_window(%struct.spawn_context* %8, i8** %14)
  store %struct.winlink* %110, %struct.winlink** %13, align 8
  %111 = icmp eq %struct.winlink* %110, null
  br i1 %111, label %112, label %119

112:                                              ; preds = %109
  %113 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %114 = load i8*, i8** %14, align 8
  %115 = call i32 (%struct.cmdq_item*, i8*, ...) @cmdq_error(%struct.cmdq_item* %113, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %114)
  %116 = load i8*, i8** %14, align 8
  %117 = call i32 @free(i8* %116)
  %118 = load i32, i32* @CMD_RETURN_ERROR, align 4
  store i32 %118, i32* %3, align 4
  br label %170

119:                                              ; preds = %109
  %120 = load %struct.args*, %struct.args** %6, align 8
  %121 = call i64 @args_has(%struct.args* %120, i8 signext 100)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %119
  %124 = load %struct.winlink*, %struct.winlink** %13, align 8
  %125 = load %struct.session*, %struct.session** %10, align 8
  %126 = getelementptr inbounds %struct.session, %struct.session* %125, i32 0, i32 0
  %127 = load %struct.winlink*, %struct.winlink** %126, align 8
  %128 = icmp eq %struct.winlink* %124, %127
  br i1 %128, label %129, label %135

129:                                              ; preds = %123, %119
  %130 = load %struct.cmd_find_state*, %struct.cmd_find_state** %7, align 8
  %131 = load %struct.winlink*, %struct.winlink** %13, align 8
  %132 = call i32 @cmd_find_from_winlink(%struct.cmd_find_state* %130, %struct.winlink* %131, i32 0)
  %133 = load %struct.session*, %struct.session** %10, align 8
  %134 = call i32 @server_redraw_session_group(%struct.session* %133)
  br label %138

135:                                              ; preds = %123
  %136 = load %struct.session*, %struct.session** %10, align 8
  %137 = call i32 @server_status_session_group(%struct.session* %136)
  br label %138

138:                                              ; preds = %135, %129
  %139 = load %struct.args*, %struct.args** %6, align 8
  %140 = call i64 @args_has(%struct.args* %139, i8 signext 80)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %160

142:                                              ; preds = %138
  %143 = load %struct.args*, %struct.args** %6, align 8
  %144 = call i8* @args_get(%struct.args* %143, float 7.000000e+01)
  store i8* %144, i8** %16, align 8
  %145 = icmp eq i8* %144, null
  br i1 %145, label %146, label %148

146:                                              ; preds = %142
  %147 = load i8*, i8** @NEW_WINDOW_TEMPLATE, align 8
  store i8* %147, i8** %16, align 8
  br label %148

148:                                              ; preds = %146, %142
  %149 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %150 = load i8*, i8** %16, align 8
  %151 = load %struct.client*, %struct.client** %9, align 8
  %152 = load %struct.session*, %struct.session** %10, align 8
  %153 = load %struct.winlink*, %struct.winlink** %13, align 8
  %154 = call i8* @format_single(%struct.cmdq_item* %149, i8* %150, %struct.client* %151, %struct.session* %152, %struct.winlink* %153, i32* null)
  store i8* %154, i8** %15, align 8
  %155 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %156 = load i8*, i8** %15, align 8
  %157 = call i32 @cmdq_print(%struct.cmdq_item* %155, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %156)
  %158 = load i8*, i8** %15, align 8
  %159 = call i32 @free(i8* %158)
  br label %160

160:                                              ; preds = %148, %138
  %161 = load %struct.winlink*, %struct.winlink** %13, align 8
  %162 = call i32 @cmd_find_from_winlink(%struct.cmd_find_state* %18, %struct.winlink* %161, i32 0)
  %163 = load %struct.session*, %struct.session** %10, align 8
  %164 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %165 = call i32 @cmdq_insert_hook(%struct.session* %163, %struct.cmdq_item* %164, %struct.cmd_find_state* %18, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %166 = getelementptr inbounds %struct.spawn_context, %struct.spawn_context* %8, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @environ_free(i32 %167)
  %169 = load i32, i32* @CMD_RETURN_NORMAL, align 4
  store i32 %169, i32* %3, align 4
  br label %170

170:                                              ; preds = %160, %112, %49
  %171 = load i32, i32* %3, align 4
  ret i32 %171
}

declare dso_local %struct.client* @cmd_find_client(%struct.cmdq_item*, i32*, i32) #1

declare dso_local i64 @args_has(%struct.args*, i8 signext) #1

declare dso_local i32 @winlink_shuffle_up(%struct.session*, %struct.winlink*) #1

declare dso_local i32 @cmdq_error(%struct.cmdq_item*, i8*, ...) #1

declare dso_local i32 @memset(%struct.spawn_context*, i32, i32) #1

declare dso_local i8* @args_get(%struct.args*, float) #1

declare dso_local i32 @environ_create(...) #1

declare dso_local i8* @args_first_value(%struct.args*, i8 signext, %struct.args_value**) #1

declare dso_local i32 @environ_put(i32, i8*) #1

declare dso_local i8* @args_next_value(%struct.args_value**) #1

declare dso_local %struct.winlink* @spawn_window(%struct.spawn_context*, i8**) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @cmd_find_from_winlink(%struct.cmd_find_state*, %struct.winlink*, i32) #1

declare dso_local i32 @server_redraw_session_group(%struct.session*) #1

declare dso_local i32 @server_status_session_group(%struct.session*) #1

declare dso_local i8* @format_single(%struct.cmdq_item*, i8*, %struct.client*, %struct.session*, %struct.winlink*, i32*) #1

declare dso_local i32 @cmdq_print(%struct.cmdq_item*, i8*, i8*) #1

declare dso_local i32 @cmdq_insert_hook(%struct.session*, %struct.cmdq_item*, %struct.cmd_find_state*, i8*) #1

declare dso_local i32 @environ_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
