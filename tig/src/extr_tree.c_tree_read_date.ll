; ModuleID = '/home/carl/AnghaBench/tig/src/extr_tree.c_tree_read_date.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_tree.c_tree_read_date.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.view = type { i64, i32, %struct.line*, %struct.TYPE_5__*, i32*, %struct.TYPE_4__* }
%struct.line = type { i32, %struct.tree_entry* }
%struct.tree_entry = type { i32, i64, i32, i32 }
%struct.TYPE_5__ = type { i8* }
%struct.TYPE_4__ = type { i8* }
%struct.buffer = type { i8* }
%struct.tree_state = type { i32, i32, i64, i32 }

@.str = private unnamed_addr constant [4 x i8] c"git\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"log\00", align 1
@encoding_arg = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"--no-color\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"--pretty=raw\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"--cc\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"--raw\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"%(directory)\00", align 1
@LINE_HEADER = common dso_local global i32 0, align 4
@LINE_DIRECTORY = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"040000\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"Tree is empty\00", align 1
@repo = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@OPEN_EXTRA = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [25 x i8] c"Failed to load tree data\00", align 1
@LINE_COMMIT = common dso_local global i64 0, align 8
@LINE_AUTHOR = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [8 x i8] c"author \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.view*, %struct.buffer*, %struct.tree_state*)* @tree_read_date to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tree_read_date(%struct.view* %0, %struct.buffer* %1, %struct.tree_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.view*, align 8
  %6 = alloca %struct.buffer*, align 8
  %7 = alloca %struct.tree_state*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [11 x i8*], align 16
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.line*, align 8
  %14 = alloca %struct.tree_entry*, align 8
  store %struct.view* %0, %struct.view** %5, align 8
  store %struct.buffer* %1, %struct.buffer** %6, align 8
  store %struct.tree_state* %2, %struct.tree_state** %7, align 8
  %15 = load %struct.buffer*, %struct.buffer** %6, align 8
  %16 = icmp ne %struct.buffer* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load %struct.buffer*, %struct.buffer** %6, align 8
  %19 = getelementptr inbounds %struct.buffer, %struct.buffer* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  br label %22

21:                                               ; preds = %3
  br label %22

22:                                               ; preds = %21, %17
  %23 = phi i8* [ %20, %17 ], [ null, %21 ]
  store i8* %23, i8** %8, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %34, label %26

26:                                               ; preds = %22
  %27 = load %struct.tree_state*, %struct.tree_state** %7, align 8
  %28 = getelementptr inbounds %struct.tree_state, %struct.tree_state* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load %struct.tree_state*, %struct.tree_state** %7, align 8
  %33 = getelementptr inbounds %struct.tree_state, %struct.tree_state* %32, i32 0, i32 0
  store i32 0, i32* %33, align 8
  store i32 1, i32* %4, align 4
  br label %259

34:                                               ; preds = %26, %22
  %35 = load i8*, i8** %8, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %88, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds [11 x i8*], [11 x i8*]* %9, i64 0, i64 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %38, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %39, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 1
  %41 = load i8*, i8** @encoding_arg, align 8
  store i8* %41, i8** %40, align 8
  %42 = getelementptr inbounds i8*, i8** %40, i64 1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8** %42, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8** %43, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %44, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i64 1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8** %45, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 1
  %47 = load %struct.view*, %struct.view** %5, align 8
  %48 = getelementptr inbounds %struct.view, %struct.view* %47, i32 0, i32 5
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  store i8* %51, i8** %46, align 8
  %52 = getelementptr inbounds i8*, i8** %46, i64 1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8** %52, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i64 1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i8** %53, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 1
  store i8* null, i8** %54, align 8
  %55 = load %struct.view*, %struct.view** %5, align 8
  %56 = getelementptr inbounds %struct.view, %struct.view* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %75, label %59

