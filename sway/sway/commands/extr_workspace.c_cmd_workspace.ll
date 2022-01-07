; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/extr_workspace.c_cmd_workspace.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/extr_workspace.c_cmd_workspace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__, i32, i64 }
%struct.TYPE_6__ = type { %struct.sway_seat* }
%struct.sway_seat = type { i8* }
%struct.TYPE_7__ = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.cmd_results = type { i32 }
%struct.workspace_config = type { i32 }
%struct.sway_workspace = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"workspace\00", align 1
@EXPECTED_AT_LEAST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"gaps\00", align 1
@CMD_FAILURE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"Unable to allocate workspace output\00", align 1
@config = common dso_local global %struct.TYPE_8__* null, align 8
@CMD_DEFER = common dso_local global i32 0, align 4
@root = common dso_local global %struct.TYPE_7__* null, align 8
@CMD_INVALID = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [59 x i8] c"Can't run this command while there's no outputs connected.\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"Can't switch workspaces while fullscreen global\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"--no-auto-back-and-forth\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"--create\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"No workspace to switch from\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"number\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"Expected workspace number\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"Invalid workspace number '%s'\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"next\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"prev\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"current\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"next_on_output\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"prev_on_output\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"back_and_forth\00", align 1
@.str.18 = private unnamed_addr constant [31 x i8] c"There is no previous workspace\00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"No workspace to switch to\00", align 1
@CMD_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cmd_results* @cmd_workspace(i32 %0, i8** %1) #0 {
  %3 = alloca %struct.cmd_results*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.cmd_results*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.workspace_config*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.sway_seat*, align 8
  %17 = alloca %struct.sway_workspace*, align 8
  %18 = alloca %struct.sway_workspace*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store %struct.cmd_results* null, %struct.cmd_results** %6, align 8
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @EXPECTED_AT_LEAST, align 4
  %23 = call %struct.cmd_results* @checkarg(i32 %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %22, i32 1)
  store %struct.cmd_results* %23, %struct.cmd_results** %6, align 8
  %24 = icmp ne %struct.cmd_results* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load %struct.cmd_results*, %struct.cmd_results** %6, align 8
  store %struct.cmd_results* %26, %struct.cmd_results** %3, align 8
  br label %342

27:                                               ; preds = %2
  store i32 -1, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %28

28:                                               ; preds = %43, %27
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %46

