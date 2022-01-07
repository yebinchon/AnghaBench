; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_repo-mgr.c_add_file.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_repo-mgr.c_add_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32 }
%struct.index_state = type { i32 }
%struct.TYPE_11__ = type { i64, i64 }
%struct.TYPE_13__ = type { i64, i64, i64, i32 }
%struct.cache_entry = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@seaf = common dso_local global %struct.TYPE_14__* null, align 8
@SYNC_STATUS_SYNCING = common dso_local global i64 0, align 8
@SYNC_STATUS_SYNCED = common dso_local global i64 0, align 8
@S_IFREG = common dso_local global i32 0, align 4
@SYNC_ERROR_ID_UPDATE_TO_READ_ONLY_REPO = common dso_local global i32 0, align 4
@index_cb = common dso_local global i32 0, align 4
@DIFF_STATUS_ADDED = common dso_local global i32 0, align 4
@MAX_COMMIT_SIZE = common dso_local global i64 0, align 8
@SYNC_STATUS_ERROR = common dso_local global i64 0, align 8
@SYNC_ERROR_ID_INDEX_ERROR = common dso_local global i32 0, align 4
@LOCKED_OP_DELETE = common dso_local global i32 0, align 4
@LOCKED_OP_UPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, %struct.index_state*, i8*, i8*, %struct.TYPE_11__*, i32*, i64*, i32**, %struct.TYPE_13__*)* @add_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_file(i8* %0, i32 %1, i8* %2, %struct.index_state* %3, i8* %4, i8* %5, %struct.TYPE_11__* %6, i32* %7, i64* %8, i32** %9, %struct.TYPE_13__* %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca %struct.index_state*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.TYPE_11__*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i64*, align 8
  %22 = alloca i32**, align 8
  %23 = alloca %struct.TYPE_13__*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca %struct.cache_entry*, align 8
  %29 = alloca i64, align 8
  store i8* %0, i8** %13, align 8
  store i32 %1, i32* %14, align 4
  store i8* %2, i8** %15, align 8
  store %struct.index_state* %3, %struct.index_state** %16, align 8
  store i8* %4, i8** %17, align 8
  store i8* %5, i8** %18, align 8
  store %struct.TYPE_11__* %6, %struct.TYPE_11__** %19, align 8
  store i32* %7, i32** %20, align 8
  store i64* %8, i64** %21, align 8
  store i32** %9, i32*** %22, align 8
  store %struct.TYPE_13__* %10, %struct.TYPE_13__** %23, align 8
  %30 = load i64, i64* @FALSE, align 8
  store i64 %30, i64* %24, align 8
  store i32 0, i32* %25, align 4
  %31 = load i64, i64* @TRUE, align 8
  store i64 %31, i64* %26, align 8
  %32 = load i64, i64* @FALSE, align 8
  store i64 %32, i64* %27, align 8
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %34 = icmp ne %struct.TYPE_13__* %33, null
  br i1 %34, label %35, label %42

35:                                               ; preds = %11
  %36 = load i8*, i8** %13, align 8
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = load i8*, i8** %17, align 8
  %41 = call i64 @is_path_writable(i8* %36, i32 %39, i8* %40)
  store i64 %41, i64* %26, align 8
  br label %42

42:                                               ; preds = %35, %11
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** @seaf, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i8*, i8** %13, align 8
  %47 = load i8*, i8** %17, align 8
  %48 = call i64 @seaf_filelock_manager_is_file_locked(i32 %45, i8* %46, i8* %47)
  store i64 %48, i64* %27, align 8
  %49 = load i64, i64* %27, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %42
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %53 = icmp ne %struct.TYPE_13__* %52, null
  br i1 %53, label %54, label %60

54:                                               ; preds = %51
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %54
  br label %60

60:                                               ; preds = %59, %54, %51, %42
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %62 = icmp ne %struct.TYPE_13__* %61, null
  br i1 %62, label %63, label %117

63:                                               ; preds = %60
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %117

68:                                               ; preds = %63
  %69 = load %struct.index_state*, %struct.index_state** %16, align 8
  %70 = load i8*, i8** %17, align 8
  %71 = load i8*, i8** %17, align 8
  %72 = call i32 @strlen(i8* %71)
  %73 = call %struct.cache_entry* @index_name_exists(%struct.index_state* %69, i8* %70, i32 %72, i32 0)
  store %struct.cache_entry* %73, %struct.cache_entry** %28, align 8
  %74 = load %struct.cache_entry*, %struct.cache_entry** %28, align 8
  %75 = icmp ne %struct.cache_entry* %74, null
  br i1 %75, label %76, label %81

76:                                               ; preds = %68
  %77 = load %struct.cache_entry*, %struct.cache_entry** %28, align 8
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %79 = call i64 @ie_match_stat(%struct.cache_entry* %77, %struct.TYPE_11__* %78, i32 0)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %76, %68
  %82 = load i64, i64* @SYNC_STATUS_SYNCING, align 8
  store i64 %82, i64* %29, align 8
  br label %85

83:                                               ; preds = %76
  %84 = load i64, i64* @SYNC_STATUS_SYNCED, align 8
  store i64 %84, i64* %29, align 8
  br label %85

85:                                               ; preds = %83, %81
  %86 = load i64, i64* %29, align 8
  %87 = load i64, i64* @SYNC_STATUS_SYNCED, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %95, label %89

89:                                               ; preds = %85
  %90 = load i64, i64* %26, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %104

92:                                               ; preds = %89
  %93 = load i64, i64* %27, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %104, label %95

95:                                               ; preds = %92, %85
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** @seaf, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i8*, i8** %13, align 8
  %100 = load i8*, i8** %17, align 8
  %101 = load i32, i32* @S_IFREG, align 4
  %102 = load i64, i64* %29, align 8
  %103 = call i32 @seaf_sync_manager_update_active_path(i32 %98, i8* %99, i8* %100, i32 %101, i64 %102)
  br label %104

104:                                              ; preds = %95, %92, %89
  %105 = load i64, i64* %29, align 8
  %106 = load i64, i64* @SYNC_STATUS_SYNCING, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %116

108:                                              ; preds = %104
  %109 = load i64, i64* %26, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %116, label %111

111:                                              ; preds = %108
  %112 = load i8*, i8** %13, align 8
  %113 = load i8*, i8** %17, align 8
  %114 = load i32, i32* @SYNC_ERROR_ID_UPDATE_TO_READ_ONLY_REPO, align 4
  %115 = call i32 @send_file_sync_error_notification(i8* %112, i32* null, i8* %113, i32 %114)
  br label %116

116:                                              ; preds = %111, %108, %104
  br label %117

117:                                              ; preds = %116, %63, %60
  %118 = load i64, i64* %26, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %117
  %121 = load i64, i64* %27, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %120, %117
  %124 = load i32, i32* %25, align 4
  store i32 %124, i32* %12, align 4
  br label %288

125:                                              ; preds = %120
  %126 = load i32**, i32*** %22, align 8
  %127 = icmp ne i32** %126, null
  br i1 %127, label %187, label %128

128:                                              ; preds = %125
  %129 = load i8*, i8** %13, align 8
  %130 = load i32, i32* %14, align 4
  %131 = load %struct.index_state*, %struct.index_state** %16, align 8
  %132 = load i8*, i8** %17, align 8
  %133 = load i8*, i8** %18, align 8
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %135 = load i32*, i32** %20, align 8
  %136 = load i32, i32* @index_cb, align 4
  %137 = load i8*, i8** %15, align 8
  %138 = call i32 @add_to_index(i8* %129, i32 %130, %struct.index_state* %131, i8* %132, i8* %133, %struct.TYPE_11__* %134, i32 0, i32* %135, i32 %136, i8* %137, i64* %24)
  store i32 %138, i32* %25, align 4
  %139 = load i64, i64* %24, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %150, label %141

141:                                              ; preds = %128
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** @seaf, align 8
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i8*, i8** %13, align 8
  %146 = load i8*, i8** %17, align 8
  %147 = load i32, i32* @S_IFREG, align 4
  %148 = load i64, i64* @SYNC_STATUS_SYNCED, align 8
  %149 = call i32 @seaf_sync_manager_update_active_path(i32 %144, i8* %145, i8* %146, i32 %147, i64 %148)
  br label %186

150:                                              ; preds = %128
  %151 = load i64*, i64** %21, align 8
  %152 = icmp ne i64* %151, null
  br i1 %152, label %153, label %160

153:                                              ; preds = %150
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = load i64*, i64** %21, align 8
  %158 = load i64, i64* %157, align 8
  %159 = add nsw i64 %158, %156
  store i64 %159, i64* %157, align 8
  br label %160

160:                                              ; preds = %153, %150
  %161 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %162 = icmp ne %struct.TYPE_13__* %161, null
  br i1 %162, label %163, label %185

163:                                              ; preds = %160
  %164 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %185

168:                                              ; preds = %163
  %169 = load %struct.index_state*, %struct.index_state** %16, align 8
  %170 = load i8*, i8** %17, align 8
  %171 = load i8*, i8** %17, align 8
  %172 = call i32 @strlen(i8* %171)
  %173 = call %struct.cache_entry* @index_name_exists(%struct.index_state* %169, i8* %170, i32 %172, i32 0)
  store %struct.cache_entry* %173, %struct.cache_entry** %28, align 8
  %174 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = load i32, i32* @DIFF_STATUS_ADDED, align 4
  %178 = load %struct.cache_entry*, %struct.cache_entry** %28, align 8
  %179 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %182 = load i8*, i8** %15, align 8
  %183 = load i8*, i8** %17, align 8
  %184 = call i32 @add_to_changeset(i64 %176, i32 %177, i32 %180, %struct.TYPE_11__* %181, i8* %182, i8* %183, i32* null)
  br label %185

185:                                              ; preds = %168, %163, %160
  br label %186

186:                                              ; preds = %185, %141
  br label %270

187:                                              ; preds = %125
  %188 = load i32**, i32*** %22, align 8
  %189 = load i32*, i32** %188, align 8
  %190 = icmp eq i32* %189, null
  br i1 %190, label %191, label %257

191:                                              ; preds = %187
  %192 = load i8*, i8** %13, align 8
  %193 = load i32, i32* %14, align 4
  %194 = load %struct.index_state*, %struct.index_state** %16, align 8
  %195 = load i8*, i8** %17, align 8
  %196 = load i8*, i8** %18, align 8
  %197 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %198 = load i32*, i32** %20, align 8
  %199 = load i32, i32* @index_cb, align 4
  %200 = load i8*, i8** %15, align 8
  %201 = call i32 @add_to_index(i8* %192, i32 %193, %struct.index_state* %194, i8* %195, i8* %196, %struct.TYPE_11__* %197, i32 0, i32* %198, i32 %199, i8* %200, i64* %24)
  store i32 %201, i32* %25, align 4
  %202 = load i64, i64* %24, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %219

204:                                              ; preds = %191
  %205 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %206 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %205, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = load i64*, i64** %21, align 8
  %209 = load i64, i64* %208, align 8
  %210 = add nsw i64 %209, %207
  store i64 %210, i64* %208, align 8
  %211 = load i64*, i64** %21, align 8
  %212 = load i64, i64* %211, align 8
  %213 = load i64, i64* @MAX_COMMIT_SIZE, align 8
  %214 = icmp sge i64 %212, %213
  br i1 %214, label %215, label %218

215:                                              ; preds = %204
  %216 = call i32* (...) @g_queue_new()
  %217 = load i32**, i32*** %22, align 8
  store i32* %216, i32** %217, align 8
  br label %218

218:                                              ; preds = %215, %204
  br label %228

219:                                              ; preds = %191
  %220 = load %struct.TYPE_14__*, %struct.TYPE_14__** @seaf, align 8
  %221 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = load i8*, i8** %13, align 8
  %224 = load i8*, i8** %17, align 8
  %225 = load i32, i32* @S_IFREG, align 4
  %226 = load i64, i64* @SYNC_STATUS_SYNCED, align 8
  %227 = call i32 @seaf_sync_manager_update_active_path(i32 %222, i8* %223, i8* %224, i32 %225, i64 %226)
  br label %228

228:                                              ; preds = %219, %218
  %229 = load i64, i64* %24, align 8
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %256

231:                                              ; preds = %228
  %232 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %233 = icmp ne %struct.TYPE_13__* %232, null
  br i1 %233, label %234, label %256

234:                                              ; preds = %231
  %235 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %236 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %256

239:                                              ; preds = %234
  %240 = load %struct.index_state*, %struct.index_state** %16, align 8
  %241 = load i8*, i8** %17, align 8
  %242 = load i8*, i8** %17, align 8
  %243 = call i32 @strlen(i8* %242)
  %244 = call %struct.cache_entry* @index_name_exists(%struct.index_state* %240, i8* %241, i32 %243, i32 0)
  store %struct.cache_entry* %244, %struct.cache_entry** %28, align 8
  %245 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %246 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = load i32, i32* @DIFF_STATUS_ADDED, align 4
  %249 = load %struct.cache_entry*, %struct.cache_entry** %28, align 8
  %250 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 4
  %252 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %253 = load i8*, i8** %15, align 8
  %254 = load i8*, i8** %17, align 8
  %255 = call i32 @add_to_changeset(i64 %247, i32 %248, i32 %251, %struct.TYPE_11__* %252, i8* %253, i8* %254, i32* null)
  br label %256

256:                                              ; preds = %239, %234, %231, %228
  br label %269

257:                                              ; preds = %187
  %258 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %259 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %258, i32 0, i32 1
  %260 = load i64, i64* %259, align 8
  %261 = load i64*, i64** %21, align 8
  %262 = load i64, i64* %261, align 8
  %263 = add nsw i64 %262, %260
  store i64 %263, i64* %261, align 8
  %264 = load i32**, i32*** %22, align 8
  %265 = load i32*, i32** %264, align 8
  %266 = load i8*, i8** %17, align 8
  %267 = call i32 @g_strdup(i8* %266)
  %268 = call i32 @g_queue_push_tail(i32* %265, i32 %267)
  br label %269

269:                                              ; preds = %257, %256
  br label %270

270:                                              ; preds = %269, %186
  %271 = load i32, i32* %25, align 4
  %272 = icmp slt i32 %271, 0
  br i1 %272, label %273, label %286

273:                                              ; preds = %270
  %274 = load %struct.TYPE_14__*, %struct.TYPE_14__** @seaf, align 8
  %275 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 4
  %277 = load i8*, i8** %13, align 8
  %278 = load i8*, i8** %17, align 8
  %279 = load i32, i32* @S_IFREG, align 4
  %280 = load i64, i64* @SYNC_STATUS_ERROR, align 8
  %281 = call i32 @seaf_sync_manager_update_active_path(i32 %276, i8* %277, i8* %278, i32 %279, i64 %280)
  %282 = load i8*, i8** %13, align 8
  %283 = load i8*, i8** %17, align 8
  %284 = load i32, i32* @SYNC_ERROR_ID_INDEX_ERROR, align 4
  %285 = call i32 @send_file_sync_error_notification(i8* %282, i32* null, i8* %283, i32 %284)
  br label %286

286:                                              ; preds = %273, %270
  %287 = load i32, i32* %25, align 4
  store i32 %287, i32* %12, align 4
  br label %288

288:                                              ; preds = %286, %123
  %289 = load i32, i32* %12, align 4
  ret i32 %289
}

declare dso_local i64 @is_path_writable(i8*, i32, i8*) #1

declare dso_local i64 @seaf_filelock_manager_is_file_locked(i32, i8*, i8*) #1

declare dso_local %struct.cache_entry* @index_name_exists(%struct.index_state*, i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @ie_match_stat(%struct.cache_entry*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @seaf_sync_manager_update_active_path(i32, i8*, i8*, i32, i64) #1

declare dso_local i32 @send_file_sync_error_notification(i8*, i32*, i8*, i32) #1

declare dso_local i32 @add_to_index(i8*, i32, %struct.index_state*, i8*, i8*, %struct.TYPE_11__*, i32, i32*, i32, i8*, i64*) #1

declare dso_local i32 @add_to_changeset(i64, i32, i32, %struct.TYPE_11__*, i8*, i8*, i32*) #1

declare dso_local i32* @g_queue_new(...) #1

declare dso_local i32 @g_queue_push_tail(i32*, i32) #1

declare dso_local i32 @g_strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
