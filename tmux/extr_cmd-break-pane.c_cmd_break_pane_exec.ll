; ModuleID = '/home/carl/AnghaBench/tmux/extr_cmd-break-pane.c_cmd_break_pane_exec.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_cmd-break-pane.c_cmd_break_pane_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd = type { %struct.args* }
%struct.args = type { i32 }
%struct.cmdq_item = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, %struct.session* }
%struct.session = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.window_pane*, %struct.session*, %struct.winlink* }
%struct.window_pane = type { i32, i32, %struct.window* }
%struct.window = type { i32, %struct.client*, %struct.window_pane*, i32, i32, i32 }
%struct.client = type { i32 }
%struct.winlink = type { i32, %struct.window* }
%struct.TYPE_4__ = type { %struct.cmd_find_state }
%struct.cmd_find_state = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"index %d already in use\00", align 1
@CMD_RETURN_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"can't break with only one pane\00", align 1
@entry = common dso_local global i32 0, align 4
@PANE_STYLECHANGED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"automatic-rename\00", align 1
@PANE_CHANGED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"base-index\00", align 1
@BREAK_PANE_TEMPLATE = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@CMD_RETURN_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmd*, %struct.cmdq_item*)* @cmd_break_pane_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_break_pane_exec(%struct.cmd* %0, %struct.cmdq_item* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cmd*, align 8
  %5 = alloca %struct.cmdq_item*, align 8
  %6 = alloca %struct.args*, align 8
  %7 = alloca %struct.cmd_find_state*, align 8
  %8 = alloca %struct.client*, align 8
  %9 = alloca %struct.winlink*, align 8
  %10 = alloca %struct.session*, align 8
  %11 = alloca %struct.session*, align 8
  %12 = alloca %struct.window_pane*, align 8
  %13 = alloca %struct.window*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  store %struct.cmd* %0, %struct.cmd** %4, align 8
  store %struct.cmdq_item* %1, %struct.cmdq_item** %5, align 8
  %19 = load %struct.cmd*, %struct.cmd** %4, align 8
  %20 = getelementptr inbounds %struct.cmd, %struct.cmd* %19, i32 0, i32 0
  %21 = load %struct.args*, %struct.args** %20, align 8
  store %struct.args* %21, %struct.args** %6, align 8
  %22 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %23 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %22, i32 0, i32 2
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store %struct.cmd_find_state* %25, %struct.cmd_find_state** %7, align 8
  %26 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %27 = call %struct.client* @cmd_find_client(%struct.cmdq_item* %26, i32* null, i32 1)
  store %struct.client* %27, %struct.client** %8, align 8
  %28 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %29 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 2
  %31 = load %struct.winlink*, %struct.winlink** %30, align 8
  store %struct.winlink* %31, %struct.winlink** %9, align 8
  %32 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %33 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load %struct.session*, %struct.session** %34, align 8
  store %struct.session* %35, %struct.session** %10, align 8
  %36 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %37 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load %struct.session*, %struct.session** %38, align 8
  store %struct.session* %39, %struct.session** %11, align 8
  %40 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %41 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load %struct.window_pane*, %struct.window_pane** %42, align 8
  store %struct.window_pane* %43, %struct.window_pane** %12, align 8
  %44 = load %struct.winlink*, %struct.winlink** %9, align 8
  %45 = getelementptr inbounds %struct.winlink, %struct.winlink* %44, i32 0, i32 1
  %46 = load %struct.window*, %struct.window** %45, align 8
  store %struct.window* %46, %struct.window** %13, align 8
  %47 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %48 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %16, align 4
  %51 = load i32, i32* %16, align 4
  %52 = icmp ne i32 %51, -1
  br i1 %52, label %53, label %64

53:                                               ; preds = %2
  %54 = load %struct.session*, %struct.session** %11, align 8
  %55 = getelementptr inbounds %struct.session, %struct.session* %54, i32 0, i32 1
  %56 = load i32, i32* %16, align 4
  %57 = call i32* @winlink_find_by_index(i32* %55, i32 %56)
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %64

59:                                               ; preds = %53
  %60 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %61 = load i32, i32* %16, align 4
  %62 = call i32 (%struct.cmdq_item*, i8*, ...) @cmdq_error(%struct.cmdq_item* %60, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* @CMD_RETURN_ERROR, align 4
  store i32 %63, i32* %3, align 4
  br label %216

64:                                               ; preds = %53, %2
  %65 = load %struct.window*, %struct.window** %13, align 8
  %66 = call i32 @window_count_panes(%struct.window* %65)
  %67 = icmp eq i32 %66, 1
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %70 = call i32 (%struct.cmdq_item*, i8*, ...) @cmdq_error(%struct.cmdq_item* %69, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %71 = load i32, i32* @CMD_RETURN_ERROR, align 4
  store i32 %71, i32* %3, align 4
  br label %216

72:                                               ; preds = %64
  %73 = load %struct.window*, %struct.window** %13, align 8
  %74 = call i32 @server_unzoom_window(%struct.window* %73)
  %75 = load %struct.window*, %struct.window** %13, align 8
  %76 = getelementptr inbounds %struct.window, %struct.window* %75, i32 0, i32 3
  %77 = load %struct.window_pane*, %struct.window_pane** %12, align 8
  %78 = load i32, i32* @entry, align 4
  %79 = call i32 @TAILQ_REMOVE(i32* %76, %struct.window_pane* %77, i32 %78)
  %80 = load %struct.window*, %struct.window** %13, align 8
  %81 = load %struct.window_pane*, %struct.window_pane** %12, align 8
  %82 = call i32 @window_lost_pane(%struct.window* %80, %struct.window_pane* %81)
  %83 = load %struct.window_pane*, %struct.window_pane** %12, align 8
  %84 = call i32 @layout_close_pane(%struct.window_pane* %83)
  %85 = load %struct.window*, %struct.window** %13, align 8
  %86 = getelementptr inbounds %struct.window, %struct.window* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.window*, %struct.window** %13, align 8
  %89 = getelementptr inbounds %struct.window, %struct.window* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 4
  %91 = call %struct.window* @window_create(i32 %87, i32 %90)
  %92 = load %struct.window_pane*, %struct.window_pane** %12, align 8
  %93 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %92, i32 0, i32 2
  store %struct.window* %91, %struct.window** %93, align 8
  store %struct.window* %91, %struct.window** %13, align 8
  %94 = load %struct.window_pane*, %struct.window_pane** %12, align 8
  %95 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.window*, %struct.window** %13, align 8
  %98 = getelementptr inbounds %struct.window, %struct.window* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @options_set_parent(i32 %96, i32 %99)
  %101 = load i32, i32* @PANE_STYLECHANGED, align 4
  %102 = load %struct.window_pane*, %struct.window_pane** %12, align 8
  %103 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = or i32 %104, %101
  store i32 %105, i32* %103, align 8
  %106 = load %struct.window*, %struct.window** %13, align 8
  %107 = getelementptr inbounds %struct.window, %struct.window* %106, i32 0, i32 3
  %108 = load %struct.window_pane*, %struct.window_pane** %12, align 8
  %109 = load i32, i32* @entry, align 4
  %110 = call i32 @TAILQ_INSERT_HEAD(i32* %107, %struct.window_pane* %108, i32 %109)
  %111 = load %struct.window_pane*, %struct.window_pane** %12, align 8
  %112 = load %struct.window*, %struct.window** %13, align 8
  %113 = getelementptr inbounds %struct.window, %struct.window* %112, i32 0, i32 2
  store %struct.window_pane* %111, %struct.window_pane** %113, align 8
  %114 = load %struct.client*, %struct.client** %8, align 8
  %115 = load %struct.window*, %struct.window** %13, align 8
  %116 = getelementptr inbounds %struct.window, %struct.window* %115, i32 0, i32 1
  store %struct.client* %114, %struct.client** %116, align 8
  %117 = load %struct.args*, %struct.args** %6, align 8
  %118 = call i64 @args_has(%struct.args* %117, i8 signext 110)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %128, label %120

120:                                              ; preds = %72
  %121 = load %struct.window*, %struct.window** %13, align 8
  %122 = call i8* @default_window_name(%struct.window* %121)
  store i8* %122, i8** %14, align 8
  %123 = load %struct.window*, %struct.window** %13, align 8
  %124 = load i8*, i8** %14, align 8
  %125 = call i32 @window_set_name(%struct.window* %123, i8* %124)
  %126 = load i8*, i8** %14, align 8
  %127 = call i32 @free(i8* %126)
  br label %137

128:                                              ; preds = %72
  %129 = load %struct.window*, %struct.window** %13, align 8
  %130 = load %struct.args*, %struct.args** %6, align 8
  %131 = call i8* @args_get(%struct.args* %130, float 1.100000e+02)
  %132 = call i32 @window_set_name(%struct.window* %129, i8* %131)
  %133 = load %struct.window*, %struct.window** %13, align 8
  %134 = getelementptr inbounds %struct.window, %struct.window* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @options_set_number(i32 %135, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 0)
  br label %137

137:                                              ; preds = %128, %120
  %138 = load %struct.window*, %struct.window** %13, align 8
  %139 = load %struct.window_pane*, %struct.window_pane** %12, align 8
  %140 = call i32 @layout_init(%struct.window* %138, %struct.window_pane* %139)
  %141 = load i32, i32* @PANE_CHANGED, align 4
  %142 = load %struct.window_pane*, %struct.window_pane** %12, align 8
  %143 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = or i32 %144, %141
  store i32 %145, i32* %143, align 8
  %146 = load i32, i32* %16, align 4
  %147 = icmp eq i32 %146, -1
  br i1 %147, label %148, label %154

148:                                              ; preds = %137
  %149 = load %struct.session*, %struct.session** %11, align 8
  %150 = getelementptr inbounds %struct.session, %struct.session* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @options_get_number(i32 %151, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %153 = sub nsw i32 -1, %152
  store i32 %153, i32* %16, align 4
  br label %154

154:                                              ; preds = %148, %137
  %155 = load %struct.session*, %struct.session** %11, align 8
  %156 = load %struct.window*, %struct.window** %13, align 8
  %157 = load i32, i32* %16, align 4
  %158 = call %struct.winlink* @session_attach(%struct.session* %155, %struct.window* %156, i32 %157, i8** %15)
  store %struct.winlink* %158, %struct.winlink** %9, align 8
  %159 = load %struct.cmd*, %struct.cmd** %4, align 8
  %160 = getelementptr inbounds %struct.cmd, %struct.cmd* %159, i32 0, i32 0
  %161 = load %struct.args*, %struct.args** %160, align 8
  %162 = call i64 @args_has(%struct.args* %161, i8 signext 100)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %173, label %164

164:                                              ; preds = %154
  %165 = load %struct.session*, %struct.session** %11, align 8
  %166 = load %struct.winlink*, %struct.winlink** %9, align 8
  %167 = getelementptr inbounds %struct.winlink, %struct.winlink* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @session_select(%struct.session* %165, i32 %168)
  %170 = load %struct.cmd_find_state*, %struct.cmd_find_state** %7, align 8
  %171 = load %struct.session*, %struct.session** %11, align 8
  %172 = call i32 @cmd_find_from_session(%struct.cmd_find_state* %170, %struct.session* %171, i32 0)
  br label %173

173:                                              ; preds = %164, %154
  %174 = load %struct.session*, %struct.session** %10, align 8
  %175 = call i32 @server_redraw_session(%struct.session* %174)
  %176 = load %struct.session*, %struct.session** %10, align 8
  %177 = load %struct.session*, %struct.session** %11, align 8
  %178 = icmp ne %struct.session* %176, %177
  br i1 %178, label %179, label %182

179:                                              ; preds = %173
  %180 = load %struct.session*, %struct.session** %11, align 8
  %181 = call i32 @server_redraw_session(%struct.session* %180)
  br label %182

182:                                              ; preds = %179, %173
  %183 = load %struct.session*, %struct.session** %10, align 8
  %184 = call i32 @server_status_session_group(%struct.session* %183)
  %185 = load %struct.session*, %struct.session** %10, align 8
  %186 = load %struct.session*, %struct.session** %11, align 8
  %187 = icmp ne %struct.session* %185, %186
  br i1 %187, label %188, label %191

188:                                              ; preds = %182
  %189 = load %struct.session*, %struct.session** %11, align 8
  %190 = call i32 @server_status_session_group(%struct.session* %189)
  br label %191

191:                                              ; preds = %188, %182
  %192 = load %struct.args*, %struct.args** %6, align 8
  %193 = call i64 @args_has(%struct.args* %192, i8 signext 80)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %214

195:                                              ; preds = %191
  %196 = load %struct.args*, %struct.args** %6, align 8
  %197 = call i8* @args_get(%struct.args* %196, float 7.000000e+01)
  store i8* %197, i8** %17, align 8
  %198 = icmp eq i8* %197, null
  br i1 %198, label %199, label %201

199:                                              ; preds = %195
  %200 = load i8*, i8** @BREAK_PANE_TEMPLATE, align 8
  store i8* %200, i8** %17, align 8
  br label %201

201:                                              ; preds = %199, %195
  %202 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %203 = load i8*, i8** %17, align 8
  %204 = load %struct.client*, %struct.client** %8, align 8
  %205 = load %struct.session*, %struct.session** %11, align 8
  %206 = load %struct.winlink*, %struct.winlink** %9, align 8
  %207 = load %struct.window_pane*, %struct.window_pane** %12, align 8
  %208 = call i8* @format_single(%struct.cmdq_item* %202, i8* %203, %struct.client* %204, %struct.session* %205, %struct.winlink* %206, %struct.window_pane* %207)
  store i8* %208, i8** %18, align 8
  %209 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %210 = load i8*, i8** %18, align 8
  %211 = call i32 @cmdq_print(%struct.cmdq_item* %209, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %210)
  %212 = load i8*, i8** %18, align 8
  %213 = call i32 @free(i8* %212)
  br label %214

214:                                              ; preds = %201, %191
  %215 = load i32, i32* @CMD_RETURN_NORMAL, align 4
  store i32 %215, i32* %3, align 4
  br label %216

216:                                              ; preds = %214, %68, %59
  %217 = load i32, i32* %3, align 4
  ret i32 %217
}

declare dso_local %struct.client* @cmd_find_client(%struct.cmdq_item*, i32*, i32) #1

declare dso_local i32* @winlink_find_by_index(i32*, i32) #1

declare dso_local i32 @cmdq_error(%struct.cmdq_item*, i8*, ...) #1

declare dso_local i32 @window_count_panes(%struct.window*) #1

declare dso_local i32 @server_unzoom_window(%struct.window*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.window_pane*, i32) #1

declare dso_local i32 @window_lost_pane(%struct.window*, %struct.window_pane*) #1

declare dso_local i32 @layout_close_pane(%struct.window_pane*) #1

declare dso_local %struct.window* @window_create(i32, i32) #1

declare dso_local i32 @options_set_parent(i32, i32) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(i32*, %struct.window_pane*, i32) #1

declare dso_local i64 @args_has(%struct.args*, i8 signext) #1

declare dso_local i8* @default_window_name(%struct.window*) #1

declare dso_local i32 @window_set_name(%struct.window*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @args_get(%struct.args*, float) #1

declare dso_local i32 @options_set_number(i32, i8*, i32) #1

declare dso_local i32 @layout_init(%struct.window*, %struct.window_pane*) #1

declare dso_local i32 @options_get_number(i32, i8*) #1

declare dso_local %struct.winlink* @session_attach(%struct.session*, %struct.window*, i32, i8**) #1

declare dso_local i32 @session_select(%struct.session*, i32) #1

declare dso_local i32 @cmd_find_from_session(%struct.cmd_find_state*, %struct.session*, i32) #1

declare dso_local i32 @server_redraw_session(%struct.session*) #1

declare dso_local i32 @server_status_session_group(%struct.session*) #1

declare dso_local i8* @format_single(%struct.cmdq_item*, i8*, %struct.client*, %struct.session*, %struct.winlink*, %struct.window_pane*) #1

declare dso_local i32 @cmdq_print(%struct.cmdq_item*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
