; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_http-tx-mgr.c_http_upload_thread.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_http-tx-mgr.c_http_upload_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32* }
%struct.TYPE_23__ = type { i64, i32, i32, i32, i32, i8*, i32 }
%struct.TYPE_22__ = type { i32 }

@seaf = common dso_local global %struct.TYPE_20__* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"local\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Failed to get branch local of repo %.8s.\0A\00", align 1
@SYNC_ERROR_ID_LOCAL_DATA_CORRUPT = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [47 x i8] c"Failed to create connection pool for host %s.\0A\00", align 1
@SYNC_ERROR_ID_NOT_ENOUGH_MEMORY = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [38 x i8] c"Failed to get connection to host %s.\0A\00", align 1
@HTTP_TASK_RT_STATE_CHECK = common dso_local global i32 0, align 4
@g_str_hash = common dso_local global i32 0, align 4
@g_str_equal = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [52 x i8] c"Failed to calculate upload size delta for repo %s.\0A\00", align 1
@set_path_status_syncing = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [54 x i8] c"Upload permission denied for repo %.8s on server %s.\0A\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"Not enough quota for repo %.8s on server %s.\0A\00", align 1
@HTTP_TASK_STATE_CANCELED = common dso_local global i64 0, align 8
@HTTP_TASK_RT_STATE_COMMIT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [43 x i8] c"Failed to send head commit for repo %.8s.\0A\00", align 1
@HTTP_TASK_RT_STATE_FS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [51 x i8] c"Failed to calculate fs object list for repo %.8s.\0A\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"%s/seafhttp/repo/%s/check-fs/\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"%s/repo/%s/check-fs/\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"Failed to check fs list for repo %.8s.\0A\00", align 1
@.str.12 = private unnamed_addr constant [42 x i8] c"Failed to send fs objects for repo %.8s.\0A\00", align 1
@HTTP_TASK_RT_STATE_BLOCK = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [47 x i8] c"Failed to calculate block list for repo %.8s.\0A\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"%s/seafhttp/repo/%s/check-blocks/\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"%s/repo/%s/check-blocks/\00", align 1
@.str.16 = private unnamed_addr constant [43 x i8] c"Failed to check block list for repo %.8s.\0A\00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"%d blocks to send for %s:%s.\0A\00", align 1
@HTTP_TASK_RT_STATE_UPDATE_BRANCH = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [39 x i8] c"Failed to update branch of repo %.8s.\0A\00", align 1
@set_path_status_synced = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @http_upload_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @http_upload_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_22__*, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %16 = load i8*, i8** %3, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %17, %struct.TYPE_23__** %4, align 8
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** @seaf, align 8
  %19 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %5, align 8
  store i32* null, i32** %7, align 8
  store i8* null, i8** %8, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** @seaf, align 8
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call %struct.TYPE_22__* @seaf_branch_manager_get_branch(i32 %25, i32 %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_22__* %29, %struct.TYPE_22__** %14, align 8
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %31 = icmp ne %struct.TYPE_22__* %30, null
  br i1 %31, label %40, label %32

32:                                               ; preds = %1
  %33 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 (i8*, i32, ...) @seaf_warning(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load i8*, i8** @SYNC_ERROR_ID_LOCAL_DATA_CORRUPT, align 8
  %38 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %38, i32 0, i32 5
  store i8* %37, i8** %39, align 8
  store i8* null, i8** %2, align 8
  br label %386

40:                                               ; preds = %1
  %41 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %45 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @memcpy(i32 %43, i32 %46, i32 40)
  %48 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %49 = call i32 @seaf_branch_unref(%struct.TYPE_22__* %48)
  %50 = load i32*, i32** %5, align 8
  %51 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32* @find_connection_pool(i32* %50, i32 %53)
  store i32* %54, i32** %6, align 8
  %55 = load i32*, i32** %6, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %65, label %57

57:                                               ; preds = %40
  %58 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 (i8*, i32, ...) @seaf_warning(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  %62 = load i8*, i8** @SYNC_ERROR_ID_NOT_ENOUGH_MEMORY, align 8
  %63 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %63, i32 0, i32 5
  store i8* %62, i8** %64, align 8
  br label %365

65:                                               ; preds = %40
  %66 = load i32*, i32** %6, align 8
  %67 = call i32* @connection_pool_get_connection(i32* %66)
  store i32* %67, i32** %7, align 8
  %68 = load i32*, i32** %7, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %78, label %70

70:                                               ; preds = %65
  %71 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = call i32 (i8*, i32, ...) @seaf_warning(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %73)
  %75 = load i8*, i8** @SYNC_ERROR_ID_NOT_ENOUGH_MEMORY, align 8
  %76 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %76, i32 0, i32 5
  store i8* %75, i8** %77, align 8
  br label %365

78:                                               ; preds = %65
  %79 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %80 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i32, i32* @HTTP_TASK_RT_STATE_CHECK, align 4
  %84 = call i32 @transition_state(%struct.TYPE_23__* %79, i64 %82, i32 %83)
  store i32 0, i32* %15, align 4
  %85 = load i32, i32* @g_str_hash, align 4
  %86 = load i32, i32* @g_str_equal, align 4
  %87 = call i32* @g_hash_table_new_full(i32 %85, i32 %86, i32 (i8*)* @g_free, i32* null)
  store i32* %87, i32** %13, align 8
  %88 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %89 = load i32*, i32** %13, align 8
  %90 = call i64 @calculate_upload_size_delta_and_active_paths(%struct.TYPE_23__* %88, i32* %15, i32* %89)
  %91 = icmp slt i64 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %78
  %93 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = call i32 (i8*, i32, ...) @seaf_warning(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0), i32 %95)
  %97 = load i8*, i8** @SYNC_ERROR_ID_LOCAL_DATA_CORRUPT, align 8
  %98 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %98, i32 0, i32 5
  store i8* %97, i8** %99, align 8
  br label %365

100:                                              ; preds = %78
  %101 = load i32*, i32** %13, align 8
  %102 = load i32, i32* @set_path_status_syncing, align 4
  %103 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %104 = call i32 @g_hash_table_foreach(i32* %101, i32 %102, %struct.TYPE_23__* %103)
  %105 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %106 = load i32*, i32** %7, align 8
  %107 = call i64 @check_permission(%struct.TYPE_23__* %105, i32* %106)
  %108 = icmp slt i64 %107, 0
  br i1 %108, label %109, label %117

109:                                              ; preds = %100
  %110 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = call i32 (i8*, i32, ...) @seaf_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 %112, i32 %115)
  br label %365

117:                                              ; preds = %100
  %118 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %119 = load i32*, i32** %7, align 8
  %120 = load i32, i32* %15, align 4
  %121 = call i64 @check_quota(%struct.TYPE_23__* %118, i32* %119, i32 %120)
  %122 = icmp slt i64 %121, 0
  br i1 %122, label %123, label %131

123:                                              ; preds = %117
  %124 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = call i32 (i8*, i32, ...) @seaf_warning(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0), i32 %126, i32 %129)
  br label %365

