; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_repo-mgr.c_download_files_http.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_repo-mgr.c_download_files_http.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32 }
%struct.index_state = type { i32 }
%struct.TYPE_18__ = type { i32, i32, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_22__*, %struct.TYPE_19__* }
%struct.TYPE_22__ = type { i64, i8*, i64, i32, i32, i32, i32 }
%struct.cache_entry = type { i32, i64, i32, i64, i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_20__ = type { i32, %struct.cache_entry*, i64, %struct.TYPE_22__* }
%struct.TYPE_21__ = type { i32, i32*, i32, %struct.TYPE_18__*, i32*, i32 }

@FETCH_CHECKOUT_SUCCESS = common dso_local global i32 0, align 4
@fetch_file_thread_func = common dso_local global i32 0, align 4
@DEFAULT_DOWNLOAD_THREADS = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@g_str_hash = common dso_local global i32 0, align 4
@g_str_equal = common dso_local global i32 0, align 4
@file_tx_task_free = common dso_local global i64 0, align 8
@DIFF_STATUS_DIR_ADDED = common dso_local global i64 0, align 8
@DIFF_STATUS_ADDED = common dso_local global i64 0, align 8
@DIFF_STATUS_MODIFIED = common dso_local global i64 0, align 8
@FETCH_CHECKOUT_FAILED = common dso_local global i32 0, align 4
@FETCH_CHECKOUT_CANCELED = common dso_local global i32 0, align 4
@FETCH_CHECKOUT_TRANSFER_ERROR = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SYNC_STATUS_ERROR = common dso_local global i32 0, align 4
@SYNC_STATUS_SYNCED = common dso_local global i32 0, align 4
@seaf = common dso_local global %struct.TYPE_23__* null, align 8
@CE_REMOVE = common dso_local global i32 0, align 4
@ADD_CACHE_OK_TO_ADD = common dso_local global i32 0, align 4
@ADD_CACHE_OK_TO_REPLACE = common dso_local global i32 0, align 4
@UPDATE_CACHE_SIZE_LIMIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, %struct.index_state*, i8*, i32*, %struct.TYPE_18__*, %struct.TYPE_19__*, i32*, i32*, i8*, i32*)* @download_files_http to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @download_files_http(i8* %0, i32 %1, i8* %2, %struct.index_state* %3, i8* %4, i32* %5, %struct.TYPE_18__* %6, %struct.TYPE_19__* %7, i32* %8, i32* %9, i8* %10, i32* %11) #0 {
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca %struct.index_state*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_18__*, align 8
  %20 = alloca %struct.TYPE_19__*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca %struct.cache_entry*, align 8
  %26 = alloca %struct.TYPE_22__*, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca %struct.TYPE_19__*, align 8
  %32 = alloca %struct.TYPE_20__*, align 8
  %33 = alloca i32, align 4
  %34 = alloca %struct.TYPE_21__, align 8
  %35 = alloca [41 x i8], align 16
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  store i8* %0, i8** %13, align 8
  store i32 %1, i32* %14, align 4
  store i8* %2, i8** %15, align 8
  store %struct.index_state* %3, %struct.index_state** %16, align 8
  store i8* %4, i8** %17, align 8
  store i32* %5, i32** %18, align 8
  store %struct.TYPE_18__* %6, %struct.TYPE_18__** %19, align 8
  store %struct.TYPE_19__* %7, %struct.TYPE_19__** %20, align 8
  store i32* %8, i32** %21, align 8
  store i32* %9, i32** %22, align 8
  store i8* %10, i8** %23, align 8
  store i32* %11, i32** %24, align 8
  store i64 0, i64* %27, align 8
  %38 = load i32, i32* @FETCH_CHECKOUT_SUCCESS, align 4
  store i32 %38, i32* %33, align 4
  %39 = call i32* (...) @g_async_queue_new()
  store i32* %39, i32** %29, align 8
  %40 = call i32 @memset(%struct.TYPE_21__* %34, i32 0, i32 48)
  %41 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %34, i32 0, i32 5
  %42 = load i32, i32* %41, align 8
  %43 = load i8*, i8** %13, align 8
  %44 = call i32 @memcpy(i32 %42, i8* %43, i32 36)
  %45 = load i32, i32* %14, align 4
  %46 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %34, i32 0, i32 0
  store i32 %45, i32* %46, align 8
  %47 = load i32*, i32** %18, align 8
  %48 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %34, i32 0, i32 4
  store i32* %47, i32** %48, align 8
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %34, i32 0, i32 3
  store %struct.TYPE_18__* %49, %struct.TYPE_18__** %50, align 8
  %51 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %34, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load i8*, i8** %23, align 8
  %54 = call i32 @memcpy(i32 %52, i8* %53, i32 40)
  %55 = load i32*, i32** %29, align 8
  %56 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %34, i32 0, i32 1
  store i32* %55, i32** %56, align 8
  %57 = load i32, i32* @fetch_file_thread_func, align 4
  %58 = load i32, i32* @DEFAULT_DOWNLOAD_THREADS, align 4
  %59 = load i32, i32* @FALSE, align 4
  %60 = call i32* @g_thread_pool_new(i32 %57, %struct.TYPE_21__* %34, i32 %58, i32 %59, i32* null)
  store i32* %60, i32** %28, align 8
  %61 = load i32, i32* @g_str_hash, align 4
  %62 = load i32, i32* @g_str_equal, align 4
  %63 = load i64, i64* @file_tx_task_free, align 8
  %64 = trunc i64 %63 to i32
  %65 = call i32* @g_hash_table_new_full(i32 %61, i32 %62, i32 (i64)* @g_free, i32 %64)
  store i32* %65, i32** %30, align 8
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  store %struct.TYPE_19__* %66, %struct.TYPE_19__** %31, align 8
  br label %67

