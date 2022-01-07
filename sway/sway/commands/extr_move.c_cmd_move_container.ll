; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/extr_move.c_cmd_move_container.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/extr_move.c_cmd_move_container.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.sway_seat*, %struct.sway_container*, %struct.sway_workspace*, %struct.sway_node* }
%struct.sway_seat = type { i64 }
%struct.sway_container = type { i64, %struct.sway_node, i64, i64, i32, i32, %struct.sway_workspace*, %struct.sway_container* }
%struct.sway_node = type { i64, i32, i32, %struct.sway_output*, %struct.sway_workspace* }
%struct.sway_output = type { %struct.sway_node }
%struct.sway_workspace = type { %struct.sway_node, i64, %struct.sway_output*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_7__ = type { i64 }
%struct.cmd_results = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"move container/window\00", align 1
@EXPECTED_AT_LEAST = common dso_local global i32 0, align 4
@config = common dso_local global %struct.TYPE_8__* null, align 8
@CMD_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Can't move an empty workspace\00", align 1
@FULLSCREEN_GLOBAL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"Can't move fullscreen global container\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"workspace\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"next\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"prev\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"next_on_output\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"prev_on_output\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"current\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"back_and_forth\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"No workspace was previously active.\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"number\00", align 1
@CMD_INVALID = common dso_local global i32 0, align 4
@expected_syntax = common dso_local global i8* null, align 8
@.str.12 = private unnamed_addr constant [30 x i8] c"Invalid workspace number '%s'\00", align 1
@.str.13 = private unnamed_addr constant [68 x i8] c"Can't move sticky container to another workspace on the same output\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.15 = private unnamed_addr constant [43 x i8] c"Can't find output with name/direction '%s'\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"mark\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"Mark '%s' not found\00", align 1
@.str.18 = private unnamed_addr constant [36 x i8] c"Expected output to have a workspace\00", align 1
@root = common dso_local global %struct.TYPE_7__* null, align 8
@CMD_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cmd_results* (i32, i32, i8**)* @cmd_move_container to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cmd_results* @cmd_move_container(i32 %0, i32 %1, i8** %2) #0 {
  %4 = alloca %struct.cmd_results*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca %struct.cmd_results*, align 8
  %9 = alloca %struct.sway_node*, align 8
  %10 = alloca %struct.sway_workspace*, align 8
  %11 = alloca %struct.sway_container*, align 8
  %12 = alloca %struct.sway_seat*, align 8
  %13 = alloca %struct.sway_container*, align 8
  %14 = alloca %struct.sway_workspace*, align 8
  %15 = alloca %struct.sway_output*, align 8
  %16 = alloca %struct.sway_node*, align 8
  %17 = alloca %struct.sway_workspace*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.sway_output*, align 8
  %20 = alloca %struct.sway_container*, align 8
  %21 = alloca %struct.sway_output*, align 8
  %22 = alloca %struct.sway_container*, align 8
  %23 = alloca %struct.sway_output*, align 8
  %24 = alloca %struct.sway_workspace*, align 8
  %25 = alloca %struct.sway_node*, align 8
  %26 = alloca %struct.sway_output*, align 8
  %27 = alloca %struct.sway_workspace*, align 8
  %28 = alloca %struct.sway_workspace*, align 8
  %29 = alloca %struct.sway_node*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  store %struct.cmd_results* null, %struct.cmd_results** %8, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @EXPECTED_AT_LEAST, align 4
  %32 = call %struct.cmd_results* @checkarg(i32 %30, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %31, i32 2)
  store %struct.cmd_results* %32, %struct.cmd_results** %8, align 8
  %33 = icmp ne %struct.cmd_results* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %3
  %35 = load %struct.cmd_results*, %struct.cmd_results** %8, align 8
  store %struct.cmd_results* %35, %struct.cmd_results** %4, align 8
  br label %526

36:                                               ; preds = %3
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** @config, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 3
  %40 = load %struct.sway_node*, %struct.sway_node** %39, align 8
  store %struct.sway_node* %40, %struct.sway_node** %9, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** @config, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 2
  %44 = load %struct.sway_workspace*, %struct.sway_workspace** %43, align 8
  store %struct.sway_workspace* %44, %struct.sway_workspace** %10, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** @config, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load %struct.sway_container*, %struct.sway_container** %47, align 8
  store %struct.sway_container* %48, %struct.sway_container** %11, align 8
  %49 = load %struct.sway_node*, %struct.sway_node** %9, align 8
  %50 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %51, 128
  br i1 %52, label %53, label %66

53:                                               ; preds = %36
  %54 = load %struct.sway_workspace*, %struct.sway_workspace** %10, align 8
  %55 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %54, i32 0, i32 3
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %53
  %61 = load i32, i32* @CMD_FAILURE, align 4
  %62 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %61, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  store %struct.cmd_results* %62, %struct.cmd_results** %4, align 8
  br label %526

63:                                               ; preds = %53
  %64 = load %struct.sway_workspace*, %struct.sway_workspace** %10, align 8
  %65 = call %struct.sway_container* @workspace_wrap_children(%struct.sway_workspace* %64)
  store %struct.sway_container* %65, %struct.sway_container** %11, align 8
  br label %66

66:                                               ; preds = %63, %36
  %67 = load %struct.sway_container*, %struct.sway_container** %11, align 8
  %68 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @FULLSCREEN_GLOBAL, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %66
  %73 = load i32, i32* @CMD_FAILURE, align 4
  %74 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %73, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  store %struct.cmd_results* %74, %struct.cmd_results** %4, align 8
  br label %526

75:                                               ; preds = %66
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** @config, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load %struct.sway_seat*, %struct.sway_seat** %78, align 8
  store %struct.sway_seat* %79, %struct.sway_seat** %12, align 8
  %80 = load %struct.sway_container*, %struct.sway_container** %11, align 8
  %81 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %80, i32 0, i32 7
  %82 = load %struct.sway_container*, %struct.sway_container** %81, align 8
  store %struct.sway_container* %82, %struct.sway_container** %13, align 8
  %83 = load %struct.sway_container*, %struct.sway_container** %11, align 8
  %84 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %83, i32 0, i32 6
  %85 = load %struct.sway_workspace*, %struct.sway_workspace** %84, align 8
  store %struct.sway_workspace* %85, %struct.sway_workspace** %14, align 8
  %86 = load %struct.sway_workspace*, %struct.sway_workspace** %14, align 8
  %87 = icmp ne %struct.sway_workspace* %86, null
  br i1 %87, label %88, label %92

88:                                               ; preds = %75
  %89 = load %struct.sway_workspace*, %struct.sway_workspace** %14, align 8
  %90 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %89, i32 0, i32 2
  %91 = load %struct.sway_output*, %struct.sway_output** %90, align 8
  br label %93

92:                                               ; preds = %75
  br label %93

93:                                               ; preds = %92, %88
  %94 = phi %struct.sway_output* [ %91, %88 ], [ null, %92 ]
  store %struct.sway_output* %94, %struct.sway_output** %15, align 8
  store %struct.sway_node* null, %struct.sway_node** %16, align 8
  %95 = load i8**, i8*** %7, align 8
  %96 = getelementptr inbounds i8*, i8** %95, i64 0
  %97 = load i8*, i8** %96, align 8
  %98 = call i64 @strcasecmp(i8* %97, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %288

100:                                              ; preds = %93
  store %struct.sway_workspace* null, %struct.sway_workspace** %17, align 8
  store i8* null, i8** %18, align 8
  %101 = load i8**, i8*** %7, align 8
  %102 = getelementptr inbounds i8*, i8** %101, i64 1
  %103 = load i8*, i8** %102, align 8
  %104 = call i64 @strcasecmp(i8* %103, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %130, label %106

106:                                              ; preds = %100
  %107 = load i8**, i8*** %7, align 8
  %108 = getelementptr inbounds i8*, i8** %107, i64 1
  %109 = load i8*, i8** %108, align 8
  %110 = call i64 @strcasecmp(i8* %109, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %130, label %112

112:                                              ; preds = %106
  %113 = load i8**, i8*** %7, align 8
  %114 = getelementptr inbounds i8*, i8** %113, i64 1
  %115 = load i8*, i8** %114, align 8
  %116 = call i64 @strcasecmp(i8* %115, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %130, label %118

118:                                              ; preds = %112
  %119 = load i8**, i8*** %7, align 8
  %120 = getelementptr inbounds i8*, i8** %119, i64 1
  %121 = load i8*, i8** %120, align 8
  %122 = call i64 @strcasecmp(i8* %121, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %130, label %124

124:                                              ; preds = %118
  %125 = load i8**, i8*** %7, align 8
  %126 = getelementptr inbounds i8*, i8** %125, i64 1
  %127 = load i8*, i8** %126, align 8
  %128 = call i64 @strcasecmp(i8* %127, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %124, %118, %112, %106, %100
  %131 = load i8**, i8*** %7, align 8
  %132 = getelementptr inbounds i8*, i8** %131, i64 1
  %133 = load i8*, i8** %132, align 8
  %134 = call %struct.sway_workspace* @workspace_by_name(i8* %133)
  store %struct.sway_workspace* %134, %struct.sway_workspace** %17, align 8
  br label %245

135:                                              ; preds = %124
  %136 = load i8**, i8*** %7, align 8
  %137 = getelementptr inbounds i8*, i8** %136, i64 1
  %138 = load i8*, i8** %137, align 8
  %139 = call i64 @strcasecmp(i8* %138, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %141, label %162

141:                                              ; preds = %135
  %142 = load i8**, i8*** %7, align 8
  %143 = getelementptr inbounds i8*, i8** %142, i64 1
  %144 = load i8*, i8** %143, align 8
  %145 = call %struct.sway_workspace* @workspace_by_name(i8* %144)
  store %struct.sway_workspace* %145, %struct.sway_workspace** %17, align 8
  %146 = icmp ne %struct.sway_workspace* %145, null
  br i1 %146, label %161, label %147

147:                                              ; preds = %141
  %148 = load %struct.sway_seat*, %struct.sway_seat** %12, align 8
  %149 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %147
  %153 = load %struct.sway_seat*, %struct.sway_seat** %12, align 8
  %154 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = call i8* @strdup(i64 %155)
  store i8* %156, i8** %18, align 8
  br label %160

157:                                              ; preds = %147
  %158 = load i32, i32* @CMD_FAILURE, align 4
  %159 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %158, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0))
  store %struct.cmd_results* %159, %struct.cmd_results** %4, align 8
  br label %526

160:                                              ; preds = %152
  br label %161

161:                                              ; preds = %160, %141
  br label %244

162:                                              ; preds = %135
  %163 = load i8**, i8*** %7, align 8
  %164 = getelementptr inbounds i8*, i8** %163, i64 1
  %165 = load i8*, i8** %164, align 8
  %166 = call i64 @strcasecmp(i8* %165, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  %167 = icmp eq i64 %166, 0
  br i1 %167, label %168, label %197

168:                                              ; preds = %162
  %169 = load i32, i32* %6, align 4
  %170 = icmp slt i32 %169, 3
  br i1 %170, label %171, label %175

171:                                              ; preds = %168
  %172 = load i32, i32* @CMD_INVALID, align 4
  %173 = load i8*, i8** @expected_syntax, align 8
  %174 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %172, i8* %173)
  store %struct.cmd_results* %174, %struct.cmd_results** %4, align 8
  br label %526

175:                                              ; preds = %168
  %176 = load i8**, i8*** %7, align 8
  %177 = getelementptr inbounds i8*, i8** %176, i64 2
  %178 = load i8*, i8** %177, align 8
  %179 = getelementptr inbounds i8, i8* %178, i64 0
  %180 = load i8, i8* %179, align 1
  %181 = call i32 @isdigit(i8 signext %180)
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %189, label %183

183:                                              ; preds = %175
  %184 = load i32, i32* @CMD_INVALID, align 4
  %185 = load i8**, i8*** %7, align 8
  %186 = getelementptr inbounds i8*, i8** %185, i64 2
  %187 = load i8*, i8** %186, align 8
  %188 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %184, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0), i8* %187)
  store %struct.cmd_results* %188, %struct.cmd_results** %4, align 8
  br label %526

189:                                              ; preds = %175
  %190 = load i8**, i8*** %7, align 8
  %191 = getelementptr inbounds i8*, i8** %190, i64 2
  %192 = load i32, i32* %6, align 4
  %193 = sub nsw i32 %192, 2
  %194 = call i8* @join_args(i8** %191, i32 %193)
  store i8* %194, i8** %18, align 8
  %195 = load i8*, i8** %18, align 8
  %196 = call %struct.sway_workspace* @workspace_by_number(i8* %195)
  store %struct.sway_workspace* %196, %struct.sway_workspace** %17, align 8
  br label %205

197:                                              ; preds = %162
  %198 = load i8**, i8*** %7, align 8
  %199 = getelementptr inbounds i8*, i8** %198, i64 1
  %200 = load i32, i32* %6, align 4
  %201 = sub nsw i32 %200, 1
  %202 = call i8* @join_args(i8** %199, i32 %201)
  store i8* %202, i8** %18, align 8
  %203 = load i8*, i8** %18, align 8
  %204 = call %struct.sway_workspace* @workspace_by_name(i8* %203)
  store %struct.sway_workspace* %204, %struct.sway_workspace** %17, align 8
  br label %205

205:                                              ; preds = %197, %189
  %206 = load i32, i32* %5, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %243, label %208

208:                                              ; preds = %205
  %209 = load %struct.TYPE_8__*, %struct.TYPE_8__** @config, align 8
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %243

213:                                              ; preds = %208
  %214 = load %struct.sway_seat*, %struct.sway_seat** %12, align 8
  %215 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %243

218:                                              ; preds = %213
  %219 = load %struct.sway_workspace*, %struct.sway_workspace** %14, align 8
  %220 = icmp ne %struct.sway_workspace* %219, null
  br i1 %220, label %221, label %242

221:                                              ; preds = %218
  %222 = load %struct.sway_workspace*, %struct.sway_workspace** %14, align 8
  %223 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %222, i32 0, i32 1
  %224 = load i64, i64* %223, align 8
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %242

226:                                              ; preds = %221
  %227 = load %struct.sway_workspace*, %struct.sway_workspace** %14, align 8
  %228 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %227, i32 0, i32 1
  %229 = load i64, i64* %228, align 8
  %230 = load i8*, i8** %18, align 8
  %231 = call i64 @strcmp(i64 %229, i8* %230)
  %232 = icmp eq i64 %231, 0
  br i1 %232, label %233, label %242

233:                                              ; preds = %226
  %234 = load i8*, i8** %18, align 8
  %235 = call i32 @free(i8* %234)
  %236 = load %struct.sway_seat*, %struct.sway_seat** %12, align 8
  %237 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = call i8* @strdup(i64 %238)
  store i8* %239, i8** %18, align 8
  %240 = load i8*, i8** %18, align 8
  %241 = call %struct.sway_workspace* @workspace_by_name(i8* %240)
  store %struct.sway_workspace* %241, %struct.sway_workspace** %17, align 8
  br label %242

242:                                              ; preds = %233, %226, %221, %218
  br label %243

243:                                              ; preds = %242, %213, %208, %205
  br label %244

244:                                              ; preds = %243, %161
  br label %245

245:                                              ; preds = %244, %130
  %246 = load %struct.sway_workspace*, %struct.sway_workspace** %17, align 8
  %247 = icmp ne %struct.sway_workspace* %246, null
  br i1 %247, label %272, label %248

248:                                              ; preds = %245
  %249 = load %struct.sway_container*, %struct.sway_container** %11, align 8
  %250 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %249, i32 0, i32 3
  %251 = load i64, i64* %250, align 8
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %269

253:                                              ; preds = %248
  %254 = load %struct.sway_container*, %struct.sway_container** %11, align 8
  %255 = call i64 @container_is_floating_or_child(%struct.sway_container* %254)
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %269

257:                                              ; preds = %253
  %258 = load i8*, i8** %18, align 8
  %259 = call %struct.sway_output* @workspace_get_initial_output(i8* %258)
  store %struct.sway_output* %259, %struct.sway_output** %19, align 8
  %260 = load %struct.sway_output*, %struct.sway_output** %15, align 8
  %261 = load %struct.sway_output*, %struct.sway_output** %19, align 8
  %262 = icmp eq %struct.sway_output* %260, %261
  br i1 %262, label %263, label %268

263:                                              ; preds = %257
  %264 = load i8*, i8** %18, align 8
  %265 = call i32 @free(i8* %264)
  %266 = load i32, i32* @CMD_FAILURE, align 4
  %267 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %266, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.13, i64 0, i64 0))
  store %struct.cmd_results* %267, %struct.cmd_results** %4, align 8
  br label %526

268:                                              ; preds = %257
  br label %269

269:                                              ; preds = %268, %253, %248
  %270 = load i8*, i8** %18, align 8
  %271 = call %struct.sway_workspace* @workspace_create(i32* null, i8* %270)
  store %struct.sway_workspace* %271, %struct.sway_workspace** %17, align 8
  br label %272

272:                                              ; preds = %269, %245
  %273 = load i8*, i8** %18, align 8
  %274 = call i32 @free(i8* %273)
  %275 = load %struct.sway_seat*, %struct.sway_seat** %12, align 8
  %276 = load %struct.sway_workspace*, %struct.sway_workspace** %17, align 8
  %277 = call %struct.sway_container* @seat_get_focus_inactive_tiling(%struct.sway_seat* %275, %struct.sway_workspace* %276)
  store %struct.sway_container* %277, %struct.sway_container** %20, align 8
  %278 = load %struct.sway_container*, %struct.sway_container** %20, align 8
  %279 = icmp ne %struct.sway_container* %278, null
  br i1 %279, label %280, label %283

280:                                              ; preds = %272
  %281 = load %struct.sway_container*, %struct.sway_container** %20, align 8
  %282 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %281, i32 0, i32 1
  br label %286

283:                                              ; preds = %272
  %284 = load %struct.sway_workspace*, %struct.sway_workspace** %17, align 8
  %285 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %284, i32 0, i32 0
  br label %286

286:                                              ; preds = %283, %280
  %287 = phi %struct.sway_node* [ %282, %280 ], [ %285, %283 ]
  store %struct.sway_node* %287, %struct.sway_node** %16, align 8
  br label %347

288:                                              ; preds = %93
  %289 = load i8**, i8*** %7, align 8
  %290 = getelementptr inbounds i8*, i8** %289, i64 0
  %291 = load i8*, i8** %290, align 8
  %292 = call i64 @strcasecmp(i8* %291, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0))
  %293 = icmp eq i64 %292, 0
  br i1 %293, label %294, label %319

294:                                              ; preds = %288
  %295 = load i8**, i8*** %7, align 8
  %296 = getelementptr inbounds i8*, i8** %295, i64 1
  %297 = load i8*, i8** %296, align 8
  %298 = load %struct.sway_output*, %struct.sway_output** %15, align 8
  %299 = load %struct.sway_container*, %struct.sway_container** %11, align 8
  %300 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %299, i32 0, i32 5
  %301 = load i32, i32* %300, align 4
  %302 = load %struct.sway_container*, %struct.sway_container** %11, align 8
  %303 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %302, i32 0, i32 4
  %304 = load i32, i32* %303, align 8
  %305 = call %struct.sway_output* @output_in_direction(i8* %297, %struct.sway_output* %298, i32 %301, i32 %304)
  store %struct.sway_output* %305, %struct.sway_output** %21, align 8
  %306 = load %struct.sway_output*, %struct.sway_output** %21, align 8
  %307 = icmp ne %struct.sway_output* %306, null
  br i1 %307, label %314, label %308

308:                                              ; preds = %294
  %309 = load i32, i32* @CMD_FAILURE, align 4
  %310 = load i8**, i8*** %7, align 8
  %311 = getelementptr inbounds i8*, i8** %310, i64 1
  %312 = load i8*, i8** %311, align 8
  %313 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %309, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.15, i64 0, i64 0), i8* %312)
  store %struct.cmd_results* %313, %struct.cmd_results** %4, align 8
  br label %526

