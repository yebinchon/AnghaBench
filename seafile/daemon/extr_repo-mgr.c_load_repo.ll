; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_repo-mgr.c_load_repo.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_repo-mgr.c_load_repo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i8*, i8*, i32, i8*, i8*, i8*, i32*, i8*, i8*, i8*, i64, i8*, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { %struct.TYPE_24__*, %struct.TYPE_23__* }
%struct.TYPE_24__ = type { i32, i32 }
%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_27__ = type { i8* }

@.str = private unnamed_addr constant [34 x i8] c"[repo mgr] failed to alloc repo.\0A\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"SELECT branch_name FROM RepoBranch WHERE repo_id='%s'\00", align 1
@load_branch_cb = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Error read branch for repo %s.\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"master\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"[repo-mgr] Can not find commit %s\0A\00", align 1
@TRUE = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [39 x i8] c"[repo-mgr] Failed to get branch master\00", align 1
@REPO_AUTO_SYNC = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"worktree\00", align 1
@FALSE = common dso_local global i8* null, align 8
@REPO_PROP_EMAIL = common dso_local global i8* null, align 8
@REPO_PROP_TOKEN = common dso_local global i8* null, align 8
@REPO_PROP_SERVER_URL = common dso_local global i8* null, align 8
@seaf = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [55 x i8] c"Worktree for repo \22%s\22 is invalid, but still keep it.\0A\00", align 1
@.str.9 = private unnamed_addr constant [47 x i8] c"Worktree for repo \22%s\22 is invalid, delete it.\0A\00", align 1
@REPO_PROP_IS_READONLY = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@REPO_PROP_SYNC_INTERVAL = common dso_local global i8* null, align 8
@REPO_SYNC_WORKTREE_NAME = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_26__* (%struct.TYPE_25__*, i8*)* @load_repo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_26__* @load_repo(%struct.TYPE_25__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_26__*, align 8
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [256 x i8], align 16
  %7 = alloca %struct.TYPE_26__*, align 8
  %8 = alloca %struct.TYPE_27__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call %struct.TYPE_26__* @seaf_repo_new(i8* %13, i32* null, i32* null)
  store %struct.TYPE_26__* %14, %struct.TYPE_26__** %7, align 8
  %15 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %16 = icmp ne %struct.TYPE_26__* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %2
  %18 = call i32 (i8*, ...) @seaf_warning(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %3, align 8
  br label %305

19:                                               ; preds = %2
  %20 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %21 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %21, i32 0, i32 12
  store %struct.TYPE_25__* %20, %struct.TYPE_25__** %22, align 8
  %23 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %24 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @snprintf(i8* %23, i32 256, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i8* %26)
  %28 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_24__*, %struct.TYPE_24__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %34 = load i32, i32* @load_branch_cb, align 4
  %35 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %36 = call i64 @sqlite_foreach_selected_row(i32 %32, i8* %33, i32 %34, %struct.TYPE_26__* %35)
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %19
  %39 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 (i8*, ...) @seaf_warning(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %41)
  %43 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %44 = call i32 @seaf_repo_free(%struct.TYPE_26__* %43)
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %3, align 8
  br label %305

45:                                               ; preds = %19
  %46 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %46, i32 0, i32 11
  %48 = load i8*, i8** %47, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %52 = call i32 @seaf_repo_free(%struct.TYPE_26__* %51)
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %3, align 8
  br label %305

53:                                               ; preds = %45
  %54 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %54, i32 0, i32 6
  %56 = load i32*, i32** %55, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %108

58:                                               ; preds = %53
  %59 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_23__*, %struct.TYPE_23__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = call %struct.TYPE_27__* @seaf_branch_manager_get_branch(i32 %63, i8* %66, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store %struct.TYPE_27__* %67, %struct.TYPE_27__** %8, align 8
  %68 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %69 = icmp ne %struct.TYPE_27__* %68, null
  br i1 %69, label %70, label %102

70:                                               ; preds = %58
  %71 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_23__*, %struct.TYPE_23__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = call i32* @seaf_commit_manager_get_commit_compatible(i32 %75, i8* %78, i8* %81)
  store i32* %82, i32** %9, align 8
  %83 = load i32*, i32** %9, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %85, label %91

85:                                               ; preds = %70
  %86 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %87 = load i32*, i32** %9, align 8
  %88 = call i32 @seaf_repo_from_commit(%struct.TYPE_26__* %86, i32* %87)
  %89 = load i32*, i32** %9, align 8
  %90 = call i32 @seaf_commit_unref(i32* %89)
  br label %99

91:                                               ; preds = %70
  %92 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 (i8*, ...) @seaf_warning(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i8* %94)
  %96 = load i8*, i8** @TRUE, align 8
  %97 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %97, i32 0, i32 11
  store i8* %96, i8** %98, align 8
  br label %99

99:                                               ; preds = %91, %85
  %100 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %101 = call i32 @seaf_branch_unref(%struct.TYPE_27__* %100)
  br label %107

102:                                              ; preds = %58
  %103 = call i32 (i8*, ...) @seaf_warning(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  %104 = load i8*, i8** @TRUE, align 8
  %105 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %105, i32 0, i32 11
  store i8* %104, i8** %106, align 8
  br label %107

107:                                              ; preds = %102, %99
  br label %108

108:                                              ; preds = %107, %53
  %109 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %109, i32 0, i32 11
  %111 = load i8*, i8** %110, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %113, label %116

113:                                              ; preds = %108
  %114 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %115 = call i32 @seaf_repo_free(%struct.TYPE_26__* %114)
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %3, align 8
  br label %305

116:                                              ; preds = %108
  %117 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %118 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %119 = call i32 @load_repo_passwd(%struct.TYPE_25__* %117, %struct.TYPE_26__* %118)
  %120 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %121 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %121, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  %124 = load i8*, i8** @REPO_AUTO_SYNC, align 8
  %125 = call i8* @load_repo_property(%struct.TYPE_25__* %120, i8* %123, i8* %124)
  store i8* %125, i8** %10, align 8
  %126 = load i8*, i8** %10, align 8
  %127 = call i64 @g_strcmp0(i8* %126, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %116
  %130 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %130, i32 0, i32 10
  store i64 0, i64* %131, align 8
  br label %132

132:                                              ; preds = %129, %116
  %133 = load i8*, i8** %10, align 8
  %134 = call i32 @g_free(i8* %133)
  %135 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %136 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %136, i32 0, i32 0
  %138 = load i8*, i8** %137, align 8
  %139 = call i8* @load_repo_property(%struct.TYPE_25__* %135, i8* %138, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %140 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %140, i32 0, i32 3
  store i8* %139, i8** %141, align 8
  %142 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %142, i32 0, i32 3
  %144 = load i8*, i8** %143, align 8
  %145 = icmp ne i8* %144, null
  br i1 %145, label %146, label %150

146:                                              ; preds = %132
  %147 = load i8*, i8** @FALSE, align 8
  %148 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %148, i32 0, i32 5
  store i8* %147, i8** %149, align 8
  br label %150

150:                                              ; preds = %146, %132
  %151 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %152 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %152, i32 0, i32 0
  %154 = load i8*, i8** %153, align 8
  %155 = load i8*, i8** @REPO_PROP_EMAIL, align 8
  %156 = call i8* @load_repo_property(%struct.TYPE_25__* %151, i8* %154, i8* %155)
  %157 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %157, i32 0, i32 9
  store i8* %156, i8** %158, align 8
  %159 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %160 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %160, i32 0, i32 0
  %162 = load i8*, i8** %161, align 8
  %163 = load i8*, i8** @REPO_PROP_TOKEN, align 8
  %164 = call i8* @load_repo_property(%struct.TYPE_25__* %159, i8* %162, i8* %163)
  %165 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %165, i32 0, i32 8
  store i8* %164, i8** %166, align 8
  %167 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %168 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %169 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %168, i32 0, i32 0
  %170 = load i8*, i8** %169, align 8
  %171 = load i8*, i8** @REPO_PROP_SERVER_URL, align 8
  %172 = call i8* @load_repo_property(%struct.TYPE_25__* %167, i8* %170, i8* %171)
  %173 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %173, i32 0, i32 7
  store i8* %172, i8** %174, align 8
  %175 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %176 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %175, i32 0, i32 6
  %177 = load i32*, i32** %176, align 8
  %178 = icmp ne i32* %177, null
  br i1 %178, label %179, label %204

179:                                              ; preds = %150
  %180 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %181 = call i64 @seaf_repo_check_worktree(%struct.TYPE_26__* %180)
  %182 = icmp slt i64 %181, 0
  br i1 %182, label %183, label %204

183:                                              ; preds = %179
  %184 = load i32, i32* @seaf, align 4
  %185 = call i64 @seafile_session_config_get_allow_invalid_worktree(i32 %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %195

187:                                              ; preds = %183
  %188 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %189 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %188, i32 0, i32 1
  %190 = load i8*, i8** %189, align 8
  %191 = call i32 (i8*, ...) @seaf_warning(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.8, i64 0, i64 0), i8* %190)
  %192 = load i8*, i8** @TRUE, align 8
  %193 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %194 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %193, i32 0, i32 5
  store i8* %192, i8** %194, align 8
  br label %203

195:                                              ; preds = %183
  %196 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %197 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %196, i32 0, i32 1
  %198 = load i8*, i8** %197, align 8
  %199 = call i32 @seaf_message(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.9, i64 0, i64 0), i8* %198)
  %200 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %201 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %202 = call i32 @seaf_repo_manager_del_repo(%struct.TYPE_25__* %200, %struct.TYPE_26__* %201)
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %3, align 8
  br label %305

203:                                              ; preds = %187
  br label %204

204:                                              ; preds = %203, %179, %150
  %205 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %206 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %207 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %206, i32 0, i32 0
  %208 = load i8*, i8** %207, align 8
  %209 = load i8*, i8** @REPO_PROP_IS_READONLY, align 8
  %210 = call i8* @load_repo_property(%struct.TYPE_25__* %205, i8* %208, i8* %209)
  store i8* %210, i8** %10, align 8
  %211 = load i8*, i8** %10, align 8
  %212 = call i64 @g_strcmp0(i8* %211, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %213 = icmp eq i64 %212, 0
  br i1 %213, label %214, label %218

214:                                              ; preds = %204
  %215 = load i8*, i8** @TRUE, align 8
  %216 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %217 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %216, i32 0, i32 4
  store i8* %215, i8** %217, align 8
  br label %222

218:                                              ; preds = %204
  %219 = load i8*, i8** @FALSE, align 8
  %220 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %221 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %220, i32 0, i32 4
  store i8* %219, i8** %221, align 8
  br label %222

222:                                              ; preds = %218, %214
  %223 = load i8*, i8** %10, align 8
  %224 = call i32 @g_free(i8* %223)
  %225 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %226 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %227 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %226, i32 0, i32 0
  %228 = load i8*, i8** %227, align 8
  %229 = load i8*, i8** @REPO_PROP_SYNC_INTERVAL, align 8
  %230 = call i8* @load_repo_property(%struct.TYPE_25__* %225, i8* %228, i8* %229)
  store i8* %230, i8** %10, align 8
  %231 = load i8*, i8** %10, align 8
  %232 = icmp ne i8* %231, null
  br i1 %232, label %233, label %243

233:                                              ; preds = %222
  %234 = load i8*, i8** %10, align 8
  %235 = call i32 @atoi(i8* %234)
  store i32 %235, i32* %11, align 4
  %236 = load i32, i32* %11, align 4
  %237 = icmp sgt i32 %236, 0
  br i1 %237, label %238, label %242

238:                                              ; preds = %233
  %239 = load i32, i32* %11, align 4
  %240 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %241 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %240, i32 0, i32 2
  store i32 %239, i32* %241, align 8
  br label %242

242:                                              ; preds = %238, %233
  br label %243

243:                                              ; preds = %242, %222
  %244 = load i8*, i8** %10, align 8
  %245 = call i32 @g_free(i8* %244)
  %246 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %247 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %246, i32 0, i32 3
  %248 = load i8*, i8** %247, align 8
  %249 = icmp ne i8* %248, null
  br i1 %249, label %250, label %292

250:                                              ; preds = %243
  %251 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %252 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %251, i32 0, i32 3
  %253 = load i8*, i8** %252, align 8
  %254 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %255 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %254, i32 0, i32 1
  %256 = load i8*, i8** %255, align 8
  %257 = call i64 @is_wt_repo_name_same(i8* %253, i8* %256)
  store i64 %257, i64* %12, align 8
  %258 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %259 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %260 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %259, i32 0, i32 0
  %261 = load i8*, i8** %260, align 8
  %262 = load i8*, i8** @REPO_SYNC_WORKTREE_NAME, align 8
  %263 = call i8* @load_repo_property(%struct.TYPE_25__* %258, i8* %261, i8* %262)
  store i8* %263, i8** %10, align 8
  %264 = load i8*, i8** %10, align 8
  %265 = call i64 @g_strcmp0(i8* %264, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %266 = icmp eq i64 %265, 0
  br i1 %266, label %267, label %278

267:                                              ; preds = %250
  %268 = load i64, i64* %12, align 8
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %277, label %270

270:                                              ; preds = %267
  %271 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %272 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %273 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %272, i32 0, i32 1
  %274 = load i8*, i8** %273, align 8
  %275 = load i8*, i8** @FALSE, align 8
  %276 = call i32 @update_repo_worktree_name(%struct.TYPE_26__* %271, i8* %274, i8* %275)
  br label %277

277:                                              ; preds = %270, %267
  br label %289

278:                                              ; preds = %250
  %279 = load i64, i64* %12, align 8
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %281, label %288

281:                                              ; preds = %278
  %282 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %283 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %284 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %283, i32 0, i32 0
  %285 = load i8*, i8** %284, align 8
  %286 = load i8*, i8** @REPO_SYNC_WORKTREE_NAME, align 8
  %287 = call i32 @save_repo_property(%struct.TYPE_25__* %282, i8* %285, i8* %286, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  br label %288

288:                                              ; preds = %281, %278
  br label %289

289:                                              ; preds = %288, %277
  %290 = load i8*, i8** %10, align 8
  %291 = call i32 @g_free(i8* %290)
  br label %292

292:                                              ; preds = %289, %243
  %293 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %294 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %293, i32 0, i32 0
  %295 = load %struct.TYPE_24__*, %struct.TYPE_24__** %294, align 8
  %296 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 4
  %298 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %299 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %298, i32 0, i32 0
  %300 = load i8*, i8** %299, align 8
  %301 = call i32 @g_strdup(i8* %300)
  %302 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %303 = call i32 @g_hash_table_insert(i32 %297, i32 %301, %struct.TYPE_26__* %302)
  %304 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  store %struct.TYPE_26__* %304, %struct.TYPE_26__** %3, align 8
  br label %305

305:                                              ; preds = %292, %195, %113, %50, %38, %17
  %306 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  ret %struct.TYPE_26__* %306
}

declare dso_local %struct.TYPE_26__* @seaf_repo_new(i8*, i32*, i32*) #1

declare dso_local i32 @seaf_warning(i8*, ...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i64 @sqlite_foreach_selected_row(i32, i8*, i32, %struct.TYPE_26__*) #1

declare dso_local i32 @seaf_repo_free(%struct.TYPE_26__*) #1

declare dso_local %struct.TYPE_27__* @seaf_branch_manager_get_branch(i32, i8*, i8*) #1

declare dso_local i32* @seaf_commit_manager_get_commit_compatible(i32, i8*, i8*) #1

declare dso_local i32 @seaf_repo_from_commit(%struct.TYPE_26__*, i32*) #1

declare dso_local i32 @seaf_commit_unref(i32*) #1

declare dso_local i32 @seaf_branch_unref(%struct.TYPE_27__*) #1

declare dso_local i32 @load_repo_passwd(%struct.TYPE_25__*, %struct.TYPE_26__*) #1

declare dso_local i8* @load_repo_property(%struct.TYPE_25__*, i8*, i8*) #1

declare dso_local i64 @g_strcmp0(i8*, i8*) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i64 @seaf_repo_check_worktree(%struct.TYPE_26__*) #1

declare dso_local i64 @seafile_session_config_get_allow_invalid_worktree(i32) #1

declare dso_local i32 @seaf_message(i8*, i8*) #1

declare dso_local i32 @seaf_repo_manager_del_repo(%struct.TYPE_25__*, %struct.TYPE_26__*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i64 @is_wt_repo_name_same(i8*, i8*) #1

declare dso_local i32 @update_repo_worktree_name(%struct.TYPE_26__*, i8*, i8*) #1

declare dso_local i32 @save_repo_property(%struct.TYPE_25__*, i8*, i8*, i8*) #1

declare dso_local i32 @g_hash_table_insert(i32, i32, %struct.TYPE_26__*) #1

declare dso_local i32 @g_strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