32:                                               ; preds = %28
  %33 = load i8**, i8*** %5, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8*, i8** %33, i64 %35
  %37 = load i8*, i8** %36, align 8
  %38 = call i64 @strcasecmp(i8* %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = load i32, i32* %9, align 4
  store i32 %41, i32* %7, align 4
  br label %46

42:                                               ; preds = %32
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %9, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %9, align 4
  br label %28

46:                                               ; preds = %40, %28
  store i32 0, i32* %10, align 4
  br label %47

47:                                               ; preds = %62, %46
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %65

51:                                               ; preds = %47
  %52 = load i8**, i8*** %5, align 8
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8*, i8** %52, i64 %54
  %56 = load i8*, i8** %55, align 8
  %57 = call i64 @strcasecmp(i8* %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %51
  %60 = load i32, i32* %10, align 4
  store i32 %60, i32* %8, align 4
  br label %65

61:                                               ; preds = %51
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %10, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %10, align 4
  br label %47

65:                                               ; preds = %59, %47
  %66 = load i32, i32* %7, align 4
  %67 = icmp sge i32 %66, 0
  br i1 %67, label %68, label %112

68:                                               ; preds = %65
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* @EXPECTED_AT_LEAST, align 4
  %71 = load i32, i32* %7, align 4
  %72 = add nsw i32 %71, 2
  %73 = call %struct.cmd_results* @checkarg(i32 %69, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %70, i32 %72)
  store %struct.cmd_results* %73, %struct.cmd_results** %6, align 8
  %74 = icmp ne %struct.cmd_results* %73, null
  br i1 %74, label %75, label %77

75:                                               ; preds = %68
  %76 = load %struct.cmd_results*, %struct.cmd_results** %6, align 8
  store %struct.cmd_results* %76, %struct.cmd_results** %3, align 8
  br label %342

77:                                               ; preds = %68
  %78 = load i8**, i8*** %5, align 8
  %79 = load i32, i32* %7, align 4
  %80 = call i8* @join_args(i8** %78, i32 %79)
  store i8* %80, i8** %11, align 8
  %81 = load i8*, i8** %11, align 8
  %82 = call %struct.workspace_config* @workspace_config_find_or_create(i8* %81)
  store %struct.workspace_config* %82, %struct.workspace_config** %12, align 8
  %83 = load i8*, i8** %11, align 8
  %84 = call i32 @free(i8* %83)
  %85 = load %struct.workspace_config*, %struct.workspace_config** %12, align 8
  %86 = icmp ne %struct.workspace_config* %85, null
  br i1 %86, label %90, label %87

87:                                               ; preds = %77
  %88 = load i32, i32* @CMD_FAILURE, align 4
  %89 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %88, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  store %struct.cmd_results* %89, %struct.cmd_results** %3, align 8
  br label %342

90:                                               ; preds = %77
  %91 = load i32, i32* %7, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %13, align 4
  br label %93

93:                                               ; preds = %108, %90
  %94 = load i32, i32* %13, align 4
  %95 = load i32, i32* %4, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %111

97:                                               ; preds = %93
  %98 = load %struct.workspace_config*, %struct.workspace_config** %12, align 8
  %99 = getelementptr inbounds %struct.workspace_config, %struct.workspace_config* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i8**, i8*** %5, align 8
  %102 = load i32, i32* %13, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8*, i8** %101, i64 %103
  %105 = load i8*, i8** %104, align 8
  %106 = call i32 @strdup(i8* %105)
  %107 = call i32 @list_add(i32 %100, i32 %106)
  br label %108

108:                                              ; preds = %97
  %109 = load i32, i32* %13, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %13, align 4
  br label %93

111:                                              ; preds = %93
  br label %339

112:                                              ; preds = %65
  %113 = load i32, i32* %8, align 4
  %114 = icmp sge i32 %113, 0
  br i1 %114, label %115, label %124

115:                                              ; preds = %112
  %116 = load i32, i32* %4, align 4
  %117 = load i8**, i8*** %5, align 8
  %118 = load i32, i32* %8, align 4
  %119 = call %struct.cmd_results* @cmd_workspace_gaps(i32 %116, i8** %117, i32 %118)
  store %struct.cmd_results* %119, %struct.cmd_results** %6, align 8
  %120 = icmp ne %struct.cmd_results* %119, null
  br i1 %120, label %121, label %123

121:                                              ; preds = %115
  %122 = load %struct.cmd_results*, %struct.cmd_results** %6, align 8
  store %struct.cmd_results* %122, %struct.cmd_results** %3, align 8
  br label %342

123:                                              ; preds = %115
  br label %338

124:                                              ; preds = %112
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** @config, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %134, label %129

129:                                              ; preds = %124
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** @config, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %137, label %134

134:                                              ; preds = %129, %124
  %135 = load i32, i32* @CMD_DEFER, align 4
  %136 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %135, i8* null)
  store %struct.cmd_results* %136, %struct.cmd_results** %3, align 8
  br label %342

137:                                              ; preds = %129
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** @root, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 1
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %147, label %144

144:                                              ; preds = %137
  %145 = load i32, i32* @CMD_INVALID, align 4
  %146 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %145, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0))
  store %struct.cmd_results* %146, %struct.cmd_results** %3, align 8
  br label %342

147:                                              ; preds = %137
  br label %148

148:                                              ; preds = %147
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** @root, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %148
  %154 = load i32, i32* @CMD_FAILURE, align 4
  %155 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %154, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0))
  store %struct.cmd_results* %155, %struct.cmd_results** %3, align 8
  br label %342

156:                                              ; preds = %148
  store i32 0, i32* %14, align 4
  br label %157