314:                                              ; preds = %294
  %315 = load %struct.sway_seat*, %struct.sway_seat** %12, align 8
  %316 = load %struct.sway_output*, %struct.sway_output** %21, align 8
  %317 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %316, i32 0, i32 0
  %318 = call %struct.sway_node* @seat_get_focus_inactive(%struct.sway_seat* %315, %struct.sway_node* %317)
  store %struct.sway_node* %318, %struct.sway_node** %16, align 8
  br label %346

319:                                              ; preds = %288
  %320 = load i8**, i8*** %7, align 8
  %321 = getelementptr inbounds i8*, i8** %320, i64 0
  %322 = load i8*, i8** %321, align 8
  %323 = call i64 @strcasecmp(i8* %322, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0))
  %324 = icmp eq i64 %323, 0
  br i1 %324, label %325, label %341

325:                                              ; preds = %319
  %326 = load i8**, i8*** %7, align 8
  %327 = getelementptr inbounds i8*, i8** %326, i64 1
  %328 = load i8*, i8** %327, align 8
  %329 = call %struct.sway_container* @container_find_mark(i8* %328)
  store %struct.sway_container* %329, %struct.sway_container** %22, align 8
  %330 = load %struct.sway_container*, %struct.sway_container** %22, align 8
  %331 = icmp eq %struct.sway_container* %330, null
  br i1 %331, label %332, label %338

