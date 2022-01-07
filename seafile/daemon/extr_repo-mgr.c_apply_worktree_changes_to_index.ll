; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_repo-mgr.c_apply_worktree_changes_to_index.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_repo-mgr.c_apply_worktree_changes_to_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, i32, i32 }
%struct.TYPE_26__ = type { i32, i32, i32, i32, i32 }
%struct.index_state = type { i32 }
%struct.TYPE_24__ = type { i8*, i32, i32 }
%struct.TYPE_25__ = type { i32, i32 }

@seaf = common dso_local global %struct.TYPE_23__* null, align 8
@.str = private unnamed_addr constant [47 x i8] c"Can't find worktree status for repo %s(%.8s).\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"All events are processed for repo %s.\0A\00", align 1
@FALSE = common dso_local global i8* null, align 8
@SYNC_ERROR_ID_UPDATE_TO_READ_ONLY_REPO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"%s is not writable, ignore.\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Delete: %s is locked on server, ignore.\0A\00", align 1
@DIFF_STATUS_DELETED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [51 x i8] c"Kernel event queue overflowed, fall back to scan.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_26__*, %struct.index_state*, i32*, i32*, i32*)* @apply_worktree_changes_to_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apply_worktree_changes_to_index(%struct.TYPE_26__* %0, %struct.index_state* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_26__*, align 8
  %8 = alloca %struct.index_state*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_24__*, align 8
  %13 = alloca %struct.TYPE_25__*, align 8
  %14 = alloca %struct.TYPE_25__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_25__*, align 8
  %19 = alloca i32, align 4
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %7, align 8
  store %struct.index_state* %1, %struct.index_state** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %20 = load %struct.TYPE_23__*, %struct.TYPE_23__** @seaf, align 8
  %21 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.TYPE_24__* @seaf_wt_monitor_get_worktree_status(i32 %22, i32 %25)
  store %struct.TYPE_24__* %26, %struct.TYPE_24__** %12, align 8
  %27 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %28 = icmp ne %struct.TYPE_24__* %27, null
  br i1 %28, label %37, label %29

29:                                               ; preds = %5
  %30 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (i8*, ...) @seaf_warning(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %35)
  store i32 -1, i32* %6, align 4
  br label %347

37:                                               ; preds = %5
  %38 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %39 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %40 = load %struct.index_state*, %struct.index_state** %8, align 8
  %41 = load i32*, i32** %10, align 8
  %42 = call i32 @update_path_sync_status(%struct.TYPE_26__* %38, %struct.TYPE_24__* %39, %struct.index_state* %40, i32* %41)
  store i32* null, i32** %16, align 8
  store i32* null, i32** %17, align 8
  %43 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %43, i32 0, i32 1
  %45 = call i32 @pthread_mutex_lock(i32* %44)
  %46 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call %struct.TYPE_25__* @g_queue_peek_tail(i32 %48)
  store %struct.TYPE_25__* %49, %struct.TYPE_25__** %18, align 8
  %50 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %50, i32 0, i32 1
  %52 = call i32 @pthread_mutex_unlock(i32* %51)
  %53 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %54 = icmp ne %struct.TYPE_25__* %53, null
  br i1 %54, label %63, label %55

