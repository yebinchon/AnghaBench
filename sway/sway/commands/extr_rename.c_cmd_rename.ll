; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/extr_rename.c_cmd_rename.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/extr_rename.c_cmd_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.sway_workspace* }
%struct.sway_workspace = type { i8*, i32 }
%struct.cmd_results = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"rename\00", align 1
@EXPECTED_AT_LEAST = common dso_local global i32 0, align 4
@root = common dso_local global %struct.TYPE_7__* null, align 8
@CMD_INVALID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"Can't run this command while there's no outputs connected.\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"workspace\00", align 1
@expected_syntax = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [3 x i8] c"to\00", align 1
@config = common dso_local global %struct.TYPE_8__* null, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c"number\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Invalid workspace number '%s'\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"There is no workspace with that name\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"next\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"prev\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"next_on_output\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"prev_on_output\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"back_and_forth\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"current\00", align 1
@.str.13 = private unnamed_addr constant [39 x i8] c"Cannot use special workspace name '%s'\00", align 1
@CMD_SUCCESS = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [25 x i8] c"Workspace already exists\00", align 1
@SWAY_DEBUG = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [32 x i8] c"renaming workspace '%s' to '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cmd_results* @cmd_rename(i32 %0, i8** %1) #0 {
  %3 = alloca %struct.cmd_results*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.cmd_results*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sway_workspace*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.sway_workspace*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store %struct.cmd_results* null, %struct.cmd_results** %6, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @EXPECTED_AT_LEAST, align 4
  %15 = call %struct.cmd_results* @checkarg(i32 %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %14, i32 3)
  store %struct.cmd_results* %15, %struct.cmd_results** %6, align 8
  %16 = icmp ne %struct.cmd_results* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load %struct.cmd_results*, %struct.cmd_results** %6, align 8
  store %struct.cmd_results* %18, %struct.cmd_results** %3, align 8
  br label %233

19:                                               ; preds = %2
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** @root, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %19
  %27 = load i32, i32* @CMD_INVALID, align 4
  %28 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %27, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0))
  store %struct.cmd_results* %28, %struct.cmd_results** %3, align 8
  br label %233

29:                                               ; preds = %19
  %30 = load i8**, i8*** %5, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i64 @strcasecmp(i8* %32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load i32, i32* @CMD_INVALID, align 4
  %37 = load i8*, i8** @expected_syntax, align 8
  %38 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %36, i8* %37)
  store %struct.cmd_results* %38, %struct.cmd_results** %3, align 8
  br label %233