332:                                              ; preds = %325
  %333 = load i32, i32* @CMD_FAILURE, align 4
  %334 = load i8**, i8*** %7, align 8
  %335 = getelementptr inbounds i8*, i8** %334, i64 1
  %336 = load i8*, i8** %335, align 8
  %337 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %333, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0), i8* %336)
  store %struct.cmd_results* %337, %struct.cmd_results** %4, align 8
  br label %526

338:                                              ; preds = %325
  %339 = load %struct.sway_container*, %struct.sway_container** %22, align 8
  %340 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %339, i32 0, i32 1
  store %struct.sway_node* %340, %struct.sway_node** %16, align 8
  br label %345

341:                                              ; preds = %319
  %342 = load i32, i32* @CMD_INVALID, align 4
  %343 = load i8*, i8** @expected_syntax, align 8
  %344 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %342, i8* %343)
  store %struct.cmd_results* %344, %struct.cmd_results** %4, align 8
  br label %526

345:                                              ; preds = %338
  br label %346

346:                                              ; preds = %345, %314
  br label %347

347:                                              ; preds = %346, %286
  %348 = load %struct.sway_node*, %struct.sway_node** %16, align 8
  %349 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %348, i32 0, i32 0
  %350 = load i64, i64* %349, align 8
  %351 = icmp eq i64 %350, 131
  br i1 %351, label %352, label %360

