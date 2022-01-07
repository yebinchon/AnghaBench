; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_repo-mgr.c_seaf_repo_index_commit.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_repo-mgr.c_seaf_repo_index_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 }
%struct.TYPE_16__ = type { i8*, i32, %struct.TYPE_14__*, i32, i32*, %struct.TYPE_15__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i8* }
%struct.index_state = type { i32, i32, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.cache_tree = type { i32 }

@SEAF_PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Failed to load index.\0A\00", align 1
@SEAFILE_DOMAIN = common dso_local global i32 0, align 4
@SEAF_ERR_INTERNAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Internal data structure error\00", align 1
@SEAF_ERR_GENERAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"Failed to add\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"Create commit tree failed for repo %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"Failed to generate commit\00", align 1
@commit_trees_cb = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"Failed to build cache tree\00", align 1
@seaf = common dso_local global %struct.TYPE_18__* null, align 8
@.str.7 = private unnamed_addr constant [38 x i8] c"Head commit %s for repo %s not found\0A\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"Data corrupt\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"No change to the fs tree of repo %s\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"Failed to save commit file\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"Internal error\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"repo-committed\00", align 1
@diff_entry_free = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @seaf_repo_index_commit(%struct.TYPE_16__* %0, i32 %1, i32 %2, i32** %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32**, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca %struct.index_state, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_17__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca [41 x i8], align 16
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca [41 x i8], align 16
  %23 = alloca %struct.cache_tree*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32** %3, i32*** %9, align 8
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 5
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %25, align 8
  store %struct.TYPE_15__* %26, %struct.TYPE_15__** %10, align 8
  %27 = load i32, i32* @SEAF_PATH_MAX, align 4
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %12, align 8
  %30 = alloca i8, i64 %28, align 16
  store i64 %28, i64* %13, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %14, align 8
  store i8* null, i8** %15, align 8
  store i32* null, i32** %17, align 8
  store i32* null, i32** %18, align 8
  store i8* null, i8** %19, align 8
  store i8* null, i8** %20, align 8
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %32 = call i32 @check_worktree_common(%struct.TYPE_16__* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %4
  store i8* null, i8** %5, align 8
  store i32 1, i32* %21, align 4
  br label %257

35:                                               ; preds = %4
  %36 = call i32 @memset(%struct.index_state* %11, i32 0, i32 12)
  %37 = load i32, i32* @SEAF_PATH_MAX, align 4
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @snprintf(i8* %30, i32 %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %40, i8* %43)
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i64 @read_index_from(%struct.index_state* %11, i8* %30, i32 %47)
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %35
  %51 = call i32 (i8*, ...) @seaf_warning(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i32**, i32*** %9, align 8
  %53 = load i32, i32* @SEAFILE_DOMAIN, align 4
  %54 = load i32, i32* @SEAF_ERR_INTERNAL, align 4
  %55 = call i32 @g_set_error(i32** %52, i32 %53, i32 %54, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  store i8* null, i8** %5, align 8
  store i32 1, i32* %21, align 4
  br label %257

56:                                               ; preds = %35
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = call i32* @changeset_new(i8* %59)
  store i32* %60, i32** %17, align 8
  %61 = load i32*, i32** %17, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %68, label %63

63:                                               ; preds = %56
  %64 = load i32**, i32*** %9, align 8
  %65 = load i32, i32* @SEAFILE_DOMAIN, align 4
  %66 = load i32, i32* @SEAF_ERR_INTERNAL, align 4
  %67 = call i32 @g_set_error(i32** %64, i32 %65, i32 %66, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %242

68:                                               ; preds = %56
  %69 = load i32*, i32** %17, align 8
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 4
  store i32* %69, i32** %71, align 8
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %73 = load i32, i32* %7, align 4
  %74 = call i64 @index_add(%struct.TYPE_16__* %72, %struct.index_state* %11, i32 %73)
  %75 = icmp slt i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %68
  %77 = load i32**, i32*** %9, align 8
  %78 = load i32, i32* @SEAFILE_DOMAIN, align 4
  %79 = load i32, i32* @SEAF_ERR_GENERAL, align 4
  %80 = call i32 @g_set_error(i32** %77, i32 %78, i32 %79, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %242

81:                                               ; preds = %68
  %82 = getelementptr inbounds %struct.index_state, %struct.index_state* %11, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %81
  br label %242

86:                                               ; preds = %81
  %87 = load i32, i32* %8, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %107, label %89

89:                                               ; preds = %86
  %90 = load i32, i32* %7, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %107, label %92

92:                                               ; preds = %89
  %93 = load i32*, i32** %17, align 8
  %94 = call i8* @commit_tree_from_changeset(i32* %93)
  store i8* %94, i8** %15, align 8
  %95 = load i8*, i8** %15, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %106, label %97

97:                                               ; preds = %92
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 (i8*, ...) @seaf_warning(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i8* %100)
  %102 = load i32**, i32*** %9, align 8
  %103 = load i32, i32* @SEAFILE_DOMAIN, align 4
  %104 = load i32, i32* @SEAF_ERR_GENERAL, align 4
  %105 = call i32 @g_set_error(i32** %102, i32 %103, i32 %104, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  br label %242

106:                                              ; preds = %92
  br label %142

107:                                              ; preds = %89, %86
  %108 = call %struct.cache_tree* (...) @cache_tree()
  store %struct.cache_tree* %108, %struct.cache_tree** %23, align 8
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.cache_tree*, %struct.cache_tree** %23, align 8
  %119 = getelementptr inbounds %struct.index_state, %struct.index_state* %11, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = getelementptr inbounds %struct.index_state, %struct.index_state* %11, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @commit_trees_cb, align 4
  %124 = call i64 @cache_tree_update(i8* %111, i32 %114, i32 %117, %struct.cache_tree* %118, i32 %120, i32 %122, i32 0, i32 0, i32 %123)
  %125 = icmp slt i64 %124, 0
  br i1 %125, label %126, label %133

126:                                              ; preds = %107
  %127 = call i32 (i8*, ...) @seaf_warning(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  %128 = load i32**, i32*** %9, align 8
  %129 = load i32, i32* @SEAFILE_DOMAIN, align 4
  %130 = load i32, i32* @SEAF_ERR_INTERNAL, align 4
  %131 = call i32 @g_set_error(i32** %128, i32 %129, i32 %130, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %132 = call i32 @cache_tree_free(%struct.cache_tree** %23)
  br label %242

133:                                              ; preds = %107
  %134 = load %struct.cache_tree*, %struct.cache_tree** %23, align 8
  %135 = getelementptr inbounds %struct.cache_tree, %struct.cache_tree* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = getelementptr inbounds [41 x i8], [41 x i8]* %22, i64 0, i64 0
  %138 = call i32 @rawdata_to_hex(i32 %136, i8* %137, i32 20)
  %139 = getelementptr inbounds [41 x i8], [41 x i8]* %22, i64 0, i64 0
  %140 = call i8* @g_strdup(i8* %139)
  store i8* %140, i8** %15, align 8
  %141 = call i32 @cache_tree_free(%struct.cache_tree** %23)
  br label %142

142:                                              ; preds = %133, %106
  %143 = load %struct.TYPE_18__*, %struct.TYPE_18__** @seaf, align 8
  %144 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %146, i32 0, i32 0
  %148 = load i8*, i8** %147, align 8
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i32 0, i32 2
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call %struct.TYPE_17__* @seaf_commit_manager_get_commit(i32 %145, i8* %148, i32 %151, i32 %156)
  store %struct.TYPE_17__* %157, %struct.TYPE_17__** %14, align 8
  %158 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %159 = icmp ne %struct.TYPE_17__* %158, null
  br i1 %159, label %174, label %160

160:                                              ; preds = %142
  %161 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %161, i32 0, i32 2
  %163 = load %struct.TYPE_14__*, %struct.TYPE_14__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i32 0, i32 0
  %168 = load i8*, i8** %167, align 8
  %169 = call i32 (i8*, ...) @seaf_warning(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i32 %165, i8* %168)
  %170 = load i32**, i32*** %9, align 8
  %171 = load i32, i32* @SEAFILE_DOMAIN, align 4
  %172 = load i32, i32* @SEAF_ERR_INTERNAL, align 4
  %173 = call i32 @g_set_error(i32** %170, i32 %171, i32 %172, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  br label %242

174:                                              ; preds = %142
  %175 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %176 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = load i8*, i8** %15, align 8
  %179 = call i64 @strcmp(i32 %177, i8* %178)
  %180 = icmp eq i64 %179, 0
  br i1 %180, label %181, label %196

181:                                              ; preds = %174
  %182 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %183 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %182, i32 0, i32 0
  %184 = load i8*, i8** %183, align 8
  %185 = call i32 @seaf_message(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0), i8* %184)
  %186 = load i32, i32* %8, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %194, label %188

188:                                              ; preds = %181
  %189 = load i32, i32* %7, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %194, label %191

191:                                              ; preds = %188
  %192 = load i32*, i32** %17, align 8
  %193 = call i32 @compare_index_changeset(%struct.index_state* %11, i32* %192)
  br label %194

194:                                              ; preds = %191, %188, %181
  %195 = call i64 @update_index(%struct.index_state* %11, i8* %30)
  br label %242

196:                                              ; preds = %174
  %197 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %197, i32 0, i32 0
  %199 = load i8*, i8** %198, align 8
  %200 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %201 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 8
  %203 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %204 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = load i8*, i8** %15, align 8
  %207 = load i32, i32* @TRUE, align 4
  %208 = call i32 @diff_commit_roots(i8* %199, i32 %202, i32 %205, i8* %206, i32** %18, i32 %207)
  %209 = load i32*, i32** %18, align 8
  %210 = call i8* @diff_results_to_description(i32* %209)
  store i8* %210, i8** %19, align 8
  %211 = load i8*, i8** %19, align 8
  %212 = icmp ne i8* %211, null
  br i1 %212, label %215, label %213

213:                                              ; preds = %196
  %214 = call i8* @g_strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0))
  store i8* %214, i8** %19, align 8
  br label %215

215:                                              ; preds = %213, %196
  %216 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %217 = load i8*, i8** %15, align 8
  %218 = load i8*, i8** %19, align 8
  %219 = getelementptr inbounds [41 x i8], [41 x i8]* %16, i64 0, i64 0
  %220 = call i64 @commit_tree(%struct.TYPE_16__* %216, i8* %217, i8* %218, i8* %219)
  %221 = icmp slt i64 %220, 0
  br i1 %221, label %222, label %228

222:                                              ; preds = %215
  %223 = call i32 (i8*, ...) @seaf_warning(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0))
  %224 = load i32**, i32*** %9, align 8
  %225 = load i32, i32* @SEAFILE_DOMAIN, align 4
  %226 = load i32, i32* @SEAF_ERR_INTERNAL, align 4
  %227 = call i32 @g_set_error(i32** %224, i32 %225, i32 %226, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0))
  br label %242

228:                                              ; preds = %215
  %229 = call i64 @update_index(%struct.index_state* %11, i8* %30)
  %230 = icmp slt i64 %229, 0
  br i1 %230, label %231, label %236

231:                                              ; preds = %228
  %232 = load i32**, i32*** %9, align 8
  %233 = load i32, i32* @SEAFILE_DOMAIN, align 4
  %234 = load i32, i32* @SEAF_ERR_INTERNAL, align 4
  %235 = call i32 @g_set_error(i32** %232, i32 %233, i32 %234, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0))
  br label %242

236:                                              ; preds = %228
  %237 = load %struct.TYPE_18__*, %struct.TYPE_18__** @seaf, align 8
  %238 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %239 = call i32 @g_signal_emit_by_name(%struct.TYPE_18__* %237, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0), %struct.TYPE_16__* %238)
  %240 = getelementptr inbounds [41 x i8], [41 x i8]* %16, i64 0, i64 0
  %241 = call i8* @g_strdup(i8* %240)
  store i8* %241, i8** %20, align 8
  br label %242

242:                                              ; preds = %236, %231, %222, %194, %160, %126, %97, %85, %76, %63
  %243 = load i8*, i8** %19, align 8
  %244 = call i32 @g_free(i8* %243)
  %245 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %246 = call i32 @seaf_commit_unref(%struct.TYPE_17__* %245)
  %247 = load i8*, i8** %15, align 8
  %248 = call i32 @g_free(i8* %247)
  %249 = load i32*, i32** %17, align 8
  %250 = call i32 @changeset_free(i32* %249)
  %251 = load i32*, i32** %18, align 8
  %252 = load i64, i64* @diff_entry_free, align 8
  %253 = trunc i64 %252 to i32
  %254 = call i32 @g_list_free_full(i32* %251, i32 %253)
  %255 = call i32 @discard_index(%struct.index_state* %11)
  %256 = load i8*, i8** %20, align 8
  store i8* %256, i8** %5, align 8
  store i32 1, i32* %21, align 4
  br label %257

257:                                              ; preds = %242, %50, %34
  %258 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %258)
  %259 = load i8*, i8** %5, align 8
  ret i8* %259
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @check_worktree_common(%struct.TYPE_16__*) #2

declare dso_local i32 @memset(%struct.index_state*, i32, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i64 @read_index_from(%struct.index_state*, i8*, i32) #2

declare dso_local i32 @seaf_warning(i8*, ...) #2

declare dso_local i32 @g_set_error(i32**, i32, i32, i8*) #2

declare dso_local i32* @changeset_new(i8*) #2

declare dso_local i64 @index_add(%struct.TYPE_16__*, %struct.index_state*, i32) #2

declare dso_local i8* @commit_tree_from_changeset(i32*) #2

declare dso_local %struct.cache_tree* @cache_tree(...) #2

declare dso_local i64 @cache_tree_update(i8*, i32, i32, %struct.cache_tree*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @cache_tree_free(%struct.cache_tree**) #2

declare dso_local i32 @rawdata_to_hex(i32, i8*, i32) #2

declare dso_local i8* @g_strdup(i8*) #2

declare dso_local %struct.TYPE_17__* @seaf_commit_manager_get_commit(i32, i8*, i32, i32) #2

declare dso_local i64 @strcmp(i32, i8*) #2

declare dso_local i32 @seaf_message(i8*, i8*) #2

declare dso_local i32 @compare_index_changeset(%struct.index_state*, i32*) #2

declare dso_local i64 @update_index(%struct.index_state*, i8*) #2

declare dso_local i32 @diff_commit_roots(i8*, i32, i32, i8*, i32**, i32) #2

declare dso_local i8* @diff_results_to_description(i32*) #2

declare dso_local i64 @commit_tree(%struct.TYPE_16__*, i8*, i8*, i8*) #2

declare dso_local i32 @g_signal_emit_by_name(%struct.TYPE_18__*, i8*, %struct.TYPE_16__*) #2

declare dso_local i32 @g_free(i8*) #2

declare dso_local i32 @seaf_commit_unref(%struct.TYPE_17__*) #2

declare dso_local i32 @changeset_free(i32*) #2

declare dso_local i32 @g_list_free_full(i32*, i32) #2

declare dso_local i32 @discard_index(%struct.index_state*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