67:                                               ; preds = %121, %12
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %31, align 8
  %69 = icmp ne %struct.TYPE_19__* %68, null
  br i1 %69, label %70, label %125

70:                                               ; preds = %67
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %31, align 8
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %72, align 8
  store %struct.TYPE_22__* %73, %struct.TYPE_22__** %26, align 8
  %74 = load %struct.TYPE_22__*, %struct.TYPE_22__** %26, align 8
  %75 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @DIFF_STATUS_DIR_ADDED, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %90

79:                                               ; preds = %70
  %80 = load i8*, i8** %13, align 8
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load i8*, i8** %15, align 8
  %85 = load %struct.index_state*, %struct.index_state** %16, align 8
  %86 = load %struct.TYPE_22__*, %struct.TYPE_22__** %26, align 8
  %87 = load i32*, i32** %21, align 8
  %88 = load i32*, i32** %22, align 8
  %89 = call i32 @handle_dir_added_de(i8* %80, i32 %83, i8* %84, %struct.index_state* %85, %struct.TYPE_22__* %86, i32* %87, i32* %88)
  br label %120

90:                                               ; preds = %70
  %91 = load %struct.TYPE_22__*, %struct.TYPE_22__** %26, align 8
  %92 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @DIFF_STATUS_ADDED, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %102, label %96

96:                                               ; preds = %90
  %97 = load %struct.TYPE_22__*, %struct.TYPE_22__** %26, align 8
  %98 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @DIFF_STATUS_MODIFIED, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %119

102:                                              ; preds = %96, %90
  %103 = load i32, i32* @FETCH_CHECKOUT_FAILED, align 4
  %104 = load i32*, i32** %28, align 8
  %105 = load i8*, i8** %13, align 8
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = load i8*, i8** %15, align 8
  %110 = load %struct.index_state*, %struct.index_state** %16, align 8
  %111 = load %struct.TYPE_22__*, %struct.TYPE_22__** %26, align 8
  %112 = load i32*, i32** %30, align 8
  %113 = load i32*, i32** %21, align 8
  %114 = load i32*, i32** %22, align 8
  %115 = call i32 @schedule_file_fetch(i32* %104, i8* %105, i32 %108, i8* %109, %struct.index_state* %110, %struct.TYPE_22__* %111, i32* %112, i32* %113, i32* %114)
  %116 = icmp eq i32 %103, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %102
  br label %121

118:                                              ; preds = %102
  br label %119

119:                                              ; preds = %118, %96
  br label %120

120:                                              ; preds = %119, %79
  br label %121

121:                                              ; preds = %120, %117
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %31, align 8
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 1
  %124 = load %struct.TYPE_19__*, %struct.TYPE_19__** %123, align 8
  store %struct.TYPE_19__* %124, %struct.TYPE_19__** %31, align 8
  br label %67

125:                                              ; preds = %67
  %126 = load i32*, i32** %30, align 8
  %127 = call i64 @g_hash_table_size(i32* %126)
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %129, label %137