352:                                              ; preds = %347
  %353 = load %struct.sway_node*, %struct.sway_node** %16, align 8
  %354 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %353, i32 0, i32 2
  %355 = load i32, i32* %354, align 4
  %356 = call i64 @container_is_scratchpad_hidden(i32 %355)
  %357 = icmp ne i64 %356, 0
  br i1 %357, label %358, label %360

358:                                              ; preds = %352
  %359 = call %struct.cmd_results* (...) @cmd_move_to_scratchpad()
  store %struct.cmd_results* %359, %struct.cmd_results** %4, align 8
  br label %526

360:                                              ; preds = %352, %347
  %361 = load %struct.sway_container*, %struct.sway_container** %11, align 8
  %362 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %361, i32 0, i32 3
  %363 = load i64, i64* %362, align 8
  %364 = icmp ne i64 %363, 0
  br i1 %364, label %365, label %381

365:                                              ; preds = %360
  %366 = load %struct.sway_container*, %struct.sway_container** %11, align 8
  %367 = call i64 @container_is_floating_or_child(%struct.sway_container* %366)
  %368 = icmp ne i64 %367, 0
  br i1 %368, label %369, label %381

369:                                              ; preds = %365
  %370 = load %struct.sway_output*, %struct.sway_output** %15, align 8
  %371 = icmp ne %struct.sway_output* %370, null
  br i1 %371, label %372, label %381