131:                                              ; preds = %117
  %132 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @HTTP_TASK_STATE_CANCELED, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %131
  br label %365

138:                                              ; preds = %131
  %139 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %140 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i32, i32* @HTTP_TASK_RT_STATE_COMMIT, align 4
  %144 = call i32 @transition_state(%struct.TYPE_23__* %139, i64 %142, i32 %143)
  %145 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %146 = load i32*, i32** %7, align 8
  %147 = call i64 @send_commit_object(%struct.TYPE_23__* %145, i32* %146)
  %148 = icmp slt i64 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %138
  %150 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = call i32 (i8*, i32, ...) @seaf_warning(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0), i32 %152)
  br label %365

154:                                              ; preds = %138
  %155 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @HTTP_TASK_STATE_CANCELED, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %161

160:                                              ; preds = %154
  br label %365

161:                                              ; preds = %154
  %162 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %163 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load i32, i32* @HTTP_TASK_RT_STATE_FS, align 4
  %167 = call i32 @transition_state(%struct.TYPE_23__* %162, i64 %165, i32 %166)
  %168 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %169 = call i32* @calculate_send_fs_object_list(%struct.TYPE_23__* %168)
  store i32* %169, i32** %9, align 8
  %170 = load i32*, i32** %9, align 8
  %171 = icmp ne i32* %170, null
  br i1 %171, label %180, label %172