129:                                              ; preds = %125
  %130 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %131 = icmp ne %struct.TYPE_19__* %130, null
  br i1 %131, label %132, label %136

132:                                              ; preds = %129
  %133 = load %struct.index_state*, %struct.index_state** %16, align 8
  %134 = load i8*, i8** %17, align 8
  %135 = call i32 @update_index(%struct.index_state* %133, i8* %134)
  br label %136

136:                                              ; preds = %132, %129
  br label %306

137:                                              ; preds = %125
  br label %138

138:                                              ; preds = %301, %137
  %139 = load i32*, i32** %29, align 8
  %140 = call %struct.TYPE_20__* @g_async_queue_pop(i32* %139)
  store %struct.TYPE_20__* %140, %struct.TYPE_20__** %32, align 8
  %141 = icmp ne %struct.TYPE_20__* %140, null
  br i1 %141, label %142, label %302

142:                                              ; preds = %138
  %143 = load %struct.TYPE_20__*, %struct.TYPE_20__** %32, align 8
  %144 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %143, i32 0, i32 1
  %145 = load %struct.cache_entry*, %struct.cache_entry** %144, align 8
  store %struct.cache_entry* %145, %struct.cache_entry** %25, align 8
  %146 = load %struct.TYPE_20__*, %struct.TYPE_20__** %32, align 8
  %147 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %146, i32 0, i32 3
  %148 = load %struct.TYPE_22__*, %struct.TYPE_22__** %147, align 8
  store %struct.TYPE_22__* %148, %struct.TYPE_22__** %26, align 8
  %149 = load %struct.TYPE_22__*, %struct.TYPE_22__** %26, align 8
  %150 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %149, i32 0, i32 1
  %151 = load i8*, i8** %150, align 8
  %152 = getelementptr inbounds [41 x i8], [41 x i8]* %35, i64 0, i64 0
  %153 = call i32 @rawdata_to_hex(i8* %151, i8* %152, i32 20)
  %154 = load %struct.TYPE_20__*, %struct.TYPE_20__** %32, align 8
  %155 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @FETCH_CHECKOUT_CANCELED, align 4
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %165, label %159

159:                                              ; preds = %142
  %160 = load %struct.TYPE_20__*, %struct.TYPE_20__** %32, align 8
  %161 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @FETCH_CHECKOUT_TRANSFER_ERROR, align 4
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %165, label %182

165:                                              ; preds = %159, %142
  %166 = load %struct.TYPE_20__*, %struct.TYPE_20__** %32, align 8
  %167 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  store i32 %168, i32* %33, align 4
  %169 = load %struct.TYPE_20__*, %struct.TYPE_20__** %32, align 8
  %170 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %169, i32 0, i32 2
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %178

173:                                              ; preds = %165
  %174 = load %struct.TYPE_20__*, %struct.TYPE_20__** %32, align 8
  %175 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %174, i32 0, i32 1
  %176 = load %struct.cache_entry*, %struct.cache_entry** %175, align 8
  %177 = call i32 @cache_entry_free(%struct.cache_entry* %176)
  br label %178

178:                                              ; preds = %173, %165
  %179 = load i32, i32* @TRUE, align 4
  %180 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %181 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %180, i32 0, i32 1
  store i32 %179, i32* %181, align 4
  br label %306

182:                                              ; preds = %159
  %183 = load %struct.TYPE_20__*, %struct.TYPE_20__** %32, align 8
  %184 = load i8*, i8** %15, align 8
  %185 = load i32*, i32** %21, align 8
  %186 = load i32*, i32** %22, align 8
  %187 = load i8*, i8** %23, align 8
  %188 = load i32*, i32** %24, align 8
  %189 = call i32 @checkout_file_http(%struct.TYPE_21__* %34, %struct.TYPE_20__* %183, i8* %184, i32* %185, i32* %186, i8* %187, i32* %188)
  store i32 %189, i32* %36, align 4
  %190 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %191 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %215, label %194

194:                                              ; preds = %182
  %195 = load i32, i32* %36, align 4
  %196 = load i32, i32* @FETCH_CHECKOUT_FAILED, align 4
  %197 = icmp eq i32 %195, %196
  br i1 %197, label %198, label %200

198:                                              ; preds = %194
  %199 = load i32, i32* @SYNC_STATUS_ERROR, align 4
  store i32 %199, i32* %37, align 4
  br label %202