39:                                               ; preds = %29
  store i32 1, i32* %7, align 4
  store %struct.sway_workspace* null, %struct.sway_workspace** %8, align 8
  %40 = load i8**, i8*** %5, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 1
  %42 = load i8*, i8** %41, align 8
  %43 = call i64 @strcasecmp(i8* %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %39
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** @config, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load %struct.sway_workspace*, %struct.sway_workspace** %48, align 8
  store %struct.sway_workspace* %49, %struct.sway_workspace** %8, align 8
  br label %127

50:                                               ; preds = %39
  %51 = load i8**, i8*** %5, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 1
  %53 = load i8*, i8** %52, align 8
  %54 = call i64 @strcasecmp(i8* %53, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %93

56:                                               ; preds = %50
  %57 = load i8**, i8*** %5, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i64 2
  %59 = load i8*, i8** %58, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 0
  %61 = load i8, i8* %60, align 1
  %62 = call i32 @isdigit(i8 signext %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %56
  %65 = load i32, i32* @CMD_INVALID, align 4
  %66 = load i8**, i8*** %5, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i64 2
  %68 = load i8*, i8** %67, align 8
  %69 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %65, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i8* %68)
  store %struct.cmd_results* %69, %struct.cmd_results** %3, align 8
  br label %233

70:                                               ; preds = %56
  %71 = load i8**, i8*** %5, align 8
  %72 = getelementptr inbounds i8*, i8** %71, i64 2
  %73 = load i8*, i8** %72, align 8
  %74 = call %struct.sway_workspace* @workspace_by_number(i8* %73)
  store %struct.sway_workspace* %74, %struct.sway_workspace** %8, align 8
  br label %75

75:                                               ; preds = %89, %70
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %4, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %87

79:                                               ; preds = %75
  %80 = load i8**, i8*** %5, align 8
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8*, i8** %80, i64 %82
  %84 = load i8*, i8** %83, align 8
  %85 = call i64 @strcasecmp(i8* %84, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %86 = icmp ne i64 %85, 0
  br label %87

87:                                               ; preds = %79, %75
  %88 = phi i1 [ false, %75 ], [ %86, %79 ]
  br i1 %88, label %89, label %92

89:                                               ; preds = %87
  %90 = load i32, i32* %7, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %7, align 4
  br label %75

92:                                               ; preds = %87
  br label %126

93:                                               ; preds = %50
  %94 = load i32, i32* %7, align 4
  store i32 %94, i32* %9, align 4
  br label %95

95:                                               ; preds = %109, %93
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* %4, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %107

99:                                               ; preds = %95
  %100 = load i8**, i8*** %5, align 8
  %101 = load i32, i32* %9, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8*, i8** %100, i64 %102
  %104 = load i8*, i8** %103, align 8
  %105 = call i64 @strcasecmp(i8* %104, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %106 = icmp ne i64 %105, 0
  br label %107

107:                                              ; preds = %99, %95
  %108 = phi i1 [ false, %95 ], [ %106, %99 ]
  br i1 %108, label %109, label %112

109:                                              ; preds = %107
  %110 = load i32, i32* %9, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %9, align 4
  br label %95

112:                                              ; preds = %107
  %113 = load i8**, i8*** %5, align 8
  %114 = load i32, i32* %7, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8*, i8** %113, i64 %115
  %117 = load i32, i32* %9, align 4
  %118 = load i32, i32* %7, align 4
  %119 = sub nsw i32 %117, %118
  %120 = call i8* @join_args(i8** %116, i32 %119)
  store i8* %120, i8** %10, align 8
  %121 = load i8*, i8** %10, align 8
  %122 = call %struct.sway_workspace* @workspace_by_name(i8* %121)
  store %struct.sway_workspace* %122, %struct.sway_workspace** %8, align 8
  %123 = load i8*, i8** %10, align 8
  %124 = call i32 @free(i8* %123)
  %125 = load i32, i32* %9, align 4
  store i32 %125, i32* %7, align 4
  br label %126

126:                                              ; preds = %112, %92
  br label %127

127:                                              ; preds = %126, %45
  %128 = load %struct.sway_workspace*, %struct.sway_workspace** %8, align 8
  %129 = icmp ne %struct.sway_workspace* %128, null
  br i1 %129, label %133, label %130

130:                                              ; preds = %127
  %131 = load i32, i32* @CMD_INVALID, align 4
  %132 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %131, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  store %struct.cmd_results* %132, %struct.cmd_results** %3, align 8
  br label %233

133:                                              ; preds = %127
  %134 = load i32, i32* %7, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %7, align 4
  %136 = load i32, i32* %7, align 4
  %137 = load i32, i32* %4, align 4
  %138 = icmp sge i32 %136, %137
  br i1 %138, label %139, label %143

139:                                              ; preds = %133
  %140 = load i32, i32* @CMD_INVALID, align 4
  %141 = load i8*, i8** @expected_syntax, align 8
  %142 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %140, i8* %141)
  store %struct.cmd_results* %142, %struct.cmd_results** %3, align 8
  br label %233

143:                                              ; preds = %133
  %144 = load i8**, i8*** %5, align 8
  %145 = load i32, i32* %7, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8*, i8** %144, i64 %146
  %148 = load i32, i32* %4, align 4
  %149 = load i32, i32* %7, align 4
  %150 = sub nsw i32 %148, %149
  %151 = call i8* @join_args(i8** %147, i32 %150)
  store i8* %151, i8** %11, align 8
  %152 = load i8*, i8** %11, align 8
  %153 = call i64 @strcasecmp(i8* %152, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %154 = icmp eq i64 %153, 0
  br i1 %154, label %179, label %155

155:                                              ; preds = %143
  %156 = load i8*, i8** %11, align 8
  %157 = call i64 @strcasecmp(i8* %156, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %158 = icmp eq i64 %157, 0
  br i1 %158, label %179, label %159

159:                                              ; preds = %155
  %160 = load i8*, i8** %11, align 8
  %161 = call i64 @strcasecmp(i8* %160, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  %162 = icmp eq i64 %161, 0
  br i1 %162, label %179, label %163

163:                                              ; preds = %159
  %164 = load i8*, i8** %11, align 8
  %165 = call i64 @strcasecmp(i8* %164, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0))
  %166 = icmp eq i64 %165, 0
  br i1 %166, label %179, label %167

167:                                              ; preds = %163
  %168 = load i8*, i8** %11, align 8
  %169 = call i64 @strcasecmp(i8* %168, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0))
  %170 = icmp eq i64 %169, 0
  br i1 %170, label %179, label %171

171:                                              ; preds = %167
  %172 = load i8*, i8** %11, align 8
  %173 = call i64 @strcasecmp(i8* %172, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  %174 = icmp eq i64 %173, 0
  br i1 %174, label %179, label %175

175:                                              ; preds = %171
  %176 = load i8*, i8** %11, align 8
  %177 = call i64 @strcasecmp(i8* %176, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %178 = icmp eq i64 %177, 0
  br i1 %178, label %179, label %189

179:                                              ; preds = %175, %171, %167, %163, %159, %155, %143
  %180 = load i8*, i8** %11, align 8
  %181 = call i32 @free(i8* %180)
  %182 = load i32, i32* @CMD_INVALID, align 4
  %183 = load i8**, i8*** %5, align 8
  %184 = load i32, i32* %7, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i8*, i8** %183, i64 %185
  %187 = load i8*, i8** %186, align 8
  %188 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %182, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.13, i64 0, i64 0), i8* %187)
  store %struct.cmd_results* %188, %struct.cmd_results** %3, align 8
  br label %233

189:                                              ; preds = %175
  %190 = load i8*, i8** %11, align 8
  %191 = call %struct.sway_workspace* @workspace_by_name(i8* %190)
  store %struct.sway_workspace* %191, %struct.sway_workspace** %12, align 8
  %192 = load %struct.sway_workspace*, %struct.sway_workspace** %12, align 8
  %193 = icmp ne %struct.sway_workspace* %192, null
  br i1 %193, label %194, label %206

194:                                              ; preds = %189
  %195 = load i8*, i8** %11, align 8
  %196 = call i32 @free(i8* %195)
  %197 = load %struct.sway_workspace*, %struct.sway_workspace** %12, align 8
  %198 = load %struct.sway_workspace*, %struct.sway_workspace** %8, align 8
  %199 = icmp eq %struct.sway_workspace* %197, %198
  br i1 %199, label %200, label %203

200:                                              ; preds = %194
  %201 = load i32, i32* @CMD_SUCCESS, align 4
  %202 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %201, i8* null)
  store %struct.cmd_results* %202, %struct.cmd_results** %3, align 8
  br label %233

203:                                              ; preds = %194
  %204 = load i32, i32* @CMD_INVALID, align 4
  %205 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %204, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0))
  store %struct.cmd_results* %205, %struct.cmd_results** %3, align 8
  br label %233

206:                                              ; preds = %189
  %207 = load i32, i32* @SWAY_DEBUG, align 4
  %208 = load %struct.sway_workspace*, %struct.sway_workspace** %8, align 8
  %209 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %208, i32 0, i32 0
  %210 = load i8*, i8** %209, align 8
  %211 = load i8*, i8** %11, align 8
  %212 = call i32 @sway_log(i32 %207, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i64 0, i64 0), i8* %210, i8* %211)
  %213 = load %struct.sway_workspace*, %struct.sway_workspace** %8, align 8
  %214 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %213, i32 0, i32 0
  %215 = load i8*, i8** %214, align 8
  %216 = load i8*, i8** %11, align 8
  %217 = call i32 @root_rename_pid_workspaces(i8* %215, i8* %216)
  %218 = load %struct.sway_workspace*, %struct.sway_workspace** %8, align 8
  %219 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %218, i32 0, i32 0
  %220 = load i8*, i8** %219, align 8
  %221 = call i32 @free(i8* %220)
  %222 = load i8*, i8** %11, align 8
  %223 = load %struct.sway_workspace*, %struct.sway_workspace** %8, align 8
  %224 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %223, i32 0, i32 0
  store i8* %222, i8** %224, align 8
  %225 = load %struct.sway_workspace*, %struct.sway_workspace** %8, align 8
  %226 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 8
  %228 = call i32 @output_sort_workspaces(i32 %227)
  %229 = load %struct.sway_workspace*, %struct.sway_workspace** %8, align 8
  %230 = call i32 @ipc_event_workspace(i32* null, %struct.sway_workspace* %229, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %231 = load i32, i32* @CMD_SUCCESS, align 4
  %232 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %231, i8* null)
  store %struct.cmd_results* %232, %struct.cmd_results** %3, align 8
  br label %233

233:                                              ; preds = %206, %203, %200, %179, %139, %130, %64, %35, %26, %17
  %234 = load %struct.cmd_results*, %struct.cmd_results** %3, align 8
  ret %struct.cmd_results* %234
}

declare dso_local %struct.cmd_results* @checkarg(i32, i8*, i32, i32) #1

declare dso_local %struct.cmd_results* @cmd_results_new(i32, i8*, ...) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @isdigit(i8 signext) #1

declare dso_local %struct.sway_workspace* @workspace_by_number(i8*) #1

declare dso_local i8* @join_args(i8**, i32) #1

declare dso_local %struct.sway_workspace* @workspace_by_name(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @sway_log(i32, i8*, i8*, i8*) #1

declare dso_local i32 @root_rename_pid_workspaces(i8*, i8*) #1

declare dso_local i32 @output_sort_workspaces(i32) #1

declare dso_local i32 @ipc_event_workspace(i32*, %struct.sway_workspace*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