372:                                              ; preds = %369
  %373 = load %struct.sway_node*, %struct.sway_node** %16, align 8
  %374 = load %struct.sway_output*, %struct.sway_output** %15, align 8
  %375 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %374, i32 0, i32 0
  %376 = call i64 @node_has_ancestor(%struct.sway_node* %373, %struct.sway_node* %375)
  %377 = icmp ne i64 %376, 0
  br i1 %377, label %378, label %381

378:                                              ; preds = %372
  %379 = load i32, i32* @CMD_FAILURE, align 4
  %380 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %379, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.13, i64 0, i64 0))
  store %struct.cmd_results* %380, %struct.cmd_results** %4, align 8
  br label %526

381:                                              ; preds = %372, %369, %365, %360
  %382 = load %struct.sway_node*, %struct.sway_node** %16, align 8
  %383 = call %struct.sway_output* @node_get_output(%struct.sway_node* %382)
  store %struct.sway_output* %383, %struct.sway_output** %23, align 8
  %384 = load %struct.sway_output*, %struct.sway_output** %15, align 8
  %385 = load %struct.sway_output*, %struct.sway_output** %23, align 8
  %386 = icmp eq %struct.sway_output* %384, %385
  br i1 %386, label %387, label %388

387:                                              ; preds = %381
  br label %391