200:                                              ; preds = %194
  %201 = load i32, i32* @SYNC_STATUS_SYNCED, align 4
  store i32 %201, i32* %37, align 4
  br label %202

202:                                              ; preds = %200, %198
  %203 = load %struct.TYPE_23__*, %struct.TYPE_23__** @seaf, align 8
  %204 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = load i8*, i8** %13, align 8
  %207 = load %struct.TYPE_22__*, %struct.TYPE_22__** %26, align 8
  %208 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %207, i32 0, i32 3
  %209 = load i32, i32* %208, align 8
  %210 = load %struct.TYPE_22__*, %struct.TYPE_22__** %26, align 8
  %211 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %210, i32 0, i32 4
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* %37, align 4
  %214 = call i32 @seaf_sync_manager_update_active_path(i32 %205, i8* %206, i32 %209, i32 %212, i32 %213)
  br label %215

215:                                              ; preds = %202, %182
  %216 = load %struct.TYPE_20__*, %struct.TYPE_20__** %32, align 8
  %217 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %216, i32 0, i32 2
  %218 = load i64, i64* %217, align 8
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %237

220:                                              ; preds = %215
  %221 = load %struct.cache_entry*, %struct.cache_entry** %25, align 8
  %222 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = load i32, i32* @CE_REMOVE, align 4
  %225 = and i32 %223, %224
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %236, label %227

227:                                              ; preds = %220
  %228 = load %struct.index_state*, %struct.index_state** %16, align 8
  %229 = load %struct.TYPE_20__*, %struct.TYPE_20__** %32, align 8
  %230 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %229, i32 0, i32 1
  %231 = load %struct.cache_entry*, %struct.cache_entry** %230, align 8
  %232 = load i32, i32* @ADD_CACHE_OK_TO_ADD, align 4
  %233 = load i32, i32* @ADD_CACHE_OK_TO_REPLACE, align 4
  %234 = or i32 %232, %233
  %235 = call i32 @add_index_entry(%struct.index_state* %228, %struct.cache_entry* %231, i32 %234)
  br label %236

236:                                              ; preds = %227, %220
  br label %278

237:                                              ; preds = %215
  %238 = load %struct.TYPE_22__*, %struct.TYPE_22__** %26, align 8
  %239 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %238, i32 0, i32 6
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.cache_entry*, %struct.cache_entry** %25, align 8
  %242 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %241, i32 0, i32 5
  %243 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %242, i32 0, i32 0
  store i32 %240, i32* %243, align 4
  %244 = load %struct.TYPE_22__*, %struct.TYPE_22__** %26, align 8
  %245 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %244, i32 0, i32 2
  %246 = load i64, i64* %245, align 8
  %247 = load %struct.cache_entry*, %struct.cache_entry** %25, align 8
  %248 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %247, i32 0, i32 1
  store i64 %246, i64* %248, align 8
  %249 = load %struct.cache_entry*, %struct.cache_entry** %25, align 8
  %250 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %249, i32 0, i32 4
  %251 = load i32, i32* %250, align 8
  %252 = load %struct.TYPE_22__*, %struct.TYPE_22__** %26, align 8
  %253 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %252, i32 0, i32 1
  %254 = load i8*, i8** %253, align 8
  %255 = call i32 @memcpy(i32 %251, i8* %254, i32 20)
  %256 = load %struct.cache_entry*, %struct.cache_entry** %25, align 8
  %257 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %256, i32 0, i32 3
  %258 = load i64, i64* %257, align 8
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %265

260:                                              ; preds = %237
  %261 = load %struct.cache_entry*, %struct.cache_entry** %25, align 8
  %262 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %261, i32 0, i32 3
  %263 = load i64, i64* %262, align 8
  %264 = call i32 @g_free(i64 %263)
  br label %265

265:                                              ; preds = %260, %237
  %266 = load %struct.TYPE_22__*, %struct.TYPE_22__** %26, align 8
  %267 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %266, i32 0, i32 5
  %268 = load i32, i32* %267, align 8
  %269 = call i64 @g_strdup(i32 %268)
  %270 = load %struct.cache_entry*, %struct.cache_entry** %25, align 8
  %271 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %270, i32 0, i32 3
  store i64 %269, i64* %271, align 8
  %272 = load %struct.TYPE_22__*, %struct.TYPE_22__** %26, align 8
  %273 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %272, i32 0, i32 4
  %274 = load i32, i32* %273, align 4
  %275 = call i32 @create_ce_mode(i32 %274)
  %276 = load %struct.cache_entry*, %struct.cache_entry** %25, align 8
  %277 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %276, i32 0, i32 2
  store i32 %275, i32* %277, align 8
  br label %278