157:                                              ; preds = %171, %156
  %158 = load i8**, i8*** %5, align 8
  %159 = getelementptr inbounds i8*, i8** %158, i64 0
  %160 = load i8*, i8** %159, align 8
  %161 = call i64 @strcasecmp(i8* %160, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  %162 = icmp eq i64 %161, 0
  br i1 %162, label %163, label %174

163:                                              ; preds = %157
  store i32 1, i32* %14, align 4
  %164 = load i32, i32* %4, align 4
  %165 = add nsw i32 %164, -1
  store i32 %165, i32* %4, align 4
  %166 = load i32, i32* @EXPECTED_AT_LEAST, align 4
  %167 = call %struct.cmd_results* @checkarg(i32 %165, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %166, i32 1)
  store %struct.cmd_results* %167, %struct.cmd_results** %6, align 8
  %168 = icmp ne %struct.cmd_results* %167, null
  br i1 %168, label %169, label %171

169:                                              ; preds = %163
  %170 = load %struct.cmd_results*, %struct.cmd_results** %6, align 8
  store %struct.cmd_results* %170, %struct.cmd_results** %3, align 8
  br label %342

171:                                              ; preds = %163
  %172 = load i8**, i8*** %5, align 8
  %173 = getelementptr inbounds i8*, i8** %172, i32 1
  store i8** %173, i8*** %5, align 8
  br label %157

174:                                              ; preds = %157
  %175 = load i32, i32* %4, align 4
  %176 = icmp sgt i32 %175, 1
  br i1 %176, label %177, label %183

177:                                              ; preds = %174
  %178 = load i8**, i8*** %5, align 8
  %179 = getelementptr inbounds i8*, i8** %178, i64 1
  %180 = load i8*, i8** %179, align 8
  %181 = call i64 @strcasecmp(i8* %180, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %182 = icmp eq i64 %181, 0
  br label %183

183:                                              ; preds = %177, %174
  %184 = phi i1 [ false, %174 ], [ %182, %177 ]
  %185 = zext i1 %184 to i32
  store i32 %185, i32* %15, align 4
  %186 = load %struct.TYPE_8__*, %struct.TYPE_8__** @config, align 8
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 0
  %189 = load %struct.sway_seat*, %struct.sway_seat** %188, align 8
  store %struct.sway_seat* %189, %struct.sway_seat** %16, align 8
  %190 = load %struct.sway_seat*, %struct.sway_seat** %16, align 8
  %191 = call %struct.sway_workspace* @seat_get_focused_workspace(%struct.sway_seat* %190)
  store %struct.sway_workspace* %191, %struct.sway_workspace** %17, align 8
  %192 = load %struct.sway_workspace*, %struct.sway_workspace** %17, align 8
  %193 = icmp ne %struct.sway_workspace* %192, null
  br i1 %193, label %197, label %194

194:                                              ; preds = %183
  %195 = load i32, i32* @CMD_FAILURE, align 4
  %196 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %195, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  store %struct.cmd_results* %196, %struct.cmd_results** %3, align 8
  br label %342

197:                                              ; preds = %183
  store %struct.sway_workspace* null, %struct.sway_workspace** %18, align 8
  %198 = load i8**, i8*** %5, align 8
  %199 = getelementptr inbounds i8*, i8** %198, i64 0
  %200 = load i8*, i8** %199, align 8
  %201 = call i64 @strcasecmp(i8* %200, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %202 = icmp eq i64 %201, 0
  br i1 %202, label %203, label %240

203:                                              ; preds = %197
  %204 = load i32, i32* %4, align 4
  %205 = icmp slt i32 %204, 2
  br i1 %205, label %206, label %209

206:                                              ; preds = %203
  %207 = load i32, i32* @CMD_INVALID, align 4
  %208 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %207, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0))
  store %struct.cmd_results* %208, %struct.cmd_results** %3, align 8
  br label %342

209:                                              ; preds = %203
  %210 = load i8**, i8*** %5, align 8
  %211 = getelementptr inbounds i8*, i8** %210, i64 1
  %212 = load i8*, i8** %211, align 8
  %213 = getelementptr inbounds i8, i8* %212, i64 0
  %214 = load i8, i8* %213, align 1
  %215 = call i32 @isdigit(i8 signext %214)
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %223, label %217

217:                                              ; preds = %209
  %218 = load i32, i32* @CMD_INVALID, align 4
  %219 = load i8**, i8*** %5, align 8
  %220 = getelementptr inbounds i8*, i8** %219, i64 1
  %221 = load i8*, i8** %220, align 8
  %222 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %218, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0), i8* %221)
  store %struct.cmd_results* %222, %struct.cmd_results** %3, align 8
  br label %342

223:                                              ; preds = %209
  %224 = load i8**, i8*** %5, align 8
  %225 = getelementptr inbounds i8*, i8** %224, i64 1
  %226 = load i8*, i8** %225, align 8
  %227 = call %struct.sway_workspace* @workspace_by_number(i8* %226)
  store %struct.sway_workspace* %227, %struct.sway_workspace** %18, align 8
  %228 = icmp ne %struct.sway_workspace* %227, null
  br i1 %228, label %239, label %229

229:                                              ; preds = %223
  %230 = load i8**, i8*** %5, align 8
  %231 = getelementptr inbounds i8*, i8** %230, i64 1
  %232 = load i32, i32* %4, align 4
  %233 = sub nsw i32 %232, 1
  %234 = call i8* @join_args(i8** %231, i32 %233)
  store i8* %234, i8** %19, align 8
  %235 = load i8*, i8** %19, align 8
  %236 = call %struct.sway_workspace* @workspace_create(i32* null, i8* %235)
  store %struct.sway_workspace* %236, %struct.sway_workspace** %18, align 8
  %237 = load i8*, i8** %19, align 8
  %238 = call i32 @free(i8* %237)
  br label %239

