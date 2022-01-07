; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_server_handler.c_ngx_http_tfs_process_ds.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_server_handler.c_ngx_http_tfs_process_ds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i32, %struct.TYPE_41__*, %struct.TYPE_42__, %struct.TYPE_45__, i32, i32, %struct.TYPE_37__, i32, i32, i8*, %struct.TYPE_39__, %struct.TYPE_32__*, i8*, i32, i32, %struct.TYPE_35__, i32, i8*, i32, %struct.TYPE_33__*, %struct.TYPE_30__*, i64 }
%struct.TYPE_41__ = type { %struct.TYPE_34__ }
%struct.TYPE_34__ = type { i64, i64 }
%struct.TYPE_42__ = type { i64, i64, i64, i64, i32, %struct.TYPE_29__* }
%struct.TYPE_29__ = type { i64, i64, %struct.TYPE_40__, %struct.TYPE_33__* }
%struct.TYPE_40__ = type { i64, i64, i32, i32 }
%struct.TYPE_45__ = type { i8*, i32, i8*, i32, %struct.TYPE_36__, %struct.TYPE_43__ }
%struct.TYPE_36__ = type { %struct.TYPE_44__ }
%struct.TYPE_44__ = type { i32 }
%struct.TYPE_43__ = type { i32 }
%struct.TYPE_37__ = type { i64, i32 }
%struct.TYPE_39__ = type { i32, i32 }
%struct.TYPE_32__ = type { %struct.TYPE_38__* }
%struct.TYPE_38__ = type { i32 }
%struct.TYPE_35__ = type { i64 }
%struct.TYPE_33__ = type { %struct.TYPE_34__*, %struct.TYPE_33__* }
%struct.TYPE_30__ = type { %struct.TYPE_34__ }
%struct.TYPE_31__ = type { i64 }