278:                                              ; preds = %265, %236
  %279 = load i32*, i32** %30, align 8
  %280 = load %struct.TYPE_22__*, %struct.TYPE_22__** %26, align 8
  %281 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %280, i32 0, i32 3
  %282 = load i32, i32* %281, align 8
  %283 = call i32 @g_hash_table_remove(i32* %279, i32 %282)
  %284 = load i32*, i32** %30, align 8
  %285 = call i64 @g_hash_table_size(i32* %284)
  %286 = icmp eq i64 %285, 0
  br i1 %286, label %287, label %288

287:                                              ; preds = %278
  br label %302

288:                                              ; preds = %278
  %289 = load %struct.cache_entry*, %struct.cache_entry** %25, align 8
  %290 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %289, i32 0, i32 1
  %291 = load i64, i64* %290, align 8
  %292 = load i64, i64* %27, align 8
  %293 = add nsw i64 %292, %291
  store i64 %293, i64* %27, align 8
  %294 = load i64, i64* %27, align 8
  %295 = load i64, i64* @UPDATE_CACHE_SIZE_LIMIT, align 8
  %296 = icmp sge i64 %294, %295
  br i1 %296, label %297, label %301

297:                                              ; preds = %288
  %298 = load %struct.index_state*, %struct.index_state** %16, align 8
  %299 = load i8*, i8** %17, align 8
  %300 = call i32 @update_index(%struct.index_state* %298, i8* %299)
  store i64 0, i64* %27, align 8
  br label %301

301:                                              ; preds = %297, %288
  br label %138

302:                                              ; preds = %287, %138
  %303 = load %struct.index_state*, %struct.index_state** %16, align 8
  %304 = load i8*, i8** %17, align 8
  %305 = call i32 @update_index(%struct.index_state* %303, i8* %304)
  br label %306

306:                                              ; preds = %302, %178, %136
  %307 = load i32*, i32** %28, align 8
  %308 = load i32, i32* @TRUE, align 4
  %309 = load i32, i32* @TRUE, align 4
  %310 = call i32 @g_thread_pool_free(i32* %307, i32 %308, i32 %309)
  %311 = load i32*, i32** %30, align 8
  %312 = call i32 @g_hash_table_destroy(i32* %311)
  %313 = load i32*, i32** %29, align 8
  %314 = call i32 @g_async_queue_unref(i32* %313)
  %315 = load i32, i32* %33, align 4
  ret i32 %315
}

declare dso_local i32* @g_async_queue_new(...) #1

declare dso_local i32 @memset(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32* @g_thread_pool_new(i32, %struct.TYPE_21__*, i32, i32, i32*) #1

declare dso_local i32* @g_hash_table_new_full(i32, i32, i32 (i64)*, i32) #1

declare dso_local i32 @g_free(i64) #1

declare dso_local i32 @handle_dir_added_de(i8*, i32, i8*, %struct.index_state*, %struct.TYPE_22__*, i32*, i32*) #1

declare dso_local i32 @schedule_file_fetch(i32*, i8*, i32, i8*, %struct.index_state*, %struct.TYPE_22__*, i32*, i32*, i32*) #1

declare dso_local i64 @g_hash_table_size(i32*) #1

declare dso_local i32 @update_index(%struct.index_state*, i8*) #1

declare dso_local %struct.TYPE_20__* @g_async_queue_pop(i32*) #1

declare dso_local i32 @rawdata_to_hex(i8*, i8*, i32) #1

declare dso_local i32 @cache_entry_free(%struct.cache_entry*) #1

declare dso_local i32 @checkout_file_http(%struct.TYPE_21__*, %struct.TYPE_20__*, i8*, i32*, i32*, i8*, i32*) #1

declare dso_local i32 @seaf_sync_manager_update_active_path(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @add_index_entry(%struct.index_state*, %struct.cache_entry*, i32) #1

declare dso_local i64 @g_strdup(i32) #1

declare dso_local i32 @create_ce_mode(i32) #1

declare dso_local i32 @g_hash_table_remove(i32*, i32) #1

declare dso_local i32 @g_thread_pool_free(i32*, i32, i32) #1

declare dso_local i32 @g_hash_table_destroy(i32*) #1

declare dso_local i32 @g_async_queue_unref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