172:                                              ; preds = %161
  %173 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = call i32 (i8*, i32, ...) @seaf_warning(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.8, i64 0, i64 0), i32 %175)
  %177 = load i8*, i8** @SYNC_ERROR_ID_LOCAL_DATA_CORRUPT, align 8
  %178 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %178, i32 0, i32 5
  store i8* %177, i8** %179, align 8
  br label %365

180:                                              ; preds = %161
  %181 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %181, i32 0, i32 4
  %183 = load i32, i32* %182, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %193, label %185

185:                                              ; preds = %180
  %186 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %187 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 8
  %192 = call i8* @g_strdup_printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i32 %188, i32 %191)
  store i8* %192, i8** %8, align 8
  br label %201

193:                                              ; preds = %180
  %194 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 8
  %200 = call i8* @g_strdup_printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i32 %196, i32 %199)
  store i8* %200, i8** %8, align 8
  br label %201

201:                                              ; preds = %193, %185
  br label %202

202:                                              ; preds = %223, %201
  %203 = load i32*, i32** %9, align 8
  %204 = icmp ne i32* %203, null
  br i1 %204, label %205, label %224

205:                                              ; preds = %202
  %206 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %207 = load i32*, i32** %7, align 8
  %208 = load i8*, i8** %8, align 8
  %209 = call i64 @upload_check_id_list_segment(%struct.TYPE_23__* %206, i32* %207, i8* %208, i32** %9, i32** %10)
  %210 = icmp slt i64 %209, 0
  br i1 %210, label %211, label %216

211:                                              ; preds = %205
  %212 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 8
  %215 = call i32 (i8*, i32, ...) @seaf_warning(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0), i32 %214)
  br label %365

216:                                              ; preds = %205
  %217 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %218 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = load i64, i64* @HTTP_TASK_STATE_CANCELED, align 8
  %221 = icmp eq i64 %219, %220
  br i1 %221, label %222, label %223

222:                                              ; preds = %216
  br label %365

223:                                              ; preds = %216
  br label %202

224:                                              ; preds = %202
  %225 = load i8*, i8** %8, align 8
  %226 = call i32 @g_free(i8* %225)
  store i8* null, i8** %8, align 8
  br label %227

227:                                              ; preds = %247, %224
  %228 = load i32*, i32** %10, align 8
  %229 = icmp ne i32* %228, null
  br i1 %229, label %230, label %248

230:                                              ; preds = %227
  %231 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %232 = load i32*, i32** %7, align 8
  %233 = call i64 @send_fs_objects(%struct.TYPE_23__* %231, i32* %232, i32** %10)
  %234 = icmp slt i64 %233, 0
  br i1 %234, label %235, label %240

235:                                              ; preds = %230
  %236 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %237 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 8
  %239 = call i32 (i8*, i32, ...) @seaf_warning(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.12, i64 0, i64 0), i32 %238)
  br label %365

240:                                              ; preds = %230
  %241 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %242 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = load i64, i64* @HTTP_TASK_STATE_CANCELED, align 8
  %245 = icmp eq i64 %243, %244
  br i1 %245, label %246, label %247

246:                                              ; preds = %240
  br label %365

247:                                              ; preds = %240
  br label %227

248:                                              ; preds = %227
  %249 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %250 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %251 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %250, i32 0, i32 0
  %252 = load i64, i64* %251, align 8
  %253 = load i32, i32* @HTTP_TASK_RT_STATE_BLOCK, align 4
  %254 = call i32 @transition_state(%struct.TYPE_23__* %249, i64 %252, i32 %253)
  %255 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %256 = call i64 @calculate_block_list(%struct.TYPE_23__* %255, i32** %11)
  %257 = icmp slt i64 %256, 0
  br i1 %257, label %258, label %266

258:                                              ; preds = %248
  %259 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %260 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 8
  %262 = call i32 (i8*, i32, ...) @seaf_warning(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.13, i64 0, i64 0), i32 %261)
  %263 = load i8*, i8** @SYNC_ERROR_ID_LOCAL_DATA_CORRUPT, align 8
  %264 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %265 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %264, i32 0, i32 5
  store i8* %263, i8** %265, align 8
  br label %365

266:                                              ; preds = %248
  %267 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %268 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %267, i32 0, i32 4
  %269 = load i32, i32* %268, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %279, label %271

