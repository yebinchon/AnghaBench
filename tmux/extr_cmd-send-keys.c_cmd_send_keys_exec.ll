; ModuleID = '/home/carl/AnghaBench/tmux/extr_cmd-send-keys.c_cmd_send_keys_exec.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_cmd-send-keys.c_cmd_send_keys_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd = type { i32*, %struct.args* }
%struct.args = type { i32 }
%struct.cmdq_item = type { i32, %struct.TYPE_3__*, %struct.cmd_find_state }
%struct.TYPE_3__ = type { %struct.mouse_event }
%struct.mouse_event = type { i32, i32 }
%struct.cmd_find_state = type { %struct.winlink*, %struct.session*, %struct.window_pane* }
%struct.winlink = type { i32 }
%struct.session = type { i32 }
%struct.window_pane = type { i32 }
%struct.client = type { i32 }
%struct.window_mode_entry = type { %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i32 (%struct.window_mode_entry*, %struct.client*, %struct.session*, %struct.winlink*, %struct.args*, %struct.mouse_event*)* }

@UINT_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"repeat count %s\00", align 1
@CMD_RETURN_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"not in a mode\00", align 1
@CMD_RETURN_NORMAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"no mouse target\00", align 1
@cmd_send_prefix_entry = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"prefix2\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"prefix\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmd*, %struct.cmdq_item*)* @cmd_send_keys_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_send_keys_exec(%struct.cmd* %0, %struct.cmdq_item* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cmd*, align 8
  %5 = alloca %struct.cmdq_item*, align 8
  %6 = alloca %struct.args*, align 8
  %7 = alloca %struct.client*, align 8
  %8 = alloca %struct.cmd_find_state*, align 8
  %9 = alloca %struct.window_pane*, align 8
  %10 = alloca %struct.session*, align 8
  %11 = alloca %struct.winlink*, align 8
  %12 = alloca %struct.mouse_event*, align 8
  %13 = alloca %struct.window_mode_entry*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  store %struct.cmd* %0, %struct.cmd** %4, align 8
  store %struct.cmdq_item* %1, %struct.cmdq_item** %5, align 8
  %18 = load %struct.cmd*, %struct.cmd** %4, align 8
  %19 = getelementptr inbounds %struct.cmd, %struct.cmd* %18, i32 0, i32 1
  %20 = load %struct.args*, %struct.args** %19, align 8
  store %struct.args* %20, %struct.args** %6, align 8
  %21 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %22 = call %struct.client* @cmd_find_client(%struct.cmdq_item* %21, i32* null, i32 1)
  store %struct.client* %22, %struct.client** %7, align 8
  %23 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %24 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %23, i32 0, i32 2
  store %struct.cmd_find_state* %24, %struct.cmd_find_state** %8, align 8
  %25 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %26 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.cmd_find_state, %struct.cmd_find_state* %26, i32 0, i32 2
  %28 = load %struct.window_pane*, %struct.window_pane** %27, align 8
  store %struct.window_pane* %28, %struct.window_pane** %9, align 8
  %29 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %30 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.cmd_find_state, %struct.cmd_find_state* %30, i32 0, i32 1
  %32 = load %struct.session*, %struct.session** %31, align 8
  store %struct.session* %32, %struct.session** %10, align 8
  %33 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %34 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.cmd_find_state, %struct.cmd_find_state* %34, i32 0, i32 0
  %36 = load %struct.winlink*, %struct.winlink** %35, align 8
  store %struct.winlink* %36, %struct.winlink** %11, align 8
  %37 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %38 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %37, i32 0, i32 1
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  store %struct.mouse_event* %40, %struct.mouse_event** %12, align 8
  %41 = load %struct.window_pane*, %struct.window_pane** %9, align 8
  %42 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %41, i32 0, i32 0
  %43 = call %struct.window_mode_entry* @TAILQ_FIRST(i32* %42)
  store %struct.window_mode_entry* %43, %struct.window_mode_entry** %13, align 8
  store i64 1, i64* %16, align 8
  store i8* null, i8** %17, align 8
  %44 = load %struct.args*, %struct.args** %6, align 8
  %45 = call i64 @args_has(%struct.args* %44, i8 signext 78)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %91

47:                                               ; preds = %2
  %48 = load %struct.args*, %struct.args** %6, align 8
  %49 = load i32, i32* @UINT_MAX, align 4
  %50 = call i64 @args_strtonum(%struct.args* %48, i8 signext 78, i32 1, i32 %49, i8** %17)
  store i64 %50, i64* %16, align 8
  %51 = load i8*, i8** %17, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %60

53:                                               ; preds = %47
  %54 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %55 = load i8*, i8** %17, align 8
  %56 = call i32 (%struct.cmdq_item*, i8*, ...) @cmdq_error(%struct.cmdq_item* %54, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %55)
  %57 = load i8*, i8** %17, align 8
  %58 = call i32 @free(i8* %57)
  %59 = load i32, i32* @CMD_RETURN_ERROR, align 4
  store i32 %59, i32* %3, align 4
  br label %217

60:                                               ; preds = %47
  %61 = load %struct.window_mode_entry*, %struct.window_mode_entry** %13, align 8
  %62 = icmp ne %struct.window_mode_entry* %61, null
  br i1 %62, label %63, label %90

63:                                               ; preds = %60
  %64 = load %struct.args*, %struct.args** %6, align 8
  %65 = call i64 @args_has(%struct.args* %64, i8 signext 88)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %63
  %68 = load %struct.args*, %struct.args** %6, align 8
  %69 = getelementptr inbounds %struct.args, %struct.args* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %90

72:                                               ; preds = %67, %63
  %73 = load %struct.window_mode_entry*, %struct.window_mode_entry** %13, align 8
  %74 = icmp eq %struct.window_mode_entry* %73, null
  br i1 %74, label %82, label %75

75:                                               ; preds = %72
  %76 = load %struct.window_mode_entry*, %struct.window_mode_entry** %13, align 8
  %77 = getelementptr inbounds %struct.window_mode_entry, %struct.window_mode_entry* %76, i32 0, i32 0
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32 (%struct.window_mode_entry*, %struct.client*, %struct.session*, %struct.winlink*, %struct.args*, %struct.mouse_event*)*, i32 (%struct.window_mode_entry*, %struct.client*, %struct.session*, %struct.winlink*, %struct.args*, %struct.mouse_event*)** %79, align 8
  %81 = icmp eq i32 (%struct.window_mode_entry*, %struct.client*, %struct.session*, %struct.winlink*, %struct.args*, %struct.mouse_event*)* %80, null
  br i1 %81, label %82, label %86

82:                                               ; preds = %75, %72
  %83 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %84 = call i32 (%struct.cmdq_item*, i8*, ...) @cmdq_error(%struct.cmdq_item* %83, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %85 = load i32, i32* @CMD_RETURN_ERROR, align 4
  store i32 %85, i32* %3, align 4
  br label %217

86:                                               ; preds = %75
  %87 = load i64, i64* %16, align 8
  %88 = load %struct.window_mode_entry*, %struct.window_mode_entry** %13, align 8
  %89 = getelementptr inbounds %struct.window_mode_entry, %struct.window_mode_entry* %88, i32 0, i32 1
  store i64 %87, i64* %89, align 8
  br label %90

90:                                               ; preds = %86, %67, %60
  br label %91

91:                                               ; preds = %90, %2
  %92 = load %struct.args*, %struct.args** %6, align 8
  %93 = call i64 @args_has(%struct.args* %92, i8 signext 88)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %129

95:                                               ; preds = %91
  %96 = load %struct.window_mode_entry*, %struct.window_mode_entry** %13, align 8
  %97 = icmp eq %struct.window_mode_entry* %96, null
  br i1 %97, label %105, label %98

98:                                               ; preds = %95
  %99 = load %struct.window_mode_entry*, %struct.window_mode_entry** %13, align 8
  %100 = getelementptr inbounds %struct.window_mode_entry, %struct.window_mode_entry* %99, i32 0, i32 0
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i32 (%struct.window_mode_entry*, %struct.client*, %struct.session*, %struct.winlink*, %struct.args*, %struct.mouse_event*)*, i32 (%struct.window_mode_entry*, %struct.client*, %struct.session*, %struct.winlink*, %struct.args*, %struct.mouse_event*)** %102, align 8
  %104 = icmp eq i32 (%struct.window_mode_entry*, %struct.client*, %struct.session*, %struct.winlink*, %struct.args*, %struct.mouse_event*)* %103, null
  br i1 %104, label %105, label %109

105:                                              ; preds = %98, %95
  %106 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %107 = call i32 (%struct.cmdq_item*, i8*, ...) @cmdq_error(%struct.cmdq_item* %106, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %108 = load i32, i32* @CMD_RETURN_ERROR, align 4
  store i32 %108, i32* %3, align 4
  br label %217

109:                                              ; preds = %98
  %110 = load %struct.mouse_event*, %struct.mouse_event** %12, align 8
  %111 = getelementptr inbounds %struct.mouse_event, %struct.mouse_event* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %109
  store %struct.mouse_event* null, %struct.mouse_event** %12, align 8
  br label %115

115:                                              ; preds = %114, %109
  %116 = load %struct.window_mode_entry*, %struct.window_mode_entry** %13, align 8
  %117 = getelementptr inbounds %struct.window_mode_entry, %struct.window_mode_entry* %116, i32 0, i32 0
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load i32 (%struct.window_mode_entry*, %struct.client*, %struct.session*, %struct.winlink*, %struct.args*, %struct.mouse_event*)*, i32 (%struct.window_mode_entry*, %struct.client*, %struct.session*, %struct.winlink*, %struct.args*, %struct.mouse_event*)** %119, align 8
  %121 = load %struct.window_mode_entry*, %struct.window_mode_entry** %13, align 8
  %122 = load %struct.client*, %struct.client** %7, align 8
  %123 = load %struct.session*, %struct.session** %10, align 8
  %124 = load %struct.winlink*, %struct.winlink** %11, align 8
  %125 = load %struct.args*, %struct.args** %6, align 8
  %126 = load %struct.mouse_event*, %struct.mouse_event** %12, align 8
  %127 = call i32 %120(%struct.window_mode_entry* %121, %struct.client* %122, %struct.session* %123, %struct.winlink* %124, %struct.args* %125, %struct.mouse_event* %126)
  %128 = load i32, i32* @CMD_RETURN_NORMAL, align 4
  store i32 %128, i32* %3, align 4
  br label %217

129:                                              ; preds = %91
  %130 = load %struct.args*, %struct.args** %6, align 8
  %131 = call i64 @args_has(%struct.args* %130, i8 signext 77)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %155

133:                                              ; preds = %129
  %134 = load %struct.mouse_event*, %struct.mouse_event** %12, align 8
  %135 = call %struct.window_pane* @cmd_mouse_pane(%struct.mouse_event* %134, %struct.session** %10, i32* null)
  store %struct.window_pane* %135, %struct.window_pane** %9, align 8
  %136 = load %struct.window_pane*, %struct.window_pane** %9, align 8
  %137 = icmp eq %struct.window_pane* %136, null
  br i1 %137, label %138, label %142

138:                                              ; preds = %133
  %139 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %140 = call i32 (%struct.cmdq_item*, i8*, ...) @cmdq_error(%struct.cmdq_item* %139, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %141 = load i32, i32* @CMD_RETURN_ERROR, align 4
  store i32 %141, i32* %3, align 4
  br label %217

142:                                              ; preds = %133
  %143 = load %struct.window_pane*, %struct.window_pane** %9, align 8
  %144 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %145 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.session*, %struct.session** %10, align 8
  %148 = load %struct.winlink*, %struct.winlink** %11, align 8
  %149 = load %struct.mouse_event*, %struct.mouse_event** %12, align 8
  %150 = getelementptr inbounds %struct.mouse_event, %struct.mouse_event* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.mouse_event*, %struct.mouse_event** %12, align 8
  %153 = call i32 @window_pane_key(%struct.window_pane* %143, i32 %146, %struct.session* %147, %struct.winlink* %148, i32 %151, %struct.mouse_event* %152)
  %154 = load i32, i32* @CMD_RETURN_NORMAL, align 4
  store i32 %154, i32* %3, align 4
  br label %217

155:                                              ; preds = %129
  %156 = load %struct.cmd*, %struct.cmd** %4, align 8
  %157 = getelementptr inbounds %struct.cmd, %struct.cmd* %156, i32 0, i32 0
  %158 = load i32*, i32** %157, align 8
  %159 = icmp eq i32* %158, @cmd_send_prefix_entry
  br i1 %159, label %160, label %181

160:                                              ; preds = %155
  %161 = load %struct.args*, %struct.args** %6, align 8
  %162 = call i64 @args_has(%struct.args* %161, i8 signext 50)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %169

164:                                              ; preds = %160
  %165 = load %struct.session*, %struct.session** %10, align 8
  %166 = getelementptr inbounds %struct.session, %struct.session* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @options_get_number(i32 %167, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  store i32 %168, i32* %15, align 4
  br label %174

169:                                              ; preds = %160
  %170 = load %struct.session*, %struct.session** %10, align 8
  %171 = getelementptr inbounds %struct.session, %struct.session* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @options_get_number(i32 %172, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  store i32 %173, i32* %15, align 4
  br label %174

174:                                              ; preds = %169, %164
  %175 = load %struct.client*, %struct.client** %7, align 8
  %176 = load %struct.cmd_find_state*, %struct.cmd_find_state** %8, align 8
  %177 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %178 = load i32, i32* %15, align 4
  %179 = call i32 @cmd_send_keys_inject_key(%struct.client* %175, %struct.cmd_find_state* %176, %struct.cmdq_item* %177, i32 %178)
  %180 = load i32, i32* @CMD_RETURN_NORMAL, align 4
  store i32 %180, i32* %3, align 4
  br label %217

181:                                              ; preds = %155
  %182 = load %struct.args*, %struct.args** %6, align 8
  %183 = call i64 @args_has(%struct.args* %182, i8 signext 82)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %190

185:                                              ; preds = %181
  %186 = load %struct.window_pane*, %struct.window_pane** %9, align 8
  %187 = call i32 @window_pane_reset_palette(%struct.window_pane* %186)
  %188 = load %struct.window_pane*, %struct.window_pane** %9, align 8
  %189 = call i32 @input_reset(%struct.window_pane* %188, i32 1)
  br label %190

190:                                              ; preds = %185, %181
  br label %191

191:                                              ; preds = %212, %190
  %192 = load i64, i64* %16, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %215

194:                                              ; preds = %191
  store i32 0, i32* %14, align 4
  br label %195

195:                                              ; preds = %208, %194
  %196 = load i32, i32* %14, align 4
  %197 = load %struct.args*, %struct.args** %6, align 8
  %198 = getelementptr inbounds %struct.args, %struct.args* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = icmp slt i32 %196, %199
  br i1 %200, label %201, label %211

201:                                              ; preds = %195
  %202 = load %struct.client*, %struct.client** %7, align 8
  %203 = load %struct.cmd_find_state*, %struct.cmd_find_state** %8, align 8
  %204 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %205 = load %struct.args*, %struct.args** %6, align 8
  %206 = load i32, i32* %14, align 4
  %207 = call %struct.cmdq_item* @cmd_send_keys_inject_string(%struct.client* %202, %struct.cmd_find_state* %203, %struct.cmdq_item* %204, %struct.args* %205, i32 %206)
  store %struct.cmdq_item* %207, %struct.cmdq_item** %5, align 8
  br label %208

208:                                              ; preds = %201
  %209 = load i32, i32* %14, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %14, align 4
  br label %195

211:                                              ; preds = %195
  br label %212

212:                                              ; preds = %211
  %213 = load i64, i64* %16, align 8
  %214 = add nsw i64 %213, -1
  store i64 %214, i64* %16, align 8
  br label %191

215:                                              ; preds = %191
  %216 = load i32, i32* @CMD_RETURN_NORMAL, align 4
  store i32 %216, i32* %3, align 4
  br label %217

217:                                              ; preds = %215, %174, %142, %138, %115, %105, %82, %53
  %218 = load i32, i32* %3, align 4
  ret i32 %218
}

declare dso_local %struct.client* @cmd_find_client(%struct.cmdq_item*, i32*, i32) #1

declare dso_local %struct.window_mode_entry* @TAILQ_FIRST(i32*) #1

declare dso_local i64 @args_has(%struct.args*, i8 signext) #1

declare dso_local i64 @args_strtonum(%struct.args*, i8 signext, i32, i32, i8**) #1

declare dso_local i32 @cmdq_error(%struct.cmdq_item*, i8*, ...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local %struct.window_pane* @cmd_mouse_pane(%struct.mouse_event*, %struct.session**, i32*) #1

declare dso_local i32 @window_pane_key(%struct.window_pane*, i32, %struct.session*, %struct.winlink*, i32, %struct.mouse_event*) #1

declare dso_local i32 @options_get_number(i32, i8*) #1

declare dso_local i32 @cmd_send_keys_inject_key(%struct.client*, %struct.cmd_find_state*, %struct.cmdq_item*, i32) #1

declare dso_local i32 @window_pane_reset_palette(%struct.window_pane*) #1

declare dso_local i32 @input_reset(%struct.window_pane*, i32) #1

declare dso_local %struct.cmdq_item* @cmd_send_keys_inject_string(%struct.client*, %struct.cmd_find_state*, %struct.cmdq_item*, %struct.args*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
