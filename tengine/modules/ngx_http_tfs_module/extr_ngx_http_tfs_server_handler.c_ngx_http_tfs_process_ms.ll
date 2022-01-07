; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_server_handler.c_ngx_http_tfs_process_ms.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_server_handler.c_ngx_http_tfs_process_ms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_38__ = type { i32, i64, i32, i64, i64, i32, %struct.TYPE_34__, %struct.TYPE_36__, %struct.TYPE_31__, i32, %struct.TYPE_28__*, i32, i32*, i32, %struct.TYPE_29__, %struct.TYPE_30__, i32*, %struct.TYPE_26__*, %struct.TYPE_32__, i64*, %struct.TYPE_33__, %struct.TYPE_35__*, %struct.TYPE_40__*, i64 }
%struct.TYPE_34__ = type { i32 }
%struct.TYPE_36__ = type { %struct.TYPE_37__, i32, i32, i32, i64 }
%struct.TYPE_37__ = type { i32 }
%struct.TYPE_31__ = type { i64, i32, i32 }
%struct.TYPE_28__ = type { %struct.TYPE_41__* }
%struct.TYPE_41__ = type { %struct.TYPE_39__* }
%struct.TYPE_39__ = type { i64 }
%struct.TYPE_29__ = type { i64 }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_26__ = type { %struct.TYPE_26__* }
%struct.TYPE_32__ = type { i32 }
%struct.TYPE_33__ = type { i64 }
%struct.TYPE_35__ = type { i32 }
%struct.TYPE_40__ = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_25__ = type { i64 }