55:                                               ; preds = %37
  %56 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @seaf_message(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %60 = load i8*, i8** @FALSE, align 8
  %61 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %61, i32 0, i32 0
  store i8* %60, i8** %62, align 8
  br label %340

63:                                               ; preds = %37
  store i32 0, i32* %19, align 4
  br label %64

64:                                               ; preds = %63, %338
  %65 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %65, i32 0, i32 1
  %67 = call i32 @pthread_mutex_lock(i32* %66)
  %68 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = call %struct.TYPE_25__* @g_queue_pop_head(i32 %70)
  store %struct.TYPE_25__* %71, %struct.TYPE_25__** %13, align 8
  %72 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = call %struct.TYPE_25__* @g_queue_peek_head(i32 %74)
  store %struct.TYPE_25__* %75, %struct.TYPE_25__** %14, align 8
  %76 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %76, i32 0, i32 1
  %78 = call i32 @pthread_mutex_unlock(i32* %77)
  %79 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %80 = icmp ne %struct.TYPE_25__* %79, null
  br i1 %80, label %82, label %81

81:                                               ; preds = %64
  br label %339

82:                                               ; preds = %64
  %83 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %84 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 132
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load i32*, i32** %16, align 8
  %89 = call i32 @g_list_free_full(i32* %88, i32 (i8*)* @g_free)
  store i32* null, i32** %16, align 8
  br label %90

90:                                               ; preds = %87, %82
  %91 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %92 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  switch i32 %93, label %321 [
    i32 132, label %94
    i32 128, label %155
    i32 131, label %167
    i32 129, label %278
    i32 133, label %286
    i32 130, label %313
  ]

94:                                               ; preds = %90
  %95 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %96 = icmp ne %struct.TYPE_25__* %95, null
  br i1 %96, label %97, label %115

97:                                               ; preds = %94
  %98 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %99 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %102 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = icmp eq i32 %100, %103
  br i1 %104, label %105, label %115

105:                                              ; preds = %97
  %106 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %107 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %110 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @strcmp(i32 %108, i32 %111)
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %105
  br label %321

115:                                              ; preds = %105, %97, %94
  %116 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %123 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @is_path_writable(i32 %118, i32 %121, i32 %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %143, label %127

127:                                              ; preds = %115
  %128 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %135 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @SYNC_ERROR_ID_UPDATE_TO_READ_ONLY_REPO, align 4
  %138 = call i32 @send_file_sync_error_notification(i32 %130, i32 %133, i32 %136, i32 %137)
  %139 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %140 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @seaf_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %141)
  br label %321

143:                                              ; preds = %115
  %144 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %145 = load %struct.index_state*, %struct.index_state** %8, align 8
  %146 = load i32*, i32** %9, align 8
  %147 = load i32*, i32** %10, align 8
  %148 = load i32*, i32** %11, align 8
  %149 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %150 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %151 = call i32 @handle_add_files(%struct.TYPE_26__* %144, %struct.index_state* %145, i32* %146, i32* %147, i32* %148, %struct.TYPE_24__* %149, %struct.TYPE_25__* %150, i32** %16, i32* %19)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %143
  br label %340

154:                                              ; preds = %143
  br label %321

155:                                              ; preds = %90
  %156 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %157 = load %struct.index_state*, %struct.index_state** %8, align 8
  %158 = load i32*, i32** %9, align 8
  %159 = load i32*, i32** %10, align 8
  %160 = load i32*, i32** %11, align 8
  %161 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %162 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %163 = call i32 @handle_add_files(%struct.TYPE_26__* %156, %struct.index_state* %157, i32* %158, i32* %159, i32* %160, %struct.TYPE_24__* %161, %struct.TYPE_25__* %162, i32** %16, i32* %19)
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %155
  br label %340

166:                                              ; preds = %155
  br label %321

167:                                              ; preds = %90
  %168 = load %struct.TYPE_23__*, %struct.TYPE_23__** @seaf, align 8
  %169 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %175 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @seaf_sync_manager_delete_active_path(i32 %170, i32 %173, i32 %176)
  %178 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %179 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %182 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = load i32*, i32** %10, align 8
  %185 = call i32 @check_full_path_ignore(i32 %180, i32 %183, i32* %184)
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %167
  br label %321

188:                                              ; preds = %167
  %189 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %190 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %193 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %196 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @is_path_writable(i32 %191, i32 %194, i32 %197)
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %205, label %200

200:                                              ; preds = %188
  %201 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %202 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @seaf_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %203)
  br label %321

205:                                              ; preds = %188
  %206 = load %struct.TYPE_23__*, %struct.TYPE_23__** @seaf, align 8
  %207 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %210 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %213 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @seaf_filelock_manager_is_file_locked(i32 %208, i32 %211, i32 %214)
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %222

217:                                              ; preds = %205
  %218 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %219 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @seaf_debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %220)
  br label %321