388:                                              ; preds = %381
  %389 = load %struct.sway_output*, %struct.sway_output** %23, align 8
  %390 = call %struct.sway_workspace* @output_get_active_workspace(%struct.sway_output* %389)
  br label %391

391:                                              ; preds = %388, %387
  %392 = phi %struct.sway_workspace* [ null, %387 ], [ %390, %388 ]
  store %struct.sway_workspace* %392, %struct.sway_workspace** %24, align 8
  %393 = load %struct.sway_seat*, %struct.sway_seat** %12, align 8
  %394 = call %struct.sway_node* @seat_get_focus(%struct.sway_seat* %393)
  store %struct.sway_node* %394, %struct.sway_node** %25, align 8
  %395 = load %struct.sway_container*, %struct.sway_container** %11, align 8
  %396 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %395, i32 0, i32 2
  %397 = load i64, i64* %396, align 8
  %398 = icmp ne i64 %397, 0
  br i1 %398, label %399, label %402

399:                                              ; preds = %391
  %400 = load %struct.sway_container*, %struct.sway_container** %11, align 8
  %401 = call i32 @root_scratchpad_show(%struct.sway_container* %400)
  br label %402

402:                                              ; preds = %399, %391
  %403 = load %struct.sway_node*, %struct.sway_node** %16, align 8
  %404 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %403, i32 0, i32 0
  %405 = load i64, i64* %404, align 8
  switch i64 %405, label %435 [
    i64 128, label %406
    i64 130, label %412
    i64 131, label %428
    i64 129, label %434
  ]

406:                                              ; preds = %402
  %407 = load %struct.sway_container*, %struct.sway_container** %11, align 8
  %408 = load %struct.sway_node*, %struct.sway_node** %16, align 8
  %409 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %408, i32 0, i32 4
  %410 = load %struct.sway_workspace*, %struct.sway_workspace** %409, align 8
  %411 = call i32 @container_move_to_workspace(%struct.sway_container* %407, %struct.sway_workspace* %410)
  br label %435

412:                                              ; preds = %402
  %413 = load %struct.sway_node*, %struct.sway_node** %16, align 8
  %414 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %413, i32 0, i32 3
  %415 = load %struct.sway_output*, %struct.sway_output** %414, align 8
  store %struct.sway_output* %415, %struct.sway_output** %26, align 8
  %416 = load %struct.sway_output*, %struct.sway_output** %26, align 8
  %417 = call %struct.sway_workspace* @output_get_active_workspace(%struct.sway_output* %416)
  store %struct.sway_workspace* %417, %struct.sway_workspace** %27, align 8
  %418 = load %struct.sway_workspace*, %struct.sway_workspace** %27, align 8
  %419 = call i32 @sway_assert(%struct.sway_workspace* %418, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.18, i64 0, i64 0))
  %420 = icmp ne i32 %419, 0
  br i1 %420, label %424, label %421

421:                                              ; preds = %412
  %422 = load i32, i32* @CMD_FAILURE, align 4
  %423 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %422, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.18, i64 0, i64 0))
  store %struct.cmd_results* %423, %struct.cmd_results** %4, align 8
  br label %526

424:                                              ; preds = %412
  %425 = load %struct.sway_container*, %struct.sway_container** %11, align 8
  %426 = load %struct.sway_workspace*, %struct.sway_workspace** %27, align 8
  %427 = call i32 @container_move_to_workspace(%struct.sway_container* %425, %struct.sway_workspace* %426)
  br label %435

428:                                              ; preds = %402
  %429 = load %struct.sway_container*, %struct.sway_container** %11, align 8
  %430 = load %struct.sway_node*, %struct.sway_node** %16, align 8
  %431 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %430, i32 0, i32 2
  %432 = load i32, i32* %431, align 4
  %433 = call i32 @container_move_to_container(%struct.sway_container* %429, i32 %432)
  br label %435

434:                                              ; preds = %402
  br label %435

435:                                              ; preds = %402, %434, %428, %424, %406
  %436 = load %struct.sway_output*, %struct.sway_output** %23, align 8
  %437 = call %struct.sway_workspace* @output_get_active_workspace(%struct.sway_output* %436)
  store %struct.sway_workspace* %437, %struct.sway_workspace** %28, align 8
  %438 = load %struct.sway_workspace*, %struct.sway_workspace** %28, align 8
  %439 = call i32 @sway_assert(%struct.sway_workspace* %438, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.18, i64 0, i64 0))
  %440 = icmp ne i32 %439, 0
  br i1 %440, label %444, label %441

