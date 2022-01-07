; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_repo-mgr.c_handle_rename.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_repo-mgr.c_handle_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32 }
%struct.index_state = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32* }

@seaf = common dso_local global %struct.TYPE_12__* null, align 8
@.str = private unnamed_addr constant [43 x i8] c"Rename: %s or %s is not writable, ignore.\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Rename: %s is locked on server, ignore.\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@DIFF_STATUS_DELETED = common dso_local global i32 0, align 4
@DIFF_STATUS_RENAMED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, %struct.index_state*, i32*, i32*, i32*, %struct.TYPE_9__*, i32**, i32*)* @handle_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_rename(%struct.TYPE_10__* %0, %struct.index_state* %1, i32* %2, i32* %3, i32* %4, %struct.TYPE_9__* %5, i32** %6, i32* %7) #0 {
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.index_state*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_9__*, align 8
  %15 = alloca i32**, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.TYPE_11__, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %9, align 8
  store %struct.index_state* %1, %struct.index_state** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store %struct.TYPE_9__* %5, %struct.TYPE_9__** %14, align 8
  store i32** %6, i32*** %15, align 8
  store i32* %7, i32** %16, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** @seaf, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @seaf_sync_manager_delete_active_path(i32 %23, i32 %26, i32 %29)
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @is_path_writable(i32 %33, i32 %36, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @is_path_writable(i32 %45, i32 %48, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %62, label %54

54:                                               ; preds = %42, %8
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 (i8*, i32, ...) @seaf_debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %57, i32 %60)
  br label %278

62:                                               ; preds = %42
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** @seaf, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @seaf_filelock_manager_is_file_locked(i32 %65, i32 %68, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %62
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 (i8*, i32, ...) @seaf_debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %77)
  br label %278

79:                                               ; preds = %62
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** @seaf, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i64 @seaf_filelock_manager_is_file_locked(i32 %82, i32 %85, i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %79
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 (i8*, i32, ...) @seaf_debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %94)
  br label %278

96:                                               ; preds = %79
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32*, i32** %12, align 8
  %104 = call i64 @check_full_path_ignore(i32 %99, i32 %102, i32* %103)
  store i64 %104, i64* %18, align 8
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32*, i32** %12, align 8
  %112 = call i64 @check_full_path_ignore(i32 %107, i32 %110, i32* %111)
  store i64 %112, i64* %19, align 8
  %113 = load i64, i64* %19, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %172

115:                                              ; preds = %96
  %116 = load i64, i64* %18, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %171, label %118

118:                                              ; preds = %115
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @is_seafile_backup_file(i32 %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %171, label %124

124:                                              ; preds = %118
  %125 = load i32*, i32** %13, align 8
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = call i64 @check_locked_file_before_remove(i32* %125, i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %171

131:                                              ; preds = %124
  %132 = load i64, i64* @FALSE, align 8
  store i64 %132, i64* %17, align 8
  %133 = load %struct.index_state*, %struct.index_state** %10, align 8
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @remove_from_index_with_prefix(%struct.index_state* %133, i32 %136, i64* %17)
  %138 = load i64, i64* %17, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %161

140:                                              ; preds = %131
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.index_state*, %struct.index_state** %10, align 8
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load i32*, i32** %12, align 8
  %152 = load i32*, i32** %13, align 8
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 5
  %155 = load i32, i32* %154, align 4
  %156 = load i32**, i32*** %15, align 8
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @scan_subtree_for_deletion(i32 %143, %struct.index_state* %144, i32 %147, i32 %150, i32* %151, i32* %152, i32 %155, i32** %156, i32 %159)
  br label %161

161:                                              ; preds = %140, %131
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @DIFF_STATUS_DELETED, align 4
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load i64, i64* @FALSE, align 8
  %170 = call i32 @remove_from_changeset(i32 %164, i32 %165, i32 %168, i64 %169, i32* null)
  br label %171

171:                                              ; preds = %161, %124, %118, %115
  br label %278

172:                                              ; preds = %96
  %173 = load i64, i64* %18, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %245, label %175

175:                                              ; preds = %172
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @ignore_xlsx_update(i32 %178, i32 %181)
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %245, label %184

184:                                              ; preds = %175
  %185 = load i32*, i32** %13, align 8
  %186 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = call i64 @check_locked_file_before_remove(i32* %185, i32 %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %245

191:                                              ; preds = %184
  %192 = load i64, i64* @FALSE, align 8
  store i64 %192, i64* %17, align 8
  %193 = load %struct.index_state*, %struct.index_state** %10, align 8
  %194 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %198 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @rename_index_entries(%struct.index_state* %193, i32 %196, i32 %199, i64* %17, i32* null, i32* null)
  %201 = load i64, i64* %17, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %224

203:                                              ; preds = %191
  %204 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %205 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %204, i32 0, i32 3
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.index_state*, %struct.index_state** %10, align 8
  %208 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %209 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %212 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = load i32*, i32** %12, align 8
  %215 = load i32*, i32** %13, align 8
  %216 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %216, i32 0, i32 5
  %218 = load i32, i32* %217, align 4
  %219 = load i32**, i32*** %15, align 8
  %220 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %221 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %220, i32 0, i32 4
  %222 = load i32, i32* %221, align 4
  %223 = call i32 @scan_subtree_for_deletion(i32 %206, %struct.index_state* %207, i32 %210, i32 %213, i32* %214, i32* %215, i32 %218, i32** %219, i32 %222)
  br label %224

224:                                              ; preds = %203, %191
  %225 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %226 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = load %struct.index_state*, %struct.index_state** %10, align 8
  %229 = load i32*, i32** %12, align 8
  %230 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @try_add_empty_parent_dir_entry_from_wt(i32 %227, %struct.index_state* %228, i32* %229, i32 %232)
  %234 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %235 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %234, i32 0, i32 4
  %236 = load i32, i32* %235, align 4
  %237 = load i32, i32* @DIFF_STATUS_RENAMED, align 4
  %238 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %239 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %242 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = call i32 @add_to_changeset(i32 %236, i32 %237, i32* null, i32* null, i32* null, i32 %240, i32 %243)
  br label %245

245:                                              ; preds = %224, %184, %175, %172
  %246 = call i32 @memset(%struct.TYPE_11__* %20, i32 0, i32 16)
  %247 = load i32*, i32** %13, align 8
  %248 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 2
  store i32* %247, i32** %248, align 8
  %249 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %250 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %249, i32 0, i32 5
  %251 = load i32, i32* %250, align 4
  %252 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 1
  store i32 %251, i32* %252, align 4
  %253 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %254 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %253, i32 0, i32 4
  %255 = load i32, i32* %254, align 4
  %256 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  store i32 %255, i32* %256, align 8
  %257 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %258 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %257, i32 0, i32 3
  %259 = load i32, i32* %258, align 4
  %260 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %261 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %260, i32 0, i32 2
  %262 = load i32, i32* %261, align 4
  %263 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %264 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = load %struct.index_state*, %struct.index_state** %10, align 8
  %267 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %268 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %271 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 4
  %273 = load i32*, i32** %11, align 8
  %274 = load i64, i64* @FALSE, align 8
  %275 = load i32*, i32** %12, align 8
  %276 = load i32*, i32** %16, align 8
  %277 = call i32 @add_recursive(i32 %259, i32 %262, i32 %265, %struct.index_state* %266, i32 %269, i32 %272, i32* %273, i64 %274, i32* %275, i32* %276, i32* null, %struct.TYPE_11__* %20)
  br label %278

278:                                              ; preds = %245, %171, %91, %74, %54
  ret void
}

declare dso_local i32 @seaf_sync_manager_delete_active_path(i32, i32, i32) #1

declare dso_local i32 @is_path_writable(i32, i32, i32) #1

declare dso_local i32 @seaf_debug(i8*, i32, ...) #1

declare dso_local i64 @seaf_filelock_manager_is_file_locked(i32, i32, i32) #1

declare dso_local i64 @check_full_path_ignore(i32, i32, i32*) #1

declare dso_local i32 @is_seafile_backup_file(i32) #1

declare dso_local i64 @check_locked_file_before_remove(i32*, i32) #1

declare dso_local i32 @remove_from_index_with_prefix(%struct.index_state*, i32, i64*) #1

declare dso_local i32 @scan_subtree_for_deletion(i32, %struct.index_state*, i32, i32, i32*, i32*, i32, i32**, i32) #1

declare dso_local i32 @remove_from_changeset(i32, i32, i32, i64, i32*) #1

declare dso_local i32 @ignore_xlsx_update(i32, i32) #1

declare dso_local i32 @rename_index_entries(%struct.index_state*, i32, i32, i64*, i32*, i32*) #1

declare dso_local i32 @try_add_empty_parent_dir_entry_from_wt(i32, %struct.index_state*, i32*, i32) #1

declare dso_local i32 @add_to_changeset(i32, i32, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @add_recursive(i32, i32, i32, %struct.index_state*, i32, i32, i32*, i64, i32*, i32*, i32*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