222:                                              ; preds = %205
  %223 = load i32*, i32** %11, align 8
  %224 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %225 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = call i32 @check_locked_file_before_remove(i32* %223, i32 %226)
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %277

229:                                              ; preds = %222
  %230 = load i8*, i8** @FALSE, align 8
  store i8* %230, i8** %15, align 8
  %231 = load %struct.index_state*, %struct.index_state** %8, align 8
  %232 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %233 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = call i32 @remove_from_index_with_prefix(%struct.index_state* %231, i32 %234, i8** %15)
  %236 = load i8*, i8** %15, align 8
  %237 = icmp ne i8* %236, null
  br i1 %237, label %238, label %258

238:                                              ; preds = %229
  %239 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %240 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = load %struct.index_state*, %struct.index_state** %8, align 8
  %243 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %244 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %247 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = load i32*, i32** %10, align 8
  %250 = load i32*, i32** %11, align 8
  %251 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %252 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %251, i32 0, i32 2
  %253 = load i32, i32* %252, align 4
  %254 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %255 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %254, i32 0, i32 3
  %256 = load i32, i32* %255, align 4
  %257 = call i32 @scan_subtree_for_deletion(i32 %241, %struct.index_state* %242, i32 %245, i32 %248, i32* %249, i32* %250, i32 %253, i32** %17, i32 %256)
  br label %258

258:                                              ; preds = %238, %229
  %259 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %260 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %259, i32 0, i32 3
  %261 = load i32, i32* %260, align 4
  %262 = load i32, i32* @DIFF_STATUS_DELETED, align 4
  %263 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %264 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = load i8*, i8** @FALSE, align 8
  %267 = call i32 @remove_from_changeset(i32 %261, i32 %262, i32 %265, i8* %266, i32* null)
  %268 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %269 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 4
  %271 = load %struct.index_state*, %struct.index_state** %8, align 8
  %272 = load i32*, i32** %10, align 8
  %273 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %274 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 4
  %276 = call i32 @try_add_empty_parent_dir_entry_from_wt(i32 %270, %struct.index_state* %271, i32* %272, i32 %275)
  br label %277

277:                                              ; preds = %258, %222
  br label %321

278:                                              ; preds = %90
  %279 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %280 = load %struct.index_state*, %struct.index_state** %8, align 8
  %281 = load i32*, i32** %9, align 8
  %282 = load i32*, i32** %10, align 8
  %283 = load i32*, i32** %11, align 8
  %284 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %285 = call i32 @handle_rename(%struct.TYPE_26__* %279, %struct.index_state* %280, i32* %281, i32* %282, i32* %283, %struct.TYPE_25__* %284, i32** %17, i32* %19)
  br label %321

286:                                              ; preds = %90
  %287 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %288 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 4
  %290 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %291 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %290, i32 0, i32 2
  %292 = load i32, i32* %291, align 4
  %293 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %294 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %293, i32 0, i32 1
  %295 = load i32, i32* %294, align 4
  %296 = call i32 @is_path_writable(i32 %289, i32 %292, i32 %295)
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %303, label %298

298:                                              ; preds = %286
  %299 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %300 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 4
  %302 = call i32 @seaf_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %301)
  br label %321

303:                                              ; preds = %286
  %304 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %305 = load %struct.index_state*, %struct.index_state** %8, align 8
  %306 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %307 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 4
  %309 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %310 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %309, i32 0, i32 1
  %311 = load i32, i32* %310, align 4
  %312 = call i32 @update_attributes(%struct.TYPE_26__* %304, %struct.index_state* %305, i32 %308, i32 %311)
  br label %321

313:                                              ; preds = %90
  %314 = call i32 (i8*, ...) @seaf_warning(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0))
  %315 = load %struct.index_state*, %struct.index_state** %8, align 8
  %316 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %317 = load i32*, i32** %9, align 8
  %318 = load i32*, i32** %10, align 8
  %319 = load i32*, i32** %11, align 8
  %320 = call i32 @scan_worktree_for_changes(%struct.index_state* %315, %struct.TYPE_26__* %316, i32* %317, i32* %318, i32* %319)
  br label %321