239:                                              ; preds = %229, %223
  br label %326

240:                                              ; preds = %197
  %241 = load i8**, i8*** %5, align 8
  %242 = getelementptr inbounds i8*, i8** %241, i64 0
  %243 = load i8*, i8** %242, align 8
  %244 = call i64 @strcasecmp(i8* %243, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  %245 = icmp eq i64 %244, 0
  br i1 %245, label %258, label %246

246:                                              ; preds = %240
  %247 = load i8**, i8*** %5, align 8
  %248 = getelementptr inbounds i8*, i8** %247, i64 0
  %249 = load i8*, i8** %248, align 8
  %250 = call i64 @strcasecmp(i8* %249, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  %251 = icmp eq i64 %250, 0
  br i1 %251, label %258, label %252

252:                                              ; preds = %246
  %253 = load i8**, i8*** %5, align 8
  %254 = getelementptr inbounds i8*, i8** %253, i64 0
  %255 = load i8*, i8** %254, align 8
  %256 = call i64 @strcasecmp(i8* %255, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0))
  %257 = icmp eq i64 %256, 0
  br i1 %257, label %258, label %263

258:                                              ; preds = %252, %246, %240
  %259 = load i8**, i8*** %5, align 8
  %260 = getelementptr inbounds i8*, i8** %259, i64 0
  %261 = load i8*, i8** %260, align 8
  %262 = call %struct.sway_workspace* @workspace_by_name(i8* %261)
  store %struct.sway_workspace* %262, %struct.sway_workspace** %18, align 8
  br label %325

263:                                              ; preds = %252
  %264 = load i8**, i8*** %5, align 8
  %265 = getelementptr inbounds i8*, i8** %264, i64 0
  %266 = load i8*, i8** %265, align 8
  %267 = call i64 @strcasecmp(i8* %266, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0))
  %268 = icmp eq i64 %267, 0
  br i1 %268, label %269, label %273

269:                                              ; preds = %263
  %270 = load %struct.sway_workspace*, %struct.sway_workspace** %17, align 8
  %271 = load i32, i32* %15, align 4
  %272 = call %struct.sway_workspace* @workspace_output_next(%struct.sway_workspace* %270, i32 %271)
  store %struct.sway_workspace* %272, %struct.sway_workspace** %18, align 8
  br label %324

273:                                              ; preds = %263
  %274 = load i8**, i8*** %5, align 8
  %275 = getelementptr inbounds i8*, i8** %274, i64 0
  %276 = load i8*, i8** %275, align 8
  %277 = call i64 @strcasecmp(i8* %276, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0))
  %278 = icmp eq i64 %277, 0
  br i1 %278, label %279, label %283

279:                                              ; preds = %273
  %280 = load %struct.sway_workspace*, %struct.sway_workspace** %17, align 8
  %281 = load i32, i32* %15, align 4
  %282 = call %struct.sway_workspace* @workspace_output_prev(%struct.sway_workspace* %280, i32 %281)
  store %struct.sway_workspace* %282, %struct.sway_workspace** %18, align 8
  br label %323

283:                                              ; preds = %273
  %284 = load i8**, i8*** %5, align 8
  %285 = getelementptr inbounds i8*, i8** %284, i64 0
  %286 = load i8*, i8** %285, align 8
  %287 = call i64 @strcasecmp(i8* %286, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0))
  %288 = icmp eq i64 %287, 0
  br i1 %288, label %289, label %309

289:                                              ; preds = %283
  %290 = load %struct.sway_seat*, %struct.sway_seat** %16, align 8
  %291 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %290, i32 0, i32 0
  %292 = load i8*, i8** %291, align 8
  %293 = icmp ne i8* %292, null
  br i1 %293, label %297, label %294

294:                                              ; preds = %289
  %295 = load i32, i32* @CMD_INVALID, align 4
  %296 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %295, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.18, i64 0, i64 0))
  store %struct.cmd_results* %296, %struct.cmd_results** %3, align 8
  br label %342

297:                                              ; preds = %289
  %298 = load i8**, i8*** %5, align 8
  %299 = getelementptr inbounds i8*, i8** %298, i64 0
  %300 = load i8*, i8** %299, align 8
  %301 = call %struct.sway_workspace* @workspace_by_name(i8* %300)
  store %struct.sway_workspace* %301, %struct.sway_workspace** %18, align 8
  %302 = icmp ne %struct.sway_workspace* %301, null
  br i1 %302, label %308, label %303