271:                                              ; preds = %266
  %272 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %273 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %272, i32 0, i32 2
  %274 = load i32, i32* %273, align 4
  %275 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %276 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 8
  %278 = call i8* @g_strdup_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i64 0, i64 0), i32 %274, i32 %277)
  store i8* %278, i8** %8, align 8
  br label %287

279:                                              ; preds = %266
  %280 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %281 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %280, i32 0, i32 2
  %282 = load i32, i32* %281, align 4
  %283 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %284 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 8
  %286 = call i8* @g_strdup_printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0), i32 %282, i32 %285)
  store i8* %286, i8** %8, align 8
  br label %287

287:                                              ; preds = %279, %271
  br label %288

288:                                              ; preds = %309, %287
  %289 = load i32*, i32** %11, align 8
  %290 = icmp ne i32* %289, null
  br i1 %290, label %291, label %310

291:                                              ; preds = %288
  %292 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %293 = load i32*, i32** %7, align 8
  %294 = load i8*, i8** %8, align 8
  %295 = call i64 @upload_check_id_list_segment(%struct.TYPE_23__* %292, i32* %293, i8* %294, i32** %11, i32** %12)
  %296 = icmp slt i64 %295, 0
  br i1 %296, label %297, label %302

297:                                              ; preds = %291
  %298 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %299 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %298, i32 0, i32 1
  %300 = load i32, i32* %299, align 8
  %301 = call i32 (i8*, i32, ...) @seaf_warning(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.16, i64 0, i64 0), i32 %300)
  br label %365

302:                                              ; preds = %291
  %303 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %304 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %303, i32 0, i32 0
  %305 = load i64, i64* %304, align 8
  %306 = load i64, i64* @HTTP_TASK_STATE_CANCELED, align 8
  %307 = icmp eq i64 %305, %306
  br i1 %307, label %308, label %309

308:                                              ; preds = %302
  br label %365

309:                                              ; preds = %302
  br label %288

310:                                              ; preds = %288
  %311 = load i8*, i8** %8, align 8
  %312 = call i32 @g_free(i8* %311)
  store i8* null, i8** %8, align 8
  %313 = load i32*, i32** %12, align 8
  %314 = call i32 @g_list_length(i32* %313)
  %315 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %316 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %315, i32 0, i32 3
  store i32 %314, i32* %316, align 8
  %317 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %318 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %317, i32 0, i32 3
  %319 = load i32, i32* %318, align 8
  %320 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %321 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %320, i32 0, i32 2
  %322 = load i32, i32* %321, align 4
  %323 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %324 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %323, i32 0, i32 1
  %325 = load i32, i32* %324, align 8
  %326 = call i32 @seaf_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.17, i64 0, i64 0), i32 %319, i32 %322, i32 %325)
  %327 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %328 = load i32*, i32** %12, align 8
  %329 = call i64 @multi_threaded_send_blocks(%struct.TYPE_23__* %327, i32* %328)
  %330 = icmp slt i64 %329, 0
  br i1 %330, label %337, label %331

331:                                              ; preds = %310
  %332 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %333 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %332, i32 0, i32 0
  %334 = load i64, i64* %333, align 8
  %335 = load i64, i64* @HTTP_TASK_STATE_CANCELED, align 8
  %336 = icmp eq i64 %334, %335
  br i1 %336, label %337, label %338

337:                                              ; preds = %331, %310
  br label %365

338:                                              ; preds = %331
  %339 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %340 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %341 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %340, i32 0, i32 0
  %342 = load i64, i64* %341, align 8
  %343 = load i32, i32* @HTTP_TASK_RT_STATE_UPDATE_BRANCH, align 4
  %344 = call i32 @transition_state(%struct.TYPE_23__* %339, i64 %342, i32 %343)
  %345 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %346 = load i32*, i32** %7, align 8
  %347 = call i64 @update_branch(%struct.TYPE_23__* %345, i32* %346)
  %348 = icmp slt i64 %347, 0
  br i1 %348, label %349, label %354

349:                                              ; preds = %338
  %350 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %351 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %350, i32 0, i32 1
  %352 = load i32, i32* %351, align 8
  %353 = call i32 (i8*, i32, ...) @seaf_warning(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18, i64 0, i64 0), i32 %352)
  br label %365

