; ModuleID = '/home/carl/AnghaBench/sway/sway/extr_commands.c_execute_command.c'
source_filename = "/home/carl/AnghaBench/sway/sway/extr_commands.c_execute_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, %struct.sway_seat* }
%struct.sway_seat = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i64, %struct.sway_view** }
%struct.sway_view = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.sway_node }
%struct.sway_node = type { i32 }
%struct.sway_container = type { %struct.sway_node }
%struct.criteria = type { i32 }
%struct.cmd_handler = type { %struct.cmd_results* (i32, i8**)* }
%struct.cmd_results = type { i64 }

@.str = private unnamed_addr constant [44 x i8] c"could not find a seat to run the command on\00", align 1
@config = common dso_local global %struct.TYPE_11__* null, align 8
@CMD_INVALID = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c";,\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SWAY_INFO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"Ignoring empty command.\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"Handling command '%s'\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"exec\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"exec_always\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"Unknown/invalid command '%s'\00", align 1
@root = common dso_local global %struct.TYPE_15__* null, align 8
@CMD_FAILURE = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [18 x i8] c"No matching node.\00", align 1
@CMD_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_14__* @execute_command(i8* %0, %struct.sway_seat* %1, %struct.sway_container* %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sway_seat*, align 8
  %7 = alloca %struct.sway_container*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_14__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.criteria*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8**, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.cmd_handler*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.sway_node*, align 8
  %22 = alloca %struct.cmd_results*, align 8
  %23 = alloca %struct.cmd_results*, align 8
  %24 = alloca i32, align 4
  %25 = alloca %struct.sway_view*, align 8
  %26 = alloca %struct.cmd_results*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.sway_seat* %1, %struct.sway_seat** %6, align 8
  store %struct.sway_container* %2, %struct.sway_container** %7, align 8
  store i8 59, i8* %9, align 1
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %10, align 8
  %27 = load %struct.sway_seat*, %struct.sway_seat** %6, align 8
  %28 = icmp eq %struct.sway_seat* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %3
  %30 = call %struct.sway_seat* (...) @input_manager_get_default_seat()
  store %struct.sway_seat* %30, %struct.sway_seat** %6, align 8
  %31 = load %struct.sway_seat*, %struct.sway_seat** %6, align 8
  %32 = call i32 @sway_assert(%struct.sway_seat* %31, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %4, align 8
  br label %375

35:                                               ; preds = %29
  br label %36

36:                                               ; preds = %35, %3
  %37 = load i8*, i8** %5, align 8
  %38 = call i8* @strdup(i8* %37)
  store i8* %38, i8** %11, align 8
  %39 = load i8*, i8** %11, align 8
  store i8* %39, i8** %12, align 8
  %40 = call %struct.TYPE_14__* (...) @create_list()
  store %struct.TYPE_14__* %40, %struct.TYPE_14__** %13, align 8
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %42 = icmp ne %struct.TYPE_14__* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load i8*, i8** %11, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %43, %36
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %4, align 8
  br label %375

47:                                               ; preds = %43
  %48 = load %struct.sway_seat*, %struct.sway_seat** %6, align 8
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** @config, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 1
  store %struct.sway_seat* %48, %struct.sway_seat** %51, align 8
  br label %52

52:                                               ; preds = %365, %47
  br label %53

53:                                               ; preds = %59, %52
  %54 = load i8*, i8** %12, align 8
  %55 = load i8, i8* %54, align 1
  %56 = call i64 @isspace(i8 signext %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  br label %59

59:                                               ; preds = %58
  %60 = load i8*, i8** %12, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %12, align 8
  br label %53

62:                                               ; preds = %53
  %63 = load i8, i8* %9, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 59
  br i1 %65, label %66, label %115

66:                                               ; preds = %62
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** @config, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  store i32 0, i32* %69, align 8
  %70 = load i8*, i8** %12, align 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 91
  br i1 %73, label %74, label %114

74:                                               ; preds = %66
  store i8* null, i8** %14, align 8
  %75 = load i8*, i8** %12, align 8
  %76 = call %struct.criteria* @criteria_parse(i8* %75, i8** %14)
  store %struct.criteria* %76, %struct.criteria** %15, align 8
  %77 = load %struct.criteria*, %struct.criteria** %15, align 8
  %78 = icmp ne %struct.criteria* %77, null
  br i1 %78, label %87, label %79

79:                                               ; preds = %74
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %81 = load i64, i64* @CMD_INVALID, align 8
  %82 = load i8*, i8** %14, align 8
  %83 = call %struct.cmd_results* (i64, i8*, ...) @cmd_results_new(i64 %81, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %82)
  %84 = call i32 @list_add(%struct.TYPE_14__* %80, %struct.cmd_results* %83)
  %85 = load i8*, i8** %14, align 8
  %86 = call i32 @free(i8* %85)
  br label %369

87:                                               ; preds = %74
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %89 = call i32 @list_free(%struct.TYPE_14__* %88)
  %90 = load %struct.criteria*, %struct.criteria** %15, align 8
  %91 = call %struct.TYPE_14__* @criteria_get_views(%struct.criteria* %90)
  store %struct.TYPE_14__* %91, %struct.TYPE_14__** %10, align 8
  %92 = load %struct.criteria*, %struct.criteria** %15, align 8
  %93 = getelementptr inbounds %struct.criteria, %struct.criteria* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @strlen(i32 %94)
  %96 = load i8*, i8** %12, align 8
  %97 = sext i32 %95 to i64
  %98 = getelementptr inbounds i8, i8* %96, i64 %97
  store i8* %98, i8** %12, align 8
  %99 = load %struct.criteria*, %struct.criteria** %15, align 8
  %100 = call i32 @criteria_destroy(%struct.criteria* %99)
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** @config, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 0
  store i32 1, i32* %103, align 8
  br label %104

104:                                              ; preds = %110, %87
  %105 = load i8*, i8** %12, align 8
  %106 = load i8, i8* %105, align 1
  %107 = call i64 @isspace(i8 signext %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %104
  br label %110

110:                                              ; preds = %109
  %111 = load i8*, i8** %12, align 8
  %112 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %112, i8** %12, align 8
  br label %104

113:                                              ; preds = %104
  br label %114

114:                                              ; preds = %113, %66
  br label %115

115:                                              ; preds = %114, %62
  %116 = call i8* @argsep(i8** %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %9)
  store i8* %116, i8** %8, align 8
  br label %117

117:                                              ; preds = %123, %115
  %118 = load i8*, i8** %8, align 8
  %119 = load i8, i8* %118, align 1
  %120 = call i64 @isspace(i8 signext %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %117
  br label %123

123:                                              ; preds = %122
  %124 = load i8*, i8** %8, align 8
  %125 = getelementptr inbounds i8, i8* %124, i32 1
  store i8* %125, i8** %8, align 8
  br label %117

126:                                              ; preds = %117
  %127 = load i8*, i8** %8, align 8
  %128 = call i64 @strcmp(i8* %127, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %126
  %131 = load i32, i32* @SWAY_INFO, align 4
  %132 = call i32 (i32, i8*, ...) @sway_log(i32 %131, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  br label %365

133:                                              ; preds = %126
  %134 = load i32, i32* @SWAY_INFO, align 4
  %135 = load i8*, i8** %8, align 8
  %136 = call i32 (i32, i8*, ...) @sway_log(i32 %134, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* %135)
  %137 = load i8*, i8** %8, align 8
  %138 = call i8** @split_args(i8* %137, i32* %16)
  store i8** %138, i8*** %17, align 8
  %139 = load i8**, i8*** %17, align 8
  %140 = getelementptr inbounds i8*, i8** %139, i64 0
  %141 = load i8*, i8** %140, align 8
  %142 = call i64 @strcmp(i8* %141, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %191

144:                                              ; preds = %133
  %145 = load i8**, i8*** %17, align 8
  %146 = getelementptr inbounds i8*, i8** %145, i64 0
  %147 = load i8*, i8** %146, align 8
  %148 = call i64 @strcmp(i8* %147, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %191

150:                                              ; preds = %144
  %151 = load i8**, i8*** %17, align 8
  %152 = getelementptr inbounds i8*, i8** %151, i64 0
  %153 = load i8*, i8** %152, align 8
  %154 = call i64 @strcmp(i8* %153, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %191

156:                                              ; preds = %150
  store i32 1, i32* %18, align 4
  br label %157

157:                                              ; preds = %187, %156
  %158 = load i32, i32* %18, align 4
  %159 = load i32, i32* %16, align 4
  %160 = icmp slt i32 %158, %159
  br i1 %160, label %161, label %190

161:                                              ; preds = %157
  %162 = load i8**, i8*** %17, align 8
  %163 = load i32, i32* %18, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i8*, i8** %162, i64 %164
  %166 = load i8*, i8** %165, align 8
  %167 = load i8, i8* %166, align 1
  %168 = sext i8 %167 to i32
  %169 = icmp eq i32 %168, 34
  br i1 %169, label %179, label %170

170:                                              ; preds = %161
  %171 = load i8**, i8*** %17, align 8
  %172 = load i32, i32* %18, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i8*, i8** %171, i64 %173
  %175 = load i8*, i8** %174, align 8
  %176 = load i8, i8* %175, align 1
  %177 = sext i8 %176 to i32
  %178 = icmp eq i32 %177, 39
  br i1 %178, label %179, label %186

179:                                              ; preds = %170, %161
  %180 = load i8**, i8*** %17, align 8
  %181 = load i32, i32* %18, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i8*, i8** %180, i64 %182
  %184 = load i8*, i8** %183, align 8
  %185 = call i32 @strip_quotes(i8* %184)
  br label %186

186:                                              ; preds = %179, %170
  br label %187

187:                                              ; preds = %186
  %188 = load i32, i32* %18, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %18, align 4
  br label %157

190:                                              ; preds = %157
  br label %191

191:                                              ; preds = %190, %150, %144, %133
  %192 = load i8**, i8*** %17, align 8
  %193 = getelementptr inbounds i8*, i8** %192, i64 0
  %194 = load i8*, i8** %193, align 8
  %195 = call %struct.cmd_handler* @find_core_handler(i8* %194)
  store %struct.cmd_handler* %195, %struct.cmd_handler** %19, align 8
  %196 = load %struct.cmd_handler*, %struct.cmd_handler** %19, align 8
  %197 = icmp ne %struct.cmd_handler* %196, null
  br i1 %197, label %209, label %198

198:                                              ; preds = %191
  %199 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %200 = load i64, i64* @CMD_INVALID, align 8
  %201 = load i8**, i8*** %17, align 8
  %202 = getelementptr inbounds i8*, i8** %201, i64 0
  %203 = load i8*, i8** %202, align 8
  %204 = call %struct.cmd_results* (i64, i8*, ...) @cmd_results_new(i64 %200, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0), i8* %203)
  %205 = call i32 @list_add(%struct.TYPE_14__* %199, %struct.cmd_results* %204)
  %206 = load i32, i32* %16, align 4
  %207 = load i8**, i8*** %17, align 8
  %208 = call i32 @free_argv(i32 %206, i8** %207)
  br label %369

209:                                              ; preds = %191
  %210 = load %struct.cmd_handler*, %struct.cmd_handler** %19, align 8
  %211 = getelementptr inbounds %struct.cmd_handler, %struct.cmd_handler* %210, i32 0, i32 0
  %212 = load %struct.cmd_results* (i32, i8**)*, %struct.cmd_results* (i32, i8**)** %211, align 8
  %213 = icmp eq %struct.cmd_results* (i32, i8**)* %212, @cmd_set
  %214 = zext i1 %213 to i64
  %215 = select i1 %213, i32 2, i32 1
  store i32 %215, i32* %20, align 4
  br label %216

216:                                              ; preds = %231, %209
  %217 = load i32, i32* %20, align 4
  %218 = load i32, i32* %16, align 4
  %219 = icmp slt i32 %217, %218
  br i1 %219, label %220, label %234

220:                                              ; preds = %216
  %221 = load i8**, i8*** %17, align 8
  %222 = load i32, i32* %20, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i8*, i8** %221, i64 %223
  %225 = load i8*, i8** %224, align 8
  %226 = call i8* @do_var_replacement(i8* %225)
  %227 = load i8**, i8*** %17, align 8
  %228 = load i32, i32* %20, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i8*, i8** %227, i64 %229
  store i8* %226, i8** %230, align 8
  br label %231

231:                                              ; preds = %220
  %232 = load i32, i32* %20, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %20, align 4
  br label %216

234:                                              ; preds = %216
  %235 = load %struct.TYPE_11__*, %struct.TYPE_11__** @config, align 8
  %236 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %276, label %240

240:                                              ; preds = %234
  %241 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %242 = icmp ne %struct.sway_container* %241, null
  br i1 %242, label %243, label %246

243:                                              ; preds = %240
  %244 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %245 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %244, i32 0, i32 0
  br label %251

246:                                              ; preds = %240
  %247 = load %struct.sway_seat*, %struct.sway_seat** %6, align 8
  %248 = load %struct.TYPE_15__*, %struct.TYPE_15__** @root, align 8
  %249 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %248, i32 0, i32 0
  %250 = call %struct.sway_node* @seat_get_focus_inactive(%struct.sway_seat* %247, i32* %249)
  br label %251

251:                                              ; preds = %246, %243
  %252 = phi %struct.sway_node* [ %245, %243 ], [ %250, %246 ]
  store %struct.sway_node* %252, %struct.sway_node** %21, align 8
  %253 = load %struct.sway_node*, %struct.sway_node** %21, align 8
  %254 = call i32 @set_config_node(%struct.sway_node* %253)
  %255 = load %struct.cmd_handler*, %struct.cmd_handler** %19, align 8
  %256 = getelementptr inbounds %struct.cmd_handler, %struct.cmd_handler* %255, i32 0, i32 0
  %257 = load %struct.cmd_results* (i32, i8**)*, %struct.cmd_results* (i32, i8**)** %256, align 8
  %258 = load i32, i32* %16, align 4
  %259 = sub nsw i32 %258, 1
  %260 = load i8**, i8*** %17, align 8
  %261 = getelementptr inbounds i8*, i8** %260, i64 1
  %262 = call %struct.cmd_results* %257(i32 %259, i8** %261)
  store %struct.cmd_results* %262, %struct.cmd_results** %22, align 8
  %263 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %264 = load %struct.cmd_results*, %struct.cmd_results** %22, align 8
  %265 = call i32 @list_add(%struct.TYPE_14__* %263, %struct.cmd_results* %264)
  %266 = load %struct.cmd_results*, %struct.cmd_results** %22, align 8
  %267 = getelementptr inbounds %struct.cmd_results, %struct.cmd_results* %266, i32 0, i32 0
  %268 = load i64, i64* %267, align 8
  %269 = load i64, i64* @CMD_INVALID, align 8
  %270 = icmp eq i64 %268, %269
  br i1 %270, label %271, label %275

271:                                              ; preds = %251
  %272 = load i32, i32* %16, align 4
  %273 = load i8**, i8*** %17, align 8
  %274 = call i32 @free_argv(i32 %272, i8** %273)
  br label %369

275:                                              ; preds = %251
  br label %361

276:                                              ; preds = %234
  %277 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %278 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %277, i32 0, i32 0
  %279 = load i64, i64* %278, align 8
  %280 = icmp eq i64 %279, 0
  br i1 %280, label %281, label %286

281:                                              ; preds = %276
  %282 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %283 = load i64, i64* @CMD_FAILURE, align 8
  %284 = call %struct.cmd_results* (i64, i8*, ...) @cmd_results_new(i64 %283, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0))
  %285 = call i32 @list_add(%struct.TYPE_14__* %282, %struct.cmd_results* %284)
  br label %360

286:                                              ; preds = %276
  store %struct.cmd_results* null, %struct.cmd_results** %23, align 8
  store i32 0, i32* %24, align 4
  br label %287

287:                                              ; preds = %345, %286
  %288 = load i32, i32* %24, align 4
  %289 = sext i32 %288 to i64
  %290 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %291 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %290, i32 0, i32 0
  %292 = load i64, i64* %291, align 8
  %293 = icmp slt i64 %289, %292
  br i1 %293, label %294, label %348

294:                                              ; preds = %287
  %295 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %296 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %295, i32 0, i32 1
  %297 = load %struct.sway_view**, %struct.sway_view*** %296, align 8
  %298 = load i32, i32* %24, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds %struct.sway_view*, %struct.sway_view** %297, i64 %299
  %301 = load %struct.sway_view*, %struct.sway_view** %300, align 8
  store %struct.sway_view* %301, %struct.sway_view** %25, align 8
  %302 = load %struct.sway_view*, %struct.sway_view** %25, align 8
  %303 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %302, i32 0, i32 0
  %304 = load %struct.TYPE_13__*, %struct.TYPE_13__** %303, align 8
  %305 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %304, i32 0, i32 0
  %306 = call i32 @set_config_node(%struct.sway_node* %305)
  %307 = load %struct.cmd_handler*, %struct.cmd_handler** %19, align 8
  %308 = getelementptr inbounds %struct.cmd_handler, %struct.cmd_handler* %307, i32 0, i32 0
  %309 = load %struct.cmd_results* (i32, i8**)*, %struct.cmd_results* (i32, i8**)** %308, align 8
  %310 = load i32, i32* %16, align 4
  %311 = sub nsw i32 %310, 1
  %312 = load i8**, i8*** %17, align 8
  %313 = getelementptr inbounds i8*, i8** %312, i64 1
  %314 = call %struct.cmd_results* %309(i32 %311, i8** %313)
  store %struct.cmd_results* %314, %struct.cmd_results** %26, align 8
  %315 = load %struct.cmd_results*, %struct.cmd_results** %26, align 8
  %316 = getelementptr inbounds %struct.cmd_results, %struct.cmd_results* %315, i32 0, i32 0
  %317 = load i64, i64* %316, align 8
  %318 = load i64, i64* @CMD_SUCCESS, align 8
  %319 = icmp eq i64 %317, %318
  br i1 %319, label %320, label %323

320:                                              ; preds = %294
  %321 = load %struct.cmd_results*, %struct.cmd_results** %26, align 8
  %322 = call i32 @free_cmd_results(%struct.cmd_results* %321)
  br label %344

323:                                              ; preds = %294
  %324 = load %struct.cmd_results*, %struct.cmd_results** %23, align 8
  %325 = icmp ne %struct.cmd_results* %324, null
  br i1 %325, label %326, label %329

326:                                              ; preds = %323
  %327 = load %struct.cmd_results*, %struct.cmd_results** %23, align 8
  %328 = call i32 @free_cmd_results(%struct.cmd_results* %327)
  br label %329

329:                                              ; preds = %326, %323
  %330 = load %struct.cmd_results*, %struct.cmd_results** %26, align 8
  store %struct.cmd_results* %330, %struct.cmd_results** %23, align 8
  %331 = load %struct.cmd_results*, %struct.cmd_results** %26, align 8
  %332 = getelementptr inbounds %struct.cmd_results, %struct.cmd_results* %331, i32 0, i32 0
  %333 = load i64, i64* %332, align 8
  %334 = load i64, i64* @CMD_INVALID, align 8
  %335 = icmp eq i64 %333, %334
  br i1 %335, label %336, label %343

336:                                              ; preds = %329
  %337 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %338 = load %struct.cmd_results*, %struct.cmd_results** %23, align 8
  %339 = call i32 @list_add(%struct.TYPE_14__* %337, %struct.cmd_results* %338)
  %340 = load i32, i32* %16, align 4
  %341 = load i8**, i8*** %17, align 8
  %342 = call i32 @free_argv(i32 %340, i8** %341)
  br label %369

343:                                              ; preds = %329
  br label %344

344:                                              ; preds = %343, %320
  br label %345

345:                                              ; preds = %344
  %346 = load i32, i32* %24, align 4
  %347 = add nsw i32 %346, 1
  store i32 %347, i32* %24, align 4
  br label %287

348:                                              ; preds = %287
  %349 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %350 = load %struct.cmd_results*, %struct.cmd_results** %23, align 8
  %351 = icmp ne %struct.cmd_results* %350, null
  br i1 %351, label %352, label %354

352:                                              ; preds = %348
  %353 = load %struct.cmd_results*, %struct.cmd_results** %23, align 8
  br label %357

354:                                              ; preds = %348
  %355 = load i64, i64* @CMD_SUCCESS, align 8
  %356 = call %struct.cmd_results* (i64, i8*, ...) @cmd_results_new(i64 %355, i8* null)
  br label %357

357:                                              ; preds = %354, %352
  %358 = phi %struct.cmd_results* [ %353, %352 ], [ %356, %354 ]
  %359 = call i32 @list_add(%struct.TYPE_14__* %349, %struct.cmd_results* %358)
  br label %360

360:                                              ; preds = %357, %281
  br label %361

361:                                              ; preds = %360, %275
  %362 = load i32, i32* %16, align 4
  %363 = load i8**, i8*** %17, align 8
  %364 = call i32 @free_argv(i32 %362, i8** %363)
  br label %365

365:                                              ; preds = %361, %130
  %366 = load i8*, i8** %12, align 8
  %367 = icmp ne i8* %366, null
  br i1 %367, label %52, label %368

368:                                              ; preds = %365
  br label %369

369:                                              ; preds = %368, %336, %271, %198, %79
  %370 = load i8*, i8** %11, align 8
  %371 = call i32 @free(i8* %370)
  %372 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %373 = call i32 @list_free(%struct.TYPE_14__* %372)
  %374 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  store %struct.TYPE_14__* %374, %struct.TYPE_14__** %4, align 8
  br label %375

375:                                              ; preds = %369, %46, %34
  %376 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  ret %struct.TYPE_14__* %376
}

declare dso_local %struct.sway_seat* @input_manager_get_default_seat(...) #1

declare dso_local i32 @sway_assert(%struct.sway_seat*, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local %struct.TYPE_14__* @create_list(...) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local %struct.criteria* @criteria_parse(i8*, i8**) #1

declare dso_local i32 @list_add(%struct.TYPE_14__*, %struct.cmd_results*) #1

declare dso_local %struct.cmd_results* @cmd_results_new(i64, i8*, ...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @list_free(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_14__* @criteria_get_views(%struct.criteria*) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @criteria_destroy(%struct.criteria*) #1

declare dso_local i8* @argsep(i8**, i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @sway_log(i32, i8*, ...) #1

declare dso_local i8** @split_args(i8*, i32*) #1

declare dso_local i32 @strip_quotes(i8*) #1

declare dso_local %struct.cmd_handler* @find_core_handler(i8*) #1

declare dso_local i32 @free_argv(i32, i8**) #1

declare dso_local %struct.cmd_results* @cmd_set(i32, i8**) #1

declare dso_local i8* @do_var_replacement(i8*) #1

declare dso_local %struct.sway_node* @seat_get_focus_inactive(%struct.sway_seat*, i32*) #1

declare dso_local i32 @set_config_node(%struct.sway_node*) #1

declare dso_local i32 @free_cmd_results(%struct.cmd_results*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
