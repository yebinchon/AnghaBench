; ModuleID = '/home/carl/AnghaBench/tmux/extr_cmd-select-window.c_cmd_select_window_exec.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_cmd-select-window.c_cmd_select_window_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd = type { i32, i32* }
%struct.cmdq_item = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.session*, %struct.winlink* }
%struct.session = type { %struct.winlink* }
%struct.winlink = type { i32 }
%struct.TYPE_3__ = type { %struct.cmd_find_state }
%struct.cmd_find_state = type { %struct.session* }

@cmd_next_window_entry = common dso_local global i32 0, align 4
@cmd_previous_window_entry = common dso_local global i32 0, align 4
@cmd_last_window_entry = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"no next window\00", align 1
@CMD_RETURN_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"no previous window\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"no last window\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"after-select-window\00", align 1
@CMD_RETURN_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmd*, %struct.cmdq_item*)* @cmd_select_window_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_select_window_exec(%struct.cmd* %0, %struct.cmdq_item* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cmd*, align 8
  %5 = alloca %struct.cmdq_item*, align 8
  %6 = alloca %struct.cmd_find_state*, align 8
  %7 = alloca %struct.winlink*, align 8
  %8 = alloca %struct.session*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.cmd* %0, %struct.cmd** %4, align 8
  store %struct.cmdq_item* %1, %struct.cmdq_item** %5, align 8
  %13 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %14 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store %struct.cmd_find_state* %16, %struct.cmd_find_state** %6, align 8
  %17 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %18 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load %struct.winlink*, %struct.winlink** %19, align 8
  store %struct.winlink* %20, %struct.winlink** %7, align 8
  %21 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %22 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.session*, %struct.session** %23, align 8
  store %struct.session* %24, %struct.session** %8, align 8
  %25 = load %struct.cmd*, %struct.cmd** %4, align 8
  %26 = getelementptr inbounds %struct.cmd, %struct.cmd* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = icmp eq i32* %27, @cmd_next_window_entry
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %9, align 4
  %30 = load %struct.cmd*, %struct.cmd** %4, align 8
  %31 = getelementptr inbounds %struct.cmd, %struct.cmd* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @args_has(i32 %32, i8 signext 110)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %2
  store i32 1, i32* %9, align 4
  br label %36

36:                                               ; preds = %35, %2
  %37 = load %struct.cmd*, %struct.cmd** %4, align 8
  %38 = getelementptr inbounds %struct.cmd, %struct.cmd* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = icmp eq i32* %39, @cmd_previous_window_entry
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %10, align 4
  %42 = load %struct.cmd*, %struct.cmd** %4, align 8
  %43 = getelementptr inbounds %struct.cmd, %struct.cmd* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @args_has(i32 %44, i8 signext 112)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %36
  store i32 1, i32* %10, align 4
  br label %48

48:                                               ; preds = %47, %36
  %49 = load %struct.cmd*, %struct.cmd** %4, align 8
  %50 = getelementptr inbounds %struct.cmd, %struct.cmd* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = icmp eq i32* %51, @cmd_last_window_entry
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %11, align 4
  %54 = load %struct.cmd*, %struct.cmd** %4, align 8
  %55 = getelementptr inbounds %struct.cmd, %struct.cmd* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @args_has(i32 %56, i8 signext 108)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %48
  store i32 1, i32* %11, align 4
  br label %60

60:                                               ; preds = %59, %48
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %69, label %63

63:                                               ; preds = %60
  %64 = load i32, i32* %10, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %63
  %67 = load i32, i32* %11, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %119

69:                                               ; preds = %66, %63, %60
  %70 = load %struct.cmd*, %struct.cmd** %4, align 8
  %71 = getelementptr inbounds %struct.cmd, %struct.cmd* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @args_has(i32 %72, i8 signext 97)
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %69
  %77 = load %struct.session*, %struct.session** %8, align 8
  %78 = load i32, i32* %12, align 4
  %79 = call i64 @session_next(%struct.session* %77, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %76
  %82 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %83 = call i32 @cmdq_error(%struct.cmdq_item* %82, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %84 = load i32, i32* @CMD_RETURN_ERROR, align 4
  store i32 %84, i32* %3, align 4
  br label %173

85:                                               ; preds = %76
  br label %109

86:                                               ; preds = %69
  %87 = load i32, i32* %10, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %86
  %90 = load %struct.session*, %struct.session** %8, align 8
  %91 = load i32, i32* %12, align 4
  %92 = call i64 @session_previous(%struct.session* %90, i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %89
  %95 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %96 = call i32 @cmdq_error(%struct.cmdq_item* %95, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %97 = load i32, i32* @CMD_RETURN_ERROR, align 4
  store i32 %97, i32* %3, align 4
  br label %173

98:                                               ; preds = %89
  br label %108

99:                                               ; preds = %86
  %100 = load %struct.session*, %struct.session** %8, align 8
  %101 = call i64 @session_last(%struct.session* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %99
  %104 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %105 = call i32 @cmdq_error(%struct.cmdq_item* %104, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %106 = load i32, i32* @CMD_RETURN_ERROR, align 4
  store i32 %106, i32* %3, align 4
  br label %173

107:                                              ; preds = %99
  br label %108

108:                                              ; preds = %107, %98
  br label %109

109:                                              ; preds = %108, %85
  %110 = load %struct.cmd_find_state*, %struct.cmd_find_state** %6, align 8
  %111 = load %struct.session*, %struct.session** %8, align 8
  %112 = call i32 @cmd_find_from_session(%struct.cmd_find_state* %110, %struct.session* %111, i32 0)
  %113 = load %struct.session*, %struct.session** %8, align 8
  %114 = call i32 @server_redraw_session(%struct.session* %113)
  %115 = load %struct.session*, %struct.session** %8, align 8
  %116 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %117 = load %struct.cmd_find_state*, %struct.cmd_find_state** %6, align 8
  %118 = call i32 @cmdq_insert_hook(%struct.session* %115, %struct.cmdq_item* %116, %struct.cmd_find_state* %117, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  br label %170

119:                                              ; preds = %66
  %120 = load %struct.cmd*, %struct.cmd** %4, align 8
  %121 = getelementptr inbounds %struct.cmd, %struct.cmd* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @args_has(i32 %122, i8 signext 84)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %151

125:                                              ; preds = %119
  %126 = load %struct.winlink*, %struct.winlink** %7, align 8
  %127 = load %struct.session*, %struct.session** %8, align 8
  %128 = getelementptr inbounds %struct.session, %struct.session* %127, i32 0, i32 0
  %129 = load %struct.winlink*, %struct.winlink** %128, align 8
  %130 = icmp eq %struct.winlink* %126, %129
  br i1 %130, label %131, label %151

131:                                              ; preds = %125
  %132 = load %struct.session*, %struct.session** %8, align 8
  %133 = call i64 @session_last(%struct.session* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %131
  %136 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %137 = call i32 @cmdq_error(%struct.cmdq_item* %136, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %173

138:                                              ; preds = %131
  %139 = load %struct.cmd_find_state*, %struct.cmd_find_state** %6, align 8
  %140 = getelementptr inbounds %struct.cmd_find_state, %struct.cmd_find_state* %139, i32 0, i32 0
  %141 = load %struct.session*, %struct.session** %140, align 8
  %142 = load %struct.session*, %struct.session** %8, align 8
  %143 = icmp eq %struct.session* %141, %142
  br i1 %143, label %144, label %148

144:                                              ; preds = %138
  %145 = load %struct.cmd_find_state*, %struct.cmd_find_state** %6, align 8
  %146 = load %struct.session*, %struct.session** %8, align 8
  %147 = call i32 @cmd_find_from_session(%struct.cmd_find_state* %145, %struct.session* %146, i32 0)
  br label %148

148:                                              ; preds = %144, %138
  %149 = load %struct.session*, %struct.session** %8, align 8
  %150 = call i32 @server_redraw_session(%struct.session* %149)
  br label %165

151:                                              ; preds = %125, %119
  %152 = load %struct.session*, %struct.session** %8, align 8
  %153 = load %struct.winlink*, %struct.winlink** %7, align 8
  %154 = getelementptr inbounds %struct.winlink, %struct.winlink* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call i64 @session_select(%struct.session* %152, i32 %155)
  %157 = icmp eq i64 %156, 0
  br i1 %157, label %158, label %164

158:                                              ; preds = %151
  %159 = load %struct.cmd_find_state*, %struct.cmd_find_state** %6, align 8
  %160 = load %struct.session*, %struct.session** %8, align 8
  %161 = call i32 @cmd_find_from_session(%struct.cmd_find_state* %159, %struct.session* %160, i32 0)
  %162 = load %struct.session*, %struct.session** %8, align 8
  %163 = call i32 @server_redraw_session(%struct.session* %162)
  br label %164

164:                                              ; preds = %158, %151
  br label %165

165:                                              ; preds = %164, %148
  %166 = load %struct.session*, %struct.session** %8, align 8
  %167 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %168 = load %struct.cmd_find_state*, %struct.cmd_find_state** %6, align 8
  %169 = call i32 @cmdq_insert_hook(%struct.session* %166, %struct.cmdq_item* %167, %struct.cmd_find_state* %168, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  br label %170

170:                                              ; preds = %165, %109
  %171 = call i32 (...) @recalculate_sizes()
  %172 = load i32, i32* @CMD_RETURN_NORMAL, align 4
  store i32 %172, i32* %3, align 4
  br label %173

173:                                              ; preds = %170, %135, %103, %94, %81
  %174 = load i32, i32* %3, align 4
  ret i32 %174
}

declare dso_local i32 @args_has(i32, i8 signext) #1

declare dso_local i64 @session_next(%struct.session*, i32) #1

declare dso_local i32 @cmdq_error(%struct.cmdq_item*, i8*) #1

declare dso_local i64 @session_previous(%struct.session*, i32) #1

declare dso_local i64 @session_last(%struct.session*) #1

declare dso_local i32 @cmd_find_from_session(%struct.cmd_find_state*, %struct.session*, i32) #1

declare dso_local i32 @server_redraw_session(%struct.session*) #1

declare dso_local i32 @cmdq_insert_hook(%struct.session*, %struct.cmdq_item*, %struct.cmd_find_state*, i8*) #1

declare dso_local i64 @session_select(%struct.session*, i32) #1

declare dso_local i32 @recalculate_sizes(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
