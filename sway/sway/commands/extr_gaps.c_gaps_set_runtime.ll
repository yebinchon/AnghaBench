; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/extr_gaps.c_gaps_set_runtime.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/extr_gaps.c_gaps_set_runtime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.cmd_results = type { i32 }
%struct.gaps_data = type { i32, i32, i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"gaps\00", align 1
@EXPECTED_EQUAL_TO = common dso_local global i32 0, align 4
@root = common dso_local global %struct.TYPE_9__* null, align 8
@CMD_INVALID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"Can't run this command while there's no outputs connected.\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"inner\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"outer\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"vertical\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"top\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"horizontal\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"right\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"bottom\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"left\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"Expected %s\00", align 1
@expected_runtime = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [8 x i8] c"current\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@GAPS_OP_SET = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [5 x i8] c"plus\00", align 1
@GAPS_OP_ADD = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [6 x i8] c"minus\00", align 1
@GAPS_OP_SUBTRACT = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [3 x i8] c"px\00", align 1
@config = common dso_local global %struct.TYPE_10__* null, align 8
@CMD_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cmd_results* (i32, i8**)* @gaps_set_runtime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cmd_results* @gaps_set_runtime(i32 %0, i8** %1) #0 {
  %3 = alloca %struct.cmd_results*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.cmd_results*, align 8
  %7 = alloca %struct.gaps_data, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @EXPECTED_EQUAL_TO, align 4
  %12 = call %struct.cmd_results* @checkarg(i32 %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %11, i32 4)
  store %struct.cmd_results* %12, %struct.cmd_results** %6, align 8
  %13 = load %struct.cmd_results*, %struct.cmd_results** %6, align 8
  %14 = icmp ne %struct.cmd_results* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load %struct.cmd_results*, %struct.cmd_results** %6, align 8
  store %struct.cmd_results* %16, %struct.cmd_results** %3, align 8
  br label %240

17:                                               ; preds = %2
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** @root, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %17
  %25 = load i32, i32* @CMD_INVALID, align 4
  %26 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %25, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0))
  store %struct.cmd_results* %26, %struct.cmd_results** %3, align 8
  br label %240

