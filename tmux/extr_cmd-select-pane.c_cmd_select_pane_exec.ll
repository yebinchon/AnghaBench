; ModuleID = '/home/carl/AnghaBench/tmux/extr_cmd-select-pane.c_cmd_select_pane_exec.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_cmd-select-pane.c_cmd_select_pane_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.window_pane* }
%struct.window_pane = type { i32, i32, i32, i32 }
%struct.cmd = type { %struct.args*, i32* }
%struct.args = type { i32 }
%struct.cmdq_item = type { %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { %struct.window_pane*, %struct.session*, %struct.winlink* }
%struct.session = type { i32 }
%struct.winlink = type { %struct.window* }
%struct.window = type { %struct.window_pane*, %struct.window_pane* }
%struct.TYPE_4__ = type { %struct.cmd_find_state }
%struct.cmd_find_state = type { i32 }
%struct.client = type { i32 }
%struct.style = type { i32 }
%struct.options_entry = type { i32 }

@cmd_last_pane_entry = common dso_local global i32 0, align 4
@window_panes = common dso_local global i32 0, align 4
@entry = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"no last pane\00", align 1
@CMD_RETURN_ERROR = common dso_local global i32 0, align 4
@PANE_INPUTOFF = common dso_local global i32 0, align 4
@CMD_RETURN_NORMAL = common dso_local global i32 0, align 4
@marked_pane = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"window-style\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"bad style: %s\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"window-active-style\00", align 1
@PANE_REDRAW = common dso_local global i32 0, align 4
@PANE_STYLECHANGED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"after-select-pane\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmd*, %struct.cmdq_item*)* @cmd_select_pane_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_select_pane_exec(%struct.cmd* %0, %struct.cmdq_item* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cmd*, align 8
  %5 = alloca %struct.cmdq_item*, align 8
  %6 = alloca %struct.args*, align 8
  %7 = alloca %struct.cmd_find_state*, align 8
  %8 = alloca %struct.client*, align 8
  %9 = alloca %struct.winlink*, align 8
  %10 = alloca %struct.window*, align 8
  %11 = alloca %struct.session*, align 8
  %12 = alloca %struct.window_pane*, align 8
  %13 = alloca %struct.window_pane*, align 8
  %14 = alloca %struct.window_pane*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.style*, align 8
  %18 = alloca %struct.options_entry*, align 8
  store %struct.cmd* %0, %struct.cmd** %4, align 8
  store %struct.cmdq_item* %1, %struct.cmdq_item** %5, align 8
  %19 = load %struct.cmd*, %struct.cmd** %4, align 8
  %20 = getelementptr inbounds %struct.cmd, %struct.cmd* %19, i32 0, i32 0
  %21 = load %struct.args*, %struct.args** %20, align 8
  store %struct.args* %21, %struct.args** %6, align 8
  %22 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %23 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store %struct.cmd_find_state* %25, %struct.cmd_find_state** %7, align 8
  %26 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %27 = call %struct.client* @cmd_find_client(%struct.cmdq_item* %26, i32* null, i32 1)
  store %struct.client* %27, %struct.client** %8, align 8
  %28 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %29 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 2
  %31 = load %struct.winlink*, %struct.winlink** %30, align 8
  store %struct.winlink* %31, %struct.winlink** %9, align 8
  %32 = load %struct.winlink*, %struct.winlink** %9, align 8
  %33 = getelementptr inbounds %struct.winlink, %struct.winlink* %32, i32 0, i32 0
  %34 = load %struct.window*, %struct.window** %33, align 8
  store %struct.window* %34, %struct.window** %10, align 8
  %35 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %36 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load %struct.session*, %struct.session** %37, align 8
  store %struct.session* %38, %struct.session** %11, align 8
  %39 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %40 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load %struct.window_pane*, %struct.window_pane** %41, align 8
  store %struct.window_pane* %42, %struct.window_pane** %12, align 8
  %43 = load %struct.cmd*, %struct.cmd** %4, align 8
  %44 = getelementptr inbounds %struct.cmd, %struct.cmd* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = icmp eq i32* %45, @cmd_last_pane_entry
  br i1 %46, label %51, label %47

47:                                               ; preds = %2
  %48 = load %struct.args*, %struct.args** %6, align 8
  %49 = call i32 @args_has(%struct.args* %48, i8 signext 108)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %145

51:                                               ; preds = %47, %2
  %52 = load %struct.window*, %struct.window** %10, align 8
  %53 = getelementptr inbounds %struct.window, %struct.window* %52, i32 0, i32 1
  %54 = load %struct.window_pane*, %struct.window_pane** %53, align 8
  store %struct.window_pane* %54, %struct.window_pane** %13, align 8
  %55 = load %struct.window_pane*, %struct.window_pane** %13, align 8
  %56 = icmp eq %struct.window_pane* %55, null
  br i1 %56, label %57, label %77

57:                                               ; preds = %51
  %58 = load %struct.window*, %struct.window** %10, align 8
  %59 = call i32 @window_count_panes(%struct.window* %58)
  %60 = icmp eq i32 %59, 2
  br i1 %60, label %61, label %77

61:                                               ; preds = %57
  %62 = load %struct.window*, %struct.window** %10, align 8
  %63 = getelementptr inbounds %struct.window, %struct.window* %62, i32 0, i32 0
  %64 = load %struct.window_pane*, %struct.window_pane** %63, align 8
  %65 = load i32, i32* @window_panes, align 4
  %66 = load i32, i32* @entry, align 4
  %67 = call %struct.window_pane* @TAILQ_PREV(%struct.window_pane* %64, i32 %65, i32 %66)
  store %struct.window_pane* %67, %struct.window_pane** %13, align 8
  %68 = load %struct.window_pane*, %struct.window_pane** %13, align 8
  %69 = icmp eq %struct.window_pane* %68, null
  br i1 %69, label %70, label %76

70:                                               ; preds = %61
  %71 = load %struct.window*, %struct.window** %10, align 8
  %72 = getelementptr inbounds %struct.window, %struct.window* %71, i32 0, i32 0
  %73 = load %struct.window_pane*, %struct.window_pane** %72, align 8
  %74 = load i32, i32* @entry, align 4
  %75 = call %struct.window_pane* @TAILQ_NEXT(%struct.window_pane* %73, i32 %74)
  store %struct.window_pane* %75, %struct.window_pane** %13, align 8
  br label %76

76:                                               ; preds = %70, %61
  br label %77

77:                                               ; preds = %76, %57, %51
  %78 = load %struct.window_pane*, %struct.window_pane** %13, align 8
  %79 = icmp eq %struct.window_pane* %78, null
  br i1 %79, label %80, label %84

80:                                               ; preds = %77
  %81 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %82 = call i32 (%struct.cmdq_item*, i8*, ...) @cmdq_error(%struct.cmdq_item* %81, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %83 = load i32, i32* @CMD_RETURN_ERROR, align 4
  store i32 %83, i32* %3, align 4
  br label %429

84:                                               ; preds = %77
  %85 = load %struct.cmd*, %struct.cmd** %4, align 8
  %86 = getelementptr inbounds %struct.cmd, %struct.cmd* %85, i32 0, i32 0
  %87 = load %struct.args*, %struct.args** %86, align 8
  %88 = call i32 @args_has(%struct.args* %87, i8 signext 101)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %84
  %91 = load i32, i32* @PANE_INPUTOFF, align 4
  %92 = xor i32 %91, -1
  %93 = load %struct.window_pane*, %struct.window_pane** %13, align 8
  %94 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = and i32 %95, %92
  store i32 %96, i32* %94, align 4
  br label %143

97:                                               ; preds = %84
  %98 = load %struct.cmd*, %struct.cmd** %4, align 8
  %99 = getelementptr inbounds %struct.cmd, %struct.cmd* %98, i32 0, i32 0
  %100 = load %struct.args*, %struct.args** %99, align 8
  %101 = call i32 @args_has(%struct.args* %100, i8 signext 100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %97
  %104 = load i32, i32* @PANE_INPUTOFF, align 4
  %105 = load %struct.window_pane*, %struct.window_pane** %13, align 8
  %106 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = or i32 %107, %104
  store i32 %108, i32* %106, align 4
  br label %142

109:                                              ; preds = %97
  %110 = load %struct.window*, %struct.window** %10, align 8
  %111 = load %struct.cmd*, %struct.cmd** %4, align 8
  %112 = getelementptr inbounds %struct.cmd, %struct.cmd* %111, i32 0, i32 0
  %113 = load %struct.args*, %struct.args** %112, align 8
  %114 = call i32 @args_has(%struct.args* %113, i8 signext 90)
  %115 = call i64 @window_push_zoom(%struct.window* %110, i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %109
  %118 = load %struct.window*, %struct.window** %10, align 8
  %119 = call i32 @server_redraw_window(%struct.window* %118)
  br label %120

120:                                              ; preds = %117, %109
  %121 = load %struct.window*, %struct.window** %10, align 8
  %122 = load %struct.window_pane*, %struct.window_pane** %13, align 8
  %123 = call i32 @window_redraw_active_switch(%struct.window* %121, %struct.window_pane* %122)
  %124 = load %struct.window*, %struct.window** %10, align 8
  %125 = load %struct.window_pane*, %struct.window_pane** %13, align 8
  %126 = call i64 @window_set_active_pane(%struct.window* %124, %struct.window_pane* %125, i32 1)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %120
  %129 = load %struct.cmd_find_state*, %struct.cmd_find_state** %7, align 8
  %130 = load %struct.winlink*, %struct.winlink** %9, align 8
  %131 = call i32 @cmd_find_from_winlink(%struct.cmd_find_state* %129, %struct.winlink* %130, i32 0)
  %132 = load %struct.window*, %struct.window** %10, align 8
  %133 = call i32 @cmd_select_pane_redraw(%struct.window* %132)
  br label %134

134:                                              ; preds = %128, %120
  %135 = load %struct.window*, %struct.window** %10, align 8
  %136 = call i64 @window_pop_zoom(%struct.window* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %134
  %139 = load %struct.window*, %struct.window** %10, align 8
  %140 = call i32 @server_redraw_window(%struct.window* %139)
  br label %141

141:                                              ; preds = %138, %134
  br label %142

142:                                              ; preds = %141, %103
  br label %143

143:                                              ; preds = %142, %90
  %144 = load i32, i32* @CMD_RETURN_NORMAL, align 4
  store i32 %144, i32* %3, align 4
  br label %429

145:                                              ; preds = %47
  %146 = load %struct.args*, %struct.args** %6, align 8
  %147 = call i32 @args_has(%struct.args* %146, i8 signext 109)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %153, label %149

149:                                              ; preds = %145
  %150 = load %struct.args*, %struct.args** %6, align 8
  %151 = call i32 @args_has(%struct.args* %150, i8 signext 77)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %208

153:                                              ; preds = %149, %145
  %154 = load %struct.args*, %struct.args** %6, align 8
  %155 = call i32 @args_has(%struct.args* %154, i8 signext 109)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %163

157:                                              ; preds = %153
  %158 = load %struct.window_pane*, %struct.window_pane** %12, align 8
  %159 = call i32 @window_pane_visible(%struct.window_pane* %158)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %163, label %161

161:                                              ; preds = %157
  %162 = load i32, i32* @CMD_RETURN_NORMAL, align 4
  store i32 %162, i32* %3, align 4
  br label %429

163:                                              ; preds = %157, %153
  %164 = load %struct.window_pane*, %struct.window_pane** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @marked_pane, i32 0, i32 0), align 8
  store %struct.window_pane* %164, %struct.window_pane** %13, align 8
  %165 = load %struct.args*, %struct.args** %6, align 8
  %166 = call i32 @args_has(%struct.args* %165, i8 signext 77)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %174, label %168

168:                                              ; preds = %163
  %169 = load %struct.session*, %struct.session** %11, align 8
  %170 = load %struct.winlink*, %struct.winlink** %9, align 8
  %171 = load %struct.window_pane*, %struct.window_pane** %12, align 8
  %172 = call i64 @server_is_marked(%struct.session* %169, %struct.winlink* %170, %struct.window_pane* %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %168, %163
  %175 = call i32 (...) @server_clear_marked()
  br label %181

176:                                              ; preds = %168
  %177 = load %struct.session*, %struct.session** %11, align 8
  %178 = load %struct.winlink*, %struct.winlink** %9, align 8
  %179 = load %struct.window_pane*, %struct.window_pane** %12, align 8
  %180 = call i32 @server_set_marked(%struct.session* %177, %struct.winlink* %178, %struct.window_pane* %179)
  br label %181

181:                                              ; preds = %176, %174
  %182 = load %struct.window_pane*, %struct.window_pane** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @marked_pane, i32 0, i32 0), align 8
  store %struct.window_pane* %182, %struct.window_pane** %14, align 8
  %183 = load %struct.window_pane*, %struct.window_pane** %13, align 8
  %184 = icmp ne %struct.window_pane* %183, null
  br i1 %184, label %185, label %194

185:                                              ; preds = %181
  %186 = load %struct.window_pane*, %struct.window_pane** %13, align 8
  %187 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @server_redraw_window_borders(i32 %188)
  %190 = load %struct.window_pane*, %struct.window_pane** %13, align 8
  %191 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @server_status_window(i32 %192)
  br label %194

194:                                              ; preds = %185, %181
  %195 = load %struct.window_pane*, %struct.window_pane** %14, align 8
  %196 = icmp ne %struct.window_pane* %195, null
  br i1 %196, label %197, label %206

197:                                              ; preds = %194
  %198 = load %struct.window_pane*, %struct.window_pane** %14, align 8
  %199 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @server_redraw_window_borders(i32 %200)
  %202 = load %struct.window_pane*, %struct.window_pane** %14, align 8
  %203 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @server_status_window(i32 %204)
  br label %206

206:                                              ; preds = %197, %194
  %207 = load i32, i32* @CMD_RETURN_NORMAL, align 4
  store i32 %207, i32* %3, align 4
  br label %429

208:                                              ; preds = %149
  %209 = load %struct.cmd*, %struct.cmd** %4, align 8
  %210 = getelementptr inbounds %struct.cmd, %struct.cmd* %209, i32 0, i32 0
  %211 = load %struct.args*, %struct.args** %210, align 8
  %212 = call i32 @args_has(%struct.args* %211, i8 signext 80)
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %220, label %214

214:                                              ; preds = %208
  %215 = load %struct.cmd*, %struct.cmd** %4, align 8
  %216 = getelementptr inbounds %struct.cmd, %struct.cmd* %215, i32 0, i32 0
  %217 = load %struct.args*, %struct.args** %216, align 8
  %218 = call i32 @args_has(%struct.args* %217, i8 signext 103)
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %267

220:                                              ; preds = %214, %208
  %221 = load %struct.args*, %struct.args** %6, align 8
  %222 = call i8* @args_get(%struct.args* %221, i8 signext 80)
  store i8* %222, i8** %16, align 8
  %223 = icmp ne i8* %222, null
  br i1 %223, label %224, label %250

224:                                              ; preds = %220
  %225 = load %struct.window_pane*, %struct.window_pane** %12, align 8
  %226 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %225, i32 0, i32 3
  %227 = load i32, i32* %226, align 4
  %228 = load i8*, i8** %16, align 8
  %229 = call %struct.options_entry* @options_set_style(i32 %227, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 0, i8* %228)
  store %struct.options_entry* %229, %struct.options_entry** %18, align 8
  %230 = load %struct.options_entry*, %struct.options_entry** %18, align 8
  %231 = icmp eq %struct.options_entry* %230, null
  br i1 %231, label %232, label %237

232:                                              ; preds = %224
  %233 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %234 = load i8*, i8** %16, align 8
  %235 = call i32 (%struct.cmdq_item*, i8*, ...) @cmdq_error(%struct.cmdq_item* %233, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %234)
  %236 = load i32, i32* @CMD_RETURN_ERROR, align 4
  store i32 %236, i32* %3, align 4
  br label %429

237:                                              ; preds = %224
  %238 = load %struct.window_pane*, %struct.window_pane** %12, align 8
  %239 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %238, i32 0, i32 3
  %240 = load i32, i32* %239, align 4
  %241 = load i8*, i8** %16, align 8
  %242 = call %struct.options_entry* @options_set_style(i32 %240, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 0, i8* %241)
  %243 = load i32, i32* @PANE_REDRAW, align 4
  %244 = load i32, i32* @PANE_STYLECHANGED, align 4
  %245 = or i32 %243, %244
  %246 = load %struct.window_pane*, %struct.window_pane** %12, align 8
  %247 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = or i32 %248, %245
  store i32 %249, i32* %247, align 4
  br label %250

250:                                              ; preds = %237, %220
  %251 = load %struct.cmd*, %struct.cmd** %4, align 8
  %252 = getelementptr inbounds %struct.cmd, %struct.cmd* %251, i32 0, i32 0
  %253 = load %struct.args*, %struct.args** %252, align 8
  %254 = call i32 @args_has(%struct.args* %253, i8 signext 103)
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %265

256:                                              ; preds = %250
  %257 = load %struct.window_pane*, %struct.window_pane** %12, align 8
  %258 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %257, i32 0, i32 3
  %259 = load i32, i32* %258, align 4
  %260 = call %struct.style* @options_get_style(i32 %259, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store %struct.style* %260, %struct.style** %17, align 8
  %261 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %262 = load %struct.style*, %struct.style** %17, align 8
  %263 = call i32 @style_tostring(%struct.style* %262)
  %264 = call i32 @cmdq_print(%struct.cmdq_item* %261, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %263)
  br label %265

265:                                              ; preds = %256, %250
  %266 = load i32, i32* @CMD_RETURN_NORMAL, align 4
  store i32 %266, i32* %3, align 4
  br label %429

267:                                              ; preds = %214
  %268 = load %struct.cmd*, %struct.cmd** %4, align 8
  %269 = getelementptr inbounds %struct.cmd, %struct.cmd* %268, i32 0, i32 0
  %270 = load %struct.args*, %struct.args** %269, align 8
  %271 = call i32 @args_has(%struct.args* %270, i8 signext 76)
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %280

273:                                              ; preds = %267
  %274 = load %struct.window*, %struct.window** %10, align 8
  %275 = call i64 @window_push_zoom(%struct.window* %274, i32 1)
  %276 = load %struct.window_pane*, %struct.window_pane** %12, align 8
  %277 = call %struct.window_pane* @window_pane_find_left(%struct.window_pane* %276)
  store %struct.window_pane* %277, %struct.window_pane** %12, align 8
  %278 = load %struct.window*, %struct.window** %10, align 8
  %279 = call i64 @window_pop_zoom(%struct.window* %278)
  br label %322

280:                                              ; preds = %267
  %281 = load %struct.cmd*, %struct.cmd** %4, align 8
  %282 = getelementptr inbounds %struct.cmd, %struct.cmd* %281, i32 0, i32 0
  %283 = load %struct.args*, %struct.args** %282, align 8
  %284 = call i32 @args_has(%struct.args* %283, i8 signext 82)
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %293

286:                                              ; preds = %280
  %287 = load %struct.window*, %struct.window** %10, align 8
  %288 = call i64 @window_push_zoom(%struct.window* %287, i32 1)
  %289 = load %struct.window_pane*, %struct.window_pane** %12, align 8
  %290 = call %struct.window_pane* @window_pane_find_right(%struct.window_pane* %289)
  store %struct.window_pane* %290, %struct.window_pane** %12, align 8
  %291 = load %struct.window*, %struct.window** %10, align 8
  %292 = call i64 @window_pop_zoom(%struct.window* %291)
  br label %321

293:                                              ; preds = %280
  %294 = load %struct.cmd*, %struct.cmd** %4, align 8
  %295 = getelementptr inbounds %struct.cmd, %struct.cmd* %294, i32 0, i32 0
  %296 = load %struct.args*, %struct.args** %295, align 8
  %297 = call i32 @args_has(%struct.args* %296, i8 signext 85)
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %306

299:                                              ; preds = %293
  %300 = load %struct.window*, %struct.window** %10, align 8
  %301 = call i64 @window_push_zoom(%struct.window* %300, i32 1)
  %302 = load %struct.window_pane*, %struct.window_pane** %12, align 8
  %303 = call %struct.window_pane* @window_pane_find_up(%struct.window_pane* %302)
  store %struct.window_pane* %303, %struct.window_pane** %12, align 8
  %304 = load %struct.window*, %struct.window** %10, align 8
  %305 = call i64 @window_pop_zoom(%struct.window* %304)
  br label %320

306:                                              ; preds = %293
  %307 = load %struct.cmd*, %struct.cmd** %4, align 8
  %308 = getelementptr inbounds %struct.cmd, %struct.cmd* %307, i32 0, i32 0
  %309 = load %struct.args*, %struct.args** %308, align 8
  %310 = call i32 @args_has(%struct.args* %309, i8 signext 68)
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %319

312:                                              ; preds = %306
  %313 = load %struct.window*, %struct.window** %10, align 8
  %314 = call i64 @window_push_zoom(%struct.window* %313, i32 1)
  %315 = load %struct.window_pane*, %struct.window_pane** %12, align 8
  %316 = call %struct.window_pane* @window_pane_find_down(%struct.window_pane* %315)
  store %struct.window_pane* %316, %struct.window_pane** %12, align 8
  %317 = load %struct.window*, %struct.window** %10, align 8
  %318 = call i64 @window_pop_zoom(%struct.window* %317)
  br label %319

319:                                              ; preds = %312, %306
  br label %320

320:                                              ; preds = %319, %299
  br label %321

321:                                              ; preds = %320, %286
  br label %322

322:                                              ; preds = %321, %273
  %323 = load %struct.window_pane*, %struct.window_pane** %12, align 8
  %324 = icmp eq %struct.window_pane* %323, null
  br i1 %324, label %325, label %327

325:                                              ; preds = %322
  %326 = load i32, i32* @CMD_RETURN_NORMAL, align 4
  store i32 %326, i32* %3, align 4
  br label %429

327:                                              ; preds = %322
  %328 = load %struct.cmd*, %struct.cmd** %4, align 8
  %329 = getelementptr inbounds %struct.cmd, %struct.cmd* %328, i32 0, i32 0
  %330 = load %struct.args*, %struct.args** %329, align 8
  %331 = call i32 @args_has(%struct.args* %330, i8 signext 101)
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %341

333:                                              ; preds = %327
  %334 = load i32, i32* @PANE_INPUTOFF, align 4
  %335 = xor i32 %334, -1
  %336 = load %struct.window_pane*, %struct.window_pane** %12, align 8
  %337 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %336, i32 0, i32 0
  %338 = load i32, i32* %337, align 4
  %339 = and i32 %338, %335
  store i32 %339, i32* %337, align 4
  %340 = load i32, i32* @CMD_RETURN_NORMAL, align 4
  store i32 %340, i32* %3, align 4
  br label %429

341:                                              ; preds = %327
  %342 = load %struct.cmd*, %struct.cmd** %4, align 8
  %343 = getelementptr inbounds %struct.cmd, %struct.cmd* %342, i32 0, i32 0
  %344 = load %struct.args*, %struct.args** %343, align 8
  %345 = call i32 @args_has(%struct.args* %344, i8 signext 100)
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %354

347:                                              ; preds = %341
  %348 = load i32, i32* @PANE_INPUTOFF, align 4
  %349 = load %struct.window_pane*, %struct.window_pane** %12, align 8
  %350 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %349, i32 0, i32 0
  %351 = load i32, i32* %350, align 4
  %352 = or i32 %351, %348
  store i32 %352, i32* %350, align 4
  %353 = load i32, i32* @CMD_RETURN_NORMAL, align 4
  store i32 %353, i32* %3, align 4
  br label %429

354:                                              ; preds = %341
  %355 = load %struct.cmd*, %struct.cmd** %4, align 8
  %356 = getelementptr inbounds %struct.cmd, %struct.cmd* %355, i32 0, i32 0
  %357 = load %struct.args*, %struct.args** %356, align 8
  %358 = call i32 @args_has(%struct.args* %357, i8 signext 84)
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %382

360:                                              ; preds = %354
  %361 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %362 = load %struct.cmd*, %struct.cmd** %4, align 8
  %363 = getelementptr inbounds %struct.cmd, %struct.cmd* %362, i32 0, i32 0
  %364 = load %struct.args*, %struct.args** %363, align 8
  %365 = call i8* @args_get(%struct.args* %364, i8 signext 84)
  %366 = load %struct.client*, %struct.client** %8, align 8
  %367 = load %struct.session*, %struct.session** %11, align 8
  %368 = load %struct.winlink*, %struct.winlink** %9, align 8
  %369 = load %struct.window_pane*, %struct.window_pane** %12, align 8
  %370 = call i8* @format_single(%struct.cmdq_item* %361, i8* %365, %struct.client* %366, %struct.session* %367, %struct.winlink* %368, %struct.window_pane* %369)
  store i8* %370, i8** %15, align 8
  %371 = load %struct.window_pane*, %struct.window_pane** %12, align 8
  %372 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %371, i32 0, i32 2
  %373 = load i8*, i8** %15, align 8
  %374 = call i32 @screen_set_title(i32* %372, i8* %373)
  %375 = load %struct.window_pane*, %struct.window_pane** %12, align 8
  %376 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %375, i32 0, i32 1
  %377 = load i32, i32* %376, align 4
  %378 = call i32 @server_status_window(i32 %377)
  %379 = load i8*, i8** %15, align 8
  %380 = call i32 @free(i8* %379)
  %381 = load i32, i32* @CMD_RETURN_NORMAL, align 4
  store i32 %381, i32* %3, align 4
  br label %429

382:                                              ; preds = %354
  %383 = load %struct.window_pane*, %struct.window_pane** %12, align 8
  %384 = load %struct.window*, %struct.window** %10, align 8
  %385 = getelementptr inbounds %struct.window, %struct.window* %384, i32 0, i32 0
  %386 = load %struct.window_pane*, %struct.window_pane** %385, align 8
  %387 = icmp eq %struct.window_pane* %383, %386
  br i1 %387, label %388, label %390

388:                                              ; preds = %382
  %389 = load i32, i32* @CMD_RETURN_NORMAL, align 4
  store i32 %389, i32* %3, align 4
  br label %429

390:                                              ; preds = %382
  %391 = load %struct.window*, %struct.window** %10, align 8
  %392 = load %struct.cmd*, %struct.cmd** %4, align 8
  %393 = getelementptr inbounds %struct.cmd, %struct.cmd* %392, i32 0, i32 0
  %394 = load %struct.args*, %struct.args** %393, align 8
  %395 = call i32 @args_has(%struct.args* %394, i8 signext 90)
  %396 = call i64 @window_push_zoom(%struct.window* %391, i32 %395)
  %397 = icmp ne i64 %396, 0
  br i1 %397, label %398, label %401

398:                                              ; preds = %390
  %399 = load %struct.window*, %struct.window** %10, align 8
  %400 = call i32 @server_redraw_window(%struct.window* %399)
  br label %401

401:                                              ; preds = %398, %390
  %402 = load %struct.window*, %struct.window** %10, align 8
  %403 = load %struct.window_pane*, %struct.window_pane** %12, align 8
  %404 = call i32 @window_redraw_active_switch(%struct.window* %402, %struct.window_pane* %403)
  %405 = load %struct.window*, %struct.window** %10, align 8
  %406 = load %struct.window_pane*, %struct.window_pane** %12, align 8
  %407 = call i64 @window_set_active_pane(%struct.window* %405, %struct.window_pane* %406, i32 1)
  %408 = icmp ne i64 %407, 0
  br i1 %408, label %409, label %420

409:                                              ; preds = %401
  %410 = load %struct.cmd_find_state*, %struct.cmd_find_state** %7, align 8
  %411 = load %struct.winlink*, %struct.winlink** %9, align 8
  %412 = load %struct.window_pane*, %struct.window_pane** %12, align 8
  %413 = call i32 @cmd_find_from_winlink_pane(%struct.cmd_find_state* %410, %struct.winlink* %411, %struct.window_pane* %412, i32 0)
  %414 = load %struct.session*, %struct.session** %11, align 8
  %415 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %416 = load %struct.cmd_find_state*, %struct.cmd_find_state** %7, align 8
  %417 = call i32 @cmdq_insert_hook(%struct.session* %414, %struct.cmdq_item* %415, %struct.cmd_find_state* %416, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %418 = load %struct.window*, %struct.window** %10, align 8
  %419 = call i32 @cmd_select_pane_redraw(%struct.window* %418)
  br label %420

420:                                              ; preds = %409, %401
  %421 = load %struct.window*, %struct.window** %10, align 8
  %422 = call i64 @window_pop_zoom(%struct.window* %421)
  %423 = icmp ne i64 %422, 0
  br i1 %423, label %424, label %427

424:                                              ; preds = %420
  %425 = load %struct.window*, %struct.window** %10, align 8
  %426 = call i32 @server_redraw_window(%struct.window* %425)
  br label %427

427:                                              ; preds = %424, %420
  %428 = load i32, i32* @CMD_RETURN_NORMAL, align 4
  store i32 %428, i32* %3, align 4
  br label %429

429:                                              ; preds = %427, %388, %360, %347, %333, %325, %265, %232, %206, %161, %143, %80
  %430 = load i32, i32* %3, align 4
  ret i32 %430
}

declare dso_local %struct.client* @cmd_find_client(%struct.cmdq_item*, i32*, i32) #1

declare dso_local i32 @args_has(%struct.args*, i8 signext) #1

declare dso_local i32 @window_count_panes(%struct.window*) #1

declare dso_local %struct.window_pane* @TAILQ_PREV(%struct.window_pane*, i32, i32) #1

declare dso_local %struct.window_pane* @TAILQ_NEXT(%struct.window_pane*, i32) #1

declare dso_local i32 @cmdq_error(%struct.cmdq_item*, i8*, ...) #1

declare dso_local i64 @window_push_zoom(%struct.window*, i32) #1

declare dso_local i32 @server_redraw_window(%struct.window*) #1

declare dso_local i32 @window_redraw_active_switch(%struct.window*, %struct.window_pane*) #1

declare dso_local i64 @window_set_active_pane(%struct.window*, %struct.window_pane*, i32) #1

declare dso_local i32 @cmd_find_from_winlink(%struct.cmd_find_state*, %struct.winlink*, i32) #1

declare dso_local i32 @cmd_select_pane_redraw(%struct.window*) #1

declare dso_local i64 @window_pop_zoom(%struct.window*) #1

declare dso_local i32 @window_pane_visible(%struct.window_pane*) #1

declare dso_local i64 @server_is_marked(%struct.session*, %struct.winlink*, %struct.window_pane*) #1

declare dso_local i32 @server_clear_marked(...) #1

declare dso_local i32 @server_set_marked(%struct.session*, %struct.winlink*, %struct.window_pane*) #1

declare dso_local i32 @server_redraw_window_borders(i32) #1

declare dso_local i32 @server_status_window(i32) #1

declare dso_local i8* @args_get(%struct.args*, i8 signext) #1

declare dso_local %struct.options_entry* @options_set_style(i32, i8*, i32, i8*) #1

declare dso_local %struct.style* @options_get_style(i32, i8*) #1

declare dso_local i32 @cmdq_print(%struct.cmdq_item*, i8*, i32) #1

declare dso_local i32 @style_tostring(%struct.style*) #1

declare dso_local %struct.window_pane* @window_pane_find_left(%struct.window_pane*) #1

declare dso_local %struct.window_pane* @window_pane_find_right(%struct.window_pane*) #1

declare dso_local %struct.window_pane* @window_pane_find_up(%struct.window_pane*) #1

declare dso_local %struct.window_pane* @window_pane_find_down(%struct.window_pane*) #1

declare dso_local i8* @format_single(%struct.cmdq_item*, i8*, %struct.client*, %struct.session*, %struct.winlink*, %struct.window_pane*) #1

declare dso_local i32 @screen_set_title(i32*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @cmd_find_from_winlink_pane(%struct.cmd_find_state*, %struct.winlink*, %struct.window_pane*, i32) #1

declare dso_local i32 @cmdq_insert_hook(%struct.session*, %struct.cmdq_item*, %struct.cmd_find_state*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
