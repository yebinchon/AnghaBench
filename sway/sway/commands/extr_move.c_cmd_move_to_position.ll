; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/extr_move.c_cmd_move_to_position.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/extr_move.c_cmd_move_to_position.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.sway_seat*, %struct.sway_container* }
%struct.sway_seat = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.sway_container = type { i32, i32, %struct.sway_workspace* }
%struct.sway_workspace = type { i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.cmd_results = type { i32 }

@config = common dso_local global %struct.TYPE_10__* null, align 8
@CMD_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"Only floating containers can be moved to an absolute position\00", align 1
@CMD_INVALID = common dso_local global i32 0, align 4
@expected_position_syntax = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"absolute\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"position\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"cursor\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"mouse\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"pointer\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"No cursor device\00", align 1
@CMD_SUCCESS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"center\00", align 1
@root = common dso_local global %struct.TYPE_9__* null, align 8
@.str.8 = private unnamed_addr constant [3 x i8] c"px\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"Invalid position specified\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cmd_results* (i32, i8**)* @cmd_move_to_position to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cmd_results* @cmd_move_to_position(i32 %0, i8** %1) #0 {
  %3 = alloca %struct.cmd_results*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.sway_container*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sway_seat*, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca %struct.sway_workspace*, align 8
  %14 = alloca %struct.sway_seat*, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.sway_workspace*, align 8
  %19 = alloca %struct.sway_seat*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** @config, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %23 = load %struct.sway_container*, %struct.sway_container** %22, align 8
  store %struct.sway_container* %23, %struct.sway_container** %6, align 8
  %24 = load %struct.sway_container*, %struct.sway_container** %6, align 8
  %25 = icmp ne %struct.sway_container* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %2
  %27 = load %struct.sway_container*, %struct.sway_container** %6, align 8
  %28 = call i32 @container_is_floating(%struct.sway_container* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %26, %2
  %31 = load i32, i32* @CMD_FAILURE, align 4
  %32 = call %struct.cmd_results* @cmd_results_new(i32 %31, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  store %struct.cmd_results* %32, %struct.cmd_results** %3, align 8
  br label %334

33:                                               ; preds = %26
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* @CMD_INVALID, align 4
  %38 = load i8*, i8** @expected_position_syntax, align 8
  %39 = call %struct.cmd_results* @cmd_results_new(i32 %37, i8* %38)
  store %struct.cmd_results* %39, %struct.cmd_results** %3, align 8
  br label %334

40:                                               ; preds = %33
  store i32 0, i32* %7, align 4
  %41 = load i8**, i8*** %5, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 0
  %43 = load i8*, i8** %42, align 8
  %44 = call i64 @strcmp(i8* %43, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %40
  store i32 1, i32* %7, align 4
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %4, align 4
  %49 = load i8**, i8*** %5, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i32 1
  store i8** %50, i8*** %5, align 8
  br label %51

51:                                               ; preds = %46, %40
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* @CMD_INVALID, align 4
  %56 = load i8*, i8** @expected_position_syntax, align 8
  %57 = call %struct.cmd_results* @cmd_results_new(i32 %55, i8* %56)
  store %struct.cmd_results* %57, %struct.cmd_results** %3, align 8
  br label %334

58:                                               ; preds = %51
  %59 = load i8**, i8*** %5, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i64 0
  %61 = load i8*, i8** %60, align 8
  %62 = call i64 @strcmp(i8* %61, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %58
  %65 = load i32, i32* %4, align 4
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %4, align 4
  %67 = load i8**, i8*** %5, align 8
  %68 = getelementptr inbounds i8*, i8** %67, i32 1
  store i8** %68, i8*** %5, align 8
  br label %69

69:                                               ; preds = %64, %58
  %70 = load i32, i32* %4, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %69
  %73 = load i32, i32* @CMD_INVALID, align 4
  %74 = load i8*, i8** @expected_position_syntax, align 8
  %75 = call %struct.cmd_results* @cmd_results_new(i32 %73, i8* %74)
  store %struct.cmd_results* %75, %struct.cmd_results** %3, align 8
  br label %334

76:                                               ; preds = %69
  %77 = load i8**, i8*** %5, align 8
  %78 = getelementptr inbounds i8*, i8** %77, i64 0
  %79 = load i8*, i8** %78, align 8
  %80 = call i64 @strcmp(i8* %79, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %94, label %82

82:                                               ; preds = %76
  %83 = load i8**, i8*** %5, align 8
  %84 = getelementptr inbounds i8*, i8** %83, i64 0
  %85 = load i8*, i8** %84, align 8
  %86 = call i64 @strcmp(i8* %85, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %94, label %88

88:                                               ; preds = %82
  %89 = load i8**, i8*** %5, align 8
  %90 = getelementptr inbounds i8*, i8** %89, i64 0
  %91 = load i8*, i8** %90, align 8
  %92 = call i64 @strcmp(i8* %91, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %146

94:                                               ; preds = %88, %82, %76
  %95 = load i32, i32* %7, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %94
  %98 = load i32, i32* @CMD_INVALID, align 4
  %99 = load i8*, i8** @expected_position_syntax, align 8
  %100 = call %struct.cmd_results* @cmd_results_new(i32 %98, i8* %99)
  store %struct.cmd_results* %100, %struct.cmd_results** %3, align 8
  br label %334

101:                                              ; preds = %94
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** @config, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = load %struct.sway_seat*, %struct.sway_seat** %104, align 8
  store %struct.sway_seat* %105, %struct.sway_seat** %8, align 8
  %106 = load %struct.sway_seat*, %struct.sway_seat** %8, align 8
  %107 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %106, i32 0, i32 0
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %107, align 8
  %109 = icmp ne %struct.TYPE_7__* %108, null
  br i1 %109, label %113, label %110

110:                                              ; preds = %101
  %111 = load i32, i32* @CMD_FAILURE, align 4
  %112 = call %struct.cmd_results* @cmd_results_new(i32 %111, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  store %struct.cmd_results* %112, %struct.cmd_results** %3, align 8
  br label %334

113:                                              ; preds = %101
  %114 = load %struct.sway_seat*, %struct.sway_seat** %8, align 8
  %115 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %114, i32 0, i32 0
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.sway_container*, %struct.sway_container** %6, align 8
  %122 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = sdiv i32 %123, 2
  %125 = sub nsw i32 %120, %124
  %126 = sitofp i32 %125 to double
  store double %126, double* %9, align 8
  %127 = load %struct.sway_seat*, %struct.sway_seat** %8, align 8
  %128 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %127, i32 0, i32 0
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.sway_container*, %struct.sway_container** %6, align 8
  %135 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = sdiv i32 %136, 2
  %138 = sub nsw i32 %133, %137
  %139 = sitofp i32 %138 to double
  store double %139, double* %10, align 8
  %140 = load %struct.sway_container*, %struct.sway_container** %6, align 8
  %141 = load double, double* %9, align 8
  %142 = load double, double* %10, align 8
  %143 = call i32 @container_floating_move_to(%struct.sway_container* %140, double %141, double %142)
  %144 = load i32, i32* @CMD_SUCCESS, align 4
  %145 = call %struct.cmd_results* @cmd_results_new(i32 %144, i8* null)
  store %struct.cmd_results* %145, %struct.cmd_results** %3, align 8
  br label %334

146:                                              ; preds = %88
  %147 = load i8**, i8*** %5, align 8
  %148 = getelementptr inbounds i8*, i8** %147, i64 0
  %149 = load i8*, i8** %148, align 8
  %150 = call i64 @strcmp(i8* %149, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %151 = icmp eq i64 %150, 0
  br i1 %151, label %152, label %229

152:                                              ; preds = %146
  %153 = load i32, i32* %7, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %182

155:                                              ; preds = %152
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** @root, align 8
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** @root, align 8
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.sway_container*, %struct.sway_container** %6, align 8
  %163 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = sub nsw i32 %161, %164
  %166 = sdiv i32 %165, 2
  %167 = add nsw i32 %158, %166
  %168 = sitofp i32 %167 to double
  store double %168, double* %11, align 8
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** @root, align 8
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** @root, align 8
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.sway_container*, %struct.sway_container** %6, align 8
  %176 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = sub nsw i32 %174, %177
  %179 = sdiv i32 %178, 2
  %180 = add nsw i32 %171, %179
  %181 = sitofp i32 %180 to double
  store double %181, double* %12, align 8
  br label %222

182:                                              ; preds = %152
  %183 = load %struct.sway_container*, %struct.sway_container** %6, align 8
  %184 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %183, i32 0, i32 2
  %185 = load %struct.sway_workspace*, %struct.sway_workspace** %184, align 8
  store %struct.sway_workspace* %185, %struct.sway_workspace** %13, align 8
  %186 = load %struct.sway_workspace*, %struct.sway_workspace** %13, align 8
  %187 = icmp ne %struct.sway_workspace* %186, null
  br i1 %187, label %195, label %188

188:                                              ; preds = %182
  %189 = load %struct.TYPE_10__*, %struct.TYPE_10__** @config, align 8
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 0
  %192 = load %struct.sway_seat*, %struct.sway_seat** %191, align 8
  store %struct.sway_seat* %192, %struct.sway_seat** %14, align 8
  %193 = load %struct.sway_seat*, %struct.sway_seat** %14, align 8
  %194 = call %struct.sway_workspace* @seat_get_focused_workspace(%struct.sway_seat* %193)
  store %struct.sway_workspace* %194, %struct.sway_workspace** %13, align 8
  br label %195

195:                                              ; preds = %188, %182
  %196 = load %struct.sway_workspace*, %struct.sway_workspace** %13, align 8
  %197 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.sway_workspace*, %struct.sway_workspace** %13, align 8
  %200 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.sway_container*, %struct.sway_container** %6, align 8
  %203 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = sub nsw i32 %201, %204
  %206 = sdiv i32 %205, 2
  %207 = add nsw i32 %198, %206
  %208 = sitofp i32 %207 to double
  store double %208, double* %11, align 8
  %209 = load %struct.sway_workspace*, %struct.sway_workspace** %13, align 8
  %210 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.sway_workspace*, %struct.sway_workspace** %13, align 8
  %213 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %212, i32 0, i32 3
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.sway_container*, %struct.sway_container** %6, align 8
  %216 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = sub nsw i32 %214, %217
  %219 = sdiv i32 %218, 2
  %220 = add nsw i32 %211, %219
  %221 = sitofp i32 %220 to double
  store double %221, double* %12, align 8
  br label %222

222:                                              ; preds = %195, %155
  %223 = load %struct.sway_container*, %struct.sway_container** %6, align 8
  %224 = load double, double* %11, align 8
  %225 = load double, double* %12, align 8
  %226 = call i32 @container_floating_move_to(%struct.sway_container* %223, double %224, double %225)
  %227 = load i32, i32* @CMD_SUCCESS, align 4
  %228 = call %struct.cmd_results* @cmd_results_new(i32 %227, i8* null)
  store %struct.cmd_results* %228, %struct.cmd_results** %3, align 8
  br label %334

229:                                              ; preds = %146
  br label %230

230:                                              ; preds = %229
  %231 = load i32, i32* %4, align 4
  %232 = icmp slt i32 %231, 2
  br i1 %232, label %233, label %237

233:                                              ; preds = %230
  %234 = load i32, i32* @CMD_FAILURE, align 4
  %235 = load i8*, i8** @expected_position_syntax, align 8
  %236 = call %struct.cmd_results* @cmd_results_new(i32 %234, i8* %235)
  store %struct.cmd_results* %236, %struct.cmd_results** %3, align 8
  br label %334

237:                                              ; preds = %230
  %238 = load i8**, i8*** %5, align 8
  %239 = getelementptr inbounds i8*, i8** %238, i64 0
  %240 = load i8*, i8** %239, align 8
  %241 = call i64 @strtol(i8* %240, i8** %17, i32 10)
  %242 = sitofp i64 %241 to double
  store double %242, double* %15, align 8
  %243 = load i8*, i8** %17, align 8
  %244 = load i8, i8* %243, align 1
  %245 = sext i8 %244 to i32
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %254

247:                                              ; preds = %237
  %248 = load i8*, i8** %17, align 8
  %249 = call i64 @strcasecmp(i8* %248, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %254

251:                                              ; preds = %247
  %252 = load i32, i32* @CMD_FAILURE, align 4
  %253 = call %struct.cmd_results* @cmd_results_new(i32 %252, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  store %struct.cmd_results* %253, %struct.cmd_results** %3, align 8
  br label %334

254:                                              ; preds = %247, %237
  %255 = load i8**, i8*** %5, align 8
  %256 = getelementptr inbounds i8*, i8** %255, i64 1
  %257 = load i8*, i8** %256, align 8
  %258 = call i64 @strcmp(i8* %257, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  %259 = icmp eq i64 %258, 0
  br i1 %259, label %260, label %265

260:                                              ; preds = %254
  %261 = load i32, i32* %4, align 4
  %262 = add nsw i32 %261, -1
  store i32 %262, i32* %4, align 4
  %263 = load i8**, i8*** %5, align 8
  %264 = getelementptr inbounds i8*, i8** %263, i32 1
  store i8** %264, i8*** %5, align 8
  br label %265

265:                                              ; preds = %260, %254
  %266 = load i32, i32* %4, align 4
  %267 = icmp sgt i32 %266, 3
  br i1 %267, label %268, label %272

268:                                              ; preds = %265
  %269 = load i32, i32* @CMD_FAILURE, align 4
  %270 = load i8*, i8** @expected_position_syntax, align 8
  %271 = call %struct.cmd_results* @cmd_results_new(i32 %269, i8* %270)
  store %struct.cmd_results* %271, %struct.cmd_results** %3, align 8
  br label %334

272:                                              ; preds = %265
  %273 = load i8**, i8*** %5, align 8
  %274 = getelementptr inbounds i8*, i8** %273, i64 1
  %275 = load i8*, i8** %274, align 8
  %276 = call i64 @strtol(i8* %275, i8** %17, i32 10)
  %277 = sitofp i64 %276 to double
  store double %277, double* %16, align 8
  %278 = load i8*, i8** %17, align 8
  %279 = load i8, i8* %278, align 1
  %280 = sext i8 %279 to i32
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %286

282:                                              ; preds = %272
  %283 = load i8*, i8** %17, align 8
  %284 = call i64 @strcasecmp(i8* %283, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %295, label %286

286:                                              ; preds = %282, %272
  %287 = load i32, i32* %4, align 4
  %288 = icmp eq i32 %287, 3
  br i1 %288, label %289, label %298

289:                                              ; preds = %286
  %290 = load i8**, i8*** %5, align 8
  %291 = getelementptr inbounds i8*, i8** %290, i64 2
  %292 = load i8*, i8** %291, align 8
  %293 = call i64 @strcmp(i8* %292, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %295, label %298

295:                                              ; preds = %289, %282
  %296 = load i32, i32* @CMD_FAILURE, align 4
  %297 = call %struct.cmd_results* @cmd_results_new(i32 %296, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  store %struct.cmd_results* %297, %struct.cmd_results** %3, align 8
  br label %334

298:                                              ; preds = %289, %286
  %299 = load i32, i32* %7, align 4
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %327, label %301

301:                                              ; preds = %298
  %302 = load %struct.sway_container*, %struct.sway_container** %6, align 8
  %303 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %302, i32 0, i32 2
  %304 = load %struct.sway_workspace*, %struct.sway_workspace** %303, align 8
  store %struct.sway_workspace* %304, %struct.sway_workspace** %18, align 8
  %305 = load %struct.sway_workspace*, %struct.sway_workspace** %18, align 8
  %306 = icmp ne %struct.sway_workspace* %305, null
  br i1 %306, label %314, label %307

307:                                              ; preds = %301
  %308 = load %struct.TYPE_10__*, %struct.TYPE_10__** @config, align 8
  %309 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %308, i32 0, i32 0
  %310 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %309, i32 0, i32 0
  %311 = load %struct.sway_seat*, %struct.sway_seat** %310, align 8
  store %struct.sway_seat* %311, %struct.sway_seat** %19, align 8
  %312 = load %struct.sway_seat*, %struct.sway_seat** %19, align 8
  %313 = call %struct.sway_workspace* @seat_get_focused_workspace(%struct.sway_seat* %312)
  store %struct.sway_workspace* %313, %struct.sway_workspace** %18, align 8
  br label %314

314:                                              ; preds = %307, %301
  %315 = load %struct.sway_workspace*, %struct.sway_workspace** %18, align 8
  %316 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 4
  %318 = sitofp i32 %317 to double
  %319 = load double, double* %15, align 8
  %320 = fadd double %319, %318
  store double %320, double* %15, align 8
  %321 = load %struct.sway_workspace*, %struct.sway_workspace** %18, align 8
  %322 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %321, i32 0, i32 2
  %323 = load i32, i32* %322, align 4
  %324 = sitofp i32 %323 to double
  %325 = load double, double* %16, align 8
  %326 = fadd double %325, %324
  store double %326, double* %16, align 8
  br label %327

327:                                              ; preds = %314, %298
  %328 = load %struct.sway_container*, %struct.sway_container** %6, align 8
  %329 = load double, double* %15, align 8
  %330 = load double, double* %16, align 8
  %331 = call i32 @container_floating_move_to(%struct.sway_container* %328, double %329, double %330)
  %332 = load i32, i32* @CMD_SUCCESS, align 4
  %333 = call %struct.cmd_results* @cmd_results_new(i32 %332, i8* null)
  store %struct.cmd_results* %333, %struct.cmd_results** %3, align 8
  br label %334

334:                                              ; preds = %327, %295, %268, %251, %233, %222, %113, %110, %97, %72, %54, %36, %30
  %335 = load %struct.cmd_results*, %struct.cmd_results** %3, align 8
  ret %struct.cmd_results* %335
}

declare dso_local i32 @container_is_floating(%struct.sway_container*) #1

declare dso_local %struct.cmd_results* @cmd_results_new(i32, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @container_floating_move_to(%struct.sway_container*, double, double) #1

declare dso_local %struct.sway_workspace* @seat_get_focused_workspace(%struct.sway_seat*) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