@NGX_AGAIN = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8
@NGX_HTTP_TFS_STATE_STAT_DONE = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_NO = common dso_local global i8* null, align 8
@NGX_DONE = common dso_local global i64 0, align 8
@NGX_HTTP_TFS_EXIT_NO_LOGICBLOCK_ERROR = common dso_local global i64 0, align 8
@NGX_HTTP_TFS_AGAIN = common dso_local global i64 0, align 8
@NGX_HTTP_TFS_FILE_NORMAL = common dso_local global i32 0, align 4
@ngx_http_tfs_set_duplicate_info = common dso_local global i8* null, align 8
@NGX_DECLINED = common dso_local global i64 0, align 8
@NGX_HTTP_TFS_EXIT_FILE_INFO_ERROR = common dso_local global i64 0, align 8
@NGX_HTTP_TFS_EXIT_META_NOT_FOUND_ERROR = common dso_local global i64 0, align 8
@NGX_HTTP_TFS_STATE_WRITE_CLUSTER_ID_NS = common dso_local global i32 0, align 4
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"update send data offset failed for early end.\00", align 1
@NGX_HTTP_TFS_MAX_FRAGMENT_SIZE = common dso_local global i64 0, align 8
@NGX_HTTP_TFS_STATE_WRITE_GET_BLK_INFO = common dso_local global i8* null, align 8
@NGX_HTTP_TFS_YES = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_STATE_WRITE_DONE = common dso_local global i32 0, align 4
@NGX_HTTP_CLIENT_CLOSED_REQUEST = common dso_local global i64 0, align 8
@NGX_HTTP_REQUEST_TIME_OUT = common dso_local global i64 0, align 8
@NGX_HTTP_TFS_FILE_CONCEAL = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_STATE_REMOVE_READ_META_SEGMENT = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_MAX_READ_FILE_SIZE = common dso_local global i64 0, align 8
@NGX_HTTP_TFS_EXIT_FILE_STATUS_ERROR = common dso_local global i64 0, align 8
@NGX_HTTP_TFS_STATE_REMOVE_DONE = common dso_local global i8* null, align 8
@NGX_HTTP_TFS_STATE_REMOVE_NOTIFY_MS = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_STATE_REMOVE_GET_FRAG_INFO = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_META_SERVER = common dso_local global i64 0, align 8
@NGX_HTTP_TFS_STATE_REMOVE_GET_BLK_INFO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ngx_http_tfs_process_ds(%struct.TYPE_28__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_28__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_34__*, align 8
  %9 = alloca %struct.TYPE_34__*, align 8
  %10 = alloca %struct.TYPE_33__*, align 8
  %11 = alloca %struct.TYPE_33__**, align 8
  %12 = alloca %struct.TYPE_32__*, align 8
  %13 = alloca %struct.TYPE_31__*, align 8
  %14 = alloca %struct.TYPE_29__*, align 8
  %15 = alloca %struct.TYPE_30__*, align 8
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %3, align 8
  %16 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %16, i32 0, i32 21
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.TYPE_31__*
  store %struct.TYPE_31__* %19, %struct.TYPE_31__** %13, align 8
  %20 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %20, i32 0, i32 20
  %22 = load %struct.TYPE_30__*, %struct.TYPE_30__** %21, align 8
  store %struct.TYPE_30__* %22, %struct.TYPE_30__** %15, align 8
  %23 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %24 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %23, i32 0, i32 0
  store %struct.TYPE_34__* %24, %struct.TYPE_34__** %8, align 8
  %25 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %26 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %5, align 8
  %28 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %29 = call i64 @ngx_buf_size(%struct.TYPE_34__* %28)
  %30 = load i64, i64* %5, align 8
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %1
  %33 = load i64, i64* @NGX_AGAIN, align 8
  store i64 %33, i64* %2, align 8
  br label %642

34:                                               ; preds = %1
  %35 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %36 = call i64 @ngx_http_tfs_data_server_parse_message(%struct.TYPE_28__* %35)
  store i64 %36, i64* %7, align 8
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* @NGX_ERROR, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i64, i64* @NGX_ERROR, align 8
  store i64 %41, i64* %2, align 8
  br label %642

42:                                               ; preds = %34
  %43 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %44 = call i32 @ngx_http_tfs_clear_buf(%struct.TYPE_34__* %43)
  %45 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %46, i32 0, i32 5
  %48 = load %struct.TYPE_29__*, %struct.TYPE_29__** %47, align 8
  %49 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %48, i64 %52
  store %struct.TYPE_29__* %53, %struct.TYPE_29__** %14, align 8
  %54 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %55, i32 0, i32 5
  %57 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  switch i32 %58, label %640 [
    i32 136, label %59
    i32 135, label %134
    i32 137, label %487
  ]

59:                                               ; preds = %42
  %60 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 8
  %66 = load i64, i64* %7, align 8
  %67 = load i64, i64* @NGX_OK, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %124

69:                                               ; preds = %59
  %70 = load i32, i32* @NGX_HTTP_TFS_STATE_STAT_DONE, align 4
  %71 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = load i8*, i8** @NGX_HTTP_TFS_NO, align 8
  %78 = icmp eq i8* %76, %77
  br i1 %78, label %79, label %122

79:                                               ; preds = %69
  %80 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %80, i32 0, i32 19
  %82 = load %struct.TYPE_33__*, %struct.TYPE_33__** %81, align 8
  store %struct.TYPE_33__* %82, %struct.TYPE_33__** %10, align 8
  %83 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %83, i32 0, i32 19
  store %struct.TYPE_33__** %84, %struct.TYPE_33__*** %11, align 8
  br label %85

85:                                               ; preds = %91, %79
  %86 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %87 = icmp ne %struct.TYPE_33__* %86, null
  br i1 %87, label %88, label %95

88:                                               ; preds = %85
  %89 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %89, i32 0, i32 1
  store %struct.TYPE_33__** %90, %struct.TYPE_33__*** %11, align 8
  br label %91

91:                                               ; preds = %88
  %92 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_33__*, %struct.TYPE_33__** %93, align 8
  store %struct.TYPE_33__* %94, %struct.TYPE_33__** %10, align 8
  br label %85

95:                                               ; preds = %85
  %96 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %96, i32 0, i32 18
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %100, i32 0, i32 4
  %102 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %102, i32 0, i32 5
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @ngx_http_tfs_raw_fsname_get_name(%struct.TYPE_36__* %101, i32 %104, i32 0)
  %106 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %107, i32 0, i32 4
  %109 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %112, i32 0, i32 6
  %114 = call %struct.TYPE_33__* @ngx_http_tfs_json_raw_file_stat(i32 %98, i32 %105, i32 %111, %struct.TYPE_37__* %113)
  store %struct.TYPE_33__* %114, %struct.TYPE_33__** %10, align 8
  %115 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %116 = icmp eq %struct.TYPE_33__* %115, null
  br i1 %116, label %117, label %119

117:                                              ; preds = %95
  %118 = load i64, i64* @NGX_ERROR, align 8
  store i64 %118, i64* %2, align 8
  br label %642

119:                                              ; preds = %95
  %120 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %121 = load %struct.TYPE_33__**, %struct.TYPE_33__*** %11, align 8
  store %struct.TYPE_33__* %120, %struct.TYPE_33__** %121, align 8
  br label %122

122:                                              ; preds = %119, %69
  %123 = load i64, i64* @NGX_DONE, align 8
  store i64 %123, i64* %2, align 8
  br label %642

124:                                              ; preds = %59
  %125 = load i64, i64* %7, align 8
  %126 = load i64, i64* @NGX_HTTP_TFS_EXIT_NO_LOGICBLOCK_ERROR, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %132

128:                                              ; preds = %124
  %129 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %130 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %131 = call i32 @ngx_http_tfs_remove_block_cache(%struct.TYPE_28__* %129, %struct.TYPE_29__* %130)
  br label %132

132:                                              ; preds = %128, %124
  %133 = load i64, i64* @NGX_HTTP_TFS_AGAIN, align 8
  store i64 %133, i64* %2, align 8
  br label %642

134:                                              ; preds = %42
  %135 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  switch i32 %137, label %486 [
    i32 129, label %138
    i32 131, label %216
    i32 128, label %226
    i32 132, label %361
    i32 130, label %449
  ]

138:                                              ; preds = %134
  %139 = load i64, i64* %7, align 8
  %140 = load i64, i64* @NGX_OK, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %179

142:                                              ; preds = %138
  %143 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %143, i32 0, i32 6
  %145 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @NGX_HTTP_TFS_FILE_NORMAL, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %178

149:                                              ; preds = %142
  %150 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %151 = call i64 @ngx_http_tfs_set_output_file_name(%struct.TYPE_28__* %150)
  store i64 %151, i64* %7, align 8
  %152 = load i64, i64* %7, align 8
  %153 = load i64, i64* @NGX_ERROR, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %157

155:                                              ; preds = %149
  %156 = load i64, i64* @NGX_ERROR, align 8
  store i64 %156, i64* %2, align 8
  br label %642

157:                                              ; preds = %149
  %158 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %158, i32 0, i32 11
  %160 = load %struct.TYPE_32__*, %struct.TYPE_32__** %159, align 8
  store %struct.TYPE_32__* %160, %struct.TYPE_32__** %12, align 8
  %161 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %162 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %161, i32 0, i32 0
  %163 = load %struct.TYPE_38__*, %struct.TYPE_38__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %166, i32 0, i32 10
  %168 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %167, i32 0, i32 1
  store i32 %165, i32* %168, align 4
  %169 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %169, i32 0, i32 10
  %171 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %171, align 8
  %174 = load i8*, i8** @ngx_http_tfs_set_duplicate_info, align 8
  %175 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %175, i32 0, i32 9
  store i8* %174, i8** %176, align 8
  %177 = load i64, i64* @NGX_DECLINED, align 8
  store i64 %177, i64* %2, align 8
  br label %642

178:                                              ; preds = %142
  br label %215

179:                                              ; preds = %138
  %180 = load i64, i64* %7, align 8
  %181 = load i64, i64* @NGX_HTTP_TFS_EXIT_FILE_INFO_ERROR, align 8
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %187, label %183

183:                                              ; preds = %179
  %184 = load i64, i64* %7, align 8
  %185 = load i64, i64* @NGX_HTTP_TFS_EXIT_META_NOT_FOUND_ERROR, align 8
  %186 = icmp eq i64 %184, %185
  br i1 %186, label %187, label %212

187:                                              ; preds = %183, %179
  %188 = load i32, i32* @NGX_HTTP_TFS_STATE_WRITE_CLUSTER_ID_NS, align 4
  %189 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %189, i32 0, i32 0
  store i32 %188, i32* %190, align 8
  %191 = load i8*, i8** @NGX_HTTP_TFS_NO, align 8
  %192 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %193 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %192, i32 0, i32 17
  store i8* %191, i8** %193, align 8
  %194 = load i8*, i8** @NGX_HTTP_TFS_NO, align 8
  %195 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %195, i32 0, i32 12
  store i8* %194, i8** %196, align 8
  %197 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %198 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %197, i32 0, i32 2
  %199 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %198, i32 0, i32 5
  %200 = load %struct.TYPE_29__*, %struct.TYPE_29__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %200, i64 0
  %202 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %201, i32 0, i32 2
  %203 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %202, i32 0, i32 3
  store i32 0, i32* %203, align 4
  %204 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %205 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %204, i32 0, i32 2
  %206 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %205, i32 0, i32 5
  %207 = load %struct.TYPE_29__*, %struct.TYPE_29__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %207, i64 0
  %209 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %208, i32 0, i32 2
  %210 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %209, i32 0, i32 2
  store i32 0, i32* %210, align 8
  %211 = load i64, i64* @NGX_OK, align 8
  store i64 %211, i64* %7, align 8
  br label %214

212:                                              ; preds = %183
  %213 = load i64, i64* @NGX_HTTP_TFS_AGAIN, align 8
  store i64 %213, i64* %7, align 8
  br label %214

214:                                              ; preds = %212, %187
  br label %215

215:                                              ; preds = %214, %178
  br label %486

216:                                              ; preds = %134
  %217 = load i64, i64* %7, align 8
  %218 = load i64, i64* @NGX_OK, align 8
  %219 = icmp eq i64 %217, %218
  br i1 %219, label %220, label %223

220:                                              ; preds = %216
  %221 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %222 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %221, i32 0, i32 0
  store i32 128, i32* %222, align 8
  br label %225

223:                                              ; preds = %216
  %224 = load i64, i64* @NGX_HTTP_TFS_AGAIN, align 8
  store i64 %224, i64* %2, align 8
  br label %642

225:                                              ; preds = %220
  br label %486

226:                                              ; preds = %134
  %227 = load i64, i64* %7, align 8
  %228 = load i64, i64* @NGX_OK, align 8
  %229 = icmp ne i64 %227, %228
  br i1 %229, label %230, label %232

230:                                              ; preds = %226
  %231 = load i64, i64* @NGX_HTTP_TFS_AGAIN, align 8
  store i64 %231, i64* %2, align 8
  br label %642

232:                                              ; preds = %226
  %233 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %234 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %233, i32 0, i32 3
  %235 = load %struct.TYPE_33__*, %struct.TYPE_33__** %234, align 8
  store %struct.TYPE_33__* %235, %struct.TYPE_33__** %10, align 8
  %236 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %237 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  store i64 %238, i64* %6, align 8
  br label %239

239:                                              ; preds = %297, %232
  %240 = load i64, i64* %6, align 8
  %241 = icmp sgt i64 %240, 0
  br i1 %241, label %242, label %301

242:                                              ; preds = %239
  br label %243

243:                                              ; preds = %254, %242
  %244 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %245 = icmp ne %struct.TYPE_33__* %244, null
  br i1 %245, label %246, label %252

246:                                              ; preds = %243
  %247 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %248 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %247, i32 0, i32 0
  %249 = load %struct.TYPE_34__*, %struct.TYPE_34__** %248, align 8
  %250 = call i64 @ngx_buf_size(%struct.TYPE_34__* %249)
  %251 = icmp eq i64 %250, 0
  br label %252

252:                                              ; preds = %246, %243
  %253 = phi i1 [ false, %243 ], [ %251, %246 ]
  br i1 %253, label %254, label %258

254:                                              ; preds = %252
  %255 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %256 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %255, i32 0, i32 1
  %257 = load %struct.TYPE_33__*, %struct.TYPE_33__** %256, align 8
  store %struct.TYPE_33__* %257, %struct.TYPE_33__** %10, align 8
  br label %243

258:                                              ; preds = %252
  %259 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %260 = icmp eq %struct.TYPE_33__* %259, null
  br i1 %260, label %261, label %268

261:                                              ; preds = %258
  %262 = load i32, i32* @NGX_LOG_ERR, align 4
  %263 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %264 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %263, i32 0, i32 16
  %265 = load i32, i32* %264, align 8
  %266 = call i32 @ngx_log_error(i32 %262, i32 %265, i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %267 = load i64, i64* @NGX_ERROR, align 8
  store i64 %267, i64* %2, align 8
  br label %642

268:                                              ; preds = %258
  %269 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %270 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %269, i32 0, i32 0
  %271 = load %struct.TYPE_34__*, %struct.TYPE_34__** %270, align 8
  %272 = call i64 @ngx_buf_size(%struct.TYPE_34__* %271)
  %273 = load i64, i64* %6, align 8
  %274 = call i8* @ngx_min(i64 %272, i64 %273)
  %275 = ptrtoint i8* %274 to i64
  store i64 %275, i64* %4, align 8
  %276 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %277 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %276, i32 0, i32 0
  %278 = load %struct.TYPE_34__*, %struct.TYPE_34__** %277, align 8
  %279 = call i32 @ngx_buf_in_memory(%struct.TYPE_34__* %278)
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %289

281:                                              ; preds = %268
  %282 = load i64, i64* %4, align 8
  %283 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %284 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %283, i32 0, i32 0
  %285 = load %struct.TYPE_34__*, %struct.TYPE_34__** %284, align 8
  %286 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %285, i32 0, i32 0
  %287 = load i64, i64* %286, align 8
  %288 = add i64 %287, %282
  store i64 %288, i64* %286, align 8
  br label %297

289:                                              ; preds = %268
  %290 = load i64, i64* %4, align 8
  %291 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %292 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %291, i32 0, i32 0
  %293 = load %struct.TYPE_34__*, %struct.TYPE_34__** %292, align 8
  %294 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %293, i32 0, i32 1
  %295 = load i64, i64* %294, align 8
  %296 = add i64 %295, %290
  store i64 %296, i64* %294, align 8
  br label %297

297:                                              ; preds = %289, %281
  %298 = load i64, i64* %4, align 8
  %299 = load i64, i64* %6, align 8
  %300 = sub i64 %299, %298
  store i64 %300, i64* %6, align 8
  br label %239

301:                                              ; preds = %239
  %302 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %303 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %304 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %303, i32 0, i32 3
  store %struct.TYPE_33__* %302, %struct.TYPE_33__** %304, align 8
  %305 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %306 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %305, i32 0, i32 0
  %307 = load i64, i64* %306, align 8
  %308 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %309 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %308, i32 0, i32 2
  %310 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %309, i32 0, i32 1
  %311 = load i64, i64* %310, align 8
  %312 = sub nsw i64 %311, %307
  store i64 %312, i64* %310, align 8
  %313 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %314 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %313, i32 0, i32 0
  %315 = load i64, i64* %314, align 8
  %316 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %317 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %316, i32 0, i32 15
  %318 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %317, i32 0, i32 0
  %319 = load i64, i64* %318, align 8
  %320 = add nsw i64 %319, %315
  store i64 %320, i64* %318, align 8
  %321 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %322 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %321, i32 0, i32 0
  %323 = load i64, i64* %322, align 8
  %324 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %325 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %324, i32 0, i32 1
  %326 = load i64, i64* %325, align 8
  %327 = add nsw i64 %326, %323
  store i64 %327, i64* %325, align 8
  %328 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %329 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %328, i32 0, i32 2
  %330 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %329, i32 0, i32 1
  %331 = load i64, i64* %330, align 8
  %332 = load i64, i64* @NGX_HTTP_TFS_MAX_FRAGMENT_SIZE, align 8
  %333 = call i8* @ngx_min(i64 %331, i64 %332)
  %334 = ptrtoint i8* %333 to i64
  %335 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %336 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %335, i32 0, i32 0
  store i64 %334, i64* %336, align 8
  %337 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %338 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %337, i32 0, i32 3
  %339 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %338, i32 0, i32 1
  %340 = load i32, i32* %339, align 8
  %341 = icmp eq i32 %340, 1
  br i1 %341, label %342, label %358

342:                                              ; preds = %301
  %343 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %344 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %343, i32 0, i32 2
  %345 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %344, i32 0, i32 1
  %346 = load i64, i64* %345, align 8
  %347 = icmp sgt i64 %346, 0
  br i1 %347, label %348, label %357

348:                                              ; preds = %342
  %349 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %350 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %349, i32 0, i32 5
  %351 = load i32, i32* %350, align 4
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %357, label %353

353:                                              ; preds = %348
  %354 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %355 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %354, i32 0, i32 0
  store i32 128, i32* %355, align 8
  %356 = load i64, i64* @NGX_OK, align 8
  store i64 %356, i64* %2, align 8
  br label %642

357:                                              ; preds = %348, %342
  br label %358

358:                                              ; preds = %357, %301
  %359 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %360 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %359, i32 0, i32 0
  store i32 132, i32* %360, align 8
  br label %486

361:                                              ; preds = %134
  %362 = load i64, i64* %7, align 8
  %363 = load i64, i64* @NGX_OK, align 8
  %364 = icmp ne i64 %362, %363
  br i1 %364, label %365, label %367

365:                                              ; preds = %361
  %366 = load i64, i64* @NGX_HTTP_TFS_AGAIN, align 8
  store i64 %366, i64* %2, align 8
  br label %642

367:                                              ; preds = %361
  %368 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %369 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %368, i32 0, i32 14
  %370 = load i32, i32* %369, align 4
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %372, label %374

372:                                              ; preds = %367
  %373 = load i64, i64* @NGX_DONE, align 8
  store i64 %373, i64* %2, align 8
  br label %642

374:                                              ; preds = %367
  %375 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %376 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %375, i32 0, i32 2
  %377 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %376, i32 0, i32 0
  %378 = load i64, i64* %377, align 8
  %379 = add i64 %378, 1
  store i64 %379, i64* %377, align 8
  %380 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %381 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %380, i32 0, i32 3
  %382 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %381, i32 0, i32 1
  %383 = load i32, i32* %382, align 8
  %384 = icmp eq i32 %383, 1
  br i1 %384, label %385, label %448

385:                                              ; preds = %374
  %386 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %387 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %386, i32 0, i32 8
  %388 = load i32, i32* %387, align 4
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %390, label %409

390:                                              ; preds = %385
  %391 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %392 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %391, i32 0, i32 3
  %393 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %392, i32 0, i32 2
  %394 = load i8*, i8** %393, align 8
  %395 = load i8*, i8** @NGX_HTTP_TFS_NO, align 8
  %396 = icmp eq i8* %394, %395
  br i1 %396, label %397, label %409

397:                                              ; preds = %390
  %398 = load i8*, i8** @NGX_HTTP_TFS_STATE_WRITE_GET_BLK_INFO, align 8
  %399 = ptrtoint i8* %398 to i32
  %400 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %401 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %400, i32 0, i32 0
  store i32 %399, i32* %401, align 8
  %402 = load i32, i32* @NGX_HTTP_TFS_YES, align 4
  %403 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %404 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %403, i32 0, i32 13
  store i32 %402, i32* %404, align 8
  %405 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %406 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %405, i32 0, i32 2
  %407 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %406, i32 0, i32 0
  store i64 0, i64* %407, align 8
  %408 = load i64, i64* @NGX_OK, align 8
  store i64 %408, i64* %2, align 8
  br label %642

409:                                              ; preds = %390, %385
  %410 = load i32, i32* @NGX_HTTP_TFS_STATE_WRITE_DONE, align 4
  %411 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %412 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %411, i32 0, i32 0
  store i32 %410, i32* %412, align 8
  %413 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %414 = call i64 @ngx_http_tfs_set_output_file_name(%struct.TYPE_28__* %413)
  store i64 %414, i64* %7, align 8
  %415 = load i64, i64* %7, align 8
  %416 = load i64, i64* @NGX_ERROR, align 8
  %417 = icmp eq i64 %415, %416
  br i1 %417, label %418, label %420

418:                                              ; preds = %409
  %419 = load i64, i64* @NGX_ERROR, align 8
  store i64 %419, i64* %2, align 8
  br label %642

420:                                              ; preds = %409
  %421 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %422 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %421, i32 0, i32 12
  %423 = load i8*, i8** %422, align 8
  %424 = icmp ne i8* %423, null
  br i1 %424, label %425, label %446

425:                                              ; preds = %420
  %426 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %427 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %426, i32 0, i32 11
  %428 = load %struct.TYPE_32__*, %struct.TYPE_32__** %427, align 8
  store %struct.TYPE_32__* %428, %struct.TYPE_32__** %12, align 8
  %429 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %430 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %429, i32 0, i32 0
  %431 = load %struct.TYPE_38__*, %struct.TYPE_38__** %430, align 8
  %432 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %431, i32 0, i32 0
  %433 = load i32, i32* %432, align 4
  %434 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %435 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %434, i32 0, i32 10
  %436 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %435, i32 0, i32 1
  store i32 %433, i32* %436, align 4
  %437 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %438 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %437, i32 0, i32 10
  %439 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %438, i32 0, i32 0
  %440 = load i32, i32* %439, align 8
  %441 = add nsw i32 %440, 1
  store i32 %441, i32* %439, align 8
  %442 = load i8*, i8** @ngx_http_tfs_set_duplicate_info, align 8
  %443 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %444 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %443, i32 0, i32 9
  store i8* %442, i8** %444, align 8
  %445 = load i64, i64* @NGX_DECLINED, align 8
  store i64 %445, i64* %2, align 8
  br label %642

446:                                              ; preds = %420
  %447 = load i64, i64* @NGX_DONE, align 8
  store i64 %447, i64* %2, align 8
  br label %642

448:                                              ; preds = %374
  br label %486

449:                                              ; preds = %134
  %450 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %451 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %450, i32 0, i32 2
  %452 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %451, i32 0, i32 0
  %453 = load i64, i64* %452, align 8
  %454 = add i64 %453, 1
  store i64 %454, i64* %452, align 8
  %455 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %456 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %455, i32 0, i32 2
  %457 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %456, i32 0, i32 0
  %458 = load i64, i64* %457, align 8
  %459 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %460 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %459, i32 0, i32 2
  %461 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %460, i32 0, i32 2
  %462 = load i64, i64* %461, align 8
  %463 = icmp uge i64 %458, %462
  br i1 %463, label %464, label %480

464:                                              ; preds = %449
  %465 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %466 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %465, i32 0, i32 8
  %467 = load i32, i32* %466, align 4
  %468 = icmp ne i32 %467, 0
  br i1 %468, label %469, label %471

469:                                              ; preds = %464
  %470 = load i64, i64* @NGX_HTTP_CLIENT_CLOSED_REQUEST, align 8
  store i64 %470, i64* %2, align 8
  br label %642

471:                                              ; preds = %464
  %472 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %473 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %472, i32 0, i32 7
  %474 = load i32, i32* %473, align 8
  %475 = icmp ne i32 %474, 0
  br i1 %475, label %476, label %478

476:                                              ; preds = %471
  %477 = load i64, i64* @NGX_HTTP_REQUEST_TIME_OUT, align 8
  store i64 %477, i64* %2, align 8
  br label %642

478:                                              ; preds = %471
  %479 = load i64, i64* @NGX_ERROR, align 8
  store i64 %479, i64* %2, align 8
  br label %642

480:                                              ; preds = %449
  %481 = load i8*, i8** @NGX_HTTP_TFS_STATE_WRITE_GET_BLK_INFO, align 8
  %482 = ptrtoint i8* %481 to i32
  %483 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %484 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %483, i32 0, i32 0
  store i32 %482, i32* %484, align 8
  %485 = load i64, i64* @NGX_OK, align 8
  store i64 %485, i64* %2, align 8
  br label %642

486:                                              ; preds = %134, %448, %358, %225, %215
  br label %640

487:                                              ; preds = %42
  %488 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %489 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %488, i32 0, i32 0
  %490 = load i32, i32* %489, align 8
  switch i32 %490, label %639 [
    i32 133, label %491
    i32 134, label %527
  ]

491:                                              ; preds = %487
  %492 = load i64, i64* %7, align 8
  %493 = load i64, i64* @NGX_OK, align 8
  %494 = icmp eq i64 %492, %493
  br i1 %494, label %495, label %525

495:                                              ; preds = %491
  %496 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %497 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %496, i32 0, i32 6
  %498 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %497, i32 0, i32 1
  %499 = load i32, i32* %498, align 8
  %500 = load i32, i32* @NGX_HTTP_TFS_FILE_NORMAL, align 4
  %501 = icmp eq i32 %499, %500
  br i1 %501, label %509, label %502

502:                                              ; preds = %495
  %503 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %504 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %503, i32 0, i32 6
  %505 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %504, i32 0, i32 1
  %506 = load i32, i32* %505, align 8
  %507 = load i32, i32* @NGX_HTTP_TFS_FILE_CONCEAL, align 4
  %508 = icmp eq i32 %506, %507
  br i1 %508, label %509, label %523

509:                                              ; preds = %502, %495
  %510 = load i32, i32* @NGX_HTTP_TFS_STATE_REMOVE_READ_META_SEGMENT, align 4
  %511 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %512 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %511, i32 0, i32 0
  store i32 %510, i32* %512, align 8
  %513 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %514 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %513, i32 0, i32 6
  %515 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %514, i32 0, i32 0
  %516 = load i64, i64* %515, align 8
  %517 = load i64, i64* @NGX_HTTP_TFS_MAX_READ_FILE_SIZE, align 8
  %518 = call i8* @ngx_min(i64 %516, i64 %517)
  %519 = ptrtoint i8* %518 to i64
  %520 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %521 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %520, i32 0, i32 0
  store i64 %519, i64* %521, align 8
  %522 = load i64, i64* @NGX_OK, align 8
  store i64 %522, i64* %2, align 8
  br label %642

523:                                              ; preds = %502
  %524 = load i64, i64* @NGX_HTTP_TFS_EXIT_FILE_STATUS_ERROR, align 8
  store i64 %524, i64* %2, align 8
  br label %642

525:                                              ; preds = %491
  %526 = load i64, i64* @NGX_HTTP_TFS_AGAIN, align 8
  store i64 %526, i64* %2, align 8
  br label %642

527:                                              ; preds = %487
  %528 = load i64, i64* %7, align 8
  %529 = load i64, i64* @NGX_OK, align 8
  %530 = icmp ne i64 %528, %529
  br i1 %530, label %531, label %533

531:                                              ; preds = %527
  %532 = load i64, i64* %7, align 8
  store i64 %532, i64* %2, align 8
  br label %642

533:                                              ; preds = %527
  %534 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %535 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %534, i32 0, i32 3
  %536 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %535, i32 0, i32 1
  %537 = load i32, i32* %536, align 8
  %538 = icmp eq i32 %537, 1
  br i1 %538, label %539, label %556

539:                                              ; preds = %533
  %540 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %541 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %540, i32 0, i32 5
  %542 = load i32, i32* %541, align 4
  %543 = icmp ne i32 %542, 0
  br i1 %543, label %556, label %544

544:                                              ; preds = %539
  %545 = load i8*, i8** @NGX_HTTP_TFS_STATE_REMOVE_DONE, align 8
  %546 = ptrtoint i8* %545 to i32
  %547 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %548 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %547, i32 0, i32 0
  store i32 %546, i32* %548, align 8
  %549 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %550 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %549, i32 0, i32 3
  %551 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %550, i32 0, i32 3
  %552 = load i32, i32* %551, align 8
  %553 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %554 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %553, i32 0, i32 4
  store i32 %552, i32* %554, align 8
  %555 = load i64, i64* @NGX_DONE, align 8
  store i64 %555, i64* %2, align 8
  br label %642

556:                                              ; preds = %539, %533
  %557 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %558 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %557, i32 0, i32 2
  %559 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %558, i32 0, i32 0
  %560 = load i64, i64* %559, align 8
  %561 = add i64 %560, 1
  store i64 %561, i64* %559, align 8
  %562 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %563 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %562, i32 0, i32 2
  %564 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %563, i32 0, i32 0
  %565 = load i64, i64* %564, align 8
  %566 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %567 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %566, i32 0, i32 2
  %568 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %567, i32 0, i32 2
  %569 = load i64, i64* %568, align 8
  %570 = icmp uge i64 %565, %569
  br i1 %570, label %571, label %634

571:                                              ; preds = %556
  %572 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %573 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %572, i32 0, i32 3
  %574 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %573, i32 0, i32 1
  %575 = load i32, i32* %574, align 8
  %576 = icmp eq i32 %575, 1
  br i1 %576, label %577, label %589

577:                                              ; preds = %571
  %578 = load i8*, i8** @NGX_HTTP_TFS_STATE_REMOVE_DONE, align 8
  %579 = ptrtoint i8* %578 to i32
  %580 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %581 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %580, i32 0, i32 0
  store i32 %579, i32* %581, align 8
  %582 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %583 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %582, i32 0, i32 3
  %584 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %583, i32 0, i32 3
  %585 = load i32, i32* %584, align 8
  %586 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %587 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %586, i32 0, i32 4
  store i32 %585, i32* %587, align 8
  %588 = load i64, i64* @NGX_DONE, align 8
  store i64 %588, i64* %2, align 8
  br label %642

589:                                              ; preds = %571
  %590 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %591 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %590, i32 0, i32 3
  %592 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %591, i32 0, i32 1
  %593 = load i32, i32* %592, align 8
  %594 = icmp eq i32 %593, 2
  br i1 %594, label %595, label %633

595:                                              ; preds = %589
  %596 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %597 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %596, i32 0, i32 2
  %598 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %597, i32 0, i32 4
  %599 = load i32, i32* %598, align 8
  %600 = icmp ne i32 %599, 0
  br i1 %600, label %605, label %601

601:                                              ; preds = %595
  %602 = load i32, i32* @NGX_HTTP_TFS_STATE_REMOVE_NOTIFY_MS, align 4
  %603 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %604 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %603, i32 0, i32 0
  store i32 %602, i32* %604, align 8
  br label %624

605:                                              ; preds = %595
  %606 = load i32, i32* @NGX_HTTP_TFS_STATE_REMOVE_GET_FRAG_INFO, align 4
  %607 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %608 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %607, i32 0, i32 0
  store i32 %606, i32* %608, align 8
  %609 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %610 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %609, i32 0, i32 2
  %611 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %610, i32 0, i32 1
  %612 = load i64, i64* %611, align 8
  %613 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %614 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %613, i32 0, i32 2
  %615 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %614, i32 0, i32 0
  %616 = load i64, i64* %615, align 8
  %617 = add nsw i64 %612, %616
  %618 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %619 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %618, i32 0, i32 2
  %620 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %619, i32 0, i32 3
  store i64 %617, i64* %620, align 8
  %621 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %622 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %621, i32 0, i32 2
  %623 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %622, i32 0, i32 0
  store i64 0, i64* %623, align 8
  br label %624

624:                                              ; preds = %605, %601
  %625 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %626 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %625, i32 0, i32 1
  %627 = load %struct.TYPE_41__*, %struct.TYPE_41__** %626, align 8
  %628 = load i64, i64* @NGX_HTTP_TFS_META_SERVER, align 8
  %629 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %627, i64 %628
  %630 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %629, i32 0, i32 0
  store %struct.TYPE_34__* %630, %struct.TYPE_34__** %9, align 8
  %631 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %632 = call i32 @ngx_http_tfs_clear_buf(%struct.TYPE_34__* %631)
  br label %633

633:                                              ; preds = %624, %589
  br label %638

634:                                              ; preds = %556
  %635 = load i32, i32* @NGX_HTTP_TFS_STATE_REMOVE_GET_BLK_INFO, align 4
  %636 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %637 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %636, i32 0, i32 0
  store i32 %635, i32* %637, align 8
  br label %638

638:                                              ; preds = %634, %633
  br label %639

639:                                              ; preds = %487, %638
  br label %640

640:                                              ; preds = %639, %42, %486
  %641 = load i64, i64* %7, align 8
  store i64 %641, i64* %2, align 8
  br label %642

642:                                              ; preds = %640, %577, %544, %531, %525, %523, %509, %480, %478, %476, %469, %446, %425, %418, %397, %372, %365, %353, %261, %230, %223, %157, %155, %132, %122, %117, %40, %32
  %643 = load i64, i64* %2, align 8
  ret i64 %643
}

declare dso_local i64 @ngx_buf_size(%struct.TYPE_34__*) #1

declare dso_local i64 @ngx_http_tfs_data_server_parse_message(%struct.TYPE_28__*) #1

declare dso_local i32 @ngx_http_tfs_clear_buf(%struct.TYPE_34__*) #1

declare dso_local %struct.TYPE_33__* @ngx_http_tfs_json_raw_file_stat(i32, i32, i32, %struct.TYPE_37__*) #1

declare dso_local i32 @ngx_http_tfs_raw_fsname_get_name(%struct.TYPE_36__*, i32, i32) #1

declare dso_local i32 @ngx_http_tfs_remove_block_cache(%struct.TYPE_28__*, %struct.TYPE_29__*) #1

declare dso_local i64 @ngx_http_tfs_set_output_file_name(%struct.TYPE_28__*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*) #1

declare dso_local i8* @ngx_min(i64, i64) #1

declare dso_local i32 @ngx_buf_in_memory(%struct.TYPE_34__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
