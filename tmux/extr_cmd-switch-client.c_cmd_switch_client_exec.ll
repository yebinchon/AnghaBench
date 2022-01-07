; ModuleID = '/home/carl/AnghaBench/tmux/extr_cmd-switch-client.c_cmd_switch_client_exec.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_cmd-switch-client.c_cmd_switch_client_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd = type { %struct.args* }
%struct.args = type { i32 }
%struct.cmdq_item = type { %struct.TYPE_4__*, i32*, %struct.TYPE_6__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.window_pane*, %struct.winlink*, %struct.session* }
%struct.window_pane = type { i32 }
%struct.winlink = type { %struct.window* }
%struct.window = type { i32 }
%struct.session = type { %struct.TYPE_5__*, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.client = type { %struct.session*, %struct.session*, i32, %struct.key_table*, i32 }
%struct.key_table = type { i32 }

@CMD_RETURN_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c":.%\00", align 1
@CMD_FIND_PANE = common dso_local global i32 0, align 4
@CMD_FIND_SESSION = common dso_local global i32 0, align 4
@CMD_FIND_PREFER_UNATTACHED = common dso_local global i32 0, align 4
@CLIENT_READONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"table %s doesn't exist\00", align 1
@CMD_RETURN_NORMAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"can't find next session\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"can't find previous session\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"can't find last session\00", align 1
@CMDQ_SHARED_REPEAT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"client-session-changed\00", align 1
@WINLINK_ALERTFLAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmd*, %struct.cmdq_item*)* @cmd_switch_client_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_switch_client_exec(%struct.cmd* %0, %struct.cmdq_item* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cmd*, align 8
  %5 = alloca %struct.cmdq_item*, align 8
  %6 = alloca %struct.args*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.client*, align 8
  %11 = alloca %struct.session*, align 8
  %12 = alloca %struct.winlink*, align 8
  %13 = alloca %struct.window*, align 8
  %14 = alloca %struct.window_pane*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.key_table*, align 8
  store %struct.cmd* %0, %struct.cmd** %4, align 8
  store %struct.cmdq_item* %1, %struct.cmdq_item** %5, align 8
  %17 = load %struct.cmd*, %struct.cmd** %4, align 8
  %18 = getelementptr inbounds %struct.cmd, %struct.cmd* %17, i32 0, i32 0
  %19 = load %struct.args*, %struct.args** %18, align 8
  store %struct.args* %19, %struct.args** %6, align 8
  %20 = load %struct.args*, %struct.args** %6, align 8
  %21 = call i8* @args_get(%struct.args* %20, i8 signext 116)
  store i8* %21, i8** %7, align 8
  %22 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %23 = load %struct.args*, %struct.args** %6, align 8
  %24 = call i8* @args_get(%struct.args* %23, i8 signext 99)
  %25 = call %struct.client* @cmd_find_client(%struct.cmdq_item* %22, i8* %24, i32 0)
  store %struct.client* %25, %struct.client** %10, align 8
  %26 = icmp eq %struct.client* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i32, i32* @CMD_RETURN_ERROR, align 4
  store i32 %28, i32* %3, align 4
  br label %296

29:                                               ; preds = %2
  %30 = load i8*, i8** %7, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %42

32:                                               ; preds = %29
  %33 = load i8*, i8** %7, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = call i64 @strcspn(i8* %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = load i32, i32* @CMD_FIND_PANE, align 4
  store i32 %41, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %45

42:                                               ; preds = %32, %29
  %43 = load i32, i32* @CMD_FIND_SESSION, align 4
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* @CMD_FIND_PREFER_UNATTACHED, align 4
  store i32 %44, i32* %9, align 4
  br label %45

45:                                               ; preds = %42, %40
  %46 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %47 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %46, i32 0, i32 2
  %48 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %9, align 4
  %52 = call i64 @cmd_find_target(%struct.TYPE_6__* %47, %struct.cmdq_item* %48, i8* %49, i32 %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %45
  %55 = load i32, i32* @CMD_RETURN_ERROR, align 4
  store i32 %55, i32* %3, align 4
  br label %296

56:                                               ; preds = %45
  %57 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %58 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 2
  %60 = load %struct.session*, %struct.session** %59, align 8
  store %struct.session* %60, %struct.session** %11, align 8
  %61 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %62 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = load %struct.winlink*, %struct.winlink** %63, align 8
  store %struct.winlink* %64, %struct.winlink** %12, align 8
  %65 = load %struct.winlink*, %struct.winlink** %12, align 8
  %66 = getelementptr inbounds %struct.winlink, %struct.winlink* %65, i32 0, i32 0
  %67 = load %struct.window*, %struct.window** %66, align 8
  store %struct.window* %67, %struct.window** %13, align 8
  %68 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %69 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load %struct.window_pane*, %struct.window_pane** %70, align 8
  store %struct.window_pane* %71, %struct.window_pane** %14, align 8
  %72 = load %struct.args*, %struct.args** %6, align 8
  %73 = call i64 @args_has(%struct.args* %72, i8 signext 114)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %56
  %76 = load i32, i32* @CLIENT_READONLY, align 4
  %77 = load %struct.client*, %struct.client** %10, align 8
  %78 = getelementptr inbounds %struct.client, %struct.client* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = xor i32 %79, %76
  store i32 %80, i32* %78, align 8
  br label %81

81:                                               ; preds = %75, %56
  %82 = load %struct.args*, %struct.args** %6, align 8
  %83 = call i8* @args_get(%struct.args* %82, i8 signext 84)
  store i8* %83, i8** %15, align 8
  %84 = load i8*, i8** %15, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %109

86:                                               ; preds = %81
  %87 = load i8*, i8** %15, align 8
  %88 = call %struct.key_table* @key_bindings_get_table(i8* %87, i32 0)
  store %struct.key_table* %88, %struct.key_table** %16, align 8
  %89 = load %struct.key_table*, %struct.key_table** %16, align 8
  %90 = icmp eq %struct.key_table* %89, null
  br i1 %90, label %91, label %96

91:                                               ; preds = %86
  %92 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %93 = load i8*, i8** %15, align 8
  %94 = call i32 (%struct.cmdq_item*, i8*, ...) @cmdq_error(%struct.cmdq_item* %92, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %93)
  %95 = load i32, i32* @CMD_RETURN_ERROR, align 4
  store i32 %95, i32* %3, align 4
  br label %296

96:                                               ; preds = %86
  %97 = load %struct.key_table*, %struct.key_table** %16, align 8
  %98 = getelementptr inbounds %struct.key_table, %struct.key_table* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %98, align 4
  %101 = load %struct.client*, %struct.client** %10, align 8
  %102 = getelementptr inbounds %struct.client, %struct.client* %101, i32 0, i32 3
  %103 = load %struct.key_table*, %struct.key_table** %102, align 8
  %104 = call i32 @key_bindings_unref_table(%struct.key_table* %103)
  %105 = load %struct.key_table*, %struct.key_table** %16, align 8
  %106 = load %struct.client*, %struct.client** %10, align 8
  %107 = getelementptr inbounds %struct.client, %struct.client* %106, i32 0, i32 3
  store %struct.key_table* %105, %struct.key_table** %107, align 8
  %108 = load i32, i32* @CMD_RETURN_NORMAL, align 4
  store i32 %108, i32* %3, align 4
  br label %296

109:                                              ; preds = %81
  %110 = load %struct.args*, %struct.args** %6, align 8
  %111 = call i64 @args_has(%struct.args* %110, i8 signext 110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %124

113:                                              ; preds = %109
  %114 = load %struct.client*, %struct.client** %10, align 8
  %115 = getelementptr inbounds %struct.client, %struct.client* %114, i32 0, i32 0
  %116 = load %struct.session*, %struct.session** %115, align 8
  %117 = call %struct.session* @session_next_session(%struct.session* %116)
  store %struct.session* %117, %struct.session** %11, align 8
  %118 = icmp eq %struct.session* %117, null
  br i1 %118, label %119, label %123

119:                                              ; preds = %113
  %120 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %121 = call i32 (%struct.cmdq_item*, i8*, ...) @cmdq_error(%struct.cmdq_item* %120, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %122 = load i32, i32* @CMD_RETURN_ERROR, align 4
  store i32 %122, i32* %3, align 4
  br label %296

123:                                              ; preds = %113
  br label %221

124:                                              ; preds = %109
  %125 = load %struct.args*, %struct.args** %6, align 8
  %126 = call i64 @args_has(%struct.args* %125, i8 signext 112)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %139

128:                                              ; preds = %124
  %129 = load %struct.client*, %struct.client** %10, align 8
  %130 = getelementptr inbounds %struct.client, %struct.client* %129, i32 0, i32 0
  %131 = load %struct.session*, %struct.session** %130, align 8
  %132 = call %struct.session* @session_previous_session(%struct.session* %131)
  store %struct.session* %132, %struct.session** %11, align 8
  %133 = icmp eq %struct.session* %132, null
  br i1 %133, label %134, label %138

134:                                              ; preds = %128
  %135 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %136 = call i32 (%struct.cmdq_item*, i8*, ...) @cmdq_error(%struct.cmdq_item* %135, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %137 = load i32, i32* @CMD_RETURN_ERROR, align 4
  store i32 %137, i32* %3, align 4
  br label %296

138:                                              ; preds = %128
  br label %220

139:                                              ; preds = %124
  %140 = load %struct.args*, %struct.args** %6, align 8
  %141 = call i64 @args_has(%struct.args* %140, i8 signext 108)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %167

143:                                              ; preds = %139
  %144 = load %struct.client*, %struct.client** %10, align 8
  %145 = getelementptr inbounds %struct.client, %struct.client* %144, i32 0, i32 1
  %146 = load %struct.session*, %struct.session** %145, align 8
  %147 = icmp ne %struct.session* %146, null
  br i1 %147, label %148, label %158

148:                                              ; preds = %143
  %149 = load %struct.client*, %struct.client** %10, align 8
  %150 = getelementptr inbounds %struct.client, %struct.client* %149, i32 0, i32 1
  %151 = load %struct.session*, %struct.session** %150, align 8
  %152 = call i64 @session_alive(%struct.session* %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %148
  %155 = load %struct.client*, %struct.client** %10, align 8
  %156 = getelementptr inbounds %struct.client, %struct.client* %155, i32 0, i32 1
  %157 = load %struct.session*, %struct.session** %156, align 8
  store %struct.session* %157, %struct.session** %11, align 8
  br label %159

158:                                              ; preds = %148, %143
  store %struct.session* null, %struct.session** %11, align 8
  br label %159

159:                                              ; preds = %158, %154
  %160 = load %struct.session*, %struct.session** %11, align 8
  %161 = icmp eq %struct.session* %160, null
  br i1 %161, label %162, label %166

162:                                              ; preds = %159
  %163 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %164 = call i32 (%struct.cmdq_item*, i8*, ...) @cmdq_error(%struct.cmdq_item* %163, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %165 = load i32, i32* @CMD_RETURN_ERROR, align 4
  store i32 %165, i32* %3, align 4
  br label %296

166:                                              ; preds = %159
  br label %219

167:                                              ; preds = %139
  %168 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %169 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %168, i32 0, i32 1
  %170 = load i32*, i32** %169, align 8
  %171 = icmp eq i32* %170, null
  br i1 %171, label %172, label %174

172:                                              ; preds = %167
  %173 = load i32, i32* @CMD_RETURN_NORMAL, align 4
  store i32 %173, i32* %3, align 4
  br label %296

174:                                              ; preds = %167
  %175 = load %struct.winlink*, %struct.winlink** %12, align 8
  %176 = icmp ne %struct.winlink* %175, null
  br i1 %176, label %177, label %205

177:                                              ; preds = %174
  %178 = load %struct.window_pane*, %struct.window_pane** %14, align 8
  %179 = icmp ne %struct.window_pane* %178, null
  br i1 %179, label %180, label %205

180:                                              ; preds = %177
  %181 = load %struct.window*, %struct.window** %13, align 8
  %182 = load %struct.cmd*, %struct.cmd** %4, align 8
  %183 = getelementptr inbounds %struct.cmd, %struct.cmd* %182, i32 0, i32 0
  %184 = load %struct.args*, %struct.args** %183, align 8
  %185 = call i64 @args_has(%struct.args* %184, i8 signext 90)
  %186 = call i64 @window_push_zoom(%struct.window* %181, i64 %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %191

188:                                              ; preds = %180
  %189 = load %struct.window*, %struct.window** %13, align 8
  %190 = call i32 @server_redraw_window(%struct.window* %189)
  br label %191

191:                                              ; preds = %188, %180
  %192 = load %struct.window*, %struct.window** %13, align 8
  %193 = load %struct.window_pane*, %struct.window_pane** %14, align 8
  %194 = call i32 @window_redraw_active_switch(%struct.window* %192, %struct.window_pane* %193)
  %195 = load %struct.window*, %struct.window** %13, align 8
  %196 = load %struct.window_pane*, %struct.window_pane** %14, align 8
  %197 = call i32 @window_set_active_pane(%struct.window* %195, %struct.window_pane* %196, i32 1)
  %198 = load %struct.window*, %struct.window** %13, align 8
  %199 = call i64 @window_pop_zoom(%struct.window* %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %204

201:                                              ; preds = %191
  %202 = load %struct.window*, %struct.window** %13, align 8
  %203 = call i32 @server_redraw_window(%struct.window* %202)
  br label %204

204:                                              ; preds = %201, %191
  br label %205

205:                                              ; preds = %204, %177, %174
  %206 = load %struct.winlink*, %struct.winlink** %12, align 8
  %207 = icmp ne %struct.winlink* %206, null
  br i1 %207, label %208, label %218

208:                                              ; preds = %205
  %209 = load %struct.session*, %struct.session** %11, align 8
  %210 = load %struct.winlink*, %struct.winlink** %12, align 8
  %211 = call i32 @session_set_current(%struct.session* %209, %struct.winlink* %210)
  %212 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %213 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %212, i32 0, i32 0
  %214 = load %struct.TYPE_4__*, %struct.TYPE_4__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i32 0, i32 1
  %216 = load %struct.session*, %struct.session** %11, align 8
  %217 = call i32 @cmd_find_from_session(i32* %215, %struct.session* %216, i32 0)
  br label %218

218:                                              ; preds = %208, %205
  br label %219

219:                                              ; preds = %218, %166
  br label %220

220:                                              ; preds = %219, %138
  br label %221

221:                                              ; preds = %220, %123
  %222 = load %struct.args*, %struct.args** %6, align 8
  %223 = call i64 @args_has(%struct.args* %222, i8 signext 69)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %236, label %225

225:                                              ; preds = %221
  %226 = load %struct.session*, %struct.session** %11, align 8
  %227 = getelementptr inbounds %struct.session, %struct.session* %226, i32 0, i32 3
  %228 = load i32, i32* %227, align 8
  %229 = load %struct.client*, %struct.client** %10, align 8
  %230 = getelementptr inbounds %struct.client, %struct.client* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 8
  %232 = load %struct.session*, %struct.session** %11, align 8
  %233 = getelementptr inbounds %struct.session, %struct.session* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 4
  %235 = call i32 @environ_update(i32 %228, i32 %231, i32 %234)
  br label %236

236:                                              ; preds = %225, %221
  %237 = load %struct.client*, %struct.client** %10, align 8
  %238 = getelementptr inbounds %struct.client, %struct.client* %237, i32 0, i32 0
  %239 = load %struct.session*, %struct.session** %238, align 8
  %240 = icmp ne %struct.session* %239, null
  br i1 %240, label %241, label %253

241:                                              ; preds = %236
  %242 = load %struct.client*, %struct.client** %10, align 8
  %243 = getelementptr inbounds %struct.client, %struct.client* %242, i32 0, i32 0
  %244 = load %struct.session*, %struct.session** %243, align 8
  %245 = load %struct.session*, %struct.session** %11, align 8
  %246 = icmp ne %struct.session* %244, %245
  br i1 %246, label %247, label %253

247:                                              ; preds = %241
  %248 = load %struct.client*, %struct.client** %10, align 8
  %249 = getelementptr inbounds %struct.client, %struct.client* %248, i32 0, i32 0
  %250 = load %struct.session*, %struct.session** %249, align 8
  %251 = load %struct.client*, %struct.client** %10, align 8
  %252 = getelementptr inbounds %struct.client, %struct.client* %251, i32 0, i32 1
  store %struct.session* %250, %struct.session** %252, align 8
  br label %253

253:                                              ; preds = %247, %241, %236
  %254 = load %struct.session*, %struct.session** %11, align 8
  %255 = load %struct.client*, %struct.client** %10, align 8
  %256 = getelementptr inbounds %struct.client, %struct.client* %255, i32 0, i32 0
  store %struct.session* %254, %struct.session** %256, align 8
  %257 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %258 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %257, i32 0, i32 0
  %259 = load %struct.TYPE_4__*, %struct.TYPE_4__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 4
  %262 = xor i32 %261, -1
  %263 = load i32, i32* @CMDQ_SHARED_REPEAT, align 4
  %264 = and i32 %262, %263
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %269

266:                                              ; preds = %253
  %267 = load %struct.client*, %struct.client** %10, align 8
  %268 = call i32 @server_client_set_key_table(%struct.client* %267, i32* null)
  br label %269

269:                                              ; preds = %266, %253
  %270 = load %struct.client*, %struct.client** %10, align 8
  %271 = call i32 @tty_update_client_offset(%struct.client* %270)
  %272 = load %struct.client*, %struct.client** %10, align 8
  %273 = call i32 @status_timer_start(%struct.client* %272)
  %274 = load %struct.client*, %struct.client** %10, align 8
  %275 = call i32 @notify_client(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), %struct.client* %274)
  %276 = load %struct.session*, %struct.session** %11, align 8
  %277 = call i32 @session_update_activity(%struct.session* %276, i32* null)
  %278 = load %struct.session*, %struct.session** %11, align 8
  %279 = getelementptr inbounds %struct.session, %struct.session* %278, i32 0, i32 1
  %280 = call i32 @gettimeofday(i32* %279, i32* null)
  %281 = call i32 (...) @recalculate_sizes()
  %282 = call i32 (...) @server_check_unattached()
  %283 = load %struct.client*, %struct.client** %10, align 8
  %284 = call i32 @server_redraw_client(%struct.client* %283)
  %285 = load i32, i32* @WINLINK_ALERTFLAGS, align 4
  %286 = xor i32 %285, -1
  %287 = load %struct.session*, %struct.session** %11, align 8
  %288 = getelementptr inbounds %struct.session, %struct.session* %287, i32 0, i32 0
  %289 = load %struct.TYPE_5__*, %struct.TYPE_5__** %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 4
  %292 = and i32 %291, %286
  store i32 %292, i32* %290, align 4
  %293 = load %struct.session*, %struct.session** %11, align 8
  %294 = call i32 @alerts_check_session(%struct.session* %293)
  %295 = load i32, i32* @CMD_RETURN_NORMAL, align 4
  store i32 %295, i32* %3, align 4
  br label %296

296:                                              ; preds = %269, %172, %162, %134, %119, %96, %91, %54, %27
  %297 = load i32, i32* %3, align 4
  ret i32 %297
}

declare dso_local i8* @args_get(%struct.args*, i8 signext) #1

declare dso_local %struct.client* @cmd_find_client(%struct.cmdq_item*, i8*, i32) #1

declare dso_local i64 @strcspn(i8*, i8*) #1

declare dso_local i64 @cmd_find_target(%struct.TYPE_6__*, %struct.cmdq_item*, i8*, i32, i32) #1

declare dso_local i64 @args_has(%struct.args*, i8 signext) #1

declare dso_local %struct.key_table* @key_bindings_get_table(i8*, i32) #1

declare dso_local i32 @cmdq_error(%struct.cmdq_item*, i8*, ...) #1

declare dso_local i32 @key_bindings_unref_table(%struct.key_table*) #1

declare dso_local %struct.session* @session_next_session(%struct.session*) #1

declare dso_local %struct.session* @session_previous_session(%struct.session*) #1

declare dso_local i64 @session_alive(%struct.session*) #1

declare dso_local i64 @window_push_zoom(%struct.window*, i64) #1

declare dso_local i32 @server_redraw_window(%struct.window*) #1

declare dso_local i32 @window_redraw_active_switch(%struct.window*, %struct.window_pane*) #1

declare dso_local i32 @window_set_active_pane(%struct.window*, %struct.window_pane*, i32) #1

declare dso_local i64 @window_pop_zoom(%struct.window*) #1

declare dso_local i32 @session_set_current(%struct.session*, %struct.winlink*) #1

declare dso_local i32 @cmd_find_from_session(i32*, %struct.session*, i32) #1

declare dso_local i32 @environ_update(i32, i32, i32) #1

declare dso_local i32 @server_client_set_key_table(%struct.client*, i32*) #1

declare dso_local i32 @tty_update_client_offset(%struct.client*) #1

declare dso_local i32 @status_timer_start(%struct.client*) #1

declare dso_local i32 @notify_client(i8*, %struct.client*) #1

declare dso_local i32 @session_update_activity(%struct.session*, i32*) #1

declare dso_local i32 @gettimeofday(i32*, i32*) #1

declare dso_local i32 @recalculate_sizes(...) #1

declare dso_local i32 @server_check_unattached(...) #1

declare dso_local i32 @server_redraw_client(%struct.client*) #1

declare dso_local i32 @alerts_check_session(%struct.session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
