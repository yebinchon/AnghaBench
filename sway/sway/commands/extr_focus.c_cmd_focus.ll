; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/extr_focus.c_cmd_focus.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/extr_focus.c_cmd_focus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__, i32, i64 }
%struct.TYPE_6__ = type { %struct.sway_seat*, %struct.sway_workspace*, %struct.sway_container*, %struct.sway_node* }
%struct.sway_seat = type { i32 }
%struct.sway_workspace = type { i32 }
%struct.sway_container = type { i32 }
%struct.sway_node = type { i64, %struct.sway_container* }
%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.cmd_results = type { i32 }
%struct.sway_output = type { i32 }

@config = common dso_local global %struct.TYPE_8__* null, align 8
@CMD_DEFER = common dso_local global i32 0, align 4
@root = common dso_local global %struct.TYPE_7__* null, align 8
@CMD_INVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"Can't run this command while there's no outputs connected.\00", align 1
@N_WORKSPACE = common dso_local global i64 0, align 8
@CMD_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"Command 'focus' cannot be used above the workspace level\00", align 1
@CMD_SUCCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"floating\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"tiling\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"mode_toggle\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"parent\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"child\00", align 1
@.str.8 = private unnamed_addr constant [115 x i8] c"Expected 'focus <direction|next|prev|parent|child|mode_toggle|floating|tiling>' or 'focus output <direction|name>'\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"sibling\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"Expected container to be non null\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@N_CONTAINER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cmd_results* @cmd_focus(i32 %0, i8** %1) #0 {
  %3 = alloca %struct.cmd_results*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.sway_node*, align 8
  %7 = alloca %struct.sway_container*, align 8
  %8 = alloca %struct.sway_workspace*, align 8
  %9 = alloca %struct.sway_seat*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.sway_output*, align 8
  %14 = alloca %struct.sway_node*, align 8
  %15 = alloca %struct.sway_node*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** @config, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %2
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** @config, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %20, %2
  %26 = load i32, i32* @CMD_DEFER, align 4
  %27 = call %struct.cmd_results* @cmd_results_new(i32 %26, i8* null)
  store %struct.cmd_results* %27, %struct.cmd_results** %3, align 8
  br label %270