354:                                              ; preds = %338
  %355 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %356 = call i32 @update_master_branch(%struct.TYPE_23__* %355)
  %357 = load i32*, i32** %13, align 8
  %358 = icmp ne i32* %357, null
  br i1 %358, label %359, label %364

359:                                              ; preds = %354
  %360 = load i32*, i32** %13, align 8
  %361 = load i32, i32* @set_path_status_synced, align 4
  %362 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %363 = call i32 @g_hash_table_foreach(i32* %360, i32 %361, %struct.TYPE_23__* %362)
  br label %364

364:                                              ; preds = %359, %354
  br label %365

365:                                              ; preds = %364, %349, %337, %308, %297, %258, %246, %235, %222, %211, %172, %160, %149, %137, %123, %109, %92, %70, %57
  %366 = load i32*, i32** %9, align 8
  %367 = call i32 @string_list_free(i32* %366)
  %368 = load i32*, i32** %10, align 8
  %369 = call i32 @string_list_free(i32* %368)
  %370 = load i32*, i32** %11, align 8
  %371 = call i32 @string_list_free(i32* %370)
  %372 = load i32*, i32** %12, align 8
  %373 = call i32 @string_list_free(i32* %372)
  %374 = load i32*, i32** %13, align 8
  %375 = icmp ne i32* %374, null
  br i1 %375, label %376, label %379

376:                                              ; preds = %365
  %377 = load i32*, i32** %13, align 8
  %378 = call i32 @g_hash_table_destroy(i32* %377)
  br label %379

379:                                              ; preds = %376, %365
  %380 = load i8*, i8** %8, align 8
  %381 = call i32 @g_free(i8* %380)
  %382 = load i32*, i32** %6, align 8
  %383 = load i32*, i32** %7, align 8
  %384 = call i32 @connection_pool_return_connection(i32* %382, i32* %383)
  %385 = load i8*, i8** %3, align 8
  store i8* %385, i8** %2, align 8
  br label %386

386:                                              ; preds = %379, %32
  %387 = load i8*, i8** %2, align 8
  ret i8* %387
}

declare dso_local %struct.TYPE_22__* @seaf_branch_manager_get_branch(i32, i32, i8*) #1

declare dso_local i32 @seaf_warning(i8*, i32, ...) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @seaf_branch_unref(%struct.TYPE_22__*) #1

declare dso_local i32* @find_connection_pool(i32*, i32) #1

declare dso_local i32* @connection_pool_get_connection(i32*) #1

declare dso_local i32 @transition_state(%struct.TYPE_23__*, i64, i32) #1

declare dso_local i32* @g_hash_table_new_full(i32, i32, i32 (i8*)*, i32*) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i64 @calculate_upload_size_delta_and_active_paths(%struct.TYPE_23__*, i32*, i32*) #1

declare dso_local i32 @g_hash_table_foreach(i32*, i32, %struct.TYPE_23__*) #1

declare dso_local i64 @check_permission(%struct.TYPE_23__*, i32*) #1

declare dso_local i64 @check_quota(%struct.TYPE_23__*, i32*, i32) #1

declare dso_local i64 @send_commit_object(%struct.TYPE_23__*, i32*) #1

declare dso_local i32* @calculate_send_fs_object_list(%struct.TYPE_23__*) #1

declare dso_local i8* @g_strdup_printf(i8*, i32, i32) #1

declare dso_local i64 @upload_check_id_list_segment(%struct.TYPE_23__*, i32*, i8*, i32**, i32**) #1

declare dso_local i64 @send_fs_objects(%struct.TYPE_23__*, i32*, i32**) #1

declare dso_local i64 @calculate_block_list(%struct.TYPE_23__*, i32**) #1

declare dso_local i32 @g_list_length(i32*) #1

declare dso_local i32 @seaf_debug(i8*, i32, i32, i32) #1

declare dso_local i64 @multi_threaded_send_blocks(%struct.TYPE_23__*, i32*) #1

declare dso_local i64 @update_branch(%struct.TYPE_23__*, i32*) #1

declare dso_local i32 @update_master_branch(%struct.TYPE_23__*) #1

declare dso_local i32 @string_list_free(i32*) #1

declare dso_local i32 @g_hash_table_destroy(i32*) #1

declare dso_local i32 @connection_pool_return_connection(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