59:                                               ; preds = %37
  %60 = load %struct.view*, %struct.view** %5, align 8
  %61 = load i32, i32* @LINE_HEADER, align 4
  %62 = load %struct.view*, %struct.view** %5, align 8
  %63 = getelementptr inbounds %struct.view, %struct.view* %62, i32 0, i32 3
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @tree_entry(%struct.view* %60, i32 %61, i8* %66, i8* null, i32* null, i32 0)
  %68 = load %struct.view*, %struct.view** %5, align 8
  %69 = load i32, i32* @LINE_DIRECTORY, align 4
  %70 = load %struct.view*, %struct.view** %5, align 8
  %71 = getelementptr inbounds %struct.view, %struct.view* %70, i32 0, i32 4
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @tree_entry(%struct.view* %68, i32 %69, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32* %72, i32 0)
  %74 = call i32 @report(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %259

75:                                               ; preds = %37
  %76 = load %struct.view*, %struct.view** %5, align 8
  %77 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @repo, i32 0, i32 0), align 4
  %78 = getelementptr inbounds [11 x i8*], [11 x i8*]* %9, i64 0, i64 0
  %79 = load i32, i32* @OPEN_EXTRA, align 4
  %80 = call i64 @begin_update(%struct.view* %76, i32 %77, i8** %78, i32 %79)
  %81 = load i64, i64* @SUCCESS, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %75
  %84 = call i32 @report(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %259

85:                                               ; preds = %75
  %86 = load %struct.tree_state*, %struct.tree_state** %7, align 8
  %87 = getelementptr inbounds %struct.tree_state, %struct.tree_state* %86, i32 0, i32 0
  store i32 1, i32* %87, align 8
  store i32 0, i32* %4, align 4
  br label %259

88:                                               ; preds = %34
  %89 = load i8*, i8** %8, align 8
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 99
  br i1 %92, label %93, label %104

93:                                               ; preds = %88
  %94 = load i8*, i8** %8, align 8
  %95 = call i64 @get_line_type(i8* %94)
  %96 = load i64, i64* @LINE_COMMIT, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %104

98:                                               ; preds = %93
  %99 = load %struct.tree_state*, %struct.tree_state** %7, align 8
  %100 = getelementptr inbounds %struct.tree_state, %struct.tree_state* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = load i8*, i8** %8, align 8
  %103 = call i32 @string_copy_rev_from_commit_line(i32 %101, i8* %102)
  br label %256

104:                                              ; preds = %93, %88
  %105 = load i8*, i8** %8, align 8
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp eq i32 %107, 97
  br i1 %108, label %109, label %124

109:                                              ; preds = %104
  %110 = load i8*, i8** %8, align 8
  %111 = call i64 @get_line_type(i8* %110)
  %112 = load i64, i64* @LINE_AUTHOR, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %124

114:                                              ; preds = %109
  %115 = load i8*, i8** %8, align 8
  %116 = call i32 @STRING_SIZE(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8, i8* %115, i64 %117
  %119 = load %struct.tree_state*, %struct.tree_state** %7, align 8
  %120 = getelementptr inbounds %struct.tree_state, %struct.tree_state* %119, i32 0, i32 2
  %121 = load %struct.tree_state*, %struct.tree_state** %7, align 8
  %122 = getelementptr inbounds %struct.tree_state, %struct.tree_state* %121, i32 0, i32 1
  %123 = call i32 @parse_author_line(i8* %118, i64* %120, i32* %122)
  br label %255

124:                                              ; preds = %109, %104
  %125 = load i8*, i8** %8, align 8
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp eq i32 %127, 58
  br i1 %128, label %129, label %254

129:                                              ; preds = %124
  store i64 1, i64* %11, align 8
  %130 = load i8*, i8** %8, align 8
  %131 = call i8* @strrchr(i8* %130, i8 signext 9)
  store i8* %131, i8** %10, align 8
  %132 = load i8*, i8** %10, align 8
  %133 = icmp ne i8* %132, null
  br i1 %133, label %135, label %134

134:                                              ; preds = %129
  store i32 1, i32* %4, align 4
  br label %259

135:                                              ; preds = %129
  %136 = load i8*, i8** %10, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 1
  store i8* %137, i8** %8, align 8
  %138 = load %struct.view*, %struct.view** %5, align 8
  %139 = getelementptr inbounds %struct.view, %struct.view* %138, i32 0, i32 3
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 0
  %142 = load i8*, i8** %141, align 8
  %143 = load i8, i8* %142, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %171

146:                                              ; preds = %135
  %147 = load i8*, i8** %8, align 8
  %148 = load %struct.view*, %struct.view** %5, align 8
  %149 = getelementptr inbounds %struct.view, %struct.view* %148, i32 0, i32 3
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 0
  %152 = load i8*, i8** %151, align 8
  %153 = load %struct.view*, %struct.view** %5, align 8
  %154 = getelementptr inbounds %struct.view, %struct.view* %153, i32 0, i32 3
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 0
  %157 = load i8*, i8** %156, align 8
  %158 = call i32 @strlen(i8* %157)
  %159 = call i32 @strncmp(i8* %147, i8* %152, i32 %158)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %171, label %161

161:                                              ; preds = %146
  %162 = load %struct.view*, %struct.view** %5, align 8
  %163 = getelementptr inbounds %struct.view, %struct.view* %162, i32 0, i32 3
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 0
  %166 = load i8*, i8** %165, align 8
  %167 = call i32 @strlen(i8* %166)
  %168 = load i8*, i8** %8, align 8
  %169 = sext i32 %167 to i64
  %170 = getelementptr inbounds i8, i8* %168, i64 %169
  store i8* %170, i8** %8, align 8
  br label %171

171:                                              ; preds = %161, %146, %135
  %172 = load i8*, i8** %8, align 8
  %173 = call i8* @strchr(i8* %172, i8 signext 47)
  store i8* %173, i8** %10, align 8
  %174 = load i8*, i8** %10, align 8
  %175 = icmp ne i8* %174, null
  br i1 %175, label %176, label %178

176:                                              ; preds = %171
  %177 = load i8*, i8** %10, align 8
  store i8 0, i8* %177, align 1
  br label %178

178:                                              ; preds = %176, %171
  store i64 1, i64* %12, align 8
  br label %179

179:                                              ; preds = %239, %178
  %180 = load i64, i64* %12, align 8
  %181 = load %struct.view*, %struct.view** %5, align 8
  %182 = getelementptr inbounds %struct.view, %struct.view* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = icmp ult i64 %180, %183
  br i1 %184, label %185, label %242

185:                                              ; preds = %179
  %186 = load %struct.view*, %struct.view** %5, align 8
  %187 = getelementptr inbounds %struct.view, %struct.view* %186, i32 0, i32 2
  %188 = load %struct.line*, %struct.line** %187, align 8
  %189 = load i64, i64* %12, align 8
  %190 = getelementptr inbounds %struct.line, %struct.line* %188, i64 %189
  store %struct.line* %190, %struct.line** %13, align 8
  %191 = load %struct.line*, %struct.line** %13, align 8
  %192 = getelementptr inbounds %struct.line, %struct.line* %191, i32 0, i32 1
  %193 = load %struct.tree_entry*, %struct.tree_entry** %192, align 8
  store %struct.tree_entry* %193, %struct.tree_entry** %14, align 8
  %194 = load %struct.tree_entry*, %struct.tree_entry** %14, align 8
  %195 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %194, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = icmp ne i64 %196, 0
  %198 = xor i1 %197, true
  %199 = xor i1 %198, true
  %200 = zext i1 %199 to i32
  %201 = sext i32 %200 to i64
  %202 = load i64, i64* %11, align 8
  %203 = add i64 %202, %201
  store i64 %203, i64* %11, align 8
  %204 = load %struct.tree_entry*, %struct.tree_entry** %14, align 8
  %205 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %204, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %215, label %208

208:                                              ; preds = %185
  %209 = load %struct.tree_entry*, %struct.tree_entry** %14, align 8
  %210 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %209, i32 0, i32 3
  %211 = load i32, i32* %210, align 4
  %212 = load i8*, i8** %8, align 8
  %213 = call i64 @strcmp(i32 %211, i8* %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %208, %185
  br label %239

216:                                              ; preds = %208
  %217 = load %struct.tree_entry*, %struct.tree_entry** %14, align 8
  %218 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 8
  %220 = load %struct.tree_state*, %struct.tree_state** %7, align 8
  %221 = getelementptr inbounds %struct.tree_state, %struct.tree_state* %220, i32 0, i32 3
  %222 = load i32, i32* %221, align 8
  %223 = call i32 @string_copy_rev(i32 %219, i32 %222)
  %224 = load %struct.tree_state*, %struct.tree_state** %7, align 8
  %225 = getelementptr inbounds %struct.tree_state, %struct.tree_state* %224, i32 0, i32 2
  %226 = load i64, i64* %225, align 8
  %227 = load %struct.tree_entry*, %struct.tree_entry** %14, align 8
  %228 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %227, i32 0, i32 1
  store i64 %226, i64* %228, align 8
  %229 = load %struct.tree_state*, %struct.tree_state** %7, align 8
  %230 = getelementptr inbounds %struct.tree_state, %struct.tree_state* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.tree_entry*, %struct.tree_entry** %14, align 8
  %233 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %232, i32 0, i32 0
  store i32 %231, i32* %233, align 8
  %234 = load %struct.line*, %struct.line** %13, align 8
  %235 = getelementptr inbounds %struct.line, %struct.line* %234, i32 0, i32 0
  store i32 1, i32* %235, align 8
  %236 = load %struct.view*, %struct.view** %5, align 8
  %237 = load %struct.line*, %struct.line** %13, align 8
  %238 = call i32 @view_column_info_update(%struct.view* %236, %struct.line* %237)
  br label %242

239:                                              ; preds = %215
  %240 = load i64, i64* %12, align 8
  %241 = add i64 %240, 1
  store i64 %241, i64* %12, align 8
  br label %179

242:                                              ; preds = %216, %179
  %243 = load i64, i64* %11, align 8
  %244 = load %struct.view*, %struct.view** %5, align 8
  %245 = getelementptr inbounds %struct.view, %struct.view* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = icmp eq i64 %243, %246
  br i1 %247, label %248, label %253

248:                                              ; preds = %242
  %249 = load %struct.view*, %struct.view** %5, align 8
  %250 = getelementptr inbounds %struct.view, %struct.view* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 8
  %252 = call i32 @io_kill(i32 %251)
  br label %253

253:                                              ; preds = %248, %242
  br label %254

254:                                              ; preds = %253, %124
  br label %255

255:                                              ; preds = %254, %114
  br label %256

256:                                              ; preds = %255, %98
  br label %257

257:                                              ; preds = %256
  br label %258

258:                                              ; preds = %257
  store i32 1, i32* %4, align 4
  br label %259

259:                                              ; preds = %258, %134, %85, %83, %59, %31
  %260 = load i32, i32* %4, align 4
  ret i32 %260
}

declare dso_local i32 @tree_entry(%struct.view*, i32, i8*, i8*, i32*, i32) #1

declare dso_local i32 @report(i8*) #1

declare dso_local i64 @begin_update(%struct.view*, i32, i8**, i32) #1

declare dso_local i64 @get_line_type(i8*) #1

declare dso_local i32 @string_copy_rev_from_commit_line(i32, i8*) #1

declare dso_local i32 @parse_author_line(i8*, i64*, i32*) #1

declare dso_local i32 @STRING_SIZE(i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @string_copy_rev(i32, i32) #1

declare dso_local i32 @view_column_info_update(%struct.view*, %struct.line*) #1

declare dso_local i32 @io_kill(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