321:                                              ; preds = %90, %313, %303, %298, %278, %277, %217, %200, %187, %166, %154, %127, %114
  %322 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %323 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %324 = icmp eq %struct.TYPE_25__* %322, %323
  br i1 %324, label %325, label %335

325:                                              ; preds = %321
  %326 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %327 = call i32 @wt_event_free(%struct.TYPE_25__* %326)
  %328 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %329 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 4
  %331 = call i32 @seaf_message(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %330)
  %332 = load i8*, i8** @FALSE, align 8
  %333 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %334 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %333, i32 0, i32 0
  store i8* %332, i8** %334, align 8
  br label %339

335:                                              ; preds = %321
  %336 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %337 = call i32 @wt_event_free(%struct.TYPE_25__* %336)
  br label %338

338:                                              ; preds = %335
  br label %64

339:                                              ; preds = %325, %81
  br label %340

340:                                              ; preds = %339, %165, %153, %55
  %341 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %342 = call i32 @wt_status_unref(%struct.TYPE_24__* %341)
  %343 = load i32*, i32** %16, align 8
  %344 = call i32 @string_list_free(i32* %343)
  %345 = load i32*, i32** %17, align 8
  %346 = call i32 @string_list_free(i32* %345)
  store i32 0, i32* %6, align 4
  br label %347

347:                                              ; preds = %340, %29
  %348 = load i32, i32* %6, align 4
  ret i32 %348
}

declare dso_local %struct.TYPE_24__* @seaf_wt_monitor_get_worktree_status(i32, i32) #1

declare dso_local i32 @seaf_warning(i8*, ...) #1

declare dso_local i32 @update_path_sync_status(%struct.TYPE_26__*, %struct.TYPE_24__*, %struct.index_state*, i32*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local %struct.TYPE_25__* @g_queue_peek_tail(i32) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @seaf_message(i8*, i32) #1

declare dso_local %struct.TYPE_25__* @g_queue_pop_head(i32) #1

declare dso_local %struct.TYPE_25__* @g_queue_peek_head(i32) #1

declare dso_local i32 @g_list_free_full(i32*, i32 (i8*)*) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i32 @is_path_writable(i32, i32, i32) #1

declare dso_local i32 @send_file_sync_error_notification(i32, i32, i32, i32) #1

declare dso_local i32 @seaf_debug(i8*, i32) #1

declare dso_local i32 @handle_add_files(%struct.TYPE_26__*, %struct.index_state*, i32*, i32*, i32*, %struct.TYPE_24__*, %struct.TYPE_25__*, i32**, i32*) #1

declare dso_local i32 @seaf_sync_manager_delete_active_path(i32, i32, i32) #1

declare dso_local i32 @check_full_path_ignore(i32, i32, i32*) #1

declare dso_local i32 @seaf_filelock_manager_is_file_locked(i32, i32, i32) #1

declare dso_local i32 @check_locked_file_before_remove(i32*, i32) #1

declare dso_local i32 @remove_from_index_with_prefix(%struct.index_state*, i32, i8**) #1

declare dso_local i32 @scan_subtree_for_deletion(i32, %struct.index_state*, i32, i32, i32*, i32*, i32, i32**, i32) #1

declare dso_local i32 @remove_from_changeset(i32, i32, i32, i8*, i32*) #1

declare dso_local i32 @try_add_empty_parent_dir_entry_from_wt(i32, %struct.index_state*, i32*, i32) #1

declare dso_local i32 @handle_rename(%struct.TYPE_26__*, %struct.index_state*, i32*, i32*, i32*, %struct.TYPE_25__*, i32**, i32*) #1

declare dso_local i32 @update_attributes(%struct.TYPE_26__*, %struct.index_state*, i32, i32) #1

declare dso_local i32 @scan_worktree_for_changes(%struct.index_state*, %struct.TYPE_26__*, i32*, i32*, i32*) #1

declare dso_local i32 @wt_event_free(%struct.TYPE_25__*) #1

declare dso_local i32 @wt_status_unref(%struct.TYPE_24__*) #1

declare dso_local i32 @string_list_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