441:                                              ; preds = %435
  %442 = load i32, i32* @CMD_FAILURE, align 4
  %443 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %442, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.18, i64 0, i64 0))
  store %struct.cmd_results* %443, %struct.cmd_results** %4, align 8
  br label %526

444:                                              ; preds = %435
  %445 = load %struct.sway_workspace*, %struct.sway_workspace** %24, align 8
  %446 = icmp ne %struct.sway_workspace* %445, null
  br i1 %446, label %447, label %459

447:                                              ; preds = %444
  %448 = load %struct.sway_workspace*, %struct.sway_workspace** %24, align 8
  %449 = load %struct.sway_workspace*, %struct.sway_workspace** %28, align 8
  %450 = icmp ne %struct.sway_workspace* %448, %449
  br i1 %450, label %451, label %459

451:                                              ; preds = %447
  %452 = load %struct.sway_seat*, %struct.sway_seat** %12, align 8
  %453 = load %struct.sway_workspace*, %struct.sway_workspace** %24, align 8
  %454 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %453, i32 0, i32 0
  %455 = call %struct.sway_node* @seat_get_focus_inactive(%struct.sway_seat* %452, %struct.sway_node* %454)
  store %struct.sway_node* %455, %struct.sway_node** %29, align 8
  %456 = load %struct.sway_seat*, %struct.sway_seat** %12, align 8
  %457 = load %struct.sway_node*, %struct.sway_node** %29, align 8
  %458 = call i32 @seat_set_raw_focus(%struct.sway_seat* %456, %struct.sway_node* %457)
  br label %459

459:                                              ; preds = %451, %447, %444
  %460 = load %struct.sway_node*, %struct.sway_node** %25, align 8
  %461 = load %struct.sway_container*, %struct.sway_container** %11, align 8
  %462 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %461, i32 0, i32 1
  %463 = icmp eq %struct.sway_node* %460, %462
  br i1 %463, label %464, label %484

464:                                              ; preds = %459
  store %struct.sway_node* null, %struct.sway_node** %25, align 8
  %465 = load %struct.sway_container*, %struct.sway_container** %13, align 8
  %466 = icmp ne %struct.sway_container* %465, null
  br i1 %466, label %467, label %472

467:                                              ; preds = %464
  %468 = load %struct.sway_seat*, %struct.sway_seat** %12, align 8
  %469 = load %struct.sway_container*, %struct.sway_container** %13, align 8
  %470 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %469, i32 0, i32 1
  %471 = call %struct.sway_node* @seat_get_focus_inactive(%struct.sway_seat* %468, %struct.sway_node* %470)
  store %struct.sway_node* %471, %struct.sway_node** %25, align 8
  br label %472

472:                                              ; preds = %467, %464
  %473 = load %struct.sway_node*, %struct.sway_node** %25, align 8
  %474 = icmp ne %struct.sway_node* %473, null
  br i1 %474, label %483, label %475

475:                                              ; preds = %472
  %476 = load %struct.sway_workspace*, %struct.sway_workspace** %14, align 8
  %477 = icmp ne %struct.sway_workspace* %476, null
  br i1 %477, label %478, label %483

478:                                              ; preds = %475
  %479 = load %struct.sway_seat*, %struct.sway_seat** %12, align 8
  %480 = load %struct.sway_workspace*, %struct.sway_workspace** %14, align 8
  %481 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %480, i32 0, i32 0
  %482 = call %struct.sway_node* @seat_get_focus_inactive(%struct.sway_seat* %479, %struct.sway_node* %481)
  store %struct.sway_node* %482, %struct.sway_node** %25, align 8
  br label %483

483:                                              ; preds = %478, %475, %472
  br label %484

484:                                              ; preds = %483, %459
  %485 = load %struct.sway_seat*, %struct.sway_seat** %12, align 8
  %486 = load %struct.sway_node*, %struct.sway_node** %25, align 8
  %487 = call i32 @seat_set_focus(%struct.sway_seat* %485, %struct.sway_node* %486)
  %488 = load %struct.sway_container*, %struct.sway_container** %13, align 8
  %489 = icmp ne %struct.sway_container* %488, null
  br i1 %489, label %490, label %493

490:                                              ; preds = %484
  %491 = load %struct.sway_container*, %struct.sway_container** %13, align 8
  %492 = call i32 @container_reap_empty(%struct.sway_container* %491)
  br label %500

493:                                              ; preds = %484
  %494 = load %struct.sway_workspace*, %struct.sway_workspace** %14, align 8
  %495 = icmp ne %struct.sway_workspace* %494, null
  br i1 %495, label %496, label %499

496:                                              ; preds = %493
  %497 = load %struct.sway_workspace*, %struct.sway_workspace** %14, align 8
  %498 = call i32 @workspace_consider_destroy(%struct.sway_workspace* %497)
  br label %499