303:                                              ; preds = %297
  %304 = load %struct.sway_seat*, %struct.sway_seat** %16, align 8
  %305 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %304, i32 0, i32 0
  %306 = load i8*, i8** %305, align 8
  %307 = call %struct.sway_workspace* @workspace_create(i32* null, i8* %306)
  store %struct.sway_workspace* %307, %struct.sway_workspace** %18, align 8
  br label %308

308:                                              ; preds = %303, %297
  br label %322

309:                                              ; preds = %283
  %310 = load i8**, i8*** %5, align 8
  %311 = load i32, i32* %4, align 4
  %312 = call i8* @join_args(i8** %310, i32 %311)
  store i8* %312, i8** %20, align 8
  %313 = load i8*, i8** %20, align 8
  %314 = call %struct.sway_workspace* @workspace_by_name(i8* %313)
  store %struct.sway_workspace* %314, %struct.sway_workspace** %18, align 8
  %315 = icmp ne %struct.sway_workspace* %314, null
  br i1 %315, label %319, label %316

316:                                              ; preds = %309
  %317 = load i8*, i8** %20, align 8
  %318 = call %struct.sway_workspace* @workspace_create(i32* null, i8* %317)
  store %struct.sway_workspace* %318, %struct.sway_workspace** %18, align 8
  br label %319

319:                                              ; preds = %316, %309
  %320 = load i8*, i8** %20, align 8
  %321 = call i32 @free(i8* %320)
  br label %322

322:                                              ; preds = %319, %308
  br label %323

323:                                              ; preds = %322, %279
  br label %324

324:                                              ; preds = %323, %269
  br label %325

325:                                              ; preds = %324, %258
  br label %326

326:                                              ; preds = %325, %239
  %327 = load %struct.sway_workspace*, %struct.sway_workspace** %18, align 8
  %328 = icmp ne %struct.sway_workspace* %327, null
  br i1 %328, label %332, label %329

329:                                              ; preds = %326
  %330 = load i32, i32* @CMD_FAILURE, align 4
  %331 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %330, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.19, i64 0, i64 0))
  store %struct.cmd_results* %331, %struct.cmd_results** %3, align 8
  br label %342

332:                                              ; preds = %326
  %333 = load %struct.sway_workspace*, %struct.sway_workspace** %18, align 8
  %334 = load i32, i32* %14, align 4
  %335 = call i32 @workspace_switch(%struct.sway_workspace* %333, i32 %334)
  %336 = load %struct.sway_seat*, %struct.sway_seat** %16, align 8
  %337 = call i32 @seat_consider_warp_to_focus(%struct.sway_seat* %336)
  br label %338

338:                                              ; preds = %332, %123
  br label %339

339:                                              ; preds = %338, %111
  %340 = load i32, i32* @CMD_SUCCESS, align 4
  %341 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %340, i8* null)
  store %struct.cmd_results* %341, %struct.cmd_results** %3, align 8
  br label %342

342:                                              ; preds = %339, %329, %294, %217, %206, %194, %169, %153, %144, %134, %121, %87, %75, %25
  %343 = load %struct.cmd_results*, %struct.cmd_results** %3, align 8
  ret %struct.cmd_results* %343
}

declare dso_local %struct.cmd_results* @checkarg(i32, i8*, i32, i32) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i8* @join_args(i8**, i32) #1

declare dso_local %struct.workspace_config* @workspace_config_find_or_create(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local %struct.cmd_results* @cmd_results_new(i32, i8*, ...) #1

declare dso_local i32 @list_add(i32, i32) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local %struct.cmd_results* @cmd_workspace_gaps(i32, i8**, i32) #1

declare dso_local %struct.sway_workspace* @seat_get_focused_workspace(%struct.sway_seat*) #1

declare dso_local i32 @isdigit(i8 signext) #1

declare dso_local %struct.sway_workspace* @workspace_by_number(i8*) #1

declare dso_local %struct.sway_workspace* @workspace_create(i32*, i8*) #1

declare dso_local %struct.sway_workspace* @workspace_by_name(i8*) #1

declare dso_local %struct.sway_workspace* @workspace_output_next(%struct.sway_workspace*, i32) #1

declare dso_local %struct.sway_workspace* @workspace_output_prev(%struct.sway_workspace*, i32) #1

declare dso_local i32 @workspace_switch(%struct.sway_workspace*, i32) #1

declare dso_local i32 @seat_consider_warp_to_focus(%struct.sway_seat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