28:                                               ; preds = %20
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** @root, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %28
  %36 = load i32, i32* @CMD_INVALID, align 4
  %37 = call %struct.cmd_results* @cmd_results_new(i32 %36, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  store %struct.cmd_results* %37, %struct.cmd_results** %3, align 8
  br label %270

38:                                               ; preds = %28
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** @config, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 3
  %42 = load %struct.sway_node*, %struct.sway_node** %41, align 8
  store %struct.sway_node* %42, %struct.sway_node** %6, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** @config, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 2
  %46 = load %struct.sway_container*, %struct.sway_container** %45, align 8
  store %struct.sway_container* %46, %struct.sway_container** %7, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** @config, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load %struct.sway_workspace*, %struct.sway_workspace** %49, align 8
  store %struct.sway_workspace* %50, %struct.sway_workspace** %8, align 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** @config, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load %struct.sway_seat*, %struct.sway_seat** %53, align 8
  store %struct.sway_seat* %54, %struct.sway_seat** %9, align 8
  %55 = load %struct.sway_node*, %struct.sway_node** %6, align 8
  %56 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @N_WORKSPACE, align 8
  %59 = icmp slt i64 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %38
  %61 = load i32, i32* @CMD_FAILURE, align 4
  %62 = call %struct.cmd_results* @cmd_results_new(i32 %61, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  store %struct.cmd_results* %62, %struct.cmd_results** %3, align 8
  br label %270

63:                                               ; preds = %38
  %64 = load i32, i32* %4, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %86

66:                                               ; preds = %63
  %67 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %68 = icmp ne %struct.sway_container* %67, null
  br i1 %68, label %69, label %86

69:                                               ; preds = %66
  %70 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %71 = call i64 @container_is_scratchpad_hidden(%struct.sway_container* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %69
  %74 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %75 = call i32 @root_scratchpad_show(%struct.sway_container* %74)
  br label %76

76:                                               ; preds = %73, %69
  %77 = load %struct.sway_seat*, %struct.sway_seat** %9, align 8
  %78 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %79 = call i32 @seat_set_focus_container(%struct.sway_seat* %77, %struct.sway_container* %78)
  %80 = load %struct.sway_seat*, %struct.sway_seat** %9, align 8
  %81 = call i32 @seat_consider_warp_to_focus(%struct.sway_seat* %80)
  %82 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %83 = call i32 @container_raise_floating(%struct.sway_container* %82)
  %84 = load i32, i32* @CMD_SUCCESS, align 4
  %85 = call %struct.cmd_results* @cmd_results_new(i32 %84, i8* null)
  store %struct.cmd_results* %85, %struct.cmd_results** %3, align 8
  br label %270

86:                                               ; preds = %66, %63
  %87 = load i8**, i8*** %5, align 8
  %88 = getelementptr inbounds i8*, i8** %87, i64 0
  %89 = load i8*, i8** %88, align 8
  %90 = call i64 @strcmp(i8* %89, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %86
  %93 = load %struct.sway_workspace*, %struct.sway_workspace** %8, align 8
  %94 = load %struct.sway_seat*, %struct.sway_seat** %9, align 8
  %95 = call %struct.cmd_results* @focus_mode(%struct.sway_workspace* %93, %struct.sway_seat* %94, i32 1)
  store %struct.cmd_results* %95, %struct.cmd_results** %3, align 8
  br label %270

96:                                               ; preds = %86
  %97 = load i8**, i8*** %5, align 8
  %98 = getelementptr inbounds i8*, i8** %97, i64 0
  %99 = load i8*, i8** %98, align 8
  %100 = call i64 @strcmp(i8* %99, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %96
  %103 = load %struct.sway_workspace*, %struct.sway_workspace** %8, align 8
  %104 = load %struct.sway_seat*, %struct.sway_seat** %9, align 8
  %105 = call %struct.cmd_results* @focus_mode(%struct.sway_workspace* %103, %struct.sway_seat* %104, i32 0)
  store %struct.cmd_results* %105, %struct.cmd_results** %3, align 8
  br label %270

106:                                              ; preds = %96
  %107 = load i8**, i8*** %5, align 8
  %108 = getelementptr inbounds i8*, i8** %107, i64 0
  %109 = load i8*, i8** %108, align 8
  %110 = call i64 @strcmp(i8* %109, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %112, label %129

112:                                              ; preds = %106
  %113 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %114 = icmp ne %struct.sway_container* %113, null
  br i1 %114, label %115, label %119

115:                                              ; preds = %112
  %116 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %117 = call i64 @container_is_floating_or_child(%struct.sway_container* %116)
  %118 = icmp ne i64 %117, 0
  br label %119

119:                                              ; preds = %115, %112
  %120 = phi i1 [ false, %112 ], [ %118, %115 ]
  %121 = zext i1 %120 to i32
  store i32 %121, i32* %10, align 4
  %122 = load %struct.sway_workspace*, %struct.sway_workspace** %8, align 8
  %123 = load %struct.sway_seat*, %struct.sway_seat** %9, align 8
  %124 = load i32, i32* %10, align 4
  %125 = icmp ne i32 %124, 0
  %126 = xor i1 %125, true
  %127 = zext i1 %126 to i32
  %128 = call %struct.cmd_results* @focus_mode(%struct.sway_workspace* %122, %struct.sway_seat* %123, i32 %127)
  store %struct.cmd_results* %128, %struct.cmd_results** %3, align 8
  br label %270

129:                                              ; preds = %106
  br label %130

130:                                              ; preds = %129
  br label %131

131:                                              ; preds = %130
  %132 = load i8**, i8*** %5, align 8
  %133 = getelementptr inbounds i8*, i8** %132, i64 0
  %134 = load i8*, i8** %133, align 8
  %135 = call i64 @strcmp(i8* %134, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %137, label %146

137:                                              ; preds = %131
  %138 = load i32, i32* %4, align 4
  %139 = add nsw i32 %138, -1
  store i32 %139, i32* %4, align 4
  %140 = load i8**, i8*** %5, align 8
  %141 = getelementptr inbounds i8*, i8** %140, i32 1
  store i8** %141, i8*** %5, align 8
  %142 = load %struct.sway_seat*, %struct.sway_seat** %9, align 8
  %143 = load i32, i32* %4, align 4
  %144 = load i8**, i8*** %5, align 8
  %145 = call %struct.cmd_results* @focus_output(%struct.sway_seat* %142, i32 %143, i8** %144)
  store %struct.cmd_results* %145, %struct.cmd_results** %3, align 8
  br label %270

146:                                              ; preds = %131
  %147 = load i8**, i8*** %5, align 8
  %148 = getelementptr inbounds i8*, i8** %147, i64 0
  %149 = load i8*, i8** %148, align 8
  %150 = call i64 @strcasecmp(i8* %149, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %151 = icmp eq i64 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %146
  %153 = call %struct.cmd_results* (...) @focus_parent()
  store %struct.cmd_results* %153, %struct.cmd_results** %3, align 8
  br label %270

154:                                              ; preds = %146
  %155 = load i8**, i8*** %5, align 8
  %156 = getelementptr inbounds i8*, i8** %155, i64 0
  %157 = load i8*, i8** %156, align 8
  %158 = call i64 @strcasecmp(i8* %157, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %154
  %161 = call %struct.cmd_results* (...) @focus_child()
  store %struct.cmd_results* %161, %struct.cmd_results** %3, align 8
  br label %270

162:                                              ; preds = %154
  store i32 0, i32* %11, align 4
  store i32 1, i32* %12, align 4
  %163 = load i8**, i8*** %5, align 8
  %164 = getelementptr inbounds i8*, i8** %163, i64 0
  %165 = load i8*, i8** %164, align 8
  %166 = call i32 @parse_direction(i8* %165, i32* %11)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %191, label %168

168:                                              ; preds = %162
  %169 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %170 = load %struct.sway_seat*, %struct.sway_seat** %9, align 8
  %171 = load i8**, i8*** %5, align 8
  %172 = getelementptr inbounds i8*, i8** %171, i64 0
  %173 = load i8*, i8** %172, align 8
  %174 = call i32 @get_direction_from_next_prev(%struct.sway_container* %169, %struct.sway_seat* %170, i8* %173, i32* %11)
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %179, label %176

176:                                              ; preds = %168
  %177 = load i32, i32* @CMD_INVALID, align 4
  %178 = call %struct.cmd_results* @cmd_results_new(i32 %177, i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str.8, i64 0, i64 0))
  store %struct.cmd_results* %178, %struct.cmd_results** %3, align 8
  br label %270

179:                                              ; preds = %168
  %180 = load i32, i32* %4, align 4
  %181 = icmp eq i32 %180, 2
  br i1 %181, label %182, label %189

182:                                              ; preds = %179
  %183 = load i8**, i8*** %5, align 8
  %184 = getelementptr inbounds i8*, i8** %183, i64 1
  %185 = load i8*, i8** %184, align 8
  %186 = call i64 @strcasecmp(i8* %185, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  %187 = icmp eq i64 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %182
  store i32 0, i32* %12, align 4
  br label %189

189:                                              ; preds = %188, %182, %179
  br label %190

190:                                              ; preds = %189
  br label %191

191:                                              ; preds = %190, %162
  %192 = load i32, i32* %11, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %197, label %194

194:                                              ; preds = %191
  %195 = load i32, i32* @CMD_SUCCESS, align 4
  %196 = call %struct.cmd_results* @cmd_results_new(i32 %195, i8* null)
  store %struct.cmd_results* %196, %struct.cmd_results** %3, align 8
  br label %270

197:                                              ; preds = %191
  %198 = load %struct.sway_node*, %struct.sway_node** %6, align 8
  %199 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* @N_WORKSPACE, align 8
  %202 = icmp eq i64 %200, %201
  br i1 %202, label %203, label %225

203:                                              ; preds = %197
  %204 = load %struct.sway_workspace*, %struct.sway_workspace** %8, align 8
  %205 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* %11, align 4
  %208 = call %struct.sway_output* @output_get_in_direction(i32 %206, i32 %207)
  store %struct.sway_output* %208, %struct.sway_output** %13, align 8
  %209 = load %struct.sway_output*, %struct.sway_output** %13, align 8
  %210 = icmp ne %struct.sway_output* %209, null
  br i1 %210, label %214, label %211

211:                                              ; preds = %203
  %212 = load i32, i32* @CMD_SUCCESS, align 4
  %213 = call %struct.cmd_results* @cmd_results_new(i32 %212, i8* null)
  store %struct.cmd_results* %213, %struct.cmd_results** %3, align 8
  br label %270

214:                                              ; preds = %203
  %215 = load %struct.sway_output*, %struct.sway_output** %13, align 8
  %216 = load i32, i32* %11, align 4
  %217 = call %struct.sway_node* @get_node_in_output_direction(%struct.sway_output* %215, i32 %216)
  store %struct.sway_node* %217, %struct.sway_node** %14, align 8
  %218 = load %struct.sway_seat*, %struct.sway_seat** %9, align 8
  %219 = load %struct.sway_node*, %struct.sway_node** %14, align 8
  %220 = call i32 @seat_set_focus(%struct.sway_seat* %218, %struct.sway_node* %219)
  %221 = load %struct.sway_seat*, %struct.sway_seat** %9, align 8
  %222 = call i32 @seat_consider_warp_to_focus(%struct.sway_seat* %221)
  %223 = load i32, i32* @CMD_SUCCESS, align 4
  %224 = call %struct.cmd_results* @cmd_results_new(i32 %223, i8* null)
  store %struct.cmd_results* %224, %struct.cmd_results** %3, align 8
  br label %270

225:                                              ; preds = %197
  %226 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %227 = call i32 @sway_assert(%struct.sway_container* %226, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0))
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %232, label %229

229:                                              ; preds = %225
  %230 = load i32, i32* @CMD_FAILURE, align 4
  %231 = call %struct.cmd_results* @cmd_results_new(i32 %230, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0))
  store %struct.cmd_results* %231, %struct.cmd_results** %3, align 8
  br label %270

232:                                              ; preds = %225
  store %struct.sway_node* null, %struct.sway_node** %15, align 8
  %233 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %234 = call i64 @container_is_floating(%struct.sway_container* %233)
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %241

236:                                              ; preds = %232
  %237 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %238 = load %struct.sway_seat*, %struct.sway_seat** %9, align 8
  %239 = load i32, i32* %11, align 4
  %240 = call %struct.sway_node* @node_get_in_direction_floating(%struct.sway_container* %237, %struct.sway_seat* %238, i32 %239)
  store %struct.sway_node* %240, %struct.sway_node** %15, align 8
  br label %247

241:                                              ; preds = %232
  %242 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %243 = load %struct.sway_seat*, %struct.sway_seat** %9, align 8
  %244 = load i32, i32* %11, align 4
  %245 = load i32, i32* %12, align 4
  %246 = call %struct.sway_node* @node_get_in_direction_tiling(%struct.sway_container* %242, %struct.sway_seat* %243, i32 %244, i32 %245)
  store %struct.sway_node* %246, %struct.sway_node** %15, align 8
  br label %247

247:                                              ; preds = %241, %236
  %248 = load %struct.sway_node*, %struct.sway_node** %15, align 8
  %249 = icmp ne %struct.sway_node* %248, null
  br i1 %249, label %250, label %267

250:                                              ; preds = %247
  %251 = load %struct.sway_seat*, %struct.sway_seat** %9, align 8
  %252 = load %struct.sway_node*, %struct.sway_node** %15, align 8
  %253 = call i32 @seat_set_focus(%struct.sway_seat* %251, %struct.sway_node* %252)
  %254 = load %struct.sway_seat*, %struct.sway_seat** %9, align 8
  %255 = call i32 @seat_consider_warp_to_focus(%struct.sway_seat* %254)
  %256 = load %struct.sway_node*, %struct.sway_node** %15, align 8
  %257 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %256, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = load i64, i64* @N_CONTAINER, align 8
  %260 = icmp eq i64 %258, %259
  br i1 %260, label %261, label %266

261:                                              ; preds = %250
  %262 = load %struct.sway_node*, %struct.sway_node** %15, align 8
  %263 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %262, i32 0, i32 1
  %264 = load %struct.sway_container*, %struct.sway_container** %263, align 8
  %265 = call i32 @container_raise_floating(%struct.sway_container* %264)
  br label %266

266:                                              ; preds = %261, %250
  br label %267

267:                                              ; preds = %266, %247
  %268 = load i32, i32* @CMD_SUCCESS, align 4
  %269 = call %struct.cmd_results* @cmd_results_new(i32 %268, i8* null)
  store %struct.cmd_results* %269, %struct.cmd_results** %3, align 8
  br label %270

270:                                              ; preds = %267, %229, %214, %211, %194, %176, %160, %152, %137, %119, %102, %92, %76, %60, %35, %25
  %271 = load %struct.cmd_results*, %struct.cmd_results** %3, align 8
  ret %struct.cmd_results* %271
}

declare dso_local %struct.cmd_results* @cmd_results_new(i32, i8*) #1

declare dso_local i64 @container_is_scratchpad_hidden(%struct.sway_container*) #1

declare dso_local i32 @root_scratchpad_show(%struct.sway_container*) #1

declare dso_local i32 @seat_set_focus_container(%struct.sway_seat*, %struct.sway_container*) #1

declare dso_local i32 @seat_consider_warp_to_focus(%struct.sway_seat*) #1

declare dso_local i32 @container_raise_floating(%struct.sway_container*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.cmd_results* @focus_mode(%struct.sway_workspace*, %struct.sway_seat*, i32) #1

declare dso_local i64 @container_is_floating_or_child(%struct.sway_container*) #1

declare dso_local %struct.cmd_results* @focus_output(%struct.sway_seat*, i32, i8**) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local %struct.cmd_results* @focus_parent(...) #1

declare dso_local %struct.cmd_results* @focus_child(...) #1

declare dso_local i32 @parse_direction(i8*, i32*) #1

declare dso_local i32 @get_direction_from_next_prev(%struct.sway_container*, %struct.sway_seat*, i8*, i32*) #1

declare dso_local %struct.sway_output* @output_get_in_direction(i32, i32) #1

declare dso_local %struct.sway_node* @get_node_in_output_direction(%struct.sway_output*, i32) #1

declare dso_local i32 @seat_set_focus(%struct.sway_seat*, %struct.sway_node*) #1

declare dso_local i32 @sway_assert(%struct.sway_container*, i8*) #1

declare dso_local i64 @container_is_floating(%struct.sway_container*) #1

declare dso_local %struct.sway_node* @node_get_in_direction_floating(%struct.sway_container*, %struct.sway_seat*, i32) #1

declare dso_local %struct.sway_node* @node_get_in_direction_tiling(%struct.sway_container*, %struct.sway_seat*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