@NGX_AGAIN = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_HTTP_TFS_EXIT_LEASE_EXPIRED = common dso_local global i64 0, align 8
@NGX_HTTP_TFS_EXIT_TABLE_VERSION_ERROR = common dso_local global i64 0, align 8
@NGX_HTTP_TFS_STATE_ACTION_GET_META_TABLE = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_ROOT_SERVER = common dso_local global i64 0, align 8
@NGX_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"need update meta table, rc: %i\00", align 1
@NGX_OK = common dso_local global i64 0, align 8
@NGX_HTTP_TFS_EXIT_PARENT_EXIST_ERROR = common dso_local global i64 0, align 8
@NGX_HTTP_TFS_EXIT_TARGET_EXIST_ERROR = common dso_local global i64 0, align 8
@NGX_DECLINED = common dso_local global i64 0, align 8
@NGX_HTTP_TFS_STATE_ACTION_DONE = common dso_local global i8* null, align 8
@NGX_DONE = common dso_local global i64 0, align 8
@NGX_HTTP_TFS_STATE_REMOVE_GET_BLK_INFO = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_STATE_REMOVE_DONE = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_NO = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_STATE_READ_DONE = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_STATE_READ_GET_BLK_INFO = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_STATE_WRITE_CLUSTER_ID_NS = common dso_local global i64 0, align 8
@NGX_HTTP_TFS_STATE_WRITE_DONE = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_STATE_WRITE_GET_BLK_INFO = common dso_local global i8* null, align 8
@NGX_HTTP_TFS_EXIT_SERVER_OBJECT_NOT_FOUND = common dso_local global i64 0, align 8
@NGX_HTTP_TFS_NAME_SERVER = common dso_local global i64 0, align 8
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"error, cluster id conflict: %uD(ns) <> %uD(ms)\00", align 1
@NGX_HTTP_TFS_LOCAL_BLOCK_CACHE = common dso_local global i32 0, align 4
@ngx_http_tfs_batch_lookup_block_cache = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ngx_http_tfs_process_ms(%struct.TYPE_38__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_38__*, align 8
  %4 = alloca %struct.TYPE_27__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_26__*, align 8
  %9 = alloca %struct.TYPE_26__**, align 8
  %10 = alloca %struct.TYPE_25__*, align 8
  %11 = alloca %struct.TYPE_40__*, align 8
  %12 = alloca %struct.TYPE_41__*, align 8
  %13 = alloca %struct.TYPE_39__*, align 8
  store %struct.TYPE_38__* %0, %struct.TYPE_38__** %3, align 8
  %14 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %14, i32 0, i32 23
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.TYPE_25__*
  store %struct.TYPE_25__* %17, %struct.TYPE_25__** %10, align 8
  %18 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %18, i32 0, i32 22
  %20 = load %struct.TYPE_40__*, %struct.TYPE_40__** %19, align 8
  store %struct.TYPE_40__* %20, %struct.TYPE_40__** %11, align 8
  %21 = load %struct.TYPE_40__*, %struct.TYPE_40__** %11, align 8
  %22 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %21, i32 0, i32 0
  store %struct.TYPE_27__* %22, %struct.TYPE_27__** %4, align 8
  %23 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %24 = call i64 @ngx_buf_size(%struct.TYPE_27__* %23)
  %25 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp slt i64 %24, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %1
  %30 = load i64, i64* @NGX_AGAIN, align 8
  store i64 %30, i64* %2, align 8
  br label %574

31:                                               ; preds = %1
  %32 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %33 = call i64 @ngx_http_tfs_meta_server_parse_message(%struct.TYPE_38__* %32)
  store i64 %33, i64* %5, align 8
  %34 = load i64, i64* %5, align 8
  %35 = load i64, i64* @NGX_ERROR, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i64, i64* @NGX_ERROR, align 8
  store i64 %38, i64* %2, align 8
  br label %574

39:                                               ; preds = %31
  %40 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %46, %42
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %44, align 4
  %49 = load i64, i64* %5, align 8
  %50 = load i64, i64* @NGX_HTTP_TFS_EXIT_LEASE_EXPIRED, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %56, label %52

52:                                               ; preds = %39
  %53 = load i64, i64* %5, align 8
  %54 = load i64, i64* @NGX_HTTP_TFS_EXIT_TABLE_VERSION_ERROR, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %82

56:                                               ; preds = %52, %39
  %57 = load i32, i32* @NGX_HTTP_TFS_STATE_ACTION_GET_META_TABLE, align 4
  %58 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %61 = call i32 @ngx_http_tfs_clear_buf(%struct.TYPE_27__* %60)
  %62 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %62, i32 0, i32 13
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %65, i32 0, i32 12
  %67 = load i32*, i32** %66, align 8
  %68 = load i64, i64* @NGX_HTTP_TFS_ROOT_SERVER, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  %70 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %70, i32 0, i32 21
  %72 = load %struct.TYPE_35__*, %struct.TYPE_35__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %72, i32 0, i32 0
  %74 = call i32 @ngx_http_tfs_peer_set_addr(i32 %64, i32* %69, i32* %73)
  %75 = load i32, i32* @NGX_LOG_DEBUG, align 4
  %76 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %76, i32 0, i32 9
  %78 = load i32, i32* %77, align 8
  %79 = load i64, i64* %5, align 8
  %80 = call i32 (i32, i32, i32, i8*, i64, ...) @ngx_log_error(i32 %75, i32 %78, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %79)
  %81 = load i64, i64* @NGX_OK, align 8
  store i64 %81, i64* %2, align 8
  br label %574

82:                                               ; preds = %52
  %83 = load i64, i64* %5, align 8
  %84 = load i64, i64* @NGX_HTTP_TFS_EXIT_PARENT_EXIST_ERROR, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %174

86:                                               ; preds = %82
  %87 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %87, i32 0, i32 7
  %89 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %88, i32 0, i32 4
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %174

92:                                               ; preds = %86
  %93 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %93, i32 0, i32 7
  %95 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  switch i32 %97, label %173 [
    i32 140, label %98
    i32 139, label %98
    i32 137, label %98
    i32 136, label %98
  ]

98:                                               ; preds = %92, %92, %92, %92
  %99 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %99, i32 0, i32 19
  %101 = load i64*, i64** %100, align 8
  %102 = icmp eq i64* %101, null
  br i1 %102, label %103, label %133

103:                                              ; preds = %98
  %104 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %104, i32 0, i32 20
  %106 = call i64 @ngx_http_tfs_get_parent_dir(%struct.TYPE_33__* %105, i64* %6)
  store i64 %106, i64* %7, align 8
  %107 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %107, i32 0, i32 13
  %109 = load i32, i32* %108, align 8
  %110 = load i64, i64* %6, align 8
  %111 = mul i64 8, %110
  %112 = trunc i64 %111 to i32
  %113 = call i64* @ngx_pcalloc(i32 %109, i32 %112)
  %114 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %114, i32 0, i32 19
  store i64* %113, i64** %115, align 8
  %116 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %116, i32 0, i32 19
  %118 = load i64*, i64** %117, align 8
  %119 = icmp eq i64* %118, null
  br i1 %119, label %120, label %122

120:                                              ; preds = %103
  %121 = load i64, i64* @NGX_ERROR, align 8
  store i64 %121, i64* %2, align 8
  br label %574

122:                                              ; preds = %103
  %123 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %123, i32 0, i32 1
  store i64 0, i64* %124, align 8
  %125 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %125, i32 0, i32 20
  %127 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %129, i32 0, i32 19
  %131 = load i64*, i64** %130, align 8
  %132 = getelementptr inbounds i64, i64* %131, i64 0
  store i64 %128, i64* %132, align 8
  br label %137

133:                                              ; preds = %98
  %134 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %134, i32 0, i32 20
  %136 = call i64 @ngx_http_tfs_get_parent_dir(%struct.TYPE_33__* %135, i64* null)
  store i64 %136, i64* %7, align 8
  br label %137

137:                                              ; preds = %133, %122
  %138 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = add i64 %140, 1
  store i64 %141, i64* %139, align 8
  %142 = load i64, i64* %7, align 8
  %143 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %143, i32 0, i32 19
  %145 = load i64*, i64** %144, align 8
  %146 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = getelementptr inbounds i64, i64* %145, i64 %148
  store i64 %142, i64* %149, align 8
  %150 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %150, i32 0, i32 19
  %152 = load i64*, i64** %151, align 8
  %153 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = getelementptr inbounds i64, i64* %152, i64 %155
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %158, i32 0, i32 20
  %160 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %159, i32 0, i32 0
  store i64 %157, i64* %160, align 8
  %161 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %161, i32 0, i32 7
  %163 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %166, i32 0, i32 2
  store i32 %165, i32* %167, align 8
  %168 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %168, i32 0, i32 7
  %170 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %170, i32 0, i32 0
  store i32 140, i32* %171, align 8
  %172 = load i64, i64* @NGX_OK, align 8
  store i64 %172, i64* %2, align 8
  br label %574

173:                                              ; preds = %92
  br label %174

174:                                              ; preds = %173, %86, %82
  %175 = load i64, i64* %5, align 8
  %176 = load i64, i64* @NGX_HTTP_TFS_EXIT_TARGET_EXIST_ERROR, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %178, label %185

178:                                              ; preds = %174
  %179 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = icmp ugt i64 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %178
  %184 = load i64, i64* @NGX_OK, align 8
  store i64 %184, i64* %5, align 8
  br label %185

185:                                              ; preds = %183, %178, %174
  %186 = load i64, i64* %5, align 8
  %187 = load i64, i64* @NGX_OK, align 8
  %188 = icmp eq i64 %186, %187
  br i1 %188, label %193, label %189

189:                                              ; preds = %185
  %190 = load i64, i64* %5, align 8
  %191 = load i64, i64* @NGX_DECLINED, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %572

193:                                              ; preds = %189, %185
  %194 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %195 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %194, i32 0, i32 7
  %196 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  switch i32 %198, label %441 [
    i32 140, label %199
    i32 139, label %199
    i32 137, label %199
    i32 136, label %199
    i32 134, label %238
    i32 133, label %244
    i32 138, label %268
    i32 135, label %321
    i32 132, label %415
  ]

199:                                              ; preds = %193, %193, %193, %193
  %200 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %201 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %200, i32 0, i32 19
  %202 = load i64*, i64** %201, align 8
  %203 = icmp ne i64* %202, null
  br i1 %203, label %204, label %237

204:                                              ; preds = %199
  %205 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %206 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %205, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = icmp ugt i64 %207, 0
  br i1 %208, label %209, label %236

209:                                              ; preds = %204
  %210 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %211 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = icmp eq i64 %212, 1
  br i1 %213, label %214, label %222

214:                                              ; preds = %209
  %215 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %216 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %219 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %218, i32 0, i32 7
  %220 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %220, i32 0, i32 0
  store i32 %217, i32* %221, align 8
  br label %222

222:                                              ; preds = %214, %209
  %223 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %224 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %223, i32 0, i32 19
  %225 = load i64*, i64** %224, align 8
  %226 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %227 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %226, i32 0, i32 1
  %228 = load i64, i64* %227, align 8
  %229 = add i64 %228, -1
  store i64 %229, i64* %227, align 8
  %230 = getelementptr inbounds i64, i64* %225, i64 %229
  %231 = load i64, i64* %230, align 8
  %232 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %233 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %232, i32 0, i32 20
  %234 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %233, i32 0, i32 0
  store i64 %231, i64* %234, align 8
  %235 = load i64, i64* @NGX_OK, align 8
  store i64 %235, i64* %2, align 8
  br label %574

236:                                              ; preds = %204
  br label %237

237:                                              ; preds = %236, %199
  br label %238

238:                                              ; preds = %193, %237
  %239 = load i8*, i8** @NGX_HTTP_TFS_STATE_ACTION_DONE, align 8
  %240 = ptrtoint i8* %239 to i32
  %241 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %242 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %241, i32 0, i32 0
  store i32 %240, i32* %242, align 8
  %243 = load i64, i64* @NGX_DONE, align 8
  store i64 %243, i64* %2, align 8
  br label %574

244:                                              ; preds = %193
  %245 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %246 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  switch i32 %247, label %267 [
    i32 131, label %248
    i32 130, label %262
  ]

248:                                              ; preds = %244
  %249 = load i64, i64* %5, align 8
  %250 = load i64, i64* @NGX_DECLINED, align 8
  %251 = icmp eq i64 %249, %250
  br i1 %251, label %252, label %258

252:                                              ; preds = %248
  %253 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %254 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %253, i32 0, i32 0
  store i32 130, i32* %254, align 8
  %255 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %256 = call i32 @ngx_http_tfs_clear_buf(%struct.TYPE_27__* %255)
  %257 = load i64, i64* @NGX_OK, align 8
  store i64 %257, i64* %2, align 8
  br label %574

258:                                              ; preds = %248
  %259 = load i32, i32* @NGX_HTTP_TFS_STATE_REMOVE_GET_BLK_INFO, align 4
  %260 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %261 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %260, i32 0, i32 0
  store i32 %259, i32* %261, align 8
  br label %267

262:                                              ; preds = %244
  %263 = load i32, i32* @NGX_HTTP_TFS_STATE_REMOVE_DONE, align 4
  %264 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %265 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %264, i32 0, i32 0
  store i32 %263, i32* %265, align 8
  %266 = load i64, i64* @NGX_DONE, align 8
  store i64 %266, i64* %2, align 8
  br label %574

267:                                              ; preds = %244, %258
  br label %443

268:                                              ; preds = %193
  %269 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %270 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %269, i32 0, i32 7
  %271 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %270, i32 0, i32 3
  %272 = load i32, i32* %271, align 4
  %273 = load i32, i32* @NGX_HTTP_TFS_NO, align 4
  %274 = icmp eq i32 %272, %273
  br i1 %274, label %275, label %315

275:                                              ; preds = %268
  %276 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %277 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %276, i32 0, i32 18
  %278 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = icmp sgt i32 %279, 0
  br i1 %280, label %281, label %315

281:                                              ; preds = %275
  %282 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %283 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %282, i32 0, i32 17
  %284 = load %struct.TYPE_26__*, %struct.TYPE_26__** %283, align 8
  store %struct.TYPE_26__* %284, %struct.TYPE_26__** %8, align 8
  %285 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %286 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %285, i32 0, i32 17
  store %struct.TYPE_26__** %286, %struct.TYPE_26__*** %9, align 8
  br label %287

287:                                              ; preds = %293, %281
  %288 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %289 = icmp ne %struct.TYPE_26__* %288, null
  br i1 %289, label %290, label %297

290:                                              ; preds = %287
  %291 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %292 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %291, i32 0, i32 0
  store %struct.TYPE_26__** %292, %struct.TYPE_26__*** %9, align 8
  br label %293

293:                                              ; preds = %290
  %294 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %295 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %294, i32 0, i32 0
  %296 = load %struct.TYPE_26__*, %struct.TYPE_26__** %295, align 8
  store %struct.TYPE_26__* %296, %struct.TYPE_26__** %8, align 8
  br label %287

297:                                              ; preds = %287
  %298 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %299 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %298, i32 0, i32 16
  %300 = load i32*, i32** %299, align 8
  %301 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %302 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %301, i32 0, i32 18
  %303 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %304 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %303, i32 0, i32 7
  %305 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %304, i32 0, i32 2
  %306 = load i32, i32* %305, align 8
  %307 = call %struct.TYPE_26__* @ngx_http_tfs_json_custom_file_info(i32* %300, %struct.TYPE_32__* %302, i32 %306)
  store %struct.TYPE_26__* %307, %struct.TYPE_26__** %8, align 8
  %308 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %309 = icmp eq %struct.TYPE_26__* %308, null
  br i1 %309, label %310, label %312

310:                                              ; preds = %297
  %311 = load i64, i64* @NGX_ERROR, align 8
  store i64 %311, i64* %2, align 8
  br label %574

312:                                              ; preds = %297
  %313 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %314 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %9, align 8
  store %struct.TYPE_26__* %313, %struct.TYPE_26__** %314, align 8
  br label %315

315:                                              ; preds = %312, %275, %268
  %316 = load i8*, i8** @NGX_HTTP_TFS_STATE_ACTION_DONE, align 8
  %317 = ptrtoint i8* %316 to i32
  %318 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %319 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %318, i32 0, i32 0
  store i32 %317, i32* %319, align 8
  %320 = load i64, i64* @NGX_DONE, align 8
  store i64 %320, i64* %2, align 8
  br label %574

321:                                              ; preds = %193
  %322 = load i64, i64* %5, align 8
  %323 = load i64, i64* @NGX_DECLINED, align 8
  %324 = icmp eq i64 %322, %323
  br i1 %324, label %337, label %325

325:                                              ; preds = %321
  %326 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %327 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %326, i32 0, i32 7
  %328 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %327, i32 0, i32 1
  %329 = load i32, i32* %328, align 4
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %401

331:                                              ; preds = %325
  %332 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %333 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %332, i32 0, i32 8
  %334 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %333, i32 0, i32 2
  %335 = load i32, i32* %334, align 4
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %401, label %337

337:                                              ; preds = %331, %321
  %338 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %339 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %338, i32 0, i32 7
  %340 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %339, i32 0, i32 1
  %341 = load i32, i32* %340, align 4
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %343, label %396

343:                                              ; preds = %337
  %344 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %345 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %344, i32 0, i32 15
  %346 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %345, i32 0, i32 0
  %347 = load i32, i32* %346, align 8
  %348 = icmp sgt i32 %347, 0
  br i1 %348, label %349, label %395

349:                                              ; preds = %343
  %350 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %351 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %350, i32 0, i32 9
  %352 = load i32, i32* %351, align 8
  %353 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %354 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %353, i32 0, i32 13
  %355 = load i32, i32* %354, align 8
  %356 = call i32* @ngx_http_tfs_json_init(i32 %352, i32 %355)
  %357 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %358 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %357, i32 0, i32 16
  store i32* %356, i32** %358, align 8
  %359 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %360 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %359, i32 0, i32 16
  %361 = load i32*, i32** %360, align 8
  %362 = icmp eq i32* %361, null
  br i1 %362, label %363, label %365

363:                                              ; preds = %349
  %364 = load i64, i64* @NGX_ERROR, align 8
  store i64 %364, i64* %2, align 8
  br label %574

365:                                              ; preds = %349
  %366 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %367 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %366, i32 0, i32 17
  %368 = load %struct.TYPE_26__*, %struct.TYPE_26__** %367, align 8
  store %struct.TYPE_26__* %368, %struct.TYPE_26__** %8, align 8
  %369 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %370 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %369, i32 0, i32 17
  store %struct.TYPE_26__** %370, %struct.TYPE_26__*** %9, align 8
  br label %371

371:                                              ; preds = %377, %365
  %372 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %373 = icmp ne %struct.TYPE_26__* %372, null
  br i1 %373, label %374, label %381

374:                                              ; preds = %371
  %375 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %376 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %375, i32 0, i32 0
  store %struct.TYPE_26__** %376, %struct.TYPE_26__*** %9, align 8
  br label %377

377:                                              ; preds = %374
  %378 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %379 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %378, i32 0, i32 0
  %380 = load %struct.TYPE_26__*, %struct.TYPE_26__** %379, align 8
  store %struct.TYPE_26__* %380, %struct.TYPE_26__** %8, align 8
  br label %371

381:                                              ; preds = %371
  %382 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %383 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %382, i32 0, i32 16
  %384 = load i32*, i32** %383, align 8
  %385 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %386 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %385, i32 0, i32 15
  %387 = call %struct.TYPE_26__* @ngx_http_tfs_json_file_hole_info(i32* %384, %struct.TYPE_30__* %386)
  store %struct.TYPE_26__* %387, %struct.TYPE_26__** %8, align 8
  %388 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %389 = icmp eq %struct.TYPE_26__* %388, null
  br i1 %389, label %390, label %392

390:                                              ; preds = %381
  %391 = load i64, i64* @NGX_ERROR, align 8
  store i64 %391, i64* %2, align 8
  br label %574

392:                                              ; preds = %381
  %393 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %394 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %9, align 8
  store %struct.TYPE_26__* %393, %struct.TYPE_26__** %394, align 8
  br label %395

395:                                              ; preds = %392, %343
  br label %396

396:                                              ; preds = %395, %337
  %397 = load i32, i32* @NGX_HTTP_TFS_STATE_READ_DONE, align 4
  %398 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %399 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %398, i32 0, i32 0
  store i32 %397, i32* %399, align 8
  %400 = load i64, i64* @NGX_DONE, align 8
  store i64 %400, i64* %2, align 8
  br label %574

401:                                              ; preds = %331, %325
  %402 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %403 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %402, i32 0, i32 7
  %404 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %403, i32 0, i32 1
  %405 = load i32, i32* %404, align 4
  %406 = icmp ne i32 %405, 0
  br i1 %406, label %407, label %411

407:                                              ; preds = %401
  %408 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %409 = call i32 @ngx_http_tfs_clear_buf(%struct.TYPE_27__* %408)
  %410 = load i64, i64* @NGX_OK, align 8
  store i64 %410, i64* %2, align 8
  br label %574

411:                                              ; preds = %401
  %412 = load i32, i32* @NGX_HTTP_TFS_STATE_READ_GET_BLK_INFO, align 4
  %413 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %414 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %413, i32 0, i32 0
  store i32 %412, i32* %414, align 8
  br label %443

415:                                              ; preds = %193
  %416 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %417 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %416, i32 0, i32 0
  %418 = load i32, i32* %417, align 8
  switch i32 %418, label %440 [
    i32 129, label %419
    i32 128, label %424
  ]

419:                                              ; preds = %415
  %420 = load i64, i64* @NGX_HTTP_TFS_STATE_WRITE_CLUSTER_ID_NS, align 8
  %421 = trunc i64 %420 to i32
  %422 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %423 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %422, i32 0, i32 0
  store i32 %421, i32* %423, align 8
  br label %440

424:                                              ; preds = %415
  %425 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %426 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %425, i32 0, i32 8
  %427 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %426, i32 0, i32 1
  %428 = load i32, i32* %427, align 8
  %429 = icmp eq i32 %428, 0
  br i1 %429, label %430, label %435

430:                                              ; preds = %424
  %431 = load i32, i32* @NGX_HTTP_TFS_STATE_WRITE_DONE, align 4
  %432 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %433 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %432, i32 0, i32 0
  store i32 %431, i32* %433, align 8
  %434 = load i64, i64* @NGX_DONE, align 8
  store i64 %434, i64* %2, align 8
  br label %574

435:                                              ; preds = %424
  %436 = load i8*, i8** @NGX_HTTP_TFS_STATE_WRITE_GET_BLK_INFO, align 8
  %437 = ptrtoint i8* %436 to i32
  %438 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %439 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %438, i32 0, i32 0
  store i32 %437, i32* %439, align 8
  br label %440

440:                                              ; preds = %435, %415, %419
  br label %443

441:                                              ; preds = %193
  %442 = load i64, i64* @NGX_ERROR, align 8
  store i64 %442, i64* %2, align 8
  br label %574

443:                                              ; preds = %440, %411, %267
  %444 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %445 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %444, i32 0, i32 14
  %446 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %445, i32 0, i32 0
  %447 = load i64, i64* %446, align 8
  %448 = icmp eq i64 %447, 0
  br i1 %448, label %449, label %554

449:                                              ; preds = %443
  %450 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %451 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %452 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %451, i32 0, i32 10
  %453 = load %struct.TYPE_28__*, %struct.TYPE_28__** %452, align 8
  %454 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %455 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %454, i32 0, i32 11
  %456 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %457 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %456, i32 0, i32 14
  %458 = call i64 @ngx_http_tfs_select_name_server(%struct.TYPE_38__* %450, %struct.TYPE_28__* %453, i32* %455, %struct.TYPE_29__* %457)
  store i64 %458, i64* %5, align 8
  %459 = load i64, i64* %5, align 8
  %460 = load i64, i64* @NGX_ERROR, align 8
  %461 = icmp eq i64 %459, %460
  br i1 %461, label %462, label %464

462:                                              ; preds = %449
  %463 = load i64, i64* @NGX_HTTP_TFS_EXIT_SERVER_OBJECT_NOT_FOUND, align 8
  store i64 %463, i64* %2, align 8
  br label %574

464:                                              ; preds = %449
  %465 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %466 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %465, i32 0, i32 13
  %467 = load i32, i32* %466, align 8
  %468 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %469 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %468, i32 0, i32 12
  %470 = load i32*, i32** %469, align 8
  %471 = load i64, i64* @NGX_HTTP_TFS_NAME_SERVER, align 8
  %472 = getelementptr inbounds i32, i32* %470, i64 %471
  %473 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %474 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %473, i32 0, i32 11
  %475 = call i32 @ngx_http_tfs_peer_set_addr(i32 %467, i32* %472, i32* %474)
  %476 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %477 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %476, i32 0, i32 7
  %478 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %477, i32 0, i32 0
  %479 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %478, i32 0, i32 0
  %480 = load i32, i32* %479, align 8
  %481 = icmp eq i32 %480, 132
  br i1 %481, label %482, label %553

482:                                              ; preds = %464
  %483 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %484 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %483, i32 0, i32 0
  %485 = load i32, i32* %484, align 8
  %486 = sext i32 %485 to i64
  %487 = load i64, i64* @NGX_HTTP_TFS_STATE_WRITE_CLUSTER_ID_NS, align 8
  %488 = icmp eq i64 %486, %487
  br i1 %488, label %489, label %553

489:                                              ; preds = %482
  %490 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %491 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %490, i32 0, i32 10
  %492 = load %struct.TYPE_28__*, %struct.TYPE_28__** %491, align 8
  %493 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %492, i32 0, i32 0
  %494 = load %struct.TYPE_41__*, %struct.TYPE_41__** %493, align 8
  %495 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %496 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %495, i32 0, i32 3
  %497 = load i64, i64* %496, align 8
  %498 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %494, i64 %497
  store %struct.TYPE_41__* %498, %struct.TYPE_41__** %12, align 8
  %499 = load %struct.TYPE_41__*, %struct.TYPE_41__** %12, align 8
  %500 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %499, i32 0, i32 0
  %501 = load %struct.TYPE_39__*, %struct.TYPE_39__** %500, align 8
  %502 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %503 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %502, i32 0, i32 4
  %504 = load i64, i64* %503, align 8
  %505 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %501, i64 %504
  store %struct.TYPE_39__* %505, %struct.TYPE_39__** %13, align 8
  %506 = load %struct.TYPE_39__*, %struct.TYPE_39__** %13, align 8
  %507 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %506, i32 0, i32 0
  %508 = load i64, i64* %507, align 8
  %509 = icmp sgt i64 %508, 0
  br i1 %509, label %510, label %552

510:                                              ; preds = %489
  %511 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %512 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %511, i32 0, i32 8
  %513 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %512, i32 0, i32 0
  %514 = load i64, i64* %513, align 8
  %515 = icmp eq i64 %514, 0
  br i1 %515, label %516, label %523

516:                                              ; preds = %510
  %517 = load %struct.TYPE_39__*, %struct.TYPE_39__** %13, align 8
  %518 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %517, i32 0, i32 0
  %519 = load i64, i64* %518, align 8
  %520 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %521 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %520, i32 0, i32 8
  %522 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %521, i32 0, i32 0
  store i64 %519, i64* %522, align 8
  br label %547

523:                                              ; preds = %510
  %524 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %525 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %524, i32 0, i32 8
  %526 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %525, i32 0, i32 0
  %527 = load i64, i64* %526, align 8
  %528 = load %struct.TYPE_39__*, %struct.TYPE_39__** %13, align 8
  %529 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %528, i32 0, i32 0
  %530 = load i64, i64* %529, align 8
  %531 = icmp ne i64 %527, %530
  br i1 %531, label %532, label %546

532:                                              ; preds = %523
  %533 = load i32, i32* @NGX_LOG_ERR, align 4
  %534 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %535 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %534, i32 0, i32 9
  %536 = load i32, i32* %535, align 8
  %537 = load %struct.TYPE_39__*, %struct.TYPE_39__** %13, align 8
  %538 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %537, i32 0, i32 0
  %539 = load i64, i64* %538, align 8
  %540 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %541 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %540, i32 0, i32 8
  %542 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %541, i32 0, i32 0
  %543 = load i64, i64* %542, align 8
  %544 = call i32 (i32, i32, i32, i8*, i64, ...) @ngx_log_error(i32 %533, i32 %536, i32 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i64 %539, i64 %543)
  %545 = load i64, i64* @NGX_ERROR, align 8
  store i64 %545, i64* %2, align 8
  br label %574

546:                                              ; preds = %523
  br label %547

547:                                              ; preds = %546, %516
  %548 = load i8*, i8** @NGX_HTTP_TFS_STATE_WRITE_GET_BLK_INFO, align 8
  %549 = ptrtoint i8* %548 to i32
  %550 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %551 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %550, i32 0, i32 0
  store i32 %549, i32* %551, align 8
  br label %552

552:                                              ; preds = %547, %489
  br label %553

553:                                              ; preds = %552, %482, %464
  br label %554

554:                                              ; preds = %553, %443
  %555 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %556 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %555, i32 0, i32 7
  %557 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %556, i32 0, i32 0
  %558 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %557, i32 0, i32 0
  %559 = load i32, i32* %558, align 8
  %560 = icmp eq i32 %559, 135
  br i1 %560, label %561, label %570

561:                                              ; preds = %554
  %562 = load i32, i32* @NGX_HTTP_TFS_LOCAL_BLOCK_CACHE, align 4
  %563 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %564 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %563, i32 0, i32 6
  %565 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %564, i32 0, i32 0
  store i32 %562, i32* %565, align 4
  %566 = load i32, i32* @ngx_http_tfs_batch_lookup_block_cache, align 4
  %567 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %568 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %567, i32 0, i32 5
  store i32 %566, i32* %568, align 8
  %569 = load i64, i64* @NGX_DECLINED, align 8
  store i64 %569, i64* %2, align 8
  br label %574

570:                                              ; preds = %554
  %571 = load i64, i64* @NGX_OK, align 8
  store i64 %571, i64* %2, align 8
  br label %574

572:                                              ; preds = %189
  %573 = load i64, i64* %5, align 8
  store i64 %573, i64* %2, align 8
  br label %574

574:                                              ; preds = %572, %570, %561, %532, %462, %441, %430, %407, %396, %390, %363, %315, %310, %262, %252, %238, %222, %137, %120, %56, %37, %29
  %575 = load i64, i64* %2, align 8
  ret i64 %575
}

declare dso_local i64 @ngx_buf_size(%struct.TYPE_27__*) #1

declare dso_local i64 @ngx_http_tfs_meta_server_parse_message(%struct.TYPE_38__*) #1

declare dso_local i32 @ngx_http_tfs_clear_buf(%struct.TYPE_27__*) #1

declare dso_local i32 @ngx_http_tfs_peer_set_addr(i32, i32*, i32*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i64, ...) #1

declare dso_local i64 @ngx_http_tfs_get_parent_dir(%struct.TYPE_33__*, i64*) #1

declare dso_local i64* @ngx_pcalloc(i32, i32) #1

declare dso_local %struct.TYPE_26__* @ngx_http_tfs_json_custom_file_info(i32*, %struct.TYPE_32__*, i32) #1

declare dso_local i32* @ngx_http_tfs_json_init(i32, i32) #1

declare dso_local %struct.TYPE_26__* @ngx_http_tfs_json_file_hole_info(i32*, %struct.TYPE_30__*) #1

declare dso_local i64 @ngx_http_tfs_select_name_server(%struct.TYPE_38__*, %struct.TYPE_28__*, i32*, %struct.TYPE_29__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