27:                                               ; preds = %17
  %28 = bitcast %struct.gaps_data* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %28, i8 0, i64 32, i1 false)
  %29 = load i8**, i8*** %5, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i64 @strcasecmp(i8* %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.gaps_data, %struct.gaps_data* %7, i32 0, i32 0
  store i32 1, i32* %35, align 4
  br label %129

36:                                               ; preds = %27
  %37 = load i8**, i8*** %5, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i64 @strcasecmp(i8* %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %36
  %43 = load i8**, i8*** %5, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 0
  %45 = load i8*, i8** %44, align 8
  %46 = call i64 @strcasecmp(i8* %45, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %42
  %49 = load i8**, i8*** %5, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 0
  %51 = load i8*, i8** %50, align 8
  %52 = call i64 @strcasecmp(i8* %51, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %53 = icmp ne i64 %52, 0
  %54 = xor i1 %53, true
  br label %55

55:                                               ; preds = %48, %42, %36
  %56 = phi i1 [ true, %42 ], [ true, %36 ], [ %54, %48 ]
  %57 = zext i1 %56 to i32
  %58 = getelementptr inbounds %struct.gaps_data, %struct.gaps_data* %7, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  %60 = load i8**, i8*** %5, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i64 0
  %62 = load i8*, i8** %61, align 8
  %63 = call i64 @strcasecmp(i8* %62, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %78

65:                                               ; preds = %55
  %66 = load i8**, i8*** %5, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i64 0
  %68 = load i8*, i8** %67, align 8
  %69 = call i64 @strcasecmp(i8* %68, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %65
  %72 = load i8**, i8*** %5, align 8
  %73 = getelementptr inbounds i8*, i8** %72, i64 0
  %74 = load i8*, i8** %73, align 8
  %75 = call i64 @strcasecmp(i8* %74, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %76 = icmp ne i64 %75, 0
  %77 = xor i1 %76, true
  br label %78

78:                                               ; preds = %71, %65, %55
  %79 = phi i1 [ true, %65 ], [ true, %55 ], [ %77, %71 ]
  %80 = zext i1 %79 to i32
  %81 = getelementptr inbounds %struct.gaps_data, %struct.gaps_data* %7, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  %83 = load i8**, i8*** %5, align 8
  %84 = getelementptr inbounds i8*, i8** %83, i64 0
  %85 = load i8*, i8** %84, align 8
  %86 = call i64 @strcasecmp(i8* %85, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %101

88:                                               ; preds = %78
  %89 = load i8**, i8*** %5, align 8
  %90 = getelementptr inbounds i8*, i8** %89, i64 0
  %91 = load i8*, i8** %90, align 8
  %92 = call i64 @strcasecmp(i8* %91, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %88
  %95 = load i8**, i8*** %5, align 8
  %96 = getelementptr inbounds i8*, i8** %95, i64 0
  %97 = load i8*, i8** %96, align 8
  %98 = call i64 @strcasecmp(i8* %97, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %99 = icmp ne i64 %98, 0
  %100 = xor i1 %99, true
  br label %101

101:                                              ; preds = %94, %88, %78
  %102 = phi i1 [ true, %88 ], [ true, %78 ], [ %100, %94 ]
  %103 = zext i1 %102 to i32
  %104 = getelementptr inbounds %struct.gaps_data, %struct.gaps_data* %7, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 2
  store i32 %103, i32* %105, align 4
  %106 = load i8**, i8*** %5, align 8
  %107 = getelementptr inbounds i8*, i8** %106, i64 0
  %108 = load i8*, i8** %107, align 8
  %109 = call i64 @strcasecmp(i8* %108, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %124

111:                                              ; preds = %101
  %112 = load i8**, i8*** %5, align 8
  %113 = getelementptr inbounds i8*, i8** %112, i64 0
  %114 = load i8*, i8** %113, align 8
  %115 = call i64 @strcasecmp(i8* %114, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %111
  %118 = load i8**, i8*** %5, align 8
  %119 = getelementptr inbounds i8*, i8** %118, i64 0
  %120 = load i8*, i8** %119, align 8
  %121 = call i64 @strcasecmp(i8* %120, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %122 = icmp ne i64 %121, 0
  %123 = xor i1 %122, true
  br label %124

124:                                              ; preds = %117, %111, %101
  %125 = phi i1 [ true, %111 ], [ true, %101 ], [ %123, %117 ]
  %126 = zext i1 %125 to i32
  %127 = getelementptr inbounds %struct.gaps_data, %struct.gaps_data* %7, i32 0, i32 3
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 3
  store i32 %126, i32* %128, align 4
  br label %129

129:                                              ; preds = %124, %34
  %130 = getelementptr inbounds %struct.gaps_data, %struct.gaps_data* %7, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %157, label %133

133:                                              ; preds = %129
  %134 = getelementptr inbounds %struct.gaps_data, %struct.gaps_data* %7, i32 0, i32 3
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %157, label %138

138:                                              ; preds = %133
  %139 = getelementptr inbounds %struct.gaps_data, %struct.gaps_data* %7, i32 0, i32 3
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %157, label %143

143:                                              ; preds = %138
  %144 = getelementptr inbounds %struct.gaps_data, %struct.gaps_data* %7, i32 0, i32 3
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %157, label %148

148:                                              ; preds = %143
  %149 = getelementptr inbounds %struct.gaps_data, %struct.gaps_data* %7, i32 0, i32 3
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %157, label %153

153:                                              ; preds = %148
  %154 = load i32, i32* @CMD_INVALID, align 4
  %155 = load i32, i32* @expected_runtime, align 4
  %156 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %154, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32 %155)
  store %struct.cmd_results* %156, %struct.cmd_results** %3, align 8
  br label %240

157:                                              ; preds = %148, %143, %138, %133, %129
  %158 = load i8**, i8*** %5, align 8
  %159 = getelementptr inbounds i8*, i8** %158, i64 1
  %160 = load i8*, i8** %159, align 8
  %161 = call i64 @strcasecmp(i8* %160, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  %162 = icmp eq i64 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %157
  store i32 0, i32* %8, align 4
  br label %176

164:                                              ; preds = %157
  %165 = load i8**, i8*** %5, align 8
  %166 = getelementptr inbounds i8*, i8** %165, i64 1
  %167 = load i8*, i8** %166, align 8
  %168 = call i64 @strcasecmp(i8* %167, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  %169 = icmp eq i64 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %164
  store i32 1, i32* %8, align 4
  br label %175

171:                                              ; preds = %164
  %172 = load i32, i32* @CMD_INVALID, align 4
  %173 = load i32, i32* @expected_runtime, align 4
  %174 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %172, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32 %173)
  store %struct.cmd_results* %174, %struct.cmd_results** %3, align 8
  br label %240

175:                                              ; preds = %170
  br label %176

176:                                              ; preds = %175, %163
  %177 = load i8**, i8*** %5, align 8
  %178 = getelementptr inbounds i8*, i8** %177, i64 2
  %179 = load i8*, i8** %178, align 8
  %180 = call i64 @strcasecmp(i8* %179, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0))
  %181 = icmp eq i64 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %176
  %183 = load i32, i32* @GAPS_OP_SET, align 4
  %184 = getelementptr inbounds %struct.gaps_data, %struct.gaps_data* %7, i32 0, i32 2
  store i32 %183, i32* %184, align 4
  br label %209

185:                                              ; preds = %176
  %186 = load i8**, i8*** %5, align 8
  %187 = getelementptr inbounds i8*, i8** %186, i64 2
  %188 = load i8*, i8** %187, align 8
  %189 = call i64 @strcasecmp(i8* %188, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  %190 = icmp eq i64 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %185
  %192 = load i32, i32* @GAPS_OP_ADD, align 4
  %193 = getelementptr inbounds %struct.gaps_data, %struct.gaps_data* %7, i32 0, i32 2
  store i32 %192, i32* %193, align 4
  br label %208

194:                                              ; preds = %185
  %195 = load i8**, i8*** %5, align 8
  %196 = getelementptr inbounds i8*, i8** %195, i64 2
  %197 = load i8*, i8** %196, align 8
  %198 = call i64 @strcasecmp(i8* %197, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0))
  %199 = icmp eq i64 %198, 0
  br i1 %199, label %200, label %203

200:                                              ; preds = %194
  %201 = load i32, i32* @GAPS_OP_SUBTRACT, align 4
  %202 = getelementptr inbounds %struct.gaps_data, %struct.gaps_data* %7, i32 0, i32 2
  store i32 %201, i32* %202, align 4
  br label %207

203:                                              ; preds = %194
  %204 = load i32, i32* @CMD_INVALID, align 4
  %205 = load i32, i32* @expected_runtime, align 4
  %206 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %204, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32 %205)
  store %struct.cmd_results* %206, %struct.cmd_results** %3, align 8
  br label %240

207:                                              ; preds = %200
  br label %208

208:                                              ; preds = %207, %191
  br label %209

209:                                              ; preds = %208, %182
  %210 = load i8**, i8*** %5, align 8
  %211 = getelementptr inbounds i8*, i8** %210, i64 3
  %212 = load i8*, i8** %211, align 8
  %213 = call i32 @strtol(i8* %212, i8** %9, i32 10)
  %214 = getelementptr inbounds %struct.gaps_data, %struct.gaps_data* %7, i32 0, i32 1
  store i32 %213, i32* %214, align 4
  %215 = load i8*, i8** %9, align 8
  %216 = call i64 @strlen(i8* %215)
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %226

218:                                              ; preds = %209
  %219 = load i8*, i8** %9, align 8
  %220 = call i64 @strcasecmp(i8* %219, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0))
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %226

222:                                              ; preds = %218
  %223 = load i32, i32* @CMD_INVALID, align 4
  %224 = load i32, i32* @expected_runtime, align 4
  %225 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %223, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32 %224)
  store %struct.cmd_results* %225, %struct.cmd_results** %3, align 8
  br label %240

226:                                              ; preds = %218, %209
  %227 = load i32, i32* %8, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %231

229:                                              ; preds = %226
  %230 = call i32 @root_for_each_workspace(i32 (i32, %struct.gaps_data*)* @configure_gaps, %struct.gaps_data* %7)
  br label %237

231:                                              ; preds = %226
  %232 = load %struct.TYPE_10__*, %struct.TYPE_10__** @config, align 8
  %233 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = call i32 @configure_gaps(i32 %235, %struct.gaps_data* %7)
  br label %237

237:                                              ; preds = %231, %229
  %238 = load i32, i32* @CMD_SUCCESS, align 4
  %239 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %238, i8* null)
  store %struct.cmd_results* %239, %struct.cmd_results** %3, align 8
  br label %240

240:                                              ; preds = %237, %222, %203, %171, %153, %24, %15
  %241 = load %struct.cmd_results*, %struct.cmd_results** %3, align 8
  ret %struct.cmd_results* %241
}

declare dso_local %struct.cmd_results* @checkarg(i32, i8*, i32, i32) #1

declare dso_local %struct.cmd_results* @cmd_results_new(i32, i8*, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @root_for_each_workspace(i32 (i32, %struct.gaps_data*)*, %struct.gaps_data*) #1

declare dso_local i32 @configure_gaps(i32, %struct.gaps_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