499:                                              ; preds = %496, %493
  br label %500

500:                                              ; preds = %499, %490
  %501 = load %struct.TYPE_7__*, %struct.TYPE_7__** @root, align 8
  %502 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %501, i32 0, i32 0
  %503 = load i64, i64* %502, align 8
  %504 = icmp ne i64 %503, 0
  br i1 %504, label %505, label %507

505:                                              ; preds = %500
  %506 = call i32 (...) @arrange_root()
  br label %523

507:                                              ; preds = %500
  %508 = load %struct.sway_workspace*, %struct.sway_workspace** %14, align 8
  %509 = icmp ne %struct.sway_workspace* %508, null
  br i1 %509, label %510, label %519

510:                                              ; preds = %507
  %511 = load %struct.sway_workspace*, %struct.sway_workspace** %14, align 8
  %512 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %511, i32 0, i32 0
  %513 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %512, i32 0, i32 1
  %514 = load i32, i32* %513, align 8
  %515 = icmp ne i32 %514, 0
  br i1 %515, label %519, label %516

516:                                              ; preds = %510
  %517 = load %struct.sway_workspace*, %struct.sway_workspace** %14, align 8
  %518 = call i32 @arrange_workspace(%struct.sway_workspace* %517)
  br label %519

519:                                              ; preds = %516, %510, %507
  %520 = load %struct.sway_node*, %struct.sway_node** %16, align 8
  %521 = call i32 @node_get_parent(%struct.sway_node* %520)
  %522 = call i32 @arrange_node(i32 %521)
  br label %523

523:                                              ; preds = %519, %505
  %524 = load i32, i32* @CMD_SUCCESS, align 4
  %525 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %524, i8* null)
  store %struct.cmd_results* %525, %struct.cmd_results** %4, align 8
  br label %526

526:                                              ; preds = %523, %441, %421, %378, %358, %341, %332, %308, %263, %183, %171, %157, %72, %60, %34
  %527 = load %struct.cmd_results*, %struct.cmd_results** %4, align 8
  ret %struct.cmd_results* %527
}

declare dso_local %struct.cmd_results* @checkarg(i32, i8*, i32, i32) #1

declare dso_local %struct.cmd_results* @cmd_results_new(i32, i8*, ...) #1

declare dso_local %struct.sway_container* @workspace_wrap_children(%struct.sway_workspace*) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local %struct.sway_workspace* @workspace_by_name(i8*) #1

declare dso_local i8* @strdup(i64) #1

declare dso_local i32 @isdigit(i8 signext) #1

declare dso_local i8* @join_args(i8**, i32) #1

declare dso_local %struct.sway_workspace* @workspace_by_number(i8*) #1

declare dso_local i64 @strcmp(i64, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @container_is_floating_or_child(%struct.sway_container*) #1

declare dso_local %struct.sway_output* @workspace_get_initial_output(i8*) #1

declare dso_local %struct.sway_workspace* @workspace_create(i32*, i8*) #1

declare dso_local %struct.sway_container* @seat_get_focus_inactive_tiling(%struct.sway_seat*, %struct.sway_workspace*) #1

declare dso_local %struct.sway_output* @output_in_direction(i8*, %struct.sway_output*, i32, i32) #1

declare dso_local %struct.sway_node* @seat_get_focus_inactive(%struct.sway_seat*, %struct.sway_node*) #1

declare dso_local %struct.sway_container* @container_find_mark(i8*) #1

declare dso_local i64 @container_is_scratchpad_hidden(i32) #1

declare dso_local %struct.cmd_results* @cmd_move_to_scratchpad(...) #1

declare dso_local i64 @node_has_ancestor(%struct.sway_node*, %struct.sway_node*) #1

declare dso_local %struct.sway_output* @node_get_output(%struct.sway_node*) #1

declare dso_local %struct.sway_workspace* @output_get_active_workspace(%struct.sway_output*) #1

declare dso_local %struct.sway_node* @seat_get_focus(%struct.sway_seat*) #1

declare dso_local i32 @root_scratchpad_show(%struct.sway_container*) #1

declare dso_local i32 @container_move_to_workspace(%struct.sway_container*, %struct.sway_workspace*) #1

declare dso_local i32 @sway_assert(%struct.sway_workspace*, i8*) #1

declare dso_local i32 @container_move_to_container(%struct.sway_container*, i32) #1

declare dso_local i32 @seat_set_raw_focus(%struct.sway_seat*, %struct.sway_node*) #1

declare dso_local i32 @seat_set_focus(%struct.sway_seat*, %struct.sway_node*) #1

declare dso_local i32 @container_reap_empty(%struct.sway_container*) #1

declare dso_local i32 @workspace_consider_destroy(%struct.sway_workspace*) #1

declare dso_local i32 @arrange_root(...) #1

declare dso_local i32 @arrange_workspace(%struct.sway_workspace*) #1

declare dso_local i32 @arrange_node(i32) #1

declare dso_local i32 @node_get_parent(%struct.sway_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
